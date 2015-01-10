.class public Lcom/android/contacts/list/DefaultContactListAdapter;
.super Lcom/android/contacts/list/ContactListAdapter;
.source "DefaultContactListAdapter.java"


# instance fields
.field private final CONTACT_FILTER_URI_WITHOUT_SNIPPET:Landroid/net/Uri;

.field private isPhoneNumberOnly:Z

.field private mAttachPhotoMode:Z

.field private mDeleteMode:Z

.field private final mListCallButtonClickListener:Landroid/view/View$OnClickListener;

.field private mPhoneNumber:Ljava/lang/String;

.field private mRingtoneMode:Z

.field private mShowCallButton:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-direct {p0, p1}, Lcom/android/contacts/list/ContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 79
    const-string v0, "content://com.android.contacts/contacts_list/filter/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->CONTACT_FILTER_URI_WITHOUT_SNIPPET:Landroid/net/Uri;

    .line 83
    iput-boolean v1, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->isPhoneNumberOnly:Z

    .line 86
    iput-boolean v1, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mAttachPhotoMode:Z

    .line 87
    iput-boolean v1, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mRingtoneMode:Z

    .line 88
    iput-boolean v1, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mShowCallButton:Z

    .line 91
    iput-boolean v1, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mDeleteMode:Z

    .line 572
    new-instance v0, Lcom/android/contacts/list/DefaultContactListAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/DefaultContactListAdapter$1;-><init>(Lcom/android/contacts/list/DefaultContactListAdapter;)V

    iput-object v0, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mListCallButtonClickListener:Landroid/view/View$OnClickListener;

    .line 96
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/list/DefaultContactListAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/list/DefaultContactListAdapter;Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/contacts/list/DefaultContactListAdapter;->getPhonenumber(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/list/DefaultContactListAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private final getPhonenumber(Landroid/net/Uri;)Ljava/lang/String;
    .locals 11
    .parameter "baseUri"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 525
    iput-object v3, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mPhoneNumber:Ljava/lang/String;

    .line 527
    const-string v0, "entities"

    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 528
    .local v1, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const-string v4, "data1"

    aput-object v4, v2, v8

    const-string v4, "is_super_primary"

    aput-object v4, v2, v10

    const-string v4, "mimetype"

    aput-object v4, v2, v9

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 539
    .local v7, phonecursor:Landroid/database/Cursor;
    if-eqz v7, :cond_4

    .line 541
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 543
    const-string v0, "vnd.android.cursor.item/phone_v2"

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 547
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 548
    .local v6, isSuperPrimary:I
    if-eqz v6, :cond_0

    .line 549
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mPhoneNumber:Ljava/lang/String;

    .line 557
    .end local v6           #isSuperPrimary:I
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mPhoneNumber:Ljava/lang/String;

    if-nez v0, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 558
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 560
    :cond_2
    const-string v0, "vnd.android.cursor.item/phone_v2"

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 561
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mPhoneNumber:Ljava/lang/String;

    .line 566
    :cond_3
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 569
    :cond_4
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mPhoneNumber:Ljava/lang/String;

    return-object v0

    .line 564
    :cond_5
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0
.end method

.method private isCustomFilterForPhoneNumbersOnly()Z
    .locals 3

    .prologue
    .line 616
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 617
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "only_phones"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method


# virtual methods
.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 9
    .parameter "itemView"
    .parameter "partition"
    .parameter "cursor"
    .parameter "position"

    .prologue
    .line 383
    move-object v1, p1

    check-cast v1, Lcom/android/contacts/list/ContactListItemView;

    .line 384
    .local v1, view:Lcom/android/contacts/list/ContactListItemView;
    invoke-virtual {p0, p2, p3}, Lcom/android/contacts/list/DefaultContactListAdapter;->isGalSearchShowMoreItem(ILandroid/database/Cursor;)Z

    move-result v7

    .line 386
    .local v7, isGalSearchShowMore:Z
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->getUpperCaseQueryString()[C

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactListItemView;->setHighlightedPrefix([C)V

    .line 388
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->isSelectionVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    invoke-virtual {p0, p2, p3}, Lcom/android/contacts/list/DefaultContactListAdapter;->isSelectedContact(ILandroid/database/Cursor;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactListItemView;->setActivated(Z)V

    .line 393
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->isChangingSplitRatioMode()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactListItemView;->setActivatedStateDrawables(Z)V

    .line 395
    invoke-virtual {p0, v1, p4, p3}, Lcom/android/contacts/list/DefaultContactListAdapter;->bindSectionHeaderAndDivider(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V

    .line 397
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->isQuickContactEnabled()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactListItemView;->setQuickContactEnabled(Z)V

    .line 398
    invoke-virtual {v1}, Lcom/android/contacts/list/ContactListItemView;->removePhotoViewForDeleteMode()V

    .line 401
    if-eqz v7, :cond_5

    .line 402
    invoke-virtual {v1}, Lcom/android/contacts/list/ContactListItemView;->removePhotoView()V

    .line 417
    :goto_1
    if-eqz v7, :cond_8

    .line 418
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->bindNameAsGalSearchShowMore(Lcom/android/contacts/list/ContactListItemView;)V

    .line 422
    :goto_2
    invoke-virtual {p0, v1, p3}, Lcom/android/contacts/list/DefaultContactListAdapter;->bindPresenceAndStatusMessage(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 424
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Contact_DisableAccountIconsInContactList"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Contact_SetLinkCountMaxAs"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x5

    if-le v0, v2, :cond_9

    .line 434
    :cond_1
    :goto_3
    invoke-virtual {p0, v1, p3}, Lcom/android/contacts/list/DefaultContactListAdapter;->bindStarredIcon(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 436
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactListItemView;->setSnippet(Ljava/lang/String;)V

    .line 438
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->isMultiSelectEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 439
    invoke-virtual {p0, p2}, Lcom/android/contacts/list/DefaultContactListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v8

    .line 440
    .local v8, part:Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    invoke-virtual {v8}, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->getHasHeader()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 441
    add-int/lit8 v0, p4, 0x1

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/DefaultContactListAdapter;->isChecked(I)Z

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/list/DefaultContactListAdapter;->bindCheckBox(Lcom/android/contacts/list/ContactListItemView;Z)V

    .line 471
    .end local v8           #part:Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    :goto_4
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->isMultiSelectEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0, p4}, Lcom/android/contacts/list/DefaultContactListAdapter;->needToDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 472
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactListItemView;->setEnabled(Z)V

    .line 486
    :goto_5
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Contact_EnableCallButtonInList"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mShowCallButton:Z

    if-eqz v0, :cond_3

    .line 488
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 489
    invoke-virtual {p0, p2}, Lcom/android/contacts/list/DefaultContactListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v8

    .line 490
    .restart local v8       #part:Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    invoke-virtual {v8}, Lcom/android/common/widget/CompositeCursorAdapter$Partition;->getHasHeader()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 491
    add-int/lit8 p4, p4, 0x1

    .line 495
    .end local v8           #part:Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mListCallButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactListItemView;->setOnListCallButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 496
    invoke-virtual {p0, p4}, Lcom/android/contacts/list/DefaultContactListAdapter;->getContactUri(I)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactListItemView;->showListCallButton(Landroid/net/Uri;)V

    .line 497
    const/16 v0, 0xb

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_3

    .line 498
    invoke-virtual {v1}, Lcom/android/contacts/list/ContactListItemView;->hideListCallButton()V

    .line 502
    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/contacts/list/DefaultContactListAdapter;->isEasAccountPartition(I)Z

    move-result v0

    if-eqz v0, :cond_e

    if-nez v7, :cond_e

    .line 503
    invoke-virtual {p0, v1, p2, p3}, Lcom/android/contacts/list/DefaultContactListAdapter;->bindGalTitleAndCompany(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V

    .line 507
    :goto_6
    return-void

    .line 386
    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 403
    :cond_5
    int-to-long v2, p2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_6

    invoke-virtual {p0, p2}, Lcom/android/contacts/list/DefaultContactListAdapter;->isEasAccountPartition(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 405
    invoke-virtual {p0, v1, p2, p3}, Lcom/android/contacts/list/DefaultContactListAdapter;->bindGalPhoto(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V

    goto/16 :goto_1

    .line 407
    :cond_6
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->isQuickContactEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 408
    const/4 v4, 0x7

    const/4 v5, 0x0

    const/16 v6, 0x9

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/list/DefaultContactListAdapter;->bindQuickContact(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;III)V

    goto/16 :goto_1

    .line 412
    :cond_7
    invoke-virtual {p0, v1, p2, p3}, Lcom/android/contacts/list/DefaultContactListAdapter;->bindPhoto(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V

    goto/16 :goto_1

    .line 420
    :cond_8
    invoke-virtual {p0, v1, p3}, Lcom/android/contacts/list/DefaultContactListAdapter;->bindName(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    goto/16 :goto_2

    .line 431
    :cond_9
    invoke-virtual {p0, v1, p3}, Lcom/android/contacts/list/DefaultContactListAdapter;->bindAccountIcons(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    goto/16 :goto_3

    .line 443
    .restart local v8       #part:Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    :cond_a
    invoke-virtual {p0, p4}, Lcom/android/contacts/list/DefaultContactListAdapter;->isChecked(I)Z

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/android/contacts/list/DefaultContactListAdapter;->bindCheckBox(Lcom/android/contacts/list/ContactListItemView;Z)V

    goto/16 :goto_4

    .line 446
    .end local v8           #part:Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    :cond_b
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->hideCheckBox(Lcom/android/contacts/list/ContactListItemView;)V

    goto/16 :goto_4

    .line 475
    :cond_c
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->isMultiSelectEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0, p4}, Lcom/android/contacts/list/DefaultContactListAdapter;->isSim2Contact(I)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(I)Z

    move-result v0

    if-nez v0, :cond_d

    .line 477
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactListItemView;->setEnabled(Z)V

    goto/16 :goto_5

    .line 479
    :cond_d
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactListItemView;->setEnabled(Z)V

    goto/16 :goto_5

    .line 505
    :cond_e
    invoke-virtual {v1}, Lcom/android/contacts/list/ContactListItemView;->hideGalTitleAndCompany()V

    goto :goto_6
.end method

.method public configureLoader(Landroid/content/CursorLoader;J)V
    .locals 6
    .parameter "loader"
    .parameter "directoryId"

    .prologue
    .line 100
    instance-of v4, p1, Lcom/android/contacts/list/ProfileAndContactsLoader;

    if-eqz v4, :cond_0

    .line 101
    iget-boolean v4, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mDeleteMode:Z

    if-nez v4, :cond_0

    move-object v4, p1

    .line 102
    check-cast v4, Lcom/android/contacts/list/ProfileAndContactsLoader;

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->shouldIncludeProfile()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/contacts/list/ProfileAndContactsLoader;->setLoadProfile(Z)V

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v1

    .line 106
    .local v1, filter:Lcom/android/contacts/list/ContactListFilter;
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->isSearchMode()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 107
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v2

    .line 108
    .local v2, query:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 109
    const-string v2, ""

    .line 111
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 112
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 115
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 116
    sget-object v4, Lcom/android/contacts/list/DefaultContactListAdapter;->PROJECTION_CONTACT:[Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 117
    const-string v4, "0"

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 154
    .end local v2           #query:Ljava/lang/String;
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->getSortOrder()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_9

    .line 155
    const-string v3, "sort_key"

    .line 160
    .local v3, sortOrder:Ljava/lang/String;
    :goto_1
    invoke-virtual {p1, v3}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    .line 161
    return-void

    .line 121
    .end local v3           #sortOrder:Ljava/lang/String;
    .restart local v2       #query:Ljava/lang/String;
    :cond_3
    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-eqz v4, :cond_7

    const-wide/16 v4, 0x1

    cmp-long v4, p2, v4

    if-eqz v4, :cond_7

    .line 122
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 123
    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 124
    const-string v4, "directory"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 126
    const-string v4, "limit"

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->getDirectoryResultLimit()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 129
    invoke-virtual {p0, p2, p3}, Lcom/android/contacts/list/DefaultContactListAdapter;->isEasAccountPartition(J)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 130
    sget-object v4, Lcom/android/contacts/list/DefaultContactListAdapter;->FILTER_GAL_SEARCH_PROJECTION:[Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 139
    :goto_2
    iget-boolean v4, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mAttachPhotoMode:Z

    if-eqz v4, :cond_4

    .line 140
    const-string v4, "for_export_only"

    const-string v5, "1"

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 141
    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/DefaultContactListAdapter;->applyDataRestriction(Landroid/net/Uri$Builder;)Landroid/net/Uri$Builder;

    .line 142
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 144
    iget-boolean v4, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->isPhoneNumberOnly:Z

    if-nez v4, :cond_5

    iget-boolean v4, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mAttachPhotoMode:Z

    if-nez v4, :cond_5

    iget-boolean v4, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mRingtoneMode:Z

    if-eqz v4, :cond_2

    .line 145
    :cond_5
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->configureSelection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V

    goto :goto_0

    .line 132
    :cond_6
    sget-object v4, Lcom/android/contacts/list/DefaultContactListAdapter;->FILTER_PROJECTION_WITHOUT_SNIPPET:[Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    goto :goto_2

    .line 135
    .end local v0           #builder:Landroid/net/Uri$Builder;
    :cond_7
    iget-object v4, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->CONTACT_FILTER_URI_WITHOUT_SNIPPET:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 136
    .restart local v0       #builder:Landroid/net/Uri$Builder;
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 137
    sget-object v4, Lcom/android/contacts/list/DefaultContactListAdapter;->FILTER_PROJECTION_WITHOUT_SNIPPET:[Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    goto :goto_2

    .line 148
    .end local v0           #builder:Landroid/net/Uri$Builder;
    .end local v2           #query:Ljava/lang/String;
    :cond_8
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->configureUri(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V

    .line 149
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->configureProjection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V

    .line 150
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/contacts/list/DefaultContactListAdapter;->configureSelection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V

    goto/16 :goto_0

    .line 157
    :cond_9
    const-string v3, "sort_key_alt"

    .restart local v3       #sortOrder:Ljava/lang/String;
    goto/16 :goto_1
.end method

.method protected configureProjection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V
    .locals 2
    .parameter "loader"
    .parameter "directoryId"
    .parameter "filter"

    .prologue
    .line 203
    if-eqz p4, :cond_0

    iget v0, p4, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 204
    sget-object v0, Lcom/android/contacts/list/DefaultContactListAdapter;->PROJECTION_DATA:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 208
    :goto_0
    return-void

    .line 206
    :cond_0
    sget-object v0, Lcom/android/contacts/list/DefaultContactListAdapter;->PROJECTION_CONTACT:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected configureSelection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V
    .locals 11
    .parameter "loader"
    .parameter "directoryId"
    .parameter "filter"

    .prologue
    .line 212
    if-nez p4, :cond_1

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    const-wide/16 v9, 0x0

    cmp-long v9, p2, v9

    if-nez v9, :cond_0

    .line 220
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 221
    .local v6, selection:Ljava/lang/StringBuilder;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 223
    .local v7, selectionArgs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget v9, p4, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    packed-switch v9, :pswitch_data_0

    .line 291
    :cond_2
    :goto_1
    :pswitch_0
    invoke-direct {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->isCustomFilterForPhoneNumbersOnly()Z

    move-result v9

    if-nez v9, :cond_3

    iget-boolean v9, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->isPhoneNumberOnly:Z

    if-eqz v9, :cond_4

    .line 292
    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-nez v9, :cond_10

    .line 293
    const-string v9, "has_phone_number=1"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    :cond_4
    :goto_2
    iget-object v9, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v5

    .line 302
    .local v5, phoneBookManageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    invoke-virtual {v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 303
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v9

    if-eqz v9, :cond_11

    .line 304
    const-string v9, "vnd.sec.contact.sim"

    invoke-virtual {v5, v9}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    iget-boolean v9, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mAttachPhotoMode:Z

    if-nez v9, :cond_5

    iget-boolean v9, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mRingtoneMode:Z

    if-eqz v9, :cond_7

    .line 306
    :cond_5
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "link_type1 != \'vnd.sec.contact.sim\'"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 307
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 308
    const-string v9, " AND "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    :cond_6
    const-string v9, "(link_type1 != \'vnd.sec.contact.sim\')"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    :cond_7
    const-string v9, "vnd.sec.contact.sim2"

    invoke-virtual {v5, v9}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    iget-boolean v9, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mAttachPhotoMode:Z

    if-nez v9, :cond_8

    iget-boolean v9, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mRingtoneMode:Z

    if-eqz v9, :cond_a

    .line 315
    :cond_8
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "link_type1 != \'vnd.sec.contact.sim2\'"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 316
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 317
    const-string v9, " AND "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    :cond_9
    const-string v9, "(link_type1 != \'vnd.sec.contact.sim2\')"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    :cond_a
    :goto_3
    const/4 v1, 0x0

    .line 336
    .local v1, SIM_ZERO:I
    const/4 v0, 0x1

    .line 338
    .local v0, SIM_ONE:I
    invoke-virtual {v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 339
    invoke-virtual {v5, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady(I)Z

    move-result v9

    if-eqz v9, :cond_b

    iget-boolean v9, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mAttachPhotoMode:Z

    if-nez v9, :cond_b

    iget-boolean v9, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mRingtoneMode:Z

    if-eqz v9, :cond_d

    .line 341
    :cond_b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "link_type1 != \'vnd.sec.contact.sim2\'"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_d

    .line 342
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_c

    .line 343
    const-string v9, " AND "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    :cond_c
    const-string v9, "(link_type1 != \'vnd.sec.contact.sim2\')"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    :cond_d
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 351
    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/String;

    invoke-interface {v7, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    invoke-virtual {p1, v9}, Landroid/content/CursorLoader;->setSelectionArgs([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 229
    .end local v0           #SIM_ONE:I
    .end local v1           #SIM_ZERO:I
    .end local v5           #phoneBookManageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    :pswitch_1
    iget-boolean v9, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mAttachPhotoMode:Z

    if-eqz v9, :cond_2

    .line 230
    iget-object v9, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/contacts/model/AccountTypeManager;->getWritableAccountsWithoutSim()Ljava/util/List;

    move-result-object v3

    .line 231
    .local v3, listWriteableAccount:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 232
    .local v4, numberOfAccount:I
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 234
    .local v8, strWriteableAccount:Ljava/lang/StringBuffer;
    if-eqz v3, :cond_2

    if-lez v4, :cond_2

    .line 235
    const/4 v2, 0x0

    .local v2, i:I
    :goto_4
    if-ge v2, v4, :cond_f

    .line 236
    const-string v9, "?"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 237
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/contacts/model/AccountWithDataSet;

    invoke-virtual {v9}, Lcom/android/contacts/model/AccountWithDataSet;->getAccountTypeWithDataSet()Lcom/android/contacts/model/AccountTypeWithDataSet;

    move-result-object v9

    iget-object v9, v9, Lcom/android/contacts/model/AccountTypeWithDataSet;->accountType:Ljava/lang/String;

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    add-int/lit8 v9, v4, -0x1

    if-ge v2, v9, :cond_e

    .line 240
    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 235
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 244
    :cond_f
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 245
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "_id IN (SELECT contact_id FROM view_raw_contacts_restricted WHERE account_type_and_data_set IN ( "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 260
    .end local v2           #i:I
    .end local v3           #listWriteableAccount:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    .end local v4           #numberOfAccount:I
    .end local v8           #strWriteableAccount:Ljava/lang/StringBuffer;
    :pswitch_2
    const-string v9, "starred!=0"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 269
    :pswitch_3
    const-string v9, "in_visible_group=1"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 281
    :pswitch_4
    const-string v9, "mimetype=? AND data1=?"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    const-string v9, "vnd.android.cursor.item/group_membership"

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    iget-wide v9, p4, Lcom/android/contacts/list/ContactListFilter;->groupId:J

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 295
    :cond_10
    const-string v9, " AND has_phone_number=1"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 324
    .restart local v5       #phoneBookManageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    :cond_11
    invoke-virtual {v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady()Z

    move-result v9

    if-eqz v9, :cond_12

    iget-boolean v9, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mAttachPhotoMode:Z

    if-nez v9, :cond_12

    iget-boolean v9, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mRingtoneMode:Z

    if-eqz v9, :cond_a

    .line 325
    :cond_12
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "link_type1 != \'vnd.sec.contact.sim\'"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 326
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_13

    .line 327
    const-string v9, " AND "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    :cond_13
    const-string v9, "(link_type1 != \'vnd.sec.contact.sim\')"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 223
    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected configureUri(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V
    .locals 9
    .parameter "loader"
    .parameter "directoryId"
    .parameter "filter"

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, -0x6

    .line 164
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 165
    .local v2, uri:Landroid/net/Uri;
    if-eqz p4, :cond_0

    .line 166
    iget v3, p4, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    .line 167
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 178
    :cond_0
    :goto_0
    cmp-long v3, p2, v7

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 179
    invoke-static {v2}, Lcom/android/contacts/list/DefaultContactListAdapter;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 183
    :cond_1
    if-eqz p4, :cond_3

    iget v3, p4, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v4, -0x3

    if-eq v3, v4, :cond_3

    iget v3, p4, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    if-eq v3, v6, :cond_3

    .line 186
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 187
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v3, "directory"

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 189
    iget v3, p4, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    if-nez v3, :cond_2

    .line 190
    invoke-virtual {p4, v0}, Lcom/android/contacts/list/ContactListFilter;->addAccountQueryParameterToUrl(Landroid/net/Uri$Builder;)Landroid/net/Uri$Builder;

    .line 192
    :cond_2
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 195
    .end local v0           #builder:Landroid/net/Uri$Builder;
    :cond_3
    iget-boolean v3, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mAttachPhotoMode:Z

    if-eqz v3, :cond_4

    .line 196
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "for_export_only"

    const-string v5, "1"

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 197
    :cond_4
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/DefaultContactListAdapter;->applyDataRestriction(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 198
    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 199
    return-void

    .line 168
    :cond_5
    iget v3, p4, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    if-ne v3, v6, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->getSelectedContactLookupKey()Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, lookupKey:Ljava/lang/String;
    if-eqz v1, :cond_6

    .line 171
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v3, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0

    .line 173
    :cond_6
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->getSelectedContactId()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0
.end method

.method public getEnableTouchScreenHeight()I
    .locals 6

    .prologue
    .line 609
    iget-object v2, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 610
    .local v1, wm:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 611
    .local v0, dsp:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    int-to-double v2, v2

    const-wide v4, 0x3feae147ae147ae1L

    mul-double/2addr v2, v4

    double-to-int v2, v2

    return v2
.end method

.method public needToDisabled(I)Z
    .locals 6
    .parameter "position"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 511
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/DefaultContactListAdapter;->isSimContact(I)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled()Z

    move-result v4

    if-nez v4, :cond_4

    move v0, v2

    .line 512
    .local v0, isSimContactInDeleteMode:Z
    :goto_0
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v4

    if-nez v4, :cond_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/DefaultContactListAdapter;->isSim2Contact(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 513
    iget-object v4, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v4

    const-string v5, "vnd.sec.contact.sim2"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    move v0, v2

    .line 519
    :cond_1
    :goto_1
    const/4 v1, 0x0

    .line 521
    .local v1, isUserProfileWithAabInDeleteMode:Z
    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    move v3, v2

    :cond_3
    return v3

    .end local v0           #isSimContactInDeleteMode:Z
    .end local v1           #isUserProfileWithAabInDeleteMode:Z
    :cond_4
    move v0, v3

    .line 511
    goto :goto_0

    .restart local v0       #isSimContactInDeleteMode:Z
    :cond_5
    move v0, v3

    .line 513
    goto :goto_1
.end method

.method protected newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "partition"
    .parameter "cursor"
    .parameter "position"
    .parameter "parent"

    .prologue
    .line 365
    invoke-super/range {p0 .. p5}, Lcom/android/contacts/list/ContactListAdapter;->newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 370
    .local v0, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/contacts/list/DefaultContactListAdapter;->getTwoPaneMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 371
    const-string v1, "DEFAULT"

    const-string v2, "TABLET_BLACK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 373
    const v1, 0x7f0206f1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 378
    :cond_0
    :goto_0
    return-object v0

    .line 375
    :cond_1
    const v1, 0x7f0206f2

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public setAttachPhotoMode(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 359
    iput-boolean p1, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mAttachPhotoMode:Z

    .line 360
    return-void
.end method

.method public setCheckedIds(Ljava/util/HashMap;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 628
    .local p1, checkedIds:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    iput-object p1, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mCheckedIds:Ljava/util/HashMap;

    .line 629
    return-void
.end method

.method public setDeleteMode(Z)V
    .locals 0
    .parameter "deleteMode"

    .prologue
    .line 636
    iput-boolean p1, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mDeleteMode:Z

    .line 637
    return-void
.end method

.method public setDisplayCallButton(Z)V
    .locals 0
    .parameter "show"

    .prologue
    .line 632
    iput-boolean p1, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mShowCallButton:Z

    .line 633
    return-void
.end method

.method public setPhoneNumbersOnly(Z)V
    .locals 0
    .parameter "isOnly"

    .prologue
    .line 623
    iput-boolean p1, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->isPhoneNumberOnly:Z

    .line 624
    return-void
.end method

.method public setRingToneMode(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 355
    iput-boolean p1, p0, Lcom/android/contacts/list/DefaultContactListAdapter;->mRingtoneMode:Z

    .line 356
    return-void
.end method
