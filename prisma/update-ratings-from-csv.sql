-- =====================================================
-- SCRIPT CẬP NHẬT RATINGS TỪ FILE CSV
-- =====================================================
-- Script này cập nhật ratings dựa trên user_id và activity_id
-- từ file ratings.csv
-- =====================================================

-- Cập nhật ratings cho tất cả reviews match với user_id và activity_id
-- (Nếu có nhiều reviews, tất cả sẽ được cập nhật)

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 6
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 7
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 10
  AND "activity_id" = 2
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 3
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 10
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 8
  AND "activity_id" = 2
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 83
  AND "activity_id" = 468
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 105
  AND "activity_id" = 454
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 69
  AND "activity_id" = 483
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 63
  AND "activity_id" = 430
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 3
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 76
  AND "activity_id" = 180
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 83
  AND "activity_id" = 284
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 18
  AND "activity_id" = 2
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 25
  AND "activity_id" = 303
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 15
  AND "activity_id" = 2
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 40
  AND "activity_id" = 391
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 16
  AND "activity_id" = 449
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 48
  AND "activity_id" = 33
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 32
  AND "activity_id" = 274
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 93
  AND "activity_id" = 240
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 23
  AND "activity_id" = 66
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 12
  AND "activity_id" = 2
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 93
  AND "activity_id" = 333
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 6
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 53
  AND "activity_id" = 392
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 33
  AND "activity_id" = 124
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 76
  AND "activity_id" = 204
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 15
  AND "activity_id" = 300
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 101
  AND "activity_id" = 127
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 46
  AND "activity_id" = 207
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 45
  AND "activity_id" = 30
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 6
  AND "activity_id" = 2
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 106
  AND "activity_id" = 14
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 90
  AND "activity_id" = 60
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 67
  AND "activity_id" = 436
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 85
  AND "activity_id" = 77
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 83
  AND "activity_id" = 266
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 21
  AND "activity_id" = 394
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 86
  AND "activity_id" = 487
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 42
  AND "activity_id" = 466
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 37
  AND "activity_id" = 49
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 16
  AND "activity_id" = 475
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 30
  AND "activity_id" = 301
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 84
  AND "activity_id" = 226
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 40
  AND "activity_id" = 379
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 16
  AND "activity_id" = 300
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 12
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 10
  AND "activity_id" = 227
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 101
  AND "activity_id" = 223
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 49
  AND "activity_id" = 91
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 56
  AND "activity_id" = 210
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 28
  AND "activity_id" = 7
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 68
  AND "activity_id" = 130
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 49
  AND "activity_id" = 486
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 28
  AND "activity_id" = 338
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 102
  AND "activity_id" = 37
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 63
  AND "activity_id" = 222
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 100
  AND "activity_id" = 428
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 95
  AND "activity_id" = 111
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 87
  AND "activity_id" = 473
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 47
  AND "activity_id" = 91
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 25
  AND "activity_id" = 226
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 37
  AND "activity_id" = 25
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 91
  AND "activity_id" = 119
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 74
  AND "activity_id" = 469
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 66
  AND "activity_id" = 141
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 53
  AND "activity_id" = 383
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 12
  AND "activity_id" = 168
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 3
  AND "activity_id" = 2
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 25
  AND "activity_id" = 485
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 92
  AND "activity_id" = 262
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 44
  AND "activity_id" = 7
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 4
  AND "activity_id" = 2
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 61
  AND "activity_id" = 241
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 30
  AND "activity_id" = 38
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 52
  AND "activity_id" = 386
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 107
  AND "activity_id" = 334
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 88
  AND "activity_id" = 441
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 75
  AND "activity_id" = 82
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 15
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 74
  AND "activity_id" = 468
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 59
  AND "activity_id" = 265
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 86
  AND "activity_id" = 403
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 61
  AND "activity_id" = 502
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 9
  AND "activity_id" = 219
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 81
  AND "activity_id" = 51
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 17
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 38
  AND "activity_id" = 461
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 85
  AND "activity_id" = 435
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 46
  AND "activity_id" = 421
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 98
  AND "activity_id" = 186
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 21
  AND "activity_id" = 254
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 67
  AND "activity_id" = 20
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 101
  AND "activity_id" = 173
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 104
  AND "activity_id" = 216
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 45
  AND "activity_id" = 184
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 52
  AND "activity_id" = 254
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 14
  AND "activity_id" = 2
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 107
  AND "activity_id" = 436
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 106
  AND "activity_id" = 478
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 6
  AND "activity_id" = 294
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 6
  AND "activity_id" = 322
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 66
  AND "activity_id" = 316
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 76
  AND "activity_id" = 310
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 7
  AND "activity_id" = 114
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 30
  AND "activity_id" = 207
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 54
  AND "activity_id" = 377
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 59
  AND "activity_id" = 267
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 62
  AND "activity_id" = 416
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 60
  AND "activity_id" = 274
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 55
  AND "activity_id" = 295
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 86
  AND "activity_id" = 439
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 16
  AND "activity_id" = 239
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 61
  AND "activity_id" = 236
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 74
  AND "activity_id" = 41
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 81
  AND "activity_id" = 404
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 26
  AND "activity_id" = 37
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 61
  AND "activity_id" = 443
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 90
  AND "activity_id" = 402
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 9
  AND "activity_id" = 111
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 40
  AND "activity_id" = 423
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 38
  AND "activity_id" = 92
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 25
  AND "activity_id" = 232
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 58
  AND "activity_id" = 252
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 93
  AND "activity_id" = 456
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 39
  AND "activity_id" = 458
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 74
  AND "activity_id" = 447
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 48
  AND "activity_id" = 458
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 88
  AND "activity_id" = 265
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 96
  AND "activity_id" = 42
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 41
  AND "activity_id" = 184
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 95
  AND "activity_id" = 381
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 53
  AND "activity_id" = 291
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 71
  AND "activity_id" = 384
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 86
  AND "activity_id" = 135
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 9
  AND "activity_id" = 114
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 27
  AND "activity_id" = 227
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 90
  AND "activity_id" = 377
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 106
  AND "activity_id" = 40
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 47
  AND "activity_id" = 169
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 89
  AND "activity_id" = 401
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 23
  AND "activity_id" = 449
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 32
  AND "activity_id" = 179
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 61
  AND "activity_id" = 280
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 66
  AND "activity_id" = 505
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 60
  AND "activity_id" = 39
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 60
  AND "activity_id" = 485
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 97
  AND "activity_id" = 294
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 95
  AND "activity_id" = 149
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 7
  AND "activity_id" = 493
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 26
  AND "activity_id" = 434
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 39
  AND "activity_id" = 33
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 15
  AND "activity_id" = 325
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 80
  AND "activity_id" = 223
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 35
  AND "activity_id" = 3
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 72
  AND "activity_id" = 430
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 61
  AND "activity_id" = 207
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 29
  AND "activity_id" = 319
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 52
  AND "activity_id" = 350
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 49
  AND "activity_id" = 5
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 79
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 70
  AND "activity_id" = 307
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 43
  AND "activity_id" = 65
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 92
  AND "activity_id" = 180
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 20
  AND "activity_id" = 13
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 25
  AND "activity_id" = 41
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 31
  AND "activity_id" = 222
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 3
  AND "activity_id" = 5
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 78
  AND "activity_id" = 285
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 21
  AND "activity_id" = 393
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 92
  AND "activity_id" = 333
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 101
  AND "activity_id" = 116
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 7
  AND "activity_id" = 394
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 56
  AND "activity_id" = 136
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 62
  AND "activity_id" = 140
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 56
  AND "activity_id" = 103
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 29
  AND "activity_id" = 355
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 74
  AND "activity_id" = 86
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 89
  AND "activity_id" = 134
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 52
  AND "activity_id" = 87
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 6
  AND "activity_id" = 240
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 32
  AND "activity_id" = 153
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 73
  AND "activity_id" = 68
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 19
  AND "activity_id" = 458
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 31
  AND "activity_id" = 235
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 49
  AND "activity_id" = 261
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 4
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 31
  AND "activity_id" = 65
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 96
  AND "activity_id" = 498
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 13
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 69
  AND "activity_id" = 127
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 28
  AND "activity_id" = 330
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 69
  AND "activity_id" = 143
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 70
  AND "activity_id" = 102
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 90
  AND "activity_id" = 163
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 55
  AND "activity_id" = 138
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 94
  AND "activity_id" = 451
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 52
  AND "activity_id" = 180
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 39
  AND "activity_id" = 428
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 22
  AND "activity_id" = 428
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 92
  AND "activity_id" = 471
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 48
  AND "activity_id" = 433
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 46
  AND "activity_id" = 237
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 39
  AND "activity_id" = 127
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 45
  AND "activity_id" = 157
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 95
  AND "activity_id" = 314
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 88
  AND "activity_id" = 3
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 86
  AND "activity_id" = 19
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 75
  AND "activity_id" = 384
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 82
  AND "activity_id" = 394
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 32
  AND "activity_id" = 37
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 41
  AND "activity_id" = 198
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 30
  AND "activity_id" = 497
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 90
  AND "activity_id" = 139
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 20
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 79
  AND "activity_id" = 68
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 81
  AND "activity_id" = 343
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 53
  AND "activity_id" = 130
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 27
  AND "activity_id" = 232
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 85
  AND "activity_id" = 472
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 36
  AND "activity_id" = 279
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 74
  AND "activity_id" = 277
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 10
  AND "activity_id" = 285
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 61
  AND "activity_id" = 116
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 82
  AND "activity_id" = 293
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 107
  AND "activity_id" = 358
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 70
  AND "activity_id" = 211
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 86
  AND "activity_id" = 351
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 46
  AND "activity_id" = 363
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 45
  AND "activity_id" = 182
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 64
  AND "activity_id" = 421
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 30
  AND "activity_id" = 379
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 86
  AND "activity_id" = 449
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 62
  AND "activity_id" = 79
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 78
  AND "activity_id" = 382
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 87
  AND "activity_id" = 33
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 71
  AND "activity_id" = 16
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 26
  AND "activity_id" = 176
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 5
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 56
  AND "activity_id" = 484
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 15
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 51
  AND "activity_id" = 470
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 57
  AND "activity_id" = 4
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 100
  AND "activity_id" = 504
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 37
  AND "activity_id" = 501
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 71
  AND "activity_id" = 344
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 12
  AND "activity_id" = 241
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 33
  AND "activity_id" = 340
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 106
  AND "activity_id" = 14
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 16
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 105
  AND "activity_id" = 102
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 24
  AND "activity_id" = 465
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 36
  AND "activity_id" = 453
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 79
  AND "activity_id" = 176
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 21
  AND "activity_id" = 14
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 33
  AND "activity_id" = 422
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 93
  AND "activity_id" = 22
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 60
  AND "activity_id" = 22
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 89
  AND "activity_id" = 354
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 101
  AND "activity_id" = 181
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 85
  AND "activity_id" = 205
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 93
  AND "activity_id" = 436
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 86
  AND "activity_id" = 354
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 41
  AND "activity_id" = 311
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 75
  AND "activity_id" = 352
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 72
  AND "activity_id" = 149
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 91
  AND "activity_id" = 35
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 57
  AND "activity_id" = 481
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 80
  AND "activity_id" = 134
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 106
  AND "activity_id" = 460
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 72
  AND "activity_id" = 243
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 69
  AND "activity_id" = 213
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 44
  AND "activity_id" = 119
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 92
  AND "activity_id" = 123
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 92
  AND "activity_id" = 57
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 17
  AND "activity_id" = 207
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 77
  AND "activity_id" = 162
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 98
  AND "activity_id" = 230
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 25
  AND "activity_id" = 219
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 7
  AND "activity_id" = 121
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 34
  AND "activity_id" = 387
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 82
  AND "activity_id" = 26
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 19
  AND "activity_id" = 2
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 90
  AND "activity_id" = 340
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 19
  AND "activity_id" = 375
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 46
  AND "activity_id" = 179
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 78
  AND "activity_id" = 502
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 72
  AND "activity_id" = 107
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 6
  AND "activity_id" = 331
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 10
  AND "activity_id" = 27
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 42
  AND "activity_id" = 443
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 16
  AND "activity_id" = 458
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 103
  AND "activity_id" = 259
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 63
  AND "activity_id" = 220
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 23
  AND "activity_id" = 399
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 44
  AND "activity_id" = 402
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 71
  AND "activity_id" = 229
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 75
  AND "activity_id" = 121
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 100
  AND "activity_id" = 118
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 8
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 92
  AND "activity_id" = 89
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 80
  AND "activity_id" = 310
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 76
  AND "activity_id" = 507
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 106
  AND "activity_id" = 448
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 84
  AND "activity_id" = 404
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 69
  AND "activity_id" = 498
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 7
  AND "activity_id" = 494
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 70
  AND "activity_id" = 400
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 88
  AND "activity_id" = 169
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 12
  AND "activity_id" = 486
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 52
  AND "activity_id" = 15
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 83
  AND "activity_id" = 329
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 8
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 48
  AND "activity_id" = 391
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 24
  AND "activity_id" = 344
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 100
  AND "activity_id" = 449
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 40
  AND "activity_id" = 114
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 33
  AND "activity_id" = 368
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 84
  AND "activity_id" = 280
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 72
  AND "activity_id" = 261
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 104
  AND "activity_id" = 425
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 63
  AND "activity_id" = 272
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 73
  AND "activity_id" = 278
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 42
  AND "activity_id" = 410
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 71
  AND "activity_id" = 354
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 66
  AND "activity_id" = 114
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 76
  AND "activity_id" = 35
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 104
  AND "activity_id" = 33
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 16
  AND "activity_id" = 2
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 7
  AND "activity_id" = 148
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 68
  AND "activity_id" = 290
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 83
  AND "activity_id" = 504
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 59
  AND "activity_id" = 425
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 49
  AND "activity_id" = 463
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 68
  AND "activity_id" = 322
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 87
  AND "activity_id" = 340
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 48
  AND "activity_id" = 419
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 105
  AND "activity_id" = 475
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 80
  AND "activity_id" = 186
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 55
  AND "activity_id" = 105
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 13
  AND "activity_id" = 202
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 66
  AND "activity_id" = 35
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 39
  AND "activity_id" = 330
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 78
  AND "activity_id" = 470
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 90
  AND "activity_id" = 394
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 37
  AND "activity_id" = 313
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 84
  AND "activity_id" = 371
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 7
  AND "activity_id" = 510
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 56
  AND "activity_id" = 30
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 46
  AND "activity_id" = 324
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 25
  AND "activity_id" = 305
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 94
  AND "activity_id" = 308
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 61
  AND "activity_id" = 103
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 70
  AND "activity_id" = 105
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 53
  AND "activity_id" = 399
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 7
  AND "activity_id" = 404
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 6
  AND "activity_id" = 51
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 16
  AND "activity_id" = 257
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 21
  AND "activity_id" = 403
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 9
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 16
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 91
  AND "activity_id" = 106
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 75
  AND "activity_id" = 428
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 48
  AND "activity_id" = 76
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 55
  AND "activity_id" = 418
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 39
  AND "activity_id" = 231
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 70
  AND "activity_id" = 143
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 17
  AND "activity_id" = 318
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 21
  AND "activity_id" = 141
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 33
  AND "activity_id" = 236
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 55
  AND "activity_id" = 115
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 76
  AND "activity_id" = 392
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 72
  AND "activity_id" = 320
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 29
  AND "activity_id" = 483
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 92
  AND "activity_id" = 345
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 51
  AND "activity_id" = 71
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 8
  AND "activity_id" = 2
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 23
  AND "activity_id" = 345
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 92
  AND "activity_id" = 62
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 87
  AND "activity_id" = 369
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 57
  AND "activity_id" = 30
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 103
  AND "activity_id" = 301
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 19
  AND "activity_id" = 33
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 90
  AND "activity_id" = 197
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 78
  AND "activity_id" = 335
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 77
  AND "activity_id" = 473
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 45
  AND "activity_id" = 440
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 103
  AND "activity_id" = 429
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 32
  AND "activity_id" = 88
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 85
  AND "activity_id" = 179
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 32
  AND "activity_id" = 143
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 67
  AND "activity_id" = 51
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 43
  AND "activity_id" = 214
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 12
  AND "activity_id" = 2
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 16
  AND "activity_id" = 62
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 59
  AND "activity_id" = 288
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 86
  AND "activity_id" = 282
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 52
  AND "activity_id" = 437
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 99
  AND "activity_id" = 402
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 60
  AND "activity_id" = 360
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 23
  AND "activity_id" = 227
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 66
  AND "activity_id" = 292
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 61
  AND "activity_id" = 486
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 95
  AND "activity_id" = 448
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 30
  AND "activity_id" = 501
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 55
  AND "activity_id" = 246
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 92
  AND "activity_id" = 168
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 13
  AND "activity_id" = 2
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 24
  AND "activity_id" = 298
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 43
  AND "activity_id" = 332
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 100
  AND "activity_id" = 184
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 41
  AND "activity_id" = 61
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 29
  AND "activity_id" = 97
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 29
  AND "activity_id" = 401
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 53
  AND "activity_id" = 159
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 41
  AND "activity_id" = 367
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 89
  AND "activity_id" = 173
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 44
  AND "activity_id" = 477
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 17
  AND "activity_id" = 202
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 20
  AND "activity_id" = 316
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 33
  AND "activity_id" = 474
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 88
  AND "activity_id" = 89
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 22
  AND "activity_id" = 328
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 91
  AND "activity_id" = 6
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 12
  AND "activity_id" = 242
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 46
  AND "activity_id" = 5
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 50
  AND "activity_id" = 307
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 84
  AND "activity_id" = 263
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 43
  AND "activity_id" = 52
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 47
  AND "activity_id" = 509
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 102
  AND "activity_id" = 107
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 68
  AND "activity_id" = 465
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 36
  AND "activity_id" = 104
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 34
  AND "activity_id" = 400
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 48
  AND "activity_id" = 179
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 13
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 14
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 103
  AND "activity_id" = 193
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 37
  AND "activity_id" = 141
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 64
  AND "activity_id" = 101
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 50
  AND "activity_id" = 124
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 101
  AND "activity_id" = 255
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 35
  AND "activity_id" = 424
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 32
  AND "activity_id" = 313
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 77
  AND "activity_id" = 493
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 20
  AND "activity_id" = 277
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 63
  AND "activity_id" = 362
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 50
  AND "activity_id" = 434
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 41
  AND "activity_id" = 166
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 75
  AND "activity_id" = 510
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 13
  AND "activity_id" = 162
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 92
  AND "activity_id" = 323
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 8
  AND "activity_id" = 2
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 84
  AND "activity_id" = 423
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 9
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 77
  AND "activity_id" = 43
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 50
  AND "activity_id" = 247
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 34
  AND "activity_id" = 287
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 75
  AND "activity_id" = 382
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 50
  AND "activity_id" = 162
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 50
  AND "activity_id" = 346
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 73
  AND "activity_id" = 500
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 89
  AND "activity_id" = 145
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 97
  AND "activity_id" = 55
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 92
  AND "activity_id" = 497
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 85
  AND "activity_id" = 487
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 36
  AND "activity_id" = 267
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 60
  AND "activity_id" = 476
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 75
  AND "activity_id" = 34
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 7
  AND "activity_id" = 457
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 97
  AND "activity_id" = 281
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 68
  AND "activity_id" = 476
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 29
  AND "activity_id" = 454
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 24
  AND "activity_id" = 269
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 25
  AND "activity_id" = 210
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 6
  AND "activity_id" = 508
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 22
  AND "activity_id" = 326
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 15
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 79
  AND "activity_id" = 25
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 30
  AND "activity_id" = 245
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 90
  AND "activity_id" = 459
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 88
  AND "activity_id" = 24
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 104
  AND "activity_id" = 400
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 69
  AND "activity_id" = 53
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 15
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 67
  AND "activity_id" = 457
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 28
  AND "activity_id" = 212
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 19
  AND "activity_id" = 234
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 80
  AND "activity_id" = 182
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 94
  AND "activity_id" = 61
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 28
  AND "activity_id" = 420
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 59
  AND "activity_id" = 270
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 46
  AND "activity_id" = 428
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 73
  AND "activity_id" = 350
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 65
  AND "activity_id" = 261
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 92
  AND "activity_id" = 113
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 11
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 69
  AND "activity_id" = 333
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 85
  AND "activity_id" = 106
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 54
  AND "activity_id" = 208
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 40
  AND "activity_id" = 490
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 88
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 85
  AND "activity_id" = 362
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 59
  AND "activity_id" = 38
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 13
  AND "activity_id" = 186
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 38
  AND "activity_id" = 435
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 72
  AND "activity_id" = 304
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 85
  AND "activity_id" = 454
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 34
  AND "activity_id" = 144
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 33
  AND "activity_id" = 410
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 74
  AND "activity_id" = 378
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 79
  AND "activity_id" = 481
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 50
  AND "activity_id" = 385
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 99
  AND "activity_id" = 448
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 10
  AND "activity_id" = 199
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 35
  AND "activity_id" = 114
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 70
  AND "activity_id" = 475
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 63
  AND "activity_id" = 67
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 72
  AND "activity_id" = 207
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 75
  AND "activity_id" = 290
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 32
  AND "activity_id" = 3
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 106
  AND "activity_id" = 288
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 19
  AND "activity_id" = 455
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 63
  AND "activity_id" = 60
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 73
  AND "activity_id" = 420
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 53
  AND "activity_id" = 233
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 24
  AND "activity_id" = 328
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 15
  AND "activity_id" = 129
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 23
  AND "activity_id" = 396
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 24
  AND "activity_id" = 475
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 43
  AND "activity_id" = 476
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 41
  AND "activity_id" = 20
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 46
  AND "activity_id" = 415
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 105
  AND "activity_id" = 318
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 67
  AND "activity_id" = 497
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 9
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 21
  AND "activity_id" = 306
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 58
  AND "activity_id" = 229
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 9
  AND "activity_id" = 7
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 74
  AND "activity_id" = 395
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 79
  AND "activity_id" = 398
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 9
  AND "activity_id" = 55
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 106
  AND "activity_id" = 385
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 9
  AND "activity_id" = 384
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 99
  AND "activity_id" = 210
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 85
  AND "activity_id" = 341
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 21
  AND "activity_id" = 386
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 106
  AND "activity_id" = 206
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 37
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 9
  AND "activity_id" = 226
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 70
  AND "activity_id" = 82
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 58
  AND "activity_id" = 167
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 103
  AND "activity_id" = 53
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 54
  AND "activity_id" = 282
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 74
  AND "activity_id" = 422
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 63
  AND "activity_id" = 386
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 51
  AND "activity_id" = 224
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 49
  AND "activity_id" = 137
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 75
  AND "activity_id" = 411
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 106
  AND "activity_id" = 290
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 24
  AND "activity_id" = 159
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 19
  AND "activity_id" = 2
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 77
  AND "activity_id" = 175
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 37
  AND "activity_id" = 243
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 74
  AND "activity_id" = 159
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 55
  AND "activity_id" = 82
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 30
  AND "activity_id" = 354
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 85
  AND "activity_id" = 35
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 6
  AND "activity_id" = 71
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 89
  AND "activity_id" = 433
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 34
  AND "activity_id" = 122
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 46
  AND "activity_id" = 58
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 24
  AND "activity_id" = 76
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 76
  AND "activity_id" = 5
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 72
  AND "activity_id" = 487
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 10
  AND "activity_id" = 499
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 56
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 7
  AND "activity_id" = 179
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 100
  AND "activity_id" = 191
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 105
  AND "activity_id" = 88
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 58
  AND "activity_id" = 254
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 40
  AND "activity_id" = 224
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 29
  AND "activity_id" = 441
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 56
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 88
  AND "activity_id" = 200
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 6
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 97
  AND "activity_id" = 384
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 12
  AND "activity_id" = 278
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 50
  AND "activity_id" = 44
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 43
  AND "activity_id" = 360
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 35
  AND "activity_id" = 423
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 88
  AND "activity_id" = 331
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 68
  AND "activity_id" = 509
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 7
  AND "activity_id" = 391
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 93
  AND "activity_id" = 148
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 77
  AND "activity_id" = 378
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 86
  AND "activity_id" = 412
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 71
  AND "activity_id" = 431
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 66
  AND "activity_id" = 27
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 25
  AND "activity_id" = 418
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 79
  AND "activity_id" = 450
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 46
  AND "activity_id" = 473
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 34
  AND "activity_id" = 219
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 94
  AND "activity_id" = 204
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 38
  AND "activity_id" = 44
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 72
  AND "activity_id" = 100
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 22
  AND "activity_id" = 37
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 79
  AND "activity_id" = 243
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 82
  AND "activity_id" = 141
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 52
  AND "activity_id" = 136
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 29
  AND "activity_id" = 332
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 22
  AND "activity_id" = 262
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 102
  AND "activity_id" = 453
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 97
  AND "activity_id" = 109
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 7
  AND "activity_id" = 438
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 35
  AND "activity_id" = 153
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 6
  AND "activity_id" = 7
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 17
  AND "activity_id" = 32
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 12
  AND "activity_id" = 59
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 29
  AND "activity_id" = 124
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 43
  AND "activity_id" = 416
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 48
  AND "activity_id" = 239
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 61
  AND "activity_id" = 334
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 20
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 40
  AND "activity_id" = 118
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 57
  AND "activity_id" = 195
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 94
  AND "activity_id" = 91
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 22
  AND "activity_id" = 127
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 105
  AND "activity_id" = 81
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 61
  AND "activity_id" = 185
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 72
  AND "activity_id" = 2
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 58
  AND "activity_id" = 435
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 32
  AND "activity_id" = 93
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 84
  AND "activity_id" = 118
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 36
  AND "activity_id" = 297
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 73
  AND "activity_id" = 178
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 19
  AND "activity_id" = 289
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 12
  AND "activity_id" = 2
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 17
  AND "activity_id" = 139
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 53
  AND "activity_id" = 230
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 41
  AND "activity_id" = 167
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 10
  AND "activity_id" = 462
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 27
  AND "activity_id" = 368
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 103
  AND "activity_id" = 497
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 26
  AND "activity_id" = 378
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 40
  AND "activity_id" = 42
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 28
  AND "activity_id" = 132
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 6
  AND "activity_id" = 214
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 3
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 46
  AND "activity_id" = 145
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 60
  AND "activity_id" = 28
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 54
  AND "activity_id" = 124
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 20
  AND "activity_id" = 265
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 93
  AND "activity_id" = 343
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 93
  AND "activity_id" = 265
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 6
  AND "activity_id" = 2
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 13
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 67
  AND "activity_id" = 41
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 53
  AND "activity_id" = 154
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 90
  AND "activity_id" = 203
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 48
  AND "activity_id" = 93
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 9
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 15
  AND "activity_id" = 6
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 51
  AND "activity_id" = 39
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 34
  AND "activity_id" = 438
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 84
  AND "activity_id" = 406
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 34
  AND "activity_id" = 350
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 45
  AND "activity_id" = 146
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 69
  AND "activity_id" = 114
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 102
  AND "activity_id" = 242
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 16
  AND "activity_id" = 94
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 14
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 19
  AND "activity_id" = 227
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 80
  AND "activity_id" = 298
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 66
  AND "activity_id" = 351
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 27
  AND "activity_id" = 53
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 56
  AND "activity_id" = 324
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 12
  AND "activity_id" = 143
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 71
  AND "activity_id" = 259
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 105
  AND "activity_id" = 402
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 26
  AND "activity_id" = 416
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 102
  AND "activity_id" = 412
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 19
  AND "activity_id" = 345
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 42
  AND "activity_id" = 78
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 79
  AND "activity_id" = 212
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 13
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 86
  AND "activity_id" = 484
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 32
  AND "activity_id" = 385
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 97
  AND "activity_id" = 488
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 45
  AND "activity_id" = 158
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 98
  AND "activity_id" = 199
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 55
  AND "activity_id" = 32
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 31
  AND "activity_id" = 202
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 50
  AND "activity_id" = 114
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 103
  AND "activity_id" = 338
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 35
  AND "activity_id" = 166
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 45
  AND "activity_id" = 204
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 10
  AND "activity_id" = 480
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 28
  AND "activity_id" = 159
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 66
  AND "activity_id" = 392
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 6
  AND "activity_id" = 426
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 96
  AND "activity_id" = 12
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 59
  AND "activity_id" = 119
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 84
  AND "activity_id" = 405
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 65
  AND "activity_id" = 90
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 14
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 97
  AND "activity_id" = 443
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 21
  AND "activity_id" = 256
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 102
  AND "activity_id" = 94
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 77
  AND "activity_id" = 362
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 28
  AND "activity_id" = 506
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 94
  AND "activity_id" = 358
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 100
  AND "activity_id" = 85
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 33
  AND "activity_id" = 371
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 32
  AND "activity_id" = 143
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 85
  AND "activity_id" = 449
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 15
  AND "activity_id" = 408
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 40
  AND "activity_id" = 192
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 96
  AND "activity_id" = 433
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 38
  AND "activity_id" = 424
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 88
  AND "activity_id" = 60
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 87
  AND "activity_id" = 404
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 52
  AND "activity_id" = 140
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 13
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 40
  AND "activity_id" = 157
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 38
  AND "activity_id" = 233
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 30
  AND "activity_id" = 240
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 48
  AND "activity_id" = 65
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 33
  AND "activity_id" = 338
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 58
  AND "activity_id" = 244
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 7
  AND "activity_id" = 468
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 21
  AND "activity_id" = 297
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 28
  AND "activity_id" = 420
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 31
  AND "activity_id" = 135
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 14
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 49
  AND "activity_id" = 103
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 59
  AND "activity_id" = 309
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 27
  AND "activity_id" = 272
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 67
  AND "activity_id" = 488
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 98
  AND "activity_id" = 242
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 99
  AND "activity_id" = 77
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 94
  AND "activity_id" = 312
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 54
  AND "activity_id" = 366
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 17
  AND "activity_id" = 390
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 6
  AND "activity_id" = 161
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 106
  AND "activity_id" = 114
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 65
  AND "activity_id" = 481
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 91
  AND "activity_id" = 81
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 84
  AND "activity_id" = 309
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 9
  AND "activity_id" = 304
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 15
  AND "activity_id" = 2
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 99
  AND "activity_id" = 245
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 34
  AND "activity_id" = 252
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 90
  AND "activity_id" = 25
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 73
  AND "activity_id" = 268
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 22
  AND "activity_id" = 29
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 71
  AND "activity_id" = 186
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 33
  AND "activity_id" = 418
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 13
  AND "activity_id" = 194
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 103
  AND "activity_id" = 330
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 89
  AND "activity_id" = 342
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 70
  AND "activity_id" = 385
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 31
  AND "activity_id" = 451
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 105
  AND "activity_id" = 126
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 106
  AND "activity_id" = 288
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 80
  AND "activity_id" = 405
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 84
  AND "activity_id" = 112
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 44
  AND "activity_id" = 477
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 19
  AND "activity_id" = 43
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 74
  AND "activity_id" = 333
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 91
  AND "activity_id" = 22
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 100
  AND "activity_id" = 35
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 24
  AND "activity_id" = 319
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 27
  AND "activity_id" = 261
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 40
  AND "activity_id" = 498
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 80
  AND "activity_id" = 162
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 75
  AND "activity_id" = 485
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 98
  AND "activity_id" = 482
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 97
  AND "activity_id" = 431
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 19
  AND "activity_id" = 352
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 18
  AND "activity_id" = 2
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 20
  AND "activity_id" = 307
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 81
  AND "activity_id" = 163
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 68
  AND "activity_id" = 85
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 66
  AND "activity_id" = 470
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 53
  AND "activity_id" = 96
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 69
  AND "activity_id" = 282
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 48
  AND "activity_id" = 355
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 21
  AND "activity_id" = 216
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 88
  AND "activity_id" = 51
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 62
  AND "activity_id" = 484
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 72
  AND "activity_id" = 105
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 27
  AND "activity_id" = 37
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 31
  AND "activity_id" = 273
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 65
  AND "activity_id" = 343
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 33
  AND "activity_id" = 383
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 59
  AND "activity_id" = 506
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 6
  AND "activity_id" = 408
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 7
  AND "activity_id" = 165
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 28
  AND "activity_id" = 385
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 22
  AND "activity_id" = 91
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 20
  AND "activity_id" = 37
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 31
  AND "activity_id" = 195
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 34
  AND "activity_id" = 267
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 7
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 58
  AND "activity_id" = 257
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 89
  AND "activity_id" = 182
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 7
  AND "activity_id" = 490
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 82
  AND "activity_id" = 315
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 84
  AND "activity_id" = 462
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 101
  AND "activity_id" = 444
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 78
  AND "activity_id" = 386
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 75
  AND "activity_id" = 230
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 74
  AND "activity_id" = 14
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 80
  AND "activity_id" = 58
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 37
  AND "activity_id" = 498
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 95
  AND "activity_id" = 205
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 37
  AND "activity_id" = 199
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 8
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 102
  AND "activity_id" = 280
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 11
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 63
  AND "activity_id" = 103
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 32
  AND "activity_id" = 184
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 60
  AND "activity_id" = 145
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 43
  AND "activity_id" = 5
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 83
  AND "activity_id" = 256
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 68
  AND "activity_id" = 488
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 16
  AND "activity_id" = 17
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 61
  AND "activity_id" = 303
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 4
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 16
  AND "activity_id" = 2
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 7
  AND "activity_id" = 464
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 29
  AND "activity_id" = 20
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 29
  AND "activity_id" = 374
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 26
  AND "activity_id" = 201
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 18
  AND "activity_id" = 2
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 77
  AND "activity_id" = 431
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 33
  AND "activity_id" = 439
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 96
  AND "activity_id" = 410
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 51
  AND "activity_id" = 5
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 106
  AND "activity_id" = 270
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 73
  AND "activity_id" = 284
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 25
  AND "activity_id" = 218
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 21
  AND "activity_id" = 504
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 49
  AND "activity_id" = 196
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 63
  AND "activity_id" = 83
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 6
  AND "activity_id" = 208
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 25
  AND "activity_id" = 299
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 15
  AND "activity_id" = 272
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 82
  AND "activity_id" = 126
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 81
  AND "activity_id" = 324
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 88
  AND "activity_id" = 450
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 37
  AND "activity_id" = 447
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 59
  AND "activity_id" = 129
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 25
  AND "activity_id" = 60
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 105
  AND "activity_id" = 347
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 92
  AND "activity_id" = 426
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 29
  AND "activity_id" = 174
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 49
  AND "activity_id" = 231
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 74
  AND "activity_id" = 459
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 34
  AND "activity_id" = 39
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 60
  AND "activity_id" = 317
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 56
  AND "activity_id" = 467
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 23
  AND "activity_id" = 379
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 37
  AND "activity_id" = 507
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 40
  AND "activity_id" = 377
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 63
  AND "activity_id" = 49
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 47
  AND "activity_id" = 444
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 17
  AND "activity_id" = 55
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 60
  AND "activity_id" = 161
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 81
  AND "activity_id" = 323
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 6
  AND "activity_id" = 452
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 55
  AND "activity_id" = 126
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 77
  AND "activity_id" = 294
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 92
  AND "activity_id" = 25
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 76
  AND "activity_id" = 262
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 52
  AND "activity_id" = 123
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 18
  AND "activity_id" = 2
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 64
  AND "activity_id" = 91
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 43
  AND "activity_id" = 429
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 31
  AND "activity_id" = 476
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 107
  AND "activity_id" = 458
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 105
  AND "activity_id" = 50
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 70
  AND "activity_id" = 423
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 49
  AND "activity_id" = 476
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 51
  AND "activity_id" = 255
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 31
  AND "activity_id" = 17
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 33
  AND "activity_id" = 120
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 38
  AND "activity_id" = 462
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 76
  AND "activity_id" = 370
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 60
  AND "activity_id" = 242
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 30
  AND "activity_id" = 61
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 101
  AND "activity_id" = 234
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 83
  AND "activity_id" = 54
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 100
  AND "activity_id" = 487
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 28
  AND "activity_id" = 113
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 22
  AND "activity_id" = 148
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 82
  AND "activity_id" = 106
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 71
  AND "activity_id" = 291
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 47
  AND "activity_id" = 161
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 43
  AND "activity_id" = 453
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 30
  AND "activity_id" = 59
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 34
  AND "activity_id" = 471
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 106
  AND "activity_id" = 492
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 93
  AND "activity_id" = 25
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 55
  AND "activity_id" = 264
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 40
  AND "activity_id" = 192
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 106
  AND "activity_id" = 424
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 81
  AND "activity_id" = 230
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 8
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 91
  AND "activity_id" = 378
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 80
  AND "activity_id" = 17
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 45
  AND "activity_id" = 180
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 56
  AND "activity_id" = 169
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 6
  AND "activity_id" = 202
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 89
  AND "activity_id" = 122
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 58
  AND "activity_id" = 128
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 95
  AND "activity_id" = 433
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 81
  AND "activity_id" = 5
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 40
  AND "activity_id" = 255
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 67
  AND "activity_id" = 172
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 52
  AND "activity_id" = 351
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 66
  AND "activity_id" = 354
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 85
  AND "activity_id" = 164
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 98
  AND "activity_id" = 507
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 40
  AND "activity_id" = 442
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 11
  AND "activity_id" = 2
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 38
  AND "activity_id" = 483
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 69
  AND "activity_id" = 93
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 73
  AND "activity_id" = 12
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 68
  AND "activity_id" = 194
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 97
  AND "activity_id" = 367
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 23
  AND "activity_id" = 230
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 102
  AND "activity_id" = 265
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 93
  AND "activity_id" = 46
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 74
  AND "activity_id" = 253
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 37
  AND "activity_id" = 86
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 40
  AND "activity_id" = 323
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 39
  AND "activity_id" = 362
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 6
  AND "activity_id" = 352
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 49
  AND "activity_id" = 435
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 32
  AND "activity_id" = 168
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 107
  AND "activity_id" = 237
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 79
  AND "activity_id" = 330
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 93
  AND "activity_id" = 343
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 96
  AND "activity_id" = 38
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 43
  AND "activity_id" = 263
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 30
  AND "activity_id" = 26
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 6
  AND "activity_id" = 403
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 54
  AND "activity_id" = 482
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 10
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 58
  AND "activity_id" = 169
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 25
  AND "activity_id" = 439
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 77
  AND "activity_id" = 21
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 39
  AND "activity_id" = 82
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 64
  AND "activity_id" = 207
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 30
  AND "activity_id" = 100
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 72
  AND "activity_id" = 416
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 17
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 40
  AND "activity_id" = 150
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 29
  AND "activity_id" = 485
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 57
  AND "activity_id" = 163
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 68
  AND "activity_id" = 28
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 4
  AND "activity_id" = 2
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 61
  AND "activity_id" = 472
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 50
  AND "activity_id" = 338
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 64
  AND "activity_id" = 308
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 36
  AND "activity_id" = 173
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 32
  AND "activity_id" = 149
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 36
  AND "activity_id" = 436
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 40
  AND "activity_id" = 420
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 84
  AND "activity_id" = 498
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 67
  AND "activity_id" = 261
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 28
  AND "activity_id" = 269
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 17
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 12
  AND "activity_id" = 3
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 7
  AND "activity_id" = 154
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 73
  AND "activity_id" = 191
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 62
  AND "activity_id" = 271
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 89
  AND "activity_id" = 251
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 103
  AND "activity_id" = 274
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 63
  AND "activity_id" = 58
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 6
  AND "activity_id" = 421
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 52
  AND "activity_id" = 246
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 104
  AND "activity_id" = 309
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 7
  AND "activity_id" = 128
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 17
  AND "activity_id" = 277
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 105
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 16
  AND "activity_id" = 374
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 50
  AND "activity_id" = 314
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 13
  AND "activity_id" = 97
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 97
  AND "activity_id" = 169
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 19
  AND "activity_id" = 385
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 77
  AND "activity_id" = 486
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 68
  AND "activity_id" = 85
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 38
  AND "activity_id" = 500
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 44
  AND "activity_id" = 389
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 21
  AND "activity_id" = 359
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 65
  AND "activity_id" = 234
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 10
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 88
  AND "activity_id" = 19
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 32
  AND "activity_id" = 13
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 99
  AND "activity_id" = 235
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 92
  AND "activity_id" = 128
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 25
  AND "activity_id" = 446
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 27
  AND "activity_id" = 337
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 13
  AND "activity_id" = 223
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 95
  AND "activity_id" = 185
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 32
  AND "activity_id" = 100
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 71
  AND "activity_id" = 270
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 12
  AND "activity_id" = 63
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 97
  AND "activity_id" = 149
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 66
  AND "activity_id" = 509
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 8
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 91
  AND "activity_id" = 94
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 84
  AND "activity_id" = 337
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 52
  AND "activity_id" = 379
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 80
  AND "activity_id" = 366
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 82
  AND "activity_id" = 116
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 20
  AND "activity_id" = 320
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 32
  AND "activity_id" = 285
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 84
  AND "activity_id" = 220
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 54
  AND "activity_id" = 226
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 8
  AND "activity_id" = 2
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 107
  AND "activity_id" = 401
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 17
  AND "activity_id" = 120
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 52
  AND "activity_id" = 85
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 29
  AND "activity_id" = 114
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 4
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 24
  AND "activity_id" = 385
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 55
  AND "activity_id" = 262
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 63
  AND "activity_id" = 500
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 64
  AND "activity_id" = 314
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 54
  AND "activity_id" = 299
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 72
  AND "activity_id" = 122
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 86
  AND "activity_id" = 141
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 71
  AND "activity_id" = 233
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 73
  AND "activity_id" = 208
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 80
  AND "activity_id" = 259
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 52
  AND "activity_id" = 108
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 45
  AND "activity_id" = 60
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 41
  AND "activity_id" = 439
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 12
  AND "activity_id" = 484
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 31
  AND "activity_id" = 21
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 26
  AND "activity_id" = 156
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 59
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 36
  AND "activity_id" = 480
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 12
  AND "activity_id" = 94
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 74
  AND "activity_id" = 7
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 106
  AND "activity_id" = 133
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 28
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 15
  AND "activity_id" = 153
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 97
  AND "activity_id" = 419
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 72
  AND "activity_id" = 37
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 101
  AND "activity_id" = 343
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 51
  AND "activity_id" = 487
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 38
  AND "activity_id" = 438
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 68
  AND "activity_id" = 187
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 35
  AND "activity_id" = 15
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 49
  AND "activity_id" = 97
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 51
  AND "activity_id" = 68
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 90
  AND "activity_id" = 137
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 70
  AND "activity_id" = 288
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 82
  AND "activity_id" = 205
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 89
  AND "activity_id" = 465
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 24
  AND "activity_id" = 136
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 12
  AND "activity_id" = 501
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 36
  AND "activity_id" = 223
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 37
  AND "activity_id" = 118
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 102
  AND "activity_id" = 382
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 42
  AND "activity_id" = 192
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 46
  AND "activity_id" = 402
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 6
  AND "activity_id" = 206
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 99
  AND "activity_id" = 68
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 41
  AND "activity_id" = 300
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 69
  AND "activity_id" = 325
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 104
  AND "activity_id" = 55
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 82
  AND "activity_id" = 13
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 52
  AND "activity_id" = 377
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 65
  AND "activity_id" = 52
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 71
  AND "activity_id" = 4
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 105
  AND "activity_id" = 425
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 22
  AND "activity_id" = 394
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 37
  AND "activity_id" = 100
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 94
  AND "activity_id" = 495
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 89
  AND "activity_id" = 224
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 28
  AND "activity_id" = 184
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 58
  AND "activity_id" = 24
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 66
  AND "activity_id" = 476
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 18
  AND "activity_id" = 2
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 20
  AND "activity_id" = 473
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 107
  AND "activity_id" = 364
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 42
  AND "activity_id" = 492
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 22
  AND "activity_id" = 61
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 47
  AND "activity_id" = 143
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 38
  AND "activity_id" = 225
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 35
  AND "activity_id" = 251
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 57
  AND "activity_id" = 86
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 62
  AND "activity_id" = 465
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 98
  AND "activity_id" = 107
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 86
  AND "activity_id" = 102
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 91
  AND "activity_id" = 200
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 74
  AND "activity_id" = 358
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 57
  AND "activity_id" = 290
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 38
  AND "activity_id" = 21
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 8
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 68
  AND "activity_id" = 425
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 65
  AND "activity_id" = 195
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 34
  AND "activity_id" = 171
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 9
  AND "activity_id" = 135
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 73
  AND "activity_id" = 290
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 93
  AND "activity_id" = 51
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 21
  AND "activity_id" = 448
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 104
  AND "activity_id" = 455
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 44
  AND "activity_id" = 391
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 31
  AND "activity_id" = 449
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 50
  AND "activity_id" = 208
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 44
  AND "activity_id" = 324
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 34
  AND "activity_id" = 3
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 62
  AND "activity_id" = 285
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 6
  AND "activity_id" = 195
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 71
  AND "activity_id" = 235
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 81
  AND "activity_id" = 313
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 91
  AND "activity_id" = 264
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 72
  AND "activity_id" = 70
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 82
  AND "activity_id" = 6
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 80
  AND "activity_id" = 5
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 97
  AND "activity_id" = 414
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 96
  AND "activity_id" = 233
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 80
  AND "activity_id" = 471
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 51
  AND "activity_id" = 233
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 69
  AND "activity_id" = 343
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 94
  AND "activity_id" = 338
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 28
  AND "activity_id" = 366
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 26
  AND "activity_id" = 248
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 90
  AND "activity_id" = 118
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 93
  AND "activity_id" = 423
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 32
  AND "activity_id" = 421
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 37
  AND "activity_id" = 384
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 42
  AND "activity_id" = 41
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 19
  AND "activity_id" = 263
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 9
  AND "activity_id" = 421
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 45
  AND "activity_id" = 3
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 18
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 34
  AND "activity_id" = 214
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 50
  AND "activity_id" = 112
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 67
  AND "activity_id" = 158
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 100
  AND "activity_id" = 26
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 34
  AND "activity_id" = 318
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 49
  AND "activity_id" = 229
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 80
  AND "activity_id" = 507
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 20
  AND "activity_id" = 269
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 86
  AND "activity_id" = 108
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 106
  AND "activity_id" = 415
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 64
  AND "activity_id" = 167
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 36
  AND "activity_id" = 123
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 102
  AND "activity_id" = 239
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 35
  AND "activity_id" = 465
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 21
  AND "activity_id" = 464
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 82
  AND "activity_id" = 82
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 23
  AND "activity_id" = 487
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 93
  AND "activity_id" = 203
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 3
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 59
  AND "activity_id" = 311
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 59
  AND "activity_id" = 70
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 21
  AND "activity_id" = 98
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 19
  AND "activity_id" = 443
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 105
  AND "activity_id" = 288
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 41
  AND "activity_id" = 180
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 3
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 73
  AND "activity_id" = 473
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 59
  AND "activity_id" = 362
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 44
  AND "activity_id" = 264
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 19
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 55
  AND "activity_id" = 139
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 42
  AND "activity_id" = 14
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 63
  AND "activity_id" = 227
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 81
  AND "activity_id" = 403
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 94
  AND "activity_id" = 271
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 54
  AND "activity_id" = 140
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 73
  AND "activity_id" = 196
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 88
  AND "activity_id" = 313
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 6
  AND "activity_id" = 2
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 94
  AND "activity_id" = 292
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 104
  AND "activity_id" = 88
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 15
  AND "activity_id" = 2
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 30
  AND "activity_id" = 186
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 57
  AND "activity_id" = 504
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 83
  AND "activity_id" = 2
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 93
  AND "activity_id" = 197
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 68
  AND "activity_id" = 50
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 51
  AND "activity_id" = 143
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 104
  AND "activity_id" = 277
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 39
  AND "activity_id" = 107
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 82
  AND "activity_id" = 446
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 88
  AND "activity_id" = 55
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 47
  AND "activity_id" = 350
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 57
  AND "activity_id" = 186
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 51
  AND "activity_id" = 231
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 93
  AND "activity_id" = 421
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 43
  AND "activity_id" = 346
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 56
  AND "activity_id" = 400
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 60
  AND "activity_id" = 437
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 20
  AND "activity_id" = 243
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 78
  AND "activity_id" = 155
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 15
  AND "activity_id" = 91
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 23
  AND "activity_id" = 17
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 50
  AND "activity_id" = 149
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 29
  AND "activity_id" = 470
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 26
  AND "activity_id" = 253
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 54
  AND "activity_id" = 243
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 95
  AND "activity_id" = 6
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 17
  AND "activity_id" = 210
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 13
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 60
  AND "activity_id" = 405
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 78
  AND "activity_id" = 404
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 46
  AND "activity_id" = 444
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 52
  AND "activity_id" = 91
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 30
  AND "activity_id" = 510
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 20
  AND "activity_id" = 497
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 62
  AND "activity_id" = 72
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 51
  AND "activity_id" = 151
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 61
  AND "activity_id" = 16
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 103
  AND "activity_id" = 110
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 67
  AND "activity_id" = 108
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 34
  AND "activity_id" = 109
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 43
  AND "activity_id" = 281
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 65
  AND "activity_id" = 367
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 90
  AND "activity_id" = 320
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 15
  AND "activity_id" = 287
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 16
  AND "activity_id" = 463
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 58
  AND "activity_id" = 154
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 81
  AND "activity_id" = 282
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 33
  AND "activity_id" = 366
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 72
  AND "activity_id" = 263
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 48
  AND "activity_id" = 337
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 6
  AND "activity_id" = 188
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 37
  AND "activity_id" = 156
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 61
  AND "activity_id" = 60
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 30
  AND "activity_id" = 468
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 60
  AND "activity_id" = 328
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 48
  AND "activity_id" = 472
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 15
  AND "activity_id" = 47
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 44
  AND "activity_id" = 343
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 24
  AND "activity_id" = 137
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 38
  AND "activity_id" = 95
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 27
  AND "activity_id" = 490
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 47
  AND "activity_id" = 83
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 25
  AND "activity_id" = 497
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 66
  AND "activity_id" = 216
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 10
  AND "activity_id" = 462
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 70
  AND "activity_id" = 15
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 26
  AND "activity_id" = 291
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 54
  AND "activity_id" = 431
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 95
  AND "activity_id" = 363
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 85
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 13
  AND "activity_id" = 447
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 21
  AND "activity_id" = 345
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 54
  AND "activity_id" = 297
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 69
  AND "activity_id" = 185
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 80
  AND "activity_id" = 96
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 38
  AND "activity_id" = 313
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 102
  AND "activity_id" = 367
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 102
  AND "activity_id" = 104
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 42
  AND "activity_id" = 406
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 26
  AND "activity_id" = 494
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 65
  AND "activity_id" = 224
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 61
  AND "activity_id" = 175
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 19
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 81
  AND "activity_id" = 190
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 23
  AND "activity_id" = 112
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 21
  AND "activity_id" = 158
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 65
  AND "activity_id" = 147
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 83
  AND "activity_id" = 340
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 89
  AND "activity_id" = 299
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 43
  AND "activity_id" = 350
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 25
  AND "activity_id" = 107
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 30
  AND "activity_id" = 184
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 36
  AND "activity_id" = 88
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 30
  AND "activity_id" = 311
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 20
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 46
  AND "activity_id" = 434
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 106
  AND "activity_id" = 173
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 38
  AND "activity_id" = 54
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 102
  AND "activity_id" = 271
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 75
  AND "activity_id" = 389
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 16
  AND "activity_id" = 200
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 82
  AND "activity_id" = 188
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 53
  AND "activity_id" = 119
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 37
  AND "activity_id" = 4
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 28
  AND "activity_id" = 463
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 67
  AND "activity_id" = 351
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 9
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 96
  AND "activity_id" = 345
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 104
  AND "activity_id" = 191
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 77
  AND "activity_id" = 263
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 62
  AND "activity_id" = 338
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 13
  AND "activity_id" = 40
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 87
  AND "activity_id" = 355
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 61
  AND "activity_id" = 277
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 107
  AND "activity_id" = 179
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 64
  AND "activity_id" = 5
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 53
  AND "activity_id" = 159
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 91
  AND "activity_id" = 88
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 15
  AND "activity_id" = 185
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 62
  AND "activity_id" = 344
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 65
  AND "activity_id" = 200
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 83
  AND "activity_id" = 307
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 26
  AND "activity_id" = 143
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 17
  AND "activity_id" = 113
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 26
  AND "activity_id" = 37
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 44
  AND "activity_id" = 204
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 71
  AND "activity_id" = 145
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 58
  AND "activity_id" = 155
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 75
  AND "activity_id" = 59
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 102
  AND "activity_id" = 62
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 75
  AND "activity_id" = 457
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 70
  AND "activity_id" = 376
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 22
  AND "activity_id" = 229
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 83
  AND "activity_id" = 102
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 78
  AND "activity_id" = 442
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 54
  AND "activity_id" = 266
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 34
  AND "activity_id" = 355
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 107
  AND "activity_id" = 296
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 44
  AND "activity_id" = 307
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 39
  AND "activity_id" = 434
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 81
  AND "activity_id" = 460
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 20
  AND "activity_id" = 113
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 57
  AND "activity_id" = 467
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 88
  AND "activity_id" = 101
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 33
  AND "activity_id" = 408
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 22
  AND "activity_id" = 162
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 79
  AND "activity_id" = 241
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 6
  AND "activity_id" = 419
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 83
  AND "activity_id" = 392
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 97
  AND "activity_id" = 301
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 24
  AND "activity_id" = 289
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 104
  AND "activity_id" = 357
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 12
  AND "activity_id" = 199
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 10
  AND "activity_id" = 295
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 11
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 22
  AND "activity_id" = 90
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 76
  AND "activity_id" = 480
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 102
  AND "activity_id" = 351
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 21
  AND "activity_id" = 500
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 98
  AND "activity_id" = 489
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 82
  AND "activity_id" = 100
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 17
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 17
  AND "activity_id" = 449
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 5
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 49
  AND "activity_id" = 493
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 10
  AND "activity_id" = 500
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 88
  AND "activity_id" = 137
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 65
  AND "activity_id" = 485
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 6
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 21
  AND "activity_id" = 354
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 27
  AND "activity_id" = 214
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 85
  AND "activity_id" = 6
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 29
  AND "activity_id" = 273
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 70
  AND "activity_id" = 314
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 46
  AND "activity_id" = 494
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 102
  AND "activity_id" = 149
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 24
  AND "activity_id" = 51
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 10
  AND "activity_id" = 254
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 61
  AND "activity_id" = 241
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 9
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 28
  AND "activity_id" = 63
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 33
  AND "activity_id" = 216
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 60
  AND "activity_id" = 482
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 89
  AND "activity_id" = 208
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 62
  AND "activity_id" = 181
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 62
  AND "activity_id" = 335
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 101
  AND "activity_id" = 473
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 39
  AND "activity_id" = 122
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 12
  AND "activity_id" = 396
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 84
  AND "activity_id" = 263
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 12
  AND "activity_id" = 350
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 21
  AND "activity_id" = 351
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 45
  AND "activity_id" = 76
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 78
  AND "activity_id" = 92
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 47
  AND "activity_id" = 462
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 88
  AND "activity_id" = 492
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 38
  AND "activity_id" = 224
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 16
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 88
  AND "activity_id" = 386
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 68
  AND "activity_id" = 145
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 107
  AND "activity_id" = 406
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 89
  AND "activity_id" = 66
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 85
  AND "activity_id" = 149
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 84
  AND "activity_id" = 506
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 53
  AND "activity_id" = 483
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 104
  AND "activity_id" = 5
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 22
  AND "activity_id" = 188
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 42
  AND "activity_id" = 132
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 41
  AND "activity_id" = 374
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 40
  AND "activity_id" = 457
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 105
  AND "activity_id" = 38
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 62
  AND "activity_id" = 274
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 6
  AND "activity_id" = 291
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 33
  AND "activity_id" = 194
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 71
  AND "activity_id" = 20
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 49
  AND "activity_id" = 168
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 17
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 99
  AND "activity_id" = 131
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 94
  AND "activity_id" = 173
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 42
  AND "activity_id" = 223
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 19
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 9
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 107
  AND "activity_id" = 47
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 95
  AND "activity_id" = 116
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 71
  AND "activity_id" = 465
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 77
  AND "activity_id" = 272
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 9
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 42
  AND "activity_id" = 12
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 92
  AND "activity_id" = 293
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 104
  AND "activity_id" = 166
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 23
  AND "activity_id" = 359
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 45
  AND "activity_id" = 408
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 46
  AND "activity_id" = 166
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 97
  AND "activity_id" = 504
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 13
  AND "activity_id" = 493
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 36
  AND "activity_id" = 6
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 37
  AND "activity_id" = 330
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 3
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 50
  AND "activity_id" = 132
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 37
  AND "activity_id" = 106
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 58
  AND "activity_id" = 421
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 9
  AND "activity_id" = 150
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 74
  AND "activity_id" = 14
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 77
  AND "activity_id" = 179
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 47
  AND "activity_id" = 176
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 19
  AND "activity_id" = 10
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 70
  AND "activity_id" = 490
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 94
  AND "activity_id" = 300
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 74
  AND "activity_id" = 141
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 52
  AND "activity_id" = 43
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 9
  AND "activity_id" = 358
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 34
  AND "activity_id" = 5
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 92
  AND "activity_id" = 243
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 60
  AND "activity_id" = 177
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 20
  AND "activity_id" = 151
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 15
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 104
  AND "activity_id" = 330
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 15
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 35
  AND "activity_id" = 131
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 29
  AND "activity_id" = 463
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 101
  AND "activity_id" = 473
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 15
  AND "activity_id" = 281
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 82
  AND "activity_id" = 232
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 53
  AND "activity_id" = 92
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 16
  AND "activity_id" = 280
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 32
  AND "activity_id" = 426
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 30
  AND "activity_id" = 451
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 70
  AND "activity_id" = 201
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 84
  AND "activity_id" = 170
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 12
  AND "activity_id" = 422
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 88
  AND "activity_id" = 480
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 17
  AND "activity_id" = 132
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 59
  AND "activity_id" = 123
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 91
  AND "activity_id" = 315
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 61
  AND "activity_id" = 13
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 101
  AND "activity_id" = 436
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 26
  AND "activity_id" = 140
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 98
  AND "activity_id" = 242
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 35
  AND "activity_id" = 463
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 51
  AND "activity_id" = 362
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 6
  AND "activity_id" = 473
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 50
  AND "activity_id" = 23
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 59
  AND "activity_id" = 120
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 23
  AND "activity_id" = 236
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 101
  AND "activity_id" = 350
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 73
  AND "activity_id" = 4
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 16
  AND "activity_id" = 330
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 56
  AND "activity_id" = 410
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 76
  AND "activity_id" = 481
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 41
  AND "activity_id" = 216
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 96
  AND "activity_id" = 287
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 77
  AND "activity_id" = 42
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 9
  AND "activity_id" = 35
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 97
  AND "activity_id" = 378
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 72
  AND "activity_id" = 499
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 22
  AND "activity_id" = 34
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 69
  AND "activity_id" = 88
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 49
  AND "activity_id" = 234
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 35
  AND "activity_id" = 137
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 12
  AND "activity_id" = 24
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 30
  AND "activity_id" = 229
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 18
  AND "activity_id" = 2
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 89
  AND "activity_id" = 139
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 93
  AND "activity_id" = 482
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 22
  AND "activity_id" = 406
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 17
  AND "activity_id" = 490
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 9
  AND "activity_id" = 230
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 55
  AND "activity_id" = 67
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 81
  AND "activity_id" = 395
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 65
  AND "activity_id" = 94
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 46
  AND "activity_id" = 133
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 60
  AND "activity_id" = 202
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 72
  AND "activity_id" = 100
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 102
  AND "activity_id" = 214
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 103
  AND "activity_id" = 10
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 31
  AND "activity_id" = 119
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 9
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 39
  AND "activity_id" = 497
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 30
  AND "activity_id" = 413
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 69
  AND "activity_id" = 233
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 42
  AND "activity_id" = 416
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 70
  AND "activity_id" = 5
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 54
  AND "activity_id" = 443
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 71
  AND "activity_id" = 82
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 4
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 43
  AND "activity_id" = 420
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 68
  AND "activity_id" = 243
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 32
  AND "activity_id" = 398
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 52
  AND "activity_id" = 291
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 10
  AND "activity_id" = 2
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 16
  AND "activity_id" = 24
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 42
  AND "activity_id" = 504
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 64
  AND "activity_id" = 95
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 42
  AND "activity_id" = 163
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 92
  AND "activity_id" = 42
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 61
  AND "activity_id" = 195
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 49
  AND "activity_id" = 21
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 26
  AND "activity_id" = 155
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 18
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 82
  AND "activity_id" = 138
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 21
  AND "activity_id" = 390
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 31
  AND "activity_id" = 450
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 84
  AND "activity_id" = 216
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 10
  AND "activity_id" = 293
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 97
  AND "activity_id" = 225
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 98
  AND "activity_id" = 82
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 96
  AND "activity_id" = 383
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 22
  AND "activity_id" = 464
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 73
  AND "activity_id" = 200
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 25
  AND "activity_id" = 52
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 45
  AND "activity_id" = 63
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 7
  AND "activity_id" = 510
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 79
  AND "activity_id" = 46
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 7
  AND "activity_id" = 466
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 31
  AND "activity_id" = 161
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 15
  AND "activity_id" = 115
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 44
  AND "activity_id" = 337
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 75
  AND "activity_id" = 395
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 28
  AND "activity_id" = 71
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 87
  AND "activity_id" = 415
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 35
  AND "activity_id" = 49
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 34
  AND "activity_id" = 34
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 65
  AND "activity_id" = 398
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 17
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 71
  AND "activity_id" = 4
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 11
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 22
  AND "activity_id" = 368
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 28
  AND "activity_id" = 319
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 13
  AND "activity_id" = 407
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 72
  AND "activity_id" = 313
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 66
  AND "activity_id" = 217
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 86
  AND "activity_id" = 418
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 82
  AND "activity_id" = 106
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 4
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 21
  AND "activity_id" = 100
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 60
  AND "activity_id" = 474
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 49
  AND "activity_id" = 124
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 84
  AND "activity_id" = 312
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 35
  AND "activity_id" = 379
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 37
  AND "activity_id" = 274
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 9
  AND "activity_id" = 119
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 33
  AND "activity_id" = 72
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 66
  AND "activity_id" = 397
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 99
  AND "activity_id" = 44
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 36
  AND "activity_id" = 437
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 89
  AND "activity_id" = 150
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 4
  AND "activity_id" = 2
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 29
  AND "activity_id" = 178
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 86
  AND "activity_id" = 47
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 102
  AND "activity_id" = 341
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 32
  AND "activity_id" = 431
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 74
  AND "activity_id" = 254
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 74
  AND "activity_id" = 265
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 65
  AND "activity_id" = 365
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 49
  AND "activity_id" = 400
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 15
  AND "activity_id" = 146
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 65
  AND "activity_id" = 439
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 78
  AND "activity_id" = 480
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 89
  AND "activity_id" = 35
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 102
  AND "activity_id" = 239
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 61
  AND "activity_id" = 433
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 7
  AND "activity_id" = 328
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 23
  AND "activity_id" = 312
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 104
  AND "activity_id" = 179
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 54
  AND "activity_id" = 143
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 81
  AND "activity_id" = 349
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 94
  AND "activity_id" = 417
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 17
  AND "activity_id" = 470
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 103
  AND "activity_id" = 252
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 10
  AND "activity_id" = 294
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 10
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 106
  AND "activity_id" = 311
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 106
  AND "activity_id" = 94
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 28
  AND "activity_id" = 462
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 17
  AND "activity_id" = 104
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 16
  AND "activity_id" = 2
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 55
  AND "activity_id" = 393
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 78
  AND "activity_id" = 435
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 96
  AND "activity_id" = 431
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 22
  AND "activity_id" = 303
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 54
  AND "activity_id" = 302
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 56
  AND "activity_id" = 141
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 46
  AND "activity_id" = 185
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 106
  AND "activity_id" = 102
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 7
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 47
  AND "activity_id" = 149
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 72
  AND "activity_id" = 469
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 60
  AND "activity_id" = 264
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 68
  AND "activity_id" = 282
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 15
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 67
  AND "activity_id" = 408
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 25
  AND "activity_id" = 414
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 19
  AND "activity_id" = 2
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 103
  AND "activity_id" = 493
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 13
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 97
  AND "activity_id" = 264
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 22
  AND "activity_id" = 162
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 101
  AND "activity_id" = 111
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 28
  AND "activity_id" = 172
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 33
  AND "activity_id" = 61
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 57
  AND "activity_id" = 506
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 41
  AND "activity_id" = 500
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 70
  AND "activity_id" = 474
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 20
  AND "activity_id" = 157
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 9
  AND "activity_id" = 188
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 48
  AND "activity_id" = 19
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 16
  AND "activity_id" = 328
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 23
  AND "activity_id" = 110
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 50
  AND "activity_id" = 111
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 37
  AND "activity_id" = 406
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 37
  AND "activity_id" = 10
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 66
  AND "activity_id" = 175
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 47
  AND "activity_id" = 39
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 61
  AND "activity_id" = 492
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 17
  AND "activity_id" = 229
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 51
  AND "activity_id" = 369
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 31
  AND "activity_id" = 251
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 79
  AND "activity_id" = 79
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 88
  AND "activity_id" = 277
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 25
  AND "activity_id" = 210
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 87
  AND "activity_id" = 233
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 45
  AND "activity_id" = 108
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 73
  AND "activity_id" = 484
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 69
  AND "activity_id" = 498
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 29
  AND "activity_id" = 296
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 86
  AND "activity_id" = 307
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 10
  AND "activity_id" = 72
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 51
  AND "activity_id" = 291
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 70
  AND "activity_id" = 178
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 21
  AND "activity_id" = 272
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 47
  AND "activity_id" = 419
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 16
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 71
  AND "activity_id" = 163
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 71
  AND "activity_id" = 96
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 12
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 12
  AND "activity_id" = 411
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 19
  AND "activity_id" = 487
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 23
  AND "activity_id" = 309
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 20
  AND "activity_id" = 182
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 78
  AND "activity_id" = 403
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 13
  AND "activity_id" = 344
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 65
  AND "activity_id" = 175
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 95
  AND "activity_id" = 188
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 57
  AND "activity_id" = 159
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 51
  AND "activity_id" = 366
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 76
  AND "activity_id" = 450
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 37
  AND "activity_id" = 371
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 36
  AND "activity_id" = 162
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 80
  AND "activity_id" = 317
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 32
  AND "activity_id" = 164
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 77
  AND "activity_id" = 97
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 42
  AND "activity_id" = 457
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 77
  AND "activity_id" = 445
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 100
  AND "activity_id" = 284
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 72
  AND "activity_id" = 252
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 73
  AND "activity_id" = 96
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 90
  AND "activity_id" = 472
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 7
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 12
  AND "activity_id" = 306
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 32
  AND "activity_id" = 500
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 24
  AND "activity_id" = 406
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 13
  AND "activity_id" = 211
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 46
  AND "activity_id" = 441
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 87
  AND "activity_id" = 462
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 29
  AND "activity_id" = 249
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 61
  AND "activity_id" = 402
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 25
  AND "activity_id" = 453
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 65
  AND "activity_id" = 478
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 85
  AND "activity_id" = 240
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 43
  AND "activity_id" = 205
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 40
  AND "activity_id" = 44
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 38
  AND "activity_id" = 174
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 73
  AND "activity_id" = 367
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 43
  AND "activity_id" = 355
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 57
  AND "activity_id" = 484
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 70
  AND "activity_id" = 147
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 93
  AND "activity_id" = 57
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 66
  AND "activity_id" = 268
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 64
  AND "activity_id" = 55
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 35
  AND "activity_id" = 410
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 94
  AND "activity_id" = 29
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 97
  AND "activity_id" = 365
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 31
  AND "activity_id" = 149
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 22
  AND "activity_id" = 251
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 75
  AND "activity_id" = 410
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 73
  AND "activity_id" = 301
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 82
  AND "activity_id" = 182
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 3
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 102
  AND "activity_id" = 447
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 29
  AND "activity_id" = 20
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 37
  AND "activity_id" = 39
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 67
  AND "activity_id" = 32
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 101
  AND "activity_id" = 273
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 20
  AND "activity_id" = 382
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 49
  AND "activity_id" = 451
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 103
  AND "activity_id" = 214
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 80
  AND "activity_id" = 96
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 13
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 16
  AND "activity_id" = 223
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 52
  AND "activity_id" = 121
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 79
  AND "activity_id" = 331
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 30
  AND "activity_id" = 71
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 69
  AND "activity_id" = 467
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 105
  AND "activity_id" = 318
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 55
  AND "activity_id" = 289
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 10
  AND "activity_id" = 2
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 77
  AND "activity_id" = 124
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 63
  AND "activity_id" = 474
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 75
  AND "activity_id" = 448
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 31
  AND "activity_id" = 155
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 47
  AND "activity_id" = 142
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 60
  AND "activity_id" = 391
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 72
  AND "activity_id" = 282
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 34
  AND "activity_id" = 81
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 43
  AND "activity_id" = 86
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 56
  AND "activity_id" = 12
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 64
  AND "activity_id" = 322
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 37
  AND "activity_id" = 221
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 10
  AND "activity_id" = 2
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 54
  AND "activity_id" = 199
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 50
  AND "activity_id" = 485
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 7
  AND "activity_id" = 142
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 91
  AND "activity_id" = 221
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 46
  AND "activity_id" = 87
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 77
  AND "activity_id" = 43
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 61
  AND "activity_id" = 219
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 40
  AND "activity_id" = 333
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 95
  AND "activity_id" = 259
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 103
  AND "activity_id" = 93
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 73
  AND "activity_id" = 429
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 19
  AND "activity_id" = 315
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 66
  AND "activity_id" = 334
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 45
  AND "activity_id" = 331
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 71
  AND "activity_id" = 462
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 35
  AND "activity_id" = 277
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 63
  AND "activity_id" = 112
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 106
  AND "activity_id" = 347
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 11
  AND "activity_id" = 2
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 105
  AND "activity_id" = 161
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 105
  AND "activity_id" = 212
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 68
  AND "activity_id" = 219
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 101
  AND "activity_id" = 150
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 16
  AND "activity_id" = 2
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 103
  AND "activity_id" = 137
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 52
  AND "activity_id" = 405
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 6
  AND "activity_id" = 306
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 45
  AND "activity_id" = 490
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 96
  AND "activity_id" = 485
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 13
  AND "activity_id" = 305
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 87
  AND "activity_id" = 41
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 13
  AND "activity_id" = 310
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 105
  AND "activity_id" = 23
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 21
  AND "activity_id" = 437
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 96
  AND "activity_id" = 104
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 28
  AND "activity_id" = 496
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 90
  AND "activity_id" = 41
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 6
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 17
  AND "activity_id" = 132
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 37
  AND "activity_id" = 394
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 9
  AND "activity_id" = 140
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 54
  AND "activity_id" = 211
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 42
  AND "activity_id" = 148
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 82
  AND "activity_id" = 396
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 17
  AND "activity_id" = 331
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 102
  AND "activity_id" = 44
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 22
  AND "activity_id" = 164
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 59
  AND "activity_id" = 100
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 91
  AND "activity_id" = 420
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 27
  AND "activity_id" = 492
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 14
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 68
  AND "activity_id" = 376
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 28
  AND "activity_id" = 407
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 30
  AND "activity_id" = 6
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 22
  AND "activity_id" = 265
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 68
  AND "activity_id" = 159
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 65
  AND "activity_id" = 175
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 65
  AND "activity_id" = 70
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 25
  AND "activity_id" = 416
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 101
  AND "activity_id" = 177
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 53
  AND "activity_id" = 110
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 17
  AND "activity_id" = 354
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 34
  AND "activity_id" = 311
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 27
  AND "activity_id" = 59
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 25
  AND "activity_id" = 328
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 39
  AND "activity_id" = 396
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 71
  AND "activity_id" = 378
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 67
  AND "activity_id" = 298
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 77
  AND "activity_id" = 457
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 106
  AND "activity_id" = 248
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 93
  AND "activity_id" = 414
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 63
  AND "activity_id" = 72
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 35
  AND "activity_id" = 486
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 102
  AND "activity_id" = 22
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 36
  AND "activity_id" = 269
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 96
  AND "activity_id" = 32
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 34
  AND "activity_id" = 173
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 68
  AND "activity_id" = 439
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 13
  AND "activity_id" = 449
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 52
  AND "activity_id" = 69
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 20
  AND "activity_id" = 30
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 87
  AND "activity_id" = 449
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 103
  AND "activity_id" = 11
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 30
  AND "activity_id" = 406
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 48
  AND "activity_id" = 69
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 17
  AND "activity_id" = 40
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 25
  AND "activity_id" = 454
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 86
  AND "activity_id" = 455
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 12
  AND "activity_id" = 125
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 12
  AND "activity_id" = 443
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 64
  AND "activity_id" = 162
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 84
  AND "activity_id" = 462
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 94
  AND "activity_id" = 49
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 88
  AND "activity_id" = 464
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 37
  AND "activity_id" = 449
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 17
  AND "activity_id" = 2
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 21
  AND "activity_id" = 239
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 105
  AND "activity_id" = 396
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 19
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 65
  AND "activity_id" = 298
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 77
  AND "activity_id" = 288
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 28
  AND "activity_id" = 451
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 101
  AND "activity_id" = 387
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 89
  AND "activity_id" = 24
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 46
  AND "activity_id" = 230
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 48
  AND "activity_id" = 420
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 61
  AND "activity_id" = 234
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 48
  AND "activity_id" = 485
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 93
  AND "activity_id" = 381
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 105
  AND "activity_id" = 259
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 96
  AND "activity_id" = 2
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 104
  AND "activity_id" = 112
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 49
  AND "activity_id" = 412
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 107
  AND "activity_id" = 71
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 7
  AND "activity_id" = 462
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 21
  AND "activity_id" = 317
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 73
  AND "activity_id" = 40
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 46
  AND "activity_id" = 236
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 91
  AND "activity_id" = 41
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 26
  AND "activity_id" = 268
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 85
  AND "activity_id" = 211
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 58
  AND "activity_id" = 367
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 48
  AND "activity_id" = 402
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 94
  AND "activity_id" = 328
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 70
  AND "activity_id" = 155
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 56
  AND "activity_id" = 81
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 104
  AND "activity_id" = 19
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 48
  AND "activity_id" = 143
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 49
  AND "activity_id" = 13
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 22
  AND "activity_id" = 320
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 5
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 86
  AND "activity_id" = 170
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 29
  AND "activity_id" = 282
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 93
  AND "activity_id" = 280
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 41
  AND "activity_id" = 251
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 47
  AND "activity_id" = 266
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 23
  AND "activity_id" = 164
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 88
  AND "activity_id" = 155
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 53
  AND "activity_id" = 459
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 99
  AND "activity_id" = 172
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 80
  AND "activity_id" = 71
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 19
  AND "activity_id" = 29
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 102
  AND "activity_id" = 486
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 83
  AND "activity_id" = 230
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 100
  AND "activity_id" = 294
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 25
  AND "activity_id" = 435
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 20
  AND "activity_id" = 172
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 68
  AND "activity_id" = 125
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 27
  AND "activity_id" = 83
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 57
  AND "activity_id" = 293
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 26
  AND "activity_id" = 3
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 101
  AND "activity_id" = 488
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 28
  AND "activity_id" = 33
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 20
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 78
  AND "activity_id" = 181
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 19
  AND "activity_id" = 2
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 58
  AND "activity_id" = 119
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 94
  AND "activity_id" = 161
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 17
  AND "activity_id" = 195
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 90
  AND "activity_id" = 40
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 50
  AND "activity_id" = 59
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 107
  AND "activity_id" = 136
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 71
  AND "activity_id" = 55
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 88
  AND "activity_id" = 62
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 67
  AND "activity_id" = 442
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 42
  AND "activity_id" = 357
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 14
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 89
  AND "activity_id" = 79
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 50
  AND "activity_id" = 218
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 21
  AND "activity_id" = 135
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 103
  AND "activity_id" = 428
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 70
  AND "activity_id" = 339
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 106
  AND "activity_id" = 97
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 45
  AND "activity_id" = 494
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 84
  AND "activity_id" = 169
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 48
  AND "activity_id" = 124
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 40
  AND "activity_id" = 227
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 87
  AND "activity_id" = 295
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 103
  AND "activity_id" = 326
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 81
  AND "activity_id" = 195
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 54
  AND "activity_id" = 269
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 46
  AND "activity_id" = 301
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 93
  AND "activity_id" = 136
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 31
  AND "activity_id" = 407
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 53
  AND "activity_id" = 386
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 42
  AND "activity_id" = 158
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 45
  AND "activity_id" = 14
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 46
  AND "activity_id" = 95
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 61
  AND "activity_id" = 333
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 51
  AND "activity_id" = 281
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 86
  AND "activity_id" = 274
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 71
  AND "activity_id" = 224
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 33
  AND "activity_id" = 10
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 95
  AND "activity_id" = 32
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 60
  AND "activity_id" = 77
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 70
  AND "activity_id" = 29
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 94
  AND "activity_id" = 43
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 71
  AND "activity_id" = 96
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 81
  AND "activity_id" = 382
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 67
  AND "activity_id" = 393
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 95
  AND "activity_id" = 195
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 81
  AND "activity_id" = 375
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 54
  AND "activity_id" = 497
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 65
  AND "activity_id" = 415
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 60
  AND "activity_id" = 278
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 24
  AND "activity_id" = 280
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 71
  AND "activity_id" = 144
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 27
  AND "activity_id" = 112
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 56
  AND "activity_id" = 233
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 52
  AND "activity_id" = 274
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 47
  AND "activity_id" = 257
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 75
  AND "activity_id" = 359
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 53
  AND "activity_id" = 425
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 61
  AND "activity_id" = 306
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 3
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 12
  AND "activity_id" = 288
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 42
  AND "activity_id" = 69
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 5
  AND "activity_id" = 2
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 87
  AND "activity_id" = 339
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 29
  AND "activity_id" = 507
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 61
  AND "activity_id" = 364
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 86
  AND "activity_id" = 399
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 3
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 76
  AND "activity_id" = 4
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 82
  AND "activity_id" = 150
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 65
  AND "activity_id" = 158
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 58
  AND "activity_id" = 340
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 49
  AND "activity_id" = 326
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 84
  AND "activity_id" = 398
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 54
  AND "activity_id" = 51
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 38
  AND "activity_id" = 212
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 86
  AND "activity_id" = 481
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 65
  AND "activity_id" = 406
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 56
  AND "activity_id" = 390
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 5
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 78
  AND "activity_id" = 5
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 75
  AND "activity_id" = 56
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 78
  AND "activity_id" = 91
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 76
  AND "activity_id" = 93
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 61
  AND "activity_id" = 156
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 45
  AND "activity_id" = 166
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 97
  AND "activity_id" = 431
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 52
  AND "activity_id" = 120
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 38
  AND "activity_id" = 263
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 21
  AND "activity_id" = 310
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 14
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 54
  AND "activity_id" = 331
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 107
  AND "activity_id" = 357
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 40
  AND "activity_id" = 49
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 19
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 34
  AND "activity_id" = 458
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 44
  AND "activity_id" = 195
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 59
  AND "activity_id" = 507
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 10
  AND "activity_id" = 2
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 49
  AND "activity_id" = 510
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 50
  AND "activity_id" = 57
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 54
  AND "activity_id" = 355
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 42
  AND "activity_id" = 392
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 50
  AND "activity_id" = 420
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 56
  AND "activity_id" = 87
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 105
  AND "activity_id" = 82
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 71
  AND "activity_id" = 386
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 14
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 98
  AND "activity_id" = 418
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 52
  AND "activity_id" = 112
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 10
  AND "activity_id" = 67
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 66
  AND "activity_id" = 91
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 48
  AND "activity_id" = 451
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 45
  AND "activity_id" = 63
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 6
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 28
  AND "activity_id" = 319
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 59
  AND "activity_id" = 357
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 80
  AND "activity_id" = 86
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 102
  AND "activity_id" = 233
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 102
  AND "activity_id" = 29
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 96
  AND "activity_id" = 364
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 67
  AND "activity_id" = 259
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 87
  AND "activity_id" = 416
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 17
  AND "activity_id" = 507
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 6
  AND "activity_id" = 157
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 35
  AND "activity_id" = 483
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 62
  AND "activity_id" = 277
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 35
  AND "activity_id" = 3
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 27
  AND "activity_id" = 7
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 91
  AND "activity_id" = 337
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 97
  AND "activity_id" = 334
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 43
  AND "activity_id" = 167
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 101
  AND "activity_id" = 136
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 82
  AND "activity_id" = 205
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 51
  AND "activity_id" = 227
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 91
  AND "activity_id" = 257
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 38
  AND "activity_id" = 170
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 33
  AND "activity_id" = 374
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 70
  AND "activity_id" = 100
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 87
  AND "activity_id" = 3
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 26
  AND "activity_id" = 63
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 40
  AND "activity_id" = 131
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 15
  AND "activity_id" = 118
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 73
  AND "activity_id" = 65
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 87
  AND "activity_id" = 168
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 59
  AND "activity_id" = 290
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 106
  AND "activity_id" = 284
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 25
  AND "activity_id" = 317
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 56
  AND "activity_id" = 229
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 6
  AND "activity_id" = 350
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 91
  AND "activity_id" = 56
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 62
  AND "activity_id" = 369
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 7
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 64
  AND "activity_id" = 37
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 44
  AND "activity_id" = 272
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 66
  AND "activity_id" = 254
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 50
  AND "activity_id" = 81
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 25
  AND "activity_id" = 101
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 5
  AND "activity_id" = 2
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 38
  AND "activity_id" = 281
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 69
  AND "activity_id" = 455
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 72
  AND "activity_id" = 88
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 42
  AND "activity_id" = 230
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 72
  AND "activity_id" = 207
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 27
  AND "activity_id" = 169
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 43
  AND "activity_id" = 308
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 34
  AND "activity_id" = 322
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 57
  AND "activity_id" = 177
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 7
  AND "activity_id" = 406
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 67
  AND "activity_id" = 505
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 84
  AND "activity_id" = 256
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 90
  AND "activity_id" = 225
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 5
  AND "activity_id" = 2
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 59
  AND "activity_id" = 54
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 66
  AND "activity_id" = 217
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 101
  AND "activity_id" = 391
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 10
  AND "activity_id" = 201
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 23
  AND "activity_id" = 23
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 72
  AND "activity_id" = 156
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 28
  AND "activity_id" = 207
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 38
  AND "activity_id" = 107
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 65
  AND "activity_id" = 488
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 16
  AND "activity_id" = 2
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 73
  AND "activity_id" = 259
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 73
  AND "activity_id" = 296
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 59
  AND "activity_id" = 4
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 101
  AND "activity_id" = 164
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 82
  AND "activity_id" = 305
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 19
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 54
  AND "activity_id" = 282
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 10
  AND "activity_id" = 244
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 92
  AND "activity_id" = 222
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 47
  AND "activity_id" = 145
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 65
  AND "activity_id" = 104
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 86
  AND "activity_id" = 5
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 42
  AND "activity_id" = 198
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 34
  AND "activity_id" = 319
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 63
  AND "activity_id" = 256
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 93
  AND "activity_id" = 492
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 71
  AND "activity_id" = 426
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 12
  AND "activity_id" = 63
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 31
  AND "activity_id" = 135
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 65
  AND "activity_id" = 27
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 66
  AND "activity_id" = 331
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 62
  AND "activity_id" = 347
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 25
  AND "activity_id" = 442
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 9
  AND "activity_id" = 504
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 90
  AND "activity_id" = 243
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 54
  AND "activity_id" = 217
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 84
  AND "activity_id" = 418
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 41
  AND "activity_id" = 181
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 92
  AND "activity_id" = 408
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 98
  AND "activity_id" = 93
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 39
  AND "activity_id" = 493
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 79
  AND "activity_id" = 472
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 17
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 23
  AND "activity_id" = 113
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 12
  AND "activity_id" = 357
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 46
  AND "activity_id" = 19
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 6
  AND "activity_id" = 402
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 100
  AND "activity_id" = 58
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 44
  AND "activity_id" = 164
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 59
  AND "activity_id" = 329
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 87
  AND "activity_id" = 334
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 94
  AND "activity_id" = 89
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 101
  AND "activity_id" = 88
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 52
  AND "activity_id" = 352
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 78
  AND "activity_id" = 463
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 80
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 80
  AND "activity_id" = 12
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 73
  AND "activity_id" = 243
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 97
  AND "activity_id" = 270
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 59
  AND "activity_id" = 457
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 44
  AND "activity_id" = 437
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 6
  AND "activity_id" = 118
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 97
  AND "activity_id" = 59
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 24
  AND "activity_id" = 61
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 70
  AND "activity_id" = 391
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 9
  AND "activity_id" = 119
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 65
  AND "activity_id" = 342
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 77
  AND "activity_id" = 16
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 12
  AND "activity_id" = 377
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 83
  AND "activity_id" = 61
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 20
  AND "activity_id" = 377
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 12
  AND "activity_id" = 63
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 95
  AND "activity_id" = 477
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 101
  AND "activity_id" = 30
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 97
  AND "activity_id" = 211
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 59
  AND "activity_id" = 433
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 87
  AND "activity_id" = 383
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 101
  AND "activity_id" = 97
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 78
  AND "activity_id" = 41
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 29
  AND "activity_id" = 229
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 52
  AND "activity_id" = 294
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 33
  AND "activity_id" = 462
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 97
  AND "activity_id" = 79
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 104
  AND "activity_id" = 330
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 78
  AND "activity_id" = 375
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 89
  AND "activity_id" = 268
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 39
  AND "activity_id" = 164
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 66
  AND "activity_id" = 382
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 81
  AND "activity_id" = 383
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 52
  AND "activity_id" = 74
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 19
  AND "activity_id" = 92
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 76
  AND "activity_id" = 4
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 16
  AND "activity_id" = 419
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 64
  AND "activity_id" = 230
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 59
  AND "activity_id" = 410
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 13
  AND "activity_id" = 340
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 78
  AND "activity_id" = 124
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 31
  AND "activity_id" = 180
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 44
  AND "activity_id" = 304
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 76
  AND "activity_id" = 468
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 20
  AND "activity_id" = 6
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 97
  AND "activity_id" = 478
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 82
  AND "activity_id" = 26
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 48
  AND "activity_id" = 400
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 8
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 30
  AND "activity_id" = 236
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 37
  AND "activity_id" = 60
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 83
  AND "activity_id" = 288
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 105
  AND "activity_id" = 47
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 82
  AND "activity_id" = 450
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 85
  AND "activity_id" = 206
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 24
  AND "activity_id" = 233
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 53
  AND "activity_id" = 481
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 76
  AND "activity_id" = 404
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 65
  AND "activity_id" = 340
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 14
  AND "activity_id" = 2
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 27
  AND "activity_id" = 466
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 63
  AND "activity_id" = 430
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 104
  AND "activity_id" = 231
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 34
  AND "activity_id" = 78
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 62
  AND "activity_id" = 59
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 31
  AND "activity_id" = 116
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 98
  AND "activity_id" = 385
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 38
  AND "activity_id" = 285
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 76
  AND "activity_id" = 271
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 19
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 13
  AND "activity_id" = 337
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 38
  AND "activity_id" = 485
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 53
  AND "activity_id" = 29
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 81
  AND "activity_id" = 153
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 50
  AND "activity_id" = 499
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 14
  AND "activity_id" = 2
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 105
  AND "activity_id" = 78
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 60
  AND "activity_id" = 340
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 65
  AND "activity_id" = 502
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 97
  AND "activity_id" = 240
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 6
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 26
  AND "activity_id" = 500
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 48
  AND "activity_id" = 239
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 47
  AND "activity_id" = 14
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 60
  AND "activity_id" = 12
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 28
  AND "activity_id" = 52
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 13
  AND "activity_id" = 113
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 92
  AND "activity_id" = 195
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 3
  AND "activity_id" = 7
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 61
  AND "activity_id" = 219
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 87
  AND "activity_id" = 376
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 85
  AND "activity_id" = 359
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 27
  AND "activity_id" = 317
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 50
  AND "activity_id" = 81
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 55
  AND "activity_id" = 358
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 63
  AND "activity_id" = 94
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 49
  AND "activity_id" = 496
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 54
  AND "activity_id" = 398
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 94
  AND "activity_id" = 303
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 102
  AND "activity_id" = 309
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 106
  AND "activity_id" = 320
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 7
  AND "activity_id" = 4
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 20
  AND "activity_id" = 140
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 88
  AND "activity_id" = 50
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 60
  AND "activity_id" = 304
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 74
  AND "activity_id" = 311
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 57
  AND "activity_id" = 422
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 68
  AND "activity_id" = 493
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 16
  AND "activity_id" = 263
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 85
  AND "activity_id" = 346
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 105
  AND "activity_id" = 224
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 33
  AND "activity_id" = 412
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 82
  AND "activity_id" = 180
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 39
  AND "activity_id" = 510
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 26
  AND "activity_id" = 172
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 75
  AND "activity_id" = 263
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 97
  AND "activity_id" = 127
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 73
  AND "activity_id" = 144
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 33
  AND "activity_id" = 155
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 45
  AND "activity_id" = 43
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 4
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 19
  AND "activity_id" = 476
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 39
  AND "activity_id" = 30
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 85
  AND "activity_id" = 81
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 60
  AND "activity_id" = 284
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 7
  AND "activity_id" = 363
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 51
  AND "activity_id" = 338
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 77
  AND "activity_id" = 43
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 50
  AND "activity_id" = 426
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 21
  AND "activity_id" = 352
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 41
  AND "activity_id" = 65
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 55
  AND "activity_id" = 23
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 86
  AND "activity_id" = 310
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 83
  AND "activity_id" = 25
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 40
  AND "activity_id" = 153
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 49
  AND "activity_id" = 106
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 99
  AND "activity_id" = 433
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 92
  AND "activity_id" = 93
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 6
  AND "activity_id" = 2
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 25
  AND "activity_id" = 481
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 42
  AND "activity_id" = 341
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 44
  AND "activity_id" = 280
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 20
  AND "activity_id" = 34
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 55
  AND "activity_id" = 42
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 63
  AND "activity_id" = 307
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 8
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 40
  AND "activity_id" = 316
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 50
  AND "activity_id" = 198
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 74
  AND "activity_id" = 496
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 36
  AND "activity_id" = 53
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 69
  AND "activity_id" = 259
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 20
  AND "activity_id" = 399
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 30
  AND "activity_id" = 185
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 52
  AND "activity_id" = 230
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 77
  AND "activity_id" = 164
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 28
  AND "activity_id" = 109
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 21
  AND "activity_id" = 481
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 100
  AND "activity_id" = 483
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 95
  AND "activity_id" = 355
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 32
  AND "activity_id" = 4
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 25
  AND "activity_id" = 108
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 100
  AND "activity_id" = 63
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 103
  AND "activity_id" = 507
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 84
  AND "activity_id" = 309
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 24
  AND "activity_id" = 417
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 78
  AND "activity_id" = 487
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 66
  AND "activity_id" = 207
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 22
  AND "activity_id" = 429
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 72
  AND "activity_id" = 168
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 71
  AND "activity_id" = 169
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 67
  AND "activity_id" = 487
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 100
  AND "activity_id" = 401
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 63
  AND "activity_id" = 391
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 31
  AND "activity_id" = 192
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 29
  AND "activity_id" = 319
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 94
  AND "activity_id" = 53
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 71
  AND "activity_id" = 445
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 56
  AND "activity_id" = 16
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 45
  AND "activity_id" = 458
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 82
  AND "activity_id" = 56
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 85
  AND "activity_id" = 319
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 36
  AND "activity_id" = 498
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 97
  AND "activity_id" = 178
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 101
  AND "activity_id" = 376
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 72
  AND "activity_id" = 392
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 98
  AND "activity_id" = 420
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 96
  AND "activity_id" = 159
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 14
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 12
  AND "activity_id" = 394
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 60
  AND "activity_id" = 484
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 30
  AND "activity_id" = 505
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 102
  AND "activity_id" = 293
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 38
  AND "activity_id" = 19
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 96
  AND "activity_id" = 437
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 15
  AND "activity_id" = 18
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 59
  AND "activity_id" = 273
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 97
  AND "activity_id" = 383
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 72
  AND "activity_id" = 481
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 104
  AND "activity_id" = 334
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 16
  AND "activity_id" = 309
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 97
  AND "activity_id" = 295
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 33
  AND "activity_id" = 435
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 69
  AND "activity_id" = 367
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 89
  AND "activity_id" = 242
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 16
  AND "activity_id" = 325
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 71
  AND "activity_id" = 246
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 49
  AND "activity_id" = 495
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 22
  AND "activity_id" = 502
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 76
  AND "activity_id" = 25
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 95
  AND "activity_id" = 137
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 52
  AND "activity_id" = 452
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 65
  AND "activity_id" = 221
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 40
  AND "activity_id" = 129
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 65
  AND "activity_id" = 305
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 47
  AND "activity_id" = 88
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 105
  AND "activity_id" = 51
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 42
  AND "activity_id" = 19
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 89
  AND "activity_id" = 109
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 19
  AND "activity_id" = 2
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 17
  AND "activity_id" = 485
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 40
  AND "activity_id" = 99
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 17
  AND "activity_id" = 310
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 28
  AND "activity_id" = 204
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 66
  AND "activity_id" = 452
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 93
  AND "activity_id" = 278
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 17
  AND "activity_id" = 301
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 31
  AND "activity_id" = 509
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 87
  AND "activity_id" = 139
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 75
  AND "activity_id" = 135
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 56
  AND "activity_id" = 448
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 67
  AND "activity_id" = 86
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 91
  AND "activity_id" = 400
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 99
  AND "activity_id" = 499
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 9
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 17
  AND "activity_id" = 110
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 87
  AND "activity_id" = 500
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 87
  AND "activity_id" = 145
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 38
  AND "activity_id" = 452
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 106
  AND "activity_id" = 214
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 46
  AND "activity_id" = 179
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 41
  AND "activity_id" = 319
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 6
  AND "activity_id" = 208
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 31
  AND "activity_id" = 311
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 17
  AND "activity_id" = 349
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 73
  AND "activity_id" = 74
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 64
  AND "activity_id" = 78
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 106
  AND "activity_id" = 248
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 25
  AND "activity_id" = 500
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 88
  AND "activity_id" = 440
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 12
  AND "activity_id" = 390
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 66
  AND "activity_id" = 335
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 85
  AND "activity_id" = 381
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 101
  AND "activity_id" = 205
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 61
  AND "activity_id" = 151
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 47
  AND "activity_id" = 339
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 98
  AND "activity_id" = 5
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 94
  AND "activity_id" = 467
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 72
  AND "activity_id" = 300
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 45
  AND "activity_id" = 462
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 64
  AND "activity_id" = 328
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 75
  AND "activity_id" = 310
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 79
  AND "activity_id" = 480
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 21
  AND "activity_id" = 364
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 34
  AND "activity_id" = 22
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 71
  AND "activity_id" = 323
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 12
  AND "activity_id" = 191
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 55
  AND "activity_id" = 285
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 6
  AND "activity_id" = 493
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 31
  AND "activity_id" = 145
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 62
  AND "activity_id" = 60
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 46
  AND "activity_id" = 418
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 51
  AND "activity_id" = 343
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 55
  AND "activity_id" = 436
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 10
  AND "activity_id" = 2
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 28
  AND "activity_id" = 76
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 63
  AND "activity_id" = 44
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 82
  AND "activity_id" = 397
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 105
  AND "activity_id" = 366
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 105
  AND "activity_id" = 460
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 25
  AND "activity_id" = 274
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 65
  AND "activity_id" = 243
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 36
  AND "activity_id" = 509
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 5
  AND "activity_id" = 2
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 6
  AND "activity_id" = 497
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 10
  AND "activity_id" = 2
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 80
  AND "activity_id" = 211
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 29
  AND "activity_id" = 83
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 12
  AND "activity_id" = 440
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 13
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 41
  AND "activity_id" = 226
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 60
  AND "activity_id" = 367
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 5
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 78
  AND "activity_id" = 335
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 76
  AND "activity_id" = 460
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 27
  AND "activity_id" = 418
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 44
  AND "activity_id" = 486
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 82
  AND "activity_id" = 445
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 77
  AND "activity_id" = 16
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 70
  AND "activity_id" = 405
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 36
  AND "activity_id" = 468
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 105
  AND "activity_id" = 334
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 52
  AND "activity_id" = 428
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 73
  AND "activity_id" = 367
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 10
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 19
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 93
  AND "activity_id" = 68
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 86
  AND "activity_id" = 285
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 87
  AND "activity_id" = 296
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 83
  AND "activity_id" = 63
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 4
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 42
  AND "activity_id" = 296
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 69
  AND "activity_id" = 100
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 53
  AND "activity_id" = 428
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 19
  AND "activity_id" = 32
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 77
  AND "activity_id" = 291
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 19
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 41
  AND "activity_id" = 318
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 19
  AND "activity_id" = 455
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 101
  AND "activity_id" = 378
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 66
  AND "activity_id" = 481
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 54
  AND "activity_id" = 162
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 91
  AND "activity_id" = 121
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 86
  AND "activity_id" = 423
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 85
  AND "activity_id" = 205
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 64
  AND "activity_id" = 492
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 42
  AND "activity_id" = 169
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 96
  AND "activity_id" = 11
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 19
  AND "activity_id" = 2
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 81
  AND "activity_id" = 150
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 61
  AND "activity_id" = 451
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 32
  AND "activity_id" = 386
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 59
  AND "activity_id" = 173
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 17
  AND "activity_id" = 492
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 99
  AND "activity_id" = 237
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 66
  AND "activity_id" = 113
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 46
  AND "activity_id" = 307
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 13
  AND "activity_id" = 489
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 101
  AND "activity_id" = 153
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 19
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 57
  AND "activity_id" = 378
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 93
  AND "activity_id" = 112
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 70
  AND "activity_id" = 147
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 81
  AND "activity_id" = 463
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 21
  AND "activity_id" = 172
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 17
  AND "activity_id" = 485
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 3
WHERE "user_id" = 102
  AND "activity_id" = 154
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 6
  AND "activity_id" = 260
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 72
  AND "activity_id" = 273
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 77
  AND "activity_id" = 473
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 21
  AND "activity_id" = 266
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 34
  AND "activity_id" = 349
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 50
  AND "activity_id" = 263
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 101
  AND "activity_id" = 234
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 34
  AND "activity_id" = 478
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 32
  AND "activity_id" = 364
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 90
  AND "activity_id" = 307
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 14
  AND "activity_id" = 1
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 78
  AND "activity_id" = 296
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 82
  AND "activity_id" = 339
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 89
  AND "activity_id" = 15
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 66
  AND "activity_id" = 201
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 28
  AND "activity_id" = 301
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 74
  AND "activity_id" = 288
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 26
  AND "activity_id" = 466
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 99
  AND "activity_id" = 510
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 50
  AND "activity_id" = 222
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 75
  AND "activity_id" = 47
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 55
  AND "activity_id" = 247
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 81
  AND "activity_id" = 389
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 104
  AND "activity_id" = 3
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 47
  AND "activity_id" = 169
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 47
  AND "activity_id" = 267
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 34
  AND "activity_id" = 227
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 4
WHERE "user_id" = 104
  AND "activity_id" = 157
  AND "deleted_at" IS NULL;

