.class Lcom/android/mms/ui/ConversationListFragment$26;
.super Landroid/os/Handler;
.source "ConversationListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationListFragment;
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
    .line 3626
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment$26;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    .line 3629
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 3645
    :cond_0
    :goto_0
    return-void

    .line 3634
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$26;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$5308(Lcom/android/mms/ui/ConversationListFragment;)I

    .line 3635
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$26;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->moveMsgCount:I
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$5300(Lcom/android/mms/ui/ConversationListFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$26;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mSelectedThreadIds:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$5100(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 3636
    const-string v0, "Mms/ConversationListFragment"

    const-string v1, "Move mode will be changed to normal and Move dialog will be destroyed"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3637
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$26;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->moveProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$5500(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 3638
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$26;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->moveProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$5500(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 3639
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$26;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$200(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListAdapter;->clearCheckedList()V

    .line 3640
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$26;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v0, v2, v2, v2}, Lcom/android/mms/ui/ConversationListFragment;->setMoveModeLayout(ZZZ)V

    .line 3641
    iget-object v0, p0, Lcom/android/mms/ui/ConversationListFragment$26;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationListFragment;->access$000(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/util/SecurityMailboxUtils;->sendMoveCompleteBroadCast(Landroid/content/Context;)V

    goto :goto_0

    .line 3629
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
