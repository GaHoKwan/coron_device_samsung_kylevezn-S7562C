.class public Lorg/apache/harmony/xnet/provider/jsse/ServerHelloDone;
.super Lorg/apache/harmony/xnet/provider/jsse/Message;
.source "ServerHelloDone.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/Message;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;I)V
    .locals 2
    .parameter "in"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/Message;-><init>()V

    .line 46
    if-eqz p2, :cond_0

    .line 47
    const/16 v0, 0x32

    const-string v1, "DECODE ERROR: incorrect ServerHelloDone"

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/Message;->fatalAlert(BLjava/lang/String;)V

    .line 49
    :cond_0
    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .prologue
    .line 74
    const/16 v0, 0xe

    return v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public send(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;)V
    .locals 0
    .parameter "out"

    .prologue
    .line 57
    return-void
.end method
