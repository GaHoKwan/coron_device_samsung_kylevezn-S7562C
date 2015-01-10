.class Lcom/android/mms/ui/ComposeMessageFragment$21;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->initRecipientsEditor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 2423
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$21;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .parameter "s"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 2429
    invoke-static {}, Lcom/android/mms/MmsConfig;->isAliasEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$21;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2430
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$21;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$21;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1700(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/RecipientsEditor;->getNumbers()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/android/mms/data/WorkingMessage;->checkIfAddressContainsEmailToMms(Ljava/util/List;Ljava/lang/CharSequence;)Z

    .line 2433
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$21;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->isRecipientsEditorVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePlusButtonOnRecipient()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2434
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2435
    .local v0, seq:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$21;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1700(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2436
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$21;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->m_BtnReceiverAdd:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$2900(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$21;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3000(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2437
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$21;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->m_BtnReceiverAdd:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$2900(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2438
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$21;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientButton:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3100(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2439
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$21;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientButton:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3100(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2447
    .end local v0           #seq:Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 2441
    .restart local v0       #seq:Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$21;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->m_BtnReceiverAdd:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$2900(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 2442
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$21;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->m_BtnReceiverAdd:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$2900(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2443
    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$21;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientButton:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3100(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$21;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->getEasyModeOn()Z
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3000(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2444
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$21;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientButton:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3100(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 2425
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 2427
    return-void
.end method
