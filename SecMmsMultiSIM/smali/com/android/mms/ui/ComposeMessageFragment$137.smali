.class Lcom/android/mms/ui/ComposeMessageFragment$137;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->pasteClipBoardData(Landroid/sec/clipboard/data/ClipboardData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;

.field final synthetic val$mFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;Ljava/io/File;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15123
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$137;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$137;->val$mFile:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 15126
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$137;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$137;->val$mFile:Ljava/io/File;

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->addMedia(ILandroid/net/Uri;ZZZ)V
    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/ComposeMessageFragment;->access$4700(Lcom/android/mms/ui/ComposeMessageFragment;ILandroid/net/Uri;ZZZ)V

    .line 15127
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$137;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->pasteProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$13800(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 15128
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$137;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->pasteProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$13800(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15130
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$137;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iput-boolean v6, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mIsMediaPasteRunning:Z

    .line 15132
    return-void

    .line 15130
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$137;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iput-boolean v6, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mIsMediaPasteRunning:Z

    throw v0
.end method
