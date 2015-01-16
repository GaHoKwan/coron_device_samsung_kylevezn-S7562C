.class final Ljava/util/concurrent/CountDownLatch$Sync;
.super Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;
.source "CountDownLatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CountDownLatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Sync"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x45248f9a985464a6L


# direct methods
.method constructor <init>(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;-><init>()V

    .line 141
    invoke-virtual {p0, p1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->setState(I)V

    .line 142
    return-void
.end method


# virtual methods
.method getCount()I
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->getState()I

    move-result v0

    return v0
.end method

.method protected tryAcquireShared(I)I
    .locals 1
    .parameter "acquires"

    .prologue
    .line 149
    invoke-virtual {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->getState()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected tryReleaseShared(I)Z
    .locals 4
    .parameter "releases"

    .prologue
    const/4 v2, 0x0

    .line 155
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->getState()I

    move-result v0

    .line 156
    .local v0, c:I
    if-nez v0, :cond_2

    .line 160
    :cond_1
    :goto_0
    return v2

    .line 158
    :cond_2
    add-int/lit8 v1, v0, -0x1

    .line 159
    .local v1, nextc:I
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/locks/AbstractQueuedSynchronizer;->compareAndSetState(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 160
    if-nez v1, :cond_1

    const/4 v2, 0x1

    goto :goto_0
.end method
