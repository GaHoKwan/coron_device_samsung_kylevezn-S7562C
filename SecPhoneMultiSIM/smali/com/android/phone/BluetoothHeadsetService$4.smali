.class Lcom/android/phone/BluetoothHeadsetService$4;
.super Landroid/os/Handler;
.source "BluetoothHeadsetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothHeadsetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothHeadsetService;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothHeadsetService;)V
    .locals 0
    .parameter

    .prologue
    .line 470
    iput-object p1, p0, Lcom/android/phone/BluetoothHeadsetService$4;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x2

    .line 473
    iget-object v5, p0, Lcom/android/phone/BluetoothHeadsetService$4;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #calls: Lcom/android/phone/BluetoothHeadsetService;->getCurrentDevice()Landroid/bluetooth/BluetoothDevice;
    invoke-static {v5}, Lcom/android/phone/BluetoothHeadsetService;->access$600(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 474
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_0

    iget-object v5, p0, Lcom/android/phone/BluetoothHeadsetService$4;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v5}, Lcom/android/phone/BluetoothHeadsetService;->access$700(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    #getter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mState:I
    invoke-static {v5}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$000(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    .line 514
    :cond_0
    :goto_0
    return-void

    .line 479
    :cond_1
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 486
    :pswitch_0
    const-string v5, "Rfcomm connected"

    #calls: Lcom/android/phone/BluetoothHeadsetService;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/phone/BluetoothHeadsetService;->access$100(Ljava/lang/String;)V

    .line 488
    iget-object v6, p0, Lcom/android/phone/BluetoothHeadsetService$4;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    monitor-enter v6

    .line 489
    :try_start_0
    iget-object v5, p0, Lcom/android/phone/BluetoothHeadsetService$4;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const/4 v7, 0x0

    #setter for: Lcom/android/phone/BluetoothHeadsetService;->mConnectThread:Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;
    invoke-static {v5, v7}, Lcom/android/phone/BluetoothHeadsetService;->access$2102(Lcom/android/phone/BluetoothHeadsetService;Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;)Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;

    .line 490
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 492
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/bluetooth/HeadsetBase;

    .line 495
    .local v2, headset:Landroid/bluetooth/HeadsetBase;
    const/4 v4, 0x0

    .line 497
    .local v4, uuids:[Landroid/os/ParcelUuid;
    :try_start_1
    iget-object v5, p0, Lcom/android/phone/BluetoothHeadsetService$4;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mBluetoothService:Landroid/bluetooth/IBluetooth;
    invoke-static {v5}, Lcom/android/phone/BluetoothHeadsetService;->access$500(Lcom/android/phone/BluetoothHeadsetService;)Landroid/bluetooth/IBluetooth;

    move-result-object v5

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/bluetooth/IBluetooth;->getRemoteUuids(Ljava/lang/String;)[Landroid/os/ParcelUuid;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    .line 499
    :goto_1
    if-eqz v4, :cond_2

    sget-object v5, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    invoke-static {v4, v5}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 501
    iget-object v5, p0, Lcom/android/phone/BluetoothHeadsetService$4;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #calls: Lcom/android/phone/BluetoothHeadsetService;->setState(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v5, v0, v8}, Lcom/android/phone/BluetoothHeadsetService;->access$1800(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;I)V

    .line 510
    :goto_2
    iget-object v5, p0, Lcom/android/phone/BluetoothHeadsetService$4;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v5}, Lcom/android/phone/BluetoothHeadsetService;->access$700(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    #setter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mHeadset:Landroid/bluetooth/HeadsetBase;
    invoke-static {v5, v2}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$2302(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;Landroid/bluetooth/HeadsetBase;)Landroid/bluetooth/HeadsetBase;

    .line 511
    iget-object v5, p0, Lcom/android/phone/BluetoothHeadsetService$4;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v5}, Lcom/android/phone/BluetoothHeadsetService;->access$1500(Lcom/android/phone/BluetoothHeadsetService;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v6

    iget-object v5, p0, Lcom/android/phone/BluetoothHeadsetService$4;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mRemoteHeadsets:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v5}, Lcom/android/phone/BluetoothHeadsetService;->access$700(Lcom/android/phone/BluetoothHeadsetService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;

    #getter for: Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->mHeadsetType:I
    invoke-static {v5}, Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;->access$1000(Lcom/android/phone/BluetoothHeadsetService$BluetoothRemoteHeadset;)I

    move-result v5

    invoke-virtual {v6, v2, v5}, Lcom/android/phone/BluetoothHandsfree;->connectHeadset(Landroid/bluetooth/HeadsetBase;I)V

    goto :goto_0

    .line 481
    .end local v2           #headset:Landroid/bluetooth/HeadsetBase;
    .end local v4           #uuids:[Landroid/os/ParcelUuid;
    :pswitch_1
    const-string v5, "Rfcomm error"

    #calls: Lcom/android/phone/BluetoothHeadsetService;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/phone/BluetoothHeadsetService;->access$100(Ljava/lang/String;)V

    .line 482
    iget-object v5, p0, Lcom/android/phone/BluetoothHeadsetService$4;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #setter for: Lcom/android/phone/BluetoothHeadsetService;->mConnectThread:Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;
    invoke-static {v5, v7}, Lcom/android/phone/BluetoothHeadsetService;->access$2102(Lcom/android/phone/BluetoothHeadsetService;Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;)Lcom/android/phone/BluetoothHeadsetService$RfcommConnectThread;

    .line 483
    iget-object v5, p0, Lcom/android/phone/BluetoothHeadsetService$4;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    const/4 v6, 0x0

    #calls: Lcom/android/phone/BluetoothHeadsetService;->setState(Landroid/bluetooth/BluetoothDevice;I)V
    invoke-static {v5, v0, v6}, Lcom/android/phone/BluetoothHeadsetService;->access$1800(Lcom/android/phone/BluetoothHeadsetService;Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_0

    .line 490
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 498
    .restart local v2       #headset:Landroid/bluetooth/HeadsetBase;
    .restart local v4       #uuids:[Landroid/os/ParcelUuid;
    :catch_0
    move-exception v1

    .local v1, e:Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Remote exc "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/phone/BluetoothHeadsetService;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/phone/BluetoothHeadsetService;->access$100(Ljava/lang/String;)V

    goto :goto_1

    .line 503
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_2
    const-string v5, "HFP device, scheduling SLC timer"

    #calls: Lcom/android/phone/BluetoothHeadsetService;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/phone/BluetoothHeadsetService;->access$100(Ljava/lang/String;)V

    .line 504
    iget-object v5, p0, Lcom/android/phone/BluetoothHeadsetService$4;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/phone/BluetoothHeadsetService;->access$1900(Lcom/android/phone/BluetoothHeadsetService;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 505
    .local v3, slc_msg:Landroid/os/Message;
    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 506
    iget-object v5, p0, Lcom/android/phone/BluetoothHeadsetService$4;->this$0:Lcom/android/phone/BluetoothHeadsetService;

    #getter for: Lcom/android/phone/BluetoothHeadsetService;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/phone/BluetoothHeadsetService;->access$1900(Lcom/android/phone/BluetoothHeadsetService;)Landroid/os/Handler;

    move-result-object v5

    const-wide/16 v6, 0x7d0

    invoke-virtual {v5, v3, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    .line 479
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
