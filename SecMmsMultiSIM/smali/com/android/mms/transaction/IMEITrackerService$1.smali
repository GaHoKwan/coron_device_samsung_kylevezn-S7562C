.class Lcom/android/mms/transaction/IMEITrackerService$1;
.super Landroid/content/BroadcastReceiver;
.source "IMEITrackerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/transaction/IMEITrackerService;->sendSMS(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/IMEITrackerService;

.field final synthetic val$IMEITrackermessage:Ljava/lang/String;

.field final synthetic val$IMEITrackerserverNo:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mms/transaction/IMEITrackerService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 361
    iput-object p1, p0, Lcom/android/mms/transaction/IMEITrackerService$1;->this$0:Lcom/android/mms/transaction/IMEITrackerService;

    iput-object p2, p0, Lcom/android/mms/transaction/IMEITrackerService$1;->val$IMEITrackerserverNo:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/mms/transaction/IMEITrackerService$1;->val$IMEITrackermessage:Ljava/lang/String;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v4, 0x0

    .line 364
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getResultCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 395
    :goto_0
    :pswitch_0
    return-void

    .line 367
    :pswitch_1
    iget-object v2, p0, Lcom/android/mms/transaction/IMEITrackerService$1;->this$0:Lcom/android/mms/transaction/IMEITrackerService;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a03c9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 368
    .local v1, welcomeNote:Ljava/lang/String;
    invoke-static {p1, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 369
    iget-object v2, p0, Lcom/android/mms/transaction/IMEITrackerService$1;->this$0:Lcom/android/mms/transaction/IMEITrackerService;

    iget-object v2, v2, Lcom/android/mms/transaction/IMEITrackerService;->insertedSimRecordList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 370
    iget-object v2, p0, Lcom/android/mms/transaction/IMEITrackerService$1;->this$0:Lcom/android/mms/transaction/IMEITrackerService;

    iget-object v2, v2, Lcom/android/mms/transaction/IMEITrackerService;->insertedSimRecordList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 372
    :cond_0
    iget-object v2, p0, Lcom/android/mms/transaction/IMEITrackerService$1;->this$0:Lcom/android/mms/transaction/IMEITrackerService;

    iget-object v2, v2, Lcom/android/mms/transaction/IMEITrackerService;->insertedSimRecordList:Ljava/util/ArrayList;

    sget-object v3, Lcom/android/mms/transaction/IMEITrackerService;->IMSI_new:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    iget-object v2, p0, Lcom/android/mms/transaction/IMEITrackerService$1;->this$0:Lcom/android/mms/transaction/IMEITrackerService;

    iget-object v3, p0, Lcom/android/mms/transaction/IMEITrackerService$1;->this$0:Lcom/android/mms/transaction/IMEITrackerService;

    iget-object v3, v3, Lcom/android/mms/transaction/IMEITrackerService;->insertedSimRecordList:Ljava/util/ArrayList;

    #calls: Lcom/android/mms/transaction/IMEITrackerService;->updateRecord(Ljava/util/ArrayList;)V
    invoke-static {v2, v3}, Lcom/android/mms/transaction/IMEITrackerService;->access$400(Lcom/android/mms/transaction/IMEITrackerService;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 381
    .end local v1           #welcomeNote:Ljava/lang/String;
    :pswitch_2
    const-wide/16 v2, 0x7d0

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 386
    :goto_1
    sget v2, Lcom/android/mms/transaction/IMEITrackerService;->msgSendingAttempt:I

    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    .line 387
    sget v2, Lcom/android/mms/transaction/IMEITrackerService;->msgSendingAttempt:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/mms/transaction/IMEITrackerService;->msgSendingAttempt:I

    .line 389
    iget-object v2, p0, Lcom/android/mms/transaction/IMEITrackerService$1;->this$0:Lcom/android/mms/transaction/IMEITrackerService;

    iget-object v3, p0, Lcom/android/mms/transaction/IMEITrackerService$1;->val$IMEITrackerserverNo:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/mms/transaction/IMEITrackerService$1;->val$IMEITrackermessage:Ljava/lang/String;

    #calls: Lcom/android/mms/transaction/IMEITrackerService;->sendSMS(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/android/mms/transaction/IMEITrackerService;->access$300(Lcom/android/mms/transaction/IMEITrackerService;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 382
    :catch_0
    move-exception v0

    .line 384
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 391
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_1
    const-string v2, "ITS"

    const-string v3, "Number of maximum retry attempts exceeded."

    invoke-static {v2, v3}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 364
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
