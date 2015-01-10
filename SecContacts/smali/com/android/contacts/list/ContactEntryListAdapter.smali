.class public abstract Lcom/android/contacts/list/ContactEntryListAdapter;
.super Lcom/android/contacts/widget/IndexerListAdapter;
.source "ContactEntryListAdapter.java"


# instance fields
.field private mChagingSplitRatioMode:Z

.field protected mCheckedIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mContactsCount:Ljava/lang/String;

.field private mCounts:[I

.field private mDarkTheme:Z

.field private mDataRestrictedByCallingPackage:Z

.field private mDirectoryResultLimit:I

.field private mDirectorySearchMode:I

.field private mDisplayOrder:I

.field private mDisplayPhotos:Z

.field private mEmptyListEnabled:Z

.field private mFilter:Lcom/android/contacts/list/ContactListFilter;

.field private mHandleCnt:[I

.field private mHughFontEnabled:Z

.field private mIncludeProfile:Z

.field private mIsTwoPaneMode:Z

.field private mIsVoLTEEnabled:Z

.field private mLoading:Z

.field private mMultiSelectEnabled:Z

.field private mPhotoLoader:Lcom/android/contacts/ContactPhotoManager;

.field private mProfileExists:Z

.field private mQueryString:Ljava/lang/String;

.field private mQuickContactEnabled:Z

.field private mSearchMode:Z

.field private mSections:[Ljava/lang/String;

.field private mSelectionVisible:Z

.field private mSortOrder:I

.field private mUpperCaseQueryString:[C


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 116
    invoke-direct {p0, p1}, Lcom/android/contacts/widget/IndexerListAdapter;-><init>(Landroid/content/Context;)V

    .line 72
    iput-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mChagingSplitRatioMode:Z

    .line 73
    iput-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mIsTwoPaneMode:Z

    .line 93
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDirectoryResultLimit:I

    .line 95
    iput-boolean v2, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mLoading:Z

    .line 96
    iput-boolean v2, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mEmptyListEnabled:Z

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mCheckedIds:Ljava/util/HashMap;

    .line 104
    const-string v0, ""

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mContactsCount:Ljava/lang/String;

    .line 105
    iput-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDarkTheme:Z

    .line 112
    const/16 v0, 0x2e

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mHandleCnt:[I

    .line 923
    iput-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mIsVoLTEEnabled:Z

    .line 117
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->addPartitions()V

    .line 118
    return-void
.end method

.method private getPartitionByDirectoryId(J)I
    .locals 5
    .parameter "id"

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    .line 184
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 185
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v2

    .line 186
    .local v2, partition:Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    instance-of v3, v2, Lcom/android/contacts/list/DirectoryPartition;

    if-eqz v3, :cond_0

    .line 187
    check-cast v2, Lcom/android/contacts/list/DirectoryPartition;

    .end local v2           #partition:Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    invoke-virtual {v2}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    .line 192
    .end local v1           #i:I
    :goto_1
    return v1

    .line 184
    .restart local v1       #i:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 192
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private updateIndexer(Landroid/database/Cursor;)V
    .locals 5
    .parameter "cursor"

    .prologue
    const/4 v4, 0x0

    .line 544
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 545
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/contacts/list/ContactEntryListAdapter;->setIndexer(Landroid/widget/SectionIndexer;)V

    .line 558
    :goto_0
    return-void

    .line 549
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 550
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_2

    const-string v3, "address_book_index_titles"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 551
    const-string v3, "address_book_index_titles"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mSections:[Ljava/lang/String;

    .line 553
    .local v2, sections:[Ljava/lang/String;
    const-string v3, "address_book_index_counts"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mCounts:[I

    .line 554
    .local v1, counts:[I
    new-instance v3, Lcom/android/contacts/list/ContactsSectionIndexer;

    invoke-direct {v3, v2, v1}, Lcom/android/contacts/list/ContactsSectionIndexer;-><init>([Ljava/lang/String;[I)V

    invoke-virtual {p0, v3}, Lcom/android/contacts/list/ContactEntryListAdapter;->setIndexer(Landroid/widget/SectionIndexer;)V

    goto :goto_0

    .line 556
    .end local v1           #counts:[I
    .end local v2           #sections:[Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/contacts/list/ContactEntryListAdapter;->setIndexer(Landroid/widget/SectionIndexer;)V

    goto :goto_0
.end method


# virtual methods
.method protected addPartitions()V
    .locals 1

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->createDefaultDirectoryPartition()Lcom/android/contacts/list/DirectoryPartition;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->addPartition(Lcom/android/common/widget/CompositeCursorAdapter$Partition;)V

    .line 148
    return-void
.end method

.method protected applyDataRestriction(Landroid/net/Uri$Builder;)Landroid/net/Uri$Builder;
    .locals 3
    .parameter "builder"

    .prologue
    .line 904
    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDataRestrictedByCallingPackage:Z

    if-nez v1, :cond_1

    .line 920
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 912
    .restart local p1
    :cond_1
    const-string v1, "include_invisible_contacts"

    const-string v2, "1"

    invoke-virtual {p1, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 915
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    .line 916
    .local v0, callingPackage:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 917
    const-string v1, "requesting_package"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    goto :goto_0
.end method

.method protected applyDataRestriction(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .parameter "uri"

    .prologue
    .line 893
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDataRestrictedByCallingPackage:Z

    if-nez v0, :cond_0

    .line 897
    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->applyDataRestriction(Landroid/net/Uri$Builder;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    goto :goto_0
.end method

.method public areAllPartitionsEmpty()Z
    .locals 4

    .prologue
    .line 612
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    .line 615
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 616
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactEntryListAdapter;->isPartitionEmpty(I)Z
    :try_end_0
    .catch Landroid/database/StaleDataException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    .line 617
    const/4 v3, 0x0

    .line 626
    :goto_1
    return v3

    .line 615
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 621
    :catch_0
    move-exception v1

    .line 623
    .local v1, e:Landroid/database/StaleDataException;
    invoke-virtual {v1}, Landroid/database/StaleDataException;->printStackTrace()V

    .line 626
    .end local v1           #e:Landroid/database/StaleDataException;
    :cond_1
    const/4 v3, 0x1

    goto :goto_1
.end method

.method protected bindHeaderView(Landroid/view/View;ILandroid/database/Cursor;)V
    .locals 17
    .parameter "view"
    .parameter "partitionIndex"
    .parameter "cursor"

    .prologue
    .line 658
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v11

    .line 659
    .local v11, partition:Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    instance-of v12, v11, Lcom/android/contacts/list/DirectoryPartition;

    if-nez v12, :cond_0

    .line 708
    :goto_0
    return-void

    .line 664
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/contacts/list/ContactEntryListAdapter;->mChagingSplitRatioMode:Z

    if-eqz v12, :cond_2

    .line 665
    const v12, 0x7f0205a2

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_1
    move-object v7, v11

    .line 670
    check-cast v7, Lcom/android/contacts/list/DirectoryPartition;

    .line 671
    .local v7, directoryPartition:Lcom/android/contacts/list/DirectoryPartition;
    invoke-virtual {v7}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v4

    .line 672
    .local v4, directoryId:J
    const v12, 0x7f0900e8

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 673
    .local v10, labelTextView:Landroid/widget/TextView;
    const v12, 0x7f090248

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 674
    .local v9, displayNameTextView:Landroid/widget/TextView;
    const-wide/16 v12, 0x0

    cmp-long v12, v4, v12

    if-eqz v12, :cond_1

    const-wide/16 v12, 0x1

    cmp-long v12, v4, v12

    if-nez v12, :cond_3

    .line 675
    :cond_1
    const v12, 0x7f0d01d0

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(I)V

    .line 676
    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 677
    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 689
    :goto_2
    const v12, 0x7f090247

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 690
    .local v3, countText:Landroid/widget/TextView;
    invoke-virtual {v7}, Lcom/android/contacts/list/DirectoryPartition;->isLoading()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 691
    const v12, 0x7f0d01b8

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 667
    .end local v3           #countText:Landroid/widget/TextView;
    .end local v4           #directoryId:J
    .end local v7           #directoryPartition:Lcom/android/contacts/list/DirectoryPartition;
    .end local v9           #displayNameTextView:Landroid/widget/TextView;
    .end local v10           #labelTextView:Landroid/widget/TextView;
    :cond_2
    const v12, 0x7f0205a1

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 679
    .restart local v4       #directoryId:J
    .restart local v7       #directoryPartition:Lcom/android/contacts/list/DirectoryPartition;
    .restart local v9       #displayNameTextView:Landroid/widget/TextView;
    .restart local v10       #labelTextView:Landroid/widget/TextView;
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/contacts/list/ContactEntryListAdapter;->mIsTwoPaneMode:Z

    if-eqz v12, :cond_4

    .line 680
    const v12, 0x7f0d01cf

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(I)V

    .line 681
    :cond_4
    invoke-virtual {v7}, Lcom/android/contacts/list/DirectoryPartition;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    .line 682
    .local v6, directoryName:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_5

    move-object v8, v6

    .line 685
    .local v8, displayName:Ljava/lang/String;
    :goto_3
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 686
    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 682
    .end local v8           #displayName:Ljava/lang/String;
    :cond_5
    invoke-virtual {v7}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryType()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    .line 693
    .end local v6           #directoryName:Ljava/lang/String;
    .restart local v3       #countText:Landroid/widget/TextView;
    :cond_6
    const/4 v2, 0x0

    .line 694
    .local v2, count:I
    if-eqz p3, :cond_7

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 695
    :cond_7
    const/4 v2, 0x0

    .line 699
    :goto_4
    const-wide/16 v12, 0x0

    cmp-long v12, v4, v12

    if-eqz v12, :cond_9

    const-wide/16 v12, 0x1

    cmp-long v12, v4, v12

    if-eqz v12, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getDirectoryResultLimit()I

    move-result v12

    if-lt v2, v12, :cond_9

    .line 701
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/list/ContactEntryListAdapter;->mContext:Landroid/content/Context;

    const v13, 0x7f0d0080

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getDirectoryResultLimit()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 697
    :cond_8
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    goto :goto_4

    .line 704
    :cond_9
    const v12, 0x7f0d0081

    const v13, 0x7f100003

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v12, v13}, Lcom/android/contacts/list/ContactEntryListAdapter;->getQuantityText(III)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method protected bindQuickContact(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;III)V
    .locals 7
    .parameter "view"
    .parameter "partitionIndex"
    .parameter "cursor"
    .parameter "photoIdColumn"
    .parameter "contactIdColumn"
    .parameter "lookUpKeyColumn"

    .prologue
    .line 777
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v4, "CscFeature_Contact_DisableContactPhoto"

    invoke-virtual {v0, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 779
    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListItemView;->removePhotoView()V

    .line 794
    :goto_0
    return-void

    .line 783
    :cond_0
    const-wide/16 v2, 0x0

    .line 784
    .local v2, photoId:J
    invoke-interface {p3, p4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 785
    invoke-interface {p3, p4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 788
    :cond_1
    invoke-virtual {p1}, Lcom/android/contacts/list/ContactListItemView;->getQuickContact()Landroid/widget/QuickContactBadge;

    move-result-object v1

    .line 789
    .local v1, quickContact:Landroid/widget/QuickContactBadge;
    invoke-virtual {p0, p2, p3, p5, p6}, Lcom/android/contacts/list/ContactEntryListAdapter;->getContactUri(ILandroid/database/Cursor;II)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 792
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 793
    .local v5, contactId:J
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPhotoLoader()Lcom/android/contacts/ContactPhotoManager;

    move-result-object v0

    iget-boolean v4, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDarkTheme:Z

    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/ContactPhotoManager;->loadThumbnail(Landroid/widget/ImageView;JZJ)V

    goto :goto_0
.end method

.method public changeCursor(ILandroid/database/Cursor;)V
    .locals 2
    .parameter "partitionIndex"
    .parameter "cursor"

    .prologue
    .line 511
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 534
    :cond_0
    :goto_0
    return-void

    .line 516
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v0

    .line 517
    .local v0, partition:Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    instance-of v1, v0, Lcom/android/contacts/list/DirectoryPartition;

    if-eqz v1, :cond_2

    .line 518
    check-cast v0, Lcom/android/contacts/list/DirectoryPartition;

    .end local v0           #partition:Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DirectoryPartition;->setStatus(I)V

    .line 521
    :cond_2
    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDisplayPhotos:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mPhotoLoader:Lcom/android/contacts/ContactPhotoManager;

    if-eqz v1, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->isPhotoSupported(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 522
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mPhotoLoader:Lcom/android/contacts/ContactPhotoManager;

    invoke-virtual {v1}, Lcom/android/contacts/ContactPhotoManager;->refreshCache()V

    .line 526
    :cond_3
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/android/contacts/widget/IndexerListAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 528
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getIndexedPartition()I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 529
    invoke-direct {p0, p2}, Lcom/android/contacts/list/ContactEntryListAdapter;->updateIndexer(Landroid/database/Cursor;)V
    :try_end_0
    .catch Landroid/database/StaleDataException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 531
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public changeDirectories(Landroid/database/Cursor;)V
    .locals 17
    .parameter "cursor"

    .prologue
    .line 454
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v14

    if-nez v14, :cond_1

    .line 457
    :cond_0
    const-string v14, "ContactEntryListAdapter"

    const-string v15, "Directory search loader returned an empty cursor, which implies we have no directory entries."

    new-instance v16, Ljava/lang/RuntimeException;

    invoke-direct/range {v16 .. v16}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static/range {v14 .. v16}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 507
    :goto_0
    return-void

    .line 461
    :cond_1
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 463
    .local v3, directoryIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    const-string v14, "_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 464
    .local v10, idColumnIndex:I
    const-string v14, "directoryType"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 465
    .local v4, directoryTypeColumnIndex:I
    const-string v14, "displayName"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 466
    .local v5, displayNameColumnIndex:I
    const-string v14, "photoSupport"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 467
    .local v13, photoSupportColumnIndex:I
    const-string v14, "accountType"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 471
    .local v2, directoryAccountType:I
    const/4 v14, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 472
    :cond_2
    :goto_1
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 473
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 474
    .local v8, id:J
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 475
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionByDirectoryId(J)I

    move-result v14

    const/4 v15, -0x1

    if-ne v14, v15, :cond_2

    .line 476
    new-instance v11, Lcom/android/contacts/list/DirectoryPartition;

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-direct {v11, v14, v15}, Lcom/android/contacts/list/DirectoryPartition;-><init>(ZZ)V

    .line 477
    .local v11, partition:Lcom/android/contacts/list/DirectoryPartition;
    invoke-virtual {v11, v8, v9}, Lcom/android/contacts/list/DirectoryPartition;->setDirectoryId(J)V

    .line 478
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/android/contacts/list/DirectoryPartition;->setDirectoryType(Ljava/lang/String;)V

    .line 479
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/android/contacts/list/DirectoryPartition;->setDirectoryAccountType(Ljava/lang/String;)V

    .line 480
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/android/contacts/list/DirectoryPartition;->setDisplayName(Ljava/lang/String;)V

    .line 481
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 482
    .local v12, photoSupport:I
    const/4 v14, 0x1

    if-eq v12, v14, :cond_3

    const/4 v14, 0x3

    if-ne v12, v14, :cond_4

    :cond_3
    const/4 v14, 0x1

    :goto_2
    invoke-virtual {v11, v14}, Lcom/android/contacts/list/DirectoryPartition;->setPhotoSupported(Z)V

    .line 484
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/contacts/list/ContactEntryListAdapter;->addPartition(Lcom/android/common/widget/CompositeCursorAdapter$Partition;)V

    goto :goto_1

    .line 482
    :cond_4
    const/4 v14, 0x0

    goto :goto_2

    .line 489
    .end local v8           #id:J
    .end local v11           #partition:Lcom/android/contacts/list/DirectoryPartition;
    .end local v12           #photoSupport:I
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v1

    .line 490
    .local v1, count:I
    move v7, v1

    .local v7, i:I
    :cond_6
    :goto_3
    add-int/lit8 v7, v7, -0x1

    if-ltz v7, :cond_7

    .line 491
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v11

    .line 492
    .local v11, partition:Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    instance-of v14, v11, Lcom/android/contacts/list/DirectoryPartition;

    if-eqz v14, :cond_6

    .line 493
    check-cast v11, Lcom/android/contacts/list/DirectoryPartition;

    .end local v11           #partition:Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    invoke-virtual {v11}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v8

    .line 494
    .restart local v8       #id:J
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_6

    .line 495
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/contacts/list/ContactEntryListAdapter;->removePartition(I)V

    goto :goto_3

    .line 500
    .end local v8           #id:J
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->invalidate()V

    .line 503
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Landroid/database/StaleDataException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 504
    :catch_0
    move-exception v6

    .line 505
    .local v6, e:Landroid/database/StaleDataException;
    const-string v14, "ContactEntryListAdapter"

    const-string v15, "StaleDataException : "

    invoke-static {v14, v15, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public clearParitionsForDeleteMode()V
    .locals 5

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    .line 253
    .local v0, count:I
    const/4 v2, 0x1

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 254
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v3

    .line 255
    .local v3, partition:Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    instance-of v4, v3, Lcom/android/contacts/list/DirectoryPartition;

    if-eqz v4, :cond_0

    move-object v1, v3

    .line 256
    check-cast v1, Lcom/android/contacts/list/DirectoryPartition;

    .line 257
    .local v1, directoryPartition:Lcom/android/contacts/list/DirectoryPartition;
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lcom/android/contacts/list/DirectoryPartition;->setStatus(I)V

    .line 258
    const/4 v4, 0x0

    invoke-super {p0, v2, v4}, Lcom/android/contacts/widget/IndexerListAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 253
    .end local v1           #directoryPartition:Lcom/android/contacts/list/DirectoryPartition;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 261
    .end local v3           #partition:Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    :cond_1
    return-void
.end method

.method public clearPartitions()V
    .locals 5

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    .line 240
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 241
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v3

    .line 242
    .local v3, partition:Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    instance-of v4, v3, Lcom/android/contacts/list/DirectoryPartition;

    if-eqz v4, :cond_0

    move-object v1, v3

    .line 243
    check-cast v1, Lcom/android/contacts/list/DirectoryPartition;

    .line 244
    .local v1, directoryPartition:Lcom/android/contacts/list/DirectoryPartition;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/contacts/list/DirectoryPartition;->setStatus(I)V

    .line 240
    .end local v1           #directoryPartition:Lcom/android/contacts/list/DirectoryPartition;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 247
    .end local v3           #partition:Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    :cond_1
    invoke-super {p0}, Lcom/android/contacts/widget/IndexerListAdapter;->clearPartitions()V

    .line 248
    return-void
.end method

.method protected clearPinnedHeaderContactsCount(Landroid/view/View;)V
    .locals 1
    .parameter "header"

    .prologue
    .line 143
    check-cast p1, Lcom/android/contacts/list/ContactListPinnedHeaderView;

    .end local p1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/contacts/list/ContactListPinnedHeaderView;->setCountView(Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public configureDefaultPartition(ZZ)V
    .locals 8
    .parameter "showIfEmpty"
    .parameter "hasHeader"

    .prologue
    .line 633
    const/4 v1, -0x1

    .line 634
    .local v1, defaultPartitionIndex:I
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    .line 635
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 636
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v3

    .line 637
    .local v3, partition:Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    instance-of v4, v3, Lcom/android/contacts/list/DirectoryPartition;

    if-eqz v4, :cond_2

    check-cast v3, Lcom/android/contacts/list/DirectoryPartition;

    .end local v3           #partition:Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    invoke-virtual {v3}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 639
    move v1, v2

    .line 643
    :cond_0
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    .line 644
    invoke-virtual {p0, v1, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setShowIfEmpty(IZ)V

    .line 645
    invoke-virtual {p0, v1, p2}, Lcom/android/contacts/list/ContactEntryListAdapter;->setHasHeader(IZ)V

    .line 647
    :cond_1
    return-void

    .line 635
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public configureDirectoryLoader(Lcom/android/contacts/list/DirectoryListLoader;)V
    .locals 1
    .parameter "loader"

    .prologue
    .line 444
    iget v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDirectorySearchMode:I

    invoke-virtual {p1, v0}, Lcom/android/contacts/list/DirectoryListLoader;->setDirectorySearchMode(I)V

    .line 445
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/contacts/list/DirectoryListLoader;->setLocalInvisibleDirectoryEnabled(Z)V

    .line 446
    return-void
.end method

.method public abstract configureLoader(Landroid/content/CursorLoader;J)V
.end method

.method protected createDefaultDirectoryPartition()Lcom/android/contacts/list/DirectoryPartition;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 151
    new-instance v0, Lcom/android/contacts/list/DirectoryPartition;

    invoke-direct {v0, v3, v3}, Lcom/android/contacts/list/DirectoryPartition;-><init>(ZZ)V

    .line 152
    .local v0, partition:Lcom/android/contacts/list/DirectoryPartition;
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/list/DirectoryPartition;->setDirectoryId(J)V

    .line 153
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d0016

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DirectoryPartition;->setDirectoryType(Ljava/lang/String;)V

    .line 154
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/DirectoryPartition;->setDirectoryAccountType(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/DirectoryPartition;->setPriorityDirectory(Z)V

    .line 156
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/DirectoryPartition;->setPhotoSupported(Z)V

    .line 157
    return-object v0
.end method

.method protected createPinnedSectionHeaderView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "context"
    .parameter "parent"

    .prologue
    .line 122
    new-instance v0, Lcom/android/contacts/list/ContactListPinnedHeaderView;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/contacts/list/ContactListPinnedHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public abstract getContactDisplayName(I)Ljava/lang/String;
.end method

.method public getContactNameDisplayOrder()I
    .locals 1

    .prologue
    .line 313
    iget v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDisplayOrder:I

    return v0
.end method

.method protected getContactUri(ILandroid/database/Cursor;II)Landroid/net/Uri;
    .locals 9
    .parameter "partitionIndex"
    .parameter "cursor"
    .parameter "contactIdColumn"
    .parameter "lookUpKeyColumn"

    .prologue
    .line 798
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 799
    .local v0, contactId:J
    invoke-interface {p2, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 800
    .local v4, lookupKey:Ljava/lang/String;
    invoke-static {v0, v1, v4}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 801
    .local v5, uri:Landroid/net/Uri;
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/list/DirectoryPartition;

    invoke-virtual {v6}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v2

    .line 802
    .local v2, directoryId:J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-eqz v6, :cond_0

    .line 803
    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "directory"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 806
    :cond_0
    return-object v5
.end method

.method public getContactsCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 814
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mContactsCount:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectoryResultLimit()I
    .locals 1

    .prologue
    .line 305
    iget v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDirectoryResultLimit:I

    return v0
.end method

.method public getDisplayPhotos()Z
    .locals 1

    .prologue
    .line 337
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDisplayPhotos:Z

    return v0
.end method

.method public getFilter()Lcom/android/contacts/list/ContactListFilter;
    .locals 1

    .prologue
    .line 764
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    return-object v0
.end method

.method public getHandleCounts()[I
    .locals 1

    .prologue
    .line 948
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mHandleCnt:[I

    return-object v0
.end method

.method public getHeaderTitles()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 938
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mSections:[Ljava/lang/String;

    return-object v0
.end method

.method protected getHugeFontEnabled()Z
    .locals 1

    .prologue
    .line 877
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mHughFontEnabled:Z

    return v0
.end method

.method public getIndexCounts()[I
    .locals 1

    .prologue
    .line 934
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mCounts:[I

    return-object v0
.end method

.method public getItemViewType(II)I
    .locals 3
    .parameter "partitionIndex"
    .parameter "position"

    .prologue
    .line 569
    invoke-super {p0, p1, p2}, Lcom/android/contacts/widget/IndexerListAdapter;->getItemViewType(II)I

    move-result v1

    .line 570
    .local v1, type:I
    invoke-virtual {p0, p2}, Lcom/android/contacts/list/ContactEntryListAdapter;->isUserProfile(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getIndexedPartition()I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 573
    invoke-virtual {p0, p2}, Lcom/android/contacts/list/ContactEntryListAdapter;->getItemPlacementInSection(I)Lcom/android/contacts/widget/IndexerListAdapter$Placement;

    move-result-object v0

    .line 574
    .local v0, placement:Lcom/android/contacts/widget/IndexerListAdapter$Placement;
    iget-boolean v2, v0, Lcom/android/contacts/widget/IndexerListAdapter$Placement;->firstInSection:Z

    if-eqz v2, :cond_1

    .line 576
    .end local v0           #placement:Lcom/android/contacts/widget/IndexerListAdapter$Placement;
    .end local v1           #type:I
    :cond_0
    :goto_0
    return v1

    .line 574
    .restart local v0       #placement:Lcom/android/contacts/widget/IndexerListAdapter$Placement;
    .restart local v1       #type:I
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getItemViewTypeCount()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method protected getPhotoLoader()Lcom/android/contacts/ContactPhotoManager;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mPhotoLoader:Lcom/android/contacts/ContactPhotoManager;

    return-object v0
.end method

.method public getQuantityText(III)Ljava/lang/String;
    .locals 4
    .parameter "count"
    .parameter "zeroResourceId"
    .parameter "pluralResourceId"

    .prologue
    .line 743
    if-nez p1, :cond_0

    .line 744
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 748
    :goto_0
    return-object v1

    .line 746
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3, p1}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 748
    .local v0, format:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mQueryString:Ljava/lang/String;

    return-object v0
.end method

.method public getSortOrder()I
    .locals 1

    .prologue
    .line 321
    iget v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mSortOrder:I

    return v0
.end method

.method public getTwoPaneMode()Z
    .locals 1

    .prologue
    .line 412
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mIsTwoPaneMode:Z

    return v0
.end method

.method public getUpperCaseQueryString()[C
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mUpperCaseQueryString:[C

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 564
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getItemViewTypeCount()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasProfile()Z
    .locals 1

    .prologue
    .line 436
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mProfileExists:Z

    return v0
.end method

.method protected isChangingSplitRatioMode()Z
    .locals 1

    .prologue
    .line 867
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mChagingSplitRatioMode:Z

    return v0
.end method

.method public isChecked(I)Z
    .locals 3
    .parameter "position"

    .prologue
    .line 375
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->getItemId(I)J

    move-result-wide v0

    .line 377
    .local v0, contactId:J
    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->isChecked(J)Z

    move-result v2

    return v2
.end method

.method public isChecked(J)Z
    .locals 2
    .parameter "contactId"

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mCheckedIds:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mCheckedIds:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    const/4 v0, 0x1

    .line 386
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEasAccountPartition(I)Z
    .locals 4
    .parameter "partitionIndex"

    .prologue
    .line 839
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/list/DirectoryPartition;

    .line 840
    .local v1, partition:Lcom/android/contacts/list/DirectoryPartition;
    const/4 v0, 0x0

    .line 842
    .local v0, isEasAccountPartition:Z
    const-string v2, "com.android.exchange"

    invoke-virtual {v1}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryAccountType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "LDAP"

    invoke-virtual {v1}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 844
    :cond_0
    const/4 v0, 0x1

    .line 845
    :cond_1
    return v0
.end method

.method protected isEasAccountPartition(J)Z
    .locals 4
    .parameter "directoryId"

    .prologue
    .line 850
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionByDirectoryId(J)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/list/DirectoryPartition;

    .line 851
    .local v1, partition:Lcom/android/contacts/list/DirectoryPartition;
    const/4 v0, 0x0

    .line 853
    .local v0, isEasAccountPartition:Z
    const-string v2, "com.android.exchange"

    invoke-virtual {v1}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryAccountType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "LDAP"

    invoke-virtual {v1}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 855
    :cond_0
    const/4 v0, 0x1

    .line 856
    :cond_1
    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 587
    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mEmptyListEnabled:Z

    if-nez v1, :cond_1

    .line 595
    :cond_0
    :goto_0
    return v0

    .line 589
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->isSearchMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 590
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0

    .line 591
    :cond_2
    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mLoading:Z

    if-nez v1, :cond_0

    .line 595
    invoke-super {p0}, Lcom/android/contacts/widget/IndexerListAdapter;->isEmpty()Z

    move-result v0

    goto :goto_0
.end method

.method public isGalSearchShowMore(I)Z
    .locals 8
    .parameter "position"

    .prologue
    const/4 v3, 0x0

    .line 819
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionForPosition(I)I

    move-result v2

    .line 823
    .local v2, partitionPosition:I
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->getContactDisplayName(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 829
    .local v0, displayName:Ljava/lang/String;
    int-to-long v4, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    const-string v4, "gal_search_show_more"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 831
    const/4 v3, 0x1

    .line 834
    .end local v0           #displayName:Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 824
    :catch_0
    move-exception v1

    .line 825
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v4, "ContactEntryListAdapter"

    const-string v5, "getContactDisplayName() failed due to NullPointerException, so return false."

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isLoading()Z
    .locals 4

    .prologue
    .line 600
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    .line 601
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 602
    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v2

    .line 603
    .local v2, partition:Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    instance-of v3, v2, Lcom/android/contacts/list/DirectoryPartition;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/android/contacts/list/DirectoryPartition;

    .end local v2           #partition:Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    invoke-virtual {v2}, Lcom/android/contacts/list/DirectoryPartition;->isLoading()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 605
    const/4 v3, 0x1

    .line 608
    :goto_1
    return v3

    .line 601
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 608
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public isMultiSelectEnabled()Z
    .locals 1

    .prologue
    .line 392
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mMultiSelectEnabled:Z

    return v0
.end method

.method public isPhotoSupported(I)Z
    .locals 2
    .parameter "partitionIndex"

    .prologue
    .line 753
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v0

    .line 754
    .local v0, partition:Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    instance-of v1, v0, Lcom/android/contacts/list/DirectoryPartition;

    if-eqz v1, :cond_0

    .line 755
    check-cast v0, Lcom/android/contacts/list/DirectoryPartition;

    .end local v0           #partition:Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    invoke-virtual {v0}, Lcom/android/contacts/list/DirectoryPartition;->isPhotoSupported()Z

    move-result v1

    .line 757
    :goto_0
    return v1

    .restart local v0       #partition:Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isQuickContactEnabled()Z
    .locals 1

    .prologue
    .line 361
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mQuickContactEnabled:Z

    return v0
.end method

.method public isSearchMode()Z
    .locals 1

    .prologue
    .line 264
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mSearchMode:Z

    return v0
.end method

.method public isSelectionVisible()Z
    .locals 1

    .prologue
    .line 353
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mSelectionVisible:Z

    return v0
.end method

.method protected isUserProfile(I)Z
    .locals 7
    .parameter "position"

    .prologue
    const/4 v5, 0x1

    .line 716
    const/4 v1, 0x0

    .line 717
    .local v1, isUserProfile:Z
    if-nez p1, :cond_1

    .line 718
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionForPosition(I)I

    move-result v3

    .line 719
    .local v3, partition:I
    if-ltz v3, :cond_1

    .line 722
    invoke-virtual {p0, v3}, Lcom/android/contacts/list/ContactEntryListAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v6

    invoke-interface {v6}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    .line 724
    .local v2, offset:I
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 725
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 726
    const-string v6, "is_user_profile"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 727
    .local v4, profileColumnIndex:I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_0

    .line 728
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-ne v6, v5, :cond_2

    move v1, v5

    .line 731
    :cond_0
    :goto_0
    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z
    :try_end_0
    .catch Landroid/database/StaleDataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 738
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v2           #offset:I
    .end local v3           #partition:I
    .end local v4           #profileColumnIndex:I
    :cond_1
    :goto_1
    return v1

    .line 728
    .restart local v0       #cursor:Landroid/database/Cursor;
    .restart local v2       #offset:I
    .restart local v3       #partition:I
    .restart local v4       #profileColumnIndex:I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 733
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v4           #profileColumnIndex:I
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public isVoLTEEnabled()Z
    .locals 1

    .prologue
    .line 925
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mIsVoLTEEnabled:Z

    return v0
.end method

.method protected newHeaderView(Landroid/content/Context;ILandroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "partition"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 652
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 653
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f0400dc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public onDataReload()V
    .locals 9

    .prologue
    .line 202
    const/4 v4, 0x0

    .line 204
    .local v4, notify:Z
    const/4 v3, 0x0

    .line 205
    .local v3, isCursorClosed:Z
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    .line 206
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 207
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v5

    .line 208
    .local v5, partition:Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    instance-of v6, v5, Lcom/android/contacts/list/DirectoryPartition;

    if-eqz v6, :cond_2

    move-object v1, v5

    .line 209
    check-cast v1, Lcom/android/contacts/list/DirectoryPartition;

    .line 210
    .local v1, directoryPartition:Lcom/android/contacts/list/DirectoryPartition;
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactEntryListAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactEntryListAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v6

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 211
    const-string v6, "ContactEntryListAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Current["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] cursor isClosed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const/4 v3, 0x1

    .line 214
    :cond_0
    invoke-virtual {v1}, Lcom/android/contacts/list/DirectoryPartition;->isLoading()Z

    move-result v6

    if-nez v6, :cond_1

    .line 215
    const/4 v4, 0x1

    .line 217
    :cond_1
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/android/contacts/list/DirectoryPartition;->setStatus(I)V

    .line 206
    .end local v1           #directoryPartition:Lcom/android/contacts/list/DirectoryPartition;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 220
    .end local v5           #partition:Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    :cond_3
    if-eqz v4, :cond_4

    if-nez v3, :cond_4

    .line 221
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    .line 223
    :cond_4
    return-void
.end method

.method public onDataReloadDirectoryPartition(I)V
    .locals 3
    .parameter "partitionIndex"

    .prologue
    .line 227
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v1

    .line 228
    .local v1, partition:Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    instance-of v2, v1, Lcom/android/contacts/list/DirectoryPartition;

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 229
    check-cast v0, Lcom/android/contacts/list/DirectoryPartition;

    .line 230
    .local v0, directoryPartition:Lcom/android/contacts/list/DirectoryPartition;
    invoke-virtual {v0}, Lcom/android/contacts/list/DirectoryPartition;->isLoading()Z

    move-result v2

    if-nez v2, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    .line 233
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/DirectoryPartition;->setStatus(I)V

    .line 235
    .end local v0           #directoryPartition:Lcom/android/contacts/list/DirectoryPartition;
    :cond_1
    return-void
.end method

.method removeDirectoriesAfterDefault()V
    .locals 7

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v2

    .line 171
    .local v2, partitionCount:I
    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 172
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v1

    .line 173
    .local v1, partition:Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    instance-of v3, v1, Lcom/android/contacts/list/DirectoryPartition;

    if-eqz v3, :cond_1

    check-cast v1, Lcom/android/contacts/list/DirectoryPartition;

    .end local v1           #partition:Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    invoke-virtual {v1}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 180
    :cond_0
    return-void

    .line 177
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->removePartition(I)V

    .line 171
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method protected setChangingSplitRatioMode(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 861
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mChagingSplitRatioMode:Z

    .line 862
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    .line 863
    return-void
.end method

.method public setCheck(JZ)V
    .locals 3
    .parameter "contactId"
    .parameter "checked"

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mCheckedIds:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    return-void
.end method

.method public setContactNameDisplayOrder(I)V
    .locals 0
    .parameter "displayOrder"

    .prologue
    .line 317
    iput p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDisplayOrder:I

    .line 318
    return-void
.end method

.method public setDarkTheme(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 440
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDarkTheme:Z

    .line 441
    return-void
.end method

.method public setDataRestrictedByCallingPackage(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 885
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDataRestrictedByCallingPackage:Z

    .line 886
    return-void
.end method

.method public setDirectoryResultLimit(I)V
    .locals 0
    .parameter "limit"

    .prologue
    .line 309
    iput p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDirectoryResultLimit:I

    .line 310
    return-void
.end method

.method public setDirectorySearchMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 301
    iput p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDirectorySearchMode:I

    .line 302
    return-void
.end method

.method public setDisplayPhotos(Z)V
    .locals 0
    .parameter "displayPhotos"

    .prologue
    .line 341
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mDisplayPhotos:Z

    .line 342
    return-void
.end method

.method public setEmptyListEnabled(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 349
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mEmptyListEnabled:Z

    .line 350
    return-void
.end method

.method public setFilter(Lcom/android/contacts/list/ContactListFilter;)V
    .locals 0
    .parameter "filter"

    .prologue
    .line 768
    iput-object p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    .line 769
    return-void
.end method

.method public setHandleCounts([I)V
    .locals 3
    .parameter "handleCnt"

    .prologue
    .line 942
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 943
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mHandleCnt:[I

    aget v2, p1, v0

    aput v2, v1, v0

    .line 942
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 945
    :cond_0
    return-void
.end method

.method protected setHugeFontEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 872
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mHughFontEnabled:Z

    .line 873
    return-void
.end method

.method public setIncludeProfile(Z)V
    .locals 0
    .parameter "includeProfile"

    .prologue
    .line 420
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mIncludeProfile:Z

    .line 421
    return-void
.end method

.method public setMultiSelectEnabled(Z)V
    .locals 1
    .parameter "multiSelctEnabled"

    .prologue
    .line 397
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mMultiSelectEnabled:Z

    if-eq v0, p1, :cond_0

    .line 398
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mMultiSelectEnabled:Z

    .line 400
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    .line 402
    :cond_0
    return-void
.end method

.method public setPhotoLoader(Lcom/android/contacts/ContactPhotoManager;)V
    .locals 0
    .parameter "photoLoader"

    .prologue
    .line 329
    iput-object p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mPhotoLoader:Lcom/android/contacts/ContactPhotoManager;

    .line 330
    return-void
.end method

.method protected setPinnedHeaderContactsCount(Landroid/view/View;)V
    .locals 1
    .parameter "header"

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mProfileExists:Z

    if-eqz v0, :cond_0

    .line 135
    check-cast p1, Lcom/android/contacts/list/ContactListPinnedHeaderView;

    .end local p1
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mContactsCount:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/contacts/list/ContactListPinnedHeaderView;->setCountView(Ljava/lang/String;)V

    .line 139
    :goto_0
    return-void

    .line 137
    .restart local p1
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->clearPinnedHeaderContactsCount(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected setPinnedSectionTitle(Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .parameter "pinnedHeaderView"
    .parameter "title"

    .prologue
    .line 127
    check-cast p1, Lcom/android/contacts/list/ContactListPinnedHeaderView;

    .end local p1
    invoke-virtual {p1, p2}, Lcom/android/contacts/list/ContactListPinnedHeaderView;->setSectionHeader(Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public setProfileExists(Z)V
    .locals 3
    .parameter "exists"

    .prologue
    .line 424
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mProfileExists:Z

    .line 426
    if-eqz p1, :cond_0

    .line 427
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getIndexer()Landroid/widget/SectionIndexer;

    move-result-object v0

    .line 428
    .local v0, indexer:Landroid/widget/SectionIndexer;
    if-eqz v0, :cond_0

    .line 429
    check-cast v0, Lcom/android/contacts/list/ContactsSectionIndexer;

    .end local v0           #indexer:Landroid/widget/SectionIndexer;
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d0227

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactsSectionIndexer;->setProfileHeader(Ljava/lang/String;)V

    .line 433
    :cond_0
    return-void
.end method

.method public setQueryString(Ljava/lang/String;)V
    .locals 3
    .parameter "queryString"

    .prologue
    .line 276
    iput-object p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mQueryString:Ljava/lang/String;

    .line 277
    if-eqz p1, :cond_0

    .line 278
    const-string v1, "[  ]+"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 279
    .local v0, p:Ljava/util/regex/Pattern;
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 280
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 282
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 285
    .end local v0           #p:Ljava/util/regex/Pattern;
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 286
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mUpperCaseQueryString:[C

    .line 290
    :goto_0
    return-void

    .line 288
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mUpperCaseQueryString:[C

    goto :goto_0
.end method

.method public setQuickContactEnabled(Z)V
    .locals 0
    .parameter "quickContactEnabled"

    .prologue
    .line 365
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mQuickContactEnabled:Z

    .line 366
    return-void
.end method

.method public setSearchMode(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 268
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mSearchMode:Z

    .line 269
    return-void
.end method

.method public setSelectionVisible(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 357
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mSelectionVisible:Z

    .line 358
    return-void
.end method

.method public setSortOrder(I)V
    .locals 0
    .parameter "sortOrder"

    .prologue
    .line 325
    iput p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mSortOrder:I

    .line 326
    return-void
.end method

.method public setTwoPaneModeEnabled(Z)V
    .locals 1
    .parameter "isTwoPaneMode"

    .prologue
    .line 406
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mIsTwoPaneMode:Z

    if-eq v0, p1, :cond_0

    .line 407
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mIsTwoPaneMode:Z

    .line 409
    :cond_0
    return-void
.end method

.method public setVoLTEEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 929
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mIsVoLTEEnabled:Z

    .line 930
    return-void
.end method

.method public shouldIncludeProfile()Z
    .locals 1

    .prologue
    .line 416
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListAdapter;->mIncludeProfile:Z

    return v0
.end method
