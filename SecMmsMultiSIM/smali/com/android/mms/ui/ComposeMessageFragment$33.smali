.class Lcom/android/mms/ui/ComposeMessageFragment$33;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Lcom/android/mms/ui/MessageListView$OnDeleteMsgAnimationListener;


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
    .line 3357
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$33;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeginDeleteMsgAnimation()V
    .locals 0

    .prologue
    .line 3360
    return-void
.end method

.method public onCancelDeleteMsgAnimation()V
    .locals 0

    .prologue
    .line 3364
    return-void
.end method

.method public onEndDeleteMsgAnimation()V
    .locals 2

    .prologue
    .line 3368
    const-string v0, "Mms/ComposeMessageFragment"

    const-string v1, "End Delete Animation()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3369
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$33;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->isMultiLockMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3370
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$33;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMultiLockMessage:Lcom/android/mms/ui/ComposeMultiLockMessage;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$4400(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/ComposeMultiLockMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMultiLockMessage;->updateMessage()V

    .line 3373
    :goto_0
    return-void

    .line 3372
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$33;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mDeleteMessage:Lcom/android/mms/ui/ComposeDeleteMessage;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$4500(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/ComposeDeleteMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeDeleteMessage;->deleteMessage()V

    goto :goto_0
.end method

.method public onExitDeleteMsgAnimation()V
    .locals 0

    .prologue
    .line 3377
    return-void
.end method
