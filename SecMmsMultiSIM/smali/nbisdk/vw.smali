.class public final Lnbisdk/vw;
.super Ljava/lang/Object;

# interfaces
.implements Lnbisdk/hy;


# instance fields
.field private aB:Ljava/util/Vector;

.field private aR:Ljava/util/Vector;

.field private br:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Lnbisdk/ql;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnbisdk/vw;->aB:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnbisdk/vw;->aR:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnbisdk/vw;->br:Ljava/util/Vector;

    iget-object v0, p0, Lnbisdk/vw;->aB:Ljava/util/Vector;

    const-string v1, "coupon-broad-category"

    const-string v2, "coupon-broad-category-text"

    invoke-static {p1, v0, v1, v2}, Lnbisdk/ir;->a(Lnbisdk/ql;Ljava/util/Vector;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lnbisdk/vw;->aR:Ljava/util/Vector;

    const-string v1, "coupon-category"

    const-string v2, "coupon-category-text"

    invoke-static {p1, v0, v1, v2}, Lnbisdk/ir;->a(Lnbisdk/ql;Ljava/util/Vector;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lnbisdk/vw;->br:Ljava/util/Vector;

    const-string v1, "coupon-sub-category"

    const-string v2, "coupon-sub-category-text"

    invoke-static {p1, v0, v1, v2}, Lnbisdk/ir;->a(Lnbisdk/ql;Ljava/util/Vector;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final cW()Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lnbisdk/vw;->br:Ljava/util/Vector;

    return-object v0
.end method

.method public final cZ()Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lnbisdk/vw;->aR:Ljava/util/Vector;

    return-object v0
.end method

.method public final da()Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lnbisdk/vw;->aB:Ljava/util/Vector;

    return-object v0
.end method
