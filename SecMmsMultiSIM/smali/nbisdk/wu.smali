.class final Lnbisdk/wu;
.super Lnbisdk/qj;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnbisdk/qj;-><init>()V

    return-void
.end method


# virtual methods
.method protected final o([B)V
    .locals 3

    array-length v0, p1

    new-array v1, v0, [B

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    aget-byte v2, p1, v0

    xor-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, v1}, Lnbisdk/qj;->o([B)V

    return-void
.end method
