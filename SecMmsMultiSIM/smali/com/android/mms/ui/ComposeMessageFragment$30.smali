.class Lcom/android/mms/ui/ComposeMessageFragment$30;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mPrivPos:I

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 2959
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$30;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2961
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$30;->mPrivPos:I

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .parameter "s"

    .prologue
    .line 2972
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->parseSmsAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2974
    .local v0, address:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2975
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$30;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->SENDER_ADDRESS_LIMIT_BYTE:I
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$4100(Lcom/android/mms/ui/ComposeMessageFragment;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-le v1, v2, :cond_0

    .line 2976
    iget v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$30;->mPrivPos:I

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$30;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mSenderEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$4200(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    invoke-interface {p1, v1, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 2977
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$30;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$30;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$200(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->alertMaximumCharactersSenderPopup(Landroid/content/Context;Ljava/lang/String;)V

    .line 2986
    :cond_0
    :goto_0
    return-void

    .line 2981
    :cond_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$30;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->SENDER_ADDRESS_LIMIT_BYTE:I
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$4100(Lcom/android/mms/ui/ComposeMessageFragment;)I

    move-result v2

    if-le v1, v2, :cond_0

    .line 2982
    iget v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$30;->mPrivPos:I

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$30;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mSenderEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$4200(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    invoke-interface {p1, v1, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 2983
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$30;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$30;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$200(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->alertMaximumCharactersSenderPopup(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 2964
    iput p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$30;->mPrivPos:I

    .line 2965
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 2968
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$30;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, p1}, Lcom/android/mms/data/WorkingMessage;->setSender(Ljava/lang/CharSequence;)V

    .line 2969
    return-void
.end method
