.class Lcom/android/mms/transaction/SmsReceiverService$4;
.super Ljava/lang/Object;
.source "SmsReceiverService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/transaction/SmsReceiverService;->messageFailedtoDisplay(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/SmsReceiverService;

.field final synthetic val$destAddr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mms/transaction/SmsReceiverService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1096
    iput-object p1, p0, Lcom/android/mms/transaction/SmsReceiverService$4;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    iput-object p2, p0, Lcom/android/mms/transaction/SmsReceiverService$4;->val$destAddr:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1101
    iget-object v2, p0, Lcom/android/mms/transaction/SmsReceiverService$4;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    #getter for: Lcom/android/mms/transaction/SmsReceiverService;->mCausecode:I
    invoke-static {v2}, Lcom/android/mms/transaction/SmsReceiverService;->access$1600(Lcom/android/mms/transaction/SmsReceiverService;)I

    move-result v2

    const/16 v3, 0x61

    if-ne v2, v3, :cond_0

    .line 1102
    const v1, 0x7f0a048c

    .line 1103
    .local v1, strNum:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Code : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/transaction/SmsReceiverService$4;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    #getter for: Lcom/android/mms/transaction/SmsReceiverService;->mCausecode:I
    invoke-static {v3}, Lcom/android/mms/transaction/SmsReceiverService;->access$1600(Lcom/android/mms/transaction/SmsReceiverService;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/transaction/SmsReceiverService$4;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1112
    .end local v1           #strNum:I
    .local v0, mErrorStr:Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/android/mms/transaction/SmsReceiverService$4;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1133
    return-void

    .line 1105
    .end local v0           #mErrorStr:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/mms/transaction/SmsReceiverService$4;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    #getter for: Lcom/android/mms/transaction/SmsReceiverService;->mCausecode:I
    invoke-static {v2}, Lcom/android/mms/transaction/SmsReceiverService;->access$1600(Lcom/android/mms/transaction/SmsReceiverService;)I

    move-result v2

    const/16 v3, 0x22

    if-ne v2, v3, :cond_1

    .line 1106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Code : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/transaction/SmsReceiverService$4;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    #getter for: Lcom/android/mms/transaction/SmsReceiverService;->mCausecode:I
    invoke-static {v3}, Lcom/android/mms/transaction/SmsReceiverService;->access$1600(Lcom/android/mms/transaction/SmsReceiverService;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/transaction/SmsReceiverService$4;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    const v4, 0x7f0a048e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #mErrorStr:Ljava/lang/String;
    goto :goto_0

    .line 1109
    .end local v0           #mErrorStr:Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Code : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/transaction/SmsReceiverService$4;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    #getter for: Lcom/android/mms/transaction/SmsReceiverService;->mCausecode:I
    invoke-static {v3}, Lcom/android/mms/transaction/SmsReceiverService;->access$1600(Lcom/android/mms/transaction/SmsReceiverService;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/transaction/SmsReceiverService$4;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    const v4, 0x7f0a0495

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/transaction/SmsReceiverService$4;->val$destAddr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/transaction/SmsReceiverService$4;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    const v4, 0x7f0a0496

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #mErrorStr:Ljava/lang/String;
    goto/16 :goto_0
.end method