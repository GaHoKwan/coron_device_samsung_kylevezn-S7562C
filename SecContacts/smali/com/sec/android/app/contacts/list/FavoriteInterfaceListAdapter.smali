.class public Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;
.super Lcom/android/contacts/list/ContactListAdapter;
.source "FavoriteInterfaceListAdapter.java"


# instance fields
.field private final CONTACT_FILTER_URI_WITHOUT_SNIPPET:Landroid/net/Uri;

.field private final DIVIDER:I

.field private final FREQUENT:I

.field private final STARRED:I

.field private mActionCode:I

.field private mContactCursor:Landroid/database/Cursor;

.field private mCtx:Landroid/content/Context;

.field private mDividerPosition:I

.field public mFavObserver:Landroid/database/ContentObserver;

.field private mIsFavChangedInBg:Z

.field private mSelectedInfoHashSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0, p1}, Lcom/android/contacts/list/ContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 45
    const-string v0, "content://com.android.contacts/contacts_list/filter/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->CONTACT_FILTER_URI_WITHOUT_SNIPPET:Landroid/net/Uri;

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->mContactCursor:Landroid/database/Cursor;

    .line 49
    iput v1, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->STARRED:I

    .line 50
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->DIVIDER:I

    .line 51
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->FREQUENT:I

    .line 323
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->mIsFavChangedInBg:Z

    .line 329
    new-instance v0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter$1;-><init>(Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->mFavObserver:Landroid/database/ContentObserver;

    .line 57
    iput-object p1, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->mCtx:Landroid/content/Context;

    .line 58
    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->mIsFavChangedInBg:Z

    return p1
.end method

.method protected static buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .parameter "uri"

    .prologue
    .line 283
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "address_book_index_extras"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private getDivider(ILandroid/database/Cursor;)Landroid/view/View;
    .locals 14
    .parameter "partitionIndex"
    .parameter "cursor"

    .prologue
    .line 135
    iget-object v9, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->mContext:Landroid/content/Context;

    const v10, 0x7f04011f

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 136
    .local v4, dividerView:Landroid/view/View;
    const v9, 0x7f0901a7

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 137
    .local v8, text:Landroid/widget/TextView;
    iget-object v9, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->mContext:Landroid/content/Context;

    const v10, 0x7f0d00c4

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    const v9, 0x7f090247

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 139
    .local v5, finalCount:Landroid/widget/TextView;
    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->isSearchMode()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 140
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v7

    .line 141
    .local v7, query:Ljava/lang/String;
    if-nez v7, :cond_0

    .line 142
    const-string v7, ""

    .line 144
    :cond_0
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 145
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 146
    iget-object v9, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->mContext:Landroid/content/Context;

    const v10, 0x7f0d01d0

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 148
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v6

    .local v6, partition:Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    move-object v3, v6

    .line 149
    check-cast v3, Lcom/android/contacts/list/DirectoryPartition;

    .line 150
    .local v3, directoryPartition:Lcom/android/contacts/list/DirectoryPartition;
    invoke-virtual {v3}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v1

    .line 151
    .local v1, directoryId:J
    invoke-virtual {v3}, Lcom/android/contacts/list/DirectoryPartition;->isLoading()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 152
    const v9, 0x7f0d01b8

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(I)V

    .line 175
    .end local v1           #directoryId:J
    .end local v3           #directoryPartition:Lcom/android/contacts/list/DirectoryPartition;
    .end local v6           #partition:Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    .end local v7           #query:Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v4

    .line 154
    .restart local v1       #directoryId:J
    .restart local v3       #directoryPartition:Lcom/android/contacts/list/DirectoryPartition;
    .restart local v6       #partition:Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    .restart local v7       #query:Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    .line 155
    .local v0, count:I
    if-eqz p2, :cond_3

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->isClosed()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 156
    :cond_3
    const/4 v0, 0x0

    .line 160
    :goto_1
    const-wide/16 v9, 0x0

    cmp-long v9, v1, v9

    if-eqz v9, :cond_5

    const-wide/16 v9, 0x1

    cmp-long v9, v1, v9

    if-eqz v9, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->getDirectoryResultLimit()I

    move-result v9

    if-lt v0, v9, :cond_5

    .line 163
    iget-object v9, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->mContext:Landroid/content/Context;

    const v10, 0x7f0d0080

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->getDirectoryResultLimit()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 158
    :cond_4
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_1

    .line 166
    :cond_5
    const v9, 0x7f0d0081

    const v10, 0x7f100003

    invoke-virtual {p0, v0, v9, v10}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->getQuantityText(III)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 171
    .end local v0           #count:I
    .end local v1           #directoryId:J
    .end local v3           #directoryPartition:Lcom/android/contacts/list/DirectoryPartition;
    .end local v6           #partition:Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    :cond_6
    iget-object v9, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->mContext:Landroid/content/Context;

    const v10, 0x7f0d00c4

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    const/16 v9, 0x8

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private getDividerPosition(Landroid/database/Cursor;)I
    .locals 4
    .parameter "cursor"

    .prologue
    .line 412
    const/4 v0, 0x0

    .line 413
    .local v0, cnt:I
    const-string v3, "starred"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 415
    .local v2, staredIndex:I
    :cond_0
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-nez v3, :cond_1

    move v1, v0

    .line 422
    .end local v0           #cnt:I
    .local v1, cnt:I
    :goto_0
    return v1

    .line 418
    .end local v1           #cnt:I
    .restart local v0       #cnt:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 419
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v0

    .line 422
    .end local v0           #cnt:I
    .restart local v1       #cnt:I
    goto :goto_0
.end method


# virtual methods
.method protected bindCheckbox(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;I)V
    .locals 5
    .parameter "view"
    .parameter "cursor"
    .parameter "position"

    .prologue
    .line 268
    const/4 v2, 0x0

    .line 269
    .local v2, isChecked:Z
    iget-object v3, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->mSelectedInfoHashSet:Ljava/util/Set;

    if-eqz v3, :cond_0

    .line 270
    const/4 v3, 0x0

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 271
    .local v0, id:J
    iget-object v3, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->mSelectedInfoHashSet:Ljava/util/Set;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 272
    const/4 v2, 0x1

    .line 279
    .end local v0           #id:J
    :cond_0
    :goto_0
    invoke-super {p0, p1, v2}, Lcom/android/contacts/list/ContactListAdapter;->bindCheckBox(Lcom/android/contacts/list/ContactListItemView;Z)V

    .line 280
    return-void

    .line 275
    .restart local v0       #id:J
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected bindSectionHeaderAndDivider(Lcom/android/contacts/list/ContactListItemView;I)V
    .locals 4
    .parameter "view"
    .parameter "position"

    .prologue
    const/4 v3, 0x0

    .line 288
    invoke-virtual {p0, p2}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->getSectionForPosition(I)I

    move-result v0

    .line 289
    .local v0, section:I
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->getPositionForSection(I)I

    move-result v2

    if-ne v2, p2, :cond_0

    .line 290
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->getSections()[Ljava/lang/Object;

    move-result-object v2

    aget-object v1, v2, v0

    check-cast v1, Ljava/lang/String;

    .line 291
    .local v1, title:Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/android/contacts/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    .line 298
    .end local v1           #title:Ljava/lang/String;
    :goto_0
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->getPositionForSection(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v2, p2, :cond_1

    .line 299
    invoke-virtual {p1, v3}, Lcom/android/contacts/list/ContactListItemView;->setDividerVisible(Z)V

    .line 303
    :goto_1
    return-void

    .line 293
    :cond_0
    invoke-virtual {p1, v3}, Lcom/android/contacts/list/ContactListItemView;->setDividerVisible(Z)V

    .line 294
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/contacts/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;)V

    goto :goto_0

    .line 301
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/android/contacts/list/ContactListItemView;->setDividerVisible(Z)V

    goto :goto_1
.end method

.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 10
    .parameter "itemView"
    .parameter "partition"
    .parameter "cursor"
    .parameter "position"

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x0

    .line 212
    move-object v1, p1

    check-cast v1, Lcom/android/contacts/list/ContactListItemView;

    .line 213
    .local v1, view:Lcom/android/contacts/list/ContactListItemView;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Contact_EnableStrokeSortList"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {p0, v1, p4}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->bindSectionHeaderAndDivider(Lcom/android/contacts/list/ContactListItemView;I)V

    .line 218
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->getUpperCaseQueryString()[C

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactListItemView;->setHighlightedPrefix([C)V

    .line 220
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->isSelectionVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    invoke-virtual {p0, p2, p3}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->isSelectedContact(ILandroid/database/Cursor;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactListItemView;->setActivated(Z)V

    .line 224
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v8

    .line 225
    .local v8, filter:Lcom/android/contacts/list/ContactListFilter;
    iget v0, v8, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/16 v2, -0xe

    if-ne v0, v2, :cond_2

    .line 226
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Contact_EnableBackupSvc4Ctc"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-nez p4, :cond_6

    iget v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->mDividerPosition:I

    if-lez v0, :cond_6

    .line 229
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0084

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v5}, Lcom/android/contacts/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;Z)V

    .line 238
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->getDisplayPhotos()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 239
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->isQuickContactEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 240
    const/4 v4, 0x7

    const/16 v6, 0x9

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->bindQuickContact(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;III)V

    .line 248
    :cond_3
    :goto_2
    :try_start_0
    invoke-virtual {p0, v1, p3}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->bindName(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;)V

    .line 250
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->isMultiSelectEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 251
    invoke-virtual {p0, v1, p3, p4}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->bindCheckbox(Lcom/android/contacts/list/ContactListItemView;Landroid/database/Cursor;I)V
    :try_end_0
    .catch Landroid/database/StaleDataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :cond_4
    :goto_3
    invoke-virtual {v1, v9}, Lcom/android/contacts/list/ContactListItemView;->setSnippet(Ljava/lang/String;)V

    .line 258
    return-void

    .end local v8           #filter:Lcom/android/contacts/list/ContactListFilter;
    :cond_5
    move-object v0, v9

    .line 218
    goto :goto_0

    .line 230
    .restart local v8       #filter:Lcom/android/contacts/list/ContactListFilter;
    :cond_6
    iget v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->mDividerPosition:I

    if-ne p4, v0, :cond_7

    .line 231
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0d00c4

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v5}, Lcom/android/contacts/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;Z)V

    goto :goto_1

    .line 232
    :cond_7
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Contact_EnableBackupSvc4Ctc"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 234
    invoke-virtual {v1, v9, v5}, Lcom/android/contacts/list/ContactListItemView;->setSectionHeader(Ljava/lang/String;Z)V

    goto :goto_1

    .line 243
    :cond_8
    invoke-virtual {p0, v1, p2, p3}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->bindPhoto(Lcom/android/contacts/list/ContactListItemView;ILandroid/database/Cursor;)V

    goto :goto_2

    .line 253
    :catch_0
    move-exception v7

    .line 254
    .local v7, e:Landroid/database/StaleDataException;
    invoke-virtual {v7}, Landroid/database/StaleDataException;->printStackTrace()V

    goto :goto_3
.end method

.method public configureLoader(Landroid/content/CursorLoader;J)V
    .locals 6
    .parameter "loader"
    .parameter "directoryId"

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v1

    .line 63
    .local v1, filter:Lcom/android/contacts/list/ContactListFilter;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->isSearchMode()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 64
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->getQueryString()Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, query:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 66
    const-string v2, ""

    .line 68
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 69
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 72
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->configureUri(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V

    .line 73
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->configureProjection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V

    .line 74
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->configureSelection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V

    .line 100
    .end local v2           #query:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->getSortOrder()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 101
    const-string v3, "sort_key"

    .line 106
    .local v3, sortOrder:Ljava/lang/String;
    :goto_1
    invoke-virtual {p1, v3}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    .line 108
    return-void

    .line 78
    .end local v3           #sortOrder:Ljava/lang/String;
    .restart local v2       #query:Ljava/lang/String;
    :cond_1
    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-eqz v4, :cond_2

    const-wide/16 v4, 0x1

    cmp-long v4, p2, v4

    if-eqz v4, :cond_2

    .line 79
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 80
    .local v0, builder:Landroid/net/Uri$Builder;
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 81
    const-string v4, "directory"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 83
    const-string v4, "limit"

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->getDirectoryResultLimit()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 89
    :goto_2
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 90
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->configureSelection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V

    .line 91
    sget-object v4, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->FILTER_PROJECTION_WITHOUT_SNIPPET:[Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    goto :goto_0

    .line 86
    .end local v0           #builder:Landroid/net/Uri$Builder;
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->CONTACT_FILTER_URI_WITHOUT_SNIPPET:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 87
    .restart local v0       #builder:Landroid/net/Uri$Builder;
    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_2

    .line 94
    .end local v0           #builder:Landroid/net/Uri$Builder;
    .end local v2           #query:Ljava/lang/String;
    :cond_3
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->configureUri(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V

    .line 95
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->configureProjection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V

    .line 96
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->configureSelection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V

    goto :goto_0

    .line 103
    :cond_4
    const-string v3, "sort_key_alt"

    .restart local v3       #sortOrder:Ljava/lang/String;
    goto :goto_1
.end method

.method protected configureProjection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V
    .locals 1
    .parameter "loader"
    .parameter "directoryId"
    .parameter "filter"

    .prologue
    .line 336
    sget-object v0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->PROJECTION_CONTACT:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setProjection([Ljava/lang/String;)V

    .line 347
    return-void
.end method

.method protected configureSelection(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V
    .locals 4
    .parameter "loader"
    .parameter "directoryId"
    .parameter "filter"

    .prologue
    .line 351
    if-nez p4, :cond_1

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-nez v2, :cond_0

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 360
    .local v0, selection:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 362
    .local v1, selectionArgs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget v2, p4, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    sparse-switch v2, :sswitch_data_0

    .line 392
    :goto_1
    :sswitch_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 393
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/CursorLoader;->setSelectionArgs([Ljava/lang/String;)V

    goto :goto_0

    .line 374
    :sswitch_1
    const-string v2, "starred=0 AND is_sim = 0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 379
    :sswitch_2
    const-string v2, "starred!=0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 383
    :sswitch_3
    const-string v2, "starred=0 AND has_phone_number = 1 AND is_sim = 0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 362
    :sswitch_data_0
    .sparse-switch
        -0xf -> :sswitch_3
        -0xd -> :sswitch_1
        -0x6 -> :sswitch_0
        -0x4 -> :sswitch_2
        -0x2 -> :sswitch_0
    .end sparse-switch
.end method

.method protected configureUri(Landroid/content/CursorLoader;JLcom/android/contacts/list/ContactListFilter;)V
    .locals 4
    .parameter "loader"
    .parameter "directoryId"
    .parameter "filter"

    .prologue
    .line 306
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 308
    .local v0, uri:Landroid/net/Uri;
    iget v1, p4, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    packed-switch v1, :pswitch_data_0

    .line 314
    :goto_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableStrokeSortList"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->isSectionHeaderDisplayEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 317
    invoke-static {v0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->buildSectionIndexerUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 319
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->mCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->mFavObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 320
    invoke-virtual {p1, v0}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 321
    return-void

    .line 310
    :pswitch_0
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_STREQUENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 308
    :pswitch_data_0
    .packed-switch -0xe
        :pswitch_0
    .end packed-switch
.end method

.method protected getHeaderView(ILandroid/database/Cursor;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "partition"
    .parameter "cursor"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 263
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->getDivider(ILandroid/database/Cursor;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 121
    iget v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->mDividerPosition:I

    if-ge p1, v0, :cond_0

    .line 122
    const/4 v0, 0x0

    .line 126
    :goto_0
    return v0

    .line 123
    :cond_0
    iget v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->mDividerPosition:I

    if-ne p1, v0, :cond_1

    .line 124
    const/4 v0, 0x1

    goto :goto_0

    .line 126
    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method

.method protected getView(ILandroid/database/Cursor;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "partition"
    .parameter "cursor"
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 182
    if-eqz p4, :cond_0

    instance-of v0, p4, Lcom/android/contacts/list/ContactListItemView;

    if-eqz v0, :cond_0

    .line 183
    move-object v6, p4

    .line 188
    .local v6, view:Landroid/view/View;
    :goto_0
    invoke-virtual {p0, v6, p1, p2, p3}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->bindView(Landroid/view/View;ILandroid/database/Cursor;I)V

    .line 190
    return-object v6

    .line 185
    .end local v6           #view:Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->mContext:Landroid/content/Context;

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .restart local v6       #view:Landroid/view/View;
    goto :goto_0
.end method

.method public hasFavUpdatedInBg()Z
    .locals 1

    .prologue
    .line 326
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->mIsFavChangedInBg:Z

    return v0
.end method

.method public setActionCode(I)V
    .locals 0
    .parameter "actionCode"

    .prologue
    .line 397
    iput p1, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->mActionCode:I

    .line 398
    return-void
.end method

.method public setContactCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 405
    iput-object p1, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->mContactCursor:Landroid/database/Cursor;

    .line 406
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 407
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->getDividerPosition(Landroid/database/Cursor;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->mDividerPosition:I

    .line 408
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->notifyDataSetChanged()V

    .line 409
    return-void
.end method

.method public setSelectedInfoHashSet(Ljava/util/Set;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 401
    .local p1, data:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    iput-object p1, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->mSelectedInfoHashSet:Ljava/util/Set;

    .line 402
    return-void
.end method
