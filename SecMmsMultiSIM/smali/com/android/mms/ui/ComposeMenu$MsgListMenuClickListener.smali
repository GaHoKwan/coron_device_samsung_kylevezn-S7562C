.class final Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;
.super Ljava/lang/Object;
.source "ComposeMenu.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MsgListMenuClickListener"
.end annotation


# instance fields
.field private mMsgItem:Lcom/android/mms/ui/MessageItem;

.field private mView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMenu;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ComposeMenu;Lcom/android/mms/ui/MessageItem;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter "msgItem"
    .parameter "view"

    .prologue
    .line 315
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    iput-object p3, p0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->mView:Landroid/view/View;

    .line 317
    iput-object p2, p0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    .line 318
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 36
    .parameter "item"

    .prologue
    .line 320
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    .line 322
    .local v5, msgItem:Lcom/android/mms/ui/MessageItem;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$000(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getMsgListView()Lcom/android/mms/ui/MessageListView;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->mView:Landroid/view/View;

    if-eqz v3, :cond_0

    if-nez v5, :cond_1

    .line 323
    :cond_0
    const/4 v3, 0x0

    .line 644
    :goto_0
    return v3

    .line 325
    :cond_1
    const-string v3, "Mms/ComposerMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onMenuItemClick(),item="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    new-instance v2, Lcom/android/mms/ui/MessageOptions;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$100(Lcom/android/mms/ui/ComposeMenu;)Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMenu;->access$100(Lcom/android/mms/ui/ComposeMenu;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v6

    iget-object v8, v5, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-direct/range {v2 .. v8}, Lcom/android/mms/ui/MessageOptions;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)V

    .line 328
    .local v2, messageOptions:Lcom/android/mms/ui/MessageOptions;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #setter for: Lcom/android/mms/ui/ComposeMenu;->mTempmessageOptions:Lcom/android/mms/ui/MessageOptions;
    invoke-static {v3, v2}, Lcom/android/mms/ui/ComposeMenu;->access$202(Lcom/android/mms/ui/ComposeMenu;Lcom/android/mms/ui/MessageOptions;)Lcom/android/mms/ui/MessageOptions;

    .line 329
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #setter for: Lcom/android/mms/ui/ComposeMenu;->mTempMsgItem:Lcom/android/mms/ui/MessageItem;
    invoke-static {v3, v5}, Lcom/android/mms/ui/ComposeMenu;->access$302(Lcom/android/mms/ui/ComposeMenu;Lcom/android/mms/ui/MessageItem;)Lcom/android/mms/ui/MessageItem;

    .line 331
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v24

    .line 333
    .local v24, multiSimNum:I
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 644
    const/4 v3, 0x0

    goto :goto_0

    .line 335
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$000(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/mms/ui/ComposeMessageFragment;->editMessageItem(Lcom/android/mms/ui/MessageItem;)V

    .line 336
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$000(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->drawComposerPanel()V

    .line 337
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$000(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->setSelection()Z

    .line 338
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$000(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->updateEditorSize()V

    .line 339
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$000(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/mms/ui/ComposeMessageFragment;->updateMmsLayoutMode(Lcom/android/mms/ui/MessageItem;)V

    .line 340
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$000(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMenu;->access$100(Lcom/android/mms/ui/ComposeMenu;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->showSip(Landroid/view/View;)V

    .line 341
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 343
    :sswitch_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Setting_EnableUSM"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "mms"

    iget-object v4, v5, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$100(Lcom/android/mms/ui/ComposeMenu;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/MmsConfig;->isUltimateStandbyModeOn(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 344
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$100(Lcom/android/mms/ui/ComposeMenu;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->showUsmWarningDialog(Landroid/app/Activity;)V

    .line 345
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 350
    :cond_2
    const/4 v3, 0x1

    move/from16 v0, v24

    if-le v0, v3, :cond_7

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 351
    const-string v3, "persist.sys.dataprefer.simid"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v21

    .line 353
    .local v21, mDataSimSlot:I
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v3

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/mms/MmsApp;->mDataSwitchDialog:Z

    .line 355
    const/4 v12, 0x0

    .line 358
    .local v12, bl_DataSwitch:Z
    iget v3, v5, Lcom/android/mms/ui/MessageItem;->mSimSlot:I

    invoke-static {v3}, Lcom/android/mms/MmsConfig;->getIMSIbySimSlot(I)Ljava/lang/String;

    move-result-object v22

    .line 360
    .local v22, mSystemImsi:Ljava/lang/String;
    iget v3, v5, Lcom/android/mms/ui/MessageItem;->mSimSlot:I

    move/from16 v0, v21

    if-eq v3, v0, :cond_3

    .line 361
    iget-object v3, v5, Lcom/android/mms/ui/MessageItem;->mSimImsi:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 362
    iget-object v3, v5, Lcom/android/mms/ui/MessageItem;->mSimImsi:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 363
    const/4 v12, 0x1

    .line 364
    const-string v3, "Mms/ComposerMenu"

    const-string v4, "onMenuItemClick() : bl_DataSwitch is true"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    :cond_3
    :goto_1
    const/4 v3, 0x1

    if-ne v12, v3, :cond_6

    .line 372
    new-instance v3, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMenu;->access$100(Lcom/android/mms/ui/ComposeMenu;)Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x1080027

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a04bf

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a04be

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a006a

    new-instance v6, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener$1;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener$1;-><init>(Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;)V

    invoke-virtual {v3, v4, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a006b

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 401
    .end local v12           #bl_DataSwitch:Z
    .end local v21           #mDataSimSlot:I
    .end local v22           #mSystemImsi:Ljava/lang/String;
    :cond_4
    :goto_2
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 367
    .restart local v12       #bl_DataSwitch:Z
    .restart local v21       #mDataSimSlot:I
    .restart local v22       #mSystemImsi:Ljava/lang/String;
    :cond_5
    const-string v3, "Mms/ComposerMenu"

    const-string v4, "onMenuItemClick() : msgItem.mSimImsi is null"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 390
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$000(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/mms/ui/MessageOptions;->resendMessage(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 391
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$000(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->close()V

    goto :goto_2

    .line 395
    .end local v12           #bl_DataSwitch:Z
    .end local v21           #mDataSimSlot:I
    .end local v22           #mSystemImsi:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$000(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/mms/ui/MessageOptions;->resendMessage(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 396
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$000(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->close()V

    goto :goto_2

    .line 403
    :sswitch_2
    iget-object v3, v5, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MessageOptions;->copyToClipboard(Ljava/lang/String;)V

    .line 404
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 406
    :sswitch_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCopyToSim()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 409
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$100(Lcom/android/mms/ui/ComposeMenu;)Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/mms/ui/MessageUtils;->isSimActive(Landroid/content/Context;I)Z

    move-result v29

    .line 410
    .local v29, sim_1_active:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$100(Lcom/android/mms/ui/ComposeMenu;)Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/mms/ui/MessageUtils;->isSimActive(Landroid/content/Context;I)Z

    move-result v30

    .line 411
    .local v30, sim_2_active:Z
    const-string v3, "Mms/ComposerMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sim_1_active: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " sim_2_active: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const/4 v3, 0x1

    move/from16 v0, v24

    if-le v0, v3, :cond_9

    if-eqz v29, :cond_9

    if-eqz v30, :cond_9

    .line 416
    new-instance v15, Lcom/android/mms/ui/CopyToSimSelectorAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$100(Lcom/android/mms/ui/ComposeMenu;)Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v15, v3, v5}, Lcom/android/mms/ui/CopyToSimSelectorAdapter;-><init>(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;)V

    .line 418
    .local v15, copyToSimSelectorAdapter:Lcom/android/mms/ui/CopyToSimSelectorAdapter;
    new-instance v14, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$100(Lcom/android/mms/ui/ComposeMenu;)Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v14, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 419
    .local v14, builder:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0a0023

    invoke-virtual {v14, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 420
    new-instance v3, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v15}, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener$2;-><init>(Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;Lcom/android/mms/ui/CopyToSimSelectorAdapter;)V

    invoke-virtual {v14, v15, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 427
    invoke-virtual {v14}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 441
    .end local v14           #builder:Landroid/app/AlertDialog$Builder;
    .end local v15           #copyToSimSelectorAdapter:Lcom/android/mms/ui/CopyToSimSelectorAdapter;
    .end local v29           #sim_1_active:Z
    .end local v30           #sim_2_active:Z
    :cond_8
    :goto_3
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 430
    .restart local v29       #sim_1_active:Z
    .restart local v30       #sim_2_active:Z
    :cond_9
    const/4 v3, 0x1

    move/from16 v0, v24

    if-le v0, v3, :cond_a

    if-nez v29, :cond_a

    if-eqz v30, :cond_a

    .line 431
    const-string v3, "Mms/ComposerMenu"

    const-string v4, "MENU_COPY_MESSAGE_TO_SIM > SIM2"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$000(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/mms/ui/MessageOptions;->copyMessageToSIM(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;I)V

    goto :goto_3

    .line 434
    :cond_a
    const-string v3, "Mms/ComposerMenu"

    const-string v4, "MENU_COPY_MESSAGE_TO_SIM > SIM1"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$000(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/mms/ui/MessageOptions;->copyMessageToSIM(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;I)V

    goto :goto_3

    .line 443
    .end local v29           #sim_1_active:Z
    .end local v30           #sim_2_active:Z
    :sswitch_4
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Setting_EnableUSM"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "mms"

    iget-object v4, v5, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$100(Lcom/android/mms/ui/ComposeMenu;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/MmsConfig;->isUltimateStandbyModeOn(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 444
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$100(Lcom/android/mms/ui/ComposeMenu;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->showUsmWarningDialog(Landroid/app/Activity;)V

    .line 445
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 447
    :cond_b
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v5}, Lcom/android/mms/ui/MessageOptions;->forwardMessage(ZLcom/android/mms/ui/MessageItem;)V

    .line 448
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 450
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$000(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/mms/ui/MessageOptions;->viewMessageDetail(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;Z)V

    .line 451
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 453
    :sswitch_6
    iget-object v0, v5, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    move-object/from16 v33, v0

    .line 454
    .local v33, uri:Landroid/net/Uri;
    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->isGroupSms()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 455
    sget-object v3, Lcom/android/mms/ui/MessageUtils;->SMS_GROUP_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v6

    invoke-static {v3, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v33

    .line 457
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$000(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getDeleteMessage()Lcom/android/mms/ui/ComposeDeleteMessage;

    move-result-object v3

    move-object/from16 v0, v33

    invoke-virtual {v3, v5, v0}, Lcom/android/mms/ui/ComposeDeleteMessage;->showDeleteConfirmDlg(Lcom/android/mms/ui/MessageItem;Landroid/net/Uri;)V

    .line 458
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 461
    .end local v33           #uri:Landroid/net/Uri;
    :sswitch_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 462
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$000(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getSaveRestoreOperation()Lcom/samsung/mms/util/SaveRestoreOperation;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [J

    const/4 v6, 0x0

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v7

    aput-wide v7, v4, v6

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Lcom/samsung/mms/util/SaveRestoreOperation;->startSaveOperation([JZ)V

    .line 463
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 466
    :cond_d
    :sswitch_8
    const/4 v3, 0x1

    invoke-virtual {v2, v5, v3}, Lcom/android/mms/ui/MessageOptions;->lockMessage(Lcom/android/mms/ui/MessageItem;Z)V

    .line 467
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 469
    :sswitch_9
    const/4 v3, 0x0

    invoke-virtual {v2, v5, v3}, Lcom/android/mms/ui/MessageOptions;->lockMessage(Lcom/android/mms/ui/MessageItem;Z)V

    .line 470
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 473
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$100(Lcom/android/mms/ui/ComposeMenu;)Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mNumberList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMenu;->access$400(Lcom/android/mms/ui/ComposeMenu;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v2, v3, v5, v4}, Lcom/android/mms/ui/MessageOptions;->ReplyAllMessage(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;Ljava/util/ArrayList;)V

    .line 474
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 479
    :sswitch_b
    invoke-virtual {v2, v5}, Lcom/android/mms/ui/MessageOptions;->copyMessageToSDCARD(Lcom/android/mms/ui/MessageItem;)V

    .line 480
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 484
    :sswitch_c
    const/4 v13, 0x0

    .line 485
    .local v13, blockContact:Lcom/android/mms/data/Contact;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$000(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_e

    .line 486
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$000(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13           #blockContact:Lcom/android/mms/data/Contact;
    check-cast v13, Lcom/android/mms/data/Contact;

    .line 487
    .restart local v13       #blockContact:Lcom/android/mms/data/Contact;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 488
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$100(Lcom/android/mms/ui/ComposeMenu;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v13}, Lcom/android/mms/ui/MessageUtils;->createblockNumberSettingDialog(Landroid/content/Context;Lcom/android/mms/data/Contact;)V

    .line 492
    :cond_e
    :goto_4
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 490
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$100(Lcom/android/mms/ui/ComposeMenu;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v13}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/ui/MessageUtils;->registerAsSpamNumber(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_4

    .line 495
    .end local v13           #blockContact:Lcom/android/mms/data/Contact;
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$000(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/mms/data/Contact;

    .line 496
    .local v32, unblockContact:Lcom/android/mms/data/Contact;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$100(Lcom/android/mms/ui/ComposeMenu;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual/range {v32 .. v32}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/ui/MessageUtils;->unregisterSpamNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 497
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$100(Lcom/android/mms/ui/ComposeMenu;)Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0a039d

    const/4 v6, 0x0

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 498
    :cond_10
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 500
    .end local v32           #unblockContact:Lcom/android/mms/data/Contact;
    :sswitch_e
    iget-object v3, v5, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    const/4 v4, 0x1

    iget-wide v6, v5, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/android/mms/ui/MessageOptions;->showAttachmentList(Lcom/android/mms/model/SlideshowModel;ZJ)V

    .line 501
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 503
    :sswitch_f
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 504
    .local v9, addContactIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$000(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/android/mms/ui/ComposeMessageFragment;->setContactIntent(Landroid/content/Intent;)V

    .line 505
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$000(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v3

    const/16 v4, 0x1d

    invoke-virtual {v3, v9, v4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 506
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 509
    .end local v9           #addContactIntent:Landroid/content/Intent;
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$000(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->viewMoreInfoLayout()V

    .line 510
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 515
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$100(Lcom/android/mms/ui/ComposeMenu;)Landroid/app/Activity;

    move-result-object v3

    const-wide/16 v6, 0x0

    invoke-static {v3, v6, v7}, Lcom/android/mms/ui/ComposeMessageFragment;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v26

    .line 516
    .local v26, replyIntent:Landroid/content/Intent;
    const-string v3, "android.intent.action.SENDTO"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 517
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sms:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v5, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 518
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$000(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 519
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 524
    .end local v26           #replyIntent:Landroid/content/Intent;
    :sswitch_12
    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v3

    if-eqz v3, :cond_14

    iget-object v3, v5, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMenu;->access$100(Lcom/android/mms/ui/ComposeMenu;)Landroid/app/Activity;

    move-result-object v4

    const v6, 0x7f0a0011

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 525
    const/16 v23, 0x0

    .line 527
    .local v23, msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$100(Lcom/android/mms/ui/ComposeMenu;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v3

    iget-object v4, v5, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    move-object/from16 v23, v0
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    :goto_5
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v31

    .line 532
    .local v31, to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    .line 534
    .local v28, sb:Ljava/lang/StringBuilder;
    const/16 v16, 0x0

    .line 535
    .local v16, count:I
    if-eqz v31, :cond_13

    .line 536
    move-object/from16 v11, v31

    .local v11, arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    array-length v0, v11

    move/from16 v20, v0

    .local v20, len$:I
    const/16 v18, 0x0

    .local v18, i$:I
    :goto_6
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_12

    aget-object v25, v11, v18

    .line 537
    .local v25, recipient:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-lez v16, :cond_11

    .line 538
    const-string v3, ", "

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    :cond_11
    invoke-virtual/range {v25 .. v25}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/data/Contact;->getContactName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    add-int/lit8 v16, v16, 0x1

    .line 536
    add-int/lit8 v18, v18, 0x1

    goto :goto_6

    .line 528
    .end local v11           #arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v16           #count:I
    .end local v18           #i$:I
    .end local v20           #len$:I
    .end local v25           #recipient:Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v28           #sb:Ljava/lang/StringBuilder;
    .end local v31           #to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_0
    move-exception v17

    .line 529
    .local v17, e:Lcom/google/android/mms/MmsException;
    const-string v3, "Mms/ComposerMenu"

    const-string v4, "Failed to load the message: "

    move-object/from16 v0, v17

    invoke-static {v3, v4, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 543
    .end local v17           #e:Lcom/google/android/mms/MmsException;
    .restart local v11       #arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v16       #count:I
    .restart local v18       #i$:I
    .restart local v20       #len$:I
    .restart local v28       #sb:Ljava/lang/StringBuilder;
    .restart local v31       #to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_12
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 567
    .end local v11           #arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v18           #i$:I
    .end local v20           #len$:I
    .end local v23           #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    .end local v31           #to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .local v10, address:Ljava/lang/String;
    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;
    invoke-static {v6}, Lcom/android/mms/ui/ComposeMenu;->access$100(Lcom/android/mms/ui/ComposeMenu;)Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x1010355

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v6, 0x7f0a0177

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;
    invoke-static {v6}, Lcom/android/mms/ui/ComposeMenu;->access$100(Lcom/android/mms/ui/ComposeMenu;)Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0a03db

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "%s"

    invoke-virtual {v6, v7, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v6, 0x7f0a006a

    new-instance v7, Lcom/android/mms/ui/ComposeMenu$SendNowListener;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    invoke-direct {v7, v8, v5}, Lcom/android/mms/ui/ComposeMenu$SendNowListener;-><init>(Lcom/android/mms/ui/ComposeMenu;Lcom/android/mms/ui/MessageItem;)V

    invoke-virtual {v4, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v6, 0x7f0a006b

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    sget-object v6, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, v3, Lcom/android/mms/ui/ComposeMenu;->mSendNowConfirmDialog:Landroid/content/DialogInterface;

    .line 575
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 546
    .end local v10           #address:Ljava/lang/String;
    .restart local v23       #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    .restart local v31       #to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$100(Lcom/android/mms/ui/ComposeMenu;)Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0a016f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .restart local v10       #address:Ljava/lang/String;
    goto :goto_7

    .line 551
    .end local v10           #address:Ljava/lang/String;
    .end local v16           #count:I
    .end local v23           #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    .end local v28           #sb:Ljava/lang/StringBuilder;
    .end local v31           #to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_14
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    .line 552
    .restart local v28       #sb:Ljava/lang/StringBuilder;
    const/16 v16, 0x0

    .line 554
    .restart local v16       #count:I
    iget-object v3, v5, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .local v11, arr$:[Ljava/lang/String;
    array-length v0, v11

    move/from16 v20, v0

    .restart local v20       #len$:I
    const/16 v18, 0x0

    .restart local v18       #i$:I
    :goto_8
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_17

    aget-object v25, v11, v18

    .line 555
    .local v25, recipient:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 554
    :goto_9
    add-int/lit8 v18, v18, 0x1

    goto :goto_8

    .line 558
    :cond_15
    if-lez v16, :cond_16

    .line 559
    const-string v3, ", "

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    :cond_16
    invoke-static/range {v25 .. v25}, Lcom/android/mms/data/Contact;->getContactName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    add-int/lit8 v16, v16, 0x1

    goto :goto_9

    .line 564
    .end local v25           #recipient:Ljava/lang/String;
    :cond_17
    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .restart local v10       #address:Ljava/lang/String;
    goto/16 :goto_7

    .line 578
    .end local v10           #address:Ljava/lang/String;
    .end local v11           #arr$:[Ljava/lang/String;
    .end local v16           #count:I
    .end local v18           #i$:I
    .end local v20           #len$:I
    .end local v28           #sb:Ljava/lang/StringBuilder;
    :sswitch_13
    iget-object v0, v5, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    move-object/from16 v33, v0

    .line 579
    .restart local v33       #uri:Landroid/net/Uri;
    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->isGroupSms()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 580
    sget-object v3, Lcom/android/mms/ui/MessageUtils;->SMS_GROUP_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v6

    invoke-static {v3, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v33

    .line 581
    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$000(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getDeleteMessage()Lcom/android/mms/ui/ComposeDeleteMessage;

    move-result-object v3

    move-object/from16 v0, v33

    invoke-virtual {v3, v5, v0}, Lcom/android/mms/ui/ComposeDeleteMessage;->showCancelConfirmDlg(Lcom/android/mms/ui/MessageItem;Landroid/net/Uri;)V

    .line 584
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 588
    .end local v33           #uri:Landroid/net/Uri;
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #calls: Lcom/android/mms/ui/ComposeMenu;->InsertOrPickContactAddress(Lcom/android/mms/ui/MessageItem;)V
    invoke-static {v3, v5}, Lcom/android/mms/ui/ComposeMenu;->access$500(Lcom/android/mms/ui/ComposeMenu;Lcom/android/mms/ui/MessageItem;)V

    .line 589
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 594
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$000(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v3

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    invoke-virtual {v3}, Lcom/android/mms/ui/SipHandler;->hideSip()V

    .line 595
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$000(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->dialRecipient()V

    .line 596
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 599
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$000(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v3

    iget-object v3, v3, Lcom/android/mms/ui/ComposeMessageFragment;->mSipHandler:Lcom/android/mms/ui/SipHandler;

    invoke-virtual {v3}, Lcom/android/mms/ui/SipHandler;->hideSip()V

    .line 600
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$000(Lcom/android/mms/ui/ComposeMenu;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->videoCallRecipient()V

    .line 601
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 605
    :sswitch_17
    const/16 v19, 0x0

    .line 606
    .local v19, intent_Transaction:Landroid/content/Intent;
    const-string v3, "mms"

    iget-object v4, v5, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$100(Lcom/android/mms/ui/ComposeMenu;)Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/MmsConfig;->isUltimateStandbyModeOn(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 608
    new-instance v3, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMenu;->access$100(Lcom/android/mms/ui/ComposeMenu;)Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a023d

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a0431

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a011d

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 613
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 615
    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget v3, v3, Lcom/android/mms/ui/MessageItem;->mSimSlot:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1a

    .line 616
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v3

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/mms/MmsApp;->mDataSwitchDialog:Z

    .line 617
    new-instance v19, Landroid/content/Intent;

    .end local v19           #intent_Transaction:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$100(Lcom/android/mms/ui/ComposeMenu;)Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/android/mms/transaction/TransactionService2;

    move-object/from16 v0, v19

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 623
    .restart local v19       #intent_Transaction:Landroid/content/Intent;
    :goto_a
    const-string v3, "uri"

    iget-object v4, v5, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 624
    const-string v3, "type"

    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 626
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$100(Lcom/android/mms/ui/ComposeMenu;)Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 627
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 619
    :cond_1a
    new-instance v19, Landroid/content/Intent;

    .end local v19           #intent_Transaction:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$100(Lcom/android/mms/ui/ComposeMenu;)Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v0, v19

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v19       #intent_Transaction:Landroid/content/Intent;
    goto :goto_a

    .line 632
    .end local v19           #intent_Transaction:Landroid/content/Intent;
    :sswitch_18
    invoke-virtual {v2, v5}, Lcom/android/mms/ui/MessageOptions;->startViewer(Lcom/android/mms/ui/MessageItem;)V

    .line 633
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 637
    :sswitch_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$100(Lcom/android/mms/ui/ComposeMenu;)Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v6, v4, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMenu;->access$100(Lcom/android/mms/ui/ComposeMenu;)Landroid/app/Activity;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v0, v8, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    move-wide/from16 v34, v0

    move-wide/from16 v0, v34

    invoke-static {v4, v0, v1}, Lcom/android/mms/ui/MessageUtils;->saveRingtone(Landroid/content/Context;J)Z

    move-result v4

    invoke-static {v3, v6, v7, v4}, Lcom/android/mms/ui/MessageUtils;->getDrmMimeSavedStringRsrc(Landroid/content/Context;JZ)I

    move-result v27

    .line 639
    .local v27, resId:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMenu$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMenu;

    #getter for: Lcom/android/mms/ui/ComposeMenu;->mActivity:Landroid/app/Activity;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMenu;->access$100(Lcom/android/mms/ui/ComposeMenu;)Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x0

    move/from16 v0, v27

    invoke-static {v3, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 640
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 333
    :sswitch_data_0
    .sparse-switch
        0x6a -> :sswitch_15
        0x6f -> :sswitch_16
        0x72 -> :sswitch_0
        0x75 -> :sswitch_5
        0x76 -> :sswitch_6
        0x79 -> :sswitch_4
        0x7c -> :sswitch_2
        0x7d -> :sswitch_1
        0x7f -> :sswitch_f
        0x80 -> :sswitch_8
        0x81 -> :sswitch_9
        0x83 -> :sswitch_3
        0x84 -> :sswitch_b
        0x87 -> :sswitch_e
        0x9c -> :sswitch_10
        0xa0 -> :sswitch_11
        0xa1 -> :sswitch_a
        0xa3 -> :sswitch_c
        0xa5 -> :sswitch_12
        0xa6 -> :sswitch_13
        0xa7 -> :sswitch_14
        0xb0 -> :sswitch_17
        0xb1 -> :sswitch_d
        0xb5 -> :sswitch_18
        0xb7 -> :sswitch_19
        0xbc -> :sswitch_15
        0xbd -> :sswitch_7
    .end sparse-switch
.end method
