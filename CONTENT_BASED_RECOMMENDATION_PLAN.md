# Phương án áp dụng Content-Based Recommendation

## 📋 Tổng quan

Áp dụng thuật toán Content-Based Filtering từ notebook `rcm/content-based.ipynb` vào backend NestJS với các features:
- **Category** (tương ứng với genres trong MovieLens)
- **Price** (numerical feature)
- **Destination** (categorical feature)

## 🎯 Kiến trúc tổng thể

```
┌─────────────────────┐
│  User Request       │
│  GET /recommendations│
└──────────┬──────────┘
           │
           ▼
┌─────────────────────┐
│ Recommendations     │
│ Controller          │
└──────────┬──────────┘
           │
           ▼
┌─────────────────────┐
│ Recommendations     │
│ Service             │
└──────────┬──────────┘
           │
    ┌──────┴──────┐
    │             │
    ▼             ▼
┌─────────┐  ┌──────────────┐
│ Feature │  │ Model        │
│ Extract │  │ Training     │
│ Service │  │ Service      │
└─────────┘  └──────────────┘
```

## 📊 Feature Engineering

### 1. Category Features (One-Hot Encoding)
- **Tương tự**: 19 genres trong MovieLens → Binary vector
- **Implementation**: 
  - Mỗi category là một binary feature (0 hoặc 1)
  - Vector length = số lượng categories trong database
  - Ví dụ: `[0, 1, 0, 0, 0, ...]` nếu activity thuộc category index 1

### 2. Destination Features (One-Hot Encoding)
- **Mới**: Không có trong MovieLens
- **Implementation**:
  - Mỗi destination là một binary feature
  - Vector length = số lượng destinations trong database
  - Ví dụ: `[0, 0, 1, 0, ...]` nếu activity ở destination index 2

### 3. Price Feature (Normalized)
- **Mới**: Không có trong MovieLens
- **Implementation**:
  - Min-Max normalization: `(price - min_price) / (max_price - min_price)`
  - Single value: `[0.65]` (ví dụ: price = 65% của range)
  - Hoặc có thể binning thành price ranges (budget/mid/luxury)

### Feature Vector Structure:
```
[category_1, category_2, ..., category_N, 
 destination_1, destination_2, ..., destination_M, 
 price_normalized]
 
Total dimensions: N + M + 1
```

## 🔧 Implementation Plan

### Phase 1: Feature Extraction Service

**File**: `src/module/recommendations/feature-extraction.service.ts`

**Chức năng**:
1. Load tất cả categories và destinations từ DB
2. Tạo mapping: categoryId → index, destinationId → index
3. Tính min/max price từ activities
4. Extract feature vector cho mỗi activity:
   ```typescript
   extractFeatures(activity): {
     activityId: bigint,
     featureVector: number[], // [categories..., destinations..., price]
     categoryIndex: number,
     destinationIndex: number,
     price: number
   }
   ```

**Methods**:
- `initialize()` - Load categories, destinations, price range
- `extractFeatures(activity)` - Extract features cho 1 activity
- `extractAllActivities()` - Extract features cho tất cả activities
- `getFeatureDimension()` - Trả về số chiều của feature vector

### Phase 2: Model Training Service

**File**: `src/module/recommendations/model-training.service.ts`

**Chức năng**:
1. Train Ridge Regression model cho mỗi user
2. Sử dụng gradient descent với L2 regularization
3. Lưu weights và bias cho mỗi user

**Algorithm** (tương tự notebook):
```python
# Notebook:
for each user:
    X = features of rated activities
    y = ratings
    model = Ridge(alpha=0.01)
    model.fit(X, y)
    W[user] = model.coef_
    b[user] = model.intercept_
```

**TypeScript Implementation**:
```typescript
trainUserModel(userId, activityFeatures, ratings): {
  userId: bigint,
  weights: number[], // Feature weights
  bias: number,      // Bias term
  trained: boolean
}
```

**Methods**:
- `trainUserModel(userId, activityFeatures)` - Train model cho user
- `predictRating(userModel, featureVector)` - Dự đoán rating
- `getUserModel(userId)` - Get hoặc train model cho user

### Phase 3: Recommendations Service

**File**: `src/module/recommendations/recommendations.service.ts`

**Chức năng**:
1. Orchestrate feature extraction và model training
2. Generate recommendations cho user
3. Cache models để tăng performance

**Methods**:
- `getRecommendations(userId, topK)` - Get top K recommendations
- `trainModelForUser(userId)` - Train model cho user
- `refreshModels()` - Retrain tất cả models (cron job)

### Phase 4: Controller & DTOs

**File**: `src/module/recommendations/recommendations.controller.ts`

