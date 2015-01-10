.class final Lnbisdk/da$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnbisdk/da;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field fi:Landroid/content/ServiceConnection;

.field fj:Ljava/lang/String;

.field fk:Z

.field final synthetic fl:Lnbisdk/da;

.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lnbisdk/da;Landroid/content/ServiceConnection;Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lnbisdk/da$a;->fl:Lnbisdk/da;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lnbisdk/da$a;->fi:Landroid/content/ServiceConnection;

    iput-object v0, p0, Lnbisdk/da$a;->fj:Ljava/lang/String;

    iput-object v0, p0, Lnbisdk/da$a;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnbisdk/da$a;->fk:Z

    iput-object p2, p0, Lnbisdk/da$a;->fi:Landroid/content/ServiceConnection;

    iput-object p3, p0, Lnbisdk/da$a;->fj:Ljava/lang/String;

    iput-object p4, p0, Lnbisdk/da$a;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Lnbisdk/da;Lnbisdk/da$a;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lnbisdk/da$a;->fl:Lnbisdk/da;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lnbisdk/da$a;->fi:Landroid/content/ServiceConnection;

    iput-object v0, p0, Lnbisdk/da$a;->fj:Ljava/lang/String;

    iput-object v0, p0, Lnbisdk/da$a;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnbisdk/da$a;->fk:Z

    iget-object v0, p2, Lnbisdk/da$a;->fi:Landroid/content/ServiceConnection;

    iput-object v0, p0, Lnbisdk/da$a;->fi:Landroid/content/ServiceConnection;

    iget-object v0, p2, Lnbisdk/da$a;->fj:Ljava/lang/String;

    iput-object v0, p0, Lnbisdk/da$a;->fj:Ljava/lang/String;

    iget-object v0, p2, Lnbisdk/da$a;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lnbisdk/da$a;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    iget-object v0, p0, Lnbisdk/da$a;->fi:Landroid/content/ServiceConnection;

    invoke-interface {v0, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnbisdk/da$a;->fk:Z

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 5

    const/4 v4, 0x0

    iget-boolean v0, p0, Lnbisdk/da$a;->fk:Z

    if-eqz v0, :cond_1

    iput-boolean v4, p0, Lnbisdk/da$a;->fk:Z

    iget-object v0, p0, Lnbisdk/da$a;->fl:Lnbisdk/da;

    invoke-virtual {v0, p1}, Lnbisdk/da;->a(Landroid/content/ComponentName;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/da$a;

    iget-object v3, p0, Lnbisdk/da$a;->fl:Lnbisdk/da;

    invoke-static {v3, v0}, Lnbisdk/da;->a(Lnbisdk/da;Lnbisdk/da$a;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lnbisdk/da$a;->fl:Lnbisdk/da;

    invoke-static {v0}, Lnbisdk/da;->b(Lnbisdk/da;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {v2}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2, v4}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lnbisdk/da$a;

    iget-object v0, p0, Lnbisdk/da$a;->fl:Lnbisdk/da;

    invoke-static {v0, v1}, Lnbisdk/da;->b(Lnbisdk/da;Lnbisdk/da$a;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lnbisdk/da$a;->fl:Lnbisdk/da;

    invoke-static {v0}, Lnbisdk/da;->a(Lnbisdk/da;)Lcom/nbi/remote/ServiceStateListener;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v0, Lnbisdk/da$a$1;

    invoke-direct {v0, p0}, Lnbisdk/da$a$1;-><init>(Lnbisdk/da$a;)V

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    invoke-virtual {v2}, Ljava/util/Vector;->removeAllElements()V

    iget-object v0, p0, Lnbisdk/da$a;->fl:Lnbisdk/da;

    invoke-static {v0}, Lnbisdk/da;->b(Lnbisdk/da;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/da$a;

    iget-object v3, v0, Lnbisdk/da$a;->fi:Landroid/content/ServiceConnection;

    invoke-interface {v3, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    iget-object v0, v0, Lnbisdk/da$a;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lnbisdk/da$a;->fl:Lnbisdk/da;

    invoke-static {v0}, Lnbisdk/da;->b(Lnbisdk/da;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    goto :goto_0
.end method
