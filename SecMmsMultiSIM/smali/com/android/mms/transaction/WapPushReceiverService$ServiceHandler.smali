.class final Lcom/android/mms/transaction/WapPushReceiverService$ServiceHandler;
.super Landroid/os/Handler;
.source "WapPushReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/WapPushReceiverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/WapPushReceiverService;


# direct methods
.method public constructor <init>(Lcom/android/mms/transaction/WapPushReceiverService;)V
    .locals 0
    .parameter

    .prologue
    .line 375
    iput-object p1, p0, Lcom/android/mms/transaction/WapPushReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/WapPushReceiverService;

    .line 376
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 377
    return-void
.end method

.method public constructor <init>(Lcom/android/mms/transaction/WapPushReceiverService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "_looper"

    .prologue
    .line 379
    iput-object p1, p0, Lcom/android/mms/transaction/WapPushReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/WapPushReceiverService;

    .line 380
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 381
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    .line 385
    const-string v5, "Mms/WapPushReceiverService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleMessage. msg= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    .line 388
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "data"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v3

    .line 390
    .local v3, userData:[B
    new-instance v4, Lcom/android/mms/transaction/WapPushMessage;

    invoke-direct {v4}, Lcom/android/mms/transaction/WapPushMessage;-><init>()V

    .line 393
    .local v4, wpMessage:Lcom/android/mms/transaction/WapPushMessage;
    const-string v5, "simSlot"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 394
    .local v2, simId:I
    const-string v5, "Mms/WapPushReceiverService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "wappush subscription = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    invoke-virtual {v4, v2}, Lcom/android/mms/transaction/WapPushMessage;->setSimIdentifier(I)V

    .line 399
    :try_start_0
    const-string v5, "Mms/WapPushReceiverService"

    const-string v6, "parse userData."

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    invoke-virtual {v4, v3}, Lcom/android/mms/transaction/WapPushMessage;->parse([B)V

    .line 403
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisplayPushSenderAddress()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 404
    invoke-virtual {v4, v1}, Lcom/android/mms/transaction/WapPushMessage;->parsepushaddress(Landroid/content/Intent;)V

    .line 407
    :cond_0
    const-string v5, "Mms/WapPushReceiverService"

    invoke-virtual {v4}, Lcom/android/mms/transaction/WapPushMessage;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    invoke-virtual {v4}, Lcom/android/mms/transaction/WapPushMessage;->getPublicId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 421
    :goto_0
    const-string v5, "Mms/WapPushReceiverService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported protocol. publicID= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/mms/transaction/WapPushMessage;->getPublicId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    :goto_1
    return-void

    .line 408
    :catch_0
    move-exception v0

    .line 409
    .local v0, ex:Ljava/lang/Exception;
    const-string v5, "Mms/WapPushReceiverService"

    const-string v6, "Fail to parse WAP Push message."

    invoke-static {v5, v6, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 416
    .end local v0           #ex:Ljava/lang/Exception;
    :pswitch_0
    iget-object v5, p0, Lcom/android/mms/transaction/WapPushReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/WapPushReceiverService;

    #calls: Lcom/android/mms/transaction/WapPushReceiverService;->handleSiMessage(Lcom/android/mms/transaction/WapPushMessage;)V
    invoke-static {v5, v4}, Lcom/android/mms/transaction/WapPushReceiverService;->access$400(Lcom/android/mms/transaction/WapPushReceiverService;Lcom/android/mms/transaction/WapPushMessage;)V

    goto :goto_1

    .line 419
    :pswitch_1
    iget-object v5, p0, Lcom/android/mms/transaction/WapPushReceiverService$ServiceHandler;->this$0:Lcom/android/mms/transaction/WapPushReceiverService;

    #calls: Lcom/android/mms/transaction/WapPushReceiverService;->handleSlMeeesage(Lcom/android/mms/transaction/WapPushMessage;)V
    invoke-static {v5, v4}, Lcom/android/mms/transaction/WapPushReceiverService;->access$500(Lcom/android/mms/transaction/WapPushReceiverService;Lcom/android/mms/transaction/WapPushMessage;)V

    goto :goto_0

    .line 414
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
