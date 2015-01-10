.class Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener$1;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;

.field final synthetic val$location:I

.field final synthetic val$progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;ILandroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 8320
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;

    iput p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener$1;->val$location:I

    iput-object p3, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener$1;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 8322
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->mDataUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->access$7700(Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;)Landroid/net/Uri;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener$1;->val$location:I

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->mAppend:Z
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->access$7800(Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;)Z

    move-result v5

    move v4, v3

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->addImage(Landroid/net/Uri;IZZZ)V
    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$7900(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/net/Uri;IZZZ)V

    .line 8323
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8324
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v3}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    .line 8325
    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-eqz v0, :cond_0

    .line 8326
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v3}, Lcom/android/mms/data/WorkingMessage;->removeFakeMmsForDraft(Z)V

    .line 8329
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener$1;->val$progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 8330
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$AllowAttachmentListener$1;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 8331
    :cond_1
    return-void
.end method
