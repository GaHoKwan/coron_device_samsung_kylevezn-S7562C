.class Lcom/android/mms/ui/ComposeMessageFragment$29;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->initSenderEditor()V
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
    .line 2943
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$29;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 2945
    if-nez p2, :cond_1

    .line 2946
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$29;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->isDiscarded()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 2947
    .local v0, showErrorDialog:Z
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$29;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->checkSenderNumber(Z)Z
    invoke-static {v1, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$4000(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    .line 2952
    .end local v0           #showErrorDialog:Z
    :goto_1
    return-void

    .line 2946
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2949
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$29;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

    invoke-virtual {v1}, Landroid/sec/clipboard/ClipboardExManager;->setThawPaste()V

    goto :goto_1
.end method
