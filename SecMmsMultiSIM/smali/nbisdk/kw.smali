.class public final Lnbisdk/kw;
.super Ljava/lang/Object;

# interfaces
.implements Lnbisdk/yj;


# static fields
.field private static qB:Lnbisdk/kw;


# instance fields
.field private mU:Lnbisdk/fm;

.field private qC:Lnbisdk/ig;

.field private qD:Lnbisdk/hj;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lnbisdk/fm;

    invoke-direct {v0}, Lnbisdk/fm;-><init>()V

    iput-object v0, p0, Lnbisdk/kw;->mU:Lnbisdk/fm;

    new-instance v0, Lnbisdk/ig;

    iget-object v1, p0, Lnbisdk/kw;->mU:Lnbisdk/fm;

    invoke-direct {v0, v1}, Lnbisdk/ig;-><init>(Lnbisdk/fm;)V

    iput-object v0, p0, Lnbisdk/kw;->qC:Lnbisdk/ig;

    new-instance v0, Lnbisdk/hj;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lnbisdk/hj;-><init>(Z)V

    iput-object v0, p0, Lnbisdk/kw;->qD:Lnbisdk/hj;

    return-void
.end method

.method public static declared-synchronized jc()Lnbisdk/yj;
    .locals 2

    const-class v1, Lnbisdk/kw;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lnbisdk/kw;->qB:Lnbisdk/kw;

    if-nez v0, :cond_0

    new-instance v0, Lnbisdk/kw;

    invoke-direct {v0}, Lnbisdk/kw;-><init>()V

    sput-object v0, Lnbisdk/kw;->qB:Lnbisdk/kw;

    :cond_0
    sget-object v0, Lnbisdk/kw;->qB:Lnbisdk/kw;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Lcom/navbuilder/nb/b;Lnbisdk/ts;I)V
    .locals 4

    iget-object v1, p0, Lnbisdk/kw;->qD:Lnbisdk/hj;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lnbisdk/kw;->qD:Lnbisdk/hj;

    iput-object p2, v0, Lnbisdk/hj;->mi:Lnbisdk/ts;

    iget-object v0, p0, Lnbisdk/kw;->qD:Lnbisdk/hj;

    iput-object p1, v0, Lnbisdk/hj;->mj:Lcom/navbuilder/nb/b;

    iget-object v0, p0, Lnbisdk/kw;->qD:Lnbisdk/hj;

    iput p3, v0, Lnbisdk/hj;->ml:I

    iget-object v0, p0, Lnbisdk/kw;->qC:Lnbisdk/ig;

    iget-object v2, p0, Lnbisdk/kw;->qD:Lnbisdk/hj;

    iget v2, v2, Lnbisdk/tb;->xY:I

    iget-object v3, p0, Lnbisdk/kw;->qD:Lnbisdk/hj;

    invoke-virtual {v0, v2, v3}, Lnbisdk/ig;->a(ILnbisdk/tb;)V

    iget-object v0, p0, Lnbisdk/kw;->qD:Lnbisdk/hj;

    invoke-virtual {v0}, Lnbisdk/hj;->reset()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lcom/navbuilder/nb/b;Lnbisdk/ts;II)V
    .locals 4

    iget-object v1, p0, Lnbisdk/kw;->qD:Lnbisdk/hj;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lnbisdk/kw;->qD:Lnbisdk/hj;

    iput-object p1, v0, Lnbisdk/hj;->mj:Lcom/navbuilder/nb/b;

    iget-object v0, p0, Lnbisdk/kw;->qD:Lnbisdk/hj;

    iput-object p2, v0, Lnbisdk/hj;->mi:Lnbisdk/ts;

    iget-object v0, p0, Lnbisdk/kw;->qD:Lnbisdk/hj;

    const/4 v2, 0x7

    iput v2, v0, Lnbisdk/hj;->ml:I

    iget-object v0, p0, Lnbisdk/kw;->qD:Lnbisdk/hj;

    iput p4, v0, Lnbisdk/hj;->progress:I

    iget-object v0, p0, Lnbisdk/kw;->qC:Lnbisdk/ig;

    iget-object v2, p0, Lnbisdk/kw;->qD:Lnbisdk/hj;

    iget v2, v2, Lnbisdk/tb;->xY:I

    iget-object v3, p0, Lnbisdk/kw;->qD:Lnbisdk/hj;

    invoke-virtual {v0, v2, v3}, Lnbisdk/ig;->a(ILnbisdk/tb;)V

    iget-object v0, p0, Lnbisdk/kw;->qD:Lnbisdk/hj;

    invoke-virtual {v0}, Lnbisdk/hj;->reset()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lcom/navbuilder/nb/b;Lnbisdk/ts;ILcom/navbuilder/nb/NBException;)V
    .locals 4

    iget-object v1, p0, Lnbisdk/kw;->qD:Lnbisdk/hj;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lnbisdk/kw;->qD:Lnbisdk/hj;

    iput-object p1, v0, Lnbisdk/hj;->mj:Lcom/navbuilder/nb/b;

    iget-object v0, p0, Lnbisdk/kw;->qD:Lnbisdk/hj;

    iput-object p2, v0, Lnbisdk/hj;->mi:Lnbisdk/ts;

    iget-object v0, p0, Lnbisdk/kw;->qD:Lnbisdk/hj;

    const/16 v2, 0xa

    iput v2, v0, Lnbisdk/hj;->ml:I

    iget-object v0, p0, Lnbisdk/kw;->qD:Lnbisdk/hj;

    iput-object p4, v0, Lnbisdk/hj;->mm:Lcom/navbuilder/nb/NBException;

    iget-object v0, p0, Lnbisdk/kw;->qC:Lnbisdk/ig;

    iget-object v2, p0, Lnbisdk/kw;->qD:Lnbisdk/hj;

    iget v2, v2, Lnbisdk/tb;->xY:I

    iget-object v3, p0, Lnbisdk/kw;->qD:Lnbisdk/hj;

    invoke-virtual {v0, v2, v3}, Lnbisdk/ig;->a(ILnbisdk/tb;)V

    iget-object v0, p0, Lnbisdk/kw;->qD:Lnbisdk/hj;

    invoke-virtual {v0}, Lnbisdk/hj;->reset()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lcom/navbuilder/nb/b;Lnbisdk/ts;ILjava/lang/Object;)V
    .locals 4

    iget-object v1, p0, Lnbisdk/kw;->qD:Lnbisdk/hj;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lnbisdk/kw;->qD:Lnbisdk/hj;

    iput-object p1, v0, Lnbisdk/hj;->mj:Lcom/navbuilder/nb/b;

    iget-object v0, p0, Lnbisdk/kw;->qD:Lnbisdk/hj;

    iput-object p2, v0, Lnbisdk/hj;->mi:Lnbisdk/ts;

    iget-object v0, p0, Lnbisdk/kw;->qD:Lnbisdk/hj;

    iput p3, v0, Lnbisdk/hj;->ml:I

    iget-object v0, p0, Lnbisdk/kw;->qD:Lnbisdk/hj;

    iput-object p4, v0, Lnbisdk/hj;->mk:Ljava/lang/Object;

    iget-object v0, p0, Lnbisdk/kw;->qC:Lnbisdk/ig;

    iget-object v2, p0, Lnbisdk/kw;->qD:Lnbisdk/hj;

    iget v2, v2, Lnbisdk/tb;->xY:I

    iget-object v3, p0, Lnbisdk/kw;->qD:Lnbisdk/hj;

    invoke-virtual {v0, v2, v3}, Lnbisdk/ig;->a(ILnbisdk/tb;)V

    iget-object v0, p0, Lnbisdk/kw;->qD:Lnbisdk/hj;

    invoke-virtual {v0}, Lnbisdk/hj;->reset()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
