.class public final Lnbisdk/k;
.super Lnbisdk/cr;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnbisdk/k$a;
    }
.end annotation


# instance fields
.field private ac:Lnbisdk/cr;

.field private ad:Lnbisdk/jz;

.field private ae:Lnbisdk/k$a;

.field private af:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lnbisdk/iy;",
            ">;"
        }
    .end annotation
.end field

.field private ag:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private ah:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ai:Lnbisdk/k;

.field private aj:Lnbisdk/ct;

.field private ak:[B

.field private final al:Lnbisdk/bt;

.field private am:Z


# direct methods
.method public constructor <init>(Lnbisdk/ct;Lnbisdk/jz;Lcom/nbi/common/NBIContext;)V
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Lnbisdk/cr;-><init>()V

    new-instance v0, Lnbisdk/k$a;

    invoke-direct {v0}, Lnbisdk/k$a;-><init>()V

    iput-object v0, p0, Lnbisdk/k;->ae:Lnbisdk/k$a;

    new-array v0, v1, [B

    iput-object v0, p0, Lnbisdk/k;->ak:[B

    iput-boolean v1, p0, Lnbisdk/k;->am:Z

    invoke-virtual {p3}, Lcom/nbi/common/NBIContext;->getInternalObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/bt;

    iput-object v0, p0, Lnbisdk/k;->al:Lnbisdk/bt;

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lnbisdk/k;->af:Ljava/util/Vector;

    iput-object p0, p0, Lnbisdk/k;->ai:Lnbisdk/k;

    iput-object p1, p0, Lnbisdk/k;->aj:Lnbisdk/ct;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lnbisdk/k;->ag:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lnbisdk/k;->ah:Ljava/util/HashSet;

    iput-object p2, p0, Lnbisdk/k;->ad:Lnbisdk/jz;

    new-instance v0, Lnbisdk/k$1;

    invoke-direct {v0, p0}, Lnbisdk/k$1;-><init>(Lnbisdk/k;)V

    iget-object v1, p0, Lnbisdk/k;->al:Lnbisdk/bt;

    invoke-virtual {v1}, Lnbisdk/bt;->nG()Lnbisdk/kd;

    move-result-object v1

    invoke-static {}, Lnbisdk/bt;->nC()Lcom/navbuilder/nb/e;

    move-result-object v2

    new-instance v3, Lnbisdk/tj;

    invoke-direct {v3, v0, v1, v2}, Lnbisdk/tj;-><init>(Lnbisdk/jz;Lnbisdk/kd;Lcom/navbuilder/nb/e;)V

    iput-object v3, p0, Lnbisdk/k;->ac:Lnbisdk/cr;

    iget-object v0, p0, Lnbisdk/k;->ac:Lnbisdk/cr;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "MapTileHandler returned null!!!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method static synthetic a(Lnbisdk/k;)Lnbisdk/cr;
    .locals 1

    iget-object v0, p0, Lnbisdk/k;->ac:Lnbisdk/cr;

    return-object v0
.end method

.method static synthetic b(Lnbisdk/k;)Ljava/util/Hashtable;
    .locals 1

    iget-object v0, p0, Lnbisdk/k;->ag:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic c(Lnbisdk/k;)Ljava/util/HashSet;
    .locals 1

    iget-object v0, p0, Lnbisdk/k;->ah:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic d(Lnbisdk/k;)Lnbisdk/k;
    .locals 1

    iget-object v0, p0, Lnbisdk/k;->ai:Lnbisdk/k;

    return-object v0
.end method

.method static synthetic e(Lnbisdk/k;)Lnbisdk/jz;
    .locals 1

    iget-object v0, p0, Lnbisdk/k;->ad:Lnbisdk/jz;

    return-object v0
.end method

.method static synthetic f(Lnbisdk/k;)Lnbisdk/ct;
    .locals 1

    iget-object v0, p0, Lnbisdk/k;->aj:Lnbisdk/ct;

    return-object v0
.end method


# virtual methods
.method public final a(Lnbisdk/mp;)Ljava/util/Vector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnbisdk/mp;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Lnbisdk/iy;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/navbuilder/nb/NBException;
        }
    .end annotation

    iget-boolean v0, p0, Lnbisdk/k;->am:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/k;->af:Ljava/util/Vector;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnbisdk/k;->ae:Lnbisdk/k$a;

    new-instance v1, Lnbisdk/k$2;

    invoke-direct {v1, p0, p1}, Lnbisdk/k$2;-><init>(Lnbisdk/k;Lnbisdk/mp;)V

    invoke-virtual {v0, v1}, Lnbisdk/k$a;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lnbisdk/k;->af:Ljava/util/Vector;

    goto :goto_0
.end method

.method public final a(Lcom/navbuilder/nb/NBException;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/navbuilder/nb/NBException;->getCustomData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/eu;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/navbuilder/nb/NBException;->getErrorCode()I

    move-result v1

    const/16 v2, 0x1454

    if-ne v1, v2, :cond_4

    new-instance v1, Lnbisdk/iy;

    iget-object v2, p0, Lnbisdk/k;->ak:[B

    invoke-direct {v1, v0, v2}, Lnbisdk/iy;-><init>(Lnbisdk/eu;[B)V

    iget-object v0, p0, Lnbisdk/k;->ai:Lnbisdk/k;

    invoke-virtual {p0, v1, v0}, Lnbisdk/k;->a(Lnbisdk/iy;Lnbisdk/cr;)V

    move v0, v4

    :goto_0
    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/navbuilder/nb/NBException;->getErrorCode()I

    move-result v0

    const/16 v1, 0xfba

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lnbisdk/k;->am:Z

    if-nez v0, :cond_0

    iput-boolean v4, p0, Lnbisdk/k;->am:Z

    iget-object v0, p0, Lnbisdk/k;->ai:Lnbisdk/k;

    invoke-virtual {v0}, Lnbisdk/k;->cancelRequest()V

    iget-object v0, p0, Lnbisdk/k;->al:Lnbisdk/bt;

    invoke-virtual {v0, p1}, Lnbisdk/bt;->f(Lcom/navbuilder/nb/NBException;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/navbuilder/nb/NBException;->getCustomData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/eu;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lnbisdk/k;->ag:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lnbisdk/eu;->fx()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnbisdk/k;->ag:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lnbisdk/eu;->fx()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NBMapTileHandlerDecoratoronRequestError.val is "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " maptile="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v2, p0, Lnbisdk/k;->ag:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lnbisdk/eu;->fx()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    const/4 v5, 0x2

    if-le v2, v5, :cond_2

    move v2, v3

    :goto_2
    if-eqz v2, :cond_3

    new-instance v2, Lnbisdk/mp;

    invoke-direct {v2}, Lnbisdk/mp;-><init>()V

    invoke-virtual {v2, v0}, Lnbisdk/mp;->b(Lnbisdk/eu;)V

    iget-object v3, p0, Lnbisdk/k;->ag:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lnbisdk/eu;->fx()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v5, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lnbisdk/k;->ah:Ljava/util/HashSet;

    invoke-virtual {v0}, Lnbisdk/eu;->fx()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "NBMapTileHandlerDecorator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "retry request maptile="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lnbisdk/eu;->fx()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lnbisdk/au$b;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lnbisdk/k$3;

    invoke-direct {v1, p0, v2}, Lnbisdk/k$3;-><init>(Lnbisdk/k;Lnbisdk/mp;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto/16 :goto_1

    :cond_2
    move v2, v4

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    iget-object v1, p0, Lnbisdk/k;->ag:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lnbisdk/eu;->fx()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_4
    move v0, v3

    goto/16 :goto_0
.end method

.method protected final a(Lnbisdk/iy;Lnbisdk/cr;)V
    .locals 2

    iget-object v0, p0, Lnbisdk/k;->ag:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lnbisdk/iy;->ik()Lnbisdk/eu;

    move-result-object v1

    invoke-virtual {v1}, Lnbisdk/eu;->fx()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lnbisdk/k;->ad:Lnbisdk/jz;

    invoke-interface {v0, p1, p2}, Lnbisdk/jz;->a(Lnbisdk/iy;Lnbisdk/cr;)V

    return-void
.end method

.method public final cancelRequest()V
    .locals 1

    iget-object v0, p0, Lnbisdk/k;->ae:Lnbisdk/k$a;

    invoke-virtual {v0}, Lnbisdk/k$a;->cancel()V

    iget-object v0, p0, Lnbisdk/k;->ag:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lnbisdk/k;->ag:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnbisdk/k;->ah:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lnbisdk/k;->ac:Lnbisdk/cr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/k;->ac:Lnbisdk/cr;

    invoke-virtual {v0}, Lnbisdk/cr;->cancelRequest()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final clear(Z)V
    .locals 1

    iget-object v0, p0, Lnbisdk/k;->ac:Lnbisdk/cr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/k;->ac:Lnbisdk/cr;

    invoke-virtual {v0, p1}, Lnbisdk/cr;->clear(Z)V

    :cond_0
    return-void
.end method

.method public final destroy()V
    .locals 3

    const/4 v2, 0x0

    iput-object v2, p0, Lnbisdk/k;->ai:Lnbisdk/k;

    iget-object v0, p0, Lnbisdk/k;->ae:Lnbisdk/k$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/k;->ae:Lnbisdk/k$a;

    invoke-virtual {v0}, Lnbisdk/k$a;->shutdown()V

    iput-object v2, p0, Lnbisdk/k;->ae:Lnbisdk/k$a;

    :cond_0
    iget-object v0, p0, Lnbisdk/k;->ac:Lnbisdk/cr;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnbisdk/k;->ac:Lnbisdk/cr;

    invoke-virtual {v0}, Lnbisdk/cr;->cancelRequest()V

    iget-object v0, p0, Lnbisdk/k;->ac:Lnbisdk/cr;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnbisdk/cr;->clear(Z)V

    iput-object v2, p0, Lnbisdk/k;->ac:Lnbisdk/cr;

    :cond_1
    iput-object v2, p0, Lnbisdk/k;->ad:Lnbisdk/jz;

    iput-object v2, p0, Lnbisdk/k;->ag:Ljava/util/Hashtable;

    iput-object v2, p0, Lnbisdk/k;->ah:Ljava/util/HashSet;

    iput-object v2, p0, Lnbisdk/k;->af:Ljava/util/Vector;

    iput-object v2, p0, Lnbisdk/k;->aj:Lnbisdk/ct;

    return-void
.end method

.method public final isRequestInProgress()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lnbisdk/k;->ac:Lnbisdk/cr;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lnbisdk/k;->ac:Lnbisdk/cr;

    invoke-virtual {v0}, Lnbisdk/cr;->isRequestInProgress()Z

    move-result v0

    :cond_0
    return v0
.end method

.method public final onLowMemory()V
    .locals 2

    iget-object v0, p0, Lnbisdk/k;->ac:Lnbisdk/cr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnbisdk/k;->ac:Lnbisdk/cr;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnbisdk/cr;->clear(Z)V

    :cond_0
    return-void
.end method
