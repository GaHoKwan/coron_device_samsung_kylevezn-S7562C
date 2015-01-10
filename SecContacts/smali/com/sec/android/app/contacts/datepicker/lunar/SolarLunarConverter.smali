.class public final Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;
.super Ljava/lang/Object;
.source "SolarLunarConverter.java"


# static fields
.field static acmDaysInLeapYear_:[I

.field static acmDaysInYear_:[I


# instance fields
.field private day_:I

.field private isLeapMonth_:Z

.field private month_:I

.field private year_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xd

    .line 29
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->acmDaysInYear_:[I

    .line 32
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->acmDaysInLeapYear_:[I

    return-void

    .line 29
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x3bt 0x0t 0x0t 0x0t
        0x5at 0x0t 0x0t 0x0t
        0x78t 0x0t 0x0t 0x0t
        0x97t 0x0t 0x0t 0x0t
        0xb5t 0x0t 0x0t 0x0t
        0xd4t 0x0t 0x0t 0x0t
        0xf3t 0x0t 0x0t 0x0t
        0x11t 0x1t 0x0t 0x0t
        0x30t 0x1t 0x0t 0x0t
        0x4et 0x1t 0x0t 0x0t
        0x6dt 0x1t 0x0t 0x0t
    .end array-data

    .line 32
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0x5bt 0x0t 0x0t 0x0t
        0x79t 0x0t 0x0t 0x0t
        0x98t 0x0t 0x0t 0x0t
        0xb6t 0x0t 0x0t 0x0t
        0xd5t 0x0t 0x0t 0x0t
        0xf4t 0x0t 0x0t 0x0t
        0x12t 0x1t 0x0t 0x0t
        0x31t 0x1t 0x0t 0x0t
        0x4ft 0x1t 0x0t 0x0t
        0x6et 0x1t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private convertLunarToSolar_CHN(IIIZ)V
    .locals 12
    .parameter "y"
    .parameter "m"
    .parameter "d"
    .parameter "isLeapMonth"

    .prologue
    .line 309
    const/16 v9, 0x759

    if-lt p1, v9, :cond_0

    const/16 v9, 0x834

    if-gt p1, v9, :cond_0

    if-ltz p2, :cond_0

    const/16 v9, 0xb

    if-gt p2, v9, :cond_0

    const/4 v9, 0x1

    if-lt p3, v9, :cond_0

    const/16 v9, 0x1e

    if-le p3, v9, :cond_1

    .line 312
    :cond_0
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "The date "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is out of range."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 316
    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->getAccumulatedDays(I)[I

    move-result-object v1

    .line 317
    .local v1, days:[I
    add-int/lit16 v3, p1, -0x759

    .line 318
    .local v3, indexOfYear:I
    mul-int/lit8 v8, v3, 0xe

    .line 319
    .local v8, startIndexOfYear:I
    sget-object v9, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarTables;->accumulatedLunarDays_CHN:[I

    aget v0, v9, v3

    .line 320
    .local v0, countOfDays:I
    sget-object v9, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarTables;->lunar_CHN:[B

    add-int/lit8 v10, v8, 0xd

    aget-byte v5, v9, v10

    .line 323
    .local v5, leapMonth:I
    const/16 v9, 0x7f

    if-ne v5, v9, :cond_2

    const/16 v7, 0xc

    .line 324
    .local v7, numOfMonth:I
    :goto_0
    const/16 v9, 0xc

    if-ne v7, v9, :cond_3

    .line 325
    const/4 v4, 0x0

    .local v4, j:I
    :goto_1
    if-ge v4, p2, :cond_6

    .line 326
    sget-object v9, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarTables;->lunar_CHN:[B

    add-int v10, v8, v4

    aget-byte v9, v9, v10

    add-int/2addr v0, v9

    .line 325
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 323
    .end local v4           #j:I
    .end local v7           #numOfMonth:I
    :cond_2
    const/16 v7, 0xd

    goto :goto_0

    .line 329
    .restart local v7       #numOfMonth:I
    :cond_3
    if-eqz p4, :cond_4

    add-int/lit8 v9, p2, 0x1

    if-ne v9, v5, :cond_4

    .line 330
    const/4 v4, 0x0

    .restart local v4       #j:I
    :goto_2
    if-ge v4, v5, :cond_6

    .line 331
    sget-object v9, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarTables;->lunar_CHN:[B

    add-int v10, v8, v4

    aget-byte v9, v9, v10

    add-int/2addr v0, v9

    .line 330
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 335
    .end local v4           #j:I
    :cond_4
    add-int/lit8 v9, p2, 0x1

    if-le v9, v5, :cond_5

    .line 336
    add-int/lit8 v6, p2, 0x1

    .line 340
    .local v6, nM:I
    :goto_3
    const/4 v4, 0x0

    .restart local v4       #j:I
    :goto_4
    if-ge v4, v6, :cond_6

    .line 341
    sget-object v9, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarTables;->lunar_CHN:[B

    add-int v10, v8, v4

    aget-byte v9, v9, v10

    add-int/2addr v0, v9

    .line 340
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 338
    .end local v4           #j:I
    .end local v6           #nM:I
    :cond_5
    move v6, p2

    .restart local v6       #nM:I
    goto :goto_3

    .line 347
    .end local v6           #nM:I
    .restart local v4       #j:I
    :cond_6
    add-int v9, v0, p3

    add-int/lit8 v0, v9, -0x1

    .line 349
    const/16 v9, 0x759

    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->year_:I

    .line 350
    const/4 v9, 0x0

    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    .line 351
    const/16 v9, 0x1e

    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    .line 352
    const/16 v9, 0x14f

    if-le v0, v9, :cond_a

    .line 354
    const/16 v9, 0x75a

    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->year_:I

    .line 355
    const/4 v9, 0x0

    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    .line 356
    const/4 v9, 0x1

    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    .line 358
    add-int/lit16 v0, v0, -0x150

    .line 361
    const/16 v2, 0x16d

    .line 362
    .local v2, daysOfYear:I
    :goto_5
    if-lt v0, v2, :cond_8

    .line 363
    sub-int/2addr v0, v2

    .line 364
    iget v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->year_:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->year_:I

    .line 365
    iget v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->year_:I

    invoke-direct {p0, v9}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->isLeapYear(I)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 366
    const/16 v2, 0x16e

    goto :goto_5

    .line 368
    :cond_7
    const/16 v2, 0x16d

    goto :goto_5

    .line 372
    :cond_8
    :goto_6
    iget v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    add-int/lit8 v9, v9, 0x1

    aget v9, v1, v9

    if-lt v0, v9, :cond_9

    .line 373
    iget v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    goto :goto_6

    .line 375
    :cond_9
    iget v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    aget v9, v1, v9

    sub-int/2addr v0, v9

    .line 378
    iget v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    add-int/2addr v9, v0

    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    .line 395
    .end local v2           #daysOfYear:I
    :goto_7
    return-void

    .line 380
    :cond_a
    const/4 v9, 0x1

    if-le v0, v9, :cond_c

    .line 381
    const/4 v9, 0x1

    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    .line 382
    const/4 v9, 0x1

    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    .line 383
    add-int/lit8 v0, v0, -0x2

    .line 384
    :goto_8
    iget v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    add-int/lit8 v9, v9, 0x1

    aget v9, v1, v9

    if-lt v0, v9, :cond_b

    .line 385
    iget v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    goto :goto_8

    .line 387
    :cond_b
    iget v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    aget v9, v1, v9

    sub-int/2addr v0, v9

    .line 390
    iget v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    add-int/2addr v9, v0

    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    goto :goto_7

    .line 392
    :cond_c
    iget v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    add-int/2addr v9, v0

    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    goto :goto_7
.end method

.method private convertSolarToLunar_CHN(III)V
    .locals 12
    .parameter "y"
    .parameter "m"
    .parameter "d"

    .prologue
    const/16 v11, 0x76c

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 249
    const v6, 0xa7a5e

    .line 251
    .local v6, totalDaysTo18810130:I
    iput-boolean v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->isLeapMonth_:Z

    .line 253
    const/16 v7, 0x759

    if-lt p1, v7, :cond_0

    const/16 v7, 0x834

    if-gt p1, v7, :cond_0

    if-ltz p2, :cond_0

    const/16 v7, 0xb

    if-gt p2, v7, :cond_0

    if-lt p3, v10, :cond_0

    const/16 v7, 0x1f

    if-le p3, v7, :cond_1

    .line 256
    :cond_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The date "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is out of range."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 261
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->getTotalDaysTo(I)I

    move-result v7

    add-int/2addr v7, p3

    const v8, 0xa7a5e

    sub-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    .line 262
    iget v7, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->getAccumulatedDays(I)[I

    move-result-object v8

    aget v8, v8, p2

    add-int/2addr v7, v8

    iput v7, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    .line 266
    const/4 v0, 0x1

    .local v0, indexOfYear:I
    :goto_0
    const/16 v7, 0xdd

    if-ge v0, v7, :cond_2

    .line 267
    iget v7, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    sget-object v8, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarTables;->accumulatedLunarDays_CHN:[I

    aget v8, v8, v0

    if-gt v7, v8, :cond_5

    .line 271
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 272
    mul-int/lit8 v5, v0, 0xe

    .line 273
    .local v5, startIndexOfYear:I
    add-int/lit16 v7, v0, 0x759

    iput v7, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->year_:I

    .line 276
    iget v7, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    sget-object v8, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarTables;->accumulatedLunarDays_CHN:[I

    aget v8, v8, v0

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    .line 277
    sget-object v7, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarTables;->lunar_CHN:[B

    add-int/lit8 v8, v5, 0xd

    aget-byte v2, v7, v8

    .line 280
    .local v2, leapMonth:I
    const/16 v7, 0x7f

    if-ne v2, v7, :cond_6

    const/16 v4, 0xc

    .line 281
    .local v4, numOfMonth:I
    :goto_1
    const/4 v7, -0x1

    iput v7, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    .line 282
    const/4 v1, 0x0

    .local v1, j:I
    :goto_2
    if-ge v1, v4, :cond_3

    .line 283
    sget-object v7, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarTables;->lunar_CHN:[B

    add-int v8, v5, v1

    aget-byte v3, v7, v8

    .line 284
    .local v3, m1:I
    if-ne v2, v1, :cond_7

    .line 285
    iput-boolean v10, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->isLeapMonth_:Z

    .line 291
    :goto_3
    iget v7, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    if-gt v7, v3, :cond_8

    .line 297
    .end local v3           #m1:I
    :cond_3
    iget v7, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->year_:I

    if-ge v7, v11, :cond_4

    .line 298
    iput v11, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->year_:I

    .line 299
    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    .line 300
    iput v10, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    .line 302
    :cond_4
    return-void

    .line 266
    .end local v1           #j:I
    .end local v2           #leapMonth:I
    .end local v4           #numOfMonth:I
    .end local v5           #startIndexOfYear:I
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 280
    .restart local v2       #leapMonth:I
    .restart local v5       #startIndexOfYear:I
    :cond_6
    const/16 v4, 0xd

    goto :goto_1

    .line 287
    .restart local v1       #j:I
    .restart local v3       #m1:I
    .restart local v4       #numOfMonth:I
    :cond_7
    iget v7, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    .line 288
    iput-boolean v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->isLeapMonth_:Z

    goto :goto_3

    .line 294
    :cond_8
    iget v7, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    sub-int/2addr v7, v3

    iput v7, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    .line 282
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private getAccumulatedDays(I)[I
    .locals 1
    .parameter "year"

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    sget-object v0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->acmDaysInLeapYear_:[I

    .line 81
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->acmDaysInYear_:[I

    goto :goto_0
.end method

.method public static getWeekday(III)I
    .locals 2
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    .line 398
    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 399
    add-int/lit8 p1, p1, 0xc

    .line 400
    add-int/lit8 p0, p0, -0x1

    .line 403
    :cond_0
    mul-int/lit8 v0, p1, 0xd

    add-int/lit8 v0, v0, -0xe

    div-int/lit8 v0, v0, 0x5

    add-int/2addr v0, p2

    add-int/2addr v0, p0

    div-int/lit8 v1, p0, 0x4

    add-int/2addr v0, v1

    div-int/lit8 v1, p0, 0x64

    sub-int/2addr v0, v1

    div-int/lit16 v1, p0, 0x190

    add-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x7

    return v0
.end method

.method private isLeapYear(I)Z
    .locals 2
    .parameter "y"

    .prologue
    const/4 v0, 0x1

    .line 71
    rem-int/lit8 v1, p1, 0x4

    if-gtz v1, :cond_0

    rem-int/lit8 v1, p1, 0x64

    if-ge v1, v0, :cond_1

    rem-int/lit16 v1, p1, 0x190

    if-lez v1, :cond_1

    .line 72
    :cond_0
    const/4 v0, 0x0

    .line 74
    :cond_1
    return v0
.end method


# virtual methods
.method public convertLunarToSolar(IIIZ)V
    .locals 12
    .parameter "y"
    .parameter "m"
    .parameter "d"
    .parameter "isLeapMonth"

    .prologue
    .line 151
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/contacts/util/LoadCscFeatureUtils;->isChineseLunarCalendar()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 152
    invoke-direct/range {p0 .. p4}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->convertLunarToSolar_CHN(IIIZ)V

    .line 242
    :goto_0
    return-void

    .line 156
    :cond_0
    const/16 v9, 0x759

    if-lt p1, v9, :cond_1

    const/16 v9, 0x834

    if-gt p1, v9, :cond_1

    if-ltz p2, :cond_1

    const/16 v9, 0xb

    if-gt p2, v9, :cond_1

    const/4 v9, 0x1

    if-lt p3, v9, :cond_1

    const/16 v9, 0x1e

    if-le p3, v9, :cond_2

    .line 159
    :cond_1
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "The date "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is out of range."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 163
    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->getAccumulatedDays(I)[I

    move-result-object v1

    .line 164
    .local v1, days:[I
    add-int/lit16 v3, p1, -0x759

    .line 165
    .local v3, indexOfYear:I
    mul-int/lit8 v8, v3, 0xe

    .line 166
    .local v8, startIndexOfYear:I
    sget-object v9, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarTables;->accumulatedLunarDays:[I

    aget v0, v9, v3

    .line 167
    .local v0, countOfDays:I
    sget-object v9, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarTables;->lunar:[B

    add-int/lit8 v10, v8, 0xd

    aget-byte v5, v9, v10

    .line 170
    .local v5, leapMonth:I
    const/16 v9, 0x7f

    if-ne v5, v9, :cond_3

    const/16 v7, 0xc

    .line 171
    .local v7, numOfMonth:I
    :goto_1
    const/16 v9, 0xc

    if-ne v7, v9, :cond_4

    .line 172
    const/4 v4, 0x0

    .local v4, j:I
    :goto_2
    if-ge v4, p2, :cond_7

    .line 173
    sget-object v9, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarTables;->lunar:[B

    add-int v10, v8, v4

    aget-byte v9, v9, v10

    add-int/2addr v0, v9

    .line 172
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 170
    .end local v4           #j:I
    .end local v7           #numOfMonth:I
    :cond_3
    const/16 v7, 0xd

    goto :goto_1

    .line 176
    .restart local v7       #numOfMonth:I
    :cond_4
    if-eqz p4, :cond_5

    add-int/lit8 v9, p2, 0x1

    if-ne v9, v5, :cond_5

    .line 177
    const/4 v4, 0x0

    .restart local v4       #j:I
    :goto_3
    if-ge v4, v5, :cond_7

    .line 178
    sget-object v9, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarTables;->lunar:[B

    add-int v10, v8, v4

    aget-byte v9, v9, v10

    add-int/2addr v0, v9

    .line 177
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 182
    .end local v4           #j:I
    :cond_5
    add-int/lit8 v9, p2, 0x1

    if-le v9, v5, :cond_6

    .line 183
    add-int/lit8 v6, p2, 0x1

    .line 187
    .local v6, nM:I
    :goto_4
    const/4 v4, 0x0

    .restart local v4       #j:I
    :goto_5
    if-ge v4, v6, :cond_7

    .line 188
    sget-object v9, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarTables;->lunar:[B

    add-int v10, v8, v4

    aget-byte v9, v9, v10

    add-int/2addr v0, v9

    .line 187
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 185
    .end local v4           #j:I
    .end local v6           #nM:I
    :cond_6
    move v6, p2

    .restart local v6       #nM:I
    goto :goto_4

    .line 194
    .end local v6           #nM:I
    .restart local v4       #j:I
    :cond_7
    add-int v9, v0, p3

    add-int/lit8 v0, v9, -0x1

    .line 196
    const/16 v9, 0x759

    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->year_:I

    .line 197
    const/4 v9, 0x0

    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    .line 198
    const/16 v9, 0x1e

    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    .line 199
    const/16 v9, 0x14f

    if-le v0, v9, :cond_b

    .line 201
    const/16 v9, 0x75a

    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->year_:I

    .line 202
    const/4 v9, 0x0

    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    .line 203
    const/4 v9, 0x1

    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    .line 205
    add-int/lit16 v0, v0, -0x150

    .line 208
    const/16 v2, 0x16d

    .line 209
    .local v2, daysOfYear:I
    :goto_6
    if-lt v0, v2, :cond_9

    .line 210
    sub-int/2addr v0, v2

    .line 211
    iget v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->year_:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->year_:I

    .line 212
    iget v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->year_:I

    invoke-direct {p0, v9}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->isLeapYear(I)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 213
    const/16 v2, 0x16e

    goto :goto_6

    .line 215
    :cond_8
    const/16 v2, 0x16d

    goto :goto_6

    .line 219
    :cond_9
    :goto_7
    iget v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    add-int/lit8 v9, v9, 0x1

    aget v9, v1, v9

    if-lt v0, v9, :cond_a

    .line 220
    iget v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    goto :goto_7

    .line 222
    :cond_a
    iget v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    aget v9, v1, v9

    sub-int/2addr v0, v9

    .line 225
    iget v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    add-int/2addr v9, v0

    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    goto/16 :goto_0

    .line 227
    .end local v2           #daysOfYear:I
    :cond_b
    const/4 v9, 0x1

    if-le v0, v9, :cond_d

    .line 228
    const/4 v9, 0x1

    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    .line 229
    const/4 v9, 0x1

    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    .line 230
    add-int/lit8 v0, v0, -0x2

    .line 231
    :goto_8
    iget v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    add-int/lit8 v9, v9, 0x1

    aget v9, v1, v9

    if-lt v0, v9, :cond_c

    .line 232
    iget v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    goto :goto_8

    .line 234
    :cond_c
    iget v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    aget v9, v1, v9

    sub-int/2addr v0, v9

    .line 237
    iget v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    add-int/2addr v9, v0

    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    goto/16 :goto_0

    .line 239
    :cond_d
    iget v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    add-int/2addr v9, v0

    iput v9, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    goto/16 :goto_0
.end method

.method public convertSolarToLunar(III)V
    .locals 11
    .parameter "y"
    .parameter "m"
    .parameter "d"

    .prologue
    .line 85
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/contacts/util/LoadCscFeatureUtils;->isChineseLunarCalendar()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 87
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->convertSolarToLunar_CHN(III)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 94
    .end local v0           #ex:Ljava/lang/IllegalArgumentException;
    :cond_1
    const v7, 0xa7a5e

    .line 96
    .local v7, totalDaysTo18810130:I
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->isLeapMonth_:Z

    .line 98
    const/16 v8, 0x759

    if-lt p1, v8, :cond_2

    const/16 v8, 0x834

    if-gt p1, v8, :cond_2

    if-ltz p2, :cond_2

    const/16 v8, 0xb

    if-gt p2, v8, :cond_2

    const/4 v8, 0x1

    if-lt p3, v8, :cond_2

    const/16 v8, 0x1f

    if-le p3, v8, :cond_3

    .line 101
    :cond_2
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "The date "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is out of range."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 106
    :cond_3
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->getTotalDaysTo(I)I

    move-result v8

    add-int/2addr v8, p3

    const v9, 0xa7a5e

    sub-int/2addr v8, v9

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    .line 107
    iget v8, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->getAccumulatedDays(I)[I

    move-result-object v9

    aget v9, v9, p2

    add-int/2addr v8, v9

    iput v8, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    .line 111
    const/4 v1, 0x1

    .local v1, indexOfYear:I
    :goto_1
    const/16 v8, 0xdd

    if-ge v1, v8, :cond_4

    .line 112
    iget v8, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    sget-object v9, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarTables;->accumulatedLunarDays:[I

    aget v9, v9, v1

    if-gt v8, v9, :cond_6

    .line 116
    :cond_4
    add-int/lit8 v1, v1, -0x1

    .line 117
    mul-int/lit8 v6, v1, 0xe

    .line 118
    .local v6, startIndexOfYear:I
    add-int/lit16 v8, v1, 0x759

    iput v8, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->year_:I

    .line 121
    iget v8, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    sget-object v9, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarTables;->accumulatedLunarDays:[I

    aget v9, v9, v1

    sub-int/2addr v8, v9

    iput v8, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    .line 122
    sget-object v8, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarTables;->lunar:[B

    add-int/lit8 v9, v6, 0xd

    aget-byte v3, v8, v9

    .line 125
    .local v3, leapMonth:I
    const/16 v8, 0x7f

    if-ne v3, v8, :cond_7

    const/16 v5, 0xc

    .line 126
    .local v5, numOfMonth:I
    :goto_2
    const/4 v8, -0x1

    iput v8, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    .line 127
    const/4 v2, 0x0

    .local v2, j:I
    :goto_3
    if-ge v2, v5, :cond_5

    .line 128
    sget-object v8, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarTables;->lunar:[B

    add-int v9, v6, v2

    aget-byte v4, v8, v9

    .line 129
    .local v4, m1:I
    if-ne v3, v2, :cond_8

    .line 130
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->isLeapMonth_:Z

    .line 136
    :goto_4
    iget v8, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    if-gt v8, v4, :cond_9

    .line 142
    .end local v4           #m1:I
    :cond_5
    iget v8, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->year_:I

    const/16 v9, 0x76c

    if-ge v8, v9, :cond_0

    .line 143
    const/16 v8, 0x76c

    iput v8, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->year_:I

    .line 144
    const/4 v8, 0x0

    iput v8, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    .line 145
    const/4 v8, 0x1

    iput v8, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    goto/16 :goto_0

    .line 111
    .end local v2           #j:I
    .end local v3           #leapMonth:I
    .end local v5           #numOfMonth:I
    .end local v6           #startIndexOfYear:I
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 125
    .restart local v3       #leapMonth:I
    .restart local v6       #startIndexOfYear:I
    :cond_7
    const/16 v5, 0xd

    goto :goto_2

    .line 132
    .restart local v2       #j:I
    .restart local v4       #m1:I
    .restart local v5       #numOfMonth:I
    :cond_8
    iget v8, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    .line 133
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->isLeapMonth_:Z

    goto :goto_4

    .line 139
    :cond_9
    iget v8, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    sub-int/2addr v8, v4

    iput v8, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    .line 127
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method public getDay()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->day_:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->month_:I

    return v0
.end method

.method public getTotalDaysTo(I)I
    .locals 3
    .parameter "y"

    .prologue
    .line 52
    add-int/lit8 v0, p1, -0x1

    .line 53
    .local v0, year:I
    mul-int/lit16 v1, v0, 0x16d

    div-int/lit8 v2, v0, 0x4

    add-int/2addr v1, v2

    div-int/lit8 v2, v0, 0x64

    sub-int/2addr v1, v2

    div-int/lit16 v2, v0, 0x190

    add-int/2addr v1, v2

    return v1
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/sec/android/app/contacts/datepicker/lunar/SolarLunarConverter;->year_:I

    return v0
.end method
