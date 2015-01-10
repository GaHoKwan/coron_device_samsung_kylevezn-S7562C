.class final Lnbisdk/k$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnbisdk/k;->a(Lnbisdk/mp;)Ljava/util/Vector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic kV:Lnbisdk/k;

.field private synthetic kW:Lnbisdk/mp;


# direct methods
.method constructor <init>(Lnbisdk/k;Lnbisdk/mp;)V
    .locals 0

    iput-object p1, p0, Lnbisdk/k$2;->kV:Lnbisdk/k;

    iput-object p2, p0, Lnbisdk/k$2;->kW:Lnbisdk/mp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lnbisdk/k$2;->kV:Lnbisdk/k;

    invoke-static {v0}, Lnbisdk/k;->a(Lnbisdk/k;)Lnbisdk/cr;

    move-result-object v1

    iget-object v0, p0, Lnbisdk/k$2;->kV:Lnbisdk/k;

    invoke-static {v0}, Lnbisdk/k;->b(Lnbisdk/k;)Ljava/util/Hashtable;

    move-result-object v2

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v3, Lnbisdk/mp;

    invoke-direct {v3}, Lnbisdk/mp;-><init>()V

    iget-object v0, p0, Lnbisdk/k$2;->kW:Lnbisdk/mp;

    invoke-virtual {v0}, Lnbisdk/mp;->kc()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/eu;

    invoke-virtual {v0}, Lnbisdk/eu;->fx()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v3, v0}, Lnbisdk/mp;->b(Lnbisdk/eu;)V

    invoke-virtual {v0}, Lnbisdk/eu;->fx()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lnbisdk/k$2;->kV:Lnbisdk/k;

    invoke-static {v5}, Lnbisdk/k;->c(Lnbisdk/k;)Ljava/util/HashSet;

    move-result-object v5

    invoke-virtual {v0}, Lnbisdk/eu;->fx()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v3, v0}, Lnbisdk/mp;->b(Lnbisdk/eu;)V

    iget-object v5, p0, Lnbisdk/k$2;->kV:Lnbisdk/k;

    invoke-static {v5}, Lnbisdk/k;->c(Lnbisdk/k;)Ljava/util/HashSet;

    move-result-object v5

    invoke-virtual {v0}, Lnbisdk/eu;->fx()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_3
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    invoke-virtual {v3}, Lnbisdk/mp;->kc()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v1, v3}, Lnbisdk/cr;->a(Lnbisdk/mp;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnbisdk/iy;

    invoke-virtual {v0}, Lnbisdk/iy;->ij()[B

    move-result-object v3

    array-length v3, v3

    if-nez v3, :cond_5

    invoke-virtual {v0}, Lnbisdk/iy;->ik()Lnbisdk/eu;

    move-result-object v3

    invoke-virtual {v3}, Lnbisdk/eu;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "base_map"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v3, Lnbisdk/mp;

    invoke-direct {v3}, Lnbisdk/mp;-><init>()V

    invoke-virtual {v0}, Lnbisdk/iy;->ik()Lnbisdk/eu;

    move-result-object v0

    invoke-virtual {v3, v0}, Lnbisdk/mp;->b(Lnbisdk/eu;)V

    invoke-virtual {v1, v3}, Lnbisdk/cr;->a(Lnbisdk/mp;)Ljava/util/Vector;
    :try_end_1
    .catch Lcom/navbuilder/nb/NBException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    move-exception v0

    iget-object v1, p0, Lnbisdk/k$2;->kV:Lnbisdk/k;

    invoke-virtual {v1, v0}, Lnbisdk/k;->a(Lcom/navbuilder/nb/NBException;)V

    goto/16 :goto_0

    :cond_5
    :try_start_2
    iget-object v3, p0, Lnbisdk/k$2;->kV:Lnbisdk/k;

    iget-object v4, p0, Lnbisdk/k$2;->kV:Lnbisdk/k;

    invoke-static {v4}, Lnbisdk/k;->d(Lnbisdk/k;)Lnbisdk/k;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lnbisdk/k;->a(Lnbisdk/iy;Lnbisdk/cr;)V
    :try_end_2
    .catch Lcom/navbuilder/nb/NBException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0
.end method
