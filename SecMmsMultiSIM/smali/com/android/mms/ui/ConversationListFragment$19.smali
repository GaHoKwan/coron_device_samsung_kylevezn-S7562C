.class Lcom/android/mms/ui/ConversationListFragment$19;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


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
    .line 1841
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment$19;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 20
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 1843
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$19;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$1900(Lcom/android/mms/ui/ConversationListFragment;)Landroid/widget/SearchView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1844
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$19;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$1900(Lcom/android/mms/ui/ConversationListFragment;)Landroid/widget/SearchView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/SearchView;->clearFocus()V

    :cond_0
    move-object/from16 v14, p3

    .line 1846
    check-cast v14, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;

    .line 1850
    .local v14, info:Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;
    if-eqz v14, :cond_1

    .line 1851
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$19;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    iget v3, v14, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;->position:I

    #setter for: Lcom/android/mms/ui/ConversationListFragment;->mSelectedPosition:I
    invoke-static {v2, v3}, Lcom/android/mms/ui/ConversationListFragment;->access$2002(Lcom/android/mms/ui/ConversationListFragment;I)I

    .line 1852
    const-string v2, "Mms/ConversationListFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreateContextMenu mSelectedPosition: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ConversationListFragment$19;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mSelectedPosition:I
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment;->access$2000(Lcom/android/mms/ui/ConversationListFragment;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1857
    const-string v2, "Mms/ConversationListFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreateContextMenu mSelectedPosition: [size], [position] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ConversationListFragment$19;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment;->access$2100(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v14, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1858
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$19;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$2100(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/MsgSweepActionListView;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget v3, v14, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;->position:I

    if-gt v2, v3, :cond_2

    .line 1979
    :cond_1
    :goto_0
    return-void

    .line 1862
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$19;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mListView:Lcom/android/mms/ui/MsgSweepActionListView;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$2100(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/MsgSweepActionListView;

    move-result-object v2

    iget v3, v14, Lcom/sec/android/touchwiz/widget/TwAdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/MsgSweepActionListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v15

    .line 1863
    .local v15, itemObject:Ljava/lang/Object;
    instance-of v2, v15, Landroid/database/Cursor;

    if-eqz v2, :cond_1

    move-object v12, v15

    .line 1865
    check-cast v12, Landroid/database/Cursor;

    .line 1867
    .local v12, cursor:Landroid/database/Cursor;
    if-eqz v12, :cond_1

    invoke-interface {v12}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    if-ltz v2, :cond_1

    .line 1872
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$19;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$000(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationComposer;->getComposeMessageFragment()Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$19;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$000(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationComposer;->getComposeMessageFragment()Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1874
    const-string v2, "Mms/ConversationListFragment"

    const-string v3, "onCreateContextMenu exit : composer opened"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1878
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$19;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$000(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v12}, Lcom/android/mms/data/Conversation;->from(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/data/Conversation;

    move-result-object v11

    .line 1879
    .local v11, conv:Lcom/android/mms/data/Conversation;
    invoke-virtual {v11}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v17

    .line 1881
    .local v17, recipients:Lcom/android/mms/data/ContactList;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1882
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$19;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mQueryHandler:Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$2200(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;

    move-result-object v2

    const/16 v3, 0x70e

    sget-object v5, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/mms/data/Conversation;->ALL_SMS_PROJECTION:[Ljava/lang/String;

    const-string v7, "thread_id=?"

    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v11}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    const-string v9, "date DESC"

    move-object/from16 v4, p1

    invoke-virtual/range {v2 .. v9}, Lcom/android/mms/ui/ConversationListFragment$ThreadListQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1888
    :cond_4
    invoke-virtual {v11}, Lcom/android/mms/data/Conversation;->isCmasMsg()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1889
    const v2, 0x7f0a0289

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 1908
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$19;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$000(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.android.contacts"

    invoke-static {v2, v3}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$19;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$000(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.android.jcontacts"

    invoke-static {v2, v3}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/data/ContactList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    invoke-virtual {v11}, Lcom/android/mms/data/Conversation;->isCbSms()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v11}, Lcom/android/mms/data/Conversation;->isCmasMsg()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1912
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/data/Contact;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1913
    const/4 v2, 0x0

    const/16 v3, 0xca

    const/4 v4, 0x0

    const v5, 0x7f0a0067

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1918
    :cond_6
    :goto_2
    const/4 v2, 0x0

    const/16 v3, 0xc8

    const/4 v4, 0x0

    const v5, 0x7f0a000b

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1919
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1920
    const/4 v2, 0x0

    const/16 v3, 0xce

    const/4 v4, 0x0

    const v5, 0x7f0a04ff

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1925
    :cond_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackList()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1926
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$19;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$200(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/ui/ConversationListAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_8

    if-eqz v17, :cond_8

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/data/ContactList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/data/ContactList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/data/Contact;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v11}, Lcom/android/mms/data/Conversation;->isCbSms()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v11}, Lcom/android/mms/data/Conversation;->isCmasMsg()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v11}, Lcom/android/mms/data/Conversation;->isWapPushMessage()Z

    move-result v2

    if-nez v2, :cond_8

    .line 1929
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1930
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/data/Contact;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Telephony$Mms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1931
    const/4 v2, 0x0

    const/16 v3, 0xcc

    const/4 v4, 0x0

    const v5, 0x7f0a03a2

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1948
    :cond_8
    :goto_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPModeApplication()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    .line 1949
    if-eqz v17, :cond_12

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/data/ContactList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    invoke-virtual {v11}, Lcom/android/mms/data/Conversation;->isCbSms()Z

    move-result v2

    if-nez v2, :cond_12

    invoke-virtual {v11}, Lcom/android/mms/data/Conversation;->isCmasMsg()Z

    move-result v2

    if-nez v2, :cond_12

    invoke-virtual {v11}, Lcom/android/mms/data/Conversation;->isWapPushMessage()Z

    move-result v2

    if-nez v2, :cond_12

    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/data/Contact;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 1951
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/data/Contact;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v16

    .line 1953
    .local v16, number:Ljava/lang/String;
    const/16 v2, 0xc

    new-array v10, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "\\"

    aput-object v3, v10, v2

    const/4 v2, 0x1

    const-string v3, "/"

    aput-object v3, v10, v2

    const/4 v2, 0x2

    const-string v3, ":"

    aput-object v3, v10, v2

    const/4 v2, 0x3

    const-string v3, "*"

    aput-object v3, v10, v2

    const/4 v2, 0x4

    const-string v3, "?"

    aput-object v3, v10, v2

    const/4 v2, 0x5

    const-string v3, "\""

    aput-object v3, v10, v2

    const/4 v2, 0x6

    const-string v3, "<"

    aput-object v3, v10, v2

    const/4 v2, 0x7

    const-string v3, ">"

    aput-object v3, v10, v2

    const/16 v2, 0x8

    const-string v3, "|"

    aput-object v3, v10, v2

    const/16 v2, 0x9

    const-string v3, ";"

    aput-object v3, v10, v2

    const/16 v2, 0xa

    const-string v3, "\n"

    aput-object v3, v10, v2

    const/16 v2, 0xb

    const-string v3, "#"

    aput-object v3, v10, v2

    .line 1954
    .local v10, INVALID_CHAR:[Ljava/lang/String;
    const/4 v13, 0x0

    .local v13, i:I
    :goto_4
    array-length v2, v10

    if-ge v13, v2, :cond_11

    .line 1955
    aget-object v2, v10, v13

    const-string v3, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    .line 1954
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 1892
    .end local v10           #INVALID_CHAR:[Ljava/lang/String;
    .end local v13           #i:I
    .end local v16           #number:Ljava/lang/String;
    :cond_9
    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/data/ContactList;->size()I

    move-result v2

    if-nez v2, :cond_b

    .line 1893
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1894
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$19;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$000(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0a0188

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto/16 :goto_1

    .line 1896
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$19;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$000(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0a000f

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto/16 :goto_1

    .line 1898
    :cond_b
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/data/Contact;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CBmessages"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1899
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$19;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$000(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0a0132

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto/16 :goto_1

    .line 1901
    :cond_c
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/data/Contact;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Pushmessage"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1902
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$19;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$000(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0a01bb

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto/16 :goto_1

    .line 1904
    :cond_d
    const-string v2, ","

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/android/mms/data/ContactList;->formatNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto/16 :goto_1

    .line 1914
    :cond_e
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/data/Contact;

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->canAddToContacts(Lcom/android/mms/data/Contact;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1915
    const/4 v2, 0x0

    const/16 v3, 0xcb

    const/4 v4, 0x0

    const v5, 0x7f0a0068

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 1933
    :cond_f
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/data/Contact;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1934
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$19;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$000(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v3

    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/data/Contact;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/mms/ui/MessageUtils;->SpamNumberisAlreadInUse(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1935
    const/4 v2, 0x0

    const/16 v3, 0xcd

    const/4 v4, 0x0

    const v5, 0x7f0a039b

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f0200e4

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 1937
    :cond_10
    invoke-virtual {v11}, Lcom/android/mms/data/Conversation;->isCmasMsg()Z

    move-result v2

    if-nez v2, :cond_8

    .line 1938
    const/4 v2, 0x0

    const/16 v3, 0xcc

    const/4 v4, 0x0

    const v5, 0x7f0a039a

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f0200d3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 1958
    .restart local v10       #INVALID_CHAR:[Ljava/lang/String;
    .restart local v13       #i:I
    .restart local v16       #number:Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$19;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$000(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x3

    move-object/from16 v0, v16

    invoke-static {v2, v0, v3}, Lcom/android/mms/ui/MessageUtils;->existInVIPModeList(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$19;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$000(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x4

    move-object/from16 v0, v16

    invoke-static {v2, v0, v3}, Lcom/android/mms/ui/MessageUtils;->existInVIPModeList(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_13

    .line 1960
    const/4 v2, 0x0

    const/16 v3, 0xe9

    const/4 v4, 0x0

    const v5, 0x7f0a047d

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1965
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$19;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$000(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-static {v2, v0, v3}, Lcom/android/mms/ui/MessageUtils;->existInVIPModeList(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$19;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$000(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x2

    move-object/from16 v0, v16

    invoke-static {v2, v0, v3}, Lcom/android/mms/ui/MessageUtils;->existInVIPModeList(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_14

    .line 1967
    const/4 v2, 0x0

    const/16 v3, 0xe8

    const/4 v4, 0x0

    const v5, 0x7f0a047c

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1975
    .end local v10           #INVALID_CHAR:[Ljava/lang/String;
    .end local v13           #i:I
    .end local v16           #number:Ljava/lang/String;
    :cond_12
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$19;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #setter for: Lcom/android/mms/ui/ConversationListFragment;->mContextMenuSelectedConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v2, v11}, Lcom/android/mms/ui/ConversationListFragment;->access$2302(Lcom/android/mms/ui/ConversationListFragment;Lcom/android/mms/data/Conversation;)Lcom/android/mms/data/Conversation;

    .line 1977
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/ConversationListFragment$19;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    move-object/from16 v0, p1

    #setter for: Lcom/android/mms/ui/ConversationListFragment;->mContextMenu:Landroid/view/ContextMenu;
    invoke-static {v2, v0}, Lcom/android/mms/ui/ConversationListFragment;->access$2402(Lcom/android/mms/ui/ConversationListFragment;Landroid/view/ContextMenu;)Landroid/view/ContextMenu;

    goto/16 :goto_0

    .line 1962
    .restart local v10       #INVALID_CHAR:[Ljava/lang/String;
    .restart local v13       #i:I
    .restart local v16       #number:Ljava/lang/String;
    :cond_13
    const/4 v2, 0x0

    const/16 v3, 0xe7

    const/4 v4, 0x0

    const v5, 0x7f0a047b

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_5

    .line 1969
    :cond_14
    const/4 v2, 0x0

    const/16 v3, 0xe6

    const/4 v4, 0x0

    const v5, 0x7f0a047a

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_6
.end method
