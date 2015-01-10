.class public Lnbisdk/y;
.super Ljava/lang/Object;

# interfaces
.implements Lnbisdk/dl;


# instance fields
.field private aQ:Lnbisdk/jm;

.field private aR:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lnbisdk/jm;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnbisdk/y;->aR:Ljava/util/Vector;

    iput-object p1, p0, Lnbisdk/y;->aQ:Lnbisdk/jm;

    iget-object v0, p0, Lnbisdk/y;->aQ:Lnbisdk/jm;

    invoke-interface {v0, p0}, Lnbisdk/jm;->d(Lnbisdk/dl;)V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lnbisdk/y;->aR:Ljava/util/Vector;

    return-void
.end method

.method private declared-synchronized R()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lnbisdk/y;->b()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lnbisdk/y;->aR:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lnbisdk/y;->aR:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/dl;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lnbisdk/dl;->af()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lnbisdk/y;->b()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lnbisdk/y;->aR:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lnbisdk/y;->aR:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/dl;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lnbisdk/dl;->ag()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lnbisdk/y;)V
    .locals 0

    invoke-direct {p0}, Lnbisdk/y;->R()V

    return-void
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lnbisdk/y;->aR:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    iget-object v0, p0, Lnbisdk/y;->aR:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnbisdk/y;->aR:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic b(Lnbisdk/y;)V
    .locals 0

    invoke-direct {p0}, Lnbisdk/y;->a()V

    return-void
.end method

.method private c(Lnbisdk/dl;)I
    .locals 2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lnbisdk/y;->aR:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lnbisdk/y;->aR:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/dl;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public static d(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v0, ""

    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "initial"

    goto :goto_0

    :pswitch_2
    const-string v0, "reload"

    goto :goto_0

    :pswitch_3
    const-string v0, "off-route"

    goto :goto_0

    :pswitch_4
    const-string v0, "wrong-way"

    goto :goto_0

    :pswitch_5
    const-string v0, "user"

    goto :goto_0

    :pswitch_6
    const-string v0, "detour"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public final P()V
    .locals 1

    iget-object v0, p0, Lnbisdk/y;->aQ:Lnbisdk/jm;

    invoke-interface {v0}, Lnbisdk/jm;->destroy()V

    iget-object v0, p0, Lnbisdk/y;->aR:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    return-void
.end method

.method public final declared-synchronized a(Lnbisdk/dl;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lnbisdk/y;->b()V

    invoke-direct {p0, p1}, Lnbisdk/y;->c(Lnbisdk/dl;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnbisdk/y;->aR:Ljava/util/Vector;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
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

.method public final af()V
    .locals 2

    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/tt;->mV()Lnbisdk/qv;

    move-result-object v0

    new-instance v1, Lnbisdk/am;

    invoke-direct {v1, p0}, Lnbisdk/am;-><init>(Lnbisdk/y;)V

    invoke-virtual {v0, v1}, Lnbisdk/qv;->b(Lnbisdk/ru;)Z

    return-void
.end method

.method public final ag()V
    .locals 2

    invoke-static {}, Lnbisdk/tt;->mP()Lnbisdk/tt;

    move-result-object v0

    invoke-virtual {v0}, Lnbisdk/tt;->mV()Lnbisdk/qv;

    move-result-object v0

    new-instance v1, Lnbisdk/an;

    invoke-direct {v1, p0}, Lnbisdk/an;-><init>(Lnbisdk/y;)V

    invoke-virtual {v0, v1}, Lnbisdk/qv;->b(Lnbisdk/ru;)Z

    return-void
.end method

.method public final b(B)Lnbisdk/cm;
    .locals 2

    iget-object v0, p0, Lnbisdk/y;->aQ:Lnbisdk/jm;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lnbisdk/jm;->e(B)Lnbisdk/cm;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized b(Lnbisdk/dl;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lnbisdk/y;->b()V

    invoke-direct {p0, p1}, Lnbisdk/y;->c(Lnbisdk/dl;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lnbisdk/y;->aR:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->removeElementAt(I)V
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
