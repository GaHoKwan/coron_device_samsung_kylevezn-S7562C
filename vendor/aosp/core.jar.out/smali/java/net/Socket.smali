.class public Ljava/net/Socket;
.super Ljava/lang/Object;
.source "Socket.java"


# static fields
.field private static factory:Ljava/net/SocketImplFactory;


# instance fields
.field private final connectLock:Ljava/lang/Object;

.field final impl:Ljava/net/SocketImpl;

.field private isBound:Z

.field private isClosed:Z

.field private isConnected:Z

.field volatile isCreated:Z

.field private isInputShutdown:Z

.field private isOutputShutdown:Z

.field private localAddress:Ljava/net/InetAddress;

.field private final proxy:Ljava/net/Proxy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean v0, p0, Ljava/net/Socket;->isCreated:Z

    .line 37
    iput-boolean v0, p0, Ljava/net/Socket;->isBound:Z

    .line 38
    iput-boolean v0, p0, Ljava/net/Socket;->isConnected:Z

    .line 39
    iput-boolean v0, p0, Ljava/net/Socket;->isClosed:Z

    .line 40
    iput-boolean v0, p0, Ljava/net/Socket;->isInputShutdown:Z

    .line 41
    iput-boolean v0, p0, Ljava/net/Socket;->isOutputShutdown:Z

    .line 43
    sget-object v0, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    iput-object v0, p0, Ljava/net/Socket;->localAddress:Ljava/net/InetAddress;

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/net/Socket;->connectLock:Ljava/lang/Object;

    .line 56
    sget-object v0, Ljava/net/Socket;->factory:Ljava/net/SocketImplFactory;

    if-eqz v0, :cond_0

    sget-object v0, Ljava/net/Socket;->factory:Ljava/net/SocketImplFactory;

    invoke-interface {v0}, Ljava/net/SocketImplFactory;->createSocketImpl()Ljava/net/SocketImpl;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/Socket;->proxy:Ljava/net/Proxy;

    .line 58
    return-void

    .line 56
    :cond_0
    new-instance v0, Ljava/net/PlainSocketImpl;

    invoke-direct {v0}, Ljava/net/PlainSocketImpl;-><init>()V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .parameter "dstName"
    .parameter "dstPort"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Ljava/net/Socket;-><init>(Ljava/lang/String;ILjava/net/InetAddress;I)V

    .line 150
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/net/InetAddress;I)V
    .locals 6
    .parameter "dstName"
    .parameter "dstPort"
    .parameter "localAddress"
    .parameter "localPort"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/net/Socket;-><init>()V

    .line 177
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Ljava/net/Socket;->tryAllAddresses(Ljava/lang/String;ILjava/net/InetAddress;IZ)V

    .line 178
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 6
    .parameter "hostName"
    .parameter "port"
    .parameter "streaming"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/net/Socket;-><init>()V

    .line 207
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Ljava/net/Socket;->tryAllAddresses(Ljava/lang/String;ILjava/net/InetAddress;IZ)V

    .line 208
    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;I)V
    .locals 6
    .parameter "dstAddress"
    .parameter "dstPort"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 223
    invoke-direct {p0}, Ljava/net/Socket;-><init>()V

    .line 224
    invoke-direct {p0, p1, p2}, Ljava/net/Socket;->checkDestination(Ljava/net/InetAddress;I)V

    .line 225
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Ljava/net/Socket;->startupSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;IZ)V

    .line 226
    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V
    .locals 6
    .parameter "dstAddress"
    .parameter "dstPort"
    .parameter "localAddress"
    .parameter "localPort"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 247
    invoke-direct {p0}, Ljava/net/Socket;-><init>()V

    .line 248
    invoke-direct {p0, p1, p2}, Ljava/net/Socket;->checkDestination(Ljava/net/InetAddress;I)V

    .line 249
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Ljava/net/Socket;->startupSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;IZ)V

    .line 250
    return-void
.end method

.method public constructor <init>(Ljava/net/InetAddress;IZ)V
    .locals 6
    .parameter "addr"
    .parameter "port"
    .parameter "streaming"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 272
    invoke-direct {p0}, Ljava/net/Socket;-><init>()V

    .line 273
    invoke-direct {p0, p1, p2}, Ljava/net/Socket;->checkDestination(Ljava/net/InetAddress;I)V

    .line 274
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Ljava/net/Socket;->startupSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;IZ)V

    .line 275
    return-void
