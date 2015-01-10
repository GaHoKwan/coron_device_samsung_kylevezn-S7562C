.class public final Lnbisdk/ye;
.super Ljava/lang/Object;

# interfaces
.implements Lnbisdk/jb;


# instance fields
.field DK:Ljava/util/Vector;

.field private DL:Lnbisdk/vo;

.field L:Ljava/lang/String;

.field Q:Lnbisdk/de;

.field ax:Ljava/lang/String;

.field cJ:I

.field fd:Ljava/util/Vector;

.field ow:Ljava/util/Vector;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnbisdk/ye;->fd:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnbisdk/ye;->ow:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnbisdk/ye;->DK:Ljava/util/Vector;

    return-void
.end method

.method public static c(Lnbisdk/jb;)Lnbisdk/ye;
    .locals 2

    new-instance v0, Lnbisdk/ye;

    invoke-direct {v0}, Lnbisdk/ye;-><init>()V

    invoke-interface {p0}, Lnbisdk/jb;->cX()Lnbisdk/de;

    move-result-object v1

    iput-object v1, v0, Lnbisdk/ye;->Q:Lnbisdk/de;

    invoke-interface {p0}, Lnbisdk/jb;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnbisdk/ye;->ax:Ljava/lang/String;

    invoke-interface {p0}, Lnbisdk/jb;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnbisdk/ye;->L:Ljava/lang/String;

    invoke-interface {p0}, Lnbisdk/jb;->getCouponCount()I

    move-result v1

    iput v1, v0, Lnbisdk/ye;->cJ:I

    invoke-interface {p0}, Lnbisdk/jb;->da()Ljava/util/Vector;

    move-result-object v1

    iput-object v1, v0, Lnbisdk/ye;->fd:Ljava/util/Vector;

    invoke-interface {p0}, Lnbisdk/jb;->cZ()Ljava/util/Vector;

    move-result-object v1

    iput-object v1, v0, Lnbisdk/ye;->ow:Ljava/util/Vector;

    invoke-interface {p0}, Lnbisdk/jb;->cW()Ljava/util/Vector;

    move-result-object v1

    iput-object v1, v0, Lnbisdk/ye;->DK:Ljava/util/Vector;

    return-object v0
.end method

