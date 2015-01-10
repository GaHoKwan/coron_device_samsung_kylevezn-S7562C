.class public final Lnbisdk/tz;
.super Lnbisdk/th;

# interfaces
.implements Lnbisdk/ea;


# instance fields
.field private yT:Lnbisdk/qs;


# direct methods
.method public constructor <init>(Lnbisdk/kh;Lcom/navbuilder/nb/e;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnbisdk/th;-><init>(Lcom/navbuilder/nb/d;Lcom/navbuilder/nb/e;)V

    return-void
.end method


# virtual methods
.method public final a(Lnbisdk/ag;Lnbisdk/ql;)V
    .locals 5

    const-wide/32 v3, 0x1000000

    const/4 v2, 0x2

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lnbisdk/th;->jy:Z

    iget-object v0, p0, Lnbisdk/th;->yd:Lcom/navbuilder/nb/d;

    check-cast v0, Lnbisdk/kh;

    iget-object v1, p0, Lnbisdk/tz;->yT:Lnbisdk/qs;

    invoke-virtual {v1}, Lnbisdk/qs;->mg()Lnbisdk/fa;

    move-result-object v1

    invoke-interface {v0, v1}, Lnbisdk/kh;->c(Lnbisdk/fa;)V

    iget-object v0, p0, Lnbisdk/th;->yd:Lcom/navbuilder/nb/d;

    invoke-interface {v0, p0}, Lcom/navbuilder/nb/d;->onRequestComplete(Lcom/navbuilder/nb/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Internal Exception on Auth Handling"

    invoke-static {v1, v3, v4, v2}, Lnbisdk/jg;->a(Ljava/lang/String;JB)V

    invoke-static {v0, v3, v4, v2}, Lnbisdk/jg;->a(Ljava/lang/Throwable;JB)V

    iget-object v1, p0, Lnbisdk/th;->yd:Lcom/navbuilder/nb/d;

    new-instance v2, Lcom/navbuilder/nb/NBException;

    const/16 v3, 0x42

    invoke-direct {v2, v3, v0}, Lcom/navbuilder/nb/NBException;-><init>(ILjava/lang/Exception;)V

    invoke-interface {v1, v2, p0}, Lcom/navbuilder/nb/d;->onRequestError(Lcom/navbuilder/nb/NBException;Lcom/navbuilder/nb/b;)V

    goto :goto_0
.end method

.method public final a(Lnbisdk/id;)V
    .locals 2

    iget-boolean v0, p0, Lnbisdk/th;->jy:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Another request is in progress"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid input parameter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lnbisdk/qs;

    invoke-direct {v0, p1, p0}, Lnbisdk/qs;-><init>(Lnbisdk/id;Lnbisdk/ap;)V

    iput-object v0, p0, Lnbisdk/tz;->yT:Lnbisdk/qs;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnbisdk/th;->jy:Z

    iget-object v0, p0, Lnbisdk/th;->yd:Lcom/navbuilder/nb/d;

    invoke-interface {v0, p0}, Lcom/navbuilder/nb/d;->onRequestStart(Lcom/navbuilder/nb/b;)V

    iget-object v0, p0, Lnbisdk/tz;->yT:Lnbisdk/qs;

    invoke-virtual {v0}, Lnbisdk/aa;->an()V

    return-void
.end method

.method public final cancelRequest()V
    .locals 1

    iget-boolean v0, p0, Lnbisdk/th;->jy:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnbisdk/th;->jy:Z

    iget-object v0, p0, Lnbisdk/tz;->yT:Lnbisdk/qs;

    invoke-virtual {v0}, Lnbisdk/aa;->ah()Z

    :cond_0
    return-void
.end method
