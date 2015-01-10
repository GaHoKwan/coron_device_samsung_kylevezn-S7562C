.class Lcom/android/mms/ui/SpamMessageManager$3;
.super Ljava/lang/Object;
.source "SpamMessageManager.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SpamMessageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SpamMessageManager;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SpamMessageManager;)V
    .locals 0
    .parameter

    .prologue
    .line 619
    iput-object p1, p0, Lcom/android/mms/ui/SpamMessageManager$3;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 10
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v9, 0x0

    .line 621
    move-object v1, p3

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;

    .line 622
    .local v1, info:Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;
    iget-object v6, p0, Lcom/android/mms/ui/SpamMessageManager$3;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    iget v7, v1, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;->position:I

    #setter for: Lcom/android/mms/ui/SpamMessageManager;->mSelectedPosition:I
    invoke-static {v6, v7}, Lcom/android/mms/ui/SpamMessageManager;->access$302(Lcom/android/mms/ui/SpamMessageManager;I)I

    .line 623
    const-string v6, "Mms/SpamMessageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onCreateContextMenu mSelectedPosition: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/ui/SpamMessageManager$3;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #getter for: Lcom/android/mms/ui/SpamMessageManager;->mSelectedPosition:I
    invoke-static {v8}, Lcom/android/mms/ui/SpamMessageManager;->access$300(Lcom/android/mms/ui/SpamMessageManager;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    iget-object v6, p0, Lcom/android/mms/ui/SpamMessageManager$3;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #getter for: Lcom/android/mms/ui/SpamMessageManager;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v6}, Lcom/android/mms/ui/SpamMessageManager;->access$400(Lcom/android/mms/ui/SpamMessageManager;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v6

    iget v7, v1, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v6, v7}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    .line 626
    .local v2, itemObject:Ljava/lang/Object;
    instance-of v6, v2, Landroid/database/Cursor;

    if-nez v6, :cond_1

    .line 672
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, v2

    .line 628
    check-cast v0, Landroid/database/Cursor;

    .line 630
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    if-ltz v6, :cond_0

    .line 634
    iget-object v6, p0, Lcom/android/mms/ui/SpamMessageManager$3;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    iget-object v7, p0, Lcom/android/mms/ui/SpamMessageManager$3;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #getter for: Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/mms/ui/SpamMessageManager;->access$500(Lcom/android/mms/ui/SpamMessageManager;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Lcom/android/mms/ui/SpamMessageManager;->getMessageItem(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v5

    .line 635
    .local v5, msgItem:Lcom/android/mms/ui/MessageItem;
    if-eqz v5, :cond_0

    .line 637
    iget-object v6, v5, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/mms/data/Contact;->getContactName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 640
    .local v4, mName:Ljava/lang/String;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 641
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 642
    iget-object v6, p0, Lcom/android/mms/ui/SpamMessageManager$3;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    const v7, 0x7f0a0188

    invoke-virtual {v6, v7}, Lcom/android/mms/ui/SpamMessageManager;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 649
    :goto_1
    new-instance v3, Lcom/android/mms/ui/SpamMessageManager$MsgListMenuClickListener;

    iget-object v6, p0, Lcom/android/mms/ui/SpamMessageManager$3;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    invoke-direct {v3, v6, v5, p2}, Lcom/android/mms/ui/SpamMessageManager$MsgListMenuClickListener;-><init>(Lcom/android/mms/ui/SpamMessageManager;Lcom/android/mms/ui/MessageItem;Landroid/view/View;)V

    .line 652
    .local v3, l:Lcom/android/mms/ui/SpamMessageManager$MsgListMenuClickListener;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPModeApplication()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v6

    if-nez v6, :cond_3

    .line 653
    iget-object v6, v5, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 654
    iget-object v6, p0, Lcom/android/mms/ui/SpamMessageManager$3;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    #getter for: Lcom/android/mms/ui/SpamMessageManager;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/mms/ui/SpamMessageManager;->access$500(Lcom/android/mms/ui/SpamMessageManager;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, v5, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/android/mms/ui/MessageUtils;->SpamNumberisAlreadInUse(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 655
    const/16 v6, 0xcf

    const v7, 0x7f0a039b

    invoke-interface {p1, v9, v6, v9, v7}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 660
    :cond_3
    const/16 v6, 0xca

    const v7, 0x7f0a0365

    invoke-interface {p1, v9, v6, v9, v7}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 663
    const/16 v6, 0xcb

    const v7, 0x7f0a00ba

    invoke-interface {p1, v9, v6, v9, v7}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 670
    const/16 v6, 0xcc

    const v7, 0x7f0a0014

    invoke-interface {p1, v9, v6, v9, v7}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 644
    .end local v3           #l:Lcom/android/mms/ui/SpamMessageManager$MsgListMenuClickListener;
    :cond_4
    iget-object v6, p0, Lcom/android/mms/ui/SpamMessageManager$3;->this$0:Lcom/android/mms/ui/SpamMessageManager;

    const v7, 0x7f0a000f

    invoke-virtual {v6, v7}, Lcom/android/mms/ui/SpamMessageManager;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto :goto_1

    .line 646
    :cond_5
    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto :goto_1
.end method
