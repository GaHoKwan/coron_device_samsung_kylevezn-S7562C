.class Lcom/android/phone/NetworkQueryService2$2;
.super Lcom/android/phone/INetworkQueryService2$Stub;
.source "NetworkQueryService2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkQueryService2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkQueryService2;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkQueryService2;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/phone/NetworkQueryService2$2;->this$0:Lcom/android/phone/NetworkQueryService2;

    invoke-direct {p0}, Lcom/android/phone/INetworkQueryService2$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public startNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback2;)V
    .locals 4
    .parameter "cb"

    .prologue
    .line 114
    if-eqz p1, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/phone/NetworkQueryService2$2;->this$0:Lcom/android/phone/NetworkQueryService2;

    iget-object v1, v0, Lcom/android/phone/NetworkQueryService2;->mCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v1

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/NetworkQueryService2$2;->this$0:Lcom/android/phone/NetworkQueryService2;

    iget-object v0, v0, Lcom/android/phone/NetworkQueryService2;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 120
    iget-object v0, p0, Lcom/android/phone/NetworkQueryService2$2;->this$0:Lcom/android/phone/NetworkQueryService2;

    #getter for: Lcom/android/phone/NetworkQueryService2;->mState:I
    invoke-static {v0}, Lcom/android/phone/NetworkQueryService2;->access$200(Lcom/android/phone/NetworkQueryService2;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 136
    :goto_0
    :pswitch_0
    monitor-exit v1

    .line 138
    :cond_0
    return-void

    .line 124
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/NetworkQueryService2$2;->this$0:Lcom/android/phone/NetworkQueryService2;

    #getter for: Lcom/android/phone/NetworkQueryService2;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/NetworkQueryService2;->access$300(Lcom/android/phone/NetworkQueryService2;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/NetworkQueryService2$2;->this$0:Lcom/android/phone/NetworkQueryService2;

    iget-object v2, v2, Lcom/android/phone/NetworkQueryService2;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/Phone;->getAvailableNetworks(Landroid/os/Message;)V

    .line 126
    iget-object v0, p0, Lcom/android/phone/NetworkQueryService2$2;->this$0:Lcom/android/phone/NetworkQueryService2;

    const/4 v2, -0x2

    #setter for: Lcom/android/phone/NetworkQueryService2;->mState:I
    invoke-static {v0, v2}, Lcom/android/phone/NetworkQueryService2;->access$202(Lcom/android/phone/NetworkQueryService2;I)I

    goto :goto_0

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 120
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public stopNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback2;)V
    .locals 2
    .parameter "cb"

    .prologue
    .line 151
    if-eqz p1, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/phone/NetworkQueryService2$2;->this$0:Lcom/android/phone/NetworkQueryService2;

    iget-object v1, v0, Lcom/android/phone/NetworkQueryService2;->mCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v1

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/NetworkQueryService2$2;->this$0:Lcom/android/phone/NetworkQueryService2;

    iget-object v0, v0, Lcom/android/phone/NetworkQueryService2;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 155
    monitor-exit v1

    .line 157
    :cond_0
    return-void

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
