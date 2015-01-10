.class final Lnbisdk/kn;
.super Lnbisdk/ru;


# instance fields
.field private synthetic pY:Lnbisdk/zx;

.field private synthetic pZ:Lnbisdk/tt;


# direct methods
.method constructor <init>(Lnbisdk/tt;Lnbisdk/zx;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/kn;->pZ:Lnbisdk/tt;

    iput-object p2, p0, Lnbisdk/kn;->pY:Lnbisdk/zx;

    invoke-direct {p0}, Lnbisdk/ru;-><init>()V

    return-void
.end method


# virtual methods
.method public final P()V
    .locals 2

    iget-object v0, p0, Lnbisdk/kn;->pZ:Lnbisdk/tt;

    invoke-static {v0}, Lnbisdk/tt;->a(Lnbisdk/tt;)Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Lnbisdk/kn;->pY:Lnbisdk/zx;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    iget-object v0, p0, Lnbisdk/kn;->pZ:Lnbisdk/tt;

    invoke-static {v0}, Lnbisdk/tt;->a(Lnbisdk/tt;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/kn;->pZ:Lnbisdk/tt;

    invoke-static {v0}, Lnbisdk/tt;->b(Lnbisdk/tt;)Lnbisdk/qv;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-static {v1}, Lnbisdk/vj;->bt(I)Lnbisdk/vj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnbisdk/qv;->c(Lnbisdk/ru;)V

    :cond_0
    return-void
.end method
