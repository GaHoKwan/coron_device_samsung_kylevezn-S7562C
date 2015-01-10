.class Lcom/android/mms/ui/ComposeMessageFragment$79;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->handleAddAttachmentError(IILandroid/net/Uri;IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;

.field final synthetic val$append:Z

.field final synthetic val$dataUri:Landroid/net/Uri;

.field final synthetic val$error:I

.field final synthetic val$mediaTypeStringId:I

.field final synthetic val$reqCode:I

.field final synthetic val$sendMultiple:Z


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;IILandroid/net/Uri;IZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 8205
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$79;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iput p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$79;->val$mediaTypeStringId:I

    iput p3, p0, Lcom/android/mms/ui/ComposeMessageFragment$79;->val$error:I

    iput-object p4, p0, Lcom/android/mms/ui/ComposeMessageFragment$79;->val$dataUri:Landroid/net/Uri;

    iput p5, p0, Lcom/android/mms/ui/ComposeMessageFragment$79;->val$reqCode:I

    iput-boolean p6, p0, Lcom/android/mms/ui/ComposeMessageFragment$79;->val$append:Z

    iput-boolean p7, p0, Lcom/android/mms/ui/ComposeMessageFragment$79;->val$sendMultiple:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 8207
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$79;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8208
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v3, "handleAddAttachmentError() Fragment is detached"

    invoke-static {v0, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 8292
    :cond_0
    :goto_0
    return-void

    .line 8211
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$79;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 8212
    .local v9, res:Landroid/content/res/Resources;
    iget v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$79;->val$mediaTypeStringId:I

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 8222
    .local v8, mediaType:Ljava/lang/String;
    iget v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$79;->val$error:I

    packed-switch v0, :pswitch_data_0

    .line 8269
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$79;->val$error:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8224
    :pswitch_0
    const v0, 0x7f0a019a

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 8225
    .local v2, message:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$79;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$200(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/Activity;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 8228
    .end local v2           #message:Ljava/lang/String;
    :pswitch_1
    const v0, 0x7f0a019b

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 8229
    .local v1, title:Ljava/lang/String;
    const v0, 0x7f0a019c

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 8273
    .restart local v2       #message:Ljava/lang/String;
    :goto_1
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$79;->val$sendMultiple:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$79;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->isAlreadyShown:Z
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$2100(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 8275
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$79;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$79;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$200(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/Activity;

    move-result-object v0

    new-instance v3, Lcom/android/mms/ui/ComposeMessageFragment$ShowErrorPopupListener;

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$79;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/android/mms/ui/ComposeMessageFragment$ShowErrorPopupListener;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/ui/ComposeMessageFragment$1;)V

    new-instance v4, Lcom/android/mms/ui/ComposeMessageFragment$ShowErrorPopupCancelListener;

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$79;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v12, 0x0

    invoke-direct {v4, v5, v12}, Lcom/android/mms/ui/ComposeMessageFragment$ShowErrorPopupCancelListener;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/ui/ComposeMessageFragment$1;)V

    new-instance v5, Lcom/android/mms/ui/ComposeMessageFragment$ShowErrorPopupDismissListener;

    iget-object v12, p0, Lcom/android/mms/ui/ComposeMessageFragment$79;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v13, 0x0

    invoke-direct {v5, v12, v13}, Lcom/android/mms/ui/ComposeMessageFragment$ShowErrorPopupDismissListener;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/ui/ComposeMessageFragment$1;)V

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog;

    move-result-object v0

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachErrorDialog:Landroid/app/AlertDialog;
    invoke-static {v11, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$7302(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 8280
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$79;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/SipHandler;->setOnScreen(Z)V

    .line 8281
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$79;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v3, 0x1

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->isAlreadyShown:Z
    invoke-static {v0, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$2102(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    goto/16 :goto_0

    .line 8233
    .end local v1           #title:Ljava/lang/String;
    .end local v2           #message:Ljava/lang/String;
    :pswitch_2
    const v0, 0x7f0a0045

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 8234
    .restart local v1       #title:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$79;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const v3, 0x7f0a01b5

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->getResourcesString(I)Ljava/lang/String;
    invoke-static {v0, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$7000(Lcom/android/mms/ui/ComposeMessageFragment;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8235
    const v0, 0x7f0a0194

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 8238
    .restart local v2       #message:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$79;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v7

    .line 8239
    .local v7, focusedIndex:I
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$79;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v7}, Lcom/android/mms/data/WorkingMessage;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .line 8240
    .local v10, text:Ljava/lang/CharSequence;
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$79;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v6

    .line 8241
    .local v6, cursorPosition:I
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$79;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8242
    const/4 v0, -0x1

    if-eq v6, v0, :cond_2

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge v6, v0, :cond_2

    .line 8243
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$79;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_1

    .line 8245
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$79;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_1

    .line 8249
    .end local v2           #message:Ljava/lang/String;
    .end local v6           #cursorPosition:I
    .end local v7           #focusedIndex:I
    .end local v10           #text:Ljava/lang/CharSequence;
    :cond_3
    const v0, 0x7f0a01a5

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 8251
    .restart local v2       #message:Ljava/lang/String;
    goto/16 :goto_1

    .line 8253
    .end local v1           #title:Ljava/lang/String;
    .end local v2           #message:Ljava/lang/String;
    :pswitch_3
    const v0, 0x7f0a0047

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 8254
    .restart local v1       #title:Ljava/lang/String;
    const v0, 0x7f0a0048

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 8255
    .restart local v2       #message:Ljava/lang/String;
    goto/16 :goto_1

    .line 8258
    .end local v1           #title:Ljava/lang/String;
    .end local v2           #message:Ljava/lang/String;
    :pswitch_4
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$79;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/SipHandler;->setOnScreen(Z)V

    .line 8259
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$79;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$79;->val$dataUri:Landroid/net/Uri;

    iget v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$79;->val$reqCode:I

    iget-boolean v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$79;->val$append:Z

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->handleCreationModeDialog(Ljava/lang/String;Landroid/net/Uri;IZ)V
    invoke-static {v0, v8, v3, v4, v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$7100(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/String;Landroid/net/Uri;IZ)V

    .line 8260
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$79;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v3, 0x5

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->clipboardErrorFlag:I
    invoke-static {v0, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$7202(Lcom/android/mms/ui/ComposeMessageFragment;I)I

    goto/16 :goto_0

    .line 8264
    :pswitch_5
    const v0, 0x7f0a01d4

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 8265
    .restart local v1       #title:Ljava/lang/String;
    const v0, 0x7f0a01d5

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 8266
    .restart local v2       #message:Ljava/lang/String;
    goto/16 :goto_1

    .line 8282
    :cond_4
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$79;->val$sendMultiple:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$79;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->isAlreadyShown:Z
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$2100(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8284
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$79;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$79;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$200(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/Activity;

    move-result-object v0

    new-instance v3, Lcom/android/mms/ui/ComposeMessageFragment$ShowErrorPopupListener;

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$79;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/android/mms/ui/ComposeMessageFragment$ShowErrorPopupListener;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/ui/ComposeMessageFragment$1;)V

    new-instance v4, Lcom/android/mms/ui/ComposeMessageFragment$ShowErrorPopupCancelListener;

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageFragment$79;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v12, 0x0

    invoke-direct {v4, v5, v12}, Lcom/android/mms/ui/ComposeMessageFragment$ShowErrorPopupCancelListener;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/ui/ComposeMessageFragment$1;)V

    new-instance v5, Lcom/android/mms/ui/ComposeMessageFragment$ShowErrorPopupDismissListener;

    iget-object v12, p0, Lcom/android/mms/ui/ComposeMessageFragment$79;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v13, 0x0

    invoke-direct {v5, v12, v13}, Lcom/android/mms/ui/ComposeMessageFragment$ShowErrorPopupDismissListener;-><init>(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/ui/ComposeMessageFragment$1;)V

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog;

    move-result-object v0

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachErrorDialog:Landroid/app/AlertDialog;
    invoke-static {v11, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$7302(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 8289
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$79;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/mms/ui/SipHandler;->setOnScreen(Z)V

    .line 8290
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$79;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v3, 0x1

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->isAlreadyShown:Z
    invoke-static {v0, v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$2102(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    goto/16 :goto_0

    .line 8222
    nop

    :pswitch_data_0
    .packed-switch -0x7
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