UPDATE "reviews"
SET "rating" = 5
WHERE "user_id" = 80
  AND "activity_id" = 403
  AND "deleted_at" IS NULL;



-- =====================================================
-- CẬP NHẬT LẠI RATING VÀ REVIEW_COUNT CỦA ACTIVITIES
-- =====================================================

UPDATE "activities" a
SET 
  "rating" = (
    SELECT ROUND(AVG(r.rating)::numeric, 2)
    FROM "reviews" r
    WHERE r."activity_id" = a."id"
      AND r."deleted_at" IS NULL
  ),
  "review_count" = (
    SELECT COUNT(*)
    FROM "reviews" r
    WHERE r."activity_id" = a."id"
      AND r."deleted_at" IS NULL
  )
WHERE EXISTS (
  SELECT 1 
  FROM "reviews" r 
  WHERE r."activity_id" = a."id" 
    AND r."deleted_at" IS NULL
);



-- =====================================================
-- KIỂM TRA PHÂN BỐ RATINGS SAU KHI UPDATE
-- =====================================================

SELECT 
  rating,
  COUNT(*) as count,
  ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM "reviews" WHERE "deleted_at" IS NULL), 2) as percentage
FROM "reviews"
WHERE "deleted_at" IS NULL
GROUP BY rating
ORDER BY rating;

