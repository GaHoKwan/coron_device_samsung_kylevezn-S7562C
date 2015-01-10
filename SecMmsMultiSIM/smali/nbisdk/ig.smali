.class final Lnbisdk/ig;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mP:Lnbisdk/cx;

.field private mQ:Lnbisdk/fe;

.field private mR:Lnbisdk/qg;

.field private mS:Lnbisdk/qg;

.field private mT:Lnbisdk/qg;

.field private mU:Lnbisdk/fm;

.field private mV:Lnbisdk/tb;


# direct methods
.method constructor <init>(Lnbisdk/fm;)V
    .locals 3

    const/16 v2, 0xa

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnbisdk/ig;->mU:Lnbisdk/fm;

    new-instance v0, Lnbisdk/fe;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lnbisdk/fe;-><init>(I)V

    iput-object v0, p0, Lnbisdk/ig;->mQ:Lnbisdk/fe;

    new-instance v0, Lnbisdk/qg;

    invoke-direct {v0, v2}, Lnbisdk/qg;-><init>(I)V

    iput-object v0, p0, Lnbisdk/ig;->mT:Lnbisdk/qg;

    new-instance v0, Lnbisdk/qg;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lnbisdk/qg;-><init>(I)V

    iput-object v0, p0, Lnbisdk/ig;->mR:Lnbisdk/qg;

    new-instance v0, Lnbisdk/qg;

    invoke-direct {v0, v2}, Lnbisdk/qg;-><init>(I)V

    iput-object v0, p0, Lnbisdk/ig;->mS:Lnbisdk/qg;

    return-void
.end method

.method private declared-synchronized b(ILnbisdk/tb;)V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    monitor-enter p0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lnbisdk/ig;->mP:Lnbisdk/cx;

    if-nez v0, :cond_7

    move v0, v1

    :goto_0
    check-cast p2, Lnbisdk/cx;

    iput-object p2, p0, Lnbisdk/ig;->mP:Lnbisdk/cx;

    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_1
    if-eqz v0, :cond_2

    iget-object v0, p0, Lnbisdk/ig;->mU:Lnbisdk/fm;

    invoke-virtual {v0, p0}, Lnbisdk/fm;->b(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    :try_start_1
    iget-object v0, p0, Lnbisdk/ig;->mQ:Lnbisdk/fe;

    invoke-virtual {v0, p2}, Lnbisdk/fe;->a(Lnbisdk/tb;)Z

    move-result v0

    iget-object v3, p0, Lnbisdk/ig;->mQ:Lnbisdk/fe;

    invoke-virtual {v3}, Lnbisdk/qg;->size()I

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_1

    :cond_4
    const/16 v0, 0xa

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lnbisdk/ig;->mR:Lnbisdk/qg;

    invoke-virtual {v0, p2}, Lnbisdk/qg;->a(Lnbisdk/tb;)Z

    move-result v0

    goto :goto_1

    :cond_5
    const/16 v0, 0xb

    if-ne p1, v0, :cond_6

    iget-object v0, p0, Lnbisdk/ig;->mS:Lnbisdk/qg;

    invoke-virtual {v0, p2}, Lnbisdk/qg;->a(Lnbisdk/tb;)Z

    move-result v0

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lnbisdk/ig;->mT:Lnbisdk/qg;

    invoke-virtual {v0, p2}, Lnbisdk/qg;->a(Lnbisdk/tb;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_7
    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method final declared-synchronized a(ILnbisdk/tb;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lnbisdk/ig;->b(ILnbisdk/tb;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final run()V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lnbisdk/ig;->mQ:Lnbisdk/fe;

    invoke-virtual {v0}, Lnbisdk/qg;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/ig;->mQ:Lnbisdk/fe;

    invoke-virtual {v0}, Lnbisdk/fe;->fY()Lnbisdk/tb;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lnbisdk/ig;->mV:Lnbisdk/tb;

    iget-object v0, p0, Lnbisdk/ig;->mV:Lnbisdk/tb;

    if-nez v0, :cond_4

    :goto_1
    :sswitch_0
    return-void

    :cond_0
    iget-object v0, p0, Lnbisdk/ig;->mP:Lnbisdk/cx;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnbisdk/ig;->mP:Lnbisdk/cx;

    iput-object v1, p0, Lnbisdk/ig;->mP:Lnbisdk/cx;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnbisdk/ig;->mT:Lnbisdk/qg;

    invoke-virtual {v0}, Lnbisdk/qg;->size()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnbisdk/ig;->mT:Lnbisdk/qg;

    invoke-virtual {v0}, Lnbisdk/qg;->fY()Lnbisdk/tb;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lnbisdk/ig;->mP:Lnbisdk/cx;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnbisdk/ig;->mP:Lnbisdk/cx;

    iput-object v1, p0, Lnbisdk/ig;->mP:Lnbisdk/cx;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lnbisdk/ig;->mS:Lnbisdk/qg;

    invoke-virtual {v0}, Lnbisdk/qg;->size()I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lnbisdk/ig;->mS:Lnbisdk/qg;

    invoke-virtual {v0}, Lnbisdk/qg;->fY()Lnbisdk/tb;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lnbisdk/ig;->mV:Lnbisdk/tb;

    iget v0, v0, Lnbisdk/tb;->xY:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    :sswitch_1
    iget-object v0, p0, Lnbisdk/ig;->mV:Lnbisdk/tb;

    move-object v5, v0

    check-cast v5, Lnbisdk/hj;

    iget-object v0, v5, Lnbisdk/hj;->mi:Lnbisdk/ts;

    iget-object v1, v5, Lnbisdk/hj;->mj:Lcom/navbuilder/nb/b;

    iget v2, v5, Lnbisdk/hj;->ml:I

    iget-object v3, v5, Lnbisdk/hj;->mm:Lcom/navbuilder/nb/NBException;

    iget v4, v5, Lnbisdk/hj;->progress:I

    iget-object v5, v5, Lnbisdk/hj;->mk:Ljava/lang/Object;

    invoke-interface/range {v0 .. v5}, Lnbisdk/ts;->a(Lcom/navbuilder/nb/b;ILcom/navbuilder/nb/NBException;ILjava/lang/Object;)V

    goto :goto_1

    :sswitch_2
    iget-object v0, p0, Lnbisdk/ig;->mV:Lnbisdk/tb;

    check-cast v0, Lnbisdk/cx;

    invoke-virtual {v0}, Lnbisdk/cx;->dF()Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x5 -> :sswitch_2
        0xb -> :sswitch_0
    .end sparse-switch
.end method
