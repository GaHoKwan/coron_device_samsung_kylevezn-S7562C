.class Lcom/android/mms/transaction/TransactionService$2;
.super Landroid/os/Handler;
.source "TransactionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/TransactionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/TransactionService;


# direct methods
.method constructor <init>(Lcom/android/mms/transaction/TransactionService;)V
    .locals 0
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/mms/transaction/TransactionService$2;->this$0:Lcom/android/mms/transaction/TransactionService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 269
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 289
    :goto_0
    return-void

    .line 271
    :pswitch_0
    invoke-static {v4}, Lcom/android/mms/transaction/TransactionService;->access$202(Z)Z

    .line 272
    const-string v0, "TransactionService1"

    const-string v1, "====>mSwitchedHandler, MSG_SWITCHED_NETWORK_CHECK recevied, we now startCommand again."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService$2;->this$0:Lcom/android/mms/transaction/TransactionService;

    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService$2;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mSavedIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/mms/transaction/TransactionService;->access$300(Lcom/android/mms/transaction/TransactionService;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService$2;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mSavedFlags:I
    invoke-static {v2}, Lcom/android/mms/transaction/TransactionService;->access$400(Lcom/android/mms/transaction/TransactionService;)I

    move-result v2

    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService$2;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mSavedStartId:I
    invoke-static {v3}, Lcom/android/mms/transaction/TransactionService;->access$500(Lcom/android/mms/transaction/TransactionService;)I

    move-result v3

    #calls: Lcom/android/mms/transaction/TransactionService;->startCommand(Landroid/content/Intent;IIZ)I
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/mms/transaction/TransactionService;->access$600(Lcom/android/mms/transaction/TransactionService;Landroid/content/Intent;IIZ)I

    goto :goto_0

    .line 278
    :pswitch_1
    const-string v0, "persist.sys.dataprefer.simid"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 279
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService$2;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/MultiSimConnectivityManager;
    invoke-static {v0}, Lcom/android/mms/transaction/TransactionService;->access$700(Lcom/android/mms/transaction/TransactionService;)Landroid/net/MultiSimConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/MultiSimConnectivityManager;->switchToSim2DataNetwork()V

    .line 282
    :cond_0
    const-string v0, "TransactionService1"

    const-string v1, "====>mSwitchedHandler, MSG_WAITING_NETWORK_SWITCH_TIME_OUT recevied, we now startCommand again."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-static {v4}, Lcom/android/mms/transaction/TransactionService;->access$202(Z)Z

    .line 285
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService$2;->this$0:Lcom/android/mms/transaction/TransactionService;

    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService$2;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mSavedIntent:Landroid/content/Intent;
    invoke-static {v1}, Lcom/android/mms/transaction/TransactionService;->access$300(Lcom/android/mms/transaction/TransactionService;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService$2;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mSavedFlags:I
    invoke-static {v2}, Lcom/android/mms/transaction/TransactionService;->access$400(Lcom/android/mms/transaction/TransactionService;)I

    move-result v2

    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService$2;->this$0:Lcom/android/mms/transaction/TransactionService;

    #getter for: Lcom/android/mms/transaction/TransactionService;->mSavedStartId:I
    invoke-static {v3}, Lcom/android/mms/transaction/TransactionService;->access$500(Lcom/android/mms/transaction/TransactionService;)I

    move-result v3

    #calls: Lcom/android/mms/transaction/TransactionService;->startCommand(Landroid/content/Intent;IIZ)I
    invoke-static {v0, v1, v2, v3, v5}, Lcom/android/mms/transaction/TransactionService;->access$600(Lcom/android/mms/transaction/TransactionService;Landroid/content/Intent;IIZ)I

    .line 286
    const-string v0, "persist.data.mms.busy"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 269
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
