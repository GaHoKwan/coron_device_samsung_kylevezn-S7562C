.class Lcom/android/mms/ui/ComposeMessageFragment$57;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->startLocationMapActivity(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;

.field final synthetic val$toReplaceMedia:Z


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 7006
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$57;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iput-boolean p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$57;->val$toReplaceMedia:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 7009
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$57;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedSlideIndex()I

    move-result v2

    .line 7010
    .local v2, location:I
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$57;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$57;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$5700(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    move v5, v3

    move v6, v3

    move v7, v3

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/data/WorkingMessage;->setAttachment(Landroid/content/ContentResolver;IILandroid/net/Uri;ZZZ)I

    .line 7011
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$57;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7012
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$57;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->removeAllRawAttachment()Z

    .line 7014
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$57;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$57;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsSize()I

    move-result v0

    if-nez v0, :cond_1

    .line 7015
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$57;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v9}, Lcom/android/mms/data/WorkingMessage;->correctAttachmentState(Z)V

    .line 7017
    :cond_1
    new-instance v8, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$57;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$200(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/samsung/mms/location/LocationMapActivity;

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 7018
    .local v8, mapIntent:Landroid/content/Intent;
    const-string v0, "extra_startup_flag"

    invoke-virtual {v8, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7019
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$57;->val$toReplaceMedia:Z

    if-eqz v0, :cond_2

    .line 7020
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$57;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/16 v1, 0x28

    invoke-virtual {v0, v8, v1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 7025
    :goto_0
    return-void

    .line 7023
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$57;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/16 v1, 0x27

    invoke-virtual {v0, v8, v1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
