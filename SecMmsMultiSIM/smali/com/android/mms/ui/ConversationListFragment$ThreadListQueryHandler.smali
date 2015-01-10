.class final Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ConversationListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ThreadListQueryHandler"
.end annotation


# static fields
.field private static final UNREAD_COUNT:I = 0xa


# instance fields
.field private final DEBUG_LOG:Z

.field private mDeleteEventHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/mms/ui/ConversationListFragment;

.field private threadPositionLatestNewNoti:I


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ConversationListFragment;Landroid/content/ContentResolver;)V
    .locals 1
    .parameter
    .parameter "contentResolver"

    .prologue
    .line 2555
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    .line 2556
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 2566
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->DEBUG_LOG:Z

    .line 2567
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->threadPositionLatestNewNoti:I

    .line 2557
    return-void
.end method

.method private startedFromLaundher()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 2601
    const/4 v0, 0x0

    .line 2602
    .local v0, ret:Z
    const-string v3, "Mms/ConversationListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startedFromLaundher(),taskMovedToBack="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$000(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/ConversationComposer;

    iget-boolean v1, v1, Lcom/android/mms/ui/ConversationComposer;->taskMovedToBack:Z

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", activityCreated="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$000(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/ConversationComposer;

    iget-boolean v1, v1, Lcom/android/mms/ui/ConversationComposer;->activityCreated:Z

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2605
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$000(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/ConversationComposer;

    iget-boolean v1, v1, Lcom/android/mms/ui/ConversationComposer;->taskMovedToBack:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$000(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/ConversationComposer;

    iget-boolean v1, v1, Lcom/android/mms/ui/ConversationComposer;->activityCreated:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 2608
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$000(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/ConversationComposer;

    iput-boolean v2, v1, Lcom/android/mms/ui/ConversationComposer;->taskMovedToBack:Z

    .line 2609
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$000(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/ConversationComposer;

    iput-boolean v2, v1, Lcom/android/mms/ui/ConversationComposer;->activityCreated:Z

    .line 2611
    const-string v1, "Mms/ConversationListFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startedFromLaundher(), ret ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2612
    return v0

    :cond_1
    move v0, v2

    .line 2605
    goto :goto_0
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 9
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    const/16 v8, 0xc9

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2810
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v3}, Lcom/android/mms/ui/ConversationListFragment;->access$200(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/ConversationListAdapter;->clearCheckedList()V

    .line 2811
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v3}, Lcom/android/mms/ui/ConversationListFragment;->access$200(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/ConversationListAdapter;->clearHasLockedMsg()V

    .line 2812
    invoke-static {v7}, Lcom/android/mms/ui/ConversationListFragment;->access$702(Z)Z

    .line 2815
    packed-switch p1, :pswitch_data_0

    .line 2893
    :cond_0
    :goto_0
    return-void

    .line 2817
    :pswitch_0
    const-string v3, "Mms/ConversationListFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDeleteComplete(),DELETE_ALL_CONVERSATION_TOKEN,mIsDeleteMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMode:Z
    invoke-static {v5}, Lcom/android/mms/ui/ConversationListFragment;->access$1500(Lcom/android/mms/ui/ConversationListFragment;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2822
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/mms/ui/ConversationListFragment;->access$000(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v7}, Lcom/android/mms/data/Contact;->init(Landroid/content/Context;Z)V

    .line 2824
    invoke-static {}, Lcom/android/mms/data/Conversation;->init()V

    .line 2825
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/mms/ui/ConversationListFragment;->access$000(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateAllNotifications(Landroid/content/Context;)V

    .line 2826
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/util/DraftCache;->refresh()V

    .line 2827
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/mms/ui/ConversationListFragment;->access$000(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v3, v7}, Lcom/android/mms/ui/ConversationComposer;->finishCmasViewer(Z)Z

    .line 2829
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMode:Z
    invoke-static {v3}, Lcom/android/mms/ui/ConversationListFragment;->access$1500(Lcom/android/mms/ui/ConversationListFragment;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2830
    if-nez p3, :cond_2

    .line 2831
    const-string v3, "Mms/ConversationListFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDeleteComplete() result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2832
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v3, v6, v7, v6}, Lcom/android/mms/ui/ConversationListFragment;->setDeleteModeLayout(ZZZ)V

    .line 2834
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;
    invoke-static {v3}, Lcom/android/mms/ui/ConversationListFragment;->access$2700(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/animation/MsgDeleteActionAnimation;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2835
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;
    invoke-static {v3}, Lcom/android/mms/ui/ConversationListFragment;->access$2700(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/animation/MsgDeleteActionAnimation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->unDohideSelectedChildItems()V

    .line 2841
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->mDeleteEventHandler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    .line 2842
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->mDeleteEventHandler:Landroid/os/Handler;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 2837
    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v3, v6, v6, v6}, Lcom/android/mms/ui/ConversationListFragment;->setDeleteModeLayout(ZZZ)V

    goto :goto_1

    .line 2847
    :pswitch_1
    const-string v3, "Mms/ConversationListFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDeleteComplete(),DELETE_CONVERSATION_TOKEN,mIsDeleteMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMode:Z
    invoke-static {v5}, Lcom/android/mms/ui/ConversationListFragment;->access$1500(Lcom/android/mms/ui/ConversationListFragment;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2851
    if-eqz p2, :cond_6

    move-object v0, p2

    .line 2852
    check-cast v0, Lcom/android/mms/ui/DeleteInfo;

    .line 2854
    .local v0, deleteInfo:Lcom/android/mms/ui/DeleteInfo;
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->mDeleteEventHandler:Landroid/os/Handler;

    if-eqz v3, :cond_3

    iget-boolean v3, v0, Lcom/android/mms/ui/DeleteInfo;->mLast:Z

    if-eqz v3, :cond_3

    .line 2855
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->mDeleteEventHandler:Landroid/os/Handler;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2858
    :cond_3
    iget-wide v1, v0, Lcom/android/mms/ui/DeleteInfo;->mThreadId:J

    .line 2861
    .local v1, threadId:J
    if-lez p3, :cond_4

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_4

    .line 2862
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v6}, Lcom/android/mms/util/DraftCache;->setDraftState(JZ)V

    .line 2868
    :cond_4
    iget-boolean v3, v0, Lcom/android/mms/ui/DeleteInfo;->mLast:Z

    if-eqz v3, :cond_6

    .line 2871
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMode:Z
    invoke-static {v3}, Lcom/android/mms/ui/ConversationListFragment;->access$1500(Lcom/android/mms/ui/ConversationListFragment;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2872
    if-nez p3, :cond_7

    .line 2873
    const-string v3, "Mms/ConversationListFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDeleteComplete() result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2874
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v3, v6, v7, v6}, Lcom/android/mms/ui/ConversationListFragment;->setDeleteModeLayout(ZZZ)V

    .line 2876
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;
    invoke-static {v3}, Lcom/android/mms/ui/ConversationListFragment;->access$2700(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/animation/MsgDeleteActionAnimation;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 2877
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;
    invoke-static {v3}, Lcom/android/mms/ui/ConversationListFragment;->access$2700(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/animation/MsgDeleteActionAnimation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->unDohideSelectedChildItems()V

    .line 2881
    :cond_5
    :goto_2
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/mms/ui/ConversationListFragment;->access$000(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v7}, Lcom/android/mms/data/Contact;->init(Landroid/content/Context;Z)V

    .line 2883
    invoke-static {}, Lcom/android/mms/data/Conversation;->init()V

    .line 2885
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/mms/ui/ConversationListFragment;->access$000(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateAllNotifications(Landroid/content/Context;)V

    .line 2889
    .end local v0           #deleteInfo:Lcom/android/mms/ui/DeleteInfo;
    .end local v1           #threadId:J
    :cond_6
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/mms/ui/ConversationListFragment;->access$000(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v3, v7}, Lcom/android/mms/ui/ConversationComposer;->finishCmasViewer(Z)Z

    goto/16 :goto_0

    .line 2879
    .restart local v0       #deleteInfo:Lcom/android/mms/ui/DeleteInfo;
    .restart local v1       #threadId:J
    :cond_7
    iget-object v3, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v3, v6, v6, v6}, Lcom/android/mms/ui/ConversationListFragment;->setDeleteModeLayout(ZZZ)V

    goto :goto_2

    .line 2815
    :pswitch_data_0
    .packed-switch 0x709
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 18
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 2629
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2804
    .end local p2
    :cond_0
    :goto_0
    return-void

    .line 2633
    .restart local p2
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 2802
    const-string v1, "Mms/ConversationListFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onQueryComplete called with unknown token "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2635
    :sswitch_0
    const-string v1, "Mms/ConversationListFragment"

    const-string v2, "onQueryComplete(),THREAD_LIST_FAKE_VIEW_QUERY_TOKEN"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2637
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$2100(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setVerticalScrollBarEnabled(Z)V

    .line 2639
    const/4 v14, 0x0

    .line 2640
    .local v14, fakeCursorCount:I
    if-eqz p3, :cond_2

    .line 2641
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v14

    .line 2644
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$200(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/ConversationListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 2647
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    const/4 v2, 0x0

    #calls: Lcom/android/mms/ui/ConversationListFragment;->updateEmptyScreen(IZ)V
    invoke-static {v1, v14, v2}, Lcom/android/mms/ui/ConversationListFragment;->access$3900(Lcom/android/mms/ui/ConversationListFragment;IZ)V

    .line 2650
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    const-wide/16 v5, 0xc8

    #calls: Lcom/android/mms/ui/ConversationListFragment;->startAsyncQueryDelayed(J)V
    invoke-static {v1, v5, v6}, Lcom/android/mms/ui/ConversationListFragment;->access$400(Lcom/android/mms/ui/ConversationListFragment;J)V

    goto :goto_0

    .line 2655
    .end local v14           #fakeCursorCount:I
    :sswitch_1
    const-string v1, "Mms/ConversationListFragment"

    const-string v2, "onQueryComplete(),THREAD_LIST_QUERY_TOKEN"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2657
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$2700(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/animation/MsgDeleteActionAnimation;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2658
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mMsgDeleteActionAnimation:Lcom/android/mms/animation/MsgDeleteActionAnimation;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$2700(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/animation/MsgDeleteActionAnimation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/animation/MsgDeleteActionAnimation;->unDohideSelectedChildItems()V

    .line 2662
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$2100(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setVerticalScrollBarEnabled(Z)V

    .line 2664
    const/4 v15, 0x0

    .line 2665
    .local v15, fullCursorCount:I
    if-eqz p3, :cond_4

    .line 2666
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v15

    .line 2669
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$200(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/ConversationListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 2670
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListFragment;->isSearchMode()Z

    move-result v1

    if-nez v1, :cond_5

    .line 2671
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$000(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 2675
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$000(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_6

    .line 2676
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #calls: Lcom/android/mms/ui/ConversationListFragment;->setTotalQuantityTextView(I)V
    invoke-static {v1, v15}, Lcom/android/mms/ui/ConversationListFragment;->access$4000(Lcom/android/mms/ui/ConversationListFragment;I)V

    .line 2680
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    const/4 v2, 0x1

    #calls: Lcom/android/mms/ui/ConversationListFragment;->updateEmptyScreen(IZ)V
    invoke-static {v1, v15, v2}, Lcom/android/mms/ui/ConversationListFragment;->access$3900(Lcom/android/mms/ui/ConversationListFragment;IZ)V

    .line 2684
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMode:Z
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$1500(Lcom/android/mms/ui/ConversationListFragment;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {}, Lcom/android/mms/ui/ConversationListFragment;->access$700()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2685
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$200(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->reCalulateCheckedThreads()V

    .line 2687
    invoke-static {}, Lcom/android/mms/ui/ConversationListFragment;->access$700()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2689
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$702(Z)Z

    .line 2695
    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAllContextMenuInMsgViewer()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2696
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->startedFromLaundher()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2697
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    const/4 v2, -0x1

    #setter for: Lcom/android/mms/ui/ConversationListFragment;->mVisibleOffset:I
    invoke-static {v1, v2}, Lcom/android/mms/ui/ConversationListFragment;->access$4102(Lcom/android/mms/ui/ConversationListFragment;I)I

    .line 2703
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #calls: Lcom/android/mms/ui/ConversationListFragment;->isFirstItemChanged()Z
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$4200(Lcom/android/mms/ui/ConversationListFragment;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2704
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$2100(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MsgSweepActionListView;->setSelection(I)V

    .line 2705
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #calls: Lcom/android/mms/ui/ConversationListFragment;->saveListOffset()V
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$4300(Lcom/android/mms/ui/ConversationListFragment;)V

    .line 2711
    :cond_a
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$000(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationComposer;->getSplitMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_b

    if-eqz v15, :cond_c

    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$000(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationComposer;->getSplitMode()I

    move-result v1

    if-nez v1, :cond_d

    if-eqz v15, :cond_d

    .line 2715
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$000(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/ConversationComposer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ConversationComposer;->refreshSplitManager(Z)V

    .line 2720
    :cond_d
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/mms/data/Contact;->init(Landroid/content/Context;Z)V

    .line 2721
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$000(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/data/Conversation;->startCaching(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 2706
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mVisibleOffset:I
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$4100(Lcom/android/mms/ui/ConversationListFragment;)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_a

    .line 2707
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #calls: Lcom/android/mms/ui/ConversationListFragment;->restoreListOffset()V
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$4400(Lcom/android/mms/ui/ConversationListFragment;)V

    goto :goto_1

    .line 2725
    .end local v15           #fullCursorCount:I
    :sswitch_2
    const-string v1, "Mms/ConversationListFragment"

    const-string v2, "onQueryComplete(),HAVE_LOCKED_MESSAGES_TOKEN"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 2727
    check-cast p2, Ljava/lang/Long;

    .end local p2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 2728
    .local v3, threadId:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$4500(Lcom/android/mms/ui/ConversationListFragment;)Landroid/content/DialogInterface;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2730
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #calls: Lcom/android/mms/ui/ConversationListFragment;->notifyDeleteStart()V
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$4600(Lcom/android/mms/ui/ConversationListFragment;)V

    .line 2732
    const/4 v12, 0x0

    .line 2733
    .local v12, cursorCount:I
    if-eqz p3, :cond_f

    .line 2735
    :try_start_0
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v12

    .line 2737
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 2741
    :cond_f
    const/4 v1, 0x1

    if-ne v12, v1, :cond_10

    .line 2742
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$200(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Lcom/android/mms/ui/ConversationListAdapter;->setHasLockedMsg(J)V

    .line 2744
    :cond_10
    new-instance v1, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;
    invoke-static {v5}, Lcom/android/mms/ui/ConversationListFragment;->access$2200(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v6}, Lcom/android/mms/ui/ConversationListFragment;->access$000(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;-><init>(Lcom/android/mms/ui/ConversationListFragment;JLandroid/content/AsyncQueryHandler;Landroid/content/Context;[Ljava/lang/Long;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #calls: Lcom/android/mms/ui/ConversationListFragment;->getDeleteEventHandler()Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$4700(Lcom/android/mms/ui/ConversationListFragment;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->setDeleteStartHandler(Landroid/os/Handler;)Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    move-result-object v6

    const-wide/16 v1, -0x1

    cmp-long v1, v3, v1

    if-nez v1, :cond_11

    const/4 v1, 0x1

    move v5, v1

    :goto_2
    if-lez v12, :cond_12

    const/4 v1, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$000(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mCountToDelete:I
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$2600(Lcom/android/mms/ui/ConversationListFragment;)I

    move-result v2

    const/4 v8, 0x1

    if-ne v2, v8, :cond_13

    const v2, 0x7f0a01a3

    :goto_4
    invoke-static {v6, v5, v1, v7, v2}, Lcom/android/mms/ui/ConversationListFragment;->confirmDeleteThreadDialog(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;ZZLandroid/content/Context;I)Landroid/app/AlertDialog;

    move-result-object v13

    .line 2750
    .local v13, dlg:Landroid/app/AlertDialog;
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v13, v1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 2751
    invoke-virtual {v13}, Landroid/app/AlertDialog;->show()V

    .line 2752
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #setter for: Lcom/android/mms/ui/ConversationListFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;
    invoke-static {v1, v13}, Lcom/android/mms/ui/ConversationListFragment;->access$4502(Lcom/android/mms/ui/ConversationListFragment;Landroid/content/DialogInterface;)Landroid/content/DialogInterface;

    .line 2754
    const-string v1, "Mms/ConversationListFragment"

    const-string v2, "onQueryComplete(),HAVE_LOCKED_MESSAGES_TOKEN"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2737
    .end local v13           #dlg:Landroid/app/AlertDialog;
    :catchall_0
    move-exception v1

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    throw v1

    .line 2744
    :cond_11
    const/4 v1, 0x0

    move v5, v1

    goto :goto_2

    :cond_12
    const/4 v1, 0x0

    goto :goto_3

    :cond_13
    const v2, 0x7f0a01d6

    goto :goto_4

    .line 2757
    .end local v3           #threadId:J
    .end local v12           #cursorCount:I
    .restart local p2
    :sswitch_3
    if-eqz p3, :cond_0

    .line 2760
    const-string v1, "Mms/ConversationListFragment"

    const-string v2, "onQueryComplete(),LOCKED_MESSAGES_IN_SELECTED_TOKEN"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 2761
    const/16 v16, 0x0

    .line 2763
    .local v16, hasLockedMessage:Z
    :try_start_1
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 2765
    :cond_14
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$200(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lcom/android/mms/ui/ConversationListAdapter;->isCheckedThreadId(J)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 2766
    const/16 v16, 0x1

    .line 2767
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$200(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lcom/android/mms/ui/ConversationListAdapter;->setHasLockedMsg(J)V

    .line 2769
    :cond_15
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    if-nez v1, :cond_14

    .line 2772
    :cond_16
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 2775
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$200(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->getCheckedList()[Ljava/lang/Long;

    move-result-object v11

    .line 2776
    .local v11, threadList:[Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$4500(Lcom/android/mms/ui/ConversationListFragment;)Landroid/content/DialogInterface;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2778
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #calls: Lcom/android/mms/ui/ConversationListFragment;->notifyDeleteStart()V
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$4600(Lcom/android/mms/ui/ConversationListFragment;)V

    .line 2780
    new-instance v5, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    const-wide/16 v7, -0x1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$2200(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$000(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v10

    invoke-direct/range {v5 .. v11}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;-><init>(Lcom/android/mms/ui/ConversationListFragment;JLandroid/content/AsyncQueryHandler;Landroid/content/Context;[Ljava/lang/Long;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #calls: Lcom/android/mms/ui/ConversationListFragment;->getDeleteEventHandler()Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$4700(Lcom/android/mms/ui/ConversationListFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->setDeleteStartHandler(Landroid/os/Handler;)Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    move-result-object v2

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$000(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mCountToDelete:I
    invoke-static {v1}, Lcom/android/mms/ui/ConversationListFragment;->access$2600(Lcom/android/mms/ui/ConversationListFragment;)I

    move-result v1

    const/4 v7, 0x1

    if-ne v1, v7, :cond_17

    const v1, 0x7f0a01a3

    :goto_5
    move/from16 v0, v16

    invoke-static {v2, v5, v0, v6, v1}, Lcom/android/mms/ui/ConversationListFragment;->confirmDeleteThreadDialog(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;ZZLandroid/content/Context;I)Landroid/app/AlertDialog;

    move-result-object v13

    .line 2786
    .restart local v13       #dlg:Landroid/app/AlertDialog;
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v13, v1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 2787
    invoke-virtual {v13}, Landroid/app/AlertDialog;->show()V

    .line 2789
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #setter for: Lcom/android/mms/ui/ConversationListFragment;->mDeleteConfirmDialog:Landroid/content/DialogInterface;
    invoke-static {v1, v13}, Lcom/android/mms/ui/ConversationListFragment;->access$4502(Lcom/android/mms/ui/ConversationListFragment;Landroid/content/DialogInterface;)Landroid/content/DialogInterface;

    .line 2791
    const-string v1, "Mms/ConversationListFragment"

    const-string v2, "onQueryComplete(),LOCKED_MESSAGES_IN_SELECTED_TOKEN"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2772
    .end local v11           #threadList:[Ljava/lang/Long;
    .end local v13           #dlg:Landroid/app/AlertDialog;
    :catchall_1
    move-exception v1

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    throw v1

    .line 2780
    .restart local v11       #threadList:[Ljava/lang/Long;
    :cond_17
    const v1, 0x7f0a01d6

    goto :goto_5

    .line 2794
    .end local v11           #threadList:[Ljava/lang/Long;
    .end local v16           #hasLockedMessage:Z
    :sswitch_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2795
    if-eqz p3, :cond_0

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    move-object/from16 v17, p2

    .line 2796
    check-cast v17, Landroid/view/Menu;

    .line 2797
    .local v17, menu:Landroid/view/Menu;
    const/16 v1, 0xce

    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/view/Menu;->removeItem(I)V

    goto/16 :goto_0

    .line 2633
    :sswitch_data_0
    .sparse-switch
        0x6a4 -> :sswitch_0
        0x6a5 -> :sswitch_1
        0x70b -> :sswitch_2
        0x70d -> :sswitch_3
        0x70e -> :sswitch_4
    .end sparse-switch
.end method

.method public setmDeleteEventHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 2561
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->mDeleteEventHandler:Landroid/os/Handler;

    .line 2562
    return-void
.end method
