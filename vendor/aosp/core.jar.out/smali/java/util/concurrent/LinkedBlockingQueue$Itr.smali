.class Ljava/util/concurrent/LinkedBlockingQueue$Itr;
.super Ljava/lang/Object;
.source "LinkedBlockingQueue.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/LinkedBlockingQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Itr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private current:Ljava/util/concurrent/LinkedBlockingQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field private currentElement:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private lastRet:Ljava/util/concurrent/LinkedBlockingQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljava/util/concurrent/LinkedBlockingQueue;


# direct methods
.method constructor <init>(Ljava/util/concurrent/LinkedBlockingQueue;)V
    .locals 1
    .parameter

    .prologue
    .line 762
    .local p0, this:Ljava/util/concurrent/LinkedBlockingQueue$Itr;,"Ljava/util/concurrent/LinkedBlockingQueue<TE;>.Itr;"
    iput-object p1, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->this$0:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 763
    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyLock()V

    .line 765
    :try_start_0
    #getter for: Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;
    invoke-static {p1}, Ljava/util/concurrent/LinkedBlockingQueue;->access$000(Ljava/util/concurrent/LinkedBlockingQueue;)Ljava/util/concurrent/LinkedBlockingQueue$Node;

    move-result-object v0

    iget-object v0, v0, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iput-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .line 766
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    if-eqz v0, :cond_0

    .line 767
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iget-object v0, v0, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->currentElement:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 769
    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    .line 771
    return-void

    .line 769
    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    throw v0
.end method

.method private nextNode(Ljava/util/concurrent/LinkedBlockingQueue$Node;)Ljava/util/concurrent/LinkedBlockingQueue$Node;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/LinkedBlockingQueue$Node",
            "<TE;>;)",
            "Ljava/util/concurrent/LinkedBlockingQueue$Node",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 786
    .local p0, this:Ljava/util/concurrent/LinkedBlockingQueue$Itr;,"Ljava/util/concurrent/LinkedBlockingQueue<TE;>.Itr;"
    .local p1, p:Ljava/util/concurrent/LinkedBlockingQueue$Node;,"Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    :goto_0
    iget-object v0, p1, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .line 787
    .local v0, s:Ljava/util/concurrent/LinkedBlockingQueue$Node;,"Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    if-ne v0, p1, :cond_1

    .line 788
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->this$0:Ljava/util/concurrent/LinkedBlockingQueue;

    #getter for: Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;
    invoke-static {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->access$000(Ljava/util/concurrent/LinkedBlockingQueue;)Ljava/util/concurrent/LinkedBlockingQueue$Node;

    move-result-object v1

    iget-object v0, v1, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .line 790
    .end local v0           #s:Ljava/util/concurrent/LinkedBlockingQueue$Node;,"Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    :cond_0
    return-object v0

    .line 789
    .restart local v0       #s:Ljava/util/concurrent/LinkedBlockingQueue$Node;,"Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    :cond_1
    if-eqz v0, :cond_0

    iget-object v1, v0, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 791
    move-object p1, v0

    .line 792
    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 774
    .local p0, this:Ljava/util/concurrent/LinkedBlockingQueue$Itr;,"Ljava/util/concurrent/LinkedBlockingQueue<TE;>.Itr;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 796
    .local p0, this:Ljava/util/concurrent/LinkedBlockingQueue$Itr;,"Ljava/util/concurrent/LinkedBlockingQueue<TE;>.Itr;"
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->this$0:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyLock()V

    .line 798
    :try_start_0
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    if-nez v1, :cond_0

    .line 799
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 806
    :catchall_0
    move-exception v1

    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->this$0:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    throw v1

    .line 800
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->currentElement:Ljava/lang/Object;

    .line 801
    .local v0, x:Ljava/lang/Object;,"TE;"
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iput-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->lastRet:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .line 802
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    invoke-direct {p0, v1}, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->nextNode(Ljava/util/concurrent/LinkedBlockingQueue$Node;)Ljava/util/concurrent/LinkedBlockingQueue$Node;

    move-result-object v1

    iput-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .line 803
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->currentElement:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 806
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->this$0:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    return-object v0

    .line 803
    :cond_1
    :try_start_2
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iget-object v1, v1, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public remove()V
    .locals 5

    .prologue
    .line 811
    .local p0, this:Ljava/util/concurrent/LinkedBlockingQueue$Itr;,"Ljava/util/concurrent/LinkedBlockingQueue<TE;>.Itr;"
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->lastRet:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    if-nez v3, :cond_0

    .line 812
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 813
    :cond_0
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->this$0:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyLock()V

    .line 815
    :try_start_0
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->lastRet:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .line 816
    .local v0, node:Ljava/util/concurrent/LinkedBlockingQueue$Node;,"Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    const/4 v3, 0x0

    iput-object v3, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->lastRet:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .line 817
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->this$0:Ljava/util/concurrent/LinkedBlockingQueue;

    #getter for: Ljava/util/concurrent/LinkedBlockingQueue;->head:Ljava/util/concurrent/LinkedBlockingQueue$Node;
    invoke-static {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->access$000(Ljava/util/concurrent/LinkedBlockingQueue;)Ljava/util/concurrent/LinkedBlockingQueue$Node;

    move-result-object v2

    .local v2, trail:Ljava/util/concurrent/LinkedBlockingQueue$Node;,"Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    iget-object v1, v2, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .line 818
    .local v1, p:Ljava/util/concurrent/LinkedBlockingQueue$Node;,"Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    :goto_0
    if-eqz v1, :cond_1

    .line 820
    if-ne v1, v0, :cond_2

    .line 821
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->this$0:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->unlink(Ljava/util/concurrent/LinkedBlockingQueue$Node;Ljava/util/concurrent/LinkedBlockingQueue$Node;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 826
    :cond_1
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->this$0:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    .line 828
    return-void

    .line 819
    :cond_2
    move-object v2, v1

    :try_start_1
    iget-object v1, v1, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 826
    .end local v0           #node:Ljava/util/concurrent/LinkedBlockingQueue$Node;,"Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    .end local v1           #p:Ljava/util/concurrent/LinkedBlockingQueue$Node;,"Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    .end local v2           #trail:Ljava/util/concurrent/LinkedBlockingQueue$Node;,"Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    :catchall_0
    move-exception v3

    iget-object v4, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->this$0:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->fullyUnlock()V

    throw v3
.end method
