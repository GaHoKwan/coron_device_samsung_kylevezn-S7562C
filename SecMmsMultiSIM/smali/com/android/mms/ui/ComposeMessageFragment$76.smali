.class Lcom/android/mms/ui/ComposeMessageFragment$76;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;

.field final synthetic val$append:Z

.field final synthetic val$dialog:Landroid/app/ProgressDialog;

.field final synthetic val$fileUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/net/Uri;ZLandroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 7742
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$76;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$76;->val$fileUri:Landroid/net/Uri;

    iput-boolean p3, p0, Lcom/android/mms/ui/ComposeMessageFragment$76;->val$append:Z

    iput-object p4, p0, Lcom/android/mms/ui/ComposeMessageFragment$76;->val$dialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 7744
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$76;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$76;->val$fileUri:Landroid/net/Uri;

    iget-boolean v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$76;->val$append:Z

    const/4 v4, 0x0

    move v5, v1

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->addMedia(ILandroid/net/Uri;ZZZ)V
    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$4700(Lcom/android/mms/ui/ComposeMessageFragment;ILandroid/net/Uri;ZZZ)V

    .line 7745
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$76;->val$dialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 7746
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$76;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 7747
    :cond_0
    return-void
.end method