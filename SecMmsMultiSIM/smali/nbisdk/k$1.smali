.class final Lnbisdk/k$1;
.super Ljava/lang/Object;

# interfaces
.implements Lnbisdk/jz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnbisdk/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic kV:Lnbisdk/k;


# direct methods
.method constructor <init>(Lnbisdk/k;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/k$1;->kV:Lnbisdk/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lnbisdk/iy;Lnbisdk/cr;)V
    .locals 2

    iget-object v0, p0, Lnbisdk/k$1;->kV:Lnbisdk/k;

    invoke-static {v0}, Lnbisdk/k;->d(Lnbisdk/k;)Lnbisdk/k;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/k$1;->kV:Lnbisdk/k;

    invoke-static {v0}, Lnbisdk/k;->d(Lnbisdk/k;)Lnbisdk/k;

    move-result-object v0

    iget-object v1, p0, Lnbisdk/k$1;->kV:Lnbisdk/k;

    invoke-static {v1}, Lnbisdk/k;->d(Lnbisdk/k;)Lnbisdk/k;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lnbisdk/k;->a(Lnbisdk/iy;Lnbisdk/cr;)V

    :cond_0
    return-void
.end method

.method public final d(Lnbisdk/qk;)V
    .locals 2

    iget-object v0, p0, Lnbisdk/k$1;->kV:Lnbisdk/k;

    invoke-static {v0}, Lnbisdk/k;->f(Lnbisdk/k;)Lnbisdk/ct;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/k$1;->kV:Lnbisdk/k;

    invoke-static {v0}, Lnbisdk/k;->f(Lnbisdk/k;)Lnbisdk/ct;

    move-result-object v0

    new-instance v1, Lnbisdk/k$1$1;

    invoke-direct {v1, p0, p1}, Lnbisdk/k$1$1;-><init>(Lnbisdk/k$1;Lnbisdk/qk;)V

    invoke-virtual {v0, v1}, Lnbisdk/au$d;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final onRequestCancelled(Lcom/navbuilder/nb/b;)V
    .locals 2

    iget-object v0, p0, Lnbisdk/k$1;->kV:Lnbisdk/k;

    invoke-static {v0}, Lnbisdk/k;->e(Lnbisdk/k;)Lnbisdk/jz;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/k$1;->kV:Lnbisdk/k;

    invoke-static {v0}, Lnbisdk/k;->e(Lnbisdk/k;)Lnbisdk/jz;

    move-result-object v0

    iget-object v1, p0, Lnbisdk/k$1;->kV:Lnbisdk/k;

    invoke-static {v1}, Lnbisdk/k;->d(Lnbisdk/k;)Lnbisdk/k;

    move-result-object v1

    invoke-interface {v0, v1}, Lnbisdk/jz;->onRequestCancelled(Lcom/navbuilder/nb/b;)V

    :cond_0
    return-void
.end method

.method public final onRequestComplete(Lcom/navbuilder/nb/b;)V
    .locals 2

    iget-object v0, p0, Lnbisdk/k$1;->kV:Lnbisdk/k;

    invoke-static {v0}, Lnbisdk/k;->e(Lnbisdk/k;)Lnbisdk/jz;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/k$1;->kV:Lnbisdk/k;

    invoke-static {v0}, Lnbisdk/k;->e(Lnbisdk/k;)Lnbisdk/jz;

    move-result-object v0

    iget-object v1, p0, Lnbisdk/k$1;->kV:Lnbisdk/k;

    invoke-static {v1}, Lnbisdk/k;->d(Lnbisdk/k;)Lnbisdk/k;

    move-result-object v1

    invoke-interface {v0, v1}, Lnbisdk/jz;->onRequestComplete(Lcom/navbuilder/nb/b;)V

    :cond_0
    return-void
.end method

.method public final onRequestError(Lcom/navbuilder/nb/NBException;Lcom/navbuilder/nb/b;)V
    .locals 1

    iget-object v0, p0, Lnbisdk/k$1;->kV:Lnbisdk/k;

    invoke-static {v0}, Lnbisdk/k;->d(Lnbisdk/k;)Lnbisdk/k;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/k$1;->kV:Lnbisdk/k;

    invoke-static {v0}, Lnbisdk/k;->d(Lnbisdk/k;)Lnbisdk/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnbisdk/k;->a(Lcom/navbuilder/nb/NBException;)V

    :cond_0
    return-void
.end method

.method public final onRequestProgress(ILcom/navbuilder/nb/b;)V
    .locals 2

    iget-object v0, p0, Lnbisdk/k$1;->kV:Lnbisdk/k;

    invoke-static {v0}, Lnbisdk/k;->e(Lnbisdk/k;)Lnbisdk/jz;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/k$1;->kV:Lnbisdk/k;

    invoke-static {v0}, Lnbisdk/k;->e(Lnbisdk/k;)Lnbisdk/jz;

    move-result-object v0

    iget-object v1, p0, Lnbisdk/k$1;->kV:Lnbisdk/k;

    invoke-static {v1}, Lnbisdk/k;->d(Lnbisdk/k;)Lnbisdk/k;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lnbisdk/jz;->onRequestProgress(ILcom/navbuilder/nb/b;)V

    :cond_0
    return-void
.end method

.method public final onRequestStart(Lcom/navbuilder/nb/b;)V
    .locals 2

    iget-object v0, p0, Lnbisdk/k$1;->kV:Lnbisdk/k;

    invoke-static {v0}, Lnbisdk/k;->e(Lnbisdk/k;)Lnbisdk/jz;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/k$1;->kV:Lnbisdk/k;

    invoke-static {v0}, Lnbisdk/k;->e(Lnbisdk/k;)Lnbisdk/jz;

    move-result-object v0

    iget-object v1, p0, Lnbisdk/k$1;->kV:Lnbisdk/k;

    invoke-static {v1}, Lnbisdk/k;->d(Lnbisdk/k;)Lnbisdk/k;

    move-result-object v1

    invoke-interface {v0, v1}, Lnbisdk/jz;->onRequestStart(Lcom/navbuilder/nb/b;)V

    :cond_0
    return-void
.end method

.method public final onRequestTimedOut(Lcom/navbuilder/nb/b;)V
    .locals 3

    iget-object v0, p0, Lnbisdk/k$1;->kV:Lnbisdk/k;

    invoke-static {v0}, Lnbisdk/k;->d(Lnbisdk/k;)Lnbisdk/k;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/k$1;->kV:Lnbisdk/k;

    invoke-static {v0}, Lnbisdk/k;->d(Lnbisdk/k;)Lnbisdk/k;

    move-result-object v0

    new-instance v1, Lcom/navbuilder/nb/NBException;

    const/16 v2, 0x7d2

    invoke-direct {v1, v2}, Lcom/navbuilder/nb/NBException;-><init>(I)V

    invoke-virtual {v0, v1}, Lnbisdk/k;->a(Lcom/navbuilder/nb/NBException;)V

    :cond_0
    return-void
.end method
