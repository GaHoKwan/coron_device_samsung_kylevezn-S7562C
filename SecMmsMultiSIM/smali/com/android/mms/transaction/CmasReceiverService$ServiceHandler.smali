.class final Lcom/android/mms/transaction/CmasReceiverService$ServiceHandler;
.super Landroid/os/Handler;
.source "CmasReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/CmasReceiverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/CmasReceiverService;


# direct methods
.method public constructor <init>(Lcom/android/mms/transaction/CmasReceiverService;)V
    .locals 0
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/mms/transaction/CmasReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/CmasReceiverService;

    .line 206
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 207
    return-void
.end method

.method public constructor <init>(Lcom/android/mms/transaction/CmasReceiverService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 201
    iput-object p1, p0, Lcom/android/mms/transaction/CmasReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/CmasReceiverService;

    .line 202
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 203
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 215
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 216
    .local v3, serviceId:I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/Intent;

    .line 219
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_0

    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 221
    const-string v4, "Mms/CmasReceiverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[CMAS]Receiver handleMessage : Action ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, action:Ljava/lang/String;
    const-string v4, "errorCode"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 227
    .local v1, error:I
    const-string v4, "android.provider.Telephony.SMS_EMERGENCY_CB_RECEIVED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 228
    const-string v4, "Mms/CmasReceiverService"

    const-string v5, "GSM CMAS message received"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v4, p0, Lcom/android/mms/transaction/CmasReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/CmasReceiverService;

    #calls: Lcom/android/mms/transaction/CmasReceiverService;->handleGSMCMASReceived(Landroid/content/Intent;)V
    invoke-static {v4, v2}, Lcom/android/mms/transaction/CmasReceiverService;->access$100(Lcom/android/mms/transaction/CmasReceiverService;Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #error:I
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/mms/transaction/CmasReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/CmasReceiverService;

    invoke-static {v4, v3}, Lcom/android/mms/transaction/SmsReceiver;->finishStartingService(Landroid/app/Service;I)V

    .line 245
    return-void

    .line 231
    .restart local v0       #action:Ljava/lang/String;
    .restart local v1       #error:I
    :cond_1
    :try_start_1
    const-string v4, "android.provider.Telephony.EMERGENCY_CDMA_MESSAGE_RECEIVED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 232
    const-string v4, "Mms/CmasReceiverService"

    const-string v5, "CDMA CMAS message received"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v4, p0, Lcom/android/mms/transaction/CmasReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/CmasReceiverService;

    #calls: Lcom/android/mms/transaction/CmasReceiverService;->handleCDMACMASReceived(Landroid/content/Intent;)V
    invoke-static {v4, v2}, Lcom/android/mms/transaction/CmasReceiverService;->access$200(Lcom/android/mms/transaction/CmasReceiverService;Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 243
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #error:I
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/android/mms/transaction/CmasReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/CmasReceiverService;

    invoke-static {v5, v3}, Lcom/android/mms/transaction/SmsReceiver;->finishStartingService(Landroid/app/Service;I)V

    throw v4

    .line 235
    .restart local v0       #action:Ljava/lang/String;
    .restart local v1       #error:I
    :cond_2
    :try_start_2
    const-string v4, "android.provider.Telephony.SCPT_RECEIVED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 236
    iget-object v4, p0, Lcom/android/mms/transaction/CmasReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/CmasReceiverService;

    #calls: Lcom/android/mms/transaction/CmasReceiverService;->handlScptReceived(Landroid/content/Intent;I)V
    invoke-static {v4, v2, v1}, Lcom/android/mms/transaction/CmasReceiverService;->access$300(Lcom/android/mms/transaction/CmasReceiverService;Landroid/content/Intent;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
