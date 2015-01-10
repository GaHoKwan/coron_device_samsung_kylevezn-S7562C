.class public final Lnbisdk/vj;
.super Lnbisdk/ru;


# instance fields
.field private bx:I


# direct methods
.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lnbisdk/ru;-><init>()V

    iput p1, p0, Lnbisdk/vj;->bx:I

    return-void
.end method

.method public static bt(I)Lnbisdk/vj;
    .locals 2

    new-instance v0, Lnbisdk/vj;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Lnbisdk/vj;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public final P()V
    .locals 4

    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/tt;->nd()Ljava/util/Vector;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/zx;

    invoke-interface {v0}, Lnbisdk/zx;->iK()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/tt;->mV()Lnbisdk/qv;

    move-result-object v0

    iget v1, p0, Lnbisdk/vj;->bx:I

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Lnbisdk/qv;->a(Lnbisdk/ru;J)Z

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lnbisdk/vj;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lnbisdk/vj;

    iget v2, p0, Lnbisdk/vj;->bx:I

    iget v3, p1, Lnbisdk/vj;->bx:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lnbisdk/vj;->bx:I

    add-int/lit16 v0, v0, 0x20f

    return v0
.end method
