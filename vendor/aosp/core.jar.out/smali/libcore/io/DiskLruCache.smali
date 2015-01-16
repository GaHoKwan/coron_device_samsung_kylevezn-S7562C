.class public final Llibcore/io/DiskLruCache;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llibcore/io/DiskLruCache$Entry;,
        Llibcore/io/DiskLruCache$Editor;,
        Llibcore/io/DiskLruCache$Snapshot;
    }
.end annotation


# static fields
.field static final ANY_SEQUENCE_NUMBER:J = -0x1L

.field private static final CLEAN:Ljava/lang/String; = "CLEAN"

.field private static final DIRTY:Ljava/lang/String; = "DIRTY"

.field static final JOURNAL_FILE:Ljava/lang/String; = "journal"

.field static final JOURNAL_FILE_TMP:Ljava/lang/String; = "journal.tmp"

.field static final MAGIC:Ljava/lang/String; = "libcore.io.DiskLruCache"

.field private static final READ:Ljava/lang/String; = "READ"

.field private static final REMOVE:Ljava/lang/String; = "REMOVE"

.field static final VERSION_1:Ljava/lang/String; = "1"


# instance fields
.field private final appVersion:I

.field private final cleanupCallable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final directory:Ljava/io/File;

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private final journalFile:Ljava/io/File;

.field private final journalFileTmp:Ljava/io/File;

.field private journalWriter:Ljava/io/Writer;

.field private final lruEntries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Llibcore/io/DiskLruCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final maxSize:J

.field private nextSequenceNumber:J

.field private redundantOpCount:I

.field private size:J

.field private final valueCount:I


# direct methods
.method private constructor <init>(Ljava/io/File;IIJ)V
    .locals 7
    .parameter "directory"
    .parameter "appVersion"
    .parameter "valueCount"
    .parameter "maxSize"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-wide v4, p0, Llibcore/io/DiskLruCache;->size:J

    .line 149
    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v3, 0x3f40

    invoke-direct {v0, v1, v3, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Llibcore/io/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 158
    iput-wide v4, p0, Llibcore/io/DiskLruCache;->nextSequenceNumber:J

    .line 161
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Llibcore/io/DiskLruCache;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 163
    new-instance v0, Llibcore/io/DiskLruCache$1;

    invoke-direct {v0, p0}, Llibcore/io/DiskLruCache$1;-><init>(Llibcore/io/DiskLruCache;)V

    iput-object v0, p0, Llibcore/io/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    .line 180
    iput-object p1, p0, Llibcore/io/DiskLruCache;->directory:Ljava/io/File;

    .line 181
    iput p2, p0, Llibcore/io/DiskLruCache;->appVersion:I

    .line 182
    new-instance v0, Ljava/io/File;

    const-string v1, "journal"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Llibcore/io/DiskLruCache;->journalFile:Ljava/io/File;

    .line 183
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.tmp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Llibcore/io/DiskLruCache;->journalFileTmp:Ljava/io/File;

    .line 184
    iput p3, p0, Llibcore/io/DiskLruCache;->valueCount:I

    .line 185
    iput-wide p4, p0, Llibcore/io/DiskLruCache;->maxSize:J

    .line 186
    return-void
.end method

.method static synthetic access$000(Llibcore/io/DiskLruCache;)Ljava/io/Writer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Llibcore/io/DiskLruCache;->journalWriter:Ljava/io/Writer;

    return-object v0
.end method

.method static synthetic access$100(Llibcore/io/DiskLruCache;)V
    .locals 0
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-direct {p0}, Llibcore/io/DiskLruCache;->trimToSize()V

    return-void
.end method

.method static synthetic access$1500(Llibcore/io/DiskLruCache;Ljava/lang/String;J)Llibcore/io/DiskLruCache$Editor;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3}, Llibcore/io/DiskLruCache;->edit(Ljava/lang/String;J)Llibcore/io/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-static {p0}, Llibcore/io/DiskLruCache;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Llibcore/io/DiskLruCache;Llibcore/io/DiskLruCache$Editor;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Llibcore/io/DiskLruCache;->completeEdit(Llibcore/io/DiskLruCache$Editor;Z)V

    return-void
.end method

