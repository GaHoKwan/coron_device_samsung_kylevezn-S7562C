.class Lcom/android/mms/transaction/TransactionService2$1$1;
.super Ljava/lang/Object;
.source "TransactionService2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/transaction/TransactionService2$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/transaction/TransactionService2$1;


# direct methods
.method constructor <init>(Lcom/android/mms/transaction/TransactionService2$1;)V
    .locals 0
    .parameter

    .prologue
    .line 224
    iput-object p1, p0, Lcom/android/mms/transaction/TransactionService2$1$1;->this$1:Lcom/android/mms/transaction/TransactionService2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 226
    const/4 v0, 0x0

    .line 227
    .local v0, str:Ljava/lang/String;
    const-string v1, "Mms:transaction2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TransactionService2] ToastType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService2$1$1;->this$1:Lcom/android/mms/transaction/TransactionService2$1;

    iget-object v3, v3, Lcom/android/mms/transaction/TransactionService2$1;->this$0:Lcom/android/mms/transaction/TransactionService2;

    #getter for: Lcom/android/mms/transaction/TransactionService2;->mToastType:I
    invoke-static {v3}, Lcom/android/mms/transaction/TransactionService2;->access$000(Lcom/android/mms/transaction/TransactionService2;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService2$1$1;->this$1:Lcom/android/mms/transaction/TransactionService2$1;

    iget-object v1, v1, Lcom/android/mms/transaction/TransactionService2$1;->this$0:Lcom/android/mms/transaction/TransactionService2;

    #getter for: Lcom/android/mms/transaction/TransactionService2;->mToastType:I
    invoke-static {v1}, Lcom/android/mms/transaction/TransactionService2;->access$000(Lcom/android/mms/transaction/TransactionService2;)I

    move-result v1

    if-ne v1, v4, :cond_3

    .line 230
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService2$1$1;->this$1:Lcom/android/mms/transaction/TransactionService2$1;

    iget-object v1, v1, Lcom/android/mms/transaction/TransactionService2$1;->this$0:Lcom/android/mms/transaction/TransactionService2;

    const v2, 0x7f0a00ed

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 235
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 236
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService2$1$1;->this$1:Lcom/android/mms/transaction/TransactionService2$1;

    iget-object v1, v1, Lcom/android/mms/transaction/TransactionService2$1;->this$0:Lcom/android/mms/transaction/TransactionService2;

    #getter for: Lcom/android/mms/transaction/TransactionService2;->mToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/mms/transaction/TransactionService2;->access$100(Lcom/android/mms/transaction/TransactionService2;)Landroid/widget/Toast;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 237
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService2$1$1;->this$1:Lcom/android/mms/transaction/TransactionService2$1;

    iget-object v1, v1, Lcom/android/mms/transaction/TransactionService2$1;->this$0:Lcom/android/mms/transaction/TransactionService2;

    #getter for: Lcom/android/mms/transaction/TransactionService2;->mToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/mms/transaction/TransactionService2;->access$100(Lcom/android/mms/transaction/TransactionService2;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    .line 238
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService2$1$1;->this$1:Lcom/android/mms/transaction/TransactionService2$1;

    iget-object v1, v1, Lcom/android/mms/transaction/TransactionService2$1;->this$0:Lcom/android/mms/transaction/TransactionService2;

    const/4 v2, 0x0

    #setter for: Lcom/android/mms/transaction/TransactionService2;->mToast:Landroid/widget/Toast;
    invoke-static {v1, v2}, Lcom/android/mms/transaction/TransactionService2;->access$102(Lcom/android/mms/transaction/TransactionService2;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 240
    :cond_1
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService2$1$1;->this$1:Lcom/android/mms/transaction/TransactionService2$1;

    iget-object v1, v1, Lcom/android/mms/transaction/TransactionService2$1;->this$0:Lcom/android/mms/transaction/TransactionService2;

    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService2$1$1;->this$1:Lcom/android/mms/transaction/TransactionService2$1;

    iget-object v2, v2, Lcom/android/mms/transaction/TransactionService2$1;->this$0:Lcom/android/mms/transaction/TransactionService2;

    invoke-static {v2, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    #setter for: Lcom/android/mms/transaction/TransactionService2;->mToast:Landroid/widget/Toast;
    invoke-static {v1, v2}, Lcom/android/mms/transaction/TransactionService2;->access$102(Lcom/android/mms/transaction/TransactionService2;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 242
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService2$1$1;->this$1:Lcom/android/mms/transaction/TransactionService2$1;

    iget-object v1, v1, Lcom/android/mms/transaction/TransactionService2$1;->this$0:Lcom/android/mms/transaction/TransactionService2;

    #getter for: Lcom/android/mms/transaction/TransactionService2;->mToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/mms/transaction/TransactionService2;->access$100(Lcom/android/mms/transaction/TransactionService2;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 244
    :cond_2
    return-void

    .line 231
    :cond_3
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService2$1$1;->this$1:Lcom/android/mms/transaction/TransactionService2$1;

    iget-object v1, v1, Lcom/android/mms/transaction/TransactionService2$1;->this$0:Lcom/android/mms/transaction/TransactionService2;

    #getter for: Lcom/android/mms/transaction/TransactionService2;->mToastType:I
    invoke-static {v1}, Lcom/android/mms/transaction/TransactionService2;->access$000(Lcom/android/mms/transaction/TransactionService2;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 232
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService2$1$1;->this$1:Lcom/android/mms/transaction/TransactionService2$1;

    iget-object v1, v1, Lcom/android/mms/transaction/TransactionService2$1;->this$0:Lcom/android/mms/transaction/TransactionService2;

    const v2, 0x7f0a00f7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
