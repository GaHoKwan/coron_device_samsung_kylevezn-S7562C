.class final Lnbisdk/gb;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(J[BII)J
    .locals 11

    if-nez p2, :cond_0

    const-wide/16 v0, 0x1

    :goto_0
    return-wide v0

    :cond_0
    const-wide/32 v0, 0xffff

    and-long v2, p0, v0

    const/16 v0, 0x10

    shr-long v0, p0, v0

    const-wide/32 v4, 0xffff

    and-long/2addr v0, v4

    move-wide v4, v2

    move-wide v2, v0

    move v1, p4

    :goto_1
    if-lez v1, :cond_3

    const/16 v0, 0x15b0

    if-ge v1, v0, :cond_1

    move v0, v1

    :goto_2
    sub-int p4, v1, v0

    move-wide v9, v2

    move-wide v2, v4

    move v4, p3

    move v5, v0

    move-wide v0, v9

    :goto_3
    const/16 v6, 0x10

    if-lt v5, v6, :cond_2

    add-int/lit8 v6, v4, 0x1

    aget-byte v4, p2, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v7, v4

    add-long/2addr v2, v7

    add-long/2addr v0, v2

    add-int/lit8 v4, v6, 0x1

    aget-byte v6, p2, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    add-long/2addr v2, v6

    add-long/2addr v0, v2

    add-int/lit8 v6, v4, 0x1

    aget-byte v4, p2, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v7, v4

    add-long/2addr v2, v7

    add-long/2addr v0, v2

    add-int/lit8 v4, v6, 0x1

    aget-byte v6, p2, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    add-long/2addr v2, v6

    add-long/2addr v0, v2

    add-int/lit8 v6, v4, 0x1

    aget-byte v4, p2, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v7, v4

    add-long/2addr v2, v7

    add-long/2addr v0, v2

    add-int/lit8 v4, v6, 0x1

    aget-byte v6, p2, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    add-long/2addr v2, v6

    add-long/2addr v0, v2

    add-int/lit8 v6, v4, 0x1

    aget-byte v4, p2, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v7, v4

    add-long/2addr v2, v7

    add-long/2addr v0, v2

    add-int/lit8 v4, v6, 0x1

    aget-byte v6, p2, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    add-long/2addr v2, v6

    add-long/2addr v0, v2

    add-int/lit8 v6, v4, 0x1

    aget-byte v4, p2, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v7, v4

    add-long/2addr v2, v7

    add-long/2addr v0, v2

    add-int/lit8 v4, v6, 0x1

    aget-byte v6, p2, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    add-long/2addr v2, v6

    add-long/2addr v0, v2

    add-int/lit8 v6, v4, 0x1

    aget-byte v4, p2, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v7, v4

    add-long/2addr v2, v7

    add-long/2addr v0, v2

    add-int/lit8 v4, v6, 0x1

    aget-byte v6, p2, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    add-long/2addr v2, v6

    add-long/2addr v0, v2

    add-int/lit8 v6, v4, 0x1

    aget-byte v4, p2, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v7, v4

    add-long/2addr v2, v7

    add-long/2addr v0, v2

    add-int/lit8 v4, v6, 0x1

    aget-byte v6, p2, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    add-long/2addr v2, v6

    add-long/2addr v0, v2

    add-int/lit8 v6, v4, 0x1

    aget-byte v4, p2, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v7, v4

    add-long/2addr v2, v7

    add-long/2addr v0, v2

    add-int/lit8 v4, v6, 0x1

    aget-byte v6, p2, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    add-long/2addr v2, v6

    add-long/2addr v0, v2

    add-int/lit8 v5, v5, -0x10

    goto/16 :goto_3

    :cond_1
    const/16 v0, 0x15b0

    goto/16 :goto_2

    :cond_2
    if-eqz v5, :cond_5

    move v6, v5

    :goto_4
    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p2, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v7, v4

    add-long/2addr v2, v7

    add-long/2addr v0, v2

    add-int/lit8 v4, v6, -0x1

    if-nez v4, :cond_4

    :goto_5
    const-wide/32 v6, 0xfff1

    rem-long/2addr v2, v6

    const-wide/32 v6, 0xfff1

    rem-long/2addr v0, v6

    move p3, v5

    move-wide v4, v2

    move-wide v2, v0

    move v1, p4

    goto/16 :goto_1

    :cond_3
    const/16 v0, 0x10

    shl-long v0, v2, v0

    or-long/2addr v0, v4

    goto/16 :goto_0

    :cond_4
    move v6, v4

    move v4, v5

    goto :goto_4

    :cond_5
    move v5, v4

    goto :goto_5
.end method
