.class final Lnbisdk/bt$2;
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

    iput-object p1, p0, Lnbisdk/bt$2;->df:Lnbisdk/bt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lnbisdk/bt$2;->df:Lnbisdk/bt;

    invoke-static {v0}, Lnbisdk/bt;->f(Lnbisdk/bt;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/bt$2;->df:Lnbisdk/bt;

    invoke-virtual {v0}, Lnbisdk/bt;->clearCache()V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