.method public static w(Lnbisdk/ql;)Lnbisdk/ye;
    .locals 4

    new-instance v0, Lnbisdk/ye;

    invoke-direct {v0}, Lnbisdk/ye;-><init>()V

    const-string v1, "place"

    invoke-static {p0, v1}, Lnbisdk/cj;->c(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/ql;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lnbisdk/bf;->c(Lnbisdk/ql;)Lnbisdk/de;

    move-result-object v1

    iput-object v1, v0, Lnbisdk/ye;->Q:Lnbisdk/de;

    :cond_0
    const-string v1, "retailer-name"

    invoke-static {p0, v1}, Lnbisdk/ur;->k(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnbisdk/ye;->ax:Ljava/lang/String;

    const-string v1, "retailer-id"

    invoke-static {p0, v1}, Lnbisdk/ur;->k(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnbisdk/ye;->L:Ljava/lang/String;

    const-string v1, "coupon-count"

    invoke-virtual {p0, v1}, Lnbisdk/ql;->bc(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "coupon-count"

    invoke-static {p0, v1}, Lnbisdk/gp;->f(Lnbisdk/ql;Ljava/lang/String;)J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Lnbisdk/ye;->cJ:I

    :cond_1
    iget-object v1, v0, Lnbisdk/ye;->fd:Ljava/util/Vector;

    const-string v2, "coupon-broad-category"

    const-string v3, "coupon-broad-category-text"

    invoke-static {p0, v1, v2, v3}, Lnbisdk/ir;->a(Lnbisdk/ql;Ljava/util/Vector;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lnbisdk/ye;->ow:Ljava/util/Vector;

    const-string v2, "coupon-category"

    const-string v3, "coupon-category-text"

    invoke-static {p0, v1, v2, v3}, Lnbisdk/ir;->a(Lnbisdk/ql;Ljava/util/Vector;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lnbisdk/ye;->DK:Ljava/util/Vector;

    const-string v2, "coupon-sub-category"

    const-string v3, "coupon-sub-category-text"

    invoke-static {p0, v1, v2, v3}, Lnbisdk/ir;->a(Lnbisdk/ql;Ljava/util/Vector;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "image-urls"

    invoke-static {p0, v1}, Lnbisdk/cj;->c(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/ql;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v1}, Lnbisdk/vo;->v(Lnbisdk/ql;)Lnbisdk/vo;

    move-result-object v1

    iput-object v1, v0, Lnbisdk/ye;->DL:Lnbisdk/vo;

    :cond_2
    return-object v0
.end method

.method public static z(Ljava/io/DataInputStream;)Lnbisdk/ye;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lnbisdk/ye;

    invoke-direct {v0}, Lnbisdk/ye;-><init>()V

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unsupported data format version.  DataStore only supports version 1."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p0}, Lnbisdk/gt;->h(Ljava/io/DataInputStream;)Lnbisdk/de;

    move-result-object v1

    iput-object v1, v0, Lnbisdk/ye;->Q:Lnbisdk/de;

    invoke-static {p0}, Lnbisdk/gt;->f(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnbisdk/ye;->ax:Ljava/lang/String;

    invoke-static {p0}, Lnbisdk/gt;->f(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnbisdk/ye;->L:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, v0, Lnbisdk/ye;->cJ:I

    invoke-static {p0}, Lnbisdk/ir;->m(Ljava/io/DataInputStream;)Ljava/util/Vector;

    move-result-object v1

    iput-object v1, v0, Lnbisdk/ye;->fd:Ljava/util/Vector;

    invoke-static {p0}, Lnbisdk/ir;->m(Ljava/io/DataInputStream;)Ljava/util/Vector;

    move-result-object v1

    iput-object v1, v0, Lnbisdk/ye;->ow:Ljava/util/Vector;

    invoke-static {p0}, Lnbisdk/ir;->m(Ljava/io/DataInputStream;)Ljava/util/Vector;

    move-result-object v1

    iput-object v1, v0, Lnbisdk/ye;->DK:Ljava/util/Vector;

    const/4 v1, 0x0

    iput-object v1, v0, Lnbisdk/ye;->DL:Lnbisdk/vo;

    return-object v0
.end method


# virtual methods
.method public final b(Ljava/io/DataOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, Lnbisdk/ye;->Q:Lnbisdk/de;

    invoke-static {p1, v0}, Lnbisdk/gt;->a(Ljava/io/DataOutputStream;Lnbisdk/de;)V

    iget-object v0, p0, Lnbisdk/ye;->ax:Ljava/lang/String;

    invoke-static {p1, v0}, Lnbisdk/gt;->b(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    iget-object v0, p0, Lnbisdk/ye;->L:Ljava/lang/String;

    invoke-static {p1, v0}, Lnbisdk/gt;->b(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    iget v0, p0, Lnbisdk/ye;->cJ:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, Lnbisdk/ye;->fd:Ljava/util/Vector;

    invoke-static {p1, v0}, Lnbisdk/ir;->a(Ljava/io/DataOutputStream;Ljava/util/Vector;)V

    iget-object v0, p0, Lnbisdk/ye;->ow:Ljava/util/Vector;

    invoke-static {p1, v0}, Lnbisdk/ir;->a(Ljava/io/DataOutputStream;Ljava/util/Vector;)V

    iget-object v0, p0, Lnbisdk/ye;->DK:Ljava/util/Vector;

    invoke-static {p1, v0}, Lnbisdk/ir;->a(Ljava/io/DataOutputStream;Ljava/util/Vector;)V

    return-void
.end method

.method public final cW()Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lnbisdk/ye;->DK:Ljava/util/Vector;

    return-object v0
.end method

.method public final cX()Lnbisdk/de;
    .locals 1

    iget-object v0, p0, Lnbisdk/ye;->Q:Lnbisdk/de;

    return-object v0
.end method

.method public final cY()Lnbisdk/ba;
    .locals 1

    iget-object v0, p0, Lnbisdk/ye;->DL:Lnbisdk/vo;

    return-object v0
.end method

.method public final cZ()Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lnbisdk/ye;->ow:Ljava/util/Vector;

    return-object v0
.end method

.method public final da()Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lnbisdk/ye;->fd:Ljava/util/Vector;

    return-object v0
.end method

.method public final getCouponCount()I
    .locals 1

    iget v0, p0, Lnbisdk/ye;->cJ:I

    return v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/ye;->L:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/ye;->ax:Ljava/lang/String;

    return-object v0
.end method
