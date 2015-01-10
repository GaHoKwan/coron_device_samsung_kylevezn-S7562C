.class Lcom/android/mms/ui/ComposeMessageFragment$52;
.super Landroid/os/Handler;
.source "ComposeMessageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
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
    .line 6084
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$52;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 6087
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$52;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1700(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$52;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1700(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$52;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;
    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->access$100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v8

    if-nez v8, :cond_1

    .line 6137
    :cond_0
    :goto_0
    return-void

    .line 6091
    :cond_1
    const/4 v3, 0x0

    .line 6093
    .local v3, recipients:Ljava/lang/String;
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    goto :goto_0

    .line 6095
    :pswitch_0
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment$52;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1700(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 6098
    :pswitch_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v3           #recipients:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 6099
    .restart local v3       #recipients:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment$52;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1700(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6100
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment$52;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1700(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 6103
    :pswitch_2
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v3           #recipients:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 6104
    .restart local v3       #recipients:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$52;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1700(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6106
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSignature()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 6107
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$52;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->access$200(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 6108
    .local v2, prefs:Landroid/content/SharedPreferences;
    const-string v8, "pref_key_enable_signature"

    invoke-interface {v2, v8, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 6110
    .local v1, isSignatureEnabled:Z
    if-ne v1, v6, :cond_3

    .line 6111
    const-string v6, "pref_key_signature_text"

    const-string v8, ""

    invoke-interface {v2, v6, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 6112
    .local v5, signature:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment$52;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;
    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageFragment;->access$100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6113
    .local v0, focusedPageText:Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 6114
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment$52;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;
    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageFragment;->access$100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v6

    invoke-virtual {v6, v7, v7}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText(IZ)V

    goto/16 :goto_0

    .line 6116
    :cond_2
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment$52;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;
    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageFragment;->access$100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText()V

    goto/16 :goto_0

    .line 6119
    .end local v0           #focusedPageText:Ljava/lang/String;
    .end local v5           #signature:Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment$52;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;
    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageFragment;->access$100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText()V

    goto/16 :goto_0

    .line 6122
    .end local v1           #isSignatureEnabled:Z
    .end local v2           #prefs:Landroid/content/SharedPreferences;
    :cond_4
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$52;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v8, v3}, Lcom/android/mms/data/WorkingMessage;->setRecipients(Ljava/lang/String;)V

    .line 6123
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$52;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v8}, Lcom/android/mms/data/WorkingMessage;->isDiscarded()Z

    move-result v8

    if-nez v8, :cond_5

    move v4, v6

    .line 6124
    .local v4, showErrorDialog:Z
    :goto_1
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$52;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->MakeToButtonsByRecipientEditor(ZZZ)Z
    invoke-static {v8, v6, v4, v7}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3400(Lcom/android/mms/ui/ComposeMessageFragment;ZZZ)Z

    .line 6125
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment$52;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;
    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageFragment;->access$100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/ui/MmsRichContainer;->setFocusEditText()V

    goto/16 :goto_0

    .end local v4           #showErrorDialog:Z
    :cond_5
    move v4, v7

    .line 6123
    goto :goto_1

    .line 6130
    :pswitch_3
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v3           #recipients:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 6131
    .restart local v3       #recipients:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment$52;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1700(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6132
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageFragment$52;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1700(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_0

    .line 6093
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
