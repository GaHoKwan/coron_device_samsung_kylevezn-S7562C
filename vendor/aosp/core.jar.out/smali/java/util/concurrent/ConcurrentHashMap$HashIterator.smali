.class abstract Ljava/util/concurrent/ConcurrentHashMap$HashIterator;
.super Ljava/lang/Object;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "HashIterator"
.end annotation


# instance fields
.field currentTable:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/concurrent/ConcurrentHashMap$HashEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field lastReturned:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$HashEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field nextEntry:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$HashEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field nextSegmentIndex:I

.field nextTableIndex:I

.field final synthetic this$0:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 1
    .parameter

    .prologue
    .line 1063
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$HashIterator;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.HashIterator;"
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentHashMap$HashIterator;->this$0:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1064
    iget-object v0, p1, Ljava/util/concurrent/ConcurrentHashMap;->segments:[Ljava/util/concurrent/ConcurrentHashMap$Segment;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljava/util/concurrent/ConcurrentHashMap$HashIterator;->nextSegmentIndex:I

    .line 1065
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/concurrent/ConcurrentHashMap$HashIterator;->nextTableIndex:I

    .line 1066
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$HashIterator;->advance()V

    .line 1067
    return-void
.end method


# virtual methods
.method final advance()V
    .locals 5

    .prologue
    .line 1072
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$HashIterator;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.HashIterator;"
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentHashMap$HashIterator;->nextEntry:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    if-eqz v2, :cond_1

    iget-object v2, p0, Ljava/util/concurrent/ConcurrentHashMap$HashIterator;->nextEntry:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    iget-object v2, v2, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    iput-object v2, p0, Ljava/util/concurrent/ConcurrentHashMap$HashIterator;->nextEntry:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    if-eqz v2, :cond_1

    .line 1092
    :cond_0
    :goto_0
    return-void

    .line 1075
    :cond_1
    iget v2, p0, Ljava/util/concurrent/ConcurrentHashMap$HashIterator;->nextTableIndex:I

    if-ltz v2, :cond_2

    .line 1076
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentHashMap$HashIterator;->currentTable:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    iget v3, p0, Ljava/util/concurrent/ConcurrentHashMap$HashIterator;->nextTableIndex:I

    add-int/lit8 v4, v3, -0x1

    iput v4, p0, Ljava/util/concurrent/ConcurrentHashMap$HashIterator;->nextTableIndex:I

    aget-object v2, v2, v3

    iput-object v2, p0, Ljava/util/concurrent/ConcurrentHashMap$HashIterator;->nextEntry:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    if-eqz v2, :cond_1

    goto :goto_0

    .line 1080
    :cond_2
    iget v2, p0, Ljava/util/concurrent/ConcurrentHashMap$HashIterator;->nextSegmentIndex:I

    if-ltz v2, :cond_0

    .line 1081
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentHashMap$HashIterator;->this$0:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, v2, Ljava/util/concurrent/ConcurrentHashMap;->segments:[Ljava/util/concurrent/ConcurrentHashMap$Segment;

    iget v3, p0, Ljava/util/concurrent/ConcurrentHashMap$HashIterator;->nextSegmentIndex:I

    add-int/lit8 v4, v3, -0x1

    iput v4, p0, Ljava/util/concurrent/ConcurrentHashMap$HashIterator;->nextSegmentIndex:I

    aget-object v1, v2, v3

    .line 1082
    .local v1, seg:Ljava/util/concurrent/ConcurrentHashMap$Segment;,"Ljava/util/concurrent/ConcurrentHashMap$Segment<TK;TV;>;"
    iget v2, v1, Ljava/util/concurrent/ConcurrentHashMap$Segment;->count:I

    if-eqz v2, :cond_2

    .line 1083
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentHashMap$Segment;->table:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    iput-object v2, p0, Ljava/util/concurrent/ConcurrentHashMap$HashIterator;->currentTable:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    .line 1084
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentHashMap$HashIterator;->currentTable:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    .local v0, j:I
    :goto_1
    if-ltz v0, :cond_2

    .line 1085
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentHashMap$HashIterator;->currentTable:[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    aget-object v2, v2, v0

    iput-object v2, p0, Ljava/util/concurrent/ConcurrentHashMap$HashIterator;->nextEntry:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    if-eqz v2, :cond_3

    .line 1086
    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Ljava/util/concurrent/ConcurrentHashMap$HashIterator;->nextTableIndex:I

    goto :goto_0

    .line 1084
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public hasMoreElements()Z
    .locals 1

    .prologue
    .line 1069
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$HashIterator;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.HashIterator;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$HashIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 1094
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$HashIterator;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.HashIterator;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$HashIterator;->nextEntry:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method nextEntry()Ljava/util/concurrent/ConcurrentHashMap$HashEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap$HashEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1097
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$HashIterator;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.HashIterator;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$HashIterator;->nextEntry:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    if-nez v0, :cond_0

    .line 1098
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 1099
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$HashIterator;->nextEntry:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$HashIterator;->lastReturned:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    .line 1100
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$HashIterator;->advance()V

    .line 1101
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$HashIterator;->lastReturned:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 1105
    .local p0, this:Ljava/util/concurrent/ConcurrentHashMap$HashIterator;,"Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.HashIterator;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$HashIterator;->lastReturned:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    if-nez v0, :cond_0

    .line 1106
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1107
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$HashIterator;->this$0:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap$HashIterator;->lastReturned:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    iget-object v1, v1, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1108
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$HashIterator;->lastReturned:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    .line 1109
    return-void
.end method
