.class public Lnbisdk/au$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnbisdk/au;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic bL:Lnbisdk/au;

.field private eE:Z

.field private eF:J

.field private eG:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lnbisdk/iy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lnbisdk/au;)V
    .locals 1

    iput-object p1, p0, Lnbisdk/au$b;->bL:Lnbisdk/au;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnbisdk/au$b;->eE:Z

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lnbisdk/au$b;->eG:Ljava/util/LinkedList;

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method private cT()Lnbisdk/iy;
    .locals 9

    const/4 v1, 0x1

    const/4 v4, 0x0

    :try_start_0
    iget-object v0, p0, Lnbisdk/au$b;->eG:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/iy;

    move-object v3, v0

    :goto_0
    invoke-virtual {v3}, Lnbisdk/iy;->ik()Lnbisdk/eu;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v0, p0, Lnbisdk/au$b;->bL:Lnbisdk/au;

    invoke-virtual {v0}, Lnbisdk/au;->dt()Lnbisdk/pc;

    move-result-object v0

    invoke-virtual {v5}, Lnbisdk/eu;->getX()I

    move-result v2

    invoke-virtual {v5}, Lnbisdk/eu;->getY()I

    move-result v6

    invoke-virtual {v5}, Lnbisdk/eu;->fk()I

    move-result v7

    invoke-virtual {v5}, Lnbisdk/eu;->getSize()I

    move-result v8

    invoke-static {v2, v6, v7, v8}, Lnbisdk/hf;->b(IIII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnbisdk/pc;->aX(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnbisdk/au$b;->bL:Lnbisdk/au;

    invoke-virtual {v0}, Lnbisdk/au;->jH()Lnbisdk/pc;

    move-result-object v0

    invoke-virtual {v5}, Lnbisdk/eu;->getX()I

    move-result v2

    invoke-virtual {v5}, Lnbisdk/eu;->getY()I

    move-result v6

    invoke-virtual {v5}, Lnbisdk/eu;->fk()I

    move-result v7

    invoke-virtual {v5}, Lnbisdk/eu;->getSize()I

    move-result v8

    invoke-static {v2, v6, v7, v8}, Lnbisdk/hf;->b(IIII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnbisdk/pc;->aX(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v4

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/hf;

    if-eqz v0, :cond_5

    invoke-virtual {v5}, Lnbisdk/eu;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v7, "base_map"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "satellite"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "hybrid"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_1
    iget-object v7, p0, Lnbisdk/au$b;->bL:Lnbisdk/au;

    invoke-static {v7}, Lnbisdk/au;->g(Lnbisdk/au;)Lnbisdk/ct;

    move-result-object v7

    invoke-virtual {v7}, Lnbisdk/ct;->dn()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v4

    :goto_2
    if-eqz v0, :cond_5

    move v0, v1

    :goto_3
    move v2, v0

    goto :goto_1

    :cond_2
    move v2, v4

    :cond_3
    if-nez v2, :cond_4

    iget-object v0, p0, Lnbisdk/au$b;->eG:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/iy;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    goto/16 :goto_0

    :cond_4
    move-object v0, v3

    :goto_4
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_4

    :cond_5
    move v0, v2

    goto :goto_3

    :cond_6
    move v0, v1

    goto :goto_2
.end method

.method private cU()V
    .locals 2

    invoke-direct {p0}, Lnbisdk/au$b;->cT()Lnbisdk/iy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lnbisdk/au$b;->bL:Lnbisdk/au;

    invoke-virtual {v1, v0}, Lnbisdk/au;->b(Lnbisdk/iy;)V

    :cond_0
    return-void
.end method


# virtual methods
.method final declared-synchronized a(Lnbisdk/iy;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnbisdk/au$b;->eG:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lnbisdk/au$b;->cS()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final cS()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-boolean v2, p0, Lnbisdk/au$b;->eE:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lnbisdk/au$b;->eG:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-eqz v2, :cond_3

    move v2, v1

    :goto_0
    if-nez v2, :cond_0

    iget-boolean v2, p0, Lnbisdk/au$b;->eE:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lnbisdk/au$b;->eG:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lnbisdk/au$b;->eF:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7d0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    if-eqz v0, :cond_2

    iget-object v0, p0, Lnbisdk/au$b;->bL:Lnbisdk/au;

    invoke-static {v0}, Lnbisdk/au;->e(Lnbisdk/au;)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lnbisdk/au$b$1;

    invoke-direct {v2, p0}, Lnbisdk/au$b$1;-><init>(Lnbisdk/au$b;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iput-boolean v1, p0, Lnbisdk/au$b;->eE:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lnbisdk/au$b;->eF:J

    :cond_2
    return-void

    :cond_3
    move v2, v0

    goto :goto_0
.end method

.method final declared-synchronized cV()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lnbisdk/au$b;->eE:Z

    invoke-direct {p0}, Lnbisdk/au$b;->cU()V

    invoke-direct {p0}, Lnbisdk/au$b;->cU()V

    invoke-virtual {p0}, Lnbisdk/au$b;->cS()V

    iget-object v0, p0, Lnbisdk/au$b;->bL:Lnbisdk/au;

    invoke-static {v0}, Lnbisdk/au;->e(Lnbisdk/au;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
