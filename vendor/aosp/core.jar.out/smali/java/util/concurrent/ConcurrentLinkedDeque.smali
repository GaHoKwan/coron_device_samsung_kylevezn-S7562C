.class public Ljava/util/concurrent/ConcurrentLinkedDeque;
.super Ljava/util/AbstractCollection;
.source "ConcurrentLinkedDeque.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Deque;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/ConcurrentLinkedDeque$1;,
        Ljava/util/concurrent/ConcurrentLinkedDeque$DescendingItr;,
        Ljava/util/concurrent/ConcurrentLinkedDeque$Itr;,
        Ljava/util/concurrent/ConcurrentLinkedDeque$AbstractItr;,
        Ljava/util/concurrent/ConcurrentLinkedDeque$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection",
        "<TE;>;",
        "Ljava/util/Deque",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final HOPS:I = 0x2

.field private static final NEXT_TERMINATOR:Ljava/util/concurrent/ConcurrentLinkedDeque$Node; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final PREV_TERMINATOR:Ljava/util/concurrent/ConcurrentLinkedDeque$Node; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final UNSAFE:Lsun/misc/Unsafe; = null

#the value of this static final field might be set in the static constructor
.field private static final headOffset:J = 0x0L

.field private static final serialVersionUID:J = 0xc29535d4a608822L

.field private static final tailOffset:J


