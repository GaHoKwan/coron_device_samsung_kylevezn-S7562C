.class final Lcom/nbi/search/singlesearch/a;
.super Ljava/lang/Object;


# static fields
.field private static iM:Lcom/nbi/search/singlesearch/a;


# instance fields
.field private iK:Lcom/nbi/search/singlesearch/SuggestionSearchRequest;

.field private iL:Ljava/util/Timer;

.field private iN:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/nbi/search/singlesearch/a;->iN:I

    return-void
.end method

.method static synthetic a(Lcom/nbi/search/singlesearch/a;)Lcom/nbi/search/singlesearch/SuggestionSearchRequest;
    .locals 1

    iget-object v0, p0, Lcom/nbi/search/singlesearch/a;->iK:Lcom/nbi/search/singlesearch/SuggestionSearchRequest;

    return-object v0
.end method

.method static synthetic a(Lcom/nbi/search/singlesearch/a;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nbi/search/singlesearch/a;->iL:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic b(Lcom/nbi/search/singlesearch/a;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/nbi/search/singlesearch/a;->iL:Ljava/util/Timer;

    return-object v0
.end method

.method public static fS()Lcom/nbi/search/singlesearch/a;
    .locals 1

    sget-object v0, Lcom/nbi/search/singlesearch/a;->iM:Lcom/nbi/search/singlesearch/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nbi/search/singlesearch/a;

    invoke-direct {v0}, Lcom/nbi/search/singlesearch/a;-><init>()V

    sput-object v0, Lcom/nbi/search/singlesearch/a;->iM:Lcom/nbi/search/singlesearch/a;

    :cond_0
    sget-object v0, Lcom/nbi/search/singlesearch/a;->iM:Lcom/nbi/search/singlesearch/a;

    return-object v0
.end method

.method private declared-synchronized fT()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nbi/search/singlesearch/a;->iK:Lcom/nbi/search/singlesearch/SuggestionSearchRequest;

    invoke-virtual {v0}, Lcom/nbi/search/singlesearch/SuggestionSearchRequest;->getInternalObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/rd;

    invoke-virtual {v0}, Lnbisdk/rd;->cancelRequest()V

    iget-object v0, p0, Lcom/nbi/search/singlesearch/a;->iL:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nbi/search/singlesearch/a;->iL:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nbi/search/singlesearch/a;->iL:Ljava/util/Timer;
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


# virtual methods
.method public final declared-synchronized a(Lcom/nbi/search/singlesearch/SuggestionSearchRequest;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nbi/search/singlesearch/a;->iK:Lcom/nbi/search/singlesearch/SuggestionSearchRequest;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/nbi/search/singlesearch/a;->fT()V

    :cond_0
    iput-object p1, p0, Lcom/nbi/search/singlesearch/a;->iK:Lcom/nbi/search/singlesearch/SuggestionSearchRequest;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/nbi/search/singlesearch/a;->iL:Ljava/util/Timer;

    iget-object v0, p0, Lcom/nbi/search/singlesearch/a;->iL:Ljava/util/Timer;

    new-instance v1, Lcom/nbi/search/singlesearch/a$1;

    invoke-direct {v1, p0}, Lcom/nbi/search/singlesearch/a$1;-><init>(Lcom/nbi/search/singlesearch/a;)V

    iget v2, p0, Lcom/nbi/search/singlesearch/a;->iN:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Lcom/nbi/search/singlesearch/SuggestionSearchRequest;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/nbi/search/singlesearch/a;->iK:Lcom/nbi/search/singlesearch/SuggestionSearchRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nbi/search/singlesearch/a;->iK:Lcom/nbi/search/singlesearch/SuggestionSearchRequest;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/nbi/search/singlesearch/a;->fT()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nbi/search/singlesearch/a;->iK:Lcom/nbi/search/singlesearch/SuggestionSearchRequest;
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
