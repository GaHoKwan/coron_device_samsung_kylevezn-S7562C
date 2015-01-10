.class final Lnbisdk/ca;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnbisdk/bt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic df:Lnbisdk/bt;


# direct methods
.method constructor <init>(Lnbisdk/bt;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/ca;->df:Lnbisdk/bt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lnbisdk/ca;->df:Lnbisdk/bt;

    invoke-static {v0}, Lnbisdk/bt;->c(Lnbisdk/bt;)Lcom/nbi/common/NBIContextListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/ca;->df:Lnbisdk/bt;

    invoke-static {v0}, Lnbisdk/bt;->d(Lnbisdk/bt;)Lcom/nbi/common/NBIException;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/nbi/common/NBIException;

    iget-object v1, p0, Lnbisdk/ca;->df:Lnbisdk/bt;

    invoke-static {v1}, Lnbisdk/bt;->d(Lnbisdk/bt;)Lcom/nbi/common/NBIException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nbi/common/NBIException;->getInternalObject()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nbi/common/NBIException;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lnbisdk/ca;->df:Lnbisdk/bt;

    invoke-static {v1}, Lnbisdk/bt;->c(Lnbisdk/bt;)Lcom/nbi/common/NBIContextListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/nbi/common/NBIContextListener;->onError(Lcom/nbi/common/NBIException;)V

    iget-object v0, p0, Lnbisdk/ca;->df:Lnbisdk/bt;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnbisdk/bt;->a(Lnbisdk/bt;Lcom/nbi/common/NBIException;)Lcom/nbi/common/NBIException;

    :cond_0
    return-void
.end method
