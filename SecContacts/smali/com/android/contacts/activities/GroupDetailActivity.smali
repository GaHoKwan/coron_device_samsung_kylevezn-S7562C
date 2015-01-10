.class public Lcom/android/contacts/activities/GroupDetailActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "GroupDetailActivity.java"


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCustomActionBarView:Landroid/view/View;

.field private mFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

.field private final mFragmentListener:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Listener;

.field private mFromEmergencyDial:Z

.field private mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

.field private mGroupType:I

.field private mIsAutoAdd:Z

.field private mIsOptionsMenuOpen:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 240
    new-instance v0, Lcom/android/contacts/activities/GroupDetailActivity$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/GroupDetailActivity$2;-><init>(Lcom/android/contacts/activities/GroupDetailActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragmentListener:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Listener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/activities/GroupDetailActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mCustomActionBarView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/activities/GroupDetailActivity;)Lcom/sec/android/app/contacts/group/GroupInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/activities/GroupDetailActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mIsAutoAdd:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/contacts/activities/GroupDetailActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupType:I

    return v0
.end method

.method private adjustActionBar(Lcom/sec/android/app/contacts/group/GroupInfo;)V
    .locals 8
    .parameter "groupInfo"

    .prologue
    const/4 v7, -0x1

    .line 185
    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupDetailActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 186
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 187
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/android/contacts/activities/GroupDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 188
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f0400f4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mCustomActionBarView:Landroid/view/View;

    .line 190
    invoke-virtual {p1}, Lcom/sec/android/app/contacts/group/GroupInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 191
    .local v3, title:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sec/android/app/contacts/group/GroupInfo;->getSystemId()Ljava/lang/String;

    move-result-object v2

    .line 192
    .local v2, systemId:Ljava/lang/String;
    invoke-direct {p0, v3, v2}, Lcom/android/contacts/activities/GroupDetailActivity;->updateTitle(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-boolean v4, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFromEmergencyDial:Z

    if-eqz v4, :cond_1

    .line 195
    const/16 v4, 0x12

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 201
    :goto_0
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->shouldApplyUiMirroring()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 202
    iget-object v4, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mCustomActionBarView:Landroid/view/View;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x13

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 212
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    .end local v2           #systemId:Ljava/lang/String;
    .end local v3           #title:Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 198
    .restart local v1       #inflater:Landroid/view/LayoutInflater;
    .restart local v2       #systemId:Ljava/lang/String;
    .restart local v3       #title:Ljava/lang/String;
    :cond_1
    const/16 v4, 0x16

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    goto :goto_0

    .line 206
    :cond_2
    iget-object v4, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mCustomActionBarView:Landroid/view/View;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    goto :goto_1
.end method

.method private static convertToArray(Ljava/util/List;)[J
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)[J"
        }
    .end annotation

    .prologue
    .line 553
    .local p0, listMembers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 554
    .local v2, size:I
    new-array v1, v2, [J

    .line 555
    .local v1, membersArray:[J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 556
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aput-wide v3, v1, v0

    .line 555
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 558
    :cond_0
    return-object v1
.end method

.method private deleteSelectedContact()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 585
    iget v7, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupType:I

    if-ne v7, v5, :cond_2

    .line 586
    iget-object v7, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    invoke-virtual {v7}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v3

    .line 588
    .local v3, list:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getHeaderViewsCount()I

    move-result v2

    .line 589
    .local v2, headerViewCount:I
    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getSelectedItemPosition()I

    move-result v4

    .line 591
    .local v4, position:I
    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->hasFocus()Z

    move-result v7

    if-eqz v7, :cond_0

    if-ge v4, v2, :cond_1

    :cond_0
    move v5, v6

    .line 600
    .end local v2           #headerViewCount:I
    .end local v3           #list:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
    .end local v4           #position:I
    :goto_0
    return v5

    .line 593
    .restart local v2       #headerViewCount:I
    .restart local v3       #list:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
    .restart local v4       #position:I
    :cond_1
    iget-object v7, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    invoke-virtual {v7}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListAdapter;

    .line 594
    .local v0, adapter:Lcom/android/contacts/list/ContactListAdapter;
    sub-int v7, v4, v2

    invoke-virtual {v0, v7}, Lcom/android/contacts/list/ContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 596
    .local v1, contactUri:Landroid/net/Uri;
    invoke-static {p0, v1, v6}, Lcom/android/contacts/interactions/ContactDeletionInteraction;->start(Landroid/app/Activity;Landroid/net/Uri;Z)Lcom/android/contacts/interactions/ContactDeletionInteraction;

    goto :goto_0

    .end local v0           #adapter:Lcom/android/contacts/list/ContactListAdapter;
    .end local v1           #contactUri:Landroid/net/Uri;
    .end local v2           #headerViewCount:I
    .end local v3           #list:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
    .end local v4           #position:I
    :cond_2
    move v5, v6

    .line 600
    goto :goto_0
.end method

.method private fillEmergecyGroupInfo()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 548
    new-instance v0, Lcom/sec/android/app/contacts/group/GroupInfo;

    const-string v1, "vnd.sec.contact.agg.account_type"

    const-string v2, "vnd.sec.contact.agg.account_name"

    const-wide/16 v4, 0x0

    const-string v6, "ICE"

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/contacts/group/GroupInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    .line 550
    return-void
.end method

.method private finishWithHidingIME()V
    .locals 3

    .prologue
    .line 562
    iget-object v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    if-eqz v1, :cond_0

    .line 563
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/GroupDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 564
    .local v0, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 565
    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupDetailActivity;->finish()V

    .line 567
    .end local v0           #inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method private isFromEmergencyDial(Landroid/content/Intent;)Z
    .locals 3
    .parameter "intent"

    .prologue
    .line 538
    const-string v1, "fromEmergencyDialer"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 539
    .local v0, isFromEmergencyDialer:Z
    return v0
.end method

.method private isOnlyDefaultAvailable(Landroid/content/Intent;)Z
    .locals 3
    .parameter "intent"

    .prologue
    .line 543
    const-string v1, "default_only"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 544
    .local v0, isOnlyDefaultAvailable:Z
    return v0
.end method

.method private updateTitle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "title"
    .parameter "systemId"

    .prologue
    .line 215
    iget-object v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mCustomActionBarView:Landroid/view/View;

    const v2, 0x7f0901a7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 217
    .local v0, titleView:Landroid/widget/TextView;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    invoke-static {p2}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getSystemTitleRes(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 229
    :goto_0
    return-void

    .line 219
    :cond_0
    const-string v1, "ICE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 220
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->shouldChangeEmergencyText()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 221
    const v1, 0x7f0d0285

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 224
    :cond_1
    const v1, 0x7f0d0284

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 227
    :cond_2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public inOptionMenuOpened()Z
    .locals 1

    .prologue
    .line 457
    iget-boolean v0, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mIsOptionsMenuOpen:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 15
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 463
    const/4 v1, -0x1

    move/from16 v0, p2

    if-eq v0, v1, :cond_1

    .line 535
    :cond_0
    :goto_0
    return-void

    .line 467
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 470
    :pswitch_0
    const/4 v6, -0x1

    .line 471
    .local v6, mode:I
    const/4 v1, 0x1

    move/from16 v0, p1

    if-ne v0, v1, :cond_4

    .line 472
    iget v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 473
    const/4 v6, 0x3

    .line 484
    :cond_2
    :goto_1
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v9

    .line 485
    .local v9, membersToUpdate:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-string v1, "ModifiedIds"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v9

    .end local v9           #membersToUpdate:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    check-cast v9, Ljava/util/ArrayList;

    .line 487
    .restart local v9       #membersToUpdate:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {v9}, Lcom/android/contacts/activities/GroupDetailActivity;->convertToArray(Ljava/util/List;)[J

    move-result-object v3

    .line 488
    .local v3, membersToEditArray:[J
    iget-object v2, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "editMemberCompleted"

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/android/contacts/ContactSaveService;->createMemberUpdateOnlyIntent(Landroid/content/Context;Lcom/sec/android/app/contacts/group/GroupInfo;[JLjava/lang/Class;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v14

    .line 492
    .local v14, saveIntent:Landroid/content/Intent;
    const/4 v1, 0x1

    move/from16 v0, p1

    if-ne v0, v1, :cond_6

    .line 493
    const v12, 0x7f0d0278

    .line 497
    .local v12, resId:I
    :goto_2
    iget-object v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    invoke-virtual {v1, v12}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->showProgress(I)V

    .line 498
    invoke-virtual {p0, v14}, Lcom/android/contacts/activities/GroupDetailActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 475
    .end local v3           #membersToEditArray:[J
    .end local v9           #membersToUpdate:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v12           #resId:I
    .end local v14           #saveIntent:Landroid/content/Intent;
    :cond_3
    const/4 v6, 0x2

    goto :goto_1

    .line 477
    :cond_4
    const/4 v1, 0x2

    move/from16 v0, p1

    if-ne v0, v1, :cond_2

    .line 478
    iget v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    .line 479
    const/4 v6, 0x5

    goto :goto_1

    .line 481
    :cond_5
    const/4 v6, 0x4

    goto :goto_1

    .line 495
    .restart local v3       #membersToEditArray:[J
    .restart local v9       #membersToUpdate:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v14       #saveIntent:Landroid/content/Intent;
    :cond_6
    const v12, 0x7f0d0279

    .restart local v12       #resId:I
    goto :goto_2

    .line 502
    .end local v3           #membersToEditArray:[J
    .end local v6           #mode:I
    .end local v9           #membersToUpdate:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v12           #resId:I
    .end local v14           #saveIntent:Landroid/content/Intent;
    :pswitch_1
    const/4 v1, -0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_0

    .line 503
    const-string v1, "result"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    .line 505
    .local v13, rtnData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v10, v1, [Ljava/lang/String;

    .line 506
    .local v10, output:[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_3
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v7, v1, :cond_7

    .line 507
    const-string v1, ""

    aput-object v1, v10, v7

    .line 508
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v10, v7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v5, ";"

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v7

    .line 506
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 511
    :cond_7
    new-instance v8, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    const-string v2, "mailto:"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v8, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 512
    .local v8, intent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.EMAIL"

    invoke-virtual {v8, v1, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 513
    invoke-virtual {p0, v8}, Lcom/android/contacts/activities/GroupDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 517
    .end local v7           #i:I
    .end local v8           #intent:Landroid/content/Intent;
    .end local v10           #output:[Ljava/lang/String;
    .end local v13           #rtnData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_2
    const/4 v1, -0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_0

    .line 518
    new-instance v8, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {v8, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 519
    .restart local v8       #intent:Landroid/content/Intent;
    const-string v1, "result"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    .line 521
    .restart local v13       #rtnData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "smsto"

    const-string v2, ""

    const/4 v4, 0x0

    invoke-static {v1, v2, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 522
    .local v11, phoneUri:Landroid/net/Uri;
    invoke-virtual {v8, v11}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 523
    const-string v1, "sendto"

    invoke-virtual {v8, v1, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 524
    invoke-virtual {p0, v8}, Lcom/android/contacts/activities/GroupDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 528
    .end local v8           #intent:Landroid/content/Intent;
    .end local v11           #phoneUri:Landroid/net/Uri;
    .end local v13           #rtnData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_3
    const/4 v1, -0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_0

    .line 529
    const-string v1, "GroupInfo"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/group/GroupInfo;

    iput-object v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    .line 530
    iget-object v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    iget-object v2, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->loadGroupWithReload(Lcom/sec/android/app/contacts/group/GroupInfo;)V

    .line 531
    iget-object v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/group/GroupInfo;->getTitle()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/group/GroupInfo;->getSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/contacts/activities/GroupDetailActivity;->updateTitle(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 467
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedState"

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 101
    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 102
    .local v1, intent:Landroid/content/Intent;
    const/4 v2, 0x0

    .line 104
    .local v2, isOnlyDefaultAvailable:Z
    const-string v6, "com.android.contacts.action.SHOW_EMERGENCY_CONTACTS"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 106
    invoke-direct {p0, v1}, Lcom/android/contacts/activities/GroupDetailActivity;->isFromEmergencyDial(Landroid/content/Intent;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/high16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/Window;->addFlags(I)V

    .line 108
    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 109
    .local v3, lp:Landroid/view/WindowManager$LayoutParams;
    iget v6, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v7, -0x1000001

    and-int/2addr v6, v7

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 110
    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 112
    .end local v3           #lp:Landroid/view/WindowManager$LayoutParams;
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/contacts/activities/GroupDetailActivity;->isOnlyDefaultAvailable(Landroid/content/Intent;)Z

    move-result v2

    .line 113
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFromEmergencyDial:Z

    .line 114
    invoke-direct {p0}, Lcom/android/contacts/activities/GroupDetailActivity;->fillEmergecyGroupInfo()V

    .line 116
    new-instance v6, Lcom/android/contacts/activities/GroupDetailActivity$1;

    invoke-direct {v6, p0}, Lcom/android/contacts/activities/GroupDetailActivity$1;-><init>(Lcom/android/contacts/activities/GroupDetailActivity;)V

    iput-object v6, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 125
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 126
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    iget-object v6, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v6, v0}, Lcom/android/contacts/activities/GroupDetailActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 136
    .end local v0           #filter:Landroid/content/IntentFilter;
    :goto_0
    iget-object v6, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-static {v6, p0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->parseGroupType(Lcom/sec/android/app/contacts/group/GroupInfo;Landroid/content/Context;)I

    move-result v6

    iput v6, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupType:I

    .line 138
    const-string v6, "AutoAdd"

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mIsAutoAdd:Z

    .line 140
    const v6, 0x7f0400fc

    invoke-virtual {p0, v6}, Lcom/android/contacts/activities/GroupDetailActivity;->setContentView(I)V

    .line 141
    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupDetailActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    const v7, 0x7f09026c

    invoke-virtual {v6, v7}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    iput-object v6, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    .line 143
    iget-object v6, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    iget-object v7, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v6, v7}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->loadGroup(Lcom/sec/android/app/contacts/group/GroupInfo;)V

    .line 144
    const-string v6, "GroupDetailActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mFromEmergencyDial : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFromEmergencyDial:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const-string v6, "GroupDetailActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isOnlyDefaultAvailable : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v5

    .line 148
    .local v5, sIsTwoPaneMode:Z
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v4

    .line 149
    .local v4, sIsPhone:Z
    iget-object v6, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    iget-boolean v7, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFromEmergencyDial:Z

    invoke-virtual {v6, v7, v2, v5, v4}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->setFromEmergecyDial(ZZZZ)V

    .line 151
    iget-object v6, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    iget-object v7, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragmentListener:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Listener;

    invoke-virtual {v6, v7}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->setListener(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Listener;)V

    .line 154
    iget-object v6, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-direct {p0, v6}, Lcom/android/contacts/activities/GroupDetailActivity;->adjustActionBar(Lcom/sec/android/app/contacts/group/GroupInfo;)V

    .line 155
    return-void

    .line 130
    .end local v4           #sIsPhone:Z
    .end local v5           #sIsTwoPaneMode:Z
    :cond_1
    if-eqz p1, :cond_2

    .line 131
    const-string v6, "GroupInfo"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/contacts/group/GroupInfo;

    iput-object v6, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    goto/16 :goto_0

    .line 133
    :cond_2
    const-string v6, "GroupInfo"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/contacts/group/GroupInfo;

    iput-object v6, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 303
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 305
    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupDetailActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 306
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f12001b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 307
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 159
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onDestroy()V

    .line 160
    iget-object v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    if-eqz v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->setListener(Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment$Listener;)V

    .line 164
    :cond_0
    iget-boolean v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFromEmergencyDial:Z

    if-eqz v1, :cond_1

    .line 166
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/GroupDetailActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 173
    :cond_1
    :goto_0
    return-void

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 169
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 170
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 571
    packed-switch p1, :pswitch_data_0

    .line 580
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/contacts/ContactsActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 574
    :pswitch_0
    invoke-direct {p0}, Lcom/android/contacts/activities/GroupDetailActivity;->deleteSelectedContact()Z

    goto :goto_0

    .line 571
    :pswitch_data_0
    .packed-switch 0x43
        :pswitch_0
    .end packed-switch
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 3
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 438
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/contacts/activities/GroupDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 439
    .local v0, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 440
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mIsOptionsMenuOpen:Z

    .line 441
    invoke-super {p0, p1, p2}, Lcom/android/contacts/ContactsActivity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 233
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, action:Ljava/lang/String;
    const-string v1, "editMemberCompleted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    iget-object v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->dismissProgress()V

    .line 237
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v1, 0x1

    .line 356
    iget-object v0, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f090169

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    .line 358
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/SearchView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 359
    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 363
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 433
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 365
    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/activities/PeopleActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 366
    const/high16 v2, 0x400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 367
    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/GroupDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 368
    invoke-direct {p0}, Lcom/android/contacts/activities/GroupDetailActivity;->finishWithHidingIME()V

    move v0, v1

    .line 369
    goto :goto_0

    .line 372
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/contacts/activities/ContactMultiSelectionActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 374
    const-string v2, "com.sec.android.app.contacts.action.GROUP_EDIT_MEMBER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 375
    const-string v2, "GroupInfo"

    iget-object v3, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 377
    const-string v2, "AutoAdd"

    iget-boolean v3, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mIsAutoAdd:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 380
    iget v2, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupType:I

    if-ne v2, v4, :cond_1

    .line 381
    const-string v2, "EditMode"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 386
    :goto_1
    const/4 v2, 0x2

    invoke-virtual {p0, v0, v2}, Lcom/android/contacts/activities/GroupDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v1

    .line 387
    goto :goto_0

    .line 384
    :cond_1
    const-string v2, "EditMode"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 390
    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/activities/GroupEditorActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 391
    const-string v2, "android.intent.action.EDIT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 392
    const-string v2, "GroupInfo"

    iget-object v3, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 394
    iget v2, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupType:I

    if-ne v2, v4, :cond_2

    .line 395
    const-string v2, "EditMode"

    const/16 v3, 0xf

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 400
    :goto_2
    invoke-virtual {p0, v0, v6}, Lcom/android/contacts/activities/GroupDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v1

    .line 401
    goto :goto_0

    .line 397
    :cond_2
    const-string v2, "EditMode"

    const/16 v3, 0xe

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2

    .line 404
    :sswitch_3
    new-instance v0, Landroid/content/Intent;

    const-string v2, "intent.action.INTERACTION_GROUP_SELECT_MEMBER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 405
    const-string v2, "com.sec.android.app.contacts.action.INTERACTION_GROUP_SELECT_MEMBER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 406
    const-string v2, "GroupInfo"

    iget-object v3, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 407
    const-string v2, "actionCode"

    const/16 v3, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 409
    const-string v2, "SelectMode"

    iget v3, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupType:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 411
    const-string v2, "FromMMS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 412
    invoke-virtual {p0, v0, v5}, Lcom/android/contacts/activities/GroupDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v1

    .line 413
    goto/16 :goto_0

    .line 416
    :sswitch_4
    new-instance v0, Landroid/content/Intent;

    const-string v2, "intent.action.INTERACTION_GROUP_SELECT_MEMBER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 417
    const-string v2, "com.sec.android.app.contacts.action.INTERACTION_GROUP_SELECT_MEMBER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 418
    const-string v2, "GroupInfo"

    iget-object v3, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 419
    const-string v2, "actionCode"

    const/16 v3, 0xa0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 421
    const-string v2, "SelectMode"

    iget v3, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupType:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 422
    invoke-virtual {p0, v0, v4}, Lcom/android/contacts/activities/GroupDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v1

    .line 423
    goto/16 :goto_0

    .line 426
    :sswitch_5
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/contacts/activities/DeleteContactsActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 427
    const-string v2, "com.sec.android.app.contacts.action.CONTACTS_DELETE_IN_GROUP"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 428
    const-string v2, "GroupInfo"

    iget-object v3, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 429
    invoke-virtual {p0, v0}, Lcom/android/contacts/activities/GroupDetailActivity;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    .line 430
    goto/16 :goto_0

    .line 363
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f090371 -> :sswitch_5
        0x7f09037c -> :sswitch_2
        0x7f09037d -> :sswitch_4
        0x7f09037e -> :sswitch_3
        0x7f090384 -> :sswitch_1
    .end sparse-switch
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 3
    .parameter "menu"

    .prologue
    .line 446
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mIsOptionsMenuOpen:Z

    .line 447
    iget-object v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    if-eqz v1, :cond_0

    .line 448
    iget-object v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f090169

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    .line 449
    .local v0, searchView:Landroid/widget/SearchView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/SearchView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 450
    invoke-virtual {p0}, Lcom/android/contacts/activities/GroupDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 453
    .end local v0           #searchView:Landroid/widget/SearchView;
    :cond_0
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 454
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 13
    .parameter "menu"

    .prologue
    const v12, 0x7f09037e

    const v11, 0x7f090371

    const v10, 0x7f090384

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 314
    invoke-static {p0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->hasPermanentMenuKey(Landroid/content/Context;)Z

    move-result v0

    .line 315
    .local v0, hasPermanentMenuKey:Z
    iget-object v6, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    invoke-virtual {v6}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->isLoading()Z

    move-result v3

    .line 316
    .local v3, isLoading:Z
    iget-object v6, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-static {v6}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getEditable(Lcom/sec/android/app/contacts/group/GroupInfo;)Z

    move-result v1

    .line 317
    .local v1, isEditable:Z
    iget v6, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupType:I

    const/4 v9, 0x5

    if-ne v6, v9, :cond_5

    move v2, v8

    .line 318
    .local v2, isICEGroup:Z
    :goto_0
    if-eqz v0, :cond_7

    if-nez v3, :cond_7

    if-nez v2, :cond_7

    .line 320
    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 321
    invoke-interface {p1, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 323
    invoke-static {p0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isUsmMode(Landroid/content/Context;)Z

    move-result v5

    .line 324
    .local v5, isUsmEnabled:Z
    const v6, 0x7f09037d

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    if-eqz v5, :cond_6

    move v6, v7

    :goto_1
    invoke-interface {v9, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 325
    const v6, 0x7f09037c

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 326
    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 327
    if-nez v1, :cond_0

    .line 328
    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 329
    const v6, 0x7f09037c

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 331
    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMMSAvailable(Landroid/content/Context;)Z

    move-result v4

    .line 332
    .local v4, isSMSAvailable:Z
    if-nez v4, :cond_1

    .line 333
    invoke-interface {p1, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 335
    :cond_1
    iget-boolean v6, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mIsAutoAdd:Z

    if-eqz v6, :cond_2

    const-string v6, "com.google"

    iget-object v9, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v9}, Lcom/sec/android/app/contacts/group/GroupInfo;->getAccountType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 336
    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 338
    :cond_2
    iget v6, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupType:I

    if-ne v6, v8, :cond_3

    .line 339
    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 341
    :cond_3
    iget-object v6, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mFragment:Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    invoke-virtual {v6}, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/list/ContactListAdapter;

    invoke-virtual {v6}, Lcom/android/contacts/list/ContactListAdapter;->getCount()I

    move-result v6

    if-nez v6, :cond_4

    .line 342
    invoke-interface {p1, v10}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 343
    invoke-interface {p1, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 344
    const v6, 0x7f09037d

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 345
    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 349
    .end local v4           #isSMSAvailable:Z
    .end local v5           #isUsmEnabled:Z
    :cond_4
    :goto_2
    return v8

    .end local v2           #isICEGroup:Z
    :cond_5
    move v2, v7

    .line 317
    goto/16 :goto_0

    .restart local v2       #isICEGroup:Z
    .restart local v5       #isUsmEnabled:Z
    :cond_6
    move v6, v8

    .line 324
    goto/16 :goto_1

    .end local v5           #isUsmEnabled:Z
    :cond_7
    move v8, v7

    .line 349
    goto :goto_2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 177
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 178
    const-string v0, "GroupInfo"

    iget-object v1, p0, Lcom/android/contacts/activities/GroupDetailActivity;->mGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 179
    return-void
.end method
