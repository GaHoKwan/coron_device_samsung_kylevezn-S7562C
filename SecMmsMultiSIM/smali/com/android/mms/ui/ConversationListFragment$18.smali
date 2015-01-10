.class Lcom/android/mms/ui/ConversationListFragment$18;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;


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
    .line 1666
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment$18;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)V
    .locals 8
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/touchwiz/widget/TwAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, l:Lcom/sec/android/touchwiz/widget/TwAdapterView;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<*>;"
    const/4 v7, 0x0

    .line 1668
    const-string v4, "Mms/ConversationListFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onListItemClick(),position="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1671
    instance-of v4, p2, Lcom/android/mms/ui/ConversationListItem;

    if-nez v4, :cond_0

    .line 1712
    :goto_0
    return-void

    .line 1675
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSplitMode()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$18;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment;->access$000(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v4}, Lcom/android/mms/ui/ConversationComposer;->isSearchMode()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1676
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$18;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment;->access$000(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v4}, Lcom/android/mms/ui/ConversationComposer;->closeSearchView()V

    goto :goto_0

    :cond_1
    move-object v2, p2

    .line 1680
    check-cast v2, Lcom/android/mms/ui/ConversationListItem;

    .line 1682
    .local v2, headerView:Lcom/android/mms/ui/ConversationListItem;
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$18;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment;->access$000(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, p4, p5, v7}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v1

    .line 1685
    .local v1, conv:Lcom/android/mms/data/Conversation;
    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationListItem;->getAvatarView()Landroid/widget/QuickContactBadge;

    move-result-object v4

    sput-object v4, Lcom/android/mms/ui/ConversationListFragment;->badge:Landroid/widget/QuickContactBadge;

    .line 1686
    sget-object v4, Lcom/android/mms/ui/ConversationListFragment;->badge:Landroid/widget/QuickContactBadge;

    if-eqz v4, :cond_2

    .line 1688
    sget-object v4, Lcom/android/mms/ui/ConversationListFragment;->badge:Landroid/widget/QuickContactBadge;

    invoke-virtual {v4, v7}, Landroid/widget/QuickContactBadge;->setClickable(Z)V

    .line 1691
    :cond_2
    const/4 v3, 0x1

    .line 1692
    .local v3, isOpen:Z
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$18;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mIsDeleteMode:Z
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment;->access$1500(Lcom/android/mms/ui/ConversationListFragment;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPList()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$18;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mIsMoveMode:Z
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment;->access$1600(Lcom/android/mms/ui/ConversationListFragment;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$18;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-virtual {v4}, Lcom/android/mms/ui/ConversationListFragment;->isSaveMode()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1693
    :cond_4
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$18;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment;->access$200(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v4

    long-to-int v5, p4

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Lcom/android/mms/ui/ConversationListAdapter;->toggleCheckBox(J)Z

    move-result v3

    .line 1694
    invoke-virtual {v2, v3}, Lcom/android/mms/ui/ConversationListItem;->setCheckBox(Z)V

    .line 1696
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$18;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment;->access$200(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/ConversationListAdapter;->getCheckedCount()I

    move-result v0

    .line 1697
    .local v0, checkedCount:I
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$18;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment;->access$200(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/ConversationListAdapter;->getCount()I

    move-result v4

    if-ne v0, v4, :cond_5

    .line 1698
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$18;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mSelectAllCheckBox:Landroid/widget/CheckBox;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment;->access$100(Lcom/android/mms/ui/ConversationListFragment;)Landroid/widget/CheckBox;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1702
    :goto_1
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$18;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #calls: Lcom/android/mms/ui/ConversationListFragment;->updateCheckedMsgCount()V
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment;->access$300(Lcom/android/mms/ui/ConversationListFragment;)V

    goto/16 :goto_0

    .line 1700
    :cond_5
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$18;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mSelectAllCheckBox:Landroid/widget/CheckBox;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment;->access$100(Lcom/android/mms/ui/ConversationListFragment;)Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 1705
    .end local v0           #checkedCount:I
    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableGroupMessage()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1706
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$18;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    iget v5, v1, Lcom/android/mms/data/Conversation;->mReplyAllDraftFlag:I

    #calls: Lcom/android/mms/ui/ConversationListFragment;->openThread(JI)V
    invoke-static {v4, p4, p5, v5}, Lcom/android/mms/ui/ConversationListFragment;->access$1700(Lcom/android/mms/ui/ConversationListFragment;JI)V

    goto/16 :goto_0

    .line 1708
    :cond_7
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$18;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #calls: Lcom/android/mms/ui/ConversationListFragment;->openThread(J)V
    invoke-static {v4, p4, p5}, Lcom/android/mms/ui/ConversationListFragment;->access$1800(Lcom/android/mms/ui/ConversationListFragment;J)V

    goto/16 :goto_0
.end method
