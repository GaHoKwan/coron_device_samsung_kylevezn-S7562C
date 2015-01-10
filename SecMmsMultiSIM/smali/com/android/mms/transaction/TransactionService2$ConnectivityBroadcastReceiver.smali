.class Lcom/android/mms/transaction/TransactionService2$ConnectivityBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TransactionService2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/TransactionService2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectivityBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/TransactionService2;


# direct methods
.method private constructor <init>(Lcom/android/mms/transaction/TransactionService2;)V
    .locals 0
    .parameter

    .prologue
    .line 1610
    iput-object p1, p0, Lcom/android/mms/transaction/TransactionService2$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService2;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/transaction/TransactionService2;Lcom/android/mms/transaction/TransactionService2$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1610
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/TransactionService2$ConnectivityBroadcastReceiver;-><init>(Lcom/android/mms/transaction/TransactionService2;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1613
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1614
    .local v0, action:Ljava/lang/String;
    const-string v6, "Mms:transaction2"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[TransactionService2] ConnectivityBroadcastReceiver.onReceive() action: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1617
    const-string v6, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1618
    invoke-static {}, Lcom/android/mms/transaction/TransactionService2;->access$200()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    const-string v6, "simSlot"

    const/4 v7, 0x1

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    const-string v6, "reason"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "dataAttached"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1621
    const-string v6, "Mms:transaction2"

    const-string v7, "Switched TYPE_MOBILE2 network"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1622
    const/4 v6, 0x0

    invoke-static {v6}, Lcom/android/mms/transaction/TransactionService2;->access$202(Z)Z

    .line 1623
    iget-object v6, p0, Lcom/android/mms/transaction/TransactionService2$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService2;

    #getter for: Lcom/android/mms/transaction/TransactionService2;->mSwitchedHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/mms/transaction/TransactionService2;->access$1600(Lcom/android/mms/transaction/TransactionService2;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1624
    iget-object v6, p0, Lcom/android/mms/transaction/TransactionService2$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService2;

    #getter for: Lcom/android/mms/transaction/TransactionService2;->mSwitchedHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/mms/transaction/TransactionService2;->access$1600(Lcom/android/mms/transaction/TransactionService2;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x1

    const-wide/16 v8, 0x3e8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1760
    :cond_0
    :goto_0
    return-void

    .line 1629
    :cond_1
    invoke-static {}, Lcom/android/mms/transaction/TransactionService2;->access$200()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 1630
    const-string v6, "Mms:transaction2"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Not switched TYPE_MOBILE2 network = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1636
    :cond_2
    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1640
    const-string v6, "noConnectivity"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 1643
    .local v3, noConnectivity:Z
    const-string v6, "networkInfo"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 1646
    .local v2, networkInfo:Landroid/net/NetworkInfo;
    const/4 v1, 0x0

    .line 1648
    .local v1, isMmsApn:Z
    if-eqz v2, :cond_3

    .line 1649
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    const/4 v7, 0x2

    const/4 v8, 0x1

    invoke-static {v7, v8}, Landroid/net/MultiSimConnectivityManager;->getTypeMobileFromSimSlot(II)I

    move-result v7

    if-ne v6, v7, :cond_4

    const/4 v1, 0x1

    .line 1665
    :cond_3
    :goto_1
    const-string v6, "Mms:transaction2"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[TransactionService2] Handle ConnectivityBroadcastReceiver.onReceive(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 1668
    if-nez v1, :cond_6

    .line 1669
    const-string v6, "Mms:transaction2"

    const-string v7, "[TransactionService2]    type is not TYPE_MOBILE2_MMS, bail"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1674
    if-eqz v2, :cond_0

    const-string v6, "2GVoiceCallEnded"

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1676
    const-string v6, "Mms:transaction2"

    const-string v7, "[TransactionService2]    reason is 2GVoiceCallEnded, retrying mms connectivity"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1678
    new-instance v5, Lcom/android/mms/transaction/TransactionSettings;

    iget-object v6, p0, Lcom/android/mms/transaction/TransactionService2$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService2;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/android/mms/transaction/TransactionSettings;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1682
    .local v5, settings:Lcom/android/mms/transaction/TransactionSettings;
    invoke-virtual {v5}, Lcom/android/mms/transaction/TransactionSettings;->getMmscUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1683
    const-string v6, "Mms:transaction2"

    const-string v7, "[TransactionService2]    empty MMSC url, bail"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1649
    .end local v5           #settings:Lcom/android/mms/transaction/TransactionSettings;
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 1687
    .restart local v5       #settings:Lcom/android/mms/transaction/TransactionSettings;
    :cond_5
    iget-object v6, p0, Lcom/android/mms/transaction/TransactionService2$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService2;

    #calls: Lcom/android/mms/transaction/TransactionService2;->renewMmsConnectivity()V
    invoke-static {v6}, Lcom/android/mms/transaction/TransactionService2;->access$1100(Lcom/android/mms/transaction/TransactionService2;)V

    .line 1692
    iget-object v6, p0, Lcom/android/mms/transaction/TransactionService2$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService2;

    #getter for: Lcom/android/mms/transaction/TransactionService2;->mServiceHandler:Lcom/android/mms/transaction/TransactionService2$ServiceHandler;
    invoke-static {v6}, Lcom/android/mms/transaction/TransactionService2;->access$1200(Lcom/android/mms/transaction/TransactionService2;)Lcom/android/mms/transaction/TransactionService2$ServiceHandler;

    move-result-object v6

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1700
    iget-object v6, p0, Lcom/android/mms/transaction/TransactionService2$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService2;

    #getter for: Lcom/android/mms/transaction/TransactionService2;->mServiceHandler:Lcom/android/mms/transaction/TransactionService2$ServiceHandler;
    invoke-static {v6}, Lcom/android/mms/transaction/TransactionService2;->access$1200(Lcom/android/mms/transaction/TransactionService2;)Lcom/android/mms/transaction/TransactionService2$ServiceHandler;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/transaction/TransactionService2$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService2;

    #getter for: Lcom/android/mms/transaction/TransactionService2;->mServiceHandler:Lcom/android/mms/transaction/TransactionService2$ServiceHandler;
    invoke-static {v7}, Lcom/android/mms/transaction/TransactionService2;->access$1200(Lcom/android/mms/transaction/TransactionService2;)Lcom/android/mms/transaction/TransactionService2$ServiceHandler;

    move-result-object v7

    const/4 v8, 0x5

    invoke-virtual {v7, v8, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    const-wide/16 v8, 0xbb8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1707
    .end local v5           #settings:Lcom/android/mms/transaction/TransactionSettings;
    :cond_6
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-nez v6, :cond_a

    .line 1708
    const-string v6, "Mms:transaction2"

    const-string v7, "[TransactionService2]    TYPE_MOBILE2_MMS not connected, bail"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1709
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/android/mms/transaction/TransactionService2$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService2;

    #getter for: Lcom/android/mms/transaction/TransactionService2;->mWaitingMobileMmsConnected:Z
    invoke-static {v6}, Lcom/android/mms/transaction/TransactionService2;->access$1700(Lcom/android/mms/transaction/TransactionService2;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1710
    iget-object v6, p0, Lcom/android/mms/transaction/TransactionService2$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService2;

    #calls: Lcom/android/mms/transaction/TransactionService2;->isNetworkAvailable()Z
    invoke-static {v6}, Lcom/android/mms/transaction/TransactionService2;->access$1800(Lcom/android/mms/transaction/TransactionService2;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1712
    const-string v6, "Mms:transaction2"

    const-string v7, "[TransactionService2] beginMmsConnectivity().. "

    invoke-static {v6, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1713
    iget-object v6, p0, Lcom/android/mms/transaction/TransactionService2$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService2;

    invoke-virtual {v6}, Lcom/android/mms/transaction/TransactionService2;->beginMmsConnectivity()I

    move-result v4

    .line 1714
    .local v4, result:I
    const/4 v6, 0x1

    if-le v4, v6, :cond_8

    .line 1716
    const-string v6, "Mms:transaction2"

    const-string v7, "[TransactionService2] failed to activate PDP for TYPE_MOBILE_MMS"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1727
    .end local v4           #result:I
    :cond_7
    :goto_2
    const-string v6, "Mms:transaction2"

    const-string v7, "[TransactionService2]    TYPE_MOBILE_MMS not connected, bail"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1719
    .restart local v4       #result:I
    :cond_8
    const-string v6, "Mms:transaction2"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[TransactionService2] beginMmsConnectivity: result="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1723
    .end local v4           #result:I
    :cond_9
    const-string v6, "Mms:transaction2"

    const-string v7, "[TransactionService2] register MmsSystemEventReceiver since noNetwork"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1724
    iget-object v6, p0, Lcom/android/mms/transaction/TransactionService2$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService2;

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/transaction/MmsSystemEventReceiver2;->registerForConnectionStateChanges(Landroid/content/Context;)V

    goto :goto_2

    .line 1731
    :cond_a
    const-string v6, "Mms:transaction2"

    const-string v7, "[TransactionService2]    PDP for TYPE_MOBILE_MMS is connected"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1733
    new-instance v5, Lcom/android/mms/transaction/TransactionSettings;

    iget-object v6, p0, Lcom/android/mms/transaction/TransactionService2$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService2;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-direct {v5, v6, v7, v8}, Lcom/android/mms/transaction/TransactionSettings;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1737
    .restart local v5       #settings:Lcom/android/mms/transaction/TransactionSettings;
    invoke-virtual {v5}, Lcom/android/mms/transaction/TransactionSettings;->getMmscUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1738
    const-string v6, "Mms:transaction2"

    const-string v7, "[TransactionService2]    but empty MMSC url, bail"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1741
    :cond_b
    const-string v6, "Mms:transaction2"

    const-string v7, "[TransactionService2]    Take the next step to process transactions"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1742
    iget-object v6, p0, Lcom/android/mms/transaction/TransactionService2$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService2;

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/transaction/MmsSystemEventReceiver2;->unRegisterForConnectionStateChanges(Landroid/content/Context;)V

    .line 1744
    iget-object v6, p0, Lcom/android/mms/transaction/TransactionService2$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService2;

    const/4 v7, 0x0

    #setter for: Lcom/android/mms/transaction/TransactionService2;->mWaitingMobileMmsConnected:Z
    invoke-static {v6, v7}, Lcom/android/mms/transaction/TransactionService2;->access$1702(Lcom/android/mms/transaction/TransactionService2;Z)Z

    .line 1745
    iget-object v6, p0, Lcom/android/mms/transaction/TransactionService2$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService2;

    #calls: Lcom/android/mms/transaction/TransactionService2;->renewMmsConnectivity()V
    invoke-static {v6}, Lcom/android/mms/transaction/TransactionService2;->access$1100(Lcom/android/mms/transaction/TransactionService2;)V

    .line 1749
    iget-object v6, p0, Lcom/android/mms/transaction/TransactionService2$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService2;

    #getter for: Lcom/android/mms/transaction/TransactionService2;->mServiceHandler:Lcom/android/mms/transaction/TransactionService2$ServiceHandler;
    invoke-static {v6}, Lcom/android/mms/transaction/TransactionService2;->access$1200(Lcom/android/mms/transaction/TransactionService2;)Lcom/android/mms/transaction/TransactionService2$ServiceHandler;

    move-result-object v6

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1757
    iget-object v6, p0, Lcom/android/mms/transaction/TransactionService2$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService2;

    #getter for: Lcom/android/mms/transaction/TransactionService2;->mServiceHandler:Lcom/android/mms/transaction/TransactionService2$ServiceHandler;
    invoke-static {v6}, Lcom/android/mms/transaction/TransactionService2;->access$1200(Lcom/android/mms/transaction/TransactionService2;)Lcom/android/mms/transaction/TransactionService2$ServiceHandler;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/transaction/TransactionService2$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService2;

    #getter for: Lcom/android/mms/transaction/TransactionService2;->mServiceHandler:Lcom/android/mms/transaction/TransactionService2$ServiceHandler;
    invoke-static {v7}, Lcom/android/mms/transaction/TransactionService2;->access$1200(Lcom/android/mms/transaction/TransactionService2;)Lcom/android/mms/transaction/TransactionService2$ServiceHandler;

    move-result-object v7

    const/4 v8, 0x5

    invoke-virtual {v7, v8, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    const-wide/16 v8, 0xbb8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0
.end method