# instance fields
.field private volatile transient head:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field private volatile transient tail:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 249
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    invoke-direct {v0, v2}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;-><init>(Ljava/lang/Object;)V

    sput-object v0, Ljava/util/concurrent/ConcurrentLinkedDeque;->PREV_TERMINATOR:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    .line 250
    sget-object v0, Ljava/util/concurrent/ConcurrentLinkedDeque;->PREV_TERMINATOR:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    sget-object v1, Ljava/util/concurrent/ConcurrentLinkedDeque;->PREV_TERMINATOR:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    iput-object v1, v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    .line 251
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    invoke-direct {v0, v2}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;-><init>(Ljava/lang/Object;)V

    sput-object v0, Ljava/util/concurrent/ConcurrentLinkedDeque;->NEXT_TERMINATOR:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    .line 252
    sget-object v0, Ljava/util/concurrent/ConcurrentLinkedDeque;->NEXT_TERMINATOR:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    sget-object v1, Ljava/util/concurrent/ConcurrentLinkedDeque;->NEXT_TERMINATOR:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    iput-object v1, v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    .line 1400
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Ljava/util/concurrent/ConcurrentLinkedDeque;->UNSAFE:Lsun/misc/Unsafe;

    .line 1402
    sget-object v0, Ljava/util/concurrent/ConcurrentLinkedDeque;->UNSAFE:Lsun/misc/Unsafe;

    const-string v1, "head"

    const-class v2, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/ConcurrentLinkedDeque;->objectFieldOffset(Lsun/misc/Unsafe;Ljava/lang/String;Ljava/lang/Class;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/concurrent/ConcurrentLinkedDeque;->headOffset:J

    .line 1404
    sget-object v0, Ljava/util/concurrent/ConcurrentLinkedDeque;->UNSAFE:Lsun/misc/Unsafe;

    const-string v1, "tail"

    const-class v2, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/ConcurrentLinkedDeque;->objectFieldOffset(Lsun/misc/Unsafe;Ljava/lang/String;Ljava/lang/Class;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/concurrent/ConcurrentLinkedDeque;->tailOffset:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 794
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedDeque;,"Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 795
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->tail:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->head:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    .line 796
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
    .line 807
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedDeque;,"Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 809
    const/4 v1, 0x0

    .local v1, h:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    const/4 v4, 0x0

    .line 810
    .local v4, t:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 811
    .local v0, e:Ljava/lang/Object;,"TE;"
    invoke-static {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->checkNotNull(Ljava/lang/Object;)V

    .line 812
    new-instance v3, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    invoke-direct {v3, v0}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;-><init>(Ljava/lang/Object;)V

    .line 813
    .local v3, newNode:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-nez v1, :cond_0

    .line 814
    move-object v4, v3

    move-object v1, v3

    goto :goto_0

    .line 816
    :cond_0
    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->lazySetNext(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    .line 817
    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->lazySetPrev(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    .line 818
    move-object v4, v3

    goto :goto_0

    .line 821
    .end local v0           #e:Ljava/lang/Object;,"TE;"
    .end local v3           #newNode:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_1
    invoke-direct {p0, v1, v4}, Ljava/util/concurrent/ConcurrentLinkedDeque;->initHeadTail(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    .line 822
    return-void
.end method

.method private casHead(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Z
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 1408
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedDeque;,"Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, cmp:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .local p2, val:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    sget-object v0, Ljava/util/concurrent/ConcurrentLinkedDeque;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ConcurrentLinkedDeque;->headOffset:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private casTail(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Z
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 1412
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedDeque;,"Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, cmp:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .local p2, val:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    sget-object v0, Ljava/util/concurrent/ConcurrentLinkedDeque;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Ljava/util/concurrent/ConcurrentLinkedDeque;->tailOffset:J

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
    .line 758
    if-nez p0, :cond_0

    .line 759
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 760
    :cond_0
    return-void
.end method

.method private initHeadTail(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedDeque;,"Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, h:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .local p2, t:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    const/4 v1, 0x0

    .line 828
    if-ne p1, p2, :cond_0

    .line 829
    if-nez p1, :cond_1

    .line 830
    new-instance p2, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    .end local p2           #t:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    invoke-direct {p2, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;-><init>(Ljava/lang/Object;)V

    .restart local p2       #t:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    move-object p1, p2

    .line 839
    :cond_0
    :goto_0
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->head:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    .line 840
    iput-object p2, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->tail:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    .line 841
    return-void

    .line 833
    :cond_1
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;-><init>(Ljava/lang/Object;)V

    .line 834
    .local v0, newNode:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    invoke-virtual {p2, v0}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->lazySetNext(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    .line 835
    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->lazySetPrev(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    .line 836
    move-object p2, v0

    goto :goto_0
.end method

.method private linkFirst(Ljava/lang/Object;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 314
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedDeque;,"Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    invoke-static {p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->checkNotNull(Ljava/lang/Object;)V

    .line 315
    new-instance v2, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    invoke-direct {v2, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;-><init>(Ljava/lang/Object;)V

    .line 319
    .local v2, newNode:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->head:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    .local v0, h:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    move-object v3, v0

    .line 320
    .local v3, p:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_1
    :goto_0
    iget-object v4, v3, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    .local v4, q:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-eqz v4, :cond_3

    move-object v3, v4

    iget-object v4, v4, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-eqz v4, :cond_3

    .line 324
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->head:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    .end local v0           #h:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .local v1, h:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-eq v0, v1, :cond_2

    move-object v3, v1

    :goto_1
    move-object v0, v1

    .end local v1           #h:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v0       #h:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    goto :goto_0

    .end local v0           #h:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v1       #h:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_2
    move-object v3, v4

    goto :goto_1

    .line 325
    .end local v1           #h:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v0       #h:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_3
    iget-object v5, v3, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-eq v5, v3, :cond_0

    .line 329
    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->lazySetNext(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    .line 330
    const/4 v5, 0x0

    invoke-virtual {v3, v5, v2}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->casPrev(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 334
    if-eq v3, v0, :cond_4

    .line 335
    invoke-direct {p0, v0, v2}, Ljava/util/concurrent/ConcurrentLinkedDeque;->casHead(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Z

    .line 336
    :cond_4
    return-void
.end method

.method private linkLast(Ljava/lang/Object;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 347
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedDeque;,"Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    invoke-static {p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->checkNotNull(Ljava/lang/Object;)V

    .line 348
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;-><init>(Ljava/lang/Object;)V

    .line 352
    .local v0, newNode:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_0
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->tail:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    .local v3, t:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    move-object v1, v3

    .line 353
    .local v1, p:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_1
    :goto_0
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    .local v2, q:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-eqz v2, :cond_3

    move-object v1, v2

    iget-object v2, v2, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-eqz v2, :cond_3

    .line 357
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->tail:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    .end local v3           #t:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .local v4, t:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-eq v3, v4, :cond_2

    move-object v1, v4

    :goto_1
    move-object v3, v4

    .end local v4           #t:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v3       #t:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    goto :goto_0

    .end local v3           #t:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v4       #t:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_2
    move-object v1, v2

    goto :goto_1

    .line 358
    .end local v4           #t:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v3       #t:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_3
    iget-object v5, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-eq v5, v1, :cond_0

    .line 362
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->lazySetPrev(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    .line 363
    const/4 v5, 0x0

    invoke-virtual {v1, v5, v0}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->casNext(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 367
    if-eq v1, v3, :cond_4

    .line 368
    invoke-direct {p0, v3, v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->casTail(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Z

    .line 369
    :cond_4
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
    .line 1418
    .local p2, klazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {p0, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 1419
    :catch_0
    move-exception v0

    .line 1421
    .local v0, e:Ljava/lang/NoSuchFieldException;
    new-instance v1, Ljava/lang/NoSuchFieldError;

    invoke-direct {v1, p1}, Ljava/lang/NoSuchFieldError;-><init>(Ljava/lang/String;)V

    .line 1422
    .local v1, error:Ljava/lang/NoSuchFieldError;
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1423
    throw v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1379
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedDeque;,"Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1382
    const/4 v0, 0x0

    .local v0, h:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    const/4 v3, 0x0

    .line 1384
    .local v3, t:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    .local v1, item:Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 1386
    new-instance v2, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    invoke-direct {v2, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;-><init>(Ljava/lang/Object;)V

    .line 1387
    .local v2, newNode:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-nez v0, :cond_0

    .line 1388
    move-object v3, v2

    move-object v0, v2

    goto :goto_0

    .line 1390
    :cond_0
    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->lazySetNext(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    .line 1391
    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->lazySetPrev(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    .line 1392
    move-object v3, v2

    goto :goto_0

    .line 1395
    .end local v2           #newNode:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_1
    invoke-direct {p0, v0, v3}, Ljava/util/concurrent/ConcurrentLinkedDeque;->initHeadTail(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    .line 1396
    return-void
.end method

.method private screenNullResult(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .prologue
    .line 770
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedDeque;,"Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, v:Ljava/lang/Object;,"TE;"
    if-nez p1, :cond_0

    .line 771
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 772
    :cond_0
    return-object p1
.end method

.method private skipDeletedPredecessors(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 620
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedDeque;,"Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, x:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_0
    iget-object v1, p1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    .line 624
    .local v1, prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    move-object v0, v1

    .line 627
    .local v0, p:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_0
    iget-object v3, v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    if-eqz v3, :cond_3

    .line 642
    :cond_1
    if-eq v1, v0, :cond_2

    invoke-virtual {p1, v1, v0}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->casPrev(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 646
    :cond_2
    :goto_1
    return-void

    .line 629
    :cond_3
    iget-object v2, v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    .line 630
    .local v2, q:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-nez v2, :cond_5

    .line 631
    iget-object v3, v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-ne v3, v0, :cond_1

    .line 645
    .end local v2           #q:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_4
    iget-object v3, p1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    if-nez v3, :cond_0

    iget-object v3, p1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-eqz v3, :cond_0

    goto :goto_1

    .line 635
    .restart local v2       #q:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_5
    if-eq v0, v2, :cond_4

    .line 638
    move-object v0, v2

    .line 639
    goto :goto_0
.end method

.method private skipDeletedSuccessors(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 651
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedDeque;,"Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, x:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_0
    iget-object v0, p1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    .line 655
    .local v0, next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    move-object v1, v0

    .line 658
    .local v1, p:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_0
    iget-object v3, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    if-eqz v3, :cond_3

    .line 673
    :cond_1
    if-eq v0, v1, :cond_2

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->casNext(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 677
    :cond_2
    :goto_1
    return-void

    .line 660
    :cond_3
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    .line 661
    .local v2, q:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-nez v2, :cond_5

    .line 662
    iget-object v3, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-ne v3, v1, :cond_1

    .line 676
    .end local v2           #q:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_4
    iget-object v3, p1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    if-nez v3, :cond_0

    iget-object v3, p1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-eqz v3, :cond_0

    goto :goto_1

    .line 666
    .restart local v2       #q:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_5
    if-eq v1, v2, :cond_4

    .line 669
    move-object v1, v2

    .line 670
    goto :goto_0
.end method

.method private toArrayList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 782
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedDeque;,"Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 783
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->first()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v2

    .local v2, p:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_0
    if-eqz v2, :cond_1

    .line 784
    iget-object v0, v2, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    .line 785
    .local v0, item:Ljava/lang/Object;,"TE;"
    if-eqz v0, :cond_0

    .line 786
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 783
    :cond_0
    invoke-virtual {p0, v2}, Ljava/util/concurrent/ConcurrentLinkedDeque;->succ(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v2

    goto :goto_0

    .line 788
    .end local v0           #item:Ljava/lang/Object;,"TE;"
    :cond_1
    return-object v1
.end method

.method private unlinkFirst(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 496
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedDeque;,"Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, first:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .local p2, next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    const/4 v0, 0x0

    .local v0, o:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    move-object v1, p2

    .line 497
    .local v1, p:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_0
    iget-object v3, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    if-nez v3, :cond_0

    iget-object v2, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    .local v2, q:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-nez v2, :cond_3

    .line 498
    .end local v2           #q:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_0
    if-eqz v0, :cond_2

    iget-object v3, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-eq v3, v1, :cond_2

    invoke-virtual {p1, p2, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->casNext(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 499
    invoke-direct {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->skipDeletedPredecessors(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    .line 500
    iget-object v3, p1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-nez v3, :cond_2

    iget-object v3, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-eqz v3, :cond_1

    iget-object v3, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    if-eqz v3, :cond_2

    :cond_1
    iget-object v3, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-ne v3, p1, :cond_2

    .line 504
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->updateHead()V

    .line 505
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->updateTail()V

    .line 508
    invoke-virtual {v0, v0}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->lazySetNext(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    .line 509
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->prevTerminator()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->lazySetPrev(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    .line 515
    :cond_2
    return-void

    .line 514
    .restart local v2       #q:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_3
    if-eq v1, v2, :cond_2

    .line 517
    move-object v0, v1

    .line 518
    move-object v1, v2

    goto :goto_0
.end method

.method private unlinkLast(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 530
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedDeque;,"Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, last:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .local p2, prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    const/4 v0, 0x0

    .local v0, o:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    move-object v1, p2

    .line 531
    .local v1, p:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_0
    iget-object v3, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    if-nez v3, :cond_0

    iget-object v2, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    .local v2, q:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-nez v2, :cond_3

    .line 532
    .end local v2           #q:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_0
    if-eqz v0, :cond_2

    iget-object v3, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-eq v3, v1, :cond_2

    invoke-virtual {p1, p2, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->casPrev(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 533
    invoke-direct {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->skipDeletedSuccessors(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    .line 534
    iget-object v3, p1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-nez v3, :cond_2

    iget-object v3, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-eqz v3, :cond_1

    iget-object v3, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    if-eqz v3, :cond_2

    :cond_1
    iget-object v3, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-ne v3, p1, :cond_2

    .line 538
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->updateHead()V

    .line 539
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->updateTail()V

    .line 542
    invoke-virtual {v0, v0}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->lazySetPrev(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    .line 543
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->nextTerminator()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->lazySetNext(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    .line 549
    :cond_2
    return-void

    .line 548
    .restart local v2       #q:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_3
    if-eq v1, v2, :cond_2

    .line 551
    move-object v0, v1

    .line 552
    move-object v1, v2

    goto :goto_0
.end method

.method private final updateHead()V
    .locals 4

    .prologue
    .line 568
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedDeque;,"Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->head:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    .local v0, h:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    iget-object v3, v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    if-nez v3, :cond_2

    iget-object v1, v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    .local v1, p:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-eqz v1, :cond_2

    .line 570
    :goto_0
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    .local v2, q:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-eqz v2, :cond_1

    move-object v1, v2

    iget-object v2, v2, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-nez v2, :cond_3

    .line 574
    :cond_1
    invoke-direct {p0, v0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->casHead(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 585
    .end local v1           #p:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .end local v2           #q:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_2
    return-void

    .line 579
    .restart local v1       #p:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v2       #q:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_3
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->head:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-ne v0, v3, :cond_0

    .line 582
    move-object v1, v2

    goto :goto_0
.end method

.method private final updateTail()V
    .locals 4

    .prologue
    .line 598
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedDeque;,"Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    :cond_0
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->tail:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    .local v2, t:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    iget-object v3, v2, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    if-nez v3, :cond_2

    iget-object v0, v2, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    .local v0, p:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-eqz v0, :cond_2

    .line 600
    :goto_0
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    .local v1, q:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-eqz v1, :cond_1

    move-object v0, v1

    iget-object v1, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-nez v1, :cond_3

    .line 604
    :cond_1
    invoke-direct {p0, v2, v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->casTail(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 615
    .end local v0           #p:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .end local v1           #q:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_2
    return-void

    .line 609
    .restart local v0       #p:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v1       #q:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_3
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->tail:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-ne v2, v3, :cond_0

    .line 612
    move-object v0, v1

    goto :goto_0
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
    .line 1360
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedDeque;,"Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1363
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->first()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v1

    .local v1, p:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_0
    if-eqz v1, :cond_1

    .line 1364
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    .line 1365
    .local v0, item:Ljava/lang/Object;,"TE;"
    if-eqz v0, :cond_0

    .line 1366
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1363
    :cond_0
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->succ(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v1

    goto :goto_0

    .line 1370
    .end local v0           #item:Ljava/lang/Object;,"TE;"
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1371
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
    .line 983
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedDeque;,"Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->offerLast(Ljava/lang/Object;)Z

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
    .line 1113
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedDeque;,"Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    if-ne p1, p0, :cond_0

    .line 1115
    new-instance v9, Ljava/lang/IllegalArgumentException;

    invoke-direct {v9}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v9

    .line 1118
    :cond_0
    const/4 v0, 0x0

    .local v0, beginningOfTheEnd:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    const/4 v3, 0x0

    .line 1119
    .local v3, last:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1120
    .local v1, e:Ljava/lang/Object;,"TE;"
    invoke-static {v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->checkNotNull(Ljava/lang/Object;)V

    .line 1121
    new-instance v4, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    invoke-direct {v4, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;-><init>(Ljava/lang/Object;)V

    .line 1122
    .local v4, newNode:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-nez v0, :cond_1

    .line 1123
    move-object v3, v4

    move-object v0, v4

    goto :goto_0

    .line 1125
    :cond_1
    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->lazySetNext(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    .line 1126
    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->lazySetPrev(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    .line 1127
    move-object v3, v4

    goto :goto_0

    .line 1130
    .end local v1           #e:Ljava/lang/Object;,"TE;"
    .end local v4           #newNode:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_2
    if-nez v0, :cond_4

    .line 1131
    const/4 v9, 0x0

    .line 1157
    :goto_1
    return v9

    .line 1142
    .local v5, p:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .local v6, q:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .local v7, t:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_3
    iget-object v9, v5, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-ne v9, v5, :cond_7

    .line 1136
    .end local v5           #p:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .end local v6           #q:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .end local v7           #t:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_4
    iget-object v7, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->tail:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    .restart local v7       #t:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    move-object v5, v7

    .line 1137
    .restart local v5       #p:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_5
    :goto_2
    iget-object v6, v5, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    .restart local v6       #q:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-eqz v6, :cond_3

    move-object v5, v6

    iget-object v6, v6, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-eqz v6, :cond_3

    .line 1141
    iget-object v8, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->tail:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    .end local v7           #t:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .local v8, t:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-eq v7, v8, :cond_6

    move-object v5, v8

    :goto_3
    move-object v7, v8

    .end local v8           #t:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v7       #t:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    goto :goto_2

    .end local v7           #t:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v8       #t:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_6
    move-object v5, v6

    goto :goto_3

    .line 1146
    .end local v8           #t:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v7       #t:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_7
    invoke-virtual {v0, v5}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->lazySetPrev(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    .line 1147
    const/4 v9, 0x0

    invoke-virtual {v5, v9, v0}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->casNext(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1150
    invoke-direct {p0, v7, v3}, Ljava/util/concurrent/ConcurrentLinkedDeque;->casTail(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 1153
    iget-object v7, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->tail:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    .line 1154
    iget-object v9, v3, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-nez v9, :cond_8

    .line 1155
    invoke-direct {p0, v7, v3}, Ljava/util/concurrent/ConcurrentLinkedDeque;->casTail(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Z

    .line 1157
    :cond_8
    const/4 v9, 0x1

    goto :goto_1
.end method

.method public addFirst(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 851
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedDeque;,"Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->linkFirst(Ljava/lang/Object;)V

    .line 852
    return-void
.end method

.method public addLast(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 864
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedDeque;,"Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->linkLast(Ljava/lang/Object;)V

    .line 865
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 1168
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedDeque;,"Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1170
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedDeque;,"Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    const/4 v2, 0x0

    .line 1043
    if-nez p1, :cond_1

    .line 1049
    :cond_0
    :goto_0
    return v2

    .line 1044
    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->first()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v1

    .local v1, p:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_1
    if-eqz v1, :cond_0

    .line 1045
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    .line 1046
    .local v0, item:Ljava/lang/Object;,"TE;"
    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1047
    const/4 v2, 0x1

    goto :goto_0

    .line 1044
    :cond_2
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->succ(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v1

    goto :goto_1
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1263
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedDeque;,"Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque$DescendingItr;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque$DescendingItr;-><init>(Ljava/util/concurrent/ConcurrentLinkedDeque;Ljava/util/concurrent/ConcurrentLinkedDeque$1;)V

    return-object v0
.end method

.method public element()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 989
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedDeque;,"Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method first()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 709
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedDeque;,"Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->head:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    .local v0, h:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    move-object v2, v0

    .line 710
    .local v2, p:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_0
    iget-object v3, v2, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    .local v3, q:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-eqz v3, :cond_2

    move-object v2, v3

    iget-object v3, v3, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-eqz v3, :cond_2

    .line 714
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->head:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    .end local v0           #h:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .local v1, h:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-eq v0, v1, :cond_1

    move-object v2, v1

    :goto_1
    move-object v0, v1

    .end local v1           #h:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v0       #h:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    goto :goto_0

    .end local v0           #h:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v1       #h:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_1
    move-object v2, v3

    goto :goto_1

    .line 715
    .end local v1           #h:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v0       #h:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_2
    if-eq v2, v0, :cond_3

    invoke-direct {p0, v0, v2}, Ljava/util/concurrent/ConcurrentLinkedDeque;->casHead(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 719
    :cond_3
    return-object v2
.end method

.method public getFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 915
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedDeque;,"Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->screenNullResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getLast()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 922
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedDeque;,"Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->screenNullResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1058
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedDeque;,"Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->peekFirst()Ljava/lang/Object;

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
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 1245
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedDeque;,"Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Itr;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque$Itr;-><init>(Ljava/util/concurrent/ConcurrentLinkedDeque;Ljava/util/concurrent/ConcurrentLinkedDeque$1;)V

    return-object v0
.end method

.method last()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 734
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedDeque;,"Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    :cond_0
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->tail:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    .local v2, t:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    move-object v0, v2

    .line 735
    .local v0, p:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_0
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    .local v1, q:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-eqz v1, :cond_2

    move-object v0, v1

    iget-object v1, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-eqz v1, :cond_2

    .line 739
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentLinkedDeque;->tail:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    .end local v2           #t:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .local v3, t:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-eq v2, v3, :cond_1

    move-object v0, v3

    :goto_1
    move-object v2, v3

    .end local v3           #t:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v2       #t:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    goto :goto_0

    .end local v2           #t:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v3       #t:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_1
    move-object v0, v1

    goto :goto_1

    .line 740
    .end local v3           #t:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v2       #t:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_2
    if-eq v0, v2, :cond_3

    invoke-direct {p0, v2, v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->casTail(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 744
    :cond_3
    return-object v0
.end method

.method nextTerminator()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 262
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedDeque;,"Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    sget-object v0, Ljava/util/concurrent/ConcurrentLinkedDeque;->NEXT_TERMINATOR:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 971
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedDeque;,"Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->offerLast(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public offerFirst(Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 875
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedDeque;,"Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->linkFirst(Ljava/lang/Object;)V

    .line 876
    const/4 v0, 0x1

    return v0
.end method

.method public offerLast(Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 889
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedDeque;,"Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->linkLast(Ljava/lang/Object;)V

    .line 890
    const/4 v0, 0x1

    return v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 988
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedDeque;,"Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public peekFirst()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 894
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedDeque;,"Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->first()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v1

    .local v1, p:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_0
    if-eqz v1, :cond_1

    .line 895
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    .line 896
    .local v0, item:Ljava/lang/Object;,"TE;"
    if-eqz v0, :cond_0

    .line 899
    .end local v0           #item:Ljava/lang/Object;,"TE;"
    :goto_1
    return-object v0

    .line 894
    .restart local v0       #item:Ljava/lang/Object;,"TE;"
    :cond_0
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->succ(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v1

    goto :goto_0

    .line 899
    .end local v0           #item:Ljava/lang/Object;,"TE;"
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public peekLast()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 903
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedDeque;,"Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->last()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v1

    .local v1, p:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_0
    if-eqz v1, :cond_1

    .line 904
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    .line 905
    .local v0, item:Ljava/lang/Object;,"TE;"
    if-eqz v0, :cond_0

    .line 908
    .end local v0           #item:Ljava/lang/Object;,"TE;"
    :goto_1
    return-object v0

    .line 903
    .restart local v0       #item:Ljava/lang/Object;,"TE;"
    :cond_0
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->pred(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v1

    goto :goto_0

    .line 908
    .end local v0           #item:Ljava/lang/Object;,"TE;"
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 986
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedDeque;,"Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pollFirst()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedDeque;,"Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    const/4 v2, 0x0

    .line 926
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->first()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v1

    .local v1, p:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_0
    if-eqz v1, :cond_1

    .line 927
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    .line 928
    .local v0, item:Ljava/lang/Object;,"TE;"
    if-eqz v0, :cond_0

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->casItem(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 929
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->unlink(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    .line 933
    .end local v0           #item:Ljava/lang/Object;,"TE;"
    :goto_1
    return-object v0

    .line 926
    .restart local v0       #item:Ljava/lang/Object;,"TE;"
    :cond_0
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->succ(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v1

    goto :goto_0

    .end local v0           #item:Ljava/lang/Object;,"TE;"
    :cond_1
    move-object v0, v2

    .line 933
    goto :goto_1
.end method

.method public pollLast()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedDeque;,"Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    const/4 v2, 0x0

    .line 937
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->last()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v1

    .local v1, p:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_0
    if-eqz v1, :cond_1

    .line 938
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    .line 939
    .local v0, item:Ljava/lang/Object;,"TE;"
    if-eqz v0, :cond_0

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->casItem(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 940
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->unlink(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    .line 944
    .end local v0           #item:Ljava/lang/Object;,"TE;"
    :goto_1
    return-object v0

    .line 937
    .restart local v0       #item:Ljava/lang/Object;,"TE;"
    :cond_0
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->pred(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v1

    goto :goto_0

    .end local v0           #item:Ljava/lang/Object;,"TE;"
    :cond_1
    move-object v0, v2

    .line 944
    goto :goto_1
.end method

.method public pop()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 991
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedDeque;,"Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final pred(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Ljava/util/concurrent/ConcurrentLinkedDeque$Node;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;)",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 696
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedDeque;,"Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, p:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    iget-object v0, p1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    .line 697
    .local v0, q:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->last()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v0

    .end local v0           #q:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_0
    return-object v0
.end method

.method prevTerminator()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 257
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedDeque;,"Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    sget-object v0, Ljava/util/concurrent/ConcurrentLinkedDeque;->PREV_TERMINATOR:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    return-object v0
.end method

.method public push(Ljava/lang/Object;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 990
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedDeque;,"Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, e:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->addFirst(Ljava/lang/Object;)V

    return-void
.end method

.method public remove()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 987
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedDeque;,"Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 1097
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedDeque;,"Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->removeFirstOccurrence(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 951
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedDeque;,"Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->screenNullResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeFirstOccurrence(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 1003
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedDeque;,"Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    invoke-static {p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->checkNotNull(Ljava/lang/Object;)V

    .line 1004
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->first()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v1

    .local v1, p:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_0
    if-eqz v1, :cond_1

    .line 1005
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    .line 1006
    .local v0, item:Ljava/lang/Object;,"TE;"
    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->casItem(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1007
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->unlink(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    .line 1008
    const/4 v2, 0x1

    .line 1011
    .end local v0           #item:Ljava/lang/Object;,"TE;"
    :goto_1
    return v2

    .line 1004
    .restart local v0       #item:Ljava/lang/Object;,"TE;"
    :cond_0
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->succ(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v1

    goto :goto_0

    .line 1011
    .end local v0           #item:Ljava/lang/Object;,"TE;"
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public removeLast()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 958
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedDeque;,"Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->pollLast()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->screenNullResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeLastOccurrence(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 1024
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedDeque;,"Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    invoke-static {p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->checkNotNull(Ljava/lang/Object;)V

    .line 1025
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->last()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v1

    .local v1, p:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_0
    if-eqz v1, :cond_1

    .line 1026
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    .line 1027
    .local v0, item:Ljava/lang/Object;,"TE;"
    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->casItem(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1028
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->unlink(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    .line 1029
    const/4 v2, 0x1

    .line 1032
    .end local v0           #item:Ljava/lang/Object;,"TE;"
    :goto_1
    return v2

    .line 1025
    .restart local v0       #item:Ljava/lang/Object;,"TE;"
    :cond_0
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->pred(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v1

    goto :goto_0

    .line 1032
    .end local v0           #item:Ljava/lang/Object;,"TE;"
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public size()I
    .locals 3

    .prologue
    .line 1078
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedDeque;,"Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    const/4 v0, 0x0

    .line 1079
    .local v0, count:I
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->first()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v1

    .local v1, p:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_0
    if-eqz v1, :cond_0

    .line 1080
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 1082
    add-int/lit8 v0, v0, 0x1

    const v2, 0x7fffffff

    if-ne v0, v2, :cond_1

    .line 1084
    :cond_0
    return v0

    .line 1079
    :cond_1
    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->succ(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v1

    goto :goto_0
.end method

.method final succ(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)Ljava/util/concurrent/ConcurrentLinkedDeque$Node;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;)",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 686
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedDeque;,"Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, p:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    iget-object v0, p1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    .line 687
    .local v0, q:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->first()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v0

    .end local v0           #q:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :cond_0
    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1186
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedDeque;,"Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->toArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 1228
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedDeque;,"Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, a:[Ljava/lang/Object;,"[TT;"
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->toArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method unlink(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedDeque$Node",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 387
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedDeque;,"Ljava/util/concurrent/ConcurrentLinkedDeque<TE;>;"
    .local p1, x:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    iget-object v7, p1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    .line 388
    .local v7, prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    iget-object v5, p1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    .line 389
    .local v5, next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-nez v7, :cond_1

    .line 390
    invoke-direct {p0, p1, v5}, Ljava/util/concurrent/ConcurrentLinkedDeque;->unlinkFirst(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    .line 487
    :cond_0
    :goto_0
    return-void

    .line 391
    :cond_1
    if-nez v5, :cond_2

    .line 392
    invoke-direct {p0, p1, v7}, Ljava/util/concurrent/ConcurrentLinkedDeque;->unlinkLast(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    goto :goto_0

    .line 415
    :cond_2
    const/4 v2, 0x1

    .line 418
    .local v2, hops:I
    move-object v6, v7

    .line 419
    .local v6, p:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    :goto_1
    iget-object v9, v6, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    if-eqz v9, :cond_4

    .line 420
    move-object v0, v6

    .line 421
    .local v0, activePred:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    const/4 v3, 0x0

    .line 439
    .local v3, isFirst:Z
    :goto_2
    move-object v6, v5

    .line 440
    :goto_3
    iget-object v9, v6, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    if-eqz v9, :cond_6

    .line 441
    move-object v1, v6

    .line 442
    .local v1, activeSucc:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    const/4 v4, 0x0

    .line 460
    .local v4, isLast:Z
    :goto_4
    const/4 v9, 0x2

    if-ge v2, v9, :cond_3

    or-int v9, v3, v4

    if-nez v9, :cond_0

    .line 467
    :cond_3
    invoke-direct {p0, v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->skipDeletedSuccessors(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    .line 468
    invoke-direct {p0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->skipDeletedPredecessors(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    .line 471
    or-int v9, v3, v4

    if-eqz v9, :cond_0

    iget-object v9, v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-ne v9, v1, :cond_0

    iget-object v9, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-ne v9, v0, :cond_0

    if-eqz v3, :cond_8

    iget-object v9, v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-nez v9, :cond_0

    :goto_5
    if-eqz v4, :cond_9

    iget-object v9, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-nez v9, :cond_0

    .line 479
    :goto_6
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->updateHead()V

    .line 480
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->updateTail()V

    .line 483
    if-eqz v3, :cond_a

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->prevTerminator()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v9

    :goto_7
    invoke-virtual {p1, v9}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->lazySetPrev(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    .line 484
    if-eqz v4, :cond_b

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->nextTerminator()Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    move-result-object v9

    :goto_8
    invoke-virtual {p1, v9}, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->lazySetNext(Ljava/util/concurrent/ConcurrentLinkedDeque$Node;)V

    goto :goto_0

    .line 424
    .end local v0           #activePred:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .end local v1           #activeSucc:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .end local v3           #isFirst:Z
    .end local v4           #isLast:Z
    :cond_4
    iget-object v8, v6, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    .line 425
    .local v8, q:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-nez v8, :cond_5

    .line 426
    iget-object v9, v6, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-eq v9, v6, :cond_0

    .line 428
    move-object v0, v6

    .line 429
    .restart local v0       #activePred:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    const/4 v3, 0x1

    .line 430
    .restart local v3       #isFirst:Z
    goto :goto_2

    .line 432
    .end local v0           #activePred:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .end local v3           #isFirst:Z
    :cond_5
    if-eq v6, v8, :cond_0

    .line 435
    move-object v6, v8

    .line 418
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 445
    .end local v8           #q:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v0       #activePred:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v3       #isFirst:Z
    :cond_6
    iget-object v8, v6, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->next:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    .line 446
    .restart local v8       #q:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    if-nez v8, :cond_7

    .line 447
    iget-object v9, v6, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->prev:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;

    if-eq v9, v6, :cond_0

    .line 449
    move-object v1, v6

    .line 450
    .restart local v1       #activeSucc:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    const/4 v4, 0x1

    .line 451
    .restart local v4       #isLast:Z
    goto :goto_4

    .line 453
    .end local v1           #activeSucc:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .end local v4           #isLast:Z
    :cond_7
    if-eq v6, v8, :cond_0

    .line 456
    move-object v6, v8

    .line 439
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 471
    .end local v8           #q:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v1       #activeSucc:Ljava/util/concurrent/ConcurrentLinkedDeque$Node;,"Ljava/util/concurrent/ConcurrentLinkedDeque$Node<TE;>;"
    .restart local v4       #isLast:Z
    :cond_8
    iget-object v9, v0, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    if-eqz v9, :cond_0

    goto :goto_5

    :cond_9
    iget-object v9, v1, Ljava/util/concurrent/ConcurrentLinkedDeque$Node;->item:Ljava/lang/Object;

    if-eqz v9, :cond_0

    goto :goto_6

    :cond_a
    move-object v9, p1

    .line 483
    goto :goto_7

    :cond_b
    move-object v9, p1

    .line 484
    goto :goto_8
.end method
