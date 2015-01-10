.class Lcom/android/mms/ui/ConversationListFragment$24;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationListFragment;->updateDeleteModeActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationListFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 3378
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment$24;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3381
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$24;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mDeleteListActionBarCancelButton:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$5000(Lcom/android/mms/ui/ConversationListFragment;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3382
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$24;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mDeleteListActionBarCancelButton:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$5000(Lcom/android/mms/ui/ConversationListFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 3384
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$24;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mIsAnimationEnable:Z
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$2900(Lcom/android/mms/ui/ConversationListFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3385
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$24;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListFragment;->hidecheckbox()V

    .line 3394
    :cond_1
    :goto_0
    return-void

    .line 3387
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$24;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListFragment;->isDeleteMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3388
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$24;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v0, v1, v2, v1}, Lcom/android/mms/ui/ConversationListFragment;->setDeleteModeLayout(ZZZ)V

    goto :goto_0

    .line 3389
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPList()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$24;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListFragment;->isMoveMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3390
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$24;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #setter for: Lcom/android/mms/ui/ConversationListFragment;->mIsMoveMode:Z
    invoke-static {v0, v1}, Lcom/android/mms/ui/ConversationListFragment;->access$1602(Lcom/android/mms/ui/ConversationListFragment;Z)Z

    .line 3391
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$24;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v0, v1, v2, v1}, Lcom/android/mms/ui/ConversationListFragment;->setMoveModeLayout(ZZZ)V

    goto :goto_0
.end method
