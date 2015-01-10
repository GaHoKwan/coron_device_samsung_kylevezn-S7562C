.class final Lnbisdk/x$a;
.super Lnbisdk/sz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnbisdk/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private synthetic lF:Lnbisdk/x;


# direct methods
.method constructor <init>(Lnbisdk/x;)V
    .locals 1

    iput-object p1, p0, Lnbisdk/x$a;->lF:Lnbisdk/x;

    const-string v0, "Triage Thread"

    invoke-direct {p0, v0}, Lnbisdk/sz;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final fc()V
    .locals 4

    sget-boolean v0, Lnbisdk/me;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/x$a;->lF:Lnbisdk/x;

    iget-object v0, v0, Lnbisdk/x;->aP:Lnbisdk/ir;

    const-string v1, "periodic network triage enabled"

    invoke-virtual {v0, v1}, Lnbisdk/ir;->info(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lnbisdk/x$a;->lF:Lnbisdk/x;

    monitor-enter v1

    :goto_0
    :try_start_0
    iget-object v0, p0, Lnbisdk/x$a;->lF:Lnbisdk/x;

    invoke-static {v0}, Lnbisdk/x;->a(Lnbisdk/x;)Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnbisdk/x$a;->lF:Lnbisdk/x;

    invoke-virtual {v0}, Lnbisdk/x;->M()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lnbisdk/x$a;->lF:Lnbisdk/x;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-boolean v0, Lnbisdk/me;->DEBUG:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnbisdk/x$a;->lF:Lnbisdk/x;

    iget-object v0, v0, Lnbisdk/x;->aP:Lnbisdk/ir;

    const-string v1, "periodic network triage disabled"

    invoke-virtual {v0, v1}, Lnbisdk/ir;->info(Ljava/lang/String;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public final fd()Lcom/navbuilder/nb/c;
    .locals 1

    iget-object v0, p0, Lnbisdk/x$a;->lF:Lnbisdk/x;

    iget-object v0, v0, Lnbisdk/x;->aI:Lcom/navbuilder/nb/c;

    return-object v0
.end method
