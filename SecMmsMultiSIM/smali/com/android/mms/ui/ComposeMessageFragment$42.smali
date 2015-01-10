.class Lcom/android/mms/ui/ComposeMessageFragment$42;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->initialize(Landroid/os/Bundle;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;

.field final synthetic val$dialogUri:Landroid/app/ProgressDialog;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;Landroid/net/Uri;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4548
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$42;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$42;->val$uri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/mms/ui/ComposeMessageFragment$42;->val$dialogUri:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 4551
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$42;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$42;->val$uri:Landroid/net/Uri;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->addMedia(ILandroid/net/Uri;ZZZ)V
    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$4700(Lcom/android/mms/ui/ComposeMessageFragment;ILandroid/net/Uri;ZZZ)V

    .line 4552
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$42;->val$dialogUri:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4554
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$42;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iput-boolean v6, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsMediaPasteRunning:Z

    .line 4556
    return-void

    .line 4554
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$42;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iput-boolean v6, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mIsMediaPasteRunning:Z

    throw v0
.end method
