.class final Lnbisdk/k$a$a;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnbisdk/k$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private synthetic ao:Lnbisdk/k$a;


# direct methods
.method synthetic constructor <init>(Lnbisdk/k$a;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnbisdk/k$a$a;-><init>(Lnbisdk/k$a;B)V

    return-void
.end method

.method private constructor <init>(Lnbisdk/k$a;B)V
    .locals 0

    iput-object p1, p0, Lnbisdk/k$a$a;->ao:Lnbisdk/k$a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lnbisdk/k$a$a;->ao:Lnbisdk/k$a;

    invoke-static {v0}, Lnbisdk/k$a;->a(Lnbisdk/k$a;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    return-void
.end method
