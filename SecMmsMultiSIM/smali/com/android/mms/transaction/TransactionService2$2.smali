.class Lcom/android/mms/transaction/TransactionService2$2;
.super Landroid/os/Handler;
.source "TransactionService2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/TransactionService2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/TransactionService2;


# direct methods
.method constructor <init>(Lcom/android/mms/transaction/TransactionService2;)V
    .locals 0
    .parameter

    .prologue
    .line 268
    iput-object p1, p0, Lcom/android/mms/transaction/TransactionService2$2;->this$0:Lcom/android/mms/transaction/TransactionService2;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    .line 271
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 291
    :goto_0
    return-void

    .line 273
    :pswitch_0
    invoke-static {v5}, Lcom/android/mms/transaction/TransactionService2;->access$202(Z)Z

    .line 274
    const-string v0, "TransactionService2"

    const-string v1, "====>mSwitchedHandler, MSG_SWITCHED_NETWORK_CHECK recevied, we now startCommand again."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService2$2;->this$0:Lcom/android/mms/transaction/TransactionService2;

    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService2$2;->this$0:Lcom/android/mms/transaction/TransactionService2;

    #getter for: Lcom/android/mms/transaction/TransactionService2;->mSavedIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/mms/transaction/TransactionService2;->access$300(Lcom/android/mms/transaction/TransactionService2;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService2$2;->this$0:Lcom/android/mms/transaction/TransactionService2;

    #getter for: Lcom/android/mms/transaction/TransactionService2;->mSavedFlags:I
    invoke-static {v2}, Lcom/android/mms/transaction/TransactionService2;->access$400(Lcom/android/mms/transaction/TransactionService2;)I

    move-result v2

    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService2$2;->this$0:Lcom/android/mms/transaction/TransactionService2;

    #getter for: Lcom/android/mms/transaction/TransactionService2;->mSavedStartId:I
    invoke-static {v3}, Lcom/android/mms/transaction/TransactionService2;->access$500(Lcom/android/mms/transaction/TransactionService2;)I

    move-result v3

    #calls: Lcom/android/mms/transaction/TransactionService2;->startCommand(Landroid/content/Intent;IIZ)I
    invoke-static {v0, v1, v2, v3, v5}, Lcom/android/mms/transaction/TransactionService2;->access$600(Lcom/android/mms/transaction/TransactionService2;Landroid/content/Intent;IIZ)I

    goto :goto_0

    .line 280
    :pswitch_1
    const-string v0, "persist.sys.dataprefer.simid"

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService2$2;->this$0:Lcom/android/mms/transaction/TransactionService2;

    #getter for: Lcom/android/mms/transaction/TransactionService2;->mConnMgr:Landroid/net/MultiSimConnectivityManager;
    invoke-static {v0}, Lcom/android/mms/transaction/TransactionService2;->access$700(Lcom/android/mms/transaction/TransactionService2;)Landroid/net/MultiSimConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/MultiSimConnectivityManager;->switchToSim1DataNetwork()V

    .line 283
    :cond_0
    const-string v0, "TransactionService2"

    const-string v1, "====>mSwitchedHandler, MSG_WAITING_NETWORK_SWITCH_TIME_OUT recevied, we now startCommand again."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-static {v5}, Lcom/android/mms/transaction/TransactionService2;->access$202(Z)Z

    .line 286
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService2$2;->this$0:Lcom/android/mms/transaction/TransactionService2;

    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService2$2;->this$0:Lcom/android/mms/transaction/TransactionService2;

    #getter for: Lcom/android/mms/transaction/TransactionService2;->mSavedIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/mms/transaction/TransactionService2;->access$300(Lcom/android/mms/transaction/TransactionService2;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService2$2;->this$0:Lcom/android/mms/transaction/TransactionService2;

    #getter for: Lcom/android/mms/transaction/TransactionService2;->mSavedFlags:I
    invoke-static {v2}, Lcom/android/mms/transaction/TransactionService2;->access$400(Lcom/android/mms/transaction/TransactionService2;)I

    move-result v2

    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService2$2;->this$0:Lcom/android/mms/transaction/TransactionService2;

    #getter for: Lcom/android/mms/transaction/TransactionService2;->mSavedStartId:I
    invoke-static {v3}, Lcom/android/mms/transaction/TransactionService2;->access$500(Lcom/android/mms/transaction/TransactionService2;)I

    move-result v3

    const/4 v4, 0x1

    #calls: Lcom/android/mms/transaction/TransactionService2;->startCommand(Landroid/content/Intent;IIZ)I
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/mms/transaction/TransactionService2;->access$600(Lcom/android/mms/transaction/TransactionService2;Landroid/content/Intent;IIZ)I

    .line 287
    const-string v0, "persist.data.mms.busy"

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 271
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
