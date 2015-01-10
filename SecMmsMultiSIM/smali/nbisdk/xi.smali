.class public final Lnbisdk/xi;
.super Lnbisdk/is;


# instance fields
.field private Db:Lnbisdk/te;

.field private eJ:Z

.field private yc:Lnbisdk/rj;


# direct methods
.method public constructor <init>(Lnbisdk/rj;)V
    .locals 0

    invoke-direct {p0}, Lnbisdk/is;-><init>()V

    iput-object p1, p0, Lnbisdk/xi;->yc:Lnbisdk/rj;

    return-void
.end method


# virtual methods
.method final P()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnbisdk/xi;->eJ:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/xi;->Db:Lnbisdk/te;

    return-void
.end method

.method public final b(Lnbisdk/rx;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-boolean v0, p0, Lnbisdk/xi;->eJ:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Another request in progress"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lnbisdk/te;

    iget-object v1, p0, Lnbisdk/xi;->yc:Lnbisdk/rj;

    invoke-direct {v0, p1, v1, p0}, Lnbisdk/te;-><init>(Lnbisdk/rx;Lnbisdk/rj;Lnbisdk/xi;)V

    iput-object v0, p0, Lnbisdk/xi;->Db:Lnbisdk/te;

    sget-boolean v0, Lnbisdk/me;->sE:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Lnbisdk/ck;->a(Lnbisdk/rx;)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnbisdk/xi;->eJ:Z

    iget-object v0, p0, Lnbisdk/xi;->Db:Lnbisdk/te;

    invoke-virtual {v0}, Lnbisdk/aa;->an()V

    return-void
.end method

.method public final cancelRequest()V
    .locals 1

    iget-boolean v0, p0, Lnbisdk/xi;->eJ:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnbisdk/xi;->eJ:Z

    iget-object v0, p0, Lnbisdk/xi;->Db:Lnbisdk/te;

    invoke-virtual {v0}, Lnbisdk/aa;->ah()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/xi;->Db:Lnbisdk/te;

    :cond_0
    return-void
.end method

.method public final isRequestInProgress()Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/xi;->eJ:Z

    return v0
.end method
