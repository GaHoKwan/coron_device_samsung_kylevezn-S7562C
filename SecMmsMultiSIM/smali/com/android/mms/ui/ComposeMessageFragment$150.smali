.class Lcom/android/mms/ui/ComposeMessageFragment$150;
.super Landroid/os/Handler;
.source "ComposeMessageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageFragment;
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
    .line 17589
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$150;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    .line 17592
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 17630
    :cond_0
    :goto_0
    return-void

    .line 17594
    :pswitch_0
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$150;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$14708(Lcom/android/mms/ui/ComposeMessageFragment;)I

    .line 17595
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$150;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->moveMsgCount:I
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$14700(Lcom/android/mms/ui/ComposeMessageFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$150;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mSelectedSMSMsgIds:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$14400(Lcom/android/mms/ui/ComposeMessageFragment;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$150;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mSelectedMMSMsgIds:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$14500(Lcom/android/mms/ui/ComposeMessageFragment;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    add-int/2addr v2, v3

    if-lt v1, v2, :cond_0

    .line 17596
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$150;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1000(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/Conversation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 17597
    .local v0, mRecipientCount:I
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$150;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->moveProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$14900(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 17598
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$150;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->moveProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$14900(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->hide()V

    .line 17599
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$150;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListAdapter;->clearCheckedList()V

    .line 17601
    const-string v1, "Mms/ComposeMessageFragment"

    const-string v2, "Move mode will be changed to normal and Move dialog will be destroyed"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17602
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$150;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->setMoveModeLayout(ZZ)V

    .line 17605
    if-ne v0, v4, :cond_2

    .line 17606
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$150;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mSelectedSMSMsgIds:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$14400(Lcom/android/mms/ui/ComposeMessageFragment;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$150;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mSelectedMMSMsgIds:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$14500(Lcom/android/mms/ui/ComposeMessageFragment;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$150;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMoveListMsgCount:I
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$14300(Lcom/android/mms/ui/ComposeMessageFragment;)I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 17608
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$150;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1000(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/Conversation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->clearThreadId()V

    .line 17610
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$150;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->requestClose()V

    .line 17622
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$150;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$200(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/util/SecurityMailboxUtils;->sendMoveCompleteBroadCast(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 17613
    :cond_2
    if-le v0, v4, :cond_1

    .line 17614
    const-string v1, "Mms/ComposeMessageFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSelectedSMSMsgIds.size()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$150;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mSelectedSMSMsgIds:Ljava/util/HashSet;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$14400(Lcom/android/mms/ui/ComposeMessageFragment;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mMsgListAdapter.getCount()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$150;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v3}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mRecipientCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17615
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$150;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mSelectedSMSMsgIds:Ljava/util/HashSet;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$14400(Lcom/android/mms/ui/ComposeMessageFragment;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    div-int/2addr v1, v0

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$150;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mSelectedMMSMsgIds:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$14500(Lcom/android/mms/ui/ComposeMessageFragment;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$150;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMoveListMsgCount:I
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$14300(Lcom/android/mms/ui/ComposeMessageFragment;)I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 17617
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$150;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1000(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/Conversation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->clearThreadId()V

    .line 17619
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$150;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->requestClose()V

    goto :goto_1

    .line 17592
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
