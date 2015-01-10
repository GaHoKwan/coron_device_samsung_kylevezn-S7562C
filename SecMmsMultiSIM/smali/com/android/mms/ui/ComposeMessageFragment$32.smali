.class Lcom/android/mms/ui/ComposeMessageFragment$32;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Lcom/android/mms/animation/MsgBaseListAnimation$OnDeleteAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->onActivityCreated(Landroid/os/Bundle;)V
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
    .line 3317
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$32;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeginDeleteAnimation()V
    .locals 0

    .prologue
    .line 3320
    return-void
.end method

.method public onCancelDeleteAnimation()V
    .locals 0

    .prologue
    .line 3325
    return-void
.end method

.method public onEndDeleteAnimation()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3329
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$32;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->isDeleteMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3330
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$32;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0, v2, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->setDeleteModeLayout(ZZ)V

    .line 3331
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$32;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->isMultiLockMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3332
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$32;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0, v2, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->setMultiLockModeLayout(ZZ)V

    .line 3334
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPList()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$32;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->isMoveMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3335
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$32;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0, v2, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->setMoveModeLayout(ZZ)V

    .line 3337
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$32;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->isCopyToSimMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3338
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$32;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0, v2, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->setCopyToSimModeLayout(ZZ)V

    .line 3340
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$32;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->isSaveMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3341
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$32;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0, v2, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->setSaveModeLayout(ZZ)V

    .line 3343
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCombineAndForwardMenu()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$32;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mSelectionMode:I

    if-ne v0, v1, :cond_5

    .line 3344
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$32;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->setSelectionModeLayout(IZ)V

    .line 3347
    :cond_5
    return-void
.end method

.method public onExitDeleteAnimation()V
    .locals 0

    .prologue
    .line 3351
    return-void
.end method