**Endpoints**:
- `GET /recommendations` - Get recommendations cho current user
- `GET /recommendations/:userId` - Get recommendations cho user (admin)
- `POST /recommendations/train/:userId` - Train model cho user
- `POST /recommendations/refresh` - Refresh all models

**DTOs**:
- `RecommendationDto` - Response DTO
- `TrainModelDto` - Request DTO cho training

## 📐 So sánh với Notebook

| Aspect | MovieLens Notebook | Travel Activities |
|--------|-------------------|-------------------|
| **Items** | Movies (1682) | Activities |
| **Features** | 19 genres (binary) | Categories + Destinations + Price |
| **Feature Encoding** | Binary only | Binary (cat, dest) + Normalized (price) |
| **Feature Dimension** | 19 | N_categories + N_destinations + 1 |
| **Model** | Ridge Regression | Ridge Regression |
| **Training** | Per user | Per user |
| **Prediction** | Yhat = X × W + b | Yhat = X × W + b |

## 🔄 Workflow

### 1. Initialization (On Startup)
```
1. FeatureExtractionService.initialize()
   - Load categories → create category map
   - Load destinations → create destination map
   - Calculate price min/max
```

### 2. Get Recommendations (On Request)
```
1. User requests recommendations
2. FeatureExtractionService.extractAllActivities()
   - Extract features cho tất cả activities
3. ModelTrainingService.getUserModel(userId)
   - Check cache → train nếu chưa có
4. Predict ratings cho tất cả activities
5. Sort và return top K
```

### 3. Model Training (Background/Cron)
```
1. Get all users có ratings
2. For each user:
   - Extract features của activities user đã rate
   - Train Ridge Regression
   - Cache model
```

## 💻 Code Structure

```
src/module/recommendations/
├── recommendations.module.ts
├── recommendations.controller.ts
├── recommendations.service.ts
├── feature-extraction.service.ts
├── model-training.service.ts
├── dto/
│   ├── recommendation-response.dto.ts
│   └── train-model.dto.ts
└── utils/
    └── ridge-regression.ts (optional: separate algorithm)
```

## 🚀 Implementation Steps

### Step 1: Tạo Module Structure
```bash
# Tạo module
nest g module recommendations
nest g service recommendations
nest g controller recommendations
```

### Step 2: Implement Feature Extraction
- Load categories/destinations
- Create mappings
- Extract feature vectors

### Step 3: Implement Ridge Regression
- Simple gradient descent
- Hoặc dùng thư viện (nếu có)
- Lưu weights và bias

### Step 4: Implement Recommendations Service
- Orchestrate extraction + training
- Generate recommendations
- Cache models

### Step 5: Create API Endpoints
- GET /recommendations
- POST /recommendations/train

### Step 6: Testing
- Unit tests cho feature extraction
- Unit tests cho model training
- Integration tests cho API

## 📦 Dependencies

**Cần thêm** (nếu muốn dùng thư viện ML):
```json
{
  "ml-matrix": "^6.10.0",  // Matrix operations
  "@types/ml-matrix": "^6.5.0"
}
```

**Hoặc implement đơn giản** (không cần thêm):
- Dùng arrays và loops
- Simple gradient descent
- Đủ cho dataset nhỏ/trung bình

## ⚡ Performance Considerations

1. **Caching**:
   - Cache feature vectors (chỉ update khi có activity mới)
   - Cache user models (retrain định kỳ)

2. **Lazy Training**:
   - Chỉ train model khi user request recommendations
   - Hoặc train background job

3. **Batch Processing**:
   - Train models cho nhiều users cùng lúc
   - Sử dụng queue (Bull/BullMQ)

4. **Database Indexing**:
   - Index trên `reviews.userId`, `reviews.activityId`
   - Index trên `activities.status`, `activities.categoryId`

## 🔮 Future Enhancements

1. **Hybrid Approach**: Kết hợp Content-Based + Collaborative Filtering
2. **Real-time Updates**: Update models khi có rating mới
3. **A/B Testing**: So sánh với các methods khác
4. **Cold Start Handling**: Xử lý users/activities mới
5. **Feature Engineering**: Thêm duration, rating, reviewCount, etc.

## 📝 Example Usage

```typescript
// Get recommendations
GET /recommendations?topK=10

Response:
{
  "userId": 1,
  "recommendations": [
    {
      "activityId": 123,
      "predictedRating": 4.8,
      "activity": { ... }
    },
    ...
  ]
}
```

## ✅ Checklist

- [ ] Tạo module structure
- [ ] Implement Feature Extraction Service
- [ ] Implement Ridge Regression (Model Training)
- [ ] Implement Recommendations Service
- [ ] Create API endpoints
- [ ] Add caching
- [ ] Write tests
- [ ] Add documentation
- [ ] Performance optimization

