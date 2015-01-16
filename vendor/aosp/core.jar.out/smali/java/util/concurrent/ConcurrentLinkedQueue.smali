.class public Ljava/util/concurrent/ConcurrentLinkedQueue;
.super Ljava/util/AbstractQueue;
.source "ConcurrentLinkedQueue.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Queue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;,
        Ljava/util/concurrent/ConcurrentLinkedQueue$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue",
        "<TE;>;",
        "Ljava/util/Queue",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final UNSAFE:Lsun/misc/Unsafe; = null

#the value of this static final field might be set in the static constructor
.field private static final headOffset:J = 0x0L

.field private static final serialVersionUID:J = 0x2bafb2a664c708cL

.field private static final tailOffset:J


# instance fields
.field private volatile transient head:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field private volatile transient tail:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue$Node",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 766
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Ljava/util/concurrent/ConcurrentLinkedQueue;->UNSAFE:Lsun/misc/Unsafe;

    .line 767
    sget-object v0, Ljava/util/concurrent/ConcurrentLinkedQueue;->UNSAFE:Lsun/misc/Unsafe;

    const-string v1, "head"

    const-class v2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->objectFieldOffset(Lsun/misc/Unsafe;Ljava/lang/String;Ljava/lang/Class;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/concurrent/ConcurrentLinkedQueue;->headOffset:J

    .line 769
    sget-object v0, Ljava/util/concurrent/ConcurrentLinkedQueue;->UNSAFE:Lsun/misc/Unsafe;

    const-string v1, "tail"

    const-class v2, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->objectFieldOffset(Lsun/misc/Unsafe;Ljava/lang/String;Ljava/lang/Class;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/concurrent/ConcurrentLinkedQueue;->tailOffset:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 208
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedQueue;,"Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 209
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->tail:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->head:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 210
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 221
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedQueue;,"Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 222
    const/4 v1, 0x0

    .local v1, h:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    const/4 v4, 0x0

    .line 223
    .local v4, t:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 224
    .local v0, e:Ljava/lang/Object;,"TE;"
    invoke-static {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->checkNotNull(Ljava/lang/Object;)V

    .line 225
    new-instance v3, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    invoke-direct {v3, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;-><init>(Ljava/lang/Object;)V

    .line 226
    .local v3, newNode:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-nez v1, :cond_0

    .line 227
    move-object v4, v3

    move-object v1, v3

    goto :goto_0

    .line 229
    :cond_0
    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->lazySetNext(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)V

    .line 230
    move-object v4, v3

    goto :goto_0

    .line 233
    .end local v0           #e:Ljava/lang/Object;,"TE;"
    .end local v3           #newNode:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_1
    if-nez v1, :cond_2

    .line 234
    new-instance v4, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    .end local v4           #t:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;-><init>(Ljava/lang/Object;)V

    .restart local v4       #t:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    move-object v1, v4

    .line 235
    :cond_2
    iput-object v1, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->head:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 236
    iput-object v4, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->tail:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 237
    return-void
.end method

.method private casHead(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Z
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedQueue$Node",
            "<TE;>;",
            "Ljava/util/concurrent/ConcurrentLinkedQueue$Node",
            "<TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 777
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedQueue;,"Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    .local p1, cmp:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local p2, val:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    sget-object v0, Ljava/util/concurrent/ConcurrentLinkedQueue;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ConcurrentLinkedQueue;->headOffset:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private casTail(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Z
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedQueue$Node",
            "<TE;>;",
            "Ljava/util/concurrent/ConcurrentLinkedQueue$Node",
            "<TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 773
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedQueue;,"Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    .local p1, cmp:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local p2, val:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    sget-object v0, Ljava/util/concurrent/ConcurrentLinkedQueue;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ConcurrentLinkedQueue;->tailOffset:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static checkNotNull(Ljava/lang/Object;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 760
    if-nez p0, :cond_0

    .line 761
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 762
    :cond_0
    return-void
.end method

.method static objectFieldOffset(Lsun/misc/Unsafe;Ljava/lang/String;Ljava/lang/Class;)J
    .locals 4
    .parameter "UNSAFE"
    .parameter "field"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/misc/Unsafe;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)J"
        }
    .end annotation

    .prologue
    .line 783
    .local p2, klazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {p0, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 784
    :catch_0
    move-exception v0

    .line 786
    .local v0, e:Ljava/lang/NoSuchFieldException;
    new-instance v1, Ljava/lang/NoSuchFieldError;

    invoke-direct {v1, p1}, Ljava/lang/NoSuchFieldError;-><init>(Ljava/lang/String;)V

    .line 787
    .local v1, error:Ljava/lang/NoSuchFieldError;
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 788
    throw v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 733
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedQueue;,"Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 736
    const/4 v0, 0x0

    .local v0, h:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    const/4 v3, 0x0

    .line 738
    .local v3, t:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    .local v1, item:Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 740
    new-instance v2, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    invoke-direct {v2, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;-><init>(Ljava/lang/Object;)V

    .line 741
    .local v2, newNode:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-nez v0, :cond_0

    .line 742
    move-object v3, v2

    move-object v0, v2

    goto :goto_0

    .line 744
    :cond_0
    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->lazySetNext(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)V

    .line 745
    move-object v3, v2

    goto :goto_0

    .line 748
    .end local v2           #newNode:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_1
    if-nez v0, :cond_2

    .line 749
    new-instance v3, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    .end local v3           #t:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;-><init>(Ljava/lang/Object;)V

    .restart local v3       #t:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    move-object v0, v3

    .line 750
    :cond_2
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->head:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 751
    iput-object v3, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->tail:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 752
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 714
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedQueue;,"Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 717
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->first()Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v1

    .local v1, p:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_0
    if-eqz v1, :cond_1

    .line 718
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    .line 719
    .local v0, item:Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 720
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 717
    :cond_0
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->succ(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v1

    goto :goto_0

    .line 724
    .end local v0           #item:Ljava/lang/Object;
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 725
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 250
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedQueue;,"Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 471
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedQueue;,"Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    if-ne p1, p0, :cond_0

    .line 473
    new-instance v9, Ljava/lang/IllegalArgumentException;

    invoke-direct {v9}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v9

    .line 476
    :cond_0
    const/4 v0, 0x0

    .local v0, beginningOfTheEnd:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    const/4 v3, 0x0

    .line 477
    .local v3, last:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 478
    .local v1, e:Ljava/lang/Object;,"TE;"
    invoke-static {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->checkNotNull(Ljava/lang/Object;)V

    .line 479
    new-instance v4, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    invoke-direct {v4, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;-><init>(Ljava/lang/Object;)V

    .line 480
    .local v4, newNode:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-nez v0, :cond_1

    .line 481
    move-object v3, v4

    move-object v0, v4

    goto :goto_0

    .line 483
    :cond_1
    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->lazySetNext(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)V

    .line 484
    move-object v3, v4

    goto :goto_0

    .line 487
    .end local v1           #e:Ljava/lang/Object;,"TE;"
    .end local v4           #newNode:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_2
    if-nez v0, :cond_3

    .line 488
    const/4 v9, 0x0

    .line 505
    :goto_1
    return v9

    .line 491
    :cond_3
    iget-object v7, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->tail:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    .local v7, t:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    move-object v5, v7

    .line 492
    .local v5, p:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_4
    :goto_2
    iget-object v6, v5, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->next:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 493
    .local v6, q:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-nez v6, :cond_6

    .line 495
    const/4 v9, 0x0

    invoke-virtual {v5, v9, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->casNext(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 498
    invoke-direct {p0, v7, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->casTail(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 501
    iget-object v7, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->tail:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 502
    iget-object v9, v3, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->next:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    if-nez v9, :cond_5

    .line 503
    invoke-direct {p0, v7, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->casTail(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Z

    .line 505
    :cond_5
    const/4 v9, 0x1

    goto :goto_1

    .line 509
    :cond_6
    if-ne v5, v6, :cond_8

    .line 514
    iget-object v8, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->tail:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    .end local v7           #t:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local v8, t:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-eq v7, v8, :cond_7

    move-object v5, v8

    :goto_3
    move-object v7, v8

    .end local v8           #t:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .restart local v7       #t:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    goto :goto_2

    .end local v7           #t:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .restart local v8       #t:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_7
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->head:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    goto :goto_3

    .line 517
    .end local v8           #t:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .restart local v7       #t:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_8
    if-eq v5, v7, :cond_a

    iget-object v8, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->tail:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    .end local v7           #t:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .restart local v8       #t:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-eq v7, v8, :cond_9

    move-object v5, v8

    move-object v7, v8

    .end local v8           #t:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .restart local v7       #t:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_4
    goto :goto_2

    .end local v7           #t:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .restart local v8       #t:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_9
    move-object v7, v8

    .end local v8           #t:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .restart local v7       #t:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_a
    move-object v5, v6

    goto :goto_4
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedQueue;,"Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    const/4 v2, 0x0

    .line 420
    if-nez p1, :cond_1

    .line 426
    :cond_0
    :goto_0
    return v2

    .line 421
    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->first()Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v1

    .local v1, p:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_1
    if-eqz v1, :cond_0

    .line 422
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    .line 423
    .local v0, item:Ljava/lang/Object;,"TE;"
    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 424
    const/4 v2, 0x1

    goto :goto_0

    .line 421
    :cond_2
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->succ(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v1

    goto :goto_1
.end method

.method first()Ljava/util/concurrent/ConcurrentLinkedQueue$Node;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentLinkedQueue$Node",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 362
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedQueue;,"Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->head:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    .local v0, h:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    move-object v2, v0

    .line 363
    .local v2, p:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_0
    iget-object v4, v2, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    if-eqz v4, :cond_2

    const/4 v1, 0x1

    .line 364
    .local v1, hasItem:Z
    :goto_1
    if-nez v1, :cond_1

    iget-object v3, v2, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->next:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    .local v3, q:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-nez v3, :cond_4

    .line 365
    .end local v3           #q:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_1
    invoke-virtual {p0, v0, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->updateHead(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)V

    .line 366
    if-eqz v1, :cond_3

    .end local v2           #p:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_2
    return-object v2

    .line 363
    .end local v1           #hasItem:Z
    .restart local v2       #p:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 366
    .restart local v1       #hasItem:Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    .line 368
    .restart local v3       #q:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_4
    if-eq v2, v3, :cond_0

    .line 371
    move-object v2, v3

    .line 372
    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 382
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedQueue;,"Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->first()Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 621
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedQueue;,"Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;-><init>(Ljava/util/concurrent/ConcurrentLinkedQueue;)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 280
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedQueue;,"Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    invoke-static {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->checkNotNull(Ljava/lang/Object;)V

    .line 281
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;-><init>(Ljava/lang/Object;)V

    .line 283
    .local v0, newNode:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->tail:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    .local v3, t:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    move-object v1, v3

    .line 284
    .local v1, p:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_0
    :goto_0
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->next:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 285
    .local v2, q:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-nez v2, :cond_2

    .line 287
    const/4 v5, 0x0

    invoke-virtual {v1, v5, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->casNext(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 291
    if-eq v1, v3, :cond_1

    .line 292
    invoke-direct {p0, v3, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->casTail(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Z

    .line 293
    :cond_1
    const/4 v5, 0x1

    return v5

    .line 297
    :cond_2
    if-ne v1, v2, :cond_4

    .line 302
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->tail:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    .end local v3           #t:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local v4, t:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-eq v3, v4, :cond_3

    move-object v1, v4

    :goto_1
    move-object v3, v4

    .end local v4           #t:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .restart local v3       #t:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    goto :goto_0

    .end local v3           #t:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .restart local v4       #t:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_3
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->head:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    goto :goto_1

    .line 305
    .end local v4           #t:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .restart local v3       #t:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_4
    if-eq v1, v3, :cond_6

    iget-object v4, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->tail:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    .end local v3           #t:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .restart local v4       #t:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-eq v3, v4, :cond_5

    move-object v1, v4

    move-object v3, v4

    .end local v4           #t:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .restart local v3       #t:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_2
    goto :goto_0

    .end local v3           #t:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .restart local v4       #t:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_5
    move-object v3, v4

    .end local v4           #t:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .restart local v3       #t:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_6
    move-object v1, v2

    goto :goto_2
.end method

.method public peek()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 337
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedQueue;,"Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->head:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    .local v0, h:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    move-object v2, v0

    .line 338
    .local v2, p:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_0
    iget-object v1, v2, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    .line 339
    .local v1, item:Ljava/lang/Object;,"TE;"
    if-nez v1, :cond_1

    iget-object v3, v2, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->next:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    .local v3, q:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-nez v3, :cond_2

    .line 340
    .end local v3           #q:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_1
    invoke-virtual {p0, v0, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->updateHead(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)V

    .line 341
    return-object v1

    .line 343
    .restart local v3       #q:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_2
    if-eq v2, v3, :cond_0

    .line 346
    move-object v2, v3

    .line 347
    goto :goto_0
.end method

.method public poll()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedQueue;,"Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    const/4 v4, 0x0

    .line 312
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->head:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    .local v0, h:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    move-object v2, v0

    .line 313
    .local v2, p:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_0
    iget-object v1, v2, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    .line 315
    .local v1, item:Ljava/lang/Object;,"TE;"
    if-eqz v1, :cond_3

    invoke-virtual {v2, v1, v4}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->casItem(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 318
    if-eq v2, v0, :cond_1

    .line 319
    iget-object v3, v2, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->next:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    .local v3, q:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-eqz v3, :cond_2

    .end local v3           #q:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_1
    invoke-virtual {p0, v0, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->updateHead(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)V

    .line 324
    .end local v1           #item:Ljava/lang/Object;,"TE;"
    :cond_1
    :goto_2
    return-object v1

    .restart local v1       #item:Ljava/lang/Object;,"TE;"
    .restart local v3       #q:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_2
    move-object v3, v2

    .line 319
    goto :goto_1

    .line 322
    .end local v3           #q:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_3
    iget-object v3, v2, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->next:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    .restart local v3       #q:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-nez v3, :cond_4

    .line 323
    invoke-virtual {p0, v0, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->updateHead(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)V

    move-object v1, v4

    .line 324
    goto :goto_2

    .line 326
    :cond_4
    if-eq v2, v3, :cond_0

    .line 329
    move-object v2, v3

    .line 330
    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedQueue;,"Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    const/4 v4, 0x0

    .line 441
    if-nez p1, :cond_1

    .line 455
    :cond_0
    :goto_0
    return v4

    .line 442
    :cond_1
    const/4 v3, 0x0

    .line 443
    .local v3, pred:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->first()Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v2

    .local v2, p:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_1
    if-eqz v2, :cond_0

    .line 444
    iget-object v0, v2, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    .line 445
    .local v0, item:Ljava/lang/Object;,"TE;"
    if-eqz v0, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->casItem(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 448
    invoke-virtual {p0, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->succ(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v1

    .line 449
    .local v1, next:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    .line 450
    invoke-virtual {v3, v2, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->casNext(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Z

    .line 451
    :cond_2
    const/4 v4, 0x1

    goto :goto_0

    .line 453
    .end local v1           #next:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_3
    move-object v3, v2

    .line 443
    invoke-virtual {p0, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->succ(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v2

    goto :goto_1
.end method

.method public size()I
    .locals 3

    .prologue
    .line 402
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedQueue;,"Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    const/4 v0, 0x0

    .line 403
    .local v0, count:I
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->first()Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v1

    .local v1, p:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_0
    if-eqz v1, :cond_0

    .line 404
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 406
    add-int/lit8 v0, v0, 0x1

    const v2, 0x7fffffff

    if-ne v0, v2, :cond_1

    .line 408
    :cond_0
    return v0

    .line 403
    :cond_1
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->succ(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v1

    goto :goto_0
.end method

.method final succ(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Ljava/util/concurrent/ConcurrentLinkedQueue$Node;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedQueue$Node",
            "<TE;>;)",
            "Ljava/util/concurrent/ConcurrentLinkedQueue$Node",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 268
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedQueue;,"Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    .local p1, p:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    iget-object v0, p1, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->next:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 269
    .local v0, next:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-ne p1, v0, :cond_0

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedQueue;->head:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    .end local v0           #next:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_0
    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 4

    .prologue
    .line 536
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedQueue;,"Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 537
    .local v0, al:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->first()Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v2

    .local v2, p:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_0
    if-eqz v2, :cond_1

    .line 538
    iget-object v1, v2, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    .line 539
    .local v1, item:Ljava/lang/Object;,"TE;"
    if-eqz v1, :cond_0

    .line 540
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 537
    :cond_0
    invoke-virtual {p0, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->succ(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v2

    goto :goto_0

    .line 542
    .end local v1           #item:Ljava/lang/Object;,"TE;"
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 584
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedQueue;,"Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    .local p1, a:[Ljava/lang/Object;,"[TT;"
    const/4 v2, 0x0

    .line 586
    .local v2, k:I
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->first()Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v4

    .local v4, p:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    move v3, v2

    .end local v2           #k:I
    .local v3, k:I
    :goto_0
    if-eqz v4, :cond_0

    array-length v6, p1

    if-ge v3, v6, :cond_0

    .line 587
    iget-object v1, v4, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    .line 588
    .local v1, item:Ljava/lang/Object;,"TE;"
    if-eqz v1, :cond_5

    .line 589
    add-int/lit8 v2, v3, 0x1

    .end local v3           #k:I
    .restart local v2       #k:I
    aput-object v1, p1, v3

    .line 586
    :goto_1
    invoke-virtual {p0, v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->succ(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v4

    move v3, v2

    .end local v2           #k:I
    .restart local v3       #k:I
    goto :goto_0

    .line 591
    .end local v1           #item:Ljava/lang/Object;,"TE;"
    :cond_0
    if-nez v4, :cond_2

    .line 592
    array-length v6, p1

    if-ge v3, v6, :cond_1

    .line 593
    const/4 v6, 0x0

    aput-object v6, p1, v3

    .line 604
    .end local p1           #a:[Ljava/lang/Object;,"[TT;"
    :cond_1
    :goto_2
    return-object p1

    .line 598
    .restart local p1       #a:[Ljava/lang/Object;,"[TT;"
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 599
    .local v0, al:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->first()Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v5

    .local v5, q:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_3
    if-eqz v5, :cond_4

    .line 600
    iget-object v1, v5, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->item:Ljava/lang/Object;

    .line 601
    .restart local v1       #item:Ljava/lang/Object;,"TE;"
    if-eqz v1, :cond_3

    .line 602
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 599
    :cond_3
    invoke-virtual {p0, v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->succ(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v5

    goto :goto_3

    .line 604
    .end local v1           #item:Ljava/lang/Object;,"TE;"
    :cond_4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    goto :goto_2

    .end local v0           #al:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    .end local v5           #q:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .restart local v1       #item:Ljava/lang/Object;,"TE;"
    :cond_5
    move v2, v3

    .end local v3           #k:I
    .restart local v2       #k:I
    goto :goto_1
.end method

.method final updateHead(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedQueue$Node",
            "<TE;>;",
            "Ljava/util/concurrent/ConcurrentLinkedQueue$Node",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 258
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedQueue;,"Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>;"
    .local p1, h:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    .local p2, p:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-eq p1, p2, :cond_0

    invoke-direct {p0, p1, p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->casHead(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {p1, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->lazySetNext(Ljava/util/concurrent/ConcurrentLinkedQueue$Node;)V

    .line 260
    :cond_0
    return-void
.end method
