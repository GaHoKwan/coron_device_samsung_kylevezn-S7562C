.class public final Lnbisdk/el;
.super Ljava/lang/Thread;


# instance fields
.field private eb:Landroid/os/Handler;

.field private hz:Landroid/os/Looper;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lnbisdk/el;->eb:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/el;->eb:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final destroy()V
    .locals 1

    iget-object v0, p0, Lnbisdk/el;->hz:Landroid/os/Looper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/el;->hz:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/el;->hz:Landroid/os/Looper;

    :cond_0
    return-void
.end method

.method public final run()V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->prepare()V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lnbisdk/el;->hz:Landroid/os/Looper;

    new-instance v0, Lnbisdk/el$1;

    invoke-direct {v0, p0}, Lnbisdk/el$1;-><init>(Lnbisdk/el;)V

    iput-object v0, p0, Lnbisdk/el;->eb:Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
