.class final Lcom/android/mms/ui/SpamMessageManager$MsgListMenuClickListener;
.super Ljava/lang/Object;
.source "SpamMessageManager.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SpamMessageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MsgListMenuClickListener"
.end annotation


# instance fields
.field private mMsgItem:Lcom/android/mms/ui/MessageItem;

.field private mView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/mms/ui/SpamMessageManager;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/SpamMessageManager;Lcom/android/mms/ui/MessageItem;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter "msgItem"
    .parameter "view"

    .prologue
    .line 1563
    iput-object p1, p0, Lcom/android/mms/ui/SpamMessageManager$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1564
    iput-object p3, p0, Lcom/android/mms/ui/SpamMessageManager$MsgListMenuClickListener;->mView:Landroid/view/View;

    .line 1565
    iput-object p2, p0, Lcom/android/mms/ui/SpamMessageManager$MsgListMenuClickListener;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    .line 1566
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 13
    .parameter "item"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 1569
    const-string v1, "Mms/SpamMessageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMenuItemClick(),item="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1570
    iget-object v3, p0, Lcom/android/mms/ui/SpamMessageManager$MsgListMenuClickListener;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    .line 1572
    .local v3, msgItem:Lcom/android/mms/ui/MessageItem;
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #getter for: Lcom/android/mms/ui/SpamMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v1}, Lcom/android/mms/ui/SpamMessageManager;->access$400(Lcom/android/mms/ui/SpamMessageManager;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager$MsgListMenuClickListener;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    if-nez v3, :cond_1

    :cond_0
    move v1, v12

    .line 1610
    :goto_0
    return v1

    .line 1575
    :cond_1
    new-instance v0, Lcom/android/mms/ui/MessageOptions;

    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    iget-object v2, p0, Lcom/android/mms/ui/SpamMessageManager$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v4

    iget-object v6, v3, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/MessageOptions;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)V

    .line 1577
    .local v0, messageOptions:Lcom/android/mms/ui/MessageOptions;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    move v1, v12

    .line 1610
    goto :goto_0

    .line 1579
    :pswitch_1
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #getter for: Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/SpamMessageManager;->access$500(Lcom/android/mms/ui/SpamMessageManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, v3, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/mms/ui/MessageUtils;->unregisterSpamNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1580
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #getter for: Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/SpamMessageManager;->access$500(Lcom/android/mms/ui/SpamMessageManager;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a039d

    invoke-static {v1, v2, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_2
    move v1, v11

    .line 1581
    goto :goto_0

    .line 1584
    :pswitch_2
    const/4 v9, 0x0

    .line 1585
    .local v9, Ruri:Landroid/net/Uri;
    const-string v1, "mms"

    iget-object v2, v3, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1586
    sget-object v1, Landroid/provider/Telephony$SpamMms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    .line 1589
    :goto_1
    new-instance v8, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;

    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    invoke-direct {v8, v1, v9, v3}, Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;-><init>(Lcom/android/mms/ui/SpamMessageManager;Landroid/net/Uri;Lcom/android/mms/ui/MessageItem;)V

    .line 1590
    .local v8, Rl:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    const v2, 0x7f0a0368

    #calls: Lcom/android/mms/ui/SpamMessageManager;->confirmRestoreDialog(Landroid/content/DialogInterface$OnClickListener;I)V
    invoke-static {v1, v8, v2}, Lcom/android/mms/ui/SpamMessageManager;->access$2300(Lcom/android/mms/ui/SpamMessageManager;Landroid/content/DialogInterface$OnClickListener;I)V

    move v1, v11

    .line 1591
    goto :goto_0

    .line 1588
    .end local v8           #Rl:Lcom/android/mms/ui/SpamMessageManager$RestoreMessageListener;
    :cond_3
    sget-object v1, Landroid/provider/Telephony$SpamSms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    goto :goto_1

    .line 1594
    .end local v9           #Ruri:Landroid/net/Uri;
    :pswitch_3
    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1, v11}, Lcom/android/mms/ui/MessageOptions;->viewSpamMessageDetail(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;Z)V

    move v1, v11

    .line 1595
    goto :goto_0

    .line 1598
    :pswitch_4
    const/4 v7, 0x0

    .line 1599
    .local v7, Duri:Landroid/net/Uri;
    const-string v1, "mms"

    iget-object v2, v3, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1600
    sget-object v1, Landroid/provider/Telephony$SpamMms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 1604
    :goto_2
    new-instance v10, Lcom/android/mms/ui/SpamMessageManager$DeleteMessageListener;

    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    invoke-direct {v10, v1, v7, v11}, Lcom/android/mms/ui/SpamMessageManager$DeleteMessageListener;-><init>(Lcom/android/mms/ui/SpamMessageManager;Landroid/net/Uri;Z)V

    .line 1605
    .local v10, l:Lcom/android/mms/ui/SpamMessageManager$DeleteMessageListener;
    iget-object v1, p0, Lcom/android/mms/ui/SpamMessageManager$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #calls: Lcom/android/mms/ui/SpamMessageManager;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;Z)V
    invoke-static {v1, v10, v12}, Lcom/android/mms/ui/SpamMessageManager;->access$2400(Lcom/android/mms/ui/SpamMessageManager;Landroid/content/DialogInterface$OnClickListener;Z)V

    move v1, v11

    .line 1606
    goto/16 :goto_0

    .line 1602
    .end local v10           #l:Lcom/android/mms/ui/SpamMessageManager$DeleteMessageListener;
    :cond_4
    sget-object v1, Landroid/provider/Telephony$SpamSms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    goto :goto_2

    .line 1577
    :pswitch_data_0
    .packed-switch 0xca
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
