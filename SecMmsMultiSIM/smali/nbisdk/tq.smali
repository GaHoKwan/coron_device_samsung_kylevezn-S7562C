.class public final Lnbisdk/tq;
.super Ljava/lang/Object;


# instance fields
.field private yA:[I

.field private yz:[I


# direct methods
.method public constructor <init>([B)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    div-int/lit8 v1, v0, 0x2

    new-array v0, v1, [I

    iput-object v0, p0, Lnbisdk/tq;->yz:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lnbisdk/tq;->yA:[I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    shl-int/lit8 v2, v0, 0x1

    invoke-direct {p0, v2, v0, p1}, Lnbisdk/tq;->a(II[B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(II[B)V
    .locals 6

    const v1, 0x8000

    const/4 v0, 0x0

    aget-byte v2, p3, p1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p3, v3

    and-int/lit16 v3, v3, 0xff

    or-int v4, v2, v3

    move v2, v1

    move v3, v1

    move v1, v0

    :goto_0
    if-lez v3, :cond_2

    and-int v5, v3, v4

    if-lez v5, :cond_0

    or-int/2addr v1, v2

    :cond_0
    shr-int/lit8 v3, v3, 0x1

    and-int v5, v3, v4

    if-lez v5, :cond_1

    or-int/2addr v0, v2

    :cond_1
    shr-int/lit8 v3, v3, 0x1

    shr-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lnbisdk/tq;->yz:[I

    shr-int/lit8 v3, v1, 0x2

    add-int/2addr v1, v3

    aput v1, v2, p2

    iget-object v1, p0, Lnbisdk/tq;->yA:[I

    shr-int/lit8 v2, v0, 0x2

    add-int/2addr v0, v2

    aput v0, v1, p2

    return-void
.end method
