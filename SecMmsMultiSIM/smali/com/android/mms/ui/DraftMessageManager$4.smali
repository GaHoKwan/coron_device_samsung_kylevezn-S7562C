.class Lcom/android/mms/ui/DraftMessageManager$4;
.super Ljava/lang/Object;
.source "DraftMessageManager.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/DraftMessageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/DraftMessageManager;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/DraftMessageManager;)V
    .locals 0
    .parameter

    .prologue
    .line 631
    iput-object p1, p0, Lcom/android/mms/ui/DraftMessageManager$4;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 11
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v10, 0x0

    .line 633
    move-object v2, p3

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;

    .line 634
    .local v2, info:Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;
    if-nez v2, :cond_1

    .line 671
    :cond_0
    :goto_0
    return-void

    .line 637
    :cond_1
    iget-object v7, p0, Lcom/android/mms/ui/DraftMessageManager$4;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    iget v8, v2, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;->position:I

    #setter for: Lcom/android/mms/ui/DraftMessageManager;->mSelectedPosition:I
    invoke-static {v7, v8}, Lcom/android/mms/ui/DraftMessageManager;->access$402(Lcom/android/mms/ui/DraftMessageManager;I)I

    .line 638
    const-string v7, "Mms/DraftMessageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onCreateContextMenu mSelectedPosition: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/mms/ui/DraftMessageManager$4;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    #getter for: Lcom/android/mms/ui/DraftMessageManager;->mSelectedPosition:I
    invoke-static {v9}, Lcom/android/mms/ui/DraftMessageManager;->access$400(Lcom/android/mms/ui/DraftMessageManager;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    iget-object v7, p0, Lcom/android/mms/ui/DraftMessageManager$4;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    #getter for: Lcom/android/mms/ui/DraftMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v7}, Lcom/android/mms/ui/DraftMessageManager;->access$000(Lcom/android/mms/ui/DraftMessageManager;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v7

    iget v8, v2, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v7, v8}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v3

    .line 641
    .local v3, itemObject:Ljava/lang/Object;
    instance-of v7, v3, Landroid/database/Cursor;

    if-eqz v7, :cond_0

    move-object v1, v3

    .line 643
    check-cast v1, Landroid/database/Cursor;

    .line 645
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v7

    if-ltz v7, :cond_0

    .line 649
    iget-object v7, p0, Lcom/android/mms/ui/DraftMessageManager$4;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    iget-object v8, p0, Lcom/android/mms/ui/DraftMessageManager$4;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    #getter for: Lcom/android/mms/ui/DraftMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/mms/ui/DraftMessageManager;->access$500(Lcom/android/mms/ui/DraftMessageManager;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8, v1}, Lcom/android/mms/ui/DraftMessageManager;->getMessageItem(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v5

    .line 650
    .local v5, msgItem:Lcom/android/mms/ui/MessageItem;
    if-eqz v5, :cond_0

    .line 652
    iget-object v7, p0, Lcom/android/mms/ui/DraftMessageManager$4;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    #getter for: Lcom/android/mms/ui/DraftMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/mms/ui/DraftMessageManager;->access$500(Lcom/android/mms/ui/DraftMessageManager;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v8

    invoke-static {v7, v8, v9, v10}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 653
    .local v0, conv:Lcom/android/mms/data/Conversation;
    if-eqz v0, :cond_0

    .line 655
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v6

    .line 658
    .local v6, recipients:Lcom/android/mms/data/ContactList;
    invoke-virtual {v6}, Lcom/android/mms/data/ContactList;->size()I

    move-result v7

    if-nez v7, :cond_3

    .line 659
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 660
    iget-object v7, p0, Lcom/android/mms/ui/DraftMessageManager$4;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    const v8, 0x7f0a0188

    invoke-virtual {v7, v8}, Lcom/android/mms/ui/DraftMessageManager;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 667
    :goto_1
    new-instance v4, Lcom/android/mms/ui/DraftMessageManager$MsgListMenuClickListener;

    iget-object v7, p0, Lcom/android/mms/ui/DraftMessageManager$4;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    invoke-direct {v4, v7, v5, p2}, Lcom/android/mms/ui/DraftMessageManager$MsgListMenuClickListener;-><init>(Lcom/android/mms/ui/DraftMessageManager;Lcom/android/mms/ui/MessageItem;Landroid/view/View;)V

    .line 669
    .local v4, l:Lcom/android/mms/ui/DraftMessageManager$MsgListMenuClickListener;
    const/16 v7, 0xc9

    const v8, 0x7f0a00ba

    invoke-interface {p1, v10, v7, v10, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 662
    .end local v4           #l:Lcom/android/mms/ui/DraftMessageManager$MsgListMenuClickListener;
    :cond_2
    iget-object v7, p0, Lcom/android/mms/ui/DraftMessageManager$4;->this$0:Lcom/android/mms/ui/DraftMessageManager;

    const v8, 0x7f0a000f

    invoke-virtual {v7, v8}, Lcom/android/mms/ui/DraftMessageManager;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto :goto_1

    .line 664
    :cond_3
    const-string v7, ","

    invoke-virtual {v6, v7}, Lcom/android/mms/data/ContactList;->formatNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto :goto_1
.end method