.end method

.method public constructor <init>(Ljava/net/Proxy;)V
    .locals 3
    .parameter "proxy"

    .prologue
    const/4 v0, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean v0, p0, Ljava/net/Socket;->isCreated:Z

    .line 37
    iput-boolean v0, p0, Ljava/net/Socket;->isBound:Z

    .line 38
    iput-boolean v0, p0, Ljava/net/Socket;->isConnected:Z

    .line 39
    iput-boolean v0, p0, Ljava/net/Socket;->isClosed:Z

    .line 40
    iput-boolean v0, p0, Ljava/net/Socket;->isInputShutdown:Z

    .line 41
    iput-boolean v0, p0, Ljava/net/Socket;->isOutputShutdown:Z

    .line 43
    sget-object v0, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    iput-object v0, p0, Ljava/net/Socket;->localAddress:Ljava/net/InetAddress;

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/net/Socket;->connectLock:Ljava/lang/Object;

    .line 80
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_1

    .line 81
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid proxy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_1
    iput-object p1, p0, Ljava/net/Socket;->proxy:Ljava/net/Proxy;

    .line 84
    sget-object v0, Ljava/net/Socket;->factory:Ljava/net/SocketImplFactory;

    if-eqz v0, :cond_2

    sget-object v0, Ljava/net/Socket;->factory:Ljava/net/SocketImplFactory;

    invoke-interface {v0}, Ljava/net/SocketImplFactory;->createSocketImpl()Ljava/net/SocketImpl;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    .line 85
    return-void

    .line 84
    :cond_2
    new-instance v0, Ljava/net/PlainSocketImpl;

    invoke-direct {v0, p1}, Ljava/net/PlainSocketImpl;-><init>(Ljava/net/Proxy;)V

    goto :goto_0
.end method

.method protected constructor <init>(Ljava/net/SocketImpl;)V
    .locals 1
    .parameter "impl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean v0, p0, Ljava/net/Socket;->isCreated:Z

    .line 37
    iput-boolean v0, p0, Ljava/net/Socket;->isBound:Z

    .line 38
    iput-boolean v0, p0, Ljava/net/Socket;->isConnected:Z

    .line 39
    iput-boolean v0, p0, Ljava/net/Socket;->isClosed:Z

    .line 40
    iput-boolean v0, p0, Ljava/net/Socket;->isInputShutdown:Z

    .line 41
    iput-boolean v0, p0, Ljava/net/Socket;->isOutputShutdown:Z

    .line 43
    sget-object v0, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    iput-object v0, p0, Ljava/net/Socket;->localAddress:Ljava/net/InetAddress;

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/net/Socket;->connectLock:Ljava/lang/Object;

    .line 286
    iput-object p1, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    .line 287
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/Socket;->proxy:Ljava/net/Proxy;

    .line 288
    return-void
.end method

.method private cacheLocalAddress()V
    .locals 1

    .prologue
    .line 950
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    iget-object v0, v0, Ljava/net/SocketImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoBridge;->getSocketLocalAddress(Ljava/io/FileDescriptor;)Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Ljava/net/Socket;->localAddress:Ljava/net/InetAddress;

    .line 951
    return-void
.end method

.method private checkDestination(Ljava/net/InetAddress;I)V
    .locals 3
    .parameter "destAddr"
    .parameter "dstPort"

    .prologue
    .line 300
    if-ltz p2, :cond_0

    const v0, 0xffff

    if-le p2, v0, :cond_1

    .line 301
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Port out of range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :cond_1
    return-void
.end method

