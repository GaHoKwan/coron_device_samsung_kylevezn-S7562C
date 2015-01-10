.class Lcom/android/mms/ui/ConversationListFragment$23;
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
    .line 3368
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment$23;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 3371
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$23;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListFragment;->isDeleteMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3372
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$23;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #calls: Lcom/android/mms/ui/ConversationListFragment;->deleteSelectedConversations()V
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$4800(Lcom/android/mms/ui/ConversationListFragment;)V

    .line 3376
    :cond_0
    :goto_0
    return-void

    .line 3373
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPList()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$23;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListFragment;->isMoveMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3374
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$23;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #calls: Lcom/android/mms/ui/ConversationListFragment;->moveSelectedConversations()V
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$4900(Lcom/android/mms/ui/ConversationListFragment;)V

    goto :goto_0
.end method
