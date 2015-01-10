.class final Lnbisdk/bt$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnbisdk/bt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private synthetic df:Lnbisdk/bt;

.field ly:Ljava/util/Timer;


# direct methods
.method synthetic constructor <init>(Lnbisdk/bt;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnbisdk/bt$a;-><init>(Lnbisdk/bt;B)V

    return-void
.end method

.method private constructor <init>(Lnbisdk/bt;B)V
    .locals 0

    iput-object p1, p0, Lnbisdk/bt$a;->df:Lnbisdk/bt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lnbisdk/bt$a;)V
    .locals 3

    iget-object v1, p0, Lnbisdk/bt$a;->df:Lnbisdk/bt;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lnbisdk/bt$a;->df:Lnbisdk/bt;

    invoke-static {v0}, Lnbisdk/bt;->g(Lnbisdk/bt;)Lcom/nbi/common/NBINetworkListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/bt$a;->df:Lnbisdk/bt;

    invoke-static {v0}, Lnbisdk/bt;->h(Lnbisdk/bt;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lnbisdk/bt$a;->df:Lnbisdk/bt;

    invoke-static {v0}, Lnbisdk/bt;->i(Lnbisdk/bt;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method final gV()V
    .locals 1

    iget-object v0, p0, Lnbisdk/bt$a;->ly:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/bt$a;->ly:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/bt$a;->ly:Ljava/util/Timer;

    :cond_0
    return-void
.end method
