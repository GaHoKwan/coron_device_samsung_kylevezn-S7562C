.class Lcom/android/mms/ui/ComposeMessageFragment$85;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->handleSendIntent(Landroid/content/Intent;Landroid/os/Bundle;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;

.field final synthetic val$dismissProgress:Ljava/lang/Runnable;

.field final synthetic val$numberToImport:I

.field final synthetic val$sSnoteString:Ljava/lang/String;

.field final synthetic val$showProgress:Ljava/lang/Runnable;

.field final synthetic val$uris:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/String;ILjava/util/ArrayList;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 8761
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$85;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$85;->val$sSnoteString:Ljava/lang/String;

    iput p3, p0, Lcom/android/mms/ui/ComposeMessageFragment$85;->val$numberToImport:I

    iput-object p4, p0, Lcom/android/mms/ui/ComposeMessageFragment$85;->val$uris:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/android/mms/ui/ComposeMessageFragment$85;->val$showProgress:Ljava/lang/Runnable;

    iput-object p6, p0, Lcom/android/mms/ui/ComposeMessageFragment$85;->val$dismissProgress:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 8763
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$85;->val$sSnoteString:Ljava/lang/String;

    if-eqz v11, :cond_0

    .line 8764
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$85;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v12, p0, Lcom/android/mms/ui/ComposeMessageFragment$85;->val$sSnoteString:Ljava/lang/String;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->AddText(Ljava/lang/String;)Z
    invoke-static {v11, v12}, Lcom/android/mms/ui/ComposeMessageFragment;->access$8500(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/String;)Z

    .line 8767
    :cond_0
    const/4 v0, 0x0

    .line 8768
    .local v0, alreadyShownUnsupported:Z
    const/4 v1, 0x0

    .line 8769
    .local v1, bMediaAdded:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$85;->val$numberToImport:I

    if-ge v2, v11, :cond_5

    .line 8770
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$85;->val$uris:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Parcelable;

    .line 8772
    .local v9, uri:Landroid/os/Parcelable;
    const-string v7, "content://com.android.contacts/contacts/as_vcard/"

    .line 8773
    .local v7, prefixstr:Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 8774
    .local v10, uriString:Ljava/lang/String;
    invoke-virtual {v10, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 8776
    .local v3, isContact:Z
    if-eqz v3, :cond_2

    .line 8777
    const-string v5, "text/x-vCard"

    .line 8781
    .local v5, mimeType:Ljava/lang/String;
    :goto_1
    if-eqz v5, :cond_4

    .line 8782
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$85;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->isAttachSupportedType(Ljava/lang/String;)Z
    invoke-static {v11, v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$8600(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 8783
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$85;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    check-cast v9, Landroid/net/Uri;

    .end local v9           #uri:Landroid/os/Parcelable;
    const/4 v12, 0x1

    const/4 v13, 0x1

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->addMedia(Ljava/lang/String;Landroid/net/Uri;ZZ)V
    invoke-static {v11, v5, v9, v12, v13}, Lcom/android/mms/ui/ComposeMessageFragment;->access$8200(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/lang/String;Landroid/net/Uri;ZZ)V

    .line 8784
    const/4 v1, 0x1

    .line 8769
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8779
    .end local v5           #mimeType:Ljava/lang/String;
    .restart local v9       #uri:Landroid/os/Parcelable;
    :cond_2
    iget-object v12, p0, Lcom/android/mms/ui/ComposeMessageFragment$85;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    move-object v11, v9

    check-cast v11, Landroid/net/Uri;

    invoke-virtual {v12, v11}, Lcom/android/mms/ui/ComposeMessageFragment;->getMimeTypeFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #mimeType:Ljava/lang/String;
    goto :goto_1

    .line 8786
    :cond_3
    if-nez v0, :cond_1

    .line 8787
    const/4 v0, 0x1

    .line 8788
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$85;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v11}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 8789
    .local v8, res:Landroid/content/res/Resources;
    const v11, 0x7f0a019a

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 8791
    .local v4, message:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$85;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->access$200(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/Activity;

    move-result-object v11

    new-instance v12, Lcom/android/mms/ui/ComposeMessageFragment$85$1;

    invoke-direct {v12, p0, v4}, Lcom/android/mms/ui/ComposeMessageFragment$85$1;-><init>(Lcom/android/mms/ui/ComposeMessageFragment$85;Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 8799
    .end local v4           #message:Ljava/lang/String;
    .end local v8           #res:Landroid/content/res/Resources;
    :cond_4
    if-nez v5, :cond_1

    .line 8800
    if-nez v0, :cond_1

    .line 8801
    const/4 v0, 0x1

    .line 8802
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$85;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v11}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 8803
    .restart local v8       #res:Landroid/content/res/Resources;
    const v11, 0x7f0a019a

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 8805
    .restart local v4       #message:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$85;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->access$200(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/Activity;

    move-result-object v11

    new-instance v12, Lcom/android/mms/ui/ComposeMessageFragment$85$2;

    invoke-direct {v12, p0, v4}, Lcom/android/mms/ui/ComposeMessageFragment$85$2;-><init>(Lcom/android/mms/ui/ComposeMessageFragment$85;Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 8819
    .end local v3           #isContact:Z
    .end local v4           #message:Ljava/lang/String;
    .end local v5           #mimeType:Ljava/lang/String;
    .end local v7           #prefixstr:Ljava/lang/String;
    .end local v8           #res:Landroid/content/res/Resources;
    .end local v9           #uri:Landroid/os/Parcelable;
    .end local v10           #uriString:Ljava/lang/String;
    :cond_5
    if-eqz v1, :cond_6

    .line 8820
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$85;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/mms/ui/ComposeMessageFragment;->onAttachmentChanged(Z)V

    .line 8822
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$85;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v11, :cond_6

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$85;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v11}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 8824
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$85;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    .line 8825
    sget-boolean v11, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v11, :cond_6

    .line 8826
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$85;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v11, v11, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    .line 8832
    :cond_6
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$85;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMmsConainerHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->access$8700(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/os/Handler;

    move-result-object v11

    iget-object v12, p0, Lcom/android/mms/ui/ComposeMessageFragment$85;->val$showProgress:Ljava/lang/Runnable;

    invoke-virtual {v11, v12}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8833
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$85;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachmentProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->access$8400(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/ProgressDialog;

    move-result-object v11

    if-eqz v11, :cond_7

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$85;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachmentProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->access$8400(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/ProgressDialog;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Dialog;->isShowing()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 8835
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$85;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMmsConainerHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->access$8700(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/os/Handler;

    move-result-object v11

    iget-object v12, p0, Lcom/android/mms/ui/ComposeMessageFragment$85;->val$dismissProgress:Ljava/lang/Runnable;

    const-wide/16 v13, 0x1f4

    invoke-virtual {v11, v12, v13, v14}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 8837
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$85;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1700(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v11

    if-eqz v11, :cond_7

    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$85;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientsEditor:Lcom/android/mms/ui/RecipientsEditor;
    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1700(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/RecipientsEditor;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-nez v11, :cond_7

    .line 8838
    iget-object v11, p0, Lcom/android/mms/ui/ComposeMessageFragment$85;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMsgAttachHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/mms/ui/ComposeMessageFragment;->access$8300(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/os/Handler;

    move-result-object v11

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v6

    .line 8839
    .local v6, msg:Landroid/os/Message;
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 8842
    .end local v6           #msg:Landroid/os/Message;
    :cond_7
    return-void
.end method
