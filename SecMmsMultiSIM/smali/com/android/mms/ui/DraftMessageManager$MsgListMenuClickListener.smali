.class final Lcom/android/mms/ui/DraftMessageManager$MsgListMenuClickListener;
.super Ljava/lang/Object;
.source "DraftMessageManager.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/DraftMessageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MsgListMenuClickListener"
.end annotation


# instance fields
.field private mMsgItem:Lcom/android/mms/ui/MessageItem;

.field private mView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/mms/ui/DraftMessageManager;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/DraftMessageManager;Lcom/android/mms/ui/MessageItem;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter "msgItem"
    .parameter "view"

    .prologue
    .line 1525
    iput-object p1, p0, Lcom/android/mms/ui/DraftMessageManager$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1526
    iput-object p3, p0, Lcom/android/mms/ui/DraftMessageManager$MsgListMenuClickListener;->mView:Landroid/view/View;

    .line 1527
    iput-object p2, p0, Lcom/android/mms/ui/DraftMessageManager$MsgListMenuClickListener;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    .line 1528
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1531
    const-string v5, "Mms/DraftMessageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onMenuItemClick(),item="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1532
    iget-object v1, p0, Lcom/android/mms/ui/DraftMessageManager$MsgListMenuClickListener;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    .line 1534
    .local v1, msgItem:Lcom/android/mms/ui/MessageItem;
    iget-object v5, p0, Lcom/android/mms/ui/DraftMessageManager$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    #getter for: Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v5}, Lcom/android/mms/ui/DraftMessageManager;->access$000(Lcom/android/mms/ui/DraftMessageManager;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/mms/ui/DraftMessageManager$MsgListMenuClickListener;->mView:Landroid/view/View;

    if-eqz v5, :cond_0

    if-nez v1, :cond_1

    :cond_0
    move v3, v4

    .line 1552
    :goto_0
    return v3

    .line 1540
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    move v3, v4

    .line 1552
    goto :goto_0

    .line 1542
    :pswitch_0
    iget-object v2, v1, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    .line 1543
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->isGroupSms()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1544
    sget-object v4, Lcom/android/mms/ui/MessageUtils;->SMS_GROUP_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 1546
    :cond_2
    new-instance v0, Lcom/android/mms/ui/DraftMessageManager$DeleteMessageListener;

    iget-object v4, p0, Lcom/android/mms/ui/DraftMessageManager$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    invoke-direct {v0, v4, v2, v3}, Lcom/android/mms/ui/DraftMessageManager$DeleteMessageListener;-><init>(Lcom/android/mms/ui/DraftMessageManager;Landroid/net/Uri;Z)V

    .line 1547
    .local v0, l:Lcom/android/mms/ui/DraftMessageManager$DeleteMessageListener;
    iget-object v4, p0, Lcom/android/mms/ui/DraftMessageManager$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    iget-boolean v5, v1, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    #calls: Lcom/android/mms/ui/DraftMessageManager;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;Z)V
    invoke-static {v4, v0, v5}, Lcom/android/mms/ui/DraftMessageManager;->access$2300(Lcom/android/mms/ui/DraftMessageManager;Landroid/content/DialogInterface$OnClickListener;Z)V

    goto :goto_0

    .line 1540
    :pswitch_data_0
    .packed-switch 0xc9
        :pswitch_0
    .end packed-switch
.end method
