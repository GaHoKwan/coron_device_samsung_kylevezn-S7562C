.class public Lnbisdk/iy;
.super Ljava/lang/Object;


# instance fields
.field private jc:[B

.field private oc:Lnbisdk/eu;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lnbisdk/eu;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnbisdk/iy;->oc:Lnbisdk/eu;

    iput-object p2, p0, Lnbisdk/iy;->jc:[B

    return-void
.end method

.method public static b([BI)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    aget-byte v1, p0, v0

    xor-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final ij()[B
    .locals 1

    iget-object v0, p0, Lnbisdk/iy;->jc:[B

    return-object v0
.end method

.method public final ik()Lnbisdk/eu;
    .locals 1

    iget-object v0, p0, Lnbisdk/iy;->oc:Lnbisdk/eu;

    return-object v0
.end method
