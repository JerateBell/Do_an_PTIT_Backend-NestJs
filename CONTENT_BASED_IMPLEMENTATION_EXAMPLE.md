# Content-Based Recommendation - Code Examples

## 📋 Feature Vector Example

### Input Data
```typescript
// Activity
{
  id: 1,
  categoryId: 5,      // "Adventure"
  destinationId: 3,   // "Ha Long Bay"
  price: 120.0        // USD
}

// Categories (20 total)
[Adventure, Culture, Food, Nature, ...]

// Destinations (M total)
[Ha Long Bay, Hoan Kiem Lake, Ben Thanh Market, ...]

// Price range
min: 10, max: 500
```

### Feature Vector
```typescript
// Category one-hot (20 dimensions)
[0, 0, 0, 0, 1, 0, 0, ...]  // Adventure ở index 4

// Destination one-hot (M dimensions)
[0, 0, 1, 0, 0, ...]  // Ha Long Bay ở index 2

// Price normalized (1 dimension)
[(120 - 10) / (500 - 10) = 0.224]

// Final feature vector (20 + M + 1 dimensions)
[0, 0, 0, 0, 1, 0, ..., 0, 0, 1, 0, ..., 0.224]
```

## 🔧 Service Implementation Examples

### 1. Feature Extraction Service

```typescript
@Injectable()
export class FeatureExtractionService {
  private categoryMap: Map<bigint, number> = new Map();
  private destinationMap: Map<bigint, number> = new Map();
  private priceMin = 0;
  private priceMax = 0;

  async initialize() {
    // Load categories
    const categories = await this.prisma.category.findMany();
    categories.forEach((cat, idx) => {
      this.categoryMap.set(cat.id, idx);
    });

    // Load destinations
    const destinations = await this.prisma.destination.findMany();
    destinations.forEach((dest, idx) => {
      this.destinationMap.set(dest.id, idx);
    });

    // Get price range
    const stats = await this.prisma.activity.aggregate({
      _min: { price: true },
      _max: { price: true },
    });
    this.priceMin = Number(stats._min.price);
    this.priceMax = Number(stats._max.price);
  }

  extractFeatures(activity: any): number[] {
    const featureVector: number[] = [];
    const nCategories = this.categoryMap.size;
    const nDestinations = this.destinationMap.size;

    // Category one-hot
    const catIdx = this.categoryMap.get(activity.categoryId) ?? -1;
    for (let i = 0; i < nCategories; i++) {
      featureVector.push(i === catIdx ? 1 : 0);
    }

    // Destination one-hot
    const destIdx = this.destinationMap.get(activity.destinationId) ?? -1;
    for (let i = 0; i < nDestinations; i++) {
      featureVector.push(i === destIdx ? 1 : 0);
    }

    // Price normalized
    const price = Number(activity.price);
    const priceNorm = (price - this.priceMin) / (this.priceMax - this.priceMin);
    featureVector.push(priceNorm);

    return featureVector;
  }
}
```

### 2. Ridge Regression Training

```typescript
@Injectable()
export class ModelTrainingService {
  private alpha = 0.01; // Regularization

  async trainUserModel(
    userId: bigint,
    activityFeatures: ActivityFeatures[],
  ): Promise<UserModel> {
    // Get user ratings
    const reviews = await this.prisma.review.findMany({
      where: { userId },
    });

    // Prepare training data
    const X: number[][] = []; // Features
    const y: number[] = [];    // Ratings

    const ratingMap = new Map(
      reviews.map(r => [r.activityId, r.rating])
    );

    activityFeatures.forEach(features => {
      const rating = ratingMap.get(features.activityId);
      if (rating) {
        X.push(features.featureVector);
        y.push(rating);
      }
    });

    // Train Ridge Regression
    const model = this.trainRidgeRegression(X, y);

    return {
      userId,
      weights: model.weights,
      bias: model.bias,
      trained: true,
    };
  }

  private trainRidgeRegression(
    X: number[][],
    y: number[],
  ): { weights: number[]; bias: number } {
    const n = X.length;
    const d = X[0].length;
    const learningRate = 0.01;
    const iterations = 1000;

    // Initialize
    let weights = new Array(d).fill(0);
    const yMean = y.reduce((a, b) => a + b, 0) / y.length;
    const yCentered = y.map(yi => yi - yMean);

    // Gradient descent
    for (let iter = 0; iter < iterations; iter++) {
      const gradients = new Array(d).fill(0);

      for (let i = 0; i < n; i++) {
        const pred = this.dotProduct(X[i], weights);
        const error = pred - yCentered[i];

        for (let j = 0; j < d; j++) {
          gradients[j] += error * X[i][j];
        }
      }

      // Update with L2 regularization
      for (let j = 0; j < d; j++) {
        gradients[j] = gradients[j] / n + this.alpha * weights[j];
        weights[j] -= learningRate * gradients[j];
      }
    }

    return { weights, bias: yMean };
  }

  predictRating(model: UserModel, features: number[]): number {
    const pred = this.dotProduct(features, model.weights) + model.bias;
    return Math.max(1, Math.min(5, pred)); // Clamp to [1, 5]
  }

  private dotProduct(a: number[], b: number[]): number {
    return a.reduce((sum, val, i) => sum + val * b[i], 0);
  }
}
```

### 3. Recommendations Service

