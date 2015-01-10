.class public abstract Lnbisdk/th;
.super Lnbisdk/ms;

# interfaces
.implements Lnbisdk/ap;


# instance fields
.field protected jy:Z

.field protected yd:Lcom/navbuilder/nb/d;


# direct methods
.method public constructor <init>(Lcom/navbuilder/nb/d;Lcom/navbuilder/nb/e;)V
    .locals 2

    invoke-direct {p0}, Lnbisdk/ms;-><init>()V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/navbuilder/nb/e;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input parameter(s) are invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lnbisdk/th;->yd:Lcom/navbuilder/nb/d;

    return-void
.end method


# virtual methods
.method public final a(Lnbisdk/ag;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnbisdk/th;->jy:Z

    iget-object v0, p0, Lnbisdk/th;->yd:Lcom/navbuilder/nb/d;

    invoke-interface {v0, p0}, Lcom/navbuilder/nb/d;->onRequestCancelled(Lcom/navbuilder/nb/b;)V

    return-void
.end method

.method public final a(Lnbisdk/ag;I)V
    .locals 1

    iget-object v0, p0, Lnbisdk/th;->yd:Lcom/navbuilder/nb/d;

    invoke-interface {v0, p2, p0}, Lcom/navbuilder/nb/d;->onRequestProgress(ILcom/navbuilder/nb/b;)V

    return-void
.end method

.method public final a(Lnbisdk/ag;Lcom/navbuilder/nb/NBException;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnbisdk/th;->jy:Z

    iget-object v0, p0, Lnbisdk/th;->yd:Lcom/navbuilder/nb/d;

    invoke-interface {v0, p2, p0}, Lcom/navbuilder/nb/d;->onRequestError(Lcom/navbuilder/nb/NBException;Lcom/navbuilder/nb/b;)V

    return-void
.end method

.method public final d(Lnbisdk/ag;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnbisdk/th;->jy:Z

    iget-object v0, p0, Lnbisdk/th;->yd:Lcom/navbuilder/nb/d;

    invoke-interface {v0, p0}, Lcom/navbuilder/nb/d;->onRequestTimedOut(Lcom/navbuilder/nb/b;)V

    return-void
.end method

.method public final isRequestInProgress()Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/th;->jy:Z

    return v0
.end method
