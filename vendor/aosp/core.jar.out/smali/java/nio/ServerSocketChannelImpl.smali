.class final Ljava/nio/ServerSocketChannelImpl;
.super Ljava/nio/channels/ServerSocketChannel;
.source "ServerSocketChannelImpl.java"

# interfaces
.implements Ljava/nio/FileDescriptorChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;
    }
.end annotation


# instance fields
.field private final acceptLock:Ljava/lang/Object;

.field private final impl:Ljava/net/SocketImpl;

.field private isBound:Z

.field private final socket:Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;


# direct methods
.method public constructor <init>(Ljava/nio/channels/spi/SelectorProvider;)V
    .locals 1
    .parameter "sp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0, p1}, Ljava/nio/channels/ServerSocketChannel;-><init>(Ljava/nio/channels/spi/SelectorProvider;)V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/nio/ServerSocketChannelImpl;->isBound:Z

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/nio/ServerSocketChannelImpl;->acceptLock:Ljava/lang/Object;

    .line 50
    new-instance v0, Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;

    invoke-direct {v0, p0}, Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;-><init>(Ljava/nio/ServerSocketChannelImpl;)V

    iput-object v0, p0, Ljava/nio/ServerSocketChannelImpl;->socket:Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;

    .line 51
    iget-object v0, p0, Ljava/nio/ServerSocketChannelImpl;->socket:Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getImpl$()Ljava/net/SocketImpl;

    move-result-object v0

    iput-object v0, p0, Ljava/nio/ServerSocketChannelImpl;->impl:Ljava/net/SocketImpl;

    .line 52
    return-void
.end method

.method static synthetic access$000(Ljava/nio/ServerSocketChannelImpl;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Ljava/nio/ServerSocketChannelImpl;->isBound:Z

    return v0
.end method

.method static synthetic access$002(Ljava/nio/ServerSocketChannelImpl;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Ljava/nio/ServerSocketChannelImpl;->isBound:Z

    return p1
.end method


# virtual methods
.method public accept()Ljava/nio/channels/SocketChannel;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->isOpen()Z

    move-result v2

    if-nez v2, :cond_0

    .line 60
    new-instance v2, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v2}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v2

    .line 62
    :cond_0
    iget-boolean v2, p0, Ljava/nio/ServerSocketChannelImpl;->isBound:Z

    if-nez v2, :cond_1

    .line 63
    new-instance v2, Ljava/nio/channels/NotYetBoundException;

    invoke-direct {v2}, Ljava/nio/channels/NotYetBoundException;-><init>()V

    throw v2

    .line 67
    :cond_1
    new-instance v1, Ljava/nio/SocketChannelImpl;

    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractSelectableChannel;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/nio/SocketChannelImpl;-><init>(Ljava/nio/channels/spi/SelectorProvider;Z)V

    .line 68
    .local v1, result:Ljava/nio/SocketChannelImpl;
    const/4 v0, 0x0

    .line 70
    .local v0, connected:Z
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->begin()V

    .line 71
    iget-object v3, p0, Ljava/nio/ServerSocketChannelImpl;->acceptLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 72
    :try_start_1
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractSelectableChannel;->blockingLock()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 75
    :cond_2
    :try_start_2
    iget-object v2, p0, Ljava/nio/ServerSocketChannelImpl;->socket:Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;

    invoke-virtual {v2, v1}, Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;->implAccept(Ljava/nio/SocketChannelImpl;)Ljava/net/Socket;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0

    .line 83
    :goto_0
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 84
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 86
    invoke-virtual {v1}, Ljava/nio/SocketChannelImpl;->socket()Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->isConnected()Z

    move-result v2

    invoke-virtual {p0, v2}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->end(Z)V

    .line 88
    invoke-virtual {v1}, Ljava/nio/SocketChannelImpl;->socket()Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/Socket;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_3

    .end local v1           #result:Ljava/nio/SocketChannelImpl;
    :goto_1
    return-object v1

    .line 78
    .restart local v1       #result:Ljava/nio/SocketChannelImpl;
    :catch_0
    move-exception v2

    .line 82
    :try_start_5
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractSelectableChannel;->isBlocking()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 83
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v2

    .line 84
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 86
    :catchall_2
    move-exception v2

    invoke-virtual {v1}, Ljava/nio/SocketChannelImpl;->socket()Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Socket;->isConnected()Z

    move-result v3

    invoke-virtual {p0, v3}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->end(Z)V

    throw v2

    .line 88
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getFD()Ljava/io/FileDescriptor;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Ljava/nio/ServerSocketChannelImpl;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->getFD$()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method protected declared-synchronized implCloseSelectableChannel()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/nio/ServerSocketChannelImpl;->socket:Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Ljava/nio/ServerSocketChannelImpl;->socket:Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;

    invoke-virtual {v0}, Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :cond_0
    monitor-exit p0

    return-void

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected implConfigureBlocking(Z)V
    .locals 2
    .parameter "blocking"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-virtual {p0}, Ljava/nio/channels/spi/AbstractSelectableChannel;->blockingLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 93
    :try_start_0
    iget-object v0, p0, Ljava/nio/ServerSocketChannelImpl;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->getFD$()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0, p1}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V

    .line 94
    monitor-exit v1

    .line 95
    return-void

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public socket()Ljava/net/ServerSocket;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Ljava/nio/ServerSocketChannelImpl;->socket:Ljava/nio/ServerSocketChannelImpl$ServerSocketAdapter;

    return-object v0
.end method
