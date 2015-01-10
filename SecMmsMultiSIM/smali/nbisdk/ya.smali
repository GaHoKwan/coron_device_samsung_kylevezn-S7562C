.class public final Lnbisdk/ya;
.super Lnbisdk/fc;

# interfaces
.implements Lnbisdk/ap;


# instance fields
.field private DG:Lnbisdk/ui;

.field private DH:Lnbisdk/iu;


# direct methods
.method public constructor <init>(Lnbisdk/iu;)V
    .locals 2

    invoke-direct {p0}, Lnbisdk/fc;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "suggestion search listener parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lnbisdk/ya;->DH:Lnbisdk/iu;

    return-void
.end method


# virtual methods
.method public final a(Lnbisdk/ag;)V
    .locals 1

    iget-object v0, p0, Lnbisdk/ya;->DH:Lnbisdk/iu;

    invoke-interface {v0, p0}, Lnbisdk/iu;->onRequestCancelled(Lcom/navbuilder/nb/b;)V

    return-void
.end method

.method public final a(Lnbisdk/ag;I)V
    .locals 1

    iget-object v0, p0, Lnbisdk/ya;->DH:Lnbisdk/iu;

    invoke-interface {v0, p2, p0}, Lnbisdk/iu;->onRequestProgress(ILcom/navbuilder/nb/b;)V

    return-void
.end method

.method public final a(Lnbisdk/ag;Lcom/navbuilder/nb/NBException;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lnbisdk/ya;->DH:Lnbisdk/iu;

    invoke-interface {v0, p2, p0}, Lnbisdk/iu;->a(Lcom/navbuilder/nb/NBException;Lcom/navbuilder/nb/b;)V

    :cond_0
    iget-object v0, p0, Lnbisdk/ya;->DH:Lnbisdk/iu;

    invoke-interface {v0, p2, p0}, Lnbisdk/iu;->onRequestError(Lcom/navbuilder/nb/NBException;Lcom/navbuilder/nb/b;)V

    return-void
.end method

.method public final declared-synchronized a(Lnbisdk/ag;Lnbisdk/ql;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    check-cast p1, Lnbisdk/ui;

    invoke-virtual {p1}, Lnbisdk/ui;->nz()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {p2, p1}, Lnbisdk/bq;->a(Lnbisdk/ql;Lnbisdk/ui;)Lnbisdk/hn;

    move-result-object v0

    const-string v1, "requestComplete : SuggestionSearchHandlerImpl"

    const-wide v2, 0x20000000000L

    invoke-static {v1, v2, v3}, Lnbisdk/jg;->a(Ljava/lang/String;J)V

    iget-object v1, p0, Lnbisdk/ya;->DH:Lnbisdk/iu;

    invoke-interface {v1, v0, p0}, Lnbisdk/iu;->a(Lnbisdk/hn;Lcom/navbuilder/nb/b;)V

    iget-object v0, p0, Lnbisdk/ya;->DH:Lnbisdk/iu;

    invoke-interface {v0, p0}, Lnbisdk/iu;->onRequestComplete(Lcom/navbuilder/nb/b;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "Internal Exception on Suggestion Search Handling"

    const-wide v2, 0x20000000000L

    const/4 v4, 0x2

    invoke-static {v1, v2, v3, v4}, Lnbisdk/jg;->a(Ljava/lang/String;JB)V

    const-wide v1, 0x20000000000L

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lnbisdk/jg;->a(Ljava/lang/Throwable;JB)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lnbisdk/lg;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnbisdk/ya;->DG:Lnbisdk/ui;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/ya;->DG:Lnbisdk/ui;

    invoke-virtual {v0}, Lnbisdk/ui;->ah()Z

    :cond_0
    new-instance v0, Lnbisdk/ui;

    const/4 v1, 0x2

    invoke-direct {v0, p1, p0, v1}, Lnbisdk/ui;-><init>(Lnbisdk/lg;Lnbisdk/ap;I)V

    iput-object v0, p0, Lnbisdk/ya;->DG:Lnbisdk/ui;

    iget-object v0, p0, Lnbisdk/ya;->DH:Lnbisdk/iu;

    invoke-interface {v0, p0}, Lnbisdk/iu;->onRequestStart(Lcom/navbuilder/nb/b;)V

    const-string v0, "startRequest : SuggestionSearchHandlerImpl"

    const-wide v1, 0x20000000000L

    invoke-static {v0, v1, v2}, Lnbisdk/jg;->a(Ljava/lang/String;J)V

    iget-object v0, p0, Lnbisdk/ya;->DG:Lnbisdk/ui;

    invoke-virtual {v0}, Lnbisdk/aa;->an()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized cancelRequest()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnbisdk/ya;->DG:Lnbisdk/ui;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/ya;->DG:Lnbisdk/ui;

    invoke-virtual {v0}, Lnbisdk/ui;->ah()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/ya;->DG:Lnbisdk/ui;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d(Lnbisdk/ag;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lnbisdk/ya;->DH:Lnbisdk/iu;

    invoke-interface {v0, p0}, Lnbisdk/iu;->a(Lcom/navbuilder/nb/b;)V

    :cond_0
    iget-object v0, p0, Lnbisdk/ya;->DH:Lnbisdk/iu;

    invoke-interface {v0, p0}, Lnbisdk/iu;->onRequestTimedOut(Lcom/navbuilder/nb/b;)V

    return-void
.end method
