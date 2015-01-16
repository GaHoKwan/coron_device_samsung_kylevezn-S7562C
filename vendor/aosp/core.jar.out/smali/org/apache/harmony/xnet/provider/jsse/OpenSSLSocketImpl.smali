.class public Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;
.super Ljavax/net/ssl/SSLSocket;
.source "OpenSSLSocketImpl.java"

# interfaces
.implements Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto$SSLHandshakeCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$SSLOutputStream;,
        Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$SSLInputStream;
    }
.end annotation


# instance fields
.field private autoClose:Z

.field private enabledCipherSuites:[Ljava/lang/String;

.field private enabledProtocols:[Ljava/lang/String;

.field private final guard:Ldalvik/system/CloseGuard;

.field private handshakeCompleted:Z

.field private final handshakeLock:Ljava/lang/Object;

.field private handshakeStarted:Z

.field private handshakeTimeoutMilliseconds:I

.field private hostname:Ljava/lang/String;

.field private is:Ljava/io/InputStream;

.field private listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljavax/net/ssl/HandshakeCompletedListener;",
            ">;"
        }
    .end annotation
.end field

.field private npnProtocols:[B

.field private os:Ljava/io/OutputStream;

.field private final readLock:Ljava/lang/Object;

.field private final socket:Ljava/net/Socket;

.field private sslNativePointer:I

.field private sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

.field private sslSession:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

.field private timeoutMilliseconds:I

.field private useSessionTickets:Z

.field private wrappedHost:Ljava/lang/String;

.field private wrappedPort:I

.field private final writeLock:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V
    .locals 2
    .parameter "host"
    .parameter "port"
    .parameter "clientAddress"
    .parameter "clientPort"
    .parameter "sslParameters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 132
    invoke-direct {p0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocket;-><init>(Ljava/lang/String;ILjava/net/InetAddress;I)V

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeLock:Ljava/lang/Object;

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->readLock:Ljava/lang/Object;

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->writeLock:Ljava/lang/Object;

    .line 77
    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeStarted:Z

    .line 78
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->guard:Ldalvik/system/CloseGuard;

    .line 86
    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeCompleted:Z

    .line 96
    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->timeoutMilliseconds:I

    .line 98
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    .line 133
    iput-object p0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    .line 134
    invoke-direct {p0, p5}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->init(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V

    .line 135
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ILorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V
    .locals 2
    .parameter "host"
    .parameter "port"
    .parameter "sslParameters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 116
    invoke-direct {p0, p1, p2}, Ljavax/net/ssl/SSLSocket;-><init>(Ljava/lang/String;I)V

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeLock:Ljava/lang/Object;

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->readLock:Ljava/lang/Object;

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->writeLock:Ljava/lang/Object;

    .line 77
    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeStarted:Z

    .line 78
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->guard:Ldalvik/system/CloseGuard;

    .line 86
    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeCompleted:Z

    .line 96
    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->timeoutMilliseconds:I

    .line 98
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    .line 117
    iput-object p0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    .line 118
    invoke-direct {p0, p3}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->init(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V

    .line 119
    return-void
.end method

.method protected constructor <init>(Ljava/net/InetAddress;ILjava/net/InetAddress;ILorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V
    .locals 2
    .parameter "address"
    .parameter "port"
    .parameter "clientAddress"
    .parameter "clientPort"
    .parameter "sslParameters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 140
    invoke-direct {p0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocket;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I)V

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeLock:Ljava/lang/Object;

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->readLock:Ljava/lang/Object;

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->writeLock:Ljava/lang/Object;

    .line 77
    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeStarted:Z

    .line 78
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->guard:Ldalvik/system/CloseGuard;

    .line 86
    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeCompleted:Z

    .line 96
    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->timeoutMilliseconds:I

    .line 98
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    .line 141
    iput-object p0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    .line 142
    invoke-direct {p0, p5}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->init(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V

    .line 143
    return-void
.end method

.method protected constructor <init>(Ljava/net/InetAddress;ILorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V
    .locals 2
    .parameter "address"
    .parameter "port"
    .parameter "sslParameters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 123
    invoke-direct {p0, p1, p2}, Ljavax/net/ssl/SSLSocket;-><init>(Ljava/net/InetAddress;I)V

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeLock:Ljava/lang/Object;

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->readLock:Ljava/lang/Object;

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->writeLock:Ljava/lang/Object;

    .line 77
    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeStarted:Z

    .line 78
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->guard:Ldalvik/system/CloseGuard;

    .line 86
    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeCompleted:Z

    .line 96
    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->timeoutMilliseconds:I

    .line 98
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    .line 124
    iput-object p0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    .line 125
    invoke-direct {p0, p3}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->init(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V

    .line 126
    return-void
.end method

.method protected constructor <init>(Ljava/net/Socket;Ljava/lang/String;IZLorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V
    .locals 2
    .parameter "socket"
    .parameter "host"
    .parameter "port"
    .parameter "autoClose"
    .parameter "sslParameters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 150
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocket;-><init>()V

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeLock:Ljava/lang/Object;

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->readLock:Ljava/lang/Object;

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->writeLock:Ljava/lang/Object;

    .line 77
    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeStarted:Z

    .line 78
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->guard:Ldalvik/system/CloseGuard;

    .line 86
    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeCompleted:Z

    .line 96
    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->timeoutMilliseconds:I

    .line 98
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    .line 151
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    .line 152
    iput-object p2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->wrappedHost:Ljava/lang/String;

    .line 153
    iput p3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->wrappedPort:I

    .line 154
    iput-boolean p4, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->autoClose:Z

    .line 155
    invoke-direct {p0, p5}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->init(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V

    .line 160
    return-void
.end method

.method protected constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V
    .locals 2
    .parameter "sslParameters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 102
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocket;-><init>()V

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeLock:Ljava/lang/Object;

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->readLock:Ljava/lang/Object;

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->writeLock:Ljava/lang/Object;

    .line 77
    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeStarted:Z

    .line 78
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->guard:Ldalvik/system/CloseGuard;

    .line 86
    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeCompleted:Z

    .line 96
    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->timeoutMilliseconds:I

    .line 98
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    .line 103
    iput-object p0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    .line 104
    invoke-direct {p0, p1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->init(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V

    .line 105
    return-void
.end method

.method protected constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .parameter "sslParameters"
    .parameter "enabledProtocols"
    .parameter "enabledCipherSuites"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 109
    invoke-direct {p0}, Ljavax/net/ssl/SSLSocket;-><init>()V

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeLock:Ljava/lang/Object;

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->readLock:Ljava/lang/Object;

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->writeLock:Ljava/lang/Object;

    .line 77
    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeStarted:Z

    .line 78
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->guard:Ldalvik/system/CloseGuard;

    .line 86
    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeCompleted:Z

    .line 96
    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->timeoutMilliseconds:I

    .line 98
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    .line 110
    iput-object p0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    .line 111
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->init(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method static synthetic access$000(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->readLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;)V
    .locals 0
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->checkOpen()V

    return-void
.end method

.method static synthetic access$200(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    return v0
.end method

.method static synthetic access$300(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;)Ljava/net/Socket;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->writeLock:Ljava/lang/Object;

    return-object v0
.end method

.method private checkOpen()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 226
    invoke-virtual {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_0
    return-void
.end method

.method private static createCertChain([[B)[Ljava/security/cert/X509Certificate;
    .locals 6
    .parameter "certificatesBytes"

    .prologue
    const/4 v3, 0x0

    .line 441
    if-nez p0, :cond_1

    move-object v0, v3

    .line 452
    :cond_0
    :goto_0
    return-object v0

    .line 444
    :cond_1
    array-length v4, p0

    new-array v0, v4, [Ljava/security/cert/X509Certificate;

    .line 445
    .local v0, certificates:[Ljava/security/cert/X509Certificate;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v4, p0

    if-ge v2, v4, :cond_0

    .line 447
    :try_start_0
    new-instance v4, Lorg/apache/harmony/security/provider/cert/X509CertImpl;

    aget-object v5, p0, v2

    invoke-direct {v4, v5}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;-><init>([B)V

    aput-object v4, v0, v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 448
    :catch_0
    move-exception v1

    .local v1, e:Ljava/io/IOException;
    move-object v0, v3

    .line 449
    goto :goto_0
.end method

.method private free()V
    .locals 1

    .prologue
    .line 908
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    if-nez v0, :cond_0

    .line 914
    :goto_0
    return-void

    .line 911
    :cond_0
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_free(I)V

    .line 912
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    .line 913
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    goto :goto_0
.end method

.method private getCachedClientSession(Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;)Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;
    .locals 14
    .parameter "sessionContext"

    .prologue
    const/4 v12, 0x0

    .line 188
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->getPeerHostName()Ljava/lang/String;

    move-result-object v5

    .line 189
    .local v5, hostName:Ljava/lang/String;
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->getPeerPort()I

    move-result v8

    .line 190
    .local v8, port:I
    if-nez v5, :cond_1

    move-object v11, v12

    .line 222
    :cond_0
    :goto_0
    return-object v11

    .line 193
    :cond_1
    invoke-virtual {p1, v5, v8}, Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;->getSession(Ljava/lang/String;I)Ljavax/net/ssl/SSLSession;

    move-result-object v11

    check-cast v11, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    .line 194
    .local v11, session:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;
    if-nez v11, :cond_2

    move-object v11, v12

    .line 195
    goto :goto_0

    .line 198
    :cond_2
    invoke-virtual {v11}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->getProtocol()Ljava/lang/String;

    move-result-object v9

    .line 199
    .local v9, protocol:Ljava/lang/String;
    const/4 v10, 0x0

    .line 200
    .local v10, protocolFound:Z
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->enabledProtocols:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v7, v0

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_1
    if-ge v6, v7, :cond_3

    aget-object v4, v0, v6

    .line 201
    .local v4, enabledProtocol:Ljava/lang/String;
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 202
    const/4 v10, 0x1

    .line 206
    .end local v4           #enabledProtocol:Ljava/lang/String;
    :cond_3
    if-nez v10, :cond_5

    move-object v11, v12

    .line 207
    goto :goto_0

    .line 200
    .restart local v4       #enabledProtocol:Ljava/lang/String;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 210
    .end local v4           #enabledProtocol:Ljava/lang/String;
    :cond_5
    invoke-virtual {v11}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->getCipherSuite()Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, cipherSuite:Ljava/lang/String;
    const/4 v2, 0x0

    .line 212
    .local v2, cipherSuiteFound:Z
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->enabledCipherSuites:[Ljava/lang/String;

    array-length v7, v0

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v7, :cond_6

    aget-object v3, v0, v6

    .line 213
    .local v3, enabledCipherSuite:Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 214
    const/4 v2, 0x1

    .line 218
    .end local v3           #enabledCipherSuite:Ljava/lang/String;
    :cond_6
    if-nez v2, :cond_0

    move-object v11, v12

    .line 219
    goto :goto_0

    .line 212
    .restart local v3       #enabledCipherSuite:Ljava/lang/String;
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_2
.end method

.method private getPeerHostName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 422
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->wrappedHost:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 423
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->wrappedHost:Ljava/lang/String;

    .line 429
    :goto_0
    return-object v1

    .line 425
    :cond_0
    invoke-super {p0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 426
    .local v0, inetAddress:Ljava/net/InetAddress;
    if-eqz v0, :cond_1

    .line 427
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 429
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getPeerPort()I
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->wrappedHost:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/net/Socket;->getPort()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->wrappedPort:I

    goto :goto_0
.end method

.method private init(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;)V
    .locals 2
    .parameter "sslParameters"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->getDefaultProtocols()[Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->getDefaultCipherSuites()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->init(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method private init(Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter "sslParameters"
    .parameter "enabledProtocols"
    .parameter "enabledCipherSuites"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    .line 180
    iput-object p2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->enabledProtocols:[Ljava/lang/String;

    .line 181
    iput-object p3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->enabledCipherSuites:[Ljava/lang/String;

    .line 182
    return-void
.end method

.method private notifyHandshakeCompletedListeners()V
    .locals 6

    .prologue
    .line 540
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->listeners:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 542
    new-instance v1, Ljavax/net/ssl/HandshakeCompletedEvent;

    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslSession:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    invoke-direct {v1, p0, v5}, Ljavax/net/ssl/HandshakeCompletedEvent;-><init>(Ljavax/net/ssl/SSLSocket;Ljavax/net/ssl/SSLSession;)V

    .line 544
    .local v1, event:Ljavax/net/ssl/HandshakeCompletedEvent;
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/net/ssl/HandshakeCompletedListener;

    .line 546
    .local v3, listener:Ljavax/net/ssl/HandshakeCompletedListener;
    :try_start_0
    invoke-interface {v3, v1}, Ljavax/net/ssl/HandshakeCompletedListener;->handshakeCompleted(Ljavax/net/ssl/HandshakeCompletedEvent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 547
    :catch_0
    move-exception v0

    .line 553
    .local v0, e:Ljava/lang/RuntimeException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    .line 554
    .local v4, thread:Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v5

    invoke-interface {v5, v4, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 558
    .end local v0           #e:Ljava/lang/RuntimeException;
    .end local v1           #event:Ljavax/net/ssl/HandshakeCompletedEvent;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #listener:Ljavax/net/ssl/HandshakeCompletedListener;
    .end local v4           #thread:Ljava/lang/Thread;
    :cond_0
    return-void
.end method

.method private setCertificate(Ljava/lang/String;)V
    .locals 10
    .parameter "alias"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 456
    if-nez p1, :cond_1

    .line 489
    :cond_0
    :goto_0
    return-void

    .line 459
    :cond_1
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getKeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v7

    invoke-interface {v7, p1}, Ljavax/net/ssl/X509KeyManager;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v4

    .line 460
    .local v4, privateKey:Ljava/security/PrivateKey;
    if-eqz v4, :cond_0

    .line 463
    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v7}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getKeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v7

    invoke-interface {v7, p1}, Ljavax/net/ssl/X509KeyManager;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 464
    .local v1, certificates:[Ljava/security/cert/X509Certificate;
    if-eqz v1, :cond_0

    .line 468
    instance-of v7, v4, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;

    if-eqz v7, :cond_2

    move-object v6, v4

    .line 469
    check-cast v6, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;

    .line 470
    .local v6, rsaKey:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;
    invoke-virtual {v6}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;->getOpenSSLKey()Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    move-result-object v3

    .line 471
    .local v3, key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;
    iget v7, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    invoke-virtual {v3}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;->getPkeyContext()I

    move-result v8

    invoke-static {v7, v8}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_use_OpenSSL_PrivateKey(II)V

    .line 483
    .end local v3           #key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;
    .end local v6           #rsaKey:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLRSAPrivateKey;
    :goto_1
    invoke-static {v1}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->encodeCertificates([Ljava/security/cert/Certificate;)[[B

    move-result-object v0

    .line 484
    .local v0, certificateBytes:[[B
    iget v7, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    invoke-static {v7, v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_use_certificate(I[[B)V

    .line 488
    iget v7, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    invoke-static {v7}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_check_private_key(I)V

    goto :goto_0

    .line 472
    .end local v0           #certificateBytes:[[B
    :cond_2
    instance-of v7, v4, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPrivateKey;

    if-eqz v7, :cond_3

    move-object v2, v4

    .line 473
    check-cast v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPrivateKey;

    .line 474
    .local v2, dsaKey:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPrivateKey;
    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPrivateKey;->getOpenSSLKey()Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;

    move-result-object v3

    .line 475
    .restart local v3       #key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;
    iget v7, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    invoke-virtual {v3}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;->getPkeyContext()I

    move-result v8

    invoke-static {v7, v8}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_use_OpenSSL_PrivateKey(II)V

    goto :goto_1

    .line 476
    .end local v2           #dsaKey:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLDSAPrivateKey;
    .end local v3           #key:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLKey;
    :cond_3
    const-string v7, "PKCS#8"

    invoke-interface {v4}, Ljava/security/PrivateKey;->getFormat()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 477
    invoke-interface {v4}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v5

    .line 478
    .local v5, privateKeyBytes:[B
    iget v7, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    invoke-static {v7, v5}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_use_PrivateKey(I[B)V

    goto :goto_1

    .line 480
    .end local v5           #privateKeyBytes:[B
    :cond_4
    new-instance v7, Ljavax/net/ssl/SSLException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unsupported PrivateKey format: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v4}, Ljava/security/PrivateKey;->getFormat()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v7
.end method


# virtual methods
.method public addHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 715
    if-nez p1, :cond_0

    .line 716
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provided listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 718
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->listeners:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 719
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->listeners:Ljava/util/ArrayList;

    .line 721
    :cond_1
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 722
    return-void
.end method

.method public clientCertificateRequested([B[[B)V
    .locals 5
    .parameter "keyTypeBytes"
    .parameter "asn1DerEncodedPrincipals"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 495
    array-length v3, p1

    new-array v2, v3, [Ljava/lang/String;

    .line 496
    .local v2, keyTypes:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 497
    aget-byte v3, p1, v0

    invoke-static {v3}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getClientKeyType(B)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 496
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 501
    :cond_0
    if-nez p2, :cond_2

    .line 502
    const/4 v1, 0x0

    .line 509
    .local v1, issuers:[Ljavax/security/auth/x500/X500Principal;
    :cond_1
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v3}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getKeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v3

    invoke-interface {v3, v2, v1, p0}, Ljavax/net/ssl/X509KeyManager;->chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->setCertificate(Ljava/lang/String;)V

    .line 510
    return-void

    .line 504
    .end local v1           #issuers:[Ljavax/security/auth/x500/X500Principal;
    :cond_2
    array-length v3, p2

    new-array v1, v3, [Ljavax/security/auth/x500/X500Principal;

    .line 505
    .restart local v1       #issuers:[Ljavax/security/auth/x500/X500Principal;
    const/4 v0, 0x0

    :goto_1
    array-length v3, p2

    if-ge v0, v3, :cond_1

    .line 506
    new-instance v3, Ljavax/security/auth/x500/X500Principal;

    aget-object v4, p2, v0

    invoke-direct {v3, v4}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    aput-object v3, v1, v0

    .line 505
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 845
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 846
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeStarted:Z

    if-nez v0, :cond_2

    .line 848
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeStarted:Z

    .line 850
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 851
    :try_start_1
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->free()V

    .line 853
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    if-eq v0, p0, :cond_1

    .line 854
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->autoClose:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 858
    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 860
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 905
    :goto_1
    return-void

    .line 856
    :cond_1
    :try_start_3
    invoke-super {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/net/Socket;->close()V

    goto :goto_0

    .line 858
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 862
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :cond_2
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 864
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_interrupt(I)V

    .line 866
    monitor-enter p0

    .line 867
    :try_start_6
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->writeLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 868
    :try_start_7
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->readLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 872
    :try_start_8
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeStarted:Z

    if-eqz v0, :cond_3

    .line 873
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    .line 874
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-static {v0, v3, p0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_shutdown(ILjava/io/FileDescriptor;Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto$SSLHandshakeCallbacks;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 890
    :cond_3
    :try_start_9
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->free()V

    .line 892
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    if-eq v0, p0, :cond_5

    .line 893
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->autoClose:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 894
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 902
    :cond_4
    :goto_2
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 903
    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 904
    :try_start_b
    monitor-exit p0

    goto :goto_1

    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    throw v0

    .line 897
    :cond_5
    :try_start_c
    invoke-super {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 898
    invoke-super {p0}, Ljava/net/Socket;->close()V

    goto :goto_2

    .line 902
    :catchall_3
    move-exception v0

    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    throw v0

    .line 903
    :catchall_4
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :try_start_e
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 877
    :catch_0
    move-exception v0

    .line 890
    :try_start_f
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->free()V

    .line 892
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    if-eq v0, p0, :cond_6

    .line 893
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->autoClose:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 894
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    goto :goto_2

    .line 897
    :cond_6
    invoke-super {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 898
    invoke-super {p0}, Ljava/net/Socket;->close()V

    goto :goto_2

    .line 890
    :catchall_5
    move-exception v0

    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->free()V

    .line 892
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    if-eq v3, p0, :cond_8

    .line 893
    iget-boolean v3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->autoClose:Z

    if-eqz v3, :cond_7

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->isClosed()Z

    move-result v3

    if-nez v3, :cond_7

    .line 894
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V

    .line 898
    :cond_7
    :goto_3
    throw v0

    .line 897
    :cond_8
    invoke-super {p0}, Ljava/net/Socket;->isClosed()Z

    move-result v3

    if-nez v3, :cond_7

    .line 898
    invoke-super {p0}, Ljava/net/Socket;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    goto :goto_3
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 934
    :try_start_0
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->guard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 935
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 937
    :cond_0
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->free()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 939
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 941
    return-void

    .line 939
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getEnableSessionCreation()Z
    .locals 1

    .prologue
    .line 740
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getEnableSessionCreation()Z

    move-result v0

    return v0
.end method

.method public getEnabledCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 752
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->enabledCipherSuites:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getEnabledProtocols()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 764
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->enabledProtocols:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getFileDescriptor$()Ljava/io/FileDescriptor;
    .locals 1

    .prologue
    .line 945
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    if-ne v0, p0, :cond_0

    .line 946
    invoke-super {p0}, Ljava/net/Socket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 948
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v0

    goto :goto_0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 591
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->checkOpen()V

    .line 592
    monitor-enter p0

    .line 593
    :try_start_0
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->is:Ljava/io/InputStream;

    if-nez v0, :cond_0

    .line 594
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$SSLInputStream;

    invoke-direct {v0, p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$SSLInputStream;-><init>(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;)V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->is:Ljava/io/InputStream;

    .line 597
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->is:Ljava/io/InputStream;

    monitor-exit p0

    return-object v0

    .line 598
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getNeedClientAuth()Z
    .locals 1

    .prologue
    .line 806
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getNeedClientAuth()Z

    move-result v0

    return v0
.end method

.method public getNpnSelectedProtocol()[B
    .locals 1

    .prologue
    .line 957
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_get_npn_negotiated_protocol(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 602
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->checkOpen()V

    .line 603
    monitor-enter p0

    .line 604
    :try_start_0
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->os:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    .line 605
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$SSLOutputStream;

    invoke-direct {v0, p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$SSLOutputStream;-><init>(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;)V

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->os:Ljava/io/OutputStream;

    .line 608
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->os:Ljava/io/OutputStream;

    monitor-exit p0

    return-object v0

    .line 609
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSession()Ljavax/net/ssl/SSLSession;
    .locals 2

    .prologue
    .line 701
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslSession:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    if-nez v1, :cond_0

    .line 703
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->startHandshake()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 710
    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslSession:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    :goto_0
    return-object v1

    .line 704
    :catch_0
    move-exception v0

    .line 707
    .local v0, e:Ljava/io/IOException;
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->getNullSession()Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-result-object v1

    goto :goto_0
.end method

.method public getSoTimeout()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 831
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->timeoutMilliseconds:I

    return v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 748
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedProtocols()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 760
    invoke-static {}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUseClientMode()Z
    .locals 1

    .prologue
    .line 790
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getUseClientMode()Z

    move-result v0

    return v0
.end method

.method public getWantClientAuth()Z
    .locals 1

    .prologue
    .line 802
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getWantClientAuth()Z

    move-result v0

    return v0
.end method

.method public handshakeCompleted()V
    .locals 2

    .prologue
    .line 514
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeCompleted:Z

    .line 522
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslSession:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    if-nez v1, :cond_0

    .line 537
    :goto_0
    return-void

    .line 528
    :cond_0
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslSession:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->resetId()V

    .line 529
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getUseClientMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getClientSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;

    move-result-object v0

    .line 533
    .local v0, sessionContext:Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;
    :goto_1
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslSession:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->putSession(Ljavax/net/ssl/SSLSession;)V

    .line 536
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->notifyHandshakeCompletedListeners()V

    goto :goto_0

    .line 529
    .end local v0           #sessionContext:Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;
    :cond_1
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getServerSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;

    move-result-object v0

    goto :goto_1
.end method

.method public removeHandshakeCompletedListener(Ljavax/net/ssl/HandshakeCompletedListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 726
    if-nez p1, :cond_0

    .line 727
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provided listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 729
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->listeners:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 730
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provided listener is not registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 733
    :cond_1
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 734
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Provided listener is not registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 737
    :cond_2
    return-void
.end method

.method public sendUrgentData(I)V
    .locals 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 818
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Method sendUrgentData() is not supported."

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEnableSessionCreation(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 744
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->setEnableSessionCreation(Z)V

    .line 745
    return-void
.end method

.method public setEnabledCipherSuites([Ljava/lang/String;)V
    .locals 1
    .parameter "suites"

    .prologue
    .line 756
    invoke-static {p1}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->checkEnabledCipherSuites([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->enabledCipherSuites:[Ljava/lang/String;

    .line 757
    return-void
.end method

.method public setEnabledProtocols([Ljava/lang/String;)V
    .locals 1
    .parameter "protocols"

    .prologue
    .line 768
    invoke-static {p1}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->checkEnabledProtocols([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->enabledProtocols:[Ljava/lang/String;

    .line 769
    return-void
.end method

.method public setHandshakeTimeout(I)V
    .locals 0
    .parameter "timeoutMilliseconds"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 839
    iput p1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    .line 840
    return-void
.end method

.method public setHostname(Ljava/lang/String;)V
    .locals 0
    .parameter "hostname"

    .prologue
    .line 786
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->hostname:Ljava/lang/String;

    .line 787
    return-void
.end method

.method public setNeedClientAuth(Z)V
    .locals 1
    .parameter "need"

    .prologue
    .line 810
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->setNeedClientAuth(Z)V

    .line 811
    return-void
.end method

.method public setNpnProtocols([B)V
    .locals 2
    .parameter "npnProtocols"

    .prologue
    .line 970
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_0

    .line 971
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "npnProtocols.length == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 973
    :cond_0
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->npnProtocols:[B

    .line 974
    return-void
.end method

.method public setOOBInline(Z)V
    .locals 2
    .parameter "on"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 822
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Methods sendUrgentData, setOOBInline are not supported."

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSoTimeout(I)V
    .locals 0
    .parameter "timeoutMilliseconds"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 826
    invoke-super {p0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 827
    iput p1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->timeoutMilliseconds:I

    .line 828
    return-void
.end method

.method public setUseClientMode(Z)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 794
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeStarted:Z

    if-eqz v0, :cond_0

    .line 795
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Could not change the mode after the initial handshake has begun."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 798
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->setUseClientMode(Z)V

    .line 799
    return-void
.end method

.method public setUseSessionTickets(Z)V
    .locals 0
    .parameter "useSessionTickets"

    .prologue
    .line 777
    iput-boolean p1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->useSessionTickets:Z

    .line 778
    return-void
.end method

.method public setWantClientAuth(Z)V
    .locals 1
    .parameter "want"

    .prologue
    .line 814
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->setWantClientAuth(Z)V

    .line 815
    return-void
.end method

.method public declared-synchronized startHandshake()V
    .locals 35
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 239
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 240
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->checkOpen()V

    .line 241
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeStarted:Z

    if-nez v2, :cond_2

    .line 242
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeStarted:Z

    .line 246
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 249
    const/16 v29, 0x400

    .line 250
    .local v29, seedLengthInBytes:I
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getSecureRandomMember()Ljava/security/SecureRandom;

    move-result-object v28

    .line 251
    .local v28, secureRandom:Ljava/security/SecureRandom;
    if-nez v28, :cond_4

    .line 252
    const-string v2, "/dev/urandom"

    const-wide/16 v3, 0x400

    invoke-static {v2, v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->RAND_load_file(Ljava/lang/String;J)I

    .line 257
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getUseClientMode()Z

    move-result v6

    .line 259
    .local v6, client:Z
    if-eqz v6, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getClientSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;

    move-result-object v2

    iget v0, v2, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->sslCtxNativePointer:I

    move/from16 v32, v0

    .line 263
    .local v32, sslCtxNativePointer:I
    :goto_1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 264
    const/16 v20, 0x1

    .line 266
    .local v20, exception:Z
    :try_start_3
    invoke-static/range {v32 .. v32}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_new(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    .line 267
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->guard:Ldalvik/system/CloseGuard;

    const-string v3, "close"

    invoke-virtual {v2, v3}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 269
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->npnProtocols:[B

    if-eqz v2, :cond_0

    .line 270
    invoke-static/range {v32 .. v32}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_CTX_enable_npn(I)V

    .line 275
    :cond_0
    if-nez v6, :cond_9

    .line 276
    new-instance v25, Ljava/util/HashSet;

    invoke-direct/range {v25 .. v25}, Ljava/util/HashSet;-><init>()V

    .line 277
    .local v25, keyTypes:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->enabledCipherSuites:[Ljava/lang/String;

    .local v14, arr$:[Ljava/lang/String;
    array-length v0, v14

    move/from16 v26, v0

    .local v26, len$:I
    const/16 v21, 0x0

    .local v21, i$:I
    :goto_2
    move/from16 v0, v21

    move/from16 v1, v26

    if-ge v0, v1, :cond_8

    aget-object v19, v14, v21

    .line 278
    .local v19, enabledCipherSuite:Ljava/lang/String;
    const-string v2, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_3 .. :try_end_3} :catch_0

    move-result v2

    if-eqz v2, :cond_6

    .line 277
    :cond_1
    :goto_3
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    .line 244
    .end local v6           #client:Z
    .end local v14           #arr$:[Ljava/lang/String;
    .end local v19           #enabledCipherSuite:Ljava/lang/String;
    .end local v20           #exception:Z
    .end local v21           #i$:I
    .end local v25           #keyTypes:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v26           #len$:I
    .end local v28           #secureRandom:Ljava/security/SecureRandom;
    .end local v29           #seedLengthInBytes:I
    .end local v32           #sslCtxNativePointer:I
    :cond_2
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 419
    :cond_3
    :goto_4
    monitor-exit p0

    return-void

    .line 246
    :catchall_0
    move-exception v2

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 239
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2

    .line 254
    .restart local v28       #secureRandom:Ljava/security/SecureRandom;
    .restart local v29       #seedLengthInBytes:I
    :cond_4
    const/16 v2, 0x400

    :try_start_7
    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v2

    invoke-static {v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->RAND_seed([B)V

    goto :goto_0

    .line 259
    .restart local v6       #client:Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getServerSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;

    move-result-object v2

    iget v0, v2, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->sslCtxNativePointer:I

    move/from16 v32, v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    .line 281
    .restart local v14       #arr$:[Ljava/lang/String;
    .restart local v19       #enabledCipherSuite:Ljava/lang/String;
    .restart local v20       #exception:Z
    .restart local v21       #i$:I
    .restart local v25       #keyTypes:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v26       #len$:I
    .restart local v32       #sslCtxNativePointer:I
    :cond_6
    :try_start_8
    invoke-static/range {v19 .. v19}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getByName(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getServerKeyType()Ljava/lang/String;

    move-result-object v24

    .line 282
    .local v24, keyType:Ljava/lang/String;
    if-eqz v24, :cond_1

    .line 283
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_3

    .line 411
    .end local v14           #arr$:[Ljava/lang/String;
    .end local v19           #enabledCipherSuite:Ljava/lang/String;
    .end local v21           #i$:I
    .end local v24           #keyType:Ljava/lang/String;
    .end local v25           #keyTypes:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v26           #len$:I
    :catch_0
    move-exception v17

    .line 412
    .local v17, e:Ljavax/net/ssl/SSLProtocolException;
    :try_start_9
    new-instance v2, Ljavax/net/ssl/SSLHandshakeException;

    move-object/from16 v0, v17

    invoke-direct {v2, v0}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 415
    .end local v17           #e:Ljavax/net/ssl/SSLProtocolException;
    :catchall_2
    move-exception v2

    if-eqz v20, :cond_7

    .line 416
    :try_start_a
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->close()V

    :cond_7
    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 286
    .restart local v14       #arr$:[Ljava/lang/String;
    .restart local v21       #i$:I
    .restart local v25       #keyTypes:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v26       #len$:I
    :cond_8
    :try_start_b
    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_b .. :try_end_b} :catch_0

    .line 288
    .restart local v24       #keyType:Ljava/lang/String;
    :try_start_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getKeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-interface {v2, v0, v3, v1}, Ljavax/net/ssl/X509KeyManager;->chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->setCertificate(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_c .. :try_end_c} :catch_0

    goto :goto_5

    .line 291
    :catch_1
    move-exception v17

    .line 292
    .local v17, e:Ljava/security/cert/CertificateEncodingException;
    :try_start_d
    new-instance v2, Ljava/io/IOException;

    move-object/from16 v0, v17

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 297
    .end local v14           #arr$:[Ljava/lang/String;
    .end local v17           #e:Ljava/security/cert/CertificateEncodingException;
    .end local v21           #i$:Ljava/util/Iterator;
    .end local v24           #keyType:Ljava/lang/String;
    .end local v25           #keyTypes:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v26           #len$:I
    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->enabledProtocols:[Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->setEnabledProtocols(I[Ljava/lang/String;)V

    .line 298
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->enabledCipherSuites:[Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->setEnabledCipherSuites(I[Ljava/lang/String;)V

    .line 299
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->useSessionTickets:Z

    if-eqz v2, :cond_a

    .line 300
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    const-wide/16 v3, 0x4000

    invoke-static {v2, v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_clear_options(IJ)J

    .line 302
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->hostname:Ljava/lang/String;

    if-eqz v2, :cond_b

    .line 303
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->hostname:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_set_tlsext_host_name(ILjava/lang/String;)V

    .line 306
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getEnableSessionCreation()Z

    move-result v18

    .line 307
    .local v18, enableSessionCreation:Z
    if-nez v18, :cond_c

    .line 308
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    move/from16 v0, v18

    invoke-static {v2, v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_set_session_creation_enabled(IZ)V

    .line 313
    :cond_c
    if-eqz v6, :cond_13

    .line 315
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getClientSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;

    move-result-object v16

    .line 316
    .local v16, clientSessionContext:Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;
    move-object/from16 v13, v16

    .line 317
    .local v13, sessionContext:Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->getCachedClientSession(Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;)Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    move-result-object v30

    .line 318
    .local v30, session:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;
    if-eqz v30, :cond_d

    .line 319
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    move-object/from16 v0, v30

    iget v3, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->sslSessionNativePointer:I

    invoke-static {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_set_session(II)V

    .line 327
    .end local v16           #clientSessionContext:Lorg/apache/harmony/xnet/provider/jsse/ClientSessionContext;
    .end local v30           #session:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;
    :cond_d
    :goto_6
    if-eqz v6, :cond_14

    .line 364
    :cond_e
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->getSoTimeout()I

    move-result v27

    .line 365
    .local v27, savedTimeoutMilliseconds:I
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    if-ltz v2, :cond_f

    .line 366
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->setSoTimeout(I)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_d .. :try_end_d} :catch_0

    .line 371
    :cond_f
    :try_start_e
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->getSoTimeout()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->npnProtocols:[B

    move-object/from16 v4, p0

    invoke-static/range {v2 .. v7}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_do_handshake(ILjava/io/FileDescriptor;Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto$SSLHandshakeCallbacks;IZ[B)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2
    .catch Ljava/security/cert/CertificateException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_e .. :try_end_e} :catch_0

    move-result v8

    .line 378
    .local v8, sslSessionNativePointer:I
    :try_start_f
    invoke-static {v8}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_SESSION_session_id(I)[B

    move-result-object v31

    .line 379
    .local v31, sessionId:[B
    move-object/from16 v0, v31

    invoke-virtual {v13, v0}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->getSession([B)Ljavax/net/ssl/SSLSession;

    move-result-object v2

    check-cast v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslSession:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    .line 380
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslSession:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    if-eqz v2, :cond_17

    .line 381
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslSession:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;->lastAccessedTime:J

    .line 382
    invoke-static {v8}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_SESSION_free(I)V

    .line 401
    :cond_10
    :goto_8
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeTimeoutMilliseconds:I

    if-ltz v2, :cond_11

    .line 402
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->setSoTimeout(I)V

    .line 406
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeCompleted:Z

    if-eqz v2, :cond_12

    .line 407
    invoke-direct/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->notifyHandshakeCompletedListeners()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_f .. :try_end_f} :catch_0

    .line 410
    :cond_12
    const/16 v20, 0x0

    .line 415
    if-eqz v20, :cond_3

    .line 416
    :try_start_10
    invoke-virtual/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto/16 :goto_4

    .line 323
    .end local v8           #sslSessionNativePointer:I
    .end local v13           #sessionContext:Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;
    .end local v27           #savedTimeoutMilliseconds:I
    .end local v31           #sessionId:[B
    :cond_13
    :try_start_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getServerSessionContext()Lorg/apache/harmony/xnet/provider/jsse/ServerSessionContext;

    move-result-object v13

    .restart local v13       #sessionContext:Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;
    goto :goto_6

    .line 333
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getNeedClientAuth()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 334
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_set_verify(II)V

    .line 337
    const/4 v15, 0x1

    .line 348
    .local v15, certRequested:Z
    :goto_9
    if-eqz v15, :cond_e

    .line 349
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v33

    .line 350
    .local v33, trustManager:Ljavax/net/ssl/X509TrustManager;
    invoke-interface/range {v33 .. v33}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v22

    .line 351
    .local v22, issuers:[Ljava/security/cert/X509Certificate;
    if-eqz v22, :cond_e

    move-object/from16 v0, v22

    array-length v2, v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_11 .. :try_end_11} :catch_0

    if-eqz v2, :cond_e

    .line 354
    :try_start_12
    invoke-static/range {v22 .. v22}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->encodeIssuerX509Principals([Ljava/security/cert/X509Certificate;)[[B
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_12 .. :try_end_12} :catch_2
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_12 .. :try_end_12} :catch_0

    move-result-object v23

    .line 358
    .local v23, issuersBytes:[[B
    :try_start_13
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    move-object/from16 v0, v23

    invoke-static {v2, v0}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_set_client_CA_list(I[[B)V

    goto/16 :goto_7

    .line 339
    .end local v15           #certRequested:Z
    .end local v22           #issuers:[Ljava/security/cert/X509Certificate;
    .end local v23           #issuersBytes:[[B
    .end local v33           #trustManager:Ljavax/net/ssl/X509TrustManager;
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getWantClientAuth()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 340
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_set_verify(II)V

    .line 342
    const/4 v15, 0x1

    .restart local v15       #certRequested:Z
    goto :goto_9

    .line 345
    .end local v15           #certRequested:Z
    :cond_16
    const/4 v15, 0x0

    .restart local v15       #certRequested:Z
    goto :goto_9

    .line 355
    .restart local v22       #issuers:[Ljava/security/cert/X509Certificate;
    .restart local v33       #trustManager:Ljavax/net/ssl/X509TrustManager;
    :catch_2
    move-exception v17

    .line 356
    .restart local v17       #e:Ljava/security/cert/CertificateEncodingException;
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Problem encoding principals"

    move-object/from16 v0, v17

    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 373
    .end local v15           #certRequested:Z
    .end local v17           #e:Ljava/security/cert/CertificateEncodingException;
    .end local v22           #issuers:[Ljava/security/cert/X509Certificate;
    .end local v33           #trustManager:Ljavax/net/ssl/X509TrustManager;
    .restart local v27       #savedTimeoutMilliseconds:I
    :catch_3
    move-exception v17

    .line 374
    .local v17, e:Ljava/security/cert/CertificateException;
    new-instance v34, Ljavax/net/ssl/SSLHandshakeException;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v34

    invoke-direct {v0, v2}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    .line 375
    .local v34, wrapper:Ljavax/net/ssl/SSLHandshakeException;
    move-object/from16 v0, v34

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 376
    throw v34

    .line 384
    .end local v17           #e:Ljava/security/cert/CertificateException;
    .end local v34           #wrapper:Ljavax/net/ssl/SSLHandshakeException;
    .restart local v8       #sslSessionNativePointer:I
    .restart local v31       #sessionId:[B
    :cond_17
    if-nez v18, :cond_18

    .line 386
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "SSL Session may not be created"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 388
    :cond_18
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    invoke-static {v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_get_certificate(I)[[B

    move-result-object v2

    invoke-static {v2}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->createCertChain([[B)[Ljava/security/cert/X509Certificate;

    move-result-object v9

    .line 390
    .local v9, localCertificates:[Ljava/security/cert/X509Certificate;
    move-object/from16 v0, p0

    iget v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I

    invoke-static {v2}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_get_peer_cert_chain(I)[[B

    move-result-object v2

    invoke-static {v2}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->createCertChain([[B)[Ljava/security/cert/X509Certificate;

    move-result-object v10

    .line 392
    .local v10, peerCertificates:[Ljava/security/cert/X509Certificate;
    new-instance v7, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    invoke-direct/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->getPeerHostName()Ljava/lang/String;

    move-result-object v11

    invoke-direct/range {p0 .. p0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->getPeerPort()I

    move-result v12

    invoke-direct/range {v7 .. v13}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;-><init>(I[Ljava/security/cert/X509Certificate;[Ljava/security/cert/X509Certificate;Ljava/lang/String;ILorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslSession:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    .line 395
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->handshakeCompleted:Z

    if-eqz v2, :cond_10

    .line 396
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslSession:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSessionImpl;

    invoke-virtual {v13, v2}, Lorg/apache/harmony/xnet/provider/jsse/AbstractSessionContext;->putSession(Ljavax/net/ssl/SSLSession;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2
    .catch Ljavax/net/ssl/SSLProtocolException; {:try_start_13 .. :try_end_13} :catch_0

    goto/16 :goto_8
.end method

.method public verifyCertificateChain([[BLjava/lang/String;)V
    .locals 7
    .parameter "bytes"
    .parameter "authMethod"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 564
    if-eqz p1, :cond_0

    :try_start_0
    array-length v5, p1

    if-nez v5, :cond_1

    .line 565
    :cond_0
    new-instance v5, Ljavax/net/ssl/SSLException;

    const-string v6, "Peer sent no certificate"

    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 581
    :catch_0
    move-exception v2

    .line 582
    .local v2, e:Ljava/security/cert/CertificateException;
    throw v2

    .line 567
    .end local v2           #e:Ljava/security/cert/CertificateException;
    :cond_1
    :try_start_1
    array-length v5, p1

    new-array v4, v5, [Ljava/security/cert/X509Certificate;

    .line 568
    .local v4, peerCertificateChain:[Ljava/security/cert/X509Certificate;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v5, p1

    if-ge v3, v5, :cond_2

    .line 569
    new-instance v5, Lorg/apache/harmony/security/provider/cert/X509CertImpl;

    aget-object v6, p1, v3

    invoke-direct {v5, v6}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;-><init>([B)V

    aput-object v5, v4, v3

    .line 568
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 571
    :cond_2
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getUseClientMode()Z

    move-result v1

    .line 572
    .local v1, client:Z
    if-eqz v1, :cond_3

    .line 573
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v5

    invoke-interface {v5, v4, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 588
    :goto_1
    return-void

    .line 576
    :cond_3
    const/4 v5, 0x0

    aget-object v5, v4, v5

    invoke-virtual {v5}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    invoke-interface {v5}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 577
    .local v0, authType:Ljava/lang/String;
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslParameters:Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;

    invoke-virtual {v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLParametersImpl;->getTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v5

    invoke-interface {v5, v4, v0}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 583
    .end local v0           #authType:Ljava/lang/String;
    .end local v1           #client:Z
    .end local v3           #i:I
    .end local v4           #peerCertificateChain:[Ljava/security/cert/X509Certificate;
    :catch_1
    move-exception v2

    .line 584
    .local v2, e:Ljava/lang/RuntimeException;
    throw v2

    .line 585
    .end local v2           #e:Ljava/lang/RuntimeException;
    :catch_2
    move-exception v2

    .line 586
    .local v2, e:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method
