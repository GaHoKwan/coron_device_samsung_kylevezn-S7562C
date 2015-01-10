.class Lcom/android/mms/ui/ComposeMessageFragment$47;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->onProtocolChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;

.field final synthetic val$mms:Z


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5822
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$47;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iput-boolean p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$47;->val$mms:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 5824
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$47;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$47;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->showSizeString(Ljava/lang/CharSequence;)V

    .line 5825
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$47;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$47;->val$mms:Z

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->toastConvertInfo(Z)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$4900(Lcom/android/mms/ui/ComposeMessageFragment;Z)V

    .line 5826
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIEI()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5827
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$47;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-boolean v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$47;->val$mms:Z

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->setEnableSenderEditor(Z)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$5000(Lcom/android/mms/ui/ComposeMessageFragment;Z)V

    .line 5828
    :cond_0
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$47;->val$mms:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$47;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5829
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$47;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->getMMSLayout()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5830
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$47;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/model/LayoutModel;->changeTo(I)V

    .line 5838
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$47;->val$mms:Z

    if-eqz v0, :cond_3

    .line 5839
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$47;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->vibrateChangingMms()V
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$5100(Lcom/android/mms/ui/ComposeMessageFragment;)V

    .line 5846
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$47;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->updateSendButtonState()V

    .line 5847
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$47;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mGreekInputHandler:Lcom/android/mms/ui/GreekInputHandler;

    invoke-virtual {v0}, Lcom/android/mms/ui/GreekInputHandler;->updateCurrentStatus()V

    .line 5848
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$47;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$200(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 5849
    return-void

    .line 5833
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$47;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/model/LayoutModel;->changeTo(I)V

    goto :goto_0

    .line 5842
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$47;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->getRichContainer()Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsRichContainer;->setHint()V

    goto :goto_1
.end method
