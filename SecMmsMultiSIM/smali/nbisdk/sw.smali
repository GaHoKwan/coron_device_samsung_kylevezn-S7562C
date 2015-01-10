.class public abstract Lnbisdk/sw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/navbuilder/nb/b;
.implements Lnbisdk/ap;


# instance fields
.field private aH:Z

.field private xS:Lcom/navbuilder/nb/d;

.field private xT:Lnbisdk/yx;


# direct methods
.method public constructor <init>(Lcom/navbuilder/nb/d;Lcom/navbuilder/nb/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnbisdk/sw;->xS:Lcom/navbuilder/nb/d;

    return-void
.end method


# virtual methods
.method public final P()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnbisdk/sw;->aH:Z

    return-void
.end method

.method public final a(Lnbisdk/ag;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnbisdk/sw;->aH:Z

    iget-object v0, p0, Lnbisdk/sw;->xS:Lcom/navbuilder/nb/d;

    invoke-interface {v0, p0}, Lcom/navbuilder/nb/d;->onRequestCancelled(Lcom/navbuilder/nb/b;)V

    return-void
.end method

.method public final a(Lnbisdk/ag;I)V
    .locals 1

    iget-object v0, p0, Lnbisdk/sw;->xS:Lcom/navbuilder/nb/d;

    invoke-interface {v0, p2, p0}, Lcom/navbuilder/nb/d;->onRequestProgress(ILcom/navbuilder/nb/b;)V

    return-void
.end method

.method public final a(Lnbisdk/ag;Lcom/navbuilder/nb/NBException;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnbisdk/sw;->aH:Z

    iget-object v0, p0, Lnbisdk/sw;->xS:Lcom/navbuilder/nb/d;

    invoke-interface {v0, p2, p0}, Lcom/navbuilder/nb/d;->onRequestError(Lcom/navbuilder/nb/NBException;Lcom/navbuilder/nb/b;)V

    return-void
.end method

.method public final a(Lnbisdk/yx;)V
    .locals 2

    iget-boolean v0, p0, Lnbisdk/sw;->aH:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Another request is in progress."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnbisdk/sw;->aH:Z

    iput-object p1, p0, Lnbisdk/sw;->xT:Lnbisdk/yx;

    iget-object v0, p0, Lnbisdk/sw;->xS:Lcom/navbuilder/nb/d;

    invoke-interface {v0, p0}, Lcom/navbuilder/nb/d;->onRequestStart(Lcom/navbuilder/nb/b;)V

    iget-object v0, p0, Lnbisdk/sw;->xT:Lnbisdk/yx;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnbisdk/sw;->xT:Lnbisdk/yx;

    invoke-virtual {v0}, Lnbisdk/aa;->an()V

    :cond_1
    return-void
.end method

.method public final b(Lcom/navbuilder/nb/NBException;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lnbisdk/sw;->xS:Lcom/navbuilder/nb/d;

    invoke-interface {v0, p1, p0}, Lcom/navbuilder/nb/d;->onRequestError(Lcom/navbuilder/nb/NBException;Lcom/navbuilder/nb/b;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lnbisdk/sw;->xS:Lcom/navbuilder/nb/d;

    invoke-interface {v0, p0}, Lcom/navbuilder/nb/d;->onRequestComplete(Lcom/navbuilder/nb/b;)V

    goto :goto_0
.end method

.method public final cancelRequest()V
    .locals 1

    iget-boolean v0, p0, Lnbisdk/sw;->aH:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/sw;->xT:Lnbisdk/yx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/sw;->xT:Lnbisdk/yx;

    invoke-virtual {v0}, Lnbisdk/aa;->ah()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/sw;->xT:Lnbisdk/yx;

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnbisdk/sw;->aH:Z

    return-void
.end method

.method public final d(Lnbisdk/ag;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnbisdk/sw;->aH:Z

    iget-object v0, p0, Lnbisdk/sw;->xS:Lcom/navbuilder/nb/d;

    invoke-interface {v0, p0}, Lcom/navbuilder/nb/d;->onRequestTimedOut(Lcom/navbuilder/nb/b;)V

    return-void
.end method

.method public final isRequestInProgress()Z
    .locals 1

    iget-boolean v0, p0, Lnbisdk/sw;->aH:Z

    return v0
.end method
