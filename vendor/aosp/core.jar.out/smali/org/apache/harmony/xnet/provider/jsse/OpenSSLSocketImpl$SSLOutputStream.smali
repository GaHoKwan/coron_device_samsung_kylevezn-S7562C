.class Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$SSLOutputStream;
.super Ljava/io/OutputStream;
.source "OpenSSLSocketImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SSLOutputStream"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;


# direct methods
.method constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 663
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$SSLOutputStream;->this$0:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 668
    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->startHandshake()V

    .line 669
    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 0
    .parameter "oneByte"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 677
    invoke-static {p0, p1}, Llibcore/io/Streams;->writeSingleByte(Ljava/io/OutputStream;I)V

    .line 678
    return-void
.end method

.method public write([BII)V
    .locals 7
    .parameter "buf"
    .parameter "offset"
    .parameter "byteCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 686
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onNetwork()V

    .line 687
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$SSLOutputStream;->this$0:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    #getter for: Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->writeLock:Ljava/lang/Object;
    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->access$400(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 688
    :try_start_0
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$SSLOutputStream;->this$0:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    #calls: Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->checkOpen()V
    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->access$100(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;)V

    .line 689
    array-length v0, p1

    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 690
    if-nez p3, :cond_0

    .line 691
    monitor-exit v6

    .line 696
    :goto_0
    return-void

    .line 693
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$SSLOutputStream;->this$0:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    #getter for: Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->sslNativePointer:I
    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->access$200(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$SSLOutputStream;->this$0:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    #getter for: Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->socket:Ljava/net/Socket;
    invoke-static {v1}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;->access$300(Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;)Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->getFileDescriptor$()Ljava/io/FileDescriptor;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl$SSLOutputStream;->this$0:Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto;->SSL_write(ILjava/io/FileDescriptor;Lorg/apache/harmony/xnet/provider/jsse/NativeCrypto$SSLHandshakeCallbacks;[BII)V

    .line 695
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method