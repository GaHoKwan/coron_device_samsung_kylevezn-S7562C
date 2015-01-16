.class public final Llibcore/io/IoBridge;
.super Ljava/lang/Object;
.source "IoBridge.java"


# static fields
.field public static final JAVA_IP_MULTICAST_TTL:I = 0x11

.field public static final JAVA_MCAST_JOIN_GROUP:I = 0x13

.field public static final JAVA_MCAST_LEAVE_GROUP:I = 0x14


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static available(Ljava/io/FileDescriptor;)I
    .locals 5
    .parameter "fd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 51
    :try_start_0
    new-instance v0, Llibcore/util/MutableInt;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Llibcore/util/MutableInt;-><init>(I)V

    .line 52
    .local v0, available:Llibcore/util/MutableInt;
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v4, Llibcore/io/OsConstants;->FIONREAD:I

    invoke-interface {v3, p0, v4, v0}, Llibcore/io/Os;->ioctlInt(Ljava/io/FileDescriptor;ILlibcore/util/MutableInt;)I

    .line 53
    iget v3, v0, Llibcore/util/MutableInt;->value:I

    if-gez v3, :cond_0

    .line 60
    const/4 v3, 0x0

    iput v3, v0, Llibcore/util/MutableInt;->value:I

    .line 62
    :cond_0
    iget v2, v0, Llibcore/util/MutableInt;->value:I
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .end local v0           #available:Llibcore/util/MutableInt;
    :cond_1
    return v2

    .line 63
    :catch_0
    move-exception v1

    .line 64
    .local v1, errnoException:Llibcore/io/ErrnoException;
    iget v3, v1, Llibcore/io/ErrnoException;->errno:I

    sget v4, Llibcore/io/OsConstants;->ENOTTY:I

    if-eq v3, v4, :cond_1

    .line 68
    invoke-virtual {v1}, Llibcore/io/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v2

    throw v2
.end method

