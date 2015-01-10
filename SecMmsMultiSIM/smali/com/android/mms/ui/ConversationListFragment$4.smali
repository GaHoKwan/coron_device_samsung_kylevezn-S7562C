.class Lcom/android/mms/ui/ConversationListFragment$4;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Lcom/android/mms/animation/MsgBaseListAnimation$OnDeleteAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationListFragment;->initListAnimation()V
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
    .line 537
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment$4;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeginDeleteAnimation()V
    .locals 0

    .prologue
    .line 542
    return-void
.end method

.method public onCancelDeleteAnimation()V
    .locals 0

    .prologue
    .line 561
    return-void
.end method

.method public onEndDeleteAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 546
    const-string v0, "Mms/MsgConversationListAnimation"

    const-string v1, "onEndDeleteConversationListAnimation START setDeleteModeLayout"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$4;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v0, v3, v2, v2}, Lcom/android/mms/ui/ConversationListFragment;->setDeleteModeLayout(ZZZ)V

    .line 549
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$4;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v0, v3, v2, v2}, Lcom/android/mms/ui/ConversationListFragment;->setMoveModeLayout(ZZZ)V

    .line 553
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 554
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$4;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v0, v3, v2, v2}, Lcom/android/mms/ui/ConversationListFragment;->setSaveModeLayout(ZZZ)V

    .line 556
    :cond_1
    return-void
.end method

.method public onExitDeleteAnimation()V
    .locals 0

    .prologue
    .line 566
    return-void
.end method
