.class Ljava/nio/SocketChannelImpl$SocketAdapter;
.super Ljava/net/Socket;
.source "SocketChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/SocketChannelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SocketAdapter"
.end annotation


# instance fields
.field private final channel:Ljava/nio/SocketChannelImpl;

.field private final socketImpl:Ljava/net/PlainSocketImpl;


# direct methods
.method constructor <init>(Ljava/net/PlainSocketImpl;Ljava/nio/SocketChannelImpl;)V
    .locals 0
    .parameter "socketImpl"
    .parameter "channel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 479
    invoke-direct {p0, p1}, Ljava/net/Socket;-><init>(Ljava/net/SocketImpl;)V

    .line 480
    iput-object p1, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->socketImpl:Ljava/net/PlainSocketImpl;

    .line 481
    iput-object p2, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    .line 482
    invoke-static {p0}, Ljava/net/SocketUtils;->setCreated(Ljava/net/Socket;)V

    .line 483
    return-void
.end method

.method private checkOpenAndConnected()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 573
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 574
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 576
    :cond_0
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    invoke-virtual {v0}, Ljava/nio/SocketChannelImpl;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 577
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is not connected"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 579
    :cond_1
    return-void
.end method


# virtual methods
.method public bind(Ljava/net/SocketAddress;)V
    .locals 2
    .parameter "localAddr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 531
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    invoke-virtual {v0}, Ljava/nio/SocketChannelImpl;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 532
    new-instance v0, Ljava/nio/channels/AlreadyConnectedException;

    invoke-direct {v0}, Ljava/nio/channels/AlreadyConnectedException;-><init>()V

    throw v0

    .line 534
    :cond_0
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    #getter for: Ljava/nio/SocketChannelImpl;->status:I
    invoke-static {v0}, Ljava/nio/SocketChannelImpl;->access$200(Ljava/nio/SocketChannelImpl;)I

    move-result v0

    if-ne v1, v0, :cond_1

    .line 535
    new-instance v0, Ljava/nio/channels/ConnectionPendingException;

    invoke-direct {v0}, Ljava/nio/channels/ConnectionPendingException;-><init>()V

    throw v0

    .line 537
    :cond_1
    invoke-super {p0, p1}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 538
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    #calls: Ljava/nio/SocketChannelImpl;->initLocalAddressAndPort()V
    invoke-static {v0}, Ljava/nio/SocketChannelImpl;->access$100(Ljava/nio/SocketChannelImpl;)V

    .line 539
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    #setter for: Ljava/nio/SocketChannelImpl;->isBound:Z
    invoke-static {v0, v1}, Ljava/nio/SocketChannelImpl;->access$002(Ljava/nio/SocketChannelImpl;Z)Z

    .line 540
    return-void
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 544
    iget-object v1, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    monitor-enter v1

    .line 545
    :try_start_0
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 550
    :goto_0
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    const/4 v2, 0x3

    #setter for: Ljava/nio/SocketChannelImpl;->status:I
    invoke-static {v0, v2}, Ljava/nio/SocketChannelImpl;->access$202(Ljava/nio/SocketChannelImpl;I)I

    .line 551
    monitor-exit v1

    .line 552
    return-void

    .line 548
    :cond_0
    invoke-super {p0}, Ljava/net/Socket;->close()V

    goto :goto_0

    .line 551
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public connect(Ljava/net/SocketAddress;I)V
    .locals 2
    .parameter "remoteAddr"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 515
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    invoke-virtual {v0}, Ljava/nio/channels/spi/AbstractSelectableChannel;->isBlocking()Z

    move-result v0

    if-nez v0, :cond_0

    .line 516
    new-instance v0, Ljava/nio/channels/IllegalBlockingModeException;

    invoke-direct {v0}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    throw v0

    .line 518
    :cond_0
    invoke-virtual {p0}, Ljava/nio/SocketChannelImpl$SocketAdapter;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 519
    new-instance v0, Ljava/nio/channels/AlreadyConnectedException;

    invoke-direct {v0}, Ljava/nio/channels/AlreadyConnectedException;-><init>()V

    throw v0

    .line 521
    :cond_1
    invoke-super {p0, p1, p2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 522
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    #calls: Ljava/nio/SocketChannelImpl;->initLocalAddressAndPort()V
    invoke-static {v0}, Ljava/nio/SocketChannelImpl;->access$100(Ljava/nio/SocketChannelImpl;)V

    .line 523
    invoke-super {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 524
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    invoke-virtual {v0}, Ljava/nio/SocketChannelImpl;->setConnected()V

    .line 525
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    invoke-super {p0}, Ljava/net/Socket;->isBound()Z

    move-result v1

    #setter for: Ljava/nio/SocketChannelImpl;->isBound:Z
    invoke-static {v0, v1}, Ljava/nio/SocketChannelImpl;->access$002(Ljava/nio/SocketChannelImpl;Z)Z

    .line 527
    :cond_2
    return-void
.end method

.method public getChannel()Ljava/nio/channels/SocketChannel;
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    return-object v0
.end method

.method public getFileDescriptor$()Ljava/io/FileDescriptor;
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->socketImpl:Ljava/net/PlainSocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->getFD$()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 565
    invoke-direct {p0}, Ljava/nio/SocketChannelImpl$SocketAdapter;->checkOpenAndConnected()V

    .line 566
    invoke-virtual {p0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 567
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket input is shutdown"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 569
    :cond_0
    new-instance v0, Ljava/nio/SocketChannelImpl$SocketChannelInputStream;

    iget-object v1, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    invoke-direct {v0, v1}, Ljava/nio/SocketChannelImpl$SocketChannelInputStream;-><init>(Ljava/nio/channels/SocketChannel;)V

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 2

    .prologue
    .line 507
    :try_start_0
    iget-object v1, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    invoke-virtual {v1}, Ljava/nio/SocketChannelImpl;->getLocalAddress()Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 509
    :goto_0
    return-object v1

    .line 508
    :catch_0
    move-exception v0

    .line 509
    .local v0, e:Ljava/net/UnknownHostException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 556
    invoke-direct {p0}, Ljava/nio/SocketChannelImpl$SocketAdapter;->checkOpenAndConnected()V

    .line 557
    invoke-virtual {p0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 558
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket output is shutdown"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 560
    :cond_0
    new-instance v0, Ljava/nio/SocketChannelImpl$SocketChannelOutputStream;

    iget-object v1, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    invoke-direct {v0, v1}, Ljava/nio/SocketChannelImpl$SocketChannelOutputStream;-><init>(Ljava/nio/channels/SocketChannel;)V

    return-object v0
.end method

.method public isBound()Z
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    #getter for: Ljava/nio/SocketChannelImpl;->isBound:Z
    invoke-static {v0}, Ljava/nio/SocketChannelImpl;->access$000(Ljava/nio/SocketChannelImpl;)Z

    move-result v0

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->channel:Ljava/nio/SocketChannelImpl;

    invoke-virtual {v0}, Ljava/nio/SocketChannelImpl;->isConnected()Z

    move-result v0

    return v0
.end method

.method socketImpl()Ljava/net/PlainSocketImpl;
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Ljava/nio/SocketChannelImpl$SocketAdapter;->socketImpl:Ljava/net/PlainSocketImpl;

    return-object v0
.end method
