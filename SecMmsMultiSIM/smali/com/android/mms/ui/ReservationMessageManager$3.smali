.class Lcom/android/mms/ui/ReservationMessageManager$3;
.super Ljava/lang/Object;
.source "ReservationMessageManager.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ReservationMessageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ReservationMessageManager;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ReservationMessageManager;)V
    .locals 0
    .parameter

    .prologue
    .line 648
    iput-object p1, p0, Lcom/android/mms/ui/ReservationMessageManager$3;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

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

    .line 650
    move-object v2, p3

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;

    .line 651
    .local v2, info:Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;
    iget-object v7, p0, Lcom/android/mms/ui/ReservationMessageManager$3;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    iget v8, v2, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;->position:I

    #setter for: Lcom/android/mms/ui/ReservationMessageManager;->mSelectedPosition:I
    invoke-static {v7, v8}, Lcom/android/mms/ui/ReservationMessageManager;->access$302(Lcom/android/mms/ui/ReservationMessageManager;I)I

    .line 652
    const-string v7, "Mms/ReservationMessageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onCreateContextMenu mSelectedPosition: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/mms/ui/ReservationMessageManager$3;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mSelectedPosition:I
    invoke-static {v9}, Lcom/android/mms/ui/ReservationMessageManager;->access$300(Lcom/android/mms/ui/ReservationMessageManager;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    iget-object v7, p0, Lcom/android/mms/ui/ReservationMessageManager$3;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v7}, Lcom/android/mms/ui/ReservationMessageManager;->access$400(Lcom/android/mms/ui/ReservationMessageManager;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v7

    iget v8, v2, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v7, v8}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v3

    .line 655
    .local v3, itemObject:Ljava/lang/Object;
    instance-of v7, v3, Landroid/database/Cursor;

    if-nez v7, :cond_1

    .line 706
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v1, v3

    .line 657
    check-cast v1, Landroid/database/Cursor;

    .line 659
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v7

    if-ltz v7, :cond_0

    .line 663
    iget-object v7, p0, Lcom/android/mms/ui/ReservationMessageManager$3;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    iget-object v8, p0, Lcom/android/mms/ui/ReservationMessageManager$3;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/mms/ui/ReservationMessageManager;->access$500(Lcom/android/mms/ui/ReservationMessageManager;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8, v1}, Lcom/android/mms/ui/ReservationMessageManager;->getMessageItem(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v5

    .line 664
    .local v5, msgItem:Lcom/android/mms/ui/MessageItem;
    if-eqz v5, :cond_0

    .line 666
    iget-object v7, p0, Lcom/android/mms/ui/ReservationMessageManager$3;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #getter for: Lcom/android/mms/ui/ReservationMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/mms/ui/ReservationMessageManager;->access$500(Lcom/android/mms/ui/ReservationMessageManager;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v8

    invoke-static {v7, v8, v9, v10}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 667
    .local v0, conv:Lcom/android/mms/data/Conversation;
    if-eqz v0, :cond_0

    .line 669
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v6

    .line 672
    .local v6, recipients:Lcom/android/mms/data/ContactList;
    invoke-virtual {v6}, Lcom/android/mms/data/ContactList;->size()I

    move-result v7

    if-nez v7, :cond_6

    .line 673
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 674
    iget-object v7, p0, Lcom/android/mms/ui/ReservationMessageManager$3;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    const v8, 0x7f0a0188

    invoke-virtual {v7, v8}, Lcom/android/mms/ui/ReservationMessageManager;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 681
    :goto_1
    new-instance v4, Lcom/android/mms/ui/ReservationMessageManager$MsgListMenuClickListener;

    iget-object v7, p0, Lcom/android/mms/ui/ReservationMessageManager$3;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    invoke-direct {v4, v7, v5, p2}, Lcom/android/mms/ui/ReservationMessageManager$MsgListMenuClickListener;-><init>(Lcom/android/mms/ui/ReservationMessageManager;Lcom/android/mms/ui/MessageItem;Landroid/view/View;)V

    .line 683
    .local v4, l:Lcom/android/mms/ui/ReservationMessageManager$MsgListMenuClickListener;
    const/16 v7, 0xc9

    const v8, 0x7f0a03d9

    invoke-interface {p1, v10, v7, v10, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 685
    const/16 v7, 0xca

    const v8, 0x7f0a03da

    invoke-interface {p1, v10, v7, v10, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 687
    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->isWpm()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/mms/ui/ReservationMessageManager$3;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    #calls: Lcom/android/mms/ui/ReservationMessageManager;->getCurSlideBody(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    invoke-static {v7, v5}, Lcom/android/mms/ui/ReservationMessageManager;->access$600(Lcom/android/mms/ui/ReservationMessageManager;Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 690
    :cond_2
    const/16 v7, 0xcb

    const v8, 0x7f0a0022

    invoke-interface {p1, v10, v7, v10, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 693
    :cond_3
    iget-boolean v7, v5, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    if-eqz v7, :cond_7

    .line 694
    const/16 v7, 0xcc

    const v8, 0x7f0a00bd

    invoke-interface {p1, v10, v7, v10, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 699
    :goto_2
    const/16 v7, 0xce

    const v8, 0x7f0a00b7

    invoke-interface {p1, v10, v7, v10, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 701
    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 702
    const/16 v7, 0xcf

    const v8, 0x7f0a001c

    invoke-interface {p1, v10, v7, v10, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 704
    :cond_4
    const/16 v7, 0xd0

    const v8, 0x7f0a0014

    invoke-interface {p1, v10, v7, v10, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 676
    .end local v4           #l:Lcom/android/mms/ui/ReservationMessageManager$MsgListMenuClickListener;
    :cond_5
    iget-object v7, p0, Lcom/android/mms/ui/ReservationMessageManager$3;->this$0:Lcom/android/mms/ui/ReservationMessageManager;

    const v8, 0x7f0a000f

    invoke-virtual {v7, v8}, Lcom/android/mms/ui/ReservationMessageManager;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto/16 :goto_1

    .line 678
    :cond_6
    const-string v7, ","

    invoke-virtual {v6, v7}, Lcom/android/mms/data/ContactList;->formatNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto/16 :goto_1

    .line 696
    .restart local v4       #l:Lcom/android/mms/ui/ReservationMessageManager$MsgListMenuClickListener;
    :cond_7
    const/16 v7, 0xcd

    const v8, 0x7f0a00bc

    invoke-interface {p1, v10, v7, v10, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_2
.end method
