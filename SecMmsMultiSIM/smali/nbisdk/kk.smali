.class final Lnbisdk/kk;
.super Lnbisdk/ru;


# instance fields
.field private synthetic pY:Lnbisdk/zx;

.field private synthetic pZ:Lnbisdk/tt;


# direct methods
.method constructor <init>(Lnbisdk/tt;Lnbisdk/zx;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/kk;->pZ:Lnbisdk/tt;

    iput-object p2, p0, Lnbisdk/kk;->pY:Lnbisdk/zx;

    invoke-direct {p0}, Lnbisdk/ru;-><init>()V

    return-void
.end method


# virtual methods
.method public final P()V
    .locals 4

    iget-object v0, p0, Lnbisdk/kk;->pZ:Lnbisdk/tt;

    invoke-static {v0}, Lnbisdk/tt;->a(Lnbisdk/tt;)Ljava/util/Vector;

    move-result-object v0

    iget-object v1, p0, Lnbisdk/kk;->pY:Lnbisdk/zx;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lnbisdk/kk;->pZ:Lnbisdk/tt;

    invoke-static {v0}, Lnbisdk/tt;->a(Lnbisdk/tt;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnbisdk/kk;->pZ:Lnbisdk/tt;

    invoke-static {v0}, Lnbisdk/tt;->b(Lnbisdk/tt;)Lnbisdk/qv;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-static {v1}, Lnbisdk/vj;->bt(I)Lnbisdk/vj;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lnbisdk/qv;->a(Lnbisdk/ru;J)Z

    :cond_0
    return-void
.end method