```typescript
@Injectable()
export class RecommendationsService {
  constructor(
    private featureExtraction: FeatureExtractionService,
    private modelTraining: ModelTrainingService,
    private prisma: PrismaService,
  ) {
    // Initialize on startup
    this.featureExtraction.initialize();
  }

  async getRecommendations(
    userId: bigint,
    topK: number = 10,
  ): Promise<RecommendationDto[]> {
    // Extract features for all activities
    const activityFeatures = await this.featureExtraction.extractAllActivities();

    // Get or train user model
    const userModel = await this.modelTraining.getUserModel(
      userId,
      activityFeatures,
    );

    // Get activities user already rated
    const ratedActivities = await this.prisma.review.findMany({
      where: { userId },
      select: { activityId: true },
    });
    const ratedIds = new Set(ratedActivities.map(r => r.activityId));

    // Predict ratings for all activities
    const predictions = activityFeatures
      .filter(f => !ratedIds.has(f.activityId)) // Exclude rated
      .map(features => ({
        activityId: features.activityId,
        predictedRating: this.modelTraining.predictRating(
          userModel,
          features.featureVector,
        ),
      }))
      .sort((a, b) => b.predictedRating - a.predictedRating)
      .slice(0, topK);

    // Get full activity details
    const activityIds = predictions.map(p => p.activityId);
    const activities = await this.prisma.activity.findMany({
      where: {
        id: { in: activityIds },
        status: 'active',
      },
      include: {
        category: true,
        destination: true,
        images: { take: 1 },
      },
    });

    // Combine predictions with activities
    return predictions.map(pred => {
      const activity = activities.find(a => a.id === pred.activityId);
      return {
        activity,
        predictedRating: pred.predictedRating,
      };
    });
  }
}
```

### 4. Controller

```typescript
@Controller('recommendations')
@UseGuards(AuthGuard('jwt'))
export class RecommendationsController {
  constructor(
    private recommendationsService: RecommendationsService,
  ) {}

  @Get()
  @ApiOperation({ summary: 'Get recommendations for current user' })
  async getRecommendations(
    @CurrentUser() user: any,
    @Query('topK') topK: number = 10,
  ) {
    return this.recommendationsService.getRecommendations(
      BigInt(user.id),
      topK,
    );
  }

  @Post('train/:userId')
  @ApiOperation({ summary: 'Train model for user' })
  async trainModel(@Param('userId') userId: string) {
    return this.recommendationsService.trainModelForUser(BigInt(userId));
  }
}
```

## 📊 Data Flow Example

### Scenario: User requests recommendations

```
1. User (ID: 1) calls GET /recommendations?topK=10

2. FeatureExtractionService:
   - Loads 20 categories → categoryMap
   - Loads 50 destinations → destinationMap
   - Price range: 10-500 USD
   - Extracts features for 100 activities
   - Feature dimension: 20 + 50 + 1 = 71

3. ModelTrainingService:
   - Gets user 1's reviews (15 ratings)
   - Trains Ridge Regression:
     * X: 15 × 71 (features of rated activities)
     * y: 15 × 1 (ratings)
     * Trains → weights: 71 × 1, bias: 3.2

4. Predictions:
   - For each of 100 activities:
     * rating = features × weights + bias
   - Filters out already rated (15)
   - Sorts by predicted rating
   - Returns top 10

5. Response:
   [
     { activityId: 45, predictedRating: 4.8, activity: {...} },
     { activityId: 12, predictedRating: 4.6, activity: {...} },
     ...
   ]
```

## 🧮 Mathematical Example

### Feature Vector
```
Activity: { categoryId: 5, destinationId: 3, price: 120 }

Categories (20): [0,0,0,0,1,0,...]  // Adventure at index 4
Destinations (50): [0,0,1,0,...]    // Ha Long at index 2
Price: [0.224]                       // (120-10)/(500-10)

Feature vector (71 dims):
[0,0,0,0,1,0,..., 0,0,1,0,..., 0.224]
```

### Model Training
```
User has rated:
- Activity 1: rating 5, features: [1,0,0,..., 1,0,0,..., 0.1]
- Activity 2: rating 4, features: [0,1,0,..., 0,1,0,..., 0.3]
- Activity 3: rating 3, features: [1,0,0,..., 0,0,1,..., 0.5]

X = [[1,0,0,..., 1,0,0,..., 0.1],
     [0,1,0,..., 0,1,0,..., 0.3],
     [1,0,0,..., 0,0,1,..., 0.5]]
y = [5, 4, 3]

Train Ridge Regression → weights, bias
```

### Prediction
```
New activity features: [0,0,0,0,1,0,..., 0,0,1,0,..., 0.224]

predicted_rating = dot(features, weights) + bias
                 = 4.2
```

## 🔍 Debugging Tips

1. **Check feature dimensions**:
   ```typescript
   console.log('Feature dim:', featureExtraction.getFeatureDimension());
   console.log('Categories:', categoryMap.size);
   console.log('Destinations:', destinationMap.size);
   ```

2. **Check model training**:
   ```typescript
   console.log('Training data:', X.length, 'samples');
   console.log('Weights:', model.weights.length);
   console.log('Bias:', model.bias);
   ```

3. **Check predictions**:
   ```typescript
   console.log('Predicted ratings:', predictions);
   console.log('Top K:', topK);
   ```

