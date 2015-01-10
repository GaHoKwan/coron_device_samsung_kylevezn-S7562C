.class public final Lcom/google/common/primitives/UnsignedLongs;
.super Ljava/lang/Object;
.source "UnsignedLongs.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/UnsignedLongs$LexicographicalComparator;
    }
.end annotation


# static fields
.field private static final maxSafeDigits:[I

.field private static final maxValueDivs:[J

.field private static final maxValueMods:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const-wide/16 v5, -0x1

    const/16 v3, 0x25

    .line 353
    new-array v2, v3, [J

    sput-object v2, Lcom/google/common/primitives/UnsignedLongs;->maxValueDivs:[J

    .line 354
    new-array v2, v3, [I

    sput-object v2, Lcom/google/common/primitives/UnsignedLongs;->maxValueMods:[I

    .line 355
    new-array v2, v3, [I

    sput-object v2, Lcom/google/common/primitives/UnsignedLongs;->maxSafeDigits:[I

    .line 357
    new-instance v1, Ljava/math/BigInteger;

    const-string v2, "10000000000000000"

    const/16 v3, 0x10

    invoke-direct {v1, v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 358
    .local v1, overflow:Ljava/math/BigInteger;
    const/4 v0, 0x2

    .local v0, i:I
    :goto_0
    const/16 v2, 0x24

    if-gt v0, v2, :cond_0

    .line 359
    sget-object v2, Lcom/google/common/primitives/UnsignedLongs;->maxValueDivs:[J

    int-to-long v3, v0

    invoke-static {v5, v6, v3, v4}, Lcom/google/common/primitives/UnsignedLongs;->divide(JJ)J

    move-result-wide v3

    aput-wide v3, v2, v0

    .line 360
    sget-object v2, Lcom/google/common/primitives/UnsignedLongs;->maxValueMods:[I

    int-to-long v3, v0

    invoke-static {v5, v6, v3, v4}, Lcom/google/common/primitives/UnsignedLongs;->remainder(JJ)J

    move-result-wide v3

    long-to-int v3, v3

    aput v3, v2, v0

    .line 361
    sget-object v2, Lcom/google/common/primitives/UnsignedLongs;->maxSafeDigits:[I

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aput v3, v2, v0

    .line 358
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 363
    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compare(JJ)I
    .locals 4
    .parameter "a"
    .parameter "b"

    .prologue
    .line 72
    invoke-static {p0, p1}, Lcom/google/common/primitives/UnsignedLongs;->flip(J)J

    move-result-wide v0

    invoke-static {p2, p3}, Lcom/google/common/primitives/UnsignedLongs;->flip(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/common/primitives/Longs;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public static divide(JJ)J
    .locals 8
    .parameter "dividend"
    .parameter "divisor"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x1

    .line 179
    cmp-long v7, p2, v5

    if-gez v7, :cond_1

    .line 180
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/UnsignedLongs;->compare(JJ)I

    move-result v4

    if-gez v4, :cond_0

    move-wide v4, v5

    .line 200
    :goto_0
    return-wide v4

    .line 183
    :cond_0
    const-wide/16 v4, 0x1

    goto :goto_0

    .line 188
    :cond_1
    cmp-long v5, p0, v5

    if-ltz v5, :cond_2

    .line 189
    div-long v4, p0, p2

    goto :goto_0

    .line 198
    :cond_2
    ushr-long v5, p0, v4

    div-long/2addr v5, p2

    shl-long v0, v5, v4

    .line 199
    .local v0, quotient:J
    mul-long v5, v0, p2

    sub-long v2, p0, v5

    .line 200
    .local v2, rem:J
    invoke-static {v2, v3, p2, p3}, Lcom/google/common/primitives/UnsignedLongs;->compare(JJ)I

    move-result v5

    if-ltz v5, :cond_3

    :goto_1
    int-to-long v4, v4

    add-long/2addr v4, v0

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private static flip(J)J
    .locals 2
    .parameter "a"

    .prologue
    .line 59
    const-wide/high16 v0, -0x8000

    xor-long/2addr v0, p0

    return-wide v0
.end method

.method public static remainder(JJ)J
    .locals 9
    .parameter "dividend"
    .parameter "divisor"

    .prologue
    const/4 v8, 0x1

    const-wide/16 v4, 0x0

    .line 213
    cmp-long v6, p2, v4

    if-gez v6, :cond_1

    .line 214
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/primitives/UnsignedLongs;->compare(JJ)I

    move-result v4

    if-gez v4, :cond_0

    .line 234
    .end local p0
    .end local p2
    :goto_0
    return-wide p0

    .line 217
    .restart local p0
    .restart local p2
    :cond_0
    sub-long/2addr p0, p2

    goto :goto_0

    .line 222
    :cond_1
    cmp-long v6, p0, v4

    if-ltz v6, :cond_2

    .line 223
    rem-long/2addr p0, p2

    goto :goto_0

    .line 232
    :cond_2
    ushr-long v6, p0, v8

    div-long/2addr v6, p2

    shl-long v0, v6, v8

    .line 233
    .local v0, quotient:J
    mul-long v6, v0, p2

    sub-long v2, p0, v6

    .line 234
    .local v2, rem:J
    invoke-static {v2, v3, p2, p3}, Lcom/google/common/primitives/UnsignedLongs;->compare(JJ)I

    move-result v6

    if-ltz v6, :cond_3

    .end local p2
    :goto_1
    sub-long p0, v2, p2

    goto :goto_0

    .restart local p2
    :cond_3
    move-wide p2, v4

    goto :goto_1
.end method

.method public static toString(J)Ljava/lang/String;
    .locals 1
    .parameter "x"

    .prologue
    .line 307
    const/16 v0, 0xa

    invoke-static {p0, p1, v0}, Lcom/google/common/primitives/UnsignedLongs;->toString(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(JI)Ljava/lang/String;
    .locals 11
    .parameter "x"
    .parameter "radix"

    .prologue
    .line 320
    const/4 v6, 0x2

    if-lt p2, v6, :cond_0

    const/16 v6, 0x24

    if-gt p2, v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    const-string v7, "radix (%s) must be between Character.MIN_RADIX and Character.MAX_RADIX"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 322
    const-wide/16 v6, 0x0

    cmp-long v6, p0, v6

    if-nez v6, :cond_1

    .line 324
    const-string v6, "0"

    .line 348
    :goto_1
    return-object v6

    .line 320
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 326
    :cond_1
    const/16 v6, 0x40

    new-array v2, v6, [C

    .line 327
    .local v2, buf:[C
    array-length v3, v2

    .line 328
    .local v3, i:I
    const-wide/16 v6, 0x0

    cmp-long v6, p0, v6

    if-gez v6, :cond_3

    .line 332
    const/16 v6, 0x20

    ushr-long v4, p0, v6

    .line 333
    .local v4, top:J
    const-wide v6, 0xffffffffL

    and-long/2addr v6, p0

    int-to-long v8, p2

    rem-long v8, v4, v8

    const/16 v10, 0x20

    shl-long/2addr v8, v10

    add-long v0, v6, v8

    .line 334
    .local v0, bot:J
    int-to-long v6, p2

    div-long/2addr v4, v6

    .line 335
    :goto_2
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-gtz v6, :cond_2

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_4

    .line 336
    :cond_2
    add-int/lit8 v3, v3, -0x1

    int-to-long v6, p2

    rem-long v6, v0, v6

    long-to-int v6, v6

    invoke-static {v6, p2}, Ljava/lang/Character;->forDigit(II)C

    move-result v6

    aput-char v6, v2, v3

    .line 337
    int-to-long v6, p2

    div-long v6, v0, v6

    int-to-long v8, p2

    rem-long v8, v4, v8

    const/16 v10, 0x20

    shl-long/2addr v8, v10

    add-long v0, v6, v8

    .line 338
    int-to-long v6, p2

    div-long/2addr v4, v6

    goto :goto_2

    .line 342
    .end local v0           #bot:J
    .end local v4           #top:J
    :cond_3
    :goto_3
    const-wide/16 v6, 0x0

    cmp-long v6, p0, v6

    if-lez v6, :cond_4

    .line 343
    add-int/lit8 v3, v3, -0x1

    int-to-long v6, p2

    rem-long v6, p0, v6

    long-to-int v6, v6

    invoke-static {v6, p2}, Ljava/lang/Character;->forDigit(II)C

    move-result v6

    aput-char v6, v2, v3

    .line 344
    int-to-long v6, p2

    div-long/2addr p0, v6

    goto :goto_3

    .line 348
    :cond_4
    new-instance v6, Ljava/lang/String;

    array-length v7, v2

    sub-int/2addr v7, v3

    invoke-direct {v6, v2, v3, v7}, Ljava/lang/String;-><init>([CII)V

    goto :goto_1
.end method