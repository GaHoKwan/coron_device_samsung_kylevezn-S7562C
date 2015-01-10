.class final Lcom/android/mms/ui/LockedMessageManager$MsgListMenuClickListener;
.super Ljava/lang/Object;
.source "LockedMessageManager.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/LockedMessageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MsgListMenuClickListener"
.end annotation


# instance fields
.field private mMsgItem:Lcom/android/mms/ui/MessageItem;

.field private mView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/mms/ui/LockedMessageManager;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/LockedMessageManager;Lcom/android/mms/ui/MessageItem;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter "msgItem"
    .parameter "view"

    .prologue
    .line 1780
    iput-object p1, p0, Lcom/android/mms/ui/LockedMessageManager$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1781
    iput-object p3, p0, Lcom/android/mms/ui/LockedMessageManager$MsgListMenuClickListener;->mView:Landroid/view/View;

    .line 1782
    iput-object p2, p0, Lcom/android/mms/ui/LockedMessageManager$MsgListMenuClickListener;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    .line 1783
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 16
    .parameter "item"

    .prologue
    .line 1786
    const-string v2, "Mms/LockedMsgStoreActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMenuItemClick(),item="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1787
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/LockedMessageManager$MsgListMenuClickListener;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    .line 1789
    .local v4, msgItem:Lcom/android/mms/ui/MessageItem;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/LockedMessageManager$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v2}, Lcom/android/mms/ui/LockedMessageManager;->access$000(Lcom/android/mms/ui/LockedMessageManager;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/LockedMessageManager$MsgListMenuClickListener;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    if-nez v4, :cond_1

    .line 1790
    :cond_0
    const/4 v2, 0x0

    .line 1885
    :goto_0
    return v2

    .line 1792
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v12

    .line 1793
    .local v12, multiSimNum:I
    new-instance v1, Lcom/android/mms/ui/MessageOptions;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/LockedMessageManager$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/LockedMessageManager$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v5

    iget-object v7, v4, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-direct/range {v1 .. v7}, Lcom/android/mms/ui/MessageOptions;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)V

    .line 1794
    .local v1, messageOptions:Lcom/android/mms/ui/MessageOptions;
    const/4 v9, 0x0

    .line 1796
    .local v9, conv:Lcom/android/mms/data/Conversation;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/LockedMessageManager$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #setter for: Lcom/android/mms/ui/LockedMessageManager;->mTempmessageOptions:Lcom/android/mms/ui/MessageOptions;
    invoke-static {v2, v1}, Lcom/android/mms/ui/LockedMessageManager;->access$2402(Lcom/android/mms/ui/LockedMessageManager;Lcom/android/mms/ui/MessageOptions;)Lcom/android/mms/ui/MessageOptions;

    .line 1797
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/LockedMessageManager$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #setter for: Lcom/android/mms/ui/LockedMessageManager;->mTempMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v2, v4}, Lcom/android/mms/ui/LockedMessageManager;->access$2502(Lcom/android/mms/ui/LockedMessageManager;Lcom/android/mms/ui/MessageItem;)Lcom/android/mms/ui/MessageItem;

    .line 1798
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1885
    const/4 v2, 0x0

    goto :goto_0

    .line 1800
    :pswitch_0
    const/4 v2, 0x1

    goto :goto_0

    .line 1803
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/LockedMessageManager$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/ui/LockedMessageManager;->access$500(Lcom/android/mms/ui/LockedMessageManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v5

    const/4 v3, 0x0

    invoke-static {v2, v5, v6, v3}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v9

    .line 1804
    if-nez v9, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    .line 1805
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v1, v4, v9, v2}, Lcom/android/mms/ui/MessageOptions;->resendMessage(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;Z)Z

    .line 1806
    const/4 v2, 0x1

    goto :goto_0

    .line 1809
    :pswitch_2
    iget-object v2, v4, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MessageOptions;->copyToClipboard(Ljava/lang/String;)V

    .line 1810
    const/4 v2, 0x1

    goto :goto_0

    .line 1813
    :pswitch_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCopyToSim()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1816
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/LockedMessageManager$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/mms/ui/MessageUtils;->isSimActive(Landroid/content/Context;I)Z

    move-result v13

    .line 1817
    .local v13, sim_1_active:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/LockedMessageManager$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/mms/ui/MessageUtils;->isSimActive(Landroid/content/Context;I)Z

    move-result v14

    .line 1818
    .local v14, sim_2_active:Z
    const-string v2, "Mms/LockedMsgStoreActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sim_1_active: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " sim_2_active: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1820
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/LockedMessageManager$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/ui/LockedMessageManager;->access$500(Lcom/android/mms/ui/LockedMessageManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v5

    const/4 v3, 0x0

    invoke-static {v2, v5, v6, v3}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v9

    .line 1822
    const/4 v2, 0x1

    if-le v12, v2, :cond_4

    if-eqz v13, :cond_4

    if-eqz v14, :cond_4

    .line 1825
    new-instance v10, Lcom/android/mms/ui/CopyToSimSelectorAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/LockedMessageManager$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    invoke-direct {v10, v2, v4}, Lcom/android/mms/ui/CopyToSimSelectorAdapter;-><init>(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;)V

    .line 1827
    .local v10, copyToSimSelectorAdapter:Lcom/android/mms/ui/CopyToSimSelectorAdapter;
    new-instance v8, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/LockedMessageManager$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    invoke-direct {v8, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1828
    .local v8, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0a0023

    invoke-virtual {v8, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1829
    new-instance v2, Lcom/android/mms/ui/LockedMessageManager$MsgListMenuClickListener$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v10}, Lcom/android/mms/ui/LockedMessageManager$MsgListMenuClickListener$1;-><init>(Lcom/android/mms/ui/LockedMessageManager$MsgListMenuClickListener;Lcom/android/mms/ui/CopyToSimSelectorAdapter;)V

    invoke-virtual {v8, v10, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1836
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1850
    .end local v8           #builder:Landroid/app/AlertDialog$Builder;
    .end local v10           #copyToSimSelectorAdapter:Lcom/android/mms/ui/CopyToSimSelectorAdapter;
    .end local v13           #sim_1_active:Z
    .end local v14           #sim_2_active:Z
    :cond_3
    :goto_1
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1839
    .restart local v13       #sim_1_active:Z
    .restart local v14       #sim_2_active:Z
    :cond_4
    const/4 v2, 0x1

    if-le v12, v2, :cond_5

    if-nez v13, :cond_5

    if-eqz v14, :cond_5

    .line 1840
    const-string v2, "Mms/LockedMsgStoreActivity"

    const-string v3, "MENU_COPY_MESSAGE_TO_SIM > SIM2"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1841
    const/4 v2, 0x1

    invoke-virtual {v1, v4, v9, v2}, Lcom/android/mms/ui/MessageOptions;->copyMessageToSIM(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;I)V

    goto :goto_1

    .line 1843
    :cond_5
    const-string v2, "Mms/LockedMsgStoreActivity"

    const-string v3, "MENU_COPY_MESSAGE_TO_SIM > SIM1"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1844
    const/4 v2, 0x0

    invoke-virtual {v1, v4, v9, v2}, Lcom/android/mms/ui/MessageOptions;->copyMessageToSIM(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;I)V

    goto :goto_1

    .line 1855
    .end local v13           #sim_1_active:Z
    .end local v14           #sim_2_active:Z
    :pswitch_4
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/mms/ui/MessageOptions;->isLockedMessageList:Z

    .line 1856
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v4}, Lcom/android/mms/ui/MessageOptions;->forwardMessage(ZLcom/android/mms/ui/MessageItem;)V

    .line 1857
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/mms/ui/MessageOptions;->isLockedMessageList:Z

    .line 1858
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1861
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/LockedMessageManager$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    #getter for: Lcom/android/mms/ui/LockedMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/mms/ui/LockedMessageManager;->access$500(Lcom/android/mms/ui/LockedMessageManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v5

    const/4 v3, 0x0

    invoke-static {v2, v5, v6, v3}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v9

    .line 1862
    if-nez v9, :cond_6

    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1863
    :cond_6
    const/4 v2, 0x1

    invoke-virtual {v1, v4, v9, v2}, Lcom/android/mms/ui/MessageOptions;->viewMessageDetail(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;Z)V

    .line 1864
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1867
    :pswitch_6
    iget-object v15, v4, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    .line 1868
    .local v15, uri:Landroid/net/Uri;
    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->isGroupSms()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1869
    sget-object v2, Lcom/android/mms/ui/MessageUtils;->SMS_GROUP_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v5

    invoke-static {v2, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v15

    .line 1871
    :cond_7
    new-instance v11, Lcom/android/mms/ui/LockedMessageManager$DeleteMessageListener;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/LockedMessageManager$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    const/4 v3, 0x1

    invoke-direct {v11, v2, v15, v3}, Lcom/android/mms/ui/LockedMessageManager$DeleteMessageListener;-><init>(Lcom/android/mms/ui/LockedMessageManager;Landroid/net/Uri;Z)V

    .line 1872
    .local v11, l:Lcom/android/mms/ui/LockedMessageManager$DeleteMessageListener;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/LockedMessageManager$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/LockedMessageManager;

    iget-boolean v3, v4, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    #calls: Lcom/android/mms/ui/LockedMessageManager;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;Z)V
    invoke-static {v2, v11, v3}, Lcom/android/mms/ui/LockedMessageManager;->access$2600(Lcom/android/mms/ui/LockedMessageManager;Landroid/content/DialogInterface$OnClickListener;Z)V

    .line 1873
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1877
    .end local v11           #l:Lcom/android/mms/ui/LockedMessageManager$DeleteMessageListener;
    .end local v15           #uri:Landroid/net/Uri;
    :pswitch_7
    const/4 v2, 0x0

    invoke-virtual {v1, v4, v2}, Lcom/android/mms/ui/MessageOptions;->lockMessage(Lcom/android/mms/ui/MessageItem;Z)V

    .line 1878
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1881
    :pswitch_8
    iget-object v2, v4, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    const/4 v3, 0x1

    iget-wide v5, v4, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-virtual {v1, v2, v3, v5, v6}, Lcom/android/mms/ui/MessageOptions;->showAttachmentList(Lcom/android/mms/model/SlideshowModel;ZJ)V

    .line 1882
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1798
    :pswitch_data_0
    .packed-switch 0xca
        :pswitch_1
        :pswitch_6
        :pswitch_2
        :pswitch_0
        :pswitch_8
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method
