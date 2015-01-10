.class Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TransactionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/TransactionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectivityBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/TransactionService;


# direct methods
.method private constructor <init>(Lcom/android/mms/transaction/TransactionService;)V
    .locals 0
    .parameter

    .prologue
    .line 1600
    iput-object p1, p0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/transaction/TransactionService;Lcom/android/mms/transaction/TransactionService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1600
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;-><init>(Lcom/android/mms/transaction/TransactionService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1603
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1604
    .local v0, action:Ljava/lang/String;
    const-string v6, "Mms:transaction"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[TransactionService] ConnectivityBroadcastReceiver.onReceive() action: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1607
    const-string v6, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1608
    invoke-static {}, Lcom/android/mms/transaction/TransactionService;->access$200()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    const-string v6, "simSlot"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "reason"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "dataAttached"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1611
    const-string v6, "Mms:transaction"

    const-string v7, "Switched TYPE_MOBILE network"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1612
    const/4 v6, 0x0

    invoke-static {v6}, Lcom/android/mms/transaction/TransactionService;->access$202(Z)Z

    .line 1613
    iget-object v6, p0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mSwitchedHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/mms/transaction/TransactionService;->access$1600(Lcom/android/mms/transaction/TransactionService;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1614
    iget-object v6, p0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mSwitchedHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/mms/transaction/TransactionService;->access$1600(Lcom/android/mms/transaction/TransactionService;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x1

    const-wide/16 v8, 0x3e8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1756
    :cond_0
    :goto_0
    return-void

    .line 1619
    :cond_1
    invoke-static {}, Lcom/android/mms/transaction/TransactionService;->access$200()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 1620
    const-string v6, "Mms:transaction"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Not switched TYPE_MOBILE network = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1625
    :cond_2
    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1629
    const-string v6, "noConnectivity"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 1632
    .local v3, noConnectivity:Z
    const-string v6, "networkInfo"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 1635
    .local v2, networkInfo:Landroid/net/NetworkInfo;
    const/4 v1, 0x0

    .line 1637
    .local v1, isMmsApn:Z
    if-eqz v2, :cond_3

    .line 1638
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    const/4 v1, 0x1

    .line 1653
    :cond_3
    :goto_1
    const-string v6, "Mms:transaction"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[TransactionService] Handle ConnectivityBroadcastReceiver.onReceive(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 1656
    if-nez v1, :cond_6

    .line 1657
    const-string v6, "Mms:transaction"

    const-string v7, "[TransactionService]  network type does not support MMS, bail"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1662
    if-eqz v2, :cond_0

    const-string v6, "2GVoiceCallEnded"

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1664
    const-string v6, "Mms:transaction"

    const-string v7, "[TransactionService]    reason is 2GVoiceCallEnded, retrying mms connectivity"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1666
    new-instance v5, Lcom/android/mms/transaction/TransactionSettings;

    iget-object v6, p0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/android/mms/transaction/TransactionSettings;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1670
    .local v5, settings:Lcom/android/mms/transaction/TransactionSettings;
    invoke-virtual {v5}, Lcom/android/mms/transaction/TransactionSettings;->getMmscUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1671
    const-string v6, "Mms:transaction"

    const-string v7, "[TransactionService]    empty MMSC url, bail"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1638
    .end local v5           #settings:Lcom/android/mms/transaction/TransactionSettings;
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 1675
    .restart local v5       #settings:Lcom/android/mms/transaction/TransactionSettings;
    :cond_5
    iget-object v6, p0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    #calls: Lcom/android/mms/transaction/TransactionService;->renewMmsConnectivity()V
    invoke-static {v6}, Lcom/android/mms/transaction/TransactionService;->access$1100(Lcom/android/mms/transaction/TransactionService;)V

    .line 1680
    iget-object v6, p0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;
    invoke-static {v6}, Lcom/android/mms/transaction/TransactionService;->access$1200(Lcom/android/mms/transaction/TransactionService;)Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    move-result-object v6

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1688
    iget-object v6, p0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;
    invoke-static {v6}, Lcom/android/mms/transaction/TransactionService;->access$1200(Lcom/android/mms/transaction/TransactionService;)Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;
    invoke-static {v7}, Lcom/android/mms/transaction/TransactionService;->access$1200(Lcom/android/mms/transaction/TransactionService;)Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    move-result-object v7

    const/4 v8, 0x5

    invoke-virtual {v7, v8, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    const-wide/16 v8, 0xbb8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1695
    .end local v5           #settings:Lcom/android/mms/transaction/TransactionSettings;
    :cond_6
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-nez v6, :cond_a

    .line 1696
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mWaitingMobileMmsConnected:Z
    invoke-static {v6}, Lcom/android/mms/transaction/TransactionService;->access$1700(Lcom/android/mms/transaction/TransactionService;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1697
    const-string v6, "Mms:transaction"

    const-string v7, "[TransactionService] TYPE_MOBILE_MMS is disconnected even waiting for connected"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1698
    iget-object v6, p0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    #calls: Lcom/android/mms/transaction/TransactionService;->isNetworkAvailable()Z
    invoke-static {v6}, Lcom/android/mms/transaction/TransactionService;->access$1800(Lcom/android/mms/transaction/TransactionService;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1700
    const-string v6, "Mms:transaction"

    const-string v7, "[TransactionService] beginMmsConnectivity().. "

    invoke-static {v6, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1701
    iget-object v6, p0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v6}, Lcom/android/mms/transaction/TransactionService;->beginMmsConnectivity()I

    move-result v4

    .line 1702
    .local v4, result:I
    const/4 v6, 0x1

    if-le v4, v6, :cond_8

    .line 1704
    const-string v6, "Mms:transaction"

    const-string v7, "[TransactionService] failed to activate PDP for TYPE_MOBILE_MMS"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1715
    .end local v4           #result:I
    :cond_7
    :goto_2
    const-string v6, "Mms:transaction"

    const-string v7, "[TransactionService]    TYPE_MOBILE_MMS not connected, bail"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1707
    .restart local v4       #result:I
    :cond_8
    const-string v6, "Mms:transaction"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[TransactionService] beginMmsConnectivity: result="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1711
    .end local v4           #result:I
    :cond_9
    const-string v6, "Mms:transaction"

    const-string v7, "[TransactionService] register MmsSystemEventReceiver since noNetwork"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1712
    iget-object v6, p0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->registerForConnectionStateChanges(Landroid/content/Context;)V

    goto :goto_2

    .line 1719
    :cond_a
    const-string v6, "Mms:transaction"

    const-string v7, "[TransactionService]    PDP for TYPE_MOBILE_MMS is connected"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1723
    if-eqz v2, :cond_b

    .line 1724
    new-instance v5, Lcom/android/mms/transaction/TransactionSettings;

    iget-object v6, p0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/android/mms/transaction/TransactionSettings;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1732
    .restart local v5       #settings:Lcom/android/mms/transaction/TransactionSettings;
    :goto_3
    invoke-virtual {v5}, Lcom/android/mms/transaction/TransactionSettings;->getMmscUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1733
    const-string v6, "Mms:transaction"

    const-string v7, "[TransactionService]    but empty MMSC url, bail"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1727
    .end local v5           #settings:Lcom/android/mms/transaction/TransactionSettings;
    :cond_b
    new-instance v5, Lcom/android/mms/transaction/TransactionSettings;

    iget-object v6, p0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/android/mms/transaction/TransactionSettings;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .restart local v5       #settings:Lcom/android/mms/transaction/TransactionSettings;
    goto :goto_3

    .line 1736
    :cond_c
    const-string v6, "Mms:transaction"

    const-string v7, "[TransactionService]    Take the next step to process transactions"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1737
    iget-object v6, p0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->unRegisterForConnectionStateChanges(Landroid/content/Context;)V

    .line 1739
    iget-object v6, p0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    const/4 v7, 0x0

    #setter for: Lcom/android/mms/transaction/TransactionService;->mWaitingMobileMmsConnected:Z
    invoke-static {v6, v7}, Lcom/android/mms/transaction/TransactionService;->access$1702(Lcom/android/mms/transaction/TransactionService;Z)Z

    .line 1740
    iget-object v6, p0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    #calls: Lcom/android/mms/transaction/TransactionService;->renewMmsConnectivity()V
    invoke-static {v6}, Lcom/android/mms/transaction/TransactionService;->access$1100(Lcom/android/mms/transaction/TransactionService;)V

    .line 1744
    iget-object v6, p0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;
    invoke-static {v6}, Lcom/android/mms/transaction/TransactionService;->access$1200(Lcom/android/mms/transaction/TransactionService;)Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    move-result-object v6

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1752
    iget-object v6, p0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;
    invoke-static {v6}, Lcom/android/mms/transaction/TransactionService;->access$1200(Lcom/android/mms/transaction/TransactionService;)Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/transaction/TransactionService$ConnectivityBroadcastReceiver;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mServiceHandler:Lcom/android/mms/transaction/TransactionService$ServiceHandler;
    invoke-static {v7}, Lcom/android/mms/transaction/TransactionService;->access$1200(Lcom/android/mms/transaction/TransactionService;)Lcom/android/mms/transaction/TransactionService$ServiceHandler;

    move-result-object v7

    const/4 v8, 0x5

    invoke-virtual {v7, v8, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    const-wide/16 v8, 0xbb8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0
.end method
