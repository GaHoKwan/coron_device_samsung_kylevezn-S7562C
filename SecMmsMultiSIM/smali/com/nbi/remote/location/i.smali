.class final Lcom/nbi/remote/location/i;
.super Ljava/lang/Object;


# instance fields
.field private ud:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/nbi/remote/location/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nbi/remote/location/i;->ud:Ljava/util/LinkedList;

    return-void
.end method

.method private O(Z)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nbi/remote/location/i;->ud:Ljava/util/LinkedList;

    if-nez v2, :cond_0

    if-eqz p1, :cond_2

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/nbi/remote/location/i;->ud:Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/nbi/remote/location/i;->ud:Ljava/util/LinkedList;

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private b(Lcom/nbi/remote/location/e;)Lcom/nbi/remote/location/e;
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nbi/remote/location/i;->O(Z)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nbi/remote/location/i;->ud:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractSequentialList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nbi/remote/location/e;

    invoke-virtual {v0}, Lcom/nbi/remote/location/e;->hD()B

    move-result v3

    invoke-virtual {p1}, Lcom/nbi/remote/location/e;->hD()B

    move-result v4

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/nbi/remote/location/e;)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nbi/remote/location/i;->O(Z)Z

    invoke-virtual {p1}, Lcom/nbi/remote/location/e;->hD()B

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/nbi/remote/location/i;->b(Lcom/nbi/remote/location/e;)Lcom/nbi/remote/location/e;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nbi/remote/location/i;->ud:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/nbi/remote/location/i;->b(Lcom/nbi/remote/location/e;)Lcom/nbi/remote/location/e;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nbi/remote/location/i;->ud:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/nbi/remote/location/a;

    invoke-direct {v0}, Lcom/nbi/remote/location/a;-><init>()V

    invoke-direct {p0, v0}, Lcom/nbi/remote/location/i;->b(Lcom/nbi/remote/location/e;)Lcom/nbi/remote/location/e;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nbi/remote/location/i;->ud:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final destroy()V
    .locals 1

    iget-object v0, p0, Lcom/nbi/remote/location/i;->ud:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method

.method public final kX()Lcom/nbi/remote/location/e;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nbi/remote/location/i;->O(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nbi/remote/location/i;->ud:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nbi/remote/location/e;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final kY()I
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nbi/remote/location/i;->O(Z)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nbi/remote/location/i;->ud:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    goto :goto_0
.end method
