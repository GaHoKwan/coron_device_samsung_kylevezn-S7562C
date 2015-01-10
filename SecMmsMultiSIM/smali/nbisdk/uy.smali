.class public final Lnbisdk/uy;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0xc

    new-array v0, v0, [I

    const/16 v1, 0x1b9

    aput v1, v0, v3

    const/16 v1, 0x1a0

    aput v1, v0, v4

    const/16 v1, 0x197

    aput v1, v0, v5

    const/16 v1, 0x18d

    aput v1, v0, v6

    const/16 v1, 0x16d

    aput v1, v0, v7

    const/4 v1, 0x5

    const/16 v2, 0x15c

    aput v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x169

    aput v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x184

    aput v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x19b

    aput v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x1b2

    aput v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x1b9

    aput v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x1b6

    aput v2, v0, v1

    const/16 v0, 0xc

    new-array v0, v0, [I

    const/16 v1, 0x411

    aput v1, v0, v3

    const/16 v1, 0x428

    aput v1, v0, v4

    const/16 v1, 0x466

    aput v1, v0, v5

    const/16 v1, 0x49f

    aput v1, v0, v6

    const/16 v1, 0x4be

    aput v1, v0, v7

    const/4 v1, 0x5

    const/16 v2, 0x4d2

    aput v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x4ce

    aput v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x4b2

    aput v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x480

    aput v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x458

    aput v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x41d

    aput v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x3fa

    aput v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final b(JI)J
    .locals 4

    int-to-long v0, p2

    add-long/2addr v0, p0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    const-wide v2, 0x4990f83c00L

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static final r(J)J
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lnbisdk/uy;->b(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final s(J)I
    .locals 4

    const-wide v0, 0x4990f83c00L

    sub-long v0, p0, v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