.method static synthetic access$200(Llibcore/io/DiskLruCache;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Llibcore/io/DiskLruCache;->journalRebuildRequired()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Llibcore/io/DiskLruCache;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Llibcore/io/DiskLruCache;->valueCount:I

    return v0
.end method

.method static synthetic access$2100(Llibcore/io/DiskLruCache;)Ljava/io/File;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Llibcore/io/DiskLruCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$300(Llibcore/io/DiskLruCache;)V
    .locals 0
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-direct {p0}, Llibcore/io/DiskLruCache;->rebuildJournal()V

    return-void
.end method

.method static synthetic access$402(Llibcore/io/DiskLruCache;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput p1, p0, Llibcore/io/DiskLruCache;->redundantOpCount:I

    return p1
.end method

.method private checkNotClosed()V
    .locals 2

    .prologue
    .line 554
    iget-object v0, p0, Llibcore/io/DiskLruCache;->journalWriter:Ljava/io/Writer;

    if-nez v0, :cond_0

    .line 555
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 557
    :cond_0
    return-void
.end method

.method private declared-synchronized completeEdit(Llibcore/io/DiskLruCache$Editor;Z)V
    .locals 12
    .parameter "editor"
    .parameter "success"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 453
    monitor-enter p0

    :try_start_0
    #getter for: Llibcore/io/DiskLruCache$Editor;->entry:Llibcore/io/DiskLruCache$Entry;
    invoke-static {p1}, Llibcore/io/DiskLruCache$Editor;->access$1400(Llibcore/io/DiskLruCache$Editor;)Llibcore/io/DiskLruCache$Entry;

    move-result-object v2

    .line 454
    .local v2, entry:Llibcore/io/DiskLruCache$Entry;
    #getter for: Llibcore/io/DiskLruCache$Entry;->currentEditor:Llibcore/io/DiskLruCache$Editor;
    invoke-static {v2}, Llibcore/io/DiskLruCache$Entry;->access$700(Llibcore/io/DiskLruCache$Entry;)Llibcore/io/DiskLruCache$Editor;

    move-result-object v8

    if-eq v8, p1, :cond_0

    .line 455
    new-instance v8, Ljava/lang/IllegalStateException;

    invoke-direct {v8}, Ljava/lang/IllegalStateException;-><init>()V

    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    .end local v2           #entry:Llibcore/io/DiskLruCache$Entry;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 459
    .restart local v2       #entry:Llibcore/io/DiskLruCache$Entry;
    :cond_0
    if-eqz p2, :cond_2

    :try_start_1
    #getter for: Llibcore/io/DiskLruCache$Entry;->readable:Z
    invoke-static {v2}, Llibcore/io/DiskLruCache$Entry;->access$600(Llibcore/io/DiskLruCache$Entry;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 460
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget v8, p0, Llibcore/io/DiskLruCache;->valueCount:I

    if-ge v3, v8, :cond_2

    .line 461
    invoke-virtual {v2, v3}, Llibcore/io/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 462
    invoke-virtual {p1}, Llibcore/io/DiskLruCache$Editor;->abort()V

    .line 463
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "edit didn\'t create file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 460
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 468
    .end local v3           #i:I
    :cond_2
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_1
    iget v8, p0, Llibcore/io/DiskLruCache;->valueCount:I

    if-ge v3, v8, :cond_5

    .line 469
    invoke-virtual {v2, v3}, Llibcore/io/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v1

    .line 470
    .local v1, dirty:Ljava/io/File;
    if-eqz p2, :cond_4

    .line 471
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 472
    invoke-virtual {v2, v3}, Llibcore/io/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v0

    .line 473
    .local v0, clean:Ljava/io/File;
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 474
    #getter for: Llibcore/io/DiskLruCache$Entry;->lengths:[J
    invoke-static {v2}, Llibcore/io/DiskLruCache$Entry;->access$1000(Llibcore/io/DiskLruCache$Entry;)[J

    move-result-object v8

    aget-wide v6, v8, v3

    .line 475
    .local v6, oldLength:J
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 476
    .local v4, newLength:J
    #getter for: Llibcore/io/DiskLruCache$Entry;->lengths:[J
    invoke-static {v2}, Llibcore/io/DiskLruCache$Entry;->access$1000(Llibcore/io/DiskLruCache$Entry;)[J

    move-result-object v8

    aput-wide v4, v8, v3

    .line 477
    iget-wide v8, p0, Llibcore/io/DiskLruCache;->size:J

    sub-long/2addr v8, v6

    add-long/2addr v8, v4

    iput-wide v8, p0, Llibcore/io/DiskLruCache;->size:J

    .line 468
    .end local v0           #clean:Ljava/io/File;
    .end local v4           #newLength:J
    .end local v6           #oldLength:J
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 480
    :cond_4
    invoke-static {v1}, Llibcore/io/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    goto :goto_2

    .line 484
    .end local v1           #dirty:Ljava/io/File;
    :cond_5
    iget v8, p0, Llibcore/io/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Llibcore/io/DiskLruCache;->redundantOpCount:I

    .line 485
    const/4 v8, 0x0

    #setter for: Llibcore/io/DiskLruCache$Entry;->currentEditor:Llibcore/io/DiskLruCache$Editor;
    invoke-static {v2, v8}, Llibcore/io/DiskLruCache$Entry;->access$702(Llibcore/io/DiskLruCache$Entry;Llibcore/io/DiskLruCache$Editor;)Llibcore/io/DiskLruCache$Editor;

    .line 486
    #getter for: Llibcore/io/DiskLruCache$Entry;->readable:Z
    invoke-static {v2}, Llibcore/io/DiskLruCache$Entry;->access$600(Llibcore/io/DiskLruCache$Entry;)Z

    move-result v8

    or-int/2addr v8, p2

    if-eqz v8, :cond_9

    .line 487
    const/4 v8, 0x1

    #setter for: Llibcore/io/DiskLruCache$Entry;->readable:Z
    invoke-static {v2, v8}, Llibcore/io/DiskLruCache$Entry;->access$602(Llibcore/io/DiskLruCache$Entry;Z)Z

    .line 488
    iget-object v8, p0, Llibcore/io/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CLEAN "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    #getter for: Llibcore/io/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v2}, Llibcore/io/DiskLruCache$Entry;->access$1100(Llibcore/io/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Llibcore/io/DiskLruCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 489
    if-eqz p2, :cond_6

    .line 490
    iget-wide v8, p0, Llibcore/io/DiskLruCache;->nextSequenceNumber:J

    const-wide/16 v10, 0x1

    add-long/2addr v10, v8

    iput-wide v10, p0, Llibcore/io/DiskLruCache;->nextSequenceNumber:J

    #setter for: Llibcore/io/DiskLruCache$Entry;->sequenceNumber:J
    invoke-static {v2, v8, v9}, Llibcore/io/DiskLruCache$Entry;->access$1202(Llibcore/io/DiskLruCache$Entry;J)J

    .line 497
    :cond_6
    :goto_3
    iget-wide v8, p0, Llibcore/io/DiskLruCache;->size:J

    iget-wide v10, p0, Llibcore/io/DiskLruCache;->maxSize:J

    cmp-long v8, v8, v10

    if-gtz v8, :cond_7

    invoke-direct {p0}, Llibcore/io/DiskLruCache;->journalRebuildRequired()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 498
    :cond_7
    iget-object v8, p0, Llibcore/io/DiskLruCache;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v9, p0, Llibcore/io/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-interface {v8, v9}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 500
    :cond_8
    monitor-exit p0

    return-void

    .line 493
    :cond_9
    :try_start_2
    iget-object v8, p0, Llibcore/io/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    #getter for: Llibcore/io/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v2}, Llibcore/io/DiskLruCache$Entry;->access$1100(Llibcore/io/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    iget-object v8, p0, Llibcore/io/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "REMOVE "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    #getter for: Llibcore/io/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v2}, Llibcore/io/DiskLruCache$Entry;->access$1100(Llibcore/io/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method private static deleteIfExists(Ljava/io/File;)V
    .locals 3
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 347
    :try_start_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Llibcore/io/Os;->remove(Ljava/lang/String;)V
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    :cond_0
    return-void

    .line 348
    :catch_0
    move-exception v0

    .line 349
    .local v0, errnoException:Llibcore/io/ErrnoException;
    iget v1, v0, Llibcore/io/ErrnoException;->errno:I

    sget v2, Llibcore/io/OsConstants;->ENOENT:I

    if-eq v1, v2, :cond_0

    .line 350
    invoke-virtual {v0}, Llibcore/io/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method private declared-synchronized edit(Ljava/lang/String;J)Llibcore/io/DiskLruCache$Editor;
    .locals 5
    .parameter "key"
    .parameter "expectedSequenceNumber"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 405
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Llibcore/io/DiskLruCache;->checkNotClosed()V

    .line 406
    invoke-direct {p0, p1}, Llibcore/io/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 407
    iget-object v2, p0, Llibcore/io/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llibcore/io/DiskLruCache$Entry;

    .line 408
    .local v1, entry:Llibcore/io/DiskLruCache$Entry;
    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    #getter for: Llibcore/io/DiskLruCache$Entry;->sequenceNumber:J
    invoke-static {v1}, Llibcore/io/DiskLruCache$Entry;->access$1200(Llibcore/io/DiskLruCache$Entry;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    cmp-long v2, v2, p2

    if-eqz v2, :cond_1

    .line 425
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 412
    :cond_1
    if-nez v1, :cond_3

    .line 413
    :try_start_1
    new-instance v1, Llibcore/io/DiskLruCache$Entry;

    .end local v1           #entry:Llibcore/io/DiskLruCache$Entry;
    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Llibcore/io/DiskLruCache$Entry;-><init>(Llibcore/io/DiskLruCache;Ljava/lang/String;Llibcore/io/DiskLruCache$1;)V

    .line 414
    .restart local v1       #entry:Llibcore/io/DiskLruCache$Entry;
    iget-object v2, p0, Llibcore/io/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    :cond_2
    new-instance v0, Llibcore/io/DiskLruCache$Editor;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Llibcore/io/DiskLruCache$Editor;-><init>(Llibcore/io/DiskLruCache;Llibcore/io/DiskLruCache$Entry;Llibcore/io/DiskLruCache$1;)V

    .line 420
    .local v0, editor:Llibcore/io/DiskLruCache$Editor;
    #setter for: Llibcore/io/DiskLruCache$Entry;->currentEditor:Llibcore/io/DiskLruCache$Editor;
    invoke-static {v1, v0}, Llibcore/io/DiskLruCache$Entry;->access$702(Llibcore/io/DiskLruCache$Entry;Llibcore/io/DiskLruCache$Editor;)Llibcore/io/DiskLruCache$Editor;

    .line 423
    iget-object v2, p0, Llibcore/io/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DIRTY "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 424
    iget-object v2, p0, Llibcore/io/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 405
    .end local v0           #editor:Llibcore/io/DiskLruCache$Editor;
    .end local v1           #entry:Llibcore/io/DiskLruCache$Entry;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 415
    .restart local v1       #entry:Llibcore/io/DiskLruCache$Entry;
    :cond_3
    :try_start_2
    #getter for: Llibcore/io/DiskLruCache$Entry;->currentEditor:Llibcore/io/DiskLruCache$Editor;
    invoke-static {v1}, Llibcore/io/DiskLruCache$Entry;->access$700(Llibcore/io/DiskLruCache$Entry;)Llibcore/io/DiskLruCache$Editor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_2

    goto :goto_0
.end method

.method private static inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 610
    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v0}, Llibcore/io/Streams;->readFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private journalRebuildRequired()Z
    .locals 3

    .prologue
    .line 507
    const/16 v0, 0x7d0

    .line 508
    .local v0, REDUNDANT_OP_COMPACT_THRESHOLD:I
    iget v1, p0, Llibcore/io/DiskLruCache;->redundantOpCount:I

    const/16 v2, 0x7d0

    if-lt v1, v2, :cond_0

    iget v1, p0, Llibcore/io/DiskLruCache;->redundantOpCount:I

    iget-object v2, p0, Llibcore/io/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static open(Ljava/io/File;IIJ)Llibcore/io/DiskLruCache;
    .locals 8
    .parameter "directory"
    .parameter "appVersion"
    .parameter "valueCount"
    .parameter "maxSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    const-wide/16 v1, 0x0

    cmp-long v1, p3, v1

    if-gtz v1, :cond_0

    .line 201
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "maxSize <= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 203
    :cond_0
    if-gtz p2, :cond_1

    .line 204
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "valueCount <= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 208
    :cond_1
    new-instance v0, Llibcore/io/DiskLruCache;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Llibcore/io/DiskLruCache;-><init>(Ljava/io/File;IIJ)V

    .line 209
    .local v0, cache:Llibcore/io/DiskLruCache;
    iget-object v1, v0, Llibcore/io/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 211
    :try_start_0
    invoke-direct {v0}, Llibcore/io/DiskLruCache;->readJournal()V

    .line 212
    invoke-direct {v0}, Llibcore/io/DiskLruCache;->processJournal()V

    .line 213
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    iget-object v3, v0, Llibcore/io/DiskLruCache;->journalFile:Ljava/io/File;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, v0, Llibcore/io/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v0

    .line 226
    .end local v0           #cache:Llibcore/io/DiskLruCache;
    .local v6, cache:Ljava/lang/Object;
    :goto_0
    return-object v6

    .line 215
    .end local v6           #cache:Ljava/lang/Object;
    .restart local v0       #cache:Llibcore/io/DiskLruCache;
    :catch_0
    move-exception v7

    .line 216
    .local v7, journalIsCorrupt:Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DiskLruCache "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is corrupt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", removing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->logW(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v0}, Llibcore/io/DiskLruCache;->delete()V

    .line 223
    .end local v7           #journalIsCorrupt:Ljava/io/IOException;
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 224
    new-instance v0, Llibcore/io/DiskLruCache;

    .end local v0           #cache:Llibcore/io/DiskLruCache;
    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Llibcore/io/DiskLruCache;-><init>(Ljava/io/File;IIJ)V

    .line 225
    .restart local v0       #cache:Llibcore/io/DiskLruCache;
    invoke-direct {v0}, Llibcore/io/DiskLruCache;->rebuildJournal()V

    move-object v6, v0

    .line 226
    .restart local v6       #cache:Ljava/lang/Object;
    goto :goto_0
.end method

.method private processJournal()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 294
    iget-object v3, p0, Llibcore/io/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-static {v3}, Llibcore/io/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 295
    iget-object v3, p0, Llibcore/io/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Llibcore/io/DiskLruCache$Entry;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 296
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llibcore/io/DiskLruCache$Entry;

    .line 297
    .local v0, entry:Llibcore/io/DiskLruCache$Entry;
    #getter for: Llibcore/io/DiskLruCache$Entry;->currentEditor:Llibcore/io/DiskLruCache$Editor;
    invoke-static {v0}, Llibcore/io/DiskLruCache$Entry;->access$700(Llibcore/io/DiskLruCache$Entry;)Llibcore/io/DiskLruCache$Editor;

    move-result-object v3

    if-nez v3, :cond_1

    .line 298
    const/4 v2, 0x0

    .local v2, t:I
    :goto_1
    iget v3, p0, Llibcore/io/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_0

    .line 299
    iget-wide v3, p0, Llibcore/io/DiskLruCache;->size:J

    #getter for: Llibcore/io/DiskLruCache$Entry;->lengths:[J
    invoke-static {v0}, Llibcore/io/DiskLruCache$Entry;->access$1000(Llibcore/io/DiskLruCache$Entry;)[J

    move-result-object v5

    aget-wide v5, v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Llibcore/io/DiskLruCache;->size:J

    .line 298
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 302
    .end local v2           #t:I
    :cond_1
    const/4 v3, 0x0

    #setter for: Llibcore/io/DiskLruCache$Entry;->currentEditor:Llibcore/io/DiskLruCache$Editor;
    invoke-static {v0, v3}, Llibcore/io/DiskLruCache$Entry;->access$702(Llibcore/io/DiskLruCache$Entry;Llibcore/io/DiskLruCache$Editor;)Llibcore/io/DiskLruCache$Editor;

    .line 303
    const/4 v2, 0x0

    .restart local v2       #t:I
    :goto_2
    iget v3, p0, Llibcore/io/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_2

    .line 304
    invoke-virtual {v0, v2}, Llibcore/io/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Llibcore/io/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 305
    invoke-virtual {v0, v2}, Llibcore/io/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Llibcore/io/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 303
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 307
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 310
    .end local v0           #entry:Llibcore/io/DiskLruCache$Entry;
    .end local v2           #t:I
    :cond_3
    return-void
.end method

.method private readJournal()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 230
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    iget-object v8, p0, Llibcore/io/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 232
    .local v3, in:Ljava/io/InputStream;
    :try_start_0
    invoke-static {v3}, Llibcore/io/Streams;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    .line 233
    .local v4, magic:Ljava/lang/String;
    invoke-static {v3}, Llibcore/io/Streams;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    .line 234
    .local v6, version:Ljava/lang/String;
    invoke-static {v3}, Llibcore/io/Streams;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, appVersionString:Ljava/lang/String;
    invoke-static {v3}, Llibcore/io/Streams;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    .line 236
    .local v5, valueCountString:Ljava/lang/String;
    invoke-static {v3}, Llibcore/io/Streams;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, blank:Ljava/lang/String;
    const-string v7, "libcore.io.DiskLruCache"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "1"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget v7, p0, Llibcore/io/DiskLruCache;->appVersion:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget v7, p0, Llibcore/io/DiskLruCache;->valueCount:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, ""

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 242
    :cond_0
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unexpected journal header: ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    .end local v0           #appVersionString:Ljava/lang/String;
    .end local v1           #blank:Ljava/lang/String;
    .end local v4           #magic:Ljava/lang/String;
    .end local v5           #valueCountString:Ljava/lang/String;
    .end local v6           #version:Ljava/lang/String;
    :catchall_0
    move-exception v7

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v7

    .line 248
    .restart local v0       #appVersionString:Ljava/lang/String;
    .restart local v1       #blank:Ljava/lang/String;
    .restart local v4       #magic:Ljava/lang/String;
    .restart local v5       #valueCountString:Ljava/lang/String;
    .restart local v6       #version:Ljava/lang/String;
    :cond_1
    :goto_0
    :try_start_1
    invoke-static {v3}, Llibcore/io/Streams;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Llibcore/io/DiskLruCache;->readJournalLine(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 249
    :catch_0
    move-exception v2

    .line 254
    .local v2, endOfJournal:Ljava/io/EOFException;
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 256
    return-void
.end method

.method private readJournalLine(Ljava/lang/String;)V
    .locals 9
    .parameter "line"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 259
    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 260
    .local v2, parts:[Ljava/lang/String;
    array-length v3, v2

    if-ge v3, v5, :cond_0

    .line 261
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unexpected journal line: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 264
    :cond_0
    aget-object v1, v2, v8

    .line 265
    .local v1, key:Ljava/lang/String;
    aget-object v3, v2, v6

    const-string v4, "REMOVE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    array-length v3, v2

    if-ne v3, v5, :cond_2

    .line 266
    iget-object v3, p0, Llibcore/io/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    :cond_1
    :goto_0
    return-void

    .line 270
    :cond_2
    iget-object v3, p0, Llibcore/io/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llibcore/io/DiskLruCache$Entry;

    .line 271
    .local v0, entry:Llibcore/io/DiskLruCache$Entry;
    if-nez v0, :cond_3

    .line 272
    new-instance v0, Llibcore/io/DiskLruCache$Entry;

    .end local v0           #entry:Llibcore/io/DiskLruCache$Entry;
    invoke-direct {v0, p0, v1, v7}, Llibcore/io/DiskLruCache$Entry;-><init>(Llibcore/io/DiskLruCache;Ljava/lang/String;Llibcore/io/DiskLruCache$1;)V

    .line 273
    .restart local v0       #entry:Llibcore/io/DiskLruCache$Entry;
    iget-object v3, p0, Llibcore/io/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    :cond_3
    aget-object v3, v2, v6

    const-string v4, "CLEAN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    array-length v3, v2

    iget v4, p0, Llibcore/io/DiskLruCache;->valueCount:I

    add-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_4

    .line 277
    #setter for: Llibcore/io/DiskLruCache$Entry;->readable:Z
    invoke-static {v0, v8}, Llibcore/io/DiskLruCache$Entry;->access$602(Llibcore/io/DiskLruCache$Entry;Z)Z

    .line 278
    #setter for: Llibcore/io/DiskLruCache$Entry;->currentEditor:Llibcore/io/DiskLruCache$Editor;
    invoke-static {v0, v7}, Llibcore/io/DiskLruCache$Entry;->access$702(Llibcore/io/DiskLruCache$Entry;Llibcore/io/DiskLruCache$Editor;)Llibcore/io/DiskLruCache$Editor;

    .line 279
    array-length v3, v2

    invoke-static {v2, v5, v3}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    #calls: Llibcore/io/DiskLruCache$Entry;->setLengths([Ljava/lang/String;)V
    invoke-static {v0, v3}, Llibcore/io/DiskLruCache$Entry;->access$800(Llibcore/io/DiskLruCache$Entry;[Ljava/lang/String;)V

    goto :goto_0

    .line 280
    :cond_4
    aget-object v3, v2, v6

    const-string v4, "DIRTY"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    array-length v3, v2

    if-ne v3, v5, :cond_5

    .line 281
    new-instance v3, Llibcore/io/DiskLruCache$Editor;

    invoke-direct {v3, p0, v0, v7}, Llibcore/io/DiskLruCache$Editor;-><init>(Llibcore/io/DiskLruCache;Llibcore/io/DiskLruCache$Entry;Llibcore/io/DiskLruCache$1;)V

    #setter for: Llibcore/io/DiskLruCache$Entry;->currentEditor:Llibcore/io/DiskLruCache$Editor;
    invoke-static {v0, v3}, Llibcore/io/DiskLruCache$Entry;->access$702(Llibcore/io/DiskLruCache$Entry;Llibcore/io/DiskLruCache$Editor;)Llibcore/io/DiskLruCache$Editor;

    goto :goto_0

    .line 282
    :cond_5
    aget-object v3, v2, v6

    const-string v4, "READ"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    array-length v3, v2

    if-eq v3, v5, :cond_1

    .line 285
    :cond_6
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unexpected journal line: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private declared-synchronized rebuildJournal()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 317
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Llibcore/io/DiskLruCache;->journalWriter:Ljava/io/Writer;

    if-eqz v3, :cond_0

    .line 318
    iget-object v3, p0, Llibcore/io/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v3}, Ljava/io/Writer;->close()V

    .line 321
    :cond_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    iget-object v4, p0, Llibcore/io/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 322
    .local v2, writer:Ljava/io/Writer;
    const-string v3, "libcore.io.DiskLruCache"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 323
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 324
    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 325
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 326
    iget v3, p0, Llibcore/io/DiskLruCache;->appVersion:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 327
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 328
    iget v3, p0, Llibcore/io/DiskLruCache;->valueCount:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 329
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 330
    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 332
    iget-object v3, p0, Llibcore/io/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llibcore/io/DiskLruCache$Entry;

    .line 333
    .local v0, entry:Llibcore/io/DiskLruCache$Entry;
    #getter for: Llibcore/io/DiskLruCache$Entry;->currentEditor:Llibcore/io/DiskLruCache$Editor;
    invoke-static {v0}, Llibcore/io/DiskLruCache$Entry;->access$700(Llibcore/io/DiskLruCache$Entry;)Llibcore/io/DiskLruCache$Editor;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 334
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DIRTY "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    #getter for: Llibcore/io/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v0}, Llibcore/io/DiskLruCache$Entry;->access$1100(Llibcore/io/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 317
    .end local v0           #entry:Llibcore/io/DiskLruCache$Entry;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #writer:Ljava/io/Writer;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 336
    .restart local v0       #entry:Llibcore/io/DiskLruCache$Entry;
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #writer:Ljava/io/Writer;
    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CLEAN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    #getter for: Llibcore/io/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v0}, Llibcore/io/DiskLruCache$Entry;->access$1100(Llibcore/io/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Llibcore/io/DiskLruCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 340
    .end local v0           #entry:Llibcore/io/DiskLruCache$Entry;
    :cond_2
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 341
    iget-object v3, p0, Llibcore/io/DiskLruCache;->journalFileTmp:Ljava/io/File;

    iget-object v4, p0, Llibcore/io/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 342
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    iget-object v5, p0, Llibcore/io/DiskLruCache;->journalFile:Ljava/io/File;

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v3, p0, Llibcore/io/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 343
    monitor-exit p0

    return-void
.end method

.method private trimToSize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 586
    :goto_0
    iget-wide v1, p0, Llibcore/io/DiskLruCache;->size:J

    iget-wide v3, p0, Llibcore/io/DiskLruCache;->maxSize:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 587
    iget-object v1, p0, Llibcore/io/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->eldest()Ljava/util/Map$Entry;

    move-result-object v0

    .line 588
    .local v0, toEvict:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Llibcore/io/DiskLruCache$Entry;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Llibcore/io/DiskLruCache;->remove(Ljava/lang/String;)Z

    goto :goto_0

    .line 590
    .end local v0           #toEvict:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Llibcore/io/DiskLruCache$Entry;>;"
    :cond_0
    return-void
.end method

.method private validateKey(Ljava/lang/String;)V
    .locals 3
    .parameter "key"

    .prologue
    .line 603
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\r"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 604
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keys must not contain spaces or newlines: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 607
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 572
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Llibcore/io/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 583
    :goto_0
    monitor-exit p0

    return-void

    .line 575
    :cond_0
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Llibcore/io/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llibcore/io/DiskLruCache$Entry;

    .line 576
    .local v0, entry:Llibcore/io/DiskLruCache$Entry;
    #getter for: Llibcore/io/DiskLruCache$Entry;->currentEditor:Llibcore/io/DiskLruCache$Editor;
    invoke-static {v0}, Llibcore/io/DiskLruCache$Entry;->access$700(Llibcore/io/DiskLruCache$Entry;)Llibcore/io/DiskLruCache$Editor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 577
    #getter for: Llibcore/io/DiskLruCache$Entry;->currentEditor:Llibcore/io/DiskLruCache$Editor;
    invoke-static {v0}, Llibcore/io/DiskLruCache$Entry;->access$700(Llibcore/io/DiskLruCache$Entry;)Llibcore/io/DiskLruCache$Editor;

    move-result-object v2

    invoke-virtual {v2}, Llibcore/io/DiskLruCache$Editor;->abort()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 572
    .end local v0           #entry:Llibcore/io/DiskLruCache$Entry;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 580
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_2
    invoke-direct {p0}, Llibcore/io/DiskLruCache;->trimToSize()V

    .line 581
    iget-object v2, p0, Llibcore/io/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->close()V

    .line 582
    const/4 v2, 0x0

    iput-object v2, p0, Llibcore/io/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public delete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 598
    invoke-virtual {p0}, Llibcore/io/DiskLruCache;->close()V

    .line 599
    iget-object v0, p0, Llibcore/io/DiskLruCache;->directory:Ljava/io/File;

    invoke-static {v0}, Llibcore/io/IoUtils;->deleteContents(Ljava/io/File;)V

    .line 600
    return-void
.end method

.method public edit(Ljava/lang/String;)Llibcore/io/DiskLruCache$Editor;
    .locals 2
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 401
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Llibcore/io/DiskLruCache;->edit(Ljava/lang/String;J)Llibcore/io/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 563
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Llibcore/io/DiskLruCache;->checkNotClosed()V

    .line 564
    invoke-direct {p0}, Llibcore/io/DiskLruCache;->trimToSize()V

    .line 565
    iget-object v0, p0, Llibcore/io/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 566
    monitor-exit p0

    return-void

    .line 563
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/String;)Llibcore/io/DiskLruCache$Snapshot;
    .locals 10
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 361
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Llibcore/io/DiskLruCache;->checkNotClosed()V

    .line 362
    invoke-direct {p0, p1}, Llibcore/io/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 363
    iget-object v1, p0, Llibcore/io/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Llibcore/io/DiskLruCache$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    .local v8, entry:Llibcore/io/DiskLruCache$Entry;
    if-nez v8, :cond_1

    .line 393
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 368
    :cond_1
    :try_start_1
    #getter for: Llibcore/io/DiskLruCache$Entry;->readable:Z
    invoke-static {v8}, Llibcore/io/DiskLruCache$Entry;->access$600(Llibcore/io/DiskLruCache$Entry;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 377
    iget v1, p0, Llibcore/io/DiskLruCache;->valueCount:I

    new-array v5, v1, [Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 379
    .local v5, ins:[Ljava/io/InputStream;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    :try_start_2
    iget v1, p0, Llibcore/io/DiskLruCache;->valueCount:I

    if-ge v9, v1, :cond_2

    .line 380
    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {v8, v9}, Llibcore/io/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object v1, v5, v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 379
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 382
    :catch_0
    move-exception v7

    .line 384
    .local v7, e:Ljava/io/FileNotFoundException;
    goto :goto_0

    .line 387
    .end local v7           #e:Ljava/io/FileNotFoundException;
    :cond_2
    :try_start_3
    iget v0, p0, Llibcore/io/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Llibcore/io/DiskLruCache;->redundantOpCount:I

    .line 388
    iget-object v0, p0, Llibcore/io/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "READ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 389
    invoke-direct {p0}, Llibcore/io/DiskLruCache;->journalRebuildRequired()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 390
    iget-object v0, p0, Llibcore/io/DiskLruCache;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Llibcore/io/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 393
    :cond_3
    new-instance v0, Llibcore/io/DiskLruCache$Snapshot;

    #getter for: Llibcore/io/DiskLruCache$Entry;->sequenceNumber:J
    invoke-static {v8}, Llibcore/io/DiskLruCache$Entry;->access$1200(Llibcore/io/DiskLruCache$Entry;)J

    move-result-wide v3

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Llibcore/io/DiskLruCache$Snapshot;-><init>(Llibcore/io/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;Llibcore/io/DiskLruCache$1;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 361
    .end local v5           #ins:[Ljava/io/InputStream;
    .end local v8           #entry:Llibcore/io/DiskLruCache$Entry;
    .end local v9           #i:I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Llibcore/io/DiskLruCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Llibcore/io/DiskLruCache;->journalWriter:Ljava/io/Writer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public maxSize()J
    .locals 2

    .prologue
    .line 440
    iget-wide v0, p0, Llibcore/io/DiskLruCache;->maxSize:J

    return-wide v0
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Z
    .locals 7
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 519
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Llibcore/io/DiskLruCache;->checkNotClosed()V

    .line 520
    invoke-direct {p0, p1}, Llibcore/io/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 521
    iget-object v3, p0, Llibcore/io/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llibcore/io/DiskLruCache$Entry;

    .line 522
    .local v0, entry:Llibcore/io/DiskLruCache$Entry;
    if-eqz v0, :cond_0

    #getter for: Llibcore/io/DiskLruCache$Entry;->currentEditor:Llibcore/io/DiskLruCache$Editor;
    invoke-static {v0}, Llibcore/io/DiskLruCache$Entry;->access$700(Llibcore/io/DiskLruCache$Entry;)Llibcore/io/DiskLruCache$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    if-eqz v3, :cond_1

    .line 523
    :cond_0
    const/4 v3, 0x0

    .line 543
    :goto_0
    monitor-exit p0

    return v3

    .line 526
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    :try_start_1
    iget v3, p0, Llibcore/io/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_3

    .line 527
    invoke-virtual {v0, v2}, Llibcore/io/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v1

    .line 528
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_2

    .line 529
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to delete "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 519
    .end local v0           #entry:Llibcore/io/DiskLruCache$Entry;
    .end local v1           #file:Ljava/io/File;
    .end local v2           #i:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 531
    .restart local v0       #entry:Llibcore/io/DiskLruCache$Entry;
    .restart local v1       #file:Ljava/io/File;
    .restart local v2       #i:I
    :cond_2
    :try_start_2
    iget-wide v3, p0, Llibcore/io/DiskLruCache;->size:J

    #getter for: Llibcore/io/DiskLruCache$Entry;->lengths:[J
    invoke-static {v0}, Llibcore/io/DiskLruCache$Entry;->access$1000(Llibcore/io/DiskLruCache$Entry;)[J

    move-result-object v5

    aget-wide v5, v5, v2

    sub-long/2addr v3, v5

    iput-wide v3, p0, Llibcore/io/DiskLruCache;->size:J

    .line 532
    #getter for: Llibcore/io/DiskLruCache$Entry;->lengths:[J
    invoke-static {v0}, Llibcore/io/DiskLruCache$Entry;->access$1000(Llibcore/io/DiskLruCache$Entry;)[J

    move-result-object v3

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v2

    .line 526
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 535
    .end local v1           #file:Ljava/io/File;
    :cond_3
    iget v3, p0, Llibcore/io/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Llibcore/io/DiskLruCache;->redundantOpCount:I

    .line 536
    iget-object v3, p0, Llibcore/io/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "REMOVE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 537
    iget-object v3, p0, Llibcore/io/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    invoke-direct {p0}, Llibcore/io/DiskLruCache;->journalRebuildRequired()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 540
    iget-object v3, p0, Llibcore/io/DiskLruCache;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v4, p0, Llibcore/io/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 543
    :cond_4
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public declared-synchronized size()J
    .locals 2

    .prologue
    .line 449
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Llibcore/io/DiskLruCache;->size:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
