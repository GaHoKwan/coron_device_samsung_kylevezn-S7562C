.class Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl$1;
.super Ljava/lang/Object;
.source "ClientHandshakeImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->unwrap([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;


# direct methods
.method constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 282
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl$1;->this$0:Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl$1;->this$0:Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/ClientHandshakeImpl;->processServerHelloDone()V

    .line 285
    return-void
.end method