.method public static bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    .locals 6
    .parameter "fd"
    .parameter "address"
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 74
    instance-of v3, p1, Ljava/net/Inet6Address;

    if-eqz v3, :cond_1

    move-object v3, p1

    check-cast v3, Ljava/net/Inet6Address;

    invoke-virtual {v3}, Ljava/net/Inet6Address;->getScopeId()I

    move-result v3

    if-nez v3, :cond_1

    .line 76
    invoke-static {p1}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v2

    .line 77
    .local v2, nif:Ljava/net/NetworkInterface;
    if-nez v2, :cond_0

    .line 78
    new-instance v3, Ljava/net/SocketException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t bind to a link-local address without a scope id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 81
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v4

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v5

    invoke-static {v3, v4, v5}, Ljava/net/Inet6Address;->getByAddress(Ljava/lang/String;[BI)Ljava/net/Inet6Address;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 87
    .end local v2           #nif:Ljava/net/NetworkInterface;
    :cond_1
    :try_start_1
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v3, p0, p1, p2}, Llibcore/io/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    :try_end_1
    .catch Llibcore/io/ErrnoException; {:try_start_1 .. :try_end_1} :catch_1

    .line 91
    return-void

    .line 82
    .restart local v2       #nif:Ljava/net/NetworkInterface;
    :catch_0
    move-exception v1

    .line 83
    .local v1, ex:Ljava/net/UnknownHostException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 88
    .end local v1           #ex:Ljava/net/UnknownHostException;
    .end local v2           #nif:Ljava/net/NetworkInterface;
    :catch_1
    move-exception v0

    .line 89
    .local v0, errnoException:Llibcore/io/ErrnoException;
    new-instance v3, Ljava/net/BindException;

    invoke-virtual {v0}, Llibcore/io/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/net/BindException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private static booleanFromInt(I)Z
    .locals 1
    .parameter "i"

    .prologue
    .line 298
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static booleanToInt(Z)I
    .locals 1
    .parameter "b"

    .prologue
    .line 302
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static closeSocket(Ljava/io/FileDescriptor;)V
    .locals 3
    .parameter "fd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    invoke-virtual {p0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v2

    if-nez v2, :cond_0

    .line 192
    :goto_0
    return-void

    .line 182
    :cond_0
    invoke-virtual {p0}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v0

    .line 183
    .local v0, intFd:I
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Ljava/io/FileDescriptor;->setInt$(I)V

    .line 184
    new-instance v1, Ljava/io/FileDescriptor;

    invoke-direct {v1}, Ljava/io/FileDescriptor;-><init>()V

    .line 185
    .local v1, oldFd:Ljava/io/FileDescriptor;
    invoke-virtual {v1, v0}, Ljava/io/FileDescriptor;->setInt$(I)V

    .line 186
    invoke-static {v1}, Llibcore/io/AsynchronousCloseMonitor;->signalBlockedThreads(Ljava/io/FileDescriptor;)V

    .line 188
    :try_start_0
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v2, v1}, Llibcore/io/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 189
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)Z
    .locals 2
    .parameter "fd"
    .parameter "inetAddress"
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 100
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, p2, v1}, Llibcore/io/IoBridge;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;II)Z
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, ex:Ljava/net/SocketTimeoutException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public static connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;II)Z
    .locals 4
    .parameter "fd"
    .parameter "inetAddress"
    .parameter "port"
    .parameter "timeoutMs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/net/SocketTimeoutException;
        }
    .end annotation

    .prologue
    .line 112
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Llibcore/io/IoBridge;->connectErrno(Ljava/io/FileDescriptor;Ljava/net/InetAddress;II)Z
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v2

    return v2

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, errnoException:Llibcore/io/ErrnoException;
    new-instance v2, Ljava/net/ConnectException;

    invoke-static {p1, p2, p3, v0}, Llibcore/io/IoBridge;->connectDetail(Ljava/net/InetAddress;IILlibcore/io/ErrnoException;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 115
    .end local v0           #errnoException:Llibcore/io/ErrnoException;
    :catch_1
    move-exception v1

    .line 116
    .local v1, ex:Ljava/net/SocketException;
    throw v1

    .line 117
    .end local v1           #ex:Ljava/net/SocketException;
    :catch_2
    move-exception v1

    .line 118
    .local v1, ex:Ljava/net/SocketTimeoutException;
    throw v1

    .line 119
    .end local v1           #ex:Ljava/net/SocketTimeoutException;
    :catch_3
    move-exception v1

    .line 120
    .local v1, ex:Ljava/io/IOException;
    new-instance v2, Ljava/net/SocketException;

    invoke-direct {v2, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static connectDetail(Ljava/net/InetAddress;IILlibcore/io/ErrnoException;)Ljava/lang/String;
    .locals 3
    .parameter "inetAddress"
    .parameter "port"
    .parameter "timeoutMs"
    .parameter "cause"

    .prologue
    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to connect to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, detail:Ljava/lang/String;
    if-lez p2, :cond_0

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    :cond_0
    if-eqz p3, :cond_1

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Llibcore/io/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 174
    :cond_1
    return-object v0
.end method

.method private static connectErrno(Ljava/io/FileDescriptor;Ljava/net/InetAddress;II)Z
    .locals 9
    .parameter "fd"
    .parameter "inetAddress"
    .parameter "port"
    .parameter "timeoutMs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 126
    if-nez p3, :cond_0

    .line 127
    sget-object v4, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v4, p0, p1, p2}, Llibcore/io/Os;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 163
    :goto_0
    return v8

    .line 139
    :cond_0
    const/4 v4, 0x0

    invoke-static {p0, v4}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V

    .line 142
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    int-to-long v6, p3

    add-long v1, v4, v6

    .line 144
    .local v1, finishTimeMs:J
    :try_start_0
    sget-object v4, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v4, p0, p1, p2}, Llibcore/io/Os;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 145
    const/4 v4, 0x1

    invoke-static {p0, v4}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, errnoException:Llibcore/io/ErrnoException;
    iget v4, v0, Llibcore/io/ErrnoException;->errno:I

    sget v5, Llibcore/io/OsConstants;->EINPROGRESS:I

    if-eq v4, v5, :cond_1

    .line 149
    throw v0

    .line 157
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v1, v4

    long-to-int v3, v4

    .line 158
    .local v3, remainingTimeoutMs:I
    if-gtz v3, :cond_2

    .line 159
    new-instance v4, Ljava/net/SocketTimeoutException;

    const/4 v5, 0x0

    invoke-static {p1, p2, p3, v5}, Llibcore/io/IoBridge;->connectDetail(Ljava/net/InetAddress;IILlibcore/io/ErrnoException;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 161
    :cond_2
    invoke-static {p0, p1, p2, p3, v3}, Llibcore/io/IoBridge;->isConnected(Ljava/io/FileDescriptor;Ljava/net/InetAddress;III)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 162
    invoke-static {p0, v8}, Llibcore/io/IoUtils;->setBlocking(Ljava/io/FileDescriptor;Z)V

    goto :goto_0
.end method

.method public static getSocketLocalAddress(Ljava/io/FileDescriptor;)Ljava/net/InetAddress;
    .locals 5
    .parameter "fd"

    .prologue
    .line 589
    :try_start_0
    sget-object v4, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v4, p0}, Llibcore/io/Os;->getsockname(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;

    move-result-object v3

    .line 590
    .local v3, sa:Ljava/net/SocketAddress;
    move-object v0, v3

    check-cast v0, Ljava/net/InetSocketAddress;

    move-object v2, v0

    .line 591
    .local v2, isa:Ljava/net/InetSocketAddress;
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 592
    .end local v2           #isa:Ljava/net/InetSocketAddress;
    .end local v3           #sa:Ljava/net/SocketAddress;
    :catch_0
    move-exception v1

    .line 593
    .local v1, errnoException:Llibcore/io/ErrnoException;
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4
.end method

.method public static getSocketLocalPort(Ljava/io/FileDescriptor;)I
    .locals 5
    .parameter "fd"

    .prologue
    .line 599
    :try_start_0
    sget-object v4, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v4, p0}, Llibcore/io/Os;->getsockname(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;

    move-result-object v3

    .line 600
    .local v3, sa:Ljava/net/SocketAddress;
    move-object v0, v3

    check-cast v0, Ljava/net/InetSocketAddress;

    move-object v2, v0

    .line 601
    .local v2, isa:Ljava/net/InetSocketAddress;
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    return v4

    .line 602
    .end local v2           #isa:Ljava/net/InetSocketAddress;
    .end local v3           #sa:Ljava/net/SocketAddress;
    :catch_0
    move-exception v1

    .line 603
    .local v1, errnoException:Llibcore/io/ErrnoException;
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4
.end method

.method public static getSocketOption(Ljava/io/FileDescriptor;I)Ljava/lang/Object;
    .locals 2
    .parameter "fd"
    .parameter "option"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 244
    :try_start_0
    invoke-static {p0, p1}, Llibcore/io/IoBridge;->getSocketOptionErrno(Ljava/io/FileDescriptor;I)Ljava/lang/Object;
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, errnoException:Llibcore/io/ErrnoException;
    invoke-virtual {v0}, Llibcore/io/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v1

    throw v1
.end method

.method private static getSocketOptionErrno(Ljava/io/FileDescriptor;I)Ljava/lang/Object;
    .locals 4
    .parameter "fd"
    .parameter "option"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 251
    sparse-switch p1, :sswitch_data_0

    .line 293
    new-instance v1, Ljava/net/SocketException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown socket option: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 254
    :sswitch_0
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Llibcore/io/OsConstants;->IPPROTO_IP:I

    sget v3, Llibcore/io/OsConstants;->IP_MULTICAST_IF:I

    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptInAddr(Ljava/io/FileDescriptor;II)Ljava/net/InetAddress;

    move-result-object v1

    .line 291
    :goto_0
    return-object v1

    .line 257
    :sswitch_1
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Llibcore/io/OsConstants;->IPPROTO_IPV6:I

    sget v3, Llibcore/io/OsConstants;->IPV6_MULTICAST_IF:I

    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 261
    :sswitch_2
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Llibcore/io/OsConstants;->IPPROTO_IPV6:I

    sget v3, Llibcore/io/OsConstants;->IPV6_MULTICAST_LOOP:I

    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v1

    invoke-static {v1}, Llibcore/io/IoBridge;->booleanFromInt(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    .line 265
    :sswitch_3
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Llibcore/io/OsConstants;->IPPROTO_IPV6:I

    sget v3, Llibcore/io/OsConstants;->IPV6_MULTICAST_HOPS:I

    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 269
    :sswitch_4
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Llibcore/io/OsConstants;->IPPROTO_IPV6:I

    sget v3, Llibcore/io/OsConstants;->IPV6_TCLASS:I

    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 271
    :sswitch_5
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Llibcore/io/OsConstants;->SOL_SOCKET:I

    sget v3, Llibcore/io/OsConstants;->SO_BROADCAST:I

    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v1

    invoke-static {v1}, Llibcore/io/IoBridge;->booleanFromInt(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    .line 273
    :sswitch_6
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Llibcore/io/OsConstants;->SOL_SOCKET:I

    sget v3, Llibcore/io/OsConstants;->SO_KEEPALIVE:I

    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v1

    invoke-static {v1}, Llibcore/io/IoBridge;->booleanFromInt(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    .line 275
    :sswitch_7
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Llibcore/io/OsConstants;->SOL_SOCKET:I

    sget v3, Llibcore/io/OsConstants;->SO_LINGER:I

    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptLinger(Ljava/io/FileDescriptor;II)Llibcore/io/StructLinger;

    move-result-object v0

    .line 276
    .local v0, linger:Llibcore/io/StructLinger;
    invoke-virtual {v0}, Llibcore/io/StructLinger;->isOn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 277
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    .line 279
    :cond_0
    iget v1, v0, Llibcore/io/StructLinger;->l_linger:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_0

    .line 281
    .end local v0           #linger:Llibcore/io/StructLinger;
    :sswitch_8
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Llibcore/io/OsConstants;->SOL_SOCKET:I

    sget v3, Llibcore/io/OsConstants;->SO_OOBINLINE:I

    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v1

    invoke-static {v1}, Llibcore/io/IoBridge;->booleanFromInt(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_0

    .line 283
    :sswitch_9
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Llibcore/io/OsConstants;->SOL_SOCKET:I

    sget v3, Llibcore/io/OsConstants;->SO_SNDBUF:I

    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_0

    .line 285
    :sswitch_a
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Llibcore/io/OsConstants;->SOL_SOCKET:I

    sget v3, Llibcore/io/OsConstants;->SO_REUSEADDR:I

    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v1

    invoke-static {v1}, Llibcore/io/IoBridge;->booleanFromInt(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_0

    .line 287
    :sswitch_b
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Llibcore/io/OsConstants;->SOL_SOCKET:I

    sget v3, Llibcore/io/OsConstants;->SO_SNDBUF:I

    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_0

    .line 289
    :sswitch_c
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Llibcore/io/OsConstants;->SOL_SOCKET:I

    sget v3, Llibcore/io/OsConstants;->SO_RCVTIMEO:I

    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptTimeval(Ljava/io/FileDescriptor;II)Llibcore/io/StructTimeval;

    move-result-object v1

    invoke-virtual {v1}, Llibcore/io/StructTimeval;->toMillis()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_0

    .line 291
    :sswitch_d
    sget-object v1, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v2, Llibcore/io/OsConstants;->IPPROTO_TCP:I

    sget v3, Llibcore/io/OsConstants;->TCP_NODELAY:I

    invoke-interface {v1, p0, v2, v3}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v1

    invoke-static {v1}, Llibcore/io/IoBridge;->booleanFromInt(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_0

    .line 251
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_d
        0x3 -> :sswitch_4
        0x4 -> :sswitch_a
        0x8 -> :sswitch_6
        0x10 -> :sswitch_0
        0x11 -> :sswitch_3
        0x12 -> :sswitch_2
        0x1f -> :sswitch_1
        0x20 -> :sswitch_5
        0x80 -> :sswitch_7
        0x1001 -> :sswitch_b
        0x1002 -> :sswitch_9
        0x1003 -> :sswitch_8
        0x1006 -> :sswitch_c
    .end sparse-switch
.end method

.method public static isConnected(Ljava/io/FileDescriptor;Ljava/net/InetAddress;III)Z
    .locals 11
    .parameter "fd"
    .parameter "inetAddress"
    .parameter "port"
    .parameter "timeoutMs"
    .parameter "remainingTimeoutMs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 197
    const/4 v8, 0x1

    :try_start_0
    new-array v4, v8, [Llibcore/io/StructPollfd;

    const/4 v8, 0x0

    new-instance v9, Llibcore/io/StructPollfd;

    invoke-direct {v9}, Llibcore/io/StructPollfd;-><init>()V

    aput-object v9, v4, v8

    .line 198
    .local v4, pollFds:[Llibcore/io/StructPollfd;
    const/4 v8, 0x0

    aget-object v8, v4, v8

    iput-object p0, v8, Llibcore/io/StructPollfd;->fd:Ljava/io/FileDescriptor;

    .line 199
    const/4 v8, 0x0

    aget-object v8, v4, v8

    sget v9, Llibcore/io/OsConstants;->POLLOUT:I

    int-to-short v9, v9

    iput-short v9, v8, Llibcore/io/StructPollfd;->events:S

    .line 200
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v8, v4, p4}, Llibcore/io/Os;->poll([Llibcore/io/StructPollfd;I)I

    move-result v5

    .line 201
    .local v5, rc:I
    if-nez v5, :cond_1

    .line 214
    .end local v4           #pollFds:[Llibcore/io/StructPollfd;
    .end local v5           #rc:I
    :cond_0
    :goto_0
    return v6

    .line 204
    .restart local v4       #pollFds:[Llibcore/io/StructPollfd;
    .restart local v5       #rc:I
    :cond_1
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v9, Llibcore/io/OsConstants;->SOL_SOCKET:I

    sget v10, Llibcore/io/OsConstants;->SO_ERROR:I

    invoke-interface {v8, p0, v9, v10}, Llibcore/io/Os;->getsockoptInt(Ljava/io/FileDescriptor;II)I

    move-result v1

    .line 205
    .local v1, connectError:I
    if-nez v1, :cond_2

    move v6, v7

    .line 206
    goto :goto_0

    .line 208
    :cond_2
    new-instance v7, Llibcore/io/ErrnoException;

    const-string v8, "isConnected"

    invoke-direct {v7, v8, v1}, Llibcore/io/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw v7
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    .end local v1           #connectError:I
    .end local v4           #pollFds:[Llibcore/io/StructPollfd;
    .end local v5           #rc:I
    :catch_0
    move-exception v3

    .line 210
    .local v3, errnoException:Llibcore/io/ErrnoException;
    invoke-virtual {p0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v7

    if-nez v7, :cond_3

    .line 211
    new-instance v6, Ljava/net/SocketException;

    const-string v7, "Socket closed"

    invoke-direct {v6, v7}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 213
    :cond_3
    iget v7, v3, Llibcore/io/ErrnoException;->errno:I

    sget v8, Llibcore/io/OsConstants;->EINTR:I

    if-eq v7, v8, :cond_0

    .line 216
    move-object v0, v3

    .line 220
    .local v0, cause:Llibcore/io/ErrnoException;
    invoke-static {p1, p2, p3, v0}, Llibcore/io/IoBridge;->connectDetail(Ljava/net/InetAddress;IILlibcore/io/ErrnoException;)Ljava/lang/String;

    move-result-object v2

    .line 221
    .local v2, detail:Ljava/lang/String;
    iget v6, v0, Llibcore/io/ErrnoException;->errno:I

    sget v7, Llibcore/io/OsConstants;->ECONNRESET:I

    if-eq v6, v7, :cond_4

    iget v6, v0, Llibcore/io/ErrnoException;->errno:I

    sget v7, Llibcore/io/OsConstants;->ECONNREFUSED:I

    if-eq v6, v7, :cond_4

    iget v6, v0, Llibcore/io/ErrnoException;->errno:I

    sget v7, Llibcore/io/OsConstants;->EADDRNOTAVAIL:I

    if-eq v6, v7, :cond_4

    iget v6, v0, Llibcore/io/ErrnoException;->errno:I

    sget v7, Llibcore/io/OsConstants;->EADDRINUSE:I

    if-eq v6, v7, :cond_4

    iget v6, v0, Llibcore/io/ErrnoException;->errno:I

    sget v7, Llibcore/io/OsConstants;->ENETUNREACH:I

    if-ne v6, v7, :cond_5

    .line 224
    :cond_4
    new-instance v6, Ljava/net/ConnectException;

    invoke-direct {v6, v2, v0}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 225
    :cond_5
    iget v6, v0, Llibcore/io/ErrnoException;->errno:I

    sget v7, Llibcore/io/OsConstants;->EACCES:I

    if-ne v6, v7, :cond_6

    .line 226
    new-instance v6, Ljava/lang/SecurityException;

    invoke-direct {v6, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 227
    :cond_6
    iget v6, v0, Llibcore/io/ErrnoException;->errno:I

    sget v7, Llibcore/io/OsConstants;->ETIMEDOUT:I

    if-ne v6, v7, :cond_7

    .line 228
    new-instance v6, Ljava/net/SocketTimeoutException;

    invoke-direct {v6, v2, v0}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 230
    :cond_7
    new-instance v6, Ljava/net/SocketException;

    invoke-direct {v6, v2, v0}, Ljava/net/SocketException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method private static maybeThrowAfterRecvfrom(ZZLlibcore/io/ErrnoException;)I
    .locals 2
    .parameter "isRead"
    .parameter "isConnected"
    .parameter "errnoException"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;,
            Ljava/net/SocketTimeoutException;
        }
    .end annotation

    .prologue
    .line 548
    if-eqz p0, :cond_2

    .line 549
    iget v0, p2, Llibcore/io/ErrnoException;->errno:I

    sget v1, Llibcore/io/OsConstants;->EAGAIN:I

    if-eq v0, v1, :cond_0

    iget v0, p2, Llibcore/io/ErrnoException;->errno:I

    sget v1, Llibcore/io/OsConstants;->EWOULDBLOCK:I

    if-ne v0, v1, :cond_1

    .line 550
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 552
    :cond_1
    invoke-virtual {p2}, Llibcore/io/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v0

    throw v0

    .line 555
    :cond_2
    if-eqz p1, :cond_3

    iget v0, p2, Llibcore/io/ErrnoException;->errno:I

    sget v1, Llibcore/io/OsConstants;->ECONNREFUSED:I

    if-ne v0, v1, :cond_3

    .line 556
    new-instance v0, Ljava/net/PortUnreachableException;

    const-string v1, ""

    invoke-direct {v0, v1, p2}, Ljava/net/PortUnreachableException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 557
    :cond_3
    iget v0, p2, Llibcore/io/ErrnoException;->errno:I

    sget v1, Llibcore/io/OsConstants;->EAGAIN:I

    if-eq v0, v1, :cond_4

    iget v0, p2, Llibcore/io/ErrnoException;->errno:I

    sget v1, Llibcore/io/OsConstants;->EWOULDBLOCK:I

    if-ne v0, v1, :cond_5

    .line 558
    :cond_4
    new-instance v0, Ljava/net/SocketTimeoutException;

    invoke-direct {v0, p2}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 560
    :cond_5
    invoke-virtual {p2}, Llibcore/io/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v0

    throw v0
.end method

.method private static maybeThrowAfterSendto(ZLlibcore/io/ErrnoException;)I
    .locals 3
    .parameter "isDatagram"
    .parameter "errnoException"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 495
    if-eqz p0, :cond_1

    .line 496
    iget v0, p1, Llibcore/io/ErrnoException;->errno:I

    sget v1, Llibcore/io/OsConstants;->ECONNRESET:I

    if-eq v0, v1, :cond_0

    iget v0, p1, Llibcore/io/ErrnoException;->errno:I

    sget v1, Llibcore/io/OsConstants;->ECONNREFUSED:I

    if-ne v0, v1, :cond_2

    .line 503
    :cond_0
    return v2

    .line 500
    :cond_1
    iget v0, p1, Llibcore/io/ErrnoException;->errno:I

    sget v1, Llibcore/io/OsConstants;->EAGAIN:I

    if-eq v0, v1, :cond_0

    iget v0, p1, Llibcore/io/ErrnoException;->errno:I

    sget v1, Llibcore/io/OsConstants;->EWOULDBLOCK:I

    if-eq v0, v1, :cond_0

    .line 506
    :cond_2
    invoke-virtual {p1}, Llibcore/io/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v0

    throw v0
.end method

.method public static open(Ljava/lang/String;I)Ljava/io/FileDescriptor;
    .locals 7
    .parameter "path"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 396
    const/4 v2, 0x0

    .line 399
    .local v2, fd:Ljava/io/FileDescriptor;
    :try_start_0
    sget v4, Llibcore/io/OsConstants;->O_ACCMODE:I

    and-int/2addr v4, p1

    sget v5, Llibcore/io/OsConstants;->O_RDONLY:I

    if-ne v4, v5, :cond_1

    const/4 v3, 0x0

    .line 400
    .local v3, mode:I
    :goto_0
    sget-object v4, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v4, p0, p1, v3}, Llibcore/io/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v2

    .line 401
    invoke-virtual {v2}, Ljava/io/FileDescriptor;->valid()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 404
    sget-object v4, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v4, v2}, Llibcore/io/Os;->fstat(Ljava/io/FileDescriptor;)Llibcore/io/StructStat;

    move-result-object v4

    iget v4, v4, Llibcore/io/StructStat;->st_mode:I

    invoke-static {v4}, Llibcore/io/OsConstants;->S_ISDIR(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 405
    new-instance v4, Llibcore/io/ErrnoException;

    const-string v5, "open"

    sget v6, Llibcore/io/OsConstants;->EISDIR:I

    invoke-direct {v4, v5, v6}, Llibcore/io/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw v4
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    .end local v3           #mode:I
    :catch_0
    move-exception v0

    .line 411
    .local v0, errnoException:Llibcore/io/ErrnoException;
    if-eqz v2, :cond_0

    .line 412
    :try_start_1
    invoke-static {v2}, Llibcore/io/IoUtils;->close(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 416
    :cond_0
    :goto_1
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Llibcore/io/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 417
    .local v1, ex:Ljava/io/FileNotFoundException;
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 418
    throw v1

    .line 399
    .end local v0           #errnoException:Llibcore/io/ErrnoException;
    .end local v1           #ex:Ljava/io/FileNotFoundException;
    :cond_1
    const/16 v3, 0x180

    goto :goto_0

    .line 414
    .restart local v0       #errnoException:Llibcore/io/ErrnoException;
    :catch_1
    move-exception v4

    goto :goto_1

    .line 408
    .end local v0           #errnoException:Llibcore/io/ErrnoException;
    .restart local v3       #mode:I
    :cond_2
    return-object v2
.end method

.method private static postRecvfrom(ZLjava/net/DatagramPacket;ZLjava/net/InetSocketAddress;I)I
    .locals 1
    .parameter "isRead"
    .parameter "packet"
    .parameter "isConnected"
    .parameter "srcAddress"
    .parameter "byteCount"

    .prologue
    .line 534
    if-eqz p0, :cond_1

    if-nez p4, :cond_1

    .line 535
    const/4 p4, -0x1

    .line 544
    .end local p4
    :cond_0
    :goto_0
    return p4

    .line 537
    .restart local p4
    :cond_1
    if-eqz p1, :cond_0

    .line 538
    invoke-virtual {p1, p4}, Ljava/net/DatagramPacket;->setReceivedLength(I)V

    .line 539
    if-nez p2, :cond_0

    .line 540
    invoke-virtual {p3}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 541
    invoke-virtual {p3}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/DatagramPacket;->setPort(I)V

    goto :goto_0
.end method

.method public static read(Ljava/io/FileDescriptor;[BII)I
    .locals 4
    .parameter "fd"
    .parameter "bytes"
    .parameter "byteOffset"
    .parameter "byteCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 427
    array-length v2, p1

    invoke-static {v2, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 428
    if-nez p3, :cond_1

    .line 440
    :cond_0
    :goto_0
    return v1

    .line 432
    :cond_1
    :try_start_0
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v2, p0, p1, p2, p3}, Llibcore/io/Os;->read(Ljava/io/FileDescriptor;[BII)I
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 433
    .local v1, readCount:I
    if-nez v1, :cond_0

    .line 434
    const/4 v1, -0x1

    goto :goto_0

    .line 437
    .end local v1           #readCount:I
    :catch_0
    move-exception v0

    .line 438
    .local v0, errnoException:Llibcore/io/ErrnoException;
    iget v2, v0, Llibcore/io/ErrnoException;->errno:I

    sget v3, Llibcore/io/OsConstants;->EAGAIN:I

    if-eq v2, v3, :cond_0

    .line 442
    invoke-virtual {v0}, Llibcore/io/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v2

    throw v2
.end method

.method public static recvfrom(ZLjava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/DatagramPacket;Z)I
    .locals 4
    .parameter "isRead"
    .parameter "fd"
    .parameter "buffer"
    .parameter "flags"
    .parameter "packet"
    .parameter "isConnected"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 524
    if-eqz p4, :cond_0

    if-nez p5, :cond_0

    :try_start_0
    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2}, Ljava/net/InetSocketAddress;-><init>()V

    .line 525
    .local v2, srcAddress:Ljava/net/InetSocketAddress;
    :goto_0
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v3, p1, p2, p3, v2}, Llibcore/io/Os;->recvfrom(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetSocketAddress;)I

    move-result v1

    .line 526
    .local v1, result:I
    invoke-static {p0, p4, p5, v2, v1}, Llibcore/io/IoBridge;->postRecvfrom(ZLjava/net/DatagramPacket;ZLjava/net/InetSocketAddress;I)I
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 530
    .end local v2           #srcAddress:Ljava/net/InetSocketAddress;
    :goto_1
    return v1

    .line 524
    .end local v1           #result:I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 527
    :catch_0
    move-exception v0

    .line 528
    .local v0, errnoException:Llibcore/io/ErrnoException;
    invoke-static {p0, p5, v0}, Llibcore/io/IoBridge;->maybeThrowAfterRecvfrom(ZZLlibcore/io/ErrnoException;)I

    move-result v1

    .restart local v1       #result:I
    goto :goto_1
.end method

.method public static recvfrom(ZLjava/io/FileDescriptor;[BIIILjava/net/DatagramPacket;Z)I
    .locals 11
    .parameter "isRead"
    .parameter "fd"
    .parameter "bytes"
    .parameter "byteOffset"
    .parameter "byteCount"
    .parameter "flags"
    .parameter "packet"
    .parameter "isConnected"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 512
    if-eqz p6, :cond_0

    if-nez p7, :cond_0

    :try_start_0
    new-instance v8, Ljava/net/InetSocketAddress;

    invoke-direct {v8}, Ljava/net/InetSocketAddress;-><init>()V

    .line 513
    .local v8, srcAddress:Ljava/net/InetSocketAddress;
    :goto_0
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    invoke-interface/range {v2 .. v8}, Llibcore/io/Os;->recvfrom(Ljava/io/FileDescriptor;[BIIILjava/net/InetSocketAddress;)I

    move-result v10

    .line 514
    .local v10, result:I
    move-object/from16 v0, p6

    move/from16 v1, p7

    invoke-static {p0, v0, v1, v8, v10}, Llibcore/io/IoBridge;->postRecvfrom(ZLjava/net/DatagramPacket;ZLjava/net/InetSocketAddress;I)I
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 518
    .end local v8           #srcAddress:Ljava/net/InetSocketAddress;
    :goto_1
    return v10

    .line 512
    .end local v10           #result:I
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 515
    :catch_0
    move-exception v9

    .line 516
    .local v9, errnoException:Llibcore/io/ErrnoException;
    move/from16 v0, p7

    invoke-static {p0, v0, v9}, Llibcore/io/IoBridge;->maybeThrowAfterRecvfrom(ZZLlibcore/io/ErrnoException;)I

    move-result v10

    .restart local v10       #result:I
    goto :goto_1
.end method

.method public static sendto(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetAddress;I)I
    .locals 9
    .parameter "fd"
    .parameter "buffer"
    .parameter "flags"
    .parameter "inetAddress"
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 481
    if-eqz p3, :cond_0

    const/4 v7, 0x1

    .line 482
    .local v7, isDatagram:Z
    :goto_0
    if-nez v7, :cond_1

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    if-nez v0, :cond_1

    .line 491
    :goto_1
    return v8

    .end local v7           #isDatagram:Z
    :cond_0
    move v7, v8

    .line 481
    goto :goto_0

    .line 487
    .restart local v7       #isDatagram:Z
    :cond_1
    :try_start_0
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Llibcore/io/Os;->sendto(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetAddress;I)I
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .local v8, result:I
    goto :goto_1

    .line 488
    .end local v8           #result:I
    :catch_0
    move-exception v6

    .line 489
    .local v6, errnoException:Llibcore/io/ErrnoException;
    invoke-static {v7, v6}, Llibcore/io/IoBridge;->maybeThrowAfterSendto(ZLlibcore/io/ErrnoException;)I

    move-result v8

    .restart local v8       #result:I
    goto :goto_1
.end method

.method public static sendto(Ljava/io/FileDescriptor;[BIIILjava/net/InetAddress;I)I
    .locals 11
    .parameter "fd"
    .parameter "bytes"
    .parameter "byteOffset"
    .parameter "byteCount"
    .parameter "flags"
    .parameter "inetAddress"
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 467
    if-eqz p5, :cond_0

    const/4 v9, 0x1

    .line 468
    .local v9, isDatagram:Z
    :goto_0
    if-nez v9, :cond_1

    if-gtz p3, :cond_1

    .line 469
    const/4 v10, 0x0

    .line 477
    :goto_1
    return v10

    .line 467
    .end local v9           #isDatagram:Z
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 473
    .restart local v9       #isDatagram:Z
    :cond_1
    :try_start_0
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-interface/range {v0 .. v7}, Llibcore/io/Os;->sendto(Ljava/io/FileDescriptor;[BIIILjava/net/InetAddress;I)I
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .local v10, result:I
    goto :goto_1

    .line 474
    .end local v10           #result:I
    :catch_0
    move-exception v8

    .line 475
    .local v8, errnoException:Llibcore/io/ErrnoException;
    invoke-static {v9, v8}, Llibcore/io/IoBridge;->maybeThrowAfterSendto(ZLlibcore/io/ErrnoException;)I

    move-result v10

    .restart local v10       #result:I
    goto :goto_1
.end method

.method public static setSocketOption(Ljava/io/FileDescriptor;ILjava/lang/Object;)V
    .locals 2
    .parameter "fd"
    .parameter "option"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 311
    :try_start_0
    invoke-static {p0, p1, p2}, Llibcore/io/IoBridge;->setSocketOptionErrno(Ljava/io/FileDescriptor;ILjava/lang/Object;)V
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    return-void

    .line 312
    :catch_0
    move-exception v0

    .line 313
    .local v0, errnoException:Llibcore/io/ErrnoException;
    invoke-virtual {v0}, Llibcore/io/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v1

    throw v1
.end method

.method private static setSocketOptionErrno(Ljava/io/FileDescriptor;ILjava/lang/Object;)V
    .locals 12
    .parameter "fd"
    .parameter "option"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/io/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 318
    sparse-switch p1, :sswitch_data_0

    .line 385
    new-instance v8, Ljava/net/SocketException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown socket option: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 320
    :sswitch_0
    new-instance v8, Ljava/lang/UnsupportedOperationException;

    const-string v9, "Use IP_MULTICAST_IF2 on Android"

    invoke-direct {v8, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 323
    :sswitch_1
    sget-object v9, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v10, Llibcore/io/OsConstants;->IPPROTO_IP:I

    sget v11, Llibcore/io/OsConstants;->IP_MULTICAST_IF:I

    move-object v8, p2

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v9, p0, v10, v11, v8}, Llibcore/io/Os;->setsockoptIpMreqn(Ljava/io/FileDescriptor;III)V

    .line 324
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v9, Llibcore/io/OsConstants;->IPPROTO_IPV6:I

    sget v10, Llibcore/io/OsConstants;->IPV6_MULTICAST_IF:I

    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v8, p0, v9, v10, v11}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    .line 383
    :goto_0
    return-void

    .line 328
    .restart local p2
    :sswitch_2
    sget-object v9, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v10, Llibcore/io/OsConstants;->IPPROTO_IP:I

    sget v11, Llibcore/io/OsConstants;->IP_MULTICAST_LOOP:I

    move-object v8, p2

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-static {v8}, Llibcore/io/IoBridge;->booleanToInt(Z)I

    move-result v8

    invoke-interface {v9, p0, v10, v11, v8}, Llibcore/io/Os;->setsockoptByte(Ljava/io/FileDescriptor;III)V

    .line 329
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v9, Llibcore/io/OsConstants;->IPPROTO_IPV6:I

    sget v10, Llibcore/io/OsConstants;->IPV6_MULTICAST_LOOP:I

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    invoke-static {v11}, Llibcore/io/IoBridge;->booleanToInt(Z)I

    move-result v11

    invoke-interface {v8, p0, v9, v10, v11}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    goto :goto_0

    .line 334
    .restart local p2
    :sswitch_3
    sget-object v9, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v10, Llibcore/io/OsConstants;->IPPROTO_IP:I

    sget v11, Llibcore/io/OsConstants;->IP_MULTICAST_TTL:I

    move-object v8, p2

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v9, p0, v10, v11, v8}, Llibcore/io/Os;->setsockoptByte(Ljava/io/FileDescriptor;III)V

    .line 335
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v9, Llibcore/io/OsConstants;->IPPROTO_IPV6:I

    sget v10, Llibcore/io/OsConstants;->IPV6_MULTICAST_HOPS:I

    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v8, p0, v9, v10, v11}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    goto :goto_0

    .line 338
    .restart local p2
    :sswitch_4
    sget-object v9, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v10, Llibcore/io/OsConstants;->IPPROTO_IP:I

    sget v11, Llibcore/io/OsConstants;->IP_TOS:I

    move-object v8, p2

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v9, p0, v10, v11, v8}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    .line 339
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v9, Llibcore/io/OsConstants;->IPPROTO_IPV6:I

    sget v10, Llibcore/io/OsConstants;->IPV6_TCLASS:I

    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v8, p0, v9, v10, v11}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    goto :goto_0

    .line 342
    .restart local p2
    :sswitch_5
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v9, Llibcore/io/OsConstants;->SOL_SOCKET:I

    sget v10, Llibcore/io/OsConstants;->SO_BROADCAST:I

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    invoke-static {v11}, Llibcore/io/IoBridge;->booleanToInt(Z)I

    move-result v11

    invoke-interface {v8, p0, v9, v10, v11}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    goto :goto_0

    .line 345
    .restart local p2
    :sswitch_6
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v9, Llibcore/io/OsConstants;->SOL_SOCKET:I

    sget v10, Llibcore/io/OsConstants;->SO_KEEPALIVE:I

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    invoke-static {v11}, Llibcore/io/IoBridge;->booleanToInt(Z)I

    move-result v11

    invoke-interface {v8, p0, v9, v10, v11}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    goto/16 :goto_0

    .line 348
    .restart local p2
    :sswitch_7
    const/4 v4, 0x0

    .line 349
    .local v4, on:Z
    const/4 v6, 0x0

    .line 350
    .local v6, seconds:I
    instance-of v8, p2, Ljava/lang/Integer;

    if-eqz v8, :cond_0

    .line 351
    const/4 v4, 0x1

    .line 352
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const v9, 0xffff

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 354
    :cond_0
    new-instance v2, Llibcore/io/StructLinger;

    invoke-static {v4}, Llibcore/io/IoBridge;->booleanToInt(Z)I

    move-result v8

    invoke-direct {v2, v8, v6}, Llibcore/io/StructLinger;-><init>(II)V

    .line 355
    .local v2, linger:Llibcore/io/StructLinger;
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v9, Llibcore/io/OsConstants;->SOL_SOCKET:I

    sget v10, Llibcore/io/OsConstants;->SO_LINGER:I

    invoke-interface {v8, p0, v9, v10, v2}, Llibcore/io/Os;->setsockoptLinger(Ljava/io/FileDescriptor;IILlibcore/io/StructLinger;)V

    goto/16 :goto_0

    .line 358
    .end local v2           #linger:Llibcore/io/StructLinger;
    .end local v4           #on:Z
    .end local v6           #seconds:I
    .restart local p2
    :sswitch_8
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v9, Llibcore/io/OsConstants;->SOL_SOCKET:I

    sget v10, Llibcore/io/OsConstants;->SO_OOBINLINE:I

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    invoke-static {v11}, Llibcore/io/IoBridge;->booleanToInt(Z)I

    move-result v11

    invoke-interface {v8, p0, v9, v10, v11}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    goto/16 :goto_0

    .line 361
    .restart local p2
    :sswitch_9
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v9, Llibcore/io/OsConstants;->SOL_SOCKET:I

    sget v10, Llibcore/io/OsConstants;->SO_RCVBUF:I

    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v8, p0, v9, v10, v11}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    goto/16 :goto_0

    .line 364
    .restart local p2
    :sswitch_a
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v9, Llibcore/io/OsConstants;->SOL_SOCKET:I

    sget v10, Llibcore/io/OsConstants;->SO_REUSEADDR:I

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    invoke-static {v11}, Llibcore/io/IoBridge;->booleanToInt(Z)I

    move-result v11

    invoke-interface {v8, p0, v9, v10, v11}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    goto/16 :goto_0

    .line 367
    .restart local p2
    :sswitch_b
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v9, Llibcore/io/OsConstants;->SOL_SOCKET:I

    sget v10, Llibcore/io/OsConstants;->SO_SNDBUF:I

    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v8, p0, v9, v10, v11}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    goto/16 :goto_0

    .line 370
    .restart local p2
    :sswitch_c
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 371
    .local v3, millis:I
    int-to-long v8, v3

    invoke-static {v8, v9}, Llibcore/io/StructTimeval;->fromMillis(J)Llibcore/io/StructTimeval;

    move-result-object v7

    .line 372
    .local v7, tv:Llibcore/io/StructTimeval;
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v9, Llibcore/io/OsConstants;->SOL_SOCKET:I

    sget v10, Llibcore/io/OsConstants;->SO_RCVTIMEO:I

    invoke-interface {v8, p0, v9, v10, v7}, Llibcore/io/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILlibcore/io/StructTimeval;)V

    goto/16 :goto_0

    .line 375
    .end local v3           #millis:I
    .end local v7           #tv:Llibcore/io/StructTimeval;
    .restart local p2
    :sswitch_d
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v9, Llibcore/io/OsConstants;->IPPROTO_TCP:I

    sget v10, Llibcore/io/OsConstants;->TCP_NODELAY:I

    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    invoke-static {v11}, Llibcore/io/IoBridge;->booleanToInt(Z)I

    move-result v11

    invoke-interface {v8, p0, v9, v10, v11}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    goto/16 :goto_0

    .restart local p2
    :sswitch_e
    move-object v0, p2

    .line 379
    check-cast v0, Llibcore/io/StructGroupReq;

    .line 380
    .local v0, groupReq:Llibcore/io/StructGroupReq;
    iget-object v8, v0, Llibcore/io/StructGroupReq;->gr_group:Ljava/net/InetAddress;

    instance-of v8, v8, Ljava/net/Inet4Address;

    if-eqz v8, :cond_1

    sget v1, Llibcore/io/OsConstants;->IPPROTO_IP:I

    .line 381
    .local v1, level:I
    :goto_1
    const/16 v8, 0x13

    if-ne p1, v8, :cond_2

    sget v5, Llibcore/io/OsConstants;->MCAST_JOIN_GROUP:I

    .line 382
    .local v5, op:I
    :goto_2
    sget-object v8, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v8, p0, v1, v5, v0}, Llibcore/io/Os;->setsockoptGroupReq(Ljava/io/FileDescriptor;IILlibcore/io/StructGroupReq;)V

    goto/16 :goto_0

    .line 380
    .end local v1           #level:I
    .end local v5           #op:I
    :cond_1
    sget v1, Llibcore/io/OsConstants;->IPPROTO_IPV6:I

    goto :goto_1

    .line 381
    .restart local v1       #level:I
    :cond_2
    sget v5, Llibcore/io/OsConstants;->MCAST_LEAVE_GROUP:I

    goto :goto_2

    .line 318
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_d
        0x3 -> :sswitch_4
        0x4 -> :sswitch_a
        0x8 -> :sswitch_6
        0x10 -> :sswitch_0
        0x11 -> :sswitch_3
        0x12 -> :sswitch_2
        0x13 -> :sswitch_e
        0x14 -> :sswitch_e
        0x1f -> :sswitch_1
        0x20 -> :sswitch_5
        0x80 -> :sswitch_7
        0x1001 -> :sswitch_b
        0x1002 -> :sswitch_9
        0x1003 -> :sswitch_8
        0x1006 -> :sswitch_c
    .end sparse-switch
.end method

.method public static socket(Z)Ljava/io/FileDescriptor;
    .locals 6
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 568
    :try_start_0
    sget-object v3, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v4, Llibcore/io/OsConstants;->AF_INET6:I

    if-eqz p0, :cond_1

    sget v2, Llibcore/io/OsConstants;->SOCK_STREAM:I

    :goto_0
    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v5}, Llibcore/io/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v1

    .line 577
    .local v1, fd:Ljava/io/FileDescriptor;
    if-nez p0, :cond_0

    .line 578
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    sget v3, Llibcore/io/OsConstants;->IPPROTO_IPV6:I

    sget v4, Llibcore/io/OsConstants;->IPV6_MULTICAST_HOPS:I

    const/4 v5, 0x1

    invoke-interface {v2, v1, v3, v4, v5}, Llibcore/io/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    .line 581
    :cond_0
    return-object v1

    .line 568
    .end local v1           #fd:Ljava/io/FileDescriptor;
    :cond_1
    sget v2, Llibcore/io/OsConstants;->SOCK_DGRAM:I
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 582
    :catch_0
    move-exception v0

    .line 583
    .local v0, errnoException:Llibcore/io/ErrnoException;
    invoke-virtual {v0}, Llibcore/io/ErrnoException;->rethrowAsSocketException()Ljava/net/SocketException;

    move-result-object v2

    throw v2
.end method

.method public static write(Ljava/io/FileDescriptor;[BII)V
    .locals 3
    .parameter "fd"
    .parameter "bytes"
    .parameter "byteOffset"
    .parameter "byteCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 451
    array-length v2, p1

    invoke-static {v2, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 452
    if-nez p3, :cond_1

    .line 464
    :cond_0
    return-void

    .line 456
    :cond_1
    :goto_0
    if-lez p3, :cond_0

    .line 457
    :try_start_0
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v2, p0, p1, p2, p3}, Llibcore/io/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 458
    .local v0, bytesWritten:I
    sub-int/2addr p3, v0

    .line 459
    add-int/2addr p2, v0

    .line 460
    goto :goto_0

    .line 461
    .end local v0           #bytesWritten:I
    :catch_0
    move-exception v1

    .line 462
    .local v1, errnoException:Llibcore/io/ErrnoException;
    invoke-virtual {v1}, Llibcore/io/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v2

    throw v2
.end method
