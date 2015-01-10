.class final Lcom/nbi/search/singlesearch/a$1;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nbi/search/singlesearch/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic lm:Lcom/nbi/search/singlesearch/a;


# direct methods
.method constructor <init>(Lcom/nbi/search/singlesearch/a;)V
    .locals 0

    iput-object p1, p0, Lcom/nbi/search/singlesearch/a$1;->lm:Lcom/nbi/search/singlesearch/a;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v2, p0, Lcom/nbi/search/singlesearch/a$1;->lm:Lcom/nbi/search/singlesearch/a;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/nbi/search/singlesearch/a$1;->lm:Lcom/nbi/search/singlesearch/a;

    invoke-static {v0}, Lcom/nbi/search/singlesearch/a;->a(Lcom/nbi/search/singlesearch/a;)Lcom/nbi/search/singlesearch/SuggestionSearchRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nbi/search/singlesearch/SuggestionSearchRequest;->getInternalObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/rd;

    invoke-virtual {v0}, Lnbisdk/rd;->aN()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnbisdk/fc;

    invoke-virtual {v0}, Lnbisdk/rd;->aO()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/lg;

    invoke-virtual {v1, v0}, Lnbisdk/fc;->a(Lnbisdk/lg;)V

    iget-object v0, p0, Lcom/nbi/search/singlesearch/a$1;->lm:Lcom/nbi/search/singlesearch/a;

    invoke-static {v0}, Lcom/nbi/search/singlesearch/a;->b(Lcom/nbi/search/singlesearch/a;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iget-object v0, p0, Lcom/nbi/search/singlesearch/a$1;->lm:Lcom/nbi/search/singlesearch/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nbi/search/singlesearch/a;->a(Lcom/nbi/search/singlesearch/a;Ljava/util/Timer;)Ljava/util/Timer;

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
