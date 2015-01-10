.class Lcom/android/mms/spam/SetupSpamKeywordWriteForm$5;
.super Ljava/lang/Object;
.source "SetupSpamKeywordWriteForm.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/spam/SetupSpamKeywordWriteForm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field bChange:Z

.field m_OldStr:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/mms/spam/SetupSpamKeywordWriteForm;


# direct methods
.method constructor <init>(Lcom/android/mms/spam/SetupSpamKeywordWriteForm;)V
    .locals 1
    .parameter

    .prologue
    .line 504
    iput-object p1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$5;->this$0:Lcom/android/mms/spam/SetupSpamKeywordWriteForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 507
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$5;->m_OldStr:Ljava/lang/String;

    .line 508
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$5;->bChange:Z

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 579
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 558
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/16 v5, 0x20

    .line 518
    const-string v2, "ssibong"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTextChange:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 520
    .local v1, str:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->getByteSize(Ljava/lang/String;)I

    move-result v0

    .line 521
    .local v0, sSize:I
    if-gt v0, v5, :cond_1

    .line 522
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$5;->m_OldStr:Ljava/lang/String;

    .line 548
    :cond_0
    :goto_0
    return-void

    .line 525
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$5;->m_OldStr:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    if-le v0, v5, :cond_2

    .line 526
    const/16 v2, 0x20

    invoke-static {v1, v2}, Lcom/android/mms/ui/MessageUtils;->getCuttedStringByByteLength(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$5;->m_OldStr:Ljava/lang/String;

    .line 528
    :cond_2
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$5;->this$0:Lcom/android/mms/spam/SetupSpamKeywordWriteForm;

    #getter for: Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->m_SentenceText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->access$000(Lcom/android/mms/spam/SetupSpamKeywordWriteForm;)Landroid/widget/EditText;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$5;->m_OldStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 529
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$5;->this$0:Lcom/android/mms/spam/SetupSpamKeywordWriteForm;

    #getter for: Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->m_SentenceText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->access$000(Lcom/android/mms/spam/SetupSpamKeywordWriteForm;)Landroid/widget/EditText;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$5;->m_OldStr:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 530
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$5;->this$0:Lcom/android/mms/spam/SetupSpamKeywordWriteForm;

    #getter for: Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mMaxCharsInputToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->access$500(Lcom/android/mms/spam/SetupSpamKeywordWriteForm;)Landroid/widget/Toast;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$5;->this$0:Lcom/android/mms/spam/SetupSpamKeywordWriteForm;

    #getter for: Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mMaxCharsInputToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->access$500(Lcom/android/mms/spam/SetupSpamKeywordWriteForm;)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$5;->this$0:Lcom/android/mms/spam/SetupSpamKeywordWriteForm;

    #getter for: Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mMaxCharsInputToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->access$500(Lcom/android/mms/spam/SetupSpamKeywordWriteForm;)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v2

    if-nez v2, :cond_0

    .line 533
    :cond_3
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$5;->this$0:Lcom/android/mms/spam/SetupSpamKeywordWriteForm;

    #getter for: Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mMaxCharsInputToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->access$500(Lcom/android/mms/spam/SetupSpamKeywordWriteForm;)Landroid/widget/Toast;

    move-result-object v2

    if-nez v2, :cond_4

    .line 534
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$5;->this$0:Lcom/android/mms/spam/SetupSpamKeywordWriteForm;

    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$5;->this$0:Lcom/android/mms/spam/SetupSpamKeywordWriteForm;

    #getter for: Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->access$600(Lcom/android/mms/spam/SetupSpamKeywordWriteForm;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a0378

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    #setter for: Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mMaxCharsInputToast:Landroid/widget/Toast;
    invoke-static {v2, v3}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->access$502(Lcom/android/mms/spam/SetupSpamKeywordWriteForm;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 538
    :goto_1
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$5;->this$0:Lcom/android/mms/spam/SetupSpamKeywordWriteForm;

    #getter for: Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mMaxCharsInputToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->access$500(Lcom/android/mms/spam/SetupSpamKeywordWriteForm;)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 546
    :catch_0
    move-exception v2

    goto :goto_0

    .line 536
    :cond_4
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$5;->this$0:Lcom/android/mms/spam/SetupSpamKeywordWriteForm;

    #getter for: Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mMaxCharsInputToast:Landroid/widget/Toast;
    invoke-static {v2}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->access$500(Lcom/android/mms/spam/SetupSpamKeywordWriteForm;)Landroid/widget/Toast;

    move-result-object v2

    const v3, 0x7f0a0378

    invoke-virtual {v2, v3}, Landroid/widget/Toast;->setText(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method