.method private checkOpenAndCreate(Z)V
    .locals 3
    .parameter "create"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 640
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 641
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "Socket is closed"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 643
    :cond_0
    if-nez p1, :cond_1

    .line 644
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v1

    if-nez v1, :cond_2

    .line 645
    new-instance v1, Ljava/net/SocketException;

    const-string v2, "Socket is not connected"

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 655
    :cond_1
    iget-boolean v1, p0, Ljava/net/Socket;->isCreated:Z

    if-eqz v1, :cond_3

    .line 671
    :cond_2
    :goto_0
    return-void

    .line 658
    :cond_3
    monitor-enter p0

    .line 659
    :try_start_0
    iget-boolean v1, p0, Ljava/net/Socket;->isCreated:Z

    if-eqz v1, :cond_4

    .line 660
    monitor-exit p0

    goto :goto_0

    .line 670
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 663
    :cond_4
    :try_start_1
    iget-object v1, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/SocketImpl;->create(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 669
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Ljava/net/Socket;->isCreated:Z

    .line 670
    monitor-exit p0

    goto :goto_0

    .line 664
    :catch_0
    move-exception v0

    .line 665
    .local v0, e:Ljava/net/SocketException;
    throw v0

    .line 666
    .end local v0           #e:Ljava/net/SocketException;
    :catch_1
    move-exception v0

    .line 667
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/net/SocketException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public static declared-synchronized setSocketImplFactory(Ljava/net/SocketImplFactory;)V
    .locals 3
    .parameter "fac"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 467
    const-class v1, Ljava/net/Socket;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ljava/net/Socket;->factory:Ljava/net/SocketImplFactory;

    if-eqz v0, :cond_0

    .line 468
    new-instance v0, Ljava/net/SocketException;

    const-string v2, "Factory already set"

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 467
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 470
    :cond_0
    :try_start_1
    sput-object p0, Ljava/net/Socket;->factory:Ljava/net/SocketImplFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 471
    monitor-exit v1

    return-void
.end method

.method private startupSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;IZ)V
    .locals 5
    .parameter "dstAddress"
    .parameter "dstPort"
    .parameter "localAddress"
    .parameter "localPort"
    .parameter "streaming"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 553
    if-ltz p4, :cond_0

    const v2, 0xffff

    if-le p4, v2, :cond_1

    .line 554
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Local port out of range: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 557
    :cond_1
    if-nez p3, :cond_4

    sget-object v0, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    .line 558
    .local v0, addr:Ljava/net/InetAddress;
    :goto_0
    monitor-enter p0

    .line 559
    :try_start_0
    iget-object v2, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v2, p5}, Ljava/net/SocketImpl;->create(Z)V

    .line 560
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/net/Socket;->isCreated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 562
    if-eqz p5, :cond_2

    :try_start_1
    invoke-direct {p0}, Ljava/net/Socket;->usingSocks()Z

    move-result v2

    if-nez v2, :cond_3

    .line 563
    :cond_2
    iget-object v2, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v2, v0, p4}, Ljava/net/SocketImpl;->bind(Ljava/net/InetAddress;I)V

    .line 565
    :cond_3
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/net/Socket;->isBound:Z

    .line 566
    iget-object v2, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v2, p1, p2}, Ljava/net/SocketImpl;->connect(Ljava/net/InetAddress;I)V

    .line 567
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/net/Socket;->isConnected:Z

    .line 568
    invoke-direct {p0}, Ljava/net/Socket;->cacheLocalAddress()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 573
    :try_start_2
    monitor-exit p0

    .line 574
    return-void

    .end local v0           #addr:Ljava/net/InetAddress;
    :cond_4
    move-object v0, p3

    .line 557
    goto :goto_0

    .line 569
    .restart local v0       #addr:Ljava/net/InetAddress;
    :catch_0
    move-exception v1

    .line 570
    .local v1, e:Ljava/io/IOException;
    iget-object v2, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v2}, Ljava/net/SocketImpl;->close()V

    .line 571
    throw v1

    .line 573
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method private tryAllAddresses(Ljava/lang/String;ILjava/net/InetAddress;IZ)V
    .locals 8
    .parameter "dstName"
    .parameter "dstPort"
    .parameter "localAddress"
    .parameter "localPort"
    .parameter "streaming"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v6

    .line 113
    .local v6, dstAddresses:[Ljava/net/InetAddress;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    array-length v0, v6

    add-int/lit8 v0, v0, -0x1

    if-ge v7, v0, :cond_0

    .line 114
    aget-object v1, v6, v7

    .line 116
    .local v1, dstAddress:Ljava/net/InetAddress;
    :try_start_0
    invoke-direct {p0, v1, p2}, Ljava/net/Socket;->checkDestination(Ljava/net/InetAddress;I)V

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 117
    invoke-direct/range {v0 .. v5}, Ljava/net/Socket;->startupSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;IZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_1
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 113
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 125
    .end local v1           #dstAddress:Ljava/net/InetAddress;
    :cond_0
    array-length v0, v6

    add-int/lit8 v0, v0, -0x1

    aget-object v1, v6, v0

    .line 126
    .restart local v1       #dstAddress:Ljava/net/InetAddress;
    invoke-direct {p0, v1, p2}, Ljava/net/Socket;->checkDestination(Ljava/net/InetAddress;I)V

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 127
    invoke-direct/range {v0 .. v5}, Ljava/net/Socket;->startupSocket(Ljava/net/InetAddress;ILjava/net/InetAddress;IZ)V

    goto :goto_1
.end method

.method private usingSocks()Z
    .locals 2

    .prologue
    .line 577
    iget-object v0, p0, Ljava/net/Socket;->proxy:Ljava/net/Proxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/net/Socket;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method accepted()V
    .locals 1

    .prologue
    .line 945
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/Socket;->isConnected:Z

    iput-boolean v0, p0, Ljava/net/Socket;->isBound:Z

    iput-boolean v0, p0, Ljava/net/Socket;->isCreated:Z

    .line 946
    invoke-direct {p0}, Ljava/net/Socket;->cacheLocalAddress()V

    .line 947
    return-void
.end method

.method public bind(Ljava/net/SocketAddress;)V
    .locals 7
    .parameter "localAddr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 741
    invoke-direct {p0, v4}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 742
    invoke-virtual {p0}, Ljava/net/Socket;->isBound()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 743
    new-instance v4, Ljava/net/BindException;

    const-string v5, "Socket is already bound"

    invoke-direct {v4, v5}, Ljava/net/BindException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 746
    :cond_0
    const/4 v3, 0x0

    .line 747
    .local v3, port:I
    sget-object v0, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    .line 748
    .local v0, addr:Ljava/net/InetAddress;
    if-eqz p1, :cond_3

    .line 749
    instance-of v4, p1, Ljava/net/InetSocketAddress;

    if-nez v4, :cond_1

    .line 750
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Local address not an InetSocketAddress: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    move-object v2, p1

    .line 753
    check-cast v2, Ljava/net/InetSocketAddress;

    .line 754
    .local v2, inetAddr:Ljava/net/InetSocketAddress;
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    if-nez v0, :cond_2

    .line 755
    new-instance v4, Ljava/net/UnknownHostException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Host is unresolved: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 757
    :cond_2
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    .line 760
    .end local v2           #inetAddr:Ljava/net/InetSocketAddress;
    :cond_3
    monitor-enter p0

    .line 762
    :try_start_0
    iget-object v4, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v4, v0, v3}, Ljava/net/SocketImpl;->bind(Ljava/net/InetAddress;I)V

    .line 763
    const/4 v4, 0x1

    iput-boolean v4, p0, Ljava/net/Socket;->isBound:Z

    .line 764
    invoke-direct {p0}, Ljava/net/Socket;->cacheLocalAddress()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 769
    :try_start_1
    monitor-exit p0

    .line 770
    return-void

    .line 765
    :catch_0
    move-exception v1

    .line 766
    .local v1, e:Ljava/io/IOException;
    iget-object v4, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v4}, Ljava/net/SocketImpl;->close()V

    .line 767
    throw v1

    .line 769
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 313
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Ljava/net/Socket;->isClosed:Z

    .line 315
    sget-object v0, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    iput-object v0, p0, Ljava/net/Socket;->localAddress:Ljava/net/InetAddress;

    .line 316
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    monitor-exit p0

    return-void

    .line 313
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public connect(Ljava/net/SocketAddress;)V
    .locals 1
    .parameter "remoteAddr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 785
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 786
    return-void
