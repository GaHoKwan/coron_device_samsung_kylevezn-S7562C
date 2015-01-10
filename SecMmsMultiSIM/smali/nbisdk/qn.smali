.class public final Lnbisdk/qn;
.super Ljava/lang/Object;

# interfaces
.implements Lnbisdk/xz;


# instance fields
.field private L:Ljava/lang/String;

.field private M:Ljava/lang/String;

.field private N:Ljava/lang/String;

.field private V:I

.field private Y:Ljava/lang/String;

.field private ax:Ljava/lang/String;

.field private bF:J

.field private cK:J

.field private cX:D

.field private cY:D

.field private cg:Ljava/lang/String;

.field private cl:Ljava/lang/String;

.field private hG:D

.field private vC:Lnbisdk/ba;

.field private vD:Ljava/util/Vector;

.field private vE:Ljava/util/Vector;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnbisdk/qn;->vE:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnbisdk/qn;->vD:Ljava/util/Vector;

    return-void
.end method

.method public constructor <init>(Lnbisdk/xz;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lnbisdk/xz;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/qn;->N:Ljava/lang/String;

    invoke-interface {p1}, Lnbisdk/xz;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/qn;->ax:Ljava/lang/String;

    invoke-interface {p1}, Lnbisdk/xz;->getConditions()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/qn;->L:Ljava/lang/String;

    invoke-interface {p1}, Lnbisdk/xz;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/qn;->M:Ljava/lang/String;

    invoke-interface {p1}, Lnbisdk/xz;->di()J

    move-result-wide v0

    iput-wide v0, p0, Lnbisdk/qn;->bF:J

    invoke-interface {p1}, Lnbisdk/xz;->dh()J

    move-result-wide v0

    iput-wide v0, p0, Lnbisdk/qn;->cK:J

    invoke-interface {p1}, Lnbisdk/xz;->getDiscountType()I

    move-result v0

    iput v0, p0, Lnbisdk/qn;->V:I

    invoke-interface {p1}, Lnbisdk/xz;->getBuyValue()D

    move-result-wide v0

    iput-wide v0, p0, Lnbisdk/qn;->hG:D

    invoke-interface {p1}, Lnbisdk/xz;->getDiscountValue()D

    move-result-wide v0

    iput-wide v0, p0, Lnbisdk/qn;->cX:D

    invoke-interface {p1}, Lnbisdk/xz;->getListValue()D

    move-result-wide v0

    iput-wide v0, p0, Lnbisdk/qn;->cY:D

    invoke-interface {p1}, Lnbisdk/xz;->getCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/qn;->Y:Ljava/lang/String;

    invoke-interface {p1}, Lnbisdk/xz;->getCurrency()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/qn;->cg:Ljava/lang/String;

    invoke-interface {p1}, Lnbisdk/xz;->getDealUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/qn;->cl:Ljava/lang/String;

    return-void
.end method

.method public static a(Lnbisdk/xz;)Lnbisdk/ze;
    .locals 4

    new-instance v0, Lnbisdk/ze;

    const-string v1, "coupon-data"

    invoke-direct {v0, v1}, Lnbisdk/ze;-><init>(Ljava/lang/String;)V

    const-string v1, "title"

    invoke-interface {p0}, Lnbisdk/xz;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "description"

    invoke-interface {p0}, Lnbisdk/xz;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "conditions"

    invoke-interface {p0}, Lnbisdk/xz;->getConditions()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "id"

    invoke-interface {p0}, Lnbisdk/xz;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "expiration-date"

    invoke-interface {p0}, Lnbisdk/xz;->di()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lnbisdk/gp;->a(Lnbisdk/ze;Ljava/lang/String;J)V

    const-string v1, "start-date"

    invoke-interface {p0}, Lnbisdk/xz;->dh()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lnbisdk/gp;->a(Lnbisdk/ze;Ljava/lang/String;J)V

    const-string v1, "currency"

    invoke-interface {p0}, Lnbisdk/xz;->getCurrency()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "discount-type"

    invoke-interface {p0}, Lnbisdk/xz;->getDiscountType()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lnbisdk/gp;->a(Lnbisdk/ze;Ljava/lang/String;J)V

    const-string v1, "buy-value"

    invoke-interface {p0}, Lnbisdk/xz;->getBuyValue()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lnbisdk/dy;->a(Lnbisdk/ze;Ljava/lang/String;D)V

    const-string v1, "discount-value"

    invoke-interface {p0}, Lnbisdk/xz;->getDiscountValue()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lnbisdk/dy;->a(Lnbisdk/ze;Ljava/lang/String;D)V

    const-string v1, "list-value"

    invoke-interface {p0}, Lnbisdk/xz;->getListValue()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lnbisdk/dy;->a(Lnbisdk/ze;Ljava/lang/String;D)V

    const-string v1, "coupon-code"

    invoke-interface {p0}, Lnbisdk/xz;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "deal-url"

    invoke-interface {p0}, Lnbisdk/xz;->getDealUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lnbisdk/ur;->a(Lnbisdk/ze;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static s(Ljava/io/DataInputStream;)Lnbisdk/qn;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lnbisdk/qn;

    invoke-direct {v0}, Lnbisdk/qn;-><init>()V

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unsupported data format version.  DataCoupon only supports version 1."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnbisdk/qn;->N:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnbisdk/qn;->ax:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnbisdk/qn;->L:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnbisdk/qn;->M:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Lnbisdk/qn;->bF:J

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Lnbisdk/qn;->cK:J

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, v0, Lnbisdk/qn;->V:I

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v1

    iput-wide v1, v0, Lnbisdk/qn;->hG:D

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v1

    iput-wide v1, v0, Lnbisdk/qn;->cY:D

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v1

    iput-wide v1, v0, Lnbisdk/qn;->cX:D

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnbisdk/qn;->cg:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnbisdk/qn;->Y:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnbisdk/qn;->cl:Ljava/lang/String;

    return-object v0
.end method

.method public static u(Lnbisdk/ql;)Lnbisdk/qn;
    .locals 4

    new-instance v0, Lnbisdk/qn;

    invoke-direct {v0}, Lnbisdk/qn;-><init>()V

    const-string v1, "title"

    invoke-static {p0, v1}, Lnbisdk/ur;->k(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnbisdk/qn;->N:Ljava/lang/String;

    const-string v1, "description"

    invoke-static {p0, v1}, Lnbisdk/ur;->k(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnbisdk/qn;->ax:Ljava/lang/String;

    const-string v1, "conditions"

    invoke-static {p0, v1}, Lnbisdk/ur;->k(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnbisdk/qn;->L:Ljava/lang/String;

    const-string v1, "id"

    invoke-static {p0, v1}, Lnbisdk/ur;->k(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnbisdk/qn;->M:Ljava/lang/String;

    const-string v1, "start-date"

    invoke-static {p0, v1}, Lnbisdk/gp;->f(Lnbisdk/ql;Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lnbisdk/qn;->cK:J

    const-string v1, "expiration-date"

    invoke-static {p0, v1}, Lnbisdk/gp;->f(Lnbisdk/ql;Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lnbisdk/qn;->bF:J

    const-string v1, "currency"

    invoke-static {p0, v1}, Lnbisdk/ur;->k(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnbisdk/qn;->cg:Ljava/lang/String;

    const-string v1, "discount-type"

    invoke-static {p0, v1}, Lnbisdk/gp;->f(Lnbisdk/ql;Ljava/lang/String;)J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Lnbisdk/qn;->V:I

    const-string v1, "buy-value"

    invoke-static {p0, v1}, Lnbisdk/dy;->b(Lnbisdk/ql;Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lnbisdk/qn;->hG:D

    const-string v1, "discount-value"

    invoke-static {p0, v1}, Lnbisdk/dy;->b(Lnbisdk/ql;Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lnbisdk/qn;->cX:D

    const-string v1, "list-value"

    invoke-static {p0, v1}, Lnbisdk/dy;->b(Lnbisdk/ql;Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lnbisdk/qn;->cY:D

    const-string v1, "coupon-code"

    invoke-static {p0, v1}, Lnbisdk/ur;->k(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnbisdk/qn;->Y:Ljava/lang/String;

    const-string v1, "deal-url"

    invoke-static {p0, v1}, Lnbisdk/ur;->k(Lnbisdk/ql;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lnbisdk/qn;->cl:Ljava/lang/String;

    iget-object v1, v0, Lnbisdk/qn;->vD:Ljava/util/Vector;

    const-string v2, "coupon-availability"

    const-string v3, "availability-text"

    invoke-static {p0, v1, v2, v3}, Lnbisdk/ir;->a(Lnbisdk/ql;Ljava/util/Vector;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lnbisdk/qn;->vE:Ljava/util/Vector;

    const-string v2, "coupon-acquisition"

    const-string v3, "acquisition-text"

    invoke-static {p0, v1, v2, v3}, Lnbisdk/ir;->a(Lnbisdk/ql;Ljava/util/Vector;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "image-urls"

    invoke-static {p0, v1}, Lnbisdk/cj;->c(Lnbisdk/ql;Ljava/lang/String;)Lnbisdk/ql;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lnbisdk/vo;->v(Lnbisdk/ql;)Lnbisdk/vo;

    move-result-object v1

    iput-object v1, v0, Lnbisdk/qn;->vC:Lnbisdk/ba;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final b(Ljava/io/DataOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, Lnbisdk/qn;->N:Ljava/lang/String;

    invoke-static {p1, v0}, Lnbisdk/ir;->c(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    iget-object v0, p0, Lnbisdk/qn;->ax:Ljava/lang/String;

    invoke-static {p1, v0}, Lnbisdk/ir;->c(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    iget-object v0, p0, Lnbisdk/qn;->L:Ljava/lang/String;

    invoke-static {p1, v0}, Lnbisdk/ir;->c(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    iget-object v0, p0, Lnbisdk/qn;->M:Ljava/lang/String;

    invoke-static {p1, v0}, Lnbisdk/ir;->c(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    iget-wide v0, p0, Lnbisdk/qn;->bF:J

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-wide v0, p0, Lnbisdk/qn;->cK:J

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget v0, p0, Lnbisdk/qn;->V:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-wide v0, p0, Lnbisdk/qn;->hG:D

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeDouble(D)V

    iget-wide v0, p0, Lnbisdk/qn;->cY:D

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeDouble(D)V

    iget-wide v0, p0, Lnbisdk/qn;->cX:D

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeDouble(D)V

    iget-object v0, p0, Lnbisdk/qn;->cg:Ljava/lang/String;

    invoke-static {p1, v0}, Lnbisdk/ir;->c(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    iget-object v0, p0, Lnbisdk/qn;->Y:Ljava/lang/String;

    invoke-static {p1, v0}, Lnbisdk/ir;->c(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    iget-object v0, p0, Lnbisdk/qn;->cl:Ljava/lang/String;

    invoke-static {p1, v0}, Lnbisdk/ir;->c(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    return-void
.end method

.method public final cY()Lnbisdk/ba;
    .locals 1

    iget-object v0, p0, Lnbisdk/qn;->vC:Lnbisdk/ba;

    return-object v0
.end method

.method public final dh()J
    .locals 2

    iget-wide v0, p0, Lnbisdk/qn;->cK:J

    return-wide v0
.end method

.method public final di()J
    .locals 2

    iget-wide v0, p0, Lnbisdk/qn;->bF:J

    return-wide v0
.end method

.method public final dj()Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lnbisdk/qn;->vD:Ljava/util/Vector;

    return-object v0
.end method

.method public final dk()Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lnbisdk/qn;->vE:Ljava/util/Vector;

    return-object v0
.end method

.method public final getBuyValue()D
    .locals 2

    iget-wide v0, p0, Lnbisdk/qn;->hG:D

    return-wide v0
.end method

.method public final getCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/qn;->Y:Ljava/lang/String;

    return-object v0
.end method

.method public final getConditions()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/qn;->L:Ljava/lang/String;

    return-object v0
.end method

.method public final getCurrency()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/qn;->cg:Ljava/lang/String;

    return-object v0
.end method

.method public final getDealUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/qn;->cl:Ljava/lang/String;

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/qn;->ax:Ljava/lang/String;

    return-object v0
.end method

.method public final getDiscountType()I
    .locals 1

    iget v0, p0, Lnbisdk/qn;->V:I

    return v0
.end method

.method public final getDiscountValue()D
    .locals 2

    iget-wide v0, p0, Lnbisdk/qn;->cX:D

    return-wide v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/qn;->M:Ljava/lang/String;

    return-object v0
.end method

.method public final getListValue()D
    .locals 2

    iget-wide v0, p0, Lnbisdk/qn;->cY:D

    return-wide v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnbisdk/qn;->N:Ljava/lang/String;

    return-object v0
.end method