.end method

.method public connect(Ljava/net/SocketAddress;I)V
    .locals 8
    .parameter "remoteAddr"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 807
    invoke-direct {p0, v4}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 808
    if-gez p2, :cond_0

    .line 809
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "timeout < 0"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 811
    :cond_0
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 812
    new-instance v4, Ljava/net/SocketException;

    const-string v5, "Already connected"

    invoke-direct {v4, v5}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 814
    :cond_1
    if-nez p1, :cond_2

    .line 815
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "remoteAddr == null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 818
    :cond_2
    instance-of v4, p1, Ljava/net/InetSocketAddress;

    if-nez v4, :cond_3

    .line 819
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Remote address not an InetSocketAddress: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    move-object v2, p1

    .line 822
    check-cast v2, Ljava/net/InetSocketAddress;

    .line 824
    .local v2, inetAddr:Ljava/net/InetSocketAddress;
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .local v0, addr:Ljava/net/InetAddress;
    if-nez v0, :cond_4

    .line 825
    new-instance v4, Ljava/net/UnknownHostException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Host is unresolved: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 827
    :cond_4
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    .line 829
    .local v3, port:I
    invoke-direct {p0, v0, v3}, Ljava/net/Socket;->checkDestination(Ljava/net/InetAddress;I)V

    .line 830
    iget-object v5, p0, Ljava/net/Socket;->connectLock:Ljava/lang/Object;

    monitor-enter v5

    .line 832
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->isBound()Z

    move-result v4

    if-nez v4, :cond_6

    .line 837
    invoke-direct {p0}, Ljava/net/Socket;->usingSocks()Z

    move-result v4

    if-nez v4, :cond_5

    .line 838
    iget-object v4, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    sget-object v6, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Ljava/net/SocketImpl;->bind(Ljava/net/InetAddress;I)V

    .line 840
    :cond_5
    const/4 v4, 0x1

    iput-boolean v4, p0, Ljava/net/Socket;->isBound:Z

    .line 842
    :cond_6
    iget-object v4, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v4, p1, p2}, Ljava/net/SocketImpl;->connect(Ljava/net/SocketAddress;I)V

    .line 843
    const/4 v4, 0x1

    iput-boolean v4, p0, Ljava/net/Socket;->isConnected:Z

    .line 844
    invoke-direct {p0}, Ljava/net/Socket;->cacheLocalAddress()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 849
    :try_start_1
    monitor-exit v5

    .line 850
    return-void

    .line 845
    :catch_0
    move-exception v1

    .line 846
    .local v1, e:Ljava/io/IOException;
    iget-object v4, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v4}, Ljava/net/SocketImpl;->close()V

    .line 847
    throw v1

    .line 849
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public getChannel()Ljava/nio/channels/SocketChannel;
    .locals 1

    .prologue
    .line 962
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFileDescriptor$()Ljava/io/FileDescriptor;
    .locals 1

    .prologue
    .line 969
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    iget-object v0, v0, Ljava/net/SocketImpl;->fd:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 324
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 325
    const/4 v0, 0x0

    .line 327
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    goto :goto_0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 339
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 340
    invoke-virtual {p0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket input is shutdown"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 343
    :cond_0
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getKeepAlive()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 350
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 351
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Ljava/net/Socket;->localAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .prologue
    .line 366
    invoke-virtual {p0}, Ljava/net/Socket;->isBound()Z

    move-result v0

    if-nez v0, :cond_0

    .line 367
    const/4 v0, -0x1

    .line 369
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->getLocalPort()I

    move-result v0

    goto :goto_0
.end method

.method public getLocalSocketAddress()Ljava/net/SocketAddress;
    .locals 3

    .prologue
    .line 679
    invoke-virtual {p0}, Ljava/net/Socket;->isBound()Z

    move-result v0

    if-nez v0, :cond_0

    .line 680
    const/4 v0, 0x0

    .line 682
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/Socket;->getLocalPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    goto :goto_0
.end method

.method public getOOBInline()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 902
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 903
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 381
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 382
    invoke-virtual {p0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket output is shutdown"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 385
    :cond_0
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 393
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 394
    const/4 v0, 0x0

    .line 396
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->getPort()I

    move-result v0

    goto :goto_0
.end method

.method public declared-synchronized getReceiveBufferSize()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 418
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 419
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 418
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRemoteSocketAddress()Ljava/net/SocketAddress;
    .locals 3

    .prologue
    .line 692
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 693
    const/4 v0, 0x0

    .line 695
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/Socket;->getPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    goto :goto_0
.end method

.method public getReuseAddress()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 886
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 887
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized getSendBufferSize()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 426
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 427
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 426
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSoLinger()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 404
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 406
    iget-object v1, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    .line 407
    .local v0, value:Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 408
    check-cast v0, Ljava/lang/Integer;

    .end local v0           #value:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 410
    :goto_0
    return v1

    .restart local v0       #value:Ljava/lang/Object;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public declared-synchronized getSoTimeout()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 434
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 435
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/16 v1, 0x1006

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 434
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getTcpNoDelay()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 442
    invoke-direct {p0, v1}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 443
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getTrafficClass()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 921
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 922
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/net/SocketImpl;->getOption(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public isBound()Z
    .locals 1

    .prologue
    .line 705
    iget-boolean v0, p0, Ljava/net/Socket;->isBound:Z

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 723
    iget-boolean v0, p0, Ljava/net/Socket;->isClosed:Z

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 714
    iget-boolean v0, p0, Ljava/net/Socket;->isConnected:Z

    return v0
.end method

.method public isInputShutdown()Z
    .locals 1

    .prologue
    .line 860
    iget-boolean v0, p0, Ljava/net/Socket;->isInputShutdown:Z

    return v0
.end method

.method public isOutputShutdown()Z
    .locals 1

    .prologue
    .line 871
    iget-boolean v0, p0, Ljava/net/Socket;->isOutputShutdown:Z

    return v0
.end method

.method public sendUrgentData(I)V
    .locals 1
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 935
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0, p1}, Ljava/net/SocketImpl;->sendUrgentData(I)V

    .line 936
    return-void
.end method

.method public setKeepAlive(Z)V
    .locals 3
    .parameter "keepAlive"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 450
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    if-eqz v0, :cond_0

    .line 451
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 452
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/16 v1, 0x8

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    .line 454
    :cond_0
    return-void
.end method

.method public setOOBInline(Z)V
    .locals 3
    .parameter "oobinline"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 894
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 895
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/16 v1, 0x1003

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    .line 896
    return-void
.end method

.method public setPerformancePreferences(III)V
    .locals 0
    .parameter "connectionTime"
    .parameter "latency"
    .parameter "bandwidth"

    .prologue
    .line 988
    return-void
.end method

.method public declared-synchronized setReceiveBufferSize(I)V
    .locals 3
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 488
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 489
    if-ge p1, v1, :cond_0

    .line 490
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size < 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 488
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 492
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/16 v1, 0x1002

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 493
    monitor-exit p0

    return-void
.end method

.method public setReuseAddress(Z)V
    .locals 3
    .parameter "reuse"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 878
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 879
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/4 v1, 0x4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    .line 880
    return-void
.end method

.method public declared-synchronized setSendBufferSize(I)V
    .locals 3
    .parameter "size"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 477
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 478
    if-ge p1, v1, :cond_0

    .line 479
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size < 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 477
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 481
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/16 v1, 0x1001

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 482
    monitor-exit p0

    return-void
.end method

.method public setSoLinger(ZI)V
    .locals 3
    .parameter "on"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x80

    .line 500
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 502
    if-eqz p1, :cond_0

    if-gez p2, :cond_0

    .line 503
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 505
    :cond_0
    if-eqz p1, :cond_1

    .line 506
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    .line 510
    :goto_0
    return-void

    .line 508
    :cond_1
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public declared-synchronized setSoTimeout(I)V
    .locals 3
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 518
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 519
    if-gez p1, :cond_0

    .line 520
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 518
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 522
    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/16 v1, 0x1006

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 523
    monitor-exit p0

    return-void
.end method

.method public setTcpNoDelay(Z)V
    .locals 3
    .parameter "on"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 529
    invoke-direct {p0, v2}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 530
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    .line 531
    return-void
.end method

.method public setTrafficClass(I)V
    .locals 3
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 910
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 911
    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-le p1, v0, :cond_1

    .line 912
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 914
    :cond_1
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    const/4 v1, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/SocketImpl;->setOption(ILjava/lang/Object;)V

    .line 915
    return-void
.end method

.method public shutdownInput()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 605
    invoke-virtual {p0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 606
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket input is shutdown"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 608
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 609
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->shutdownInput()V

    .line 610
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/Socket;->isInputShutdown:Z

    .line 611
    return-void
.end method

.method public shutdownOutput()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 624
    invoke-virtual {p0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 625
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket output is shutdown"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 627
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/net/Socket;->checkOpenAndCreate(Z)V

    .line 628
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->shutdownOutput()V

    .line 629
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/net/Socket;->isOutputShutdown:Z

    .line 630
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 588
    invoke-virtual {p0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 589
    const-string v0, "Socket[unconnected]"

    .line 591
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljava/net/Socket;->impl:Ljava/net/SocketImpl;

    invoke-virtual {v0}, Ljava/net/SocketImpl;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
