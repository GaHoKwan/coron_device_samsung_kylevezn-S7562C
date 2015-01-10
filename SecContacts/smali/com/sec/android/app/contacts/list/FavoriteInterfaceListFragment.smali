.class public Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;
.super Lcom/android/contacts/list/ContactEntryListFragment;
.source "FavoriteInterfaceListFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$DeleteAllTaskFavoriteList;,
        Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$AddAllTaskFavoriteList;,
        Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$onFavoritesActionBarUpdateListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/contacts/list/ContactEntryListFragment",
        "<",
        "Lcom/android/contacts/list/ContactEntryListAdapter;",
        ">;"
    }
.end annotation


# static fields
.field private static sProgressDialog:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/ProgressDialog;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActionCode:I

.field private mAddAllTask:Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$AddAllTaskFavoriteList;

.field private mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mDeleteAllTask:Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$DeleteAllTaskFavoriteList;

.field private mEmptyView:Landroid/view/View;

.field private mFilter:Lcom/android/contacts/list/ContactListFilter;

.field private mFrameContainer:Landroid/widget/FrameLayout;

.field private mHeaderView:Landroid/view/View;

.field private mListener:Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$onFavoritesActionBarUpdateListener;

.field private mNoMatchView:Landroid/view/View;

.field private mSearchMode:Z

.field private mSearchView:Landroid/widget/SearchView;

.field private mSearchViewLayout:Landroid/view/View;

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

.field private mView:Landroid/view/View;

.field private threadRunning:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 93
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;-><init>()V

    .line 633
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->threadRunning:Z

    .line 94
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setPhotoLoaderEnabled(Z)V

    .line 95
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 96
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setQuickContactEnabled(Z)V

    .line 97
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setDirectorySearchMode(I)V

    .line 98
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSelectedInfoHashSet:Ljava/util/Set;

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;)Landroid/widget/SearchView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400()V
    .locals 0

    .prologue
    .line 57
    invoke-static {}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->dismissProgressDialog()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->announceItStopped()V

    return-void
.end method

.method static synthetic access$602(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    sput-object p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->sProgressDialog:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private addContactFromSelectAll(IJ)V
    .locals 2
    .parameter "position"
    .parameter "id"

    .prologue
    .line 410
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSelectedInfoHashSet:Ljava/util/Set;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 413
    return-void
.end method

.method private addSelectedContact(IJ)V
    .locals 2
    .parameter "position"
    .parameter "id"

    .prologue
    .line 391
    invoke-direct {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->checkIfRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSelectedInfoHashSet:Ljava/util/Set;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 393
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->onSelectedInfoChanged()V

    .line 395
    :cond_0
    return-void
.end method

.method private declared-synchronized announceItStopped()V
    .locals 1

    .prologue
    .line 643
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->threadRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 644
    monitor-exit p0

    return-void

    .line 643
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized checkIfRunning()Z
    .locals 1

    .prologue
    .line 635
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->threadRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private configureSearchView()V
    .locals 11

    .prologue
    .line 309
    sget-boolean v9, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->sIsTwoPaneMode:Z

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSearchViewLayout:Landroid/view/View;

    if-eqz v9, :cond_1

    .line 311
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v4

    .line 313
    .local v4, listView:Landroid/view/View;
    iget-object v9, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mContext:Landroid/content/Context;

    if-nez v9, :cond_0

    .line 315
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mContext:Landroid/content/Context;

    .line 317
    :cond_0
    iget-object v9, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c00a6

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 322
    .local v1, defaultSearchViewLeftRightPadding:I
    iget-object v9, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c00a7

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 327
    .local v2, defaultSearchViewTopBottomPadding:I
    iget-object v9, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c00a8

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    .line 331
    .local v6, searchViewTopBottomPadding:I
    iget-object v9, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0c00a9

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    .line 336
    .local v7, searchViewTopBottomPaddingInPopupList:I
    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v9

    sub-int v3, v9, v1

    .line 338
    .local v3, leftPadding:I
    iget-object v9, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSearchViewLayout:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    sub-int v5, v9, v1

    .line 340
    .local v5, rightPadding:I
    sub-int v8, v6, v2

    .line 342
    .local v8, topPadding:I
    sub-int v0, v6, v2

    .line 344
    .local v0, bottomPadding:I
    iget-boolean v9, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mDeleteMode:Z

    if-nez v9, :cond_3

    .line 346
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getVerticalTwIndexScrollbarPosition()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 348
    add-int/lit8 v5, v5, 0xc

    .line 367
    :goto_0
    iget-object v9, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSearchViewLayout:Landroid/view/View;

    invoke-virtual {v9, v3, v8, v5, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 372
    .end local v0           #bottomPadding:I
    .end local v1           #defaultSearchViewLeftRightPadding:I
    .end local v2           #defaultSearchViewTopBottomPadding:I
    .end local v3           #leftPadding:I
    .end local v4           #listView:Landroid/view/View;
    .end local v5           #rightPadding:I
    .end local v6           #searchViewTopBottomPadding:I
    .end local v7           #searchViewTopBottomPaddingInPopupList:I
    .end local v8           #topPadding:I
    :cond_1
    return-void

    .line 352
    .restart local v0       #bottomPadding:I
    .restart local v1       #defaultSearchViewLeftRightPadding:I
    .restart local v2       #defaultSearchViewTopBottomPadding:I
    .restart local v3       #leftPadding:I
    .restart local v4       #listView:Landroid/view/View;
    .restart local v5       #rightPadding:I
    .restart local v6       #searchViewTopBottomPadding:I
    .restart local v7       #searchViewTopBottomPaddingInPopupList:I
    .restart local v8       #topPadding:I
    :cond_2
    add-int/lit8 v3, v3, 0xc

    goto :goto_0

    .line 359
    :cond_3
    sub-int v8, v7, v2

    .line 362
    sub-int v0, v7, v2

    goto :goto_0
.end method

.method private createCustomSearchbar()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 265
    iget v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mActionCode:I

    const/16 v1, 0x15e

    if-ne v0, v1, :cond_1

    .line 266
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSearchViewLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 267
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mView:Landroid/view/View;

    const v1, 0x7f090169

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSearchView:Landroid/widget/SearchView;

    .line 268
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v3}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 269
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 270
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSearchView:Landroid/widget/SearchView;

    const v1, 0x7f0d01df

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 271
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSearchView:Landroid/widget/SearchView;

    new-instance v1, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$1;-><init>(Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 292
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->setFocusable(Z)V

    .line 293
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSearchView:Landroid/widget/SearchView;

    iget-object v0, v0, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, v4, v2, v4, v2}, Landroid/widget/SearchView$SearchAutoComplete;->setPadding(IIII)V

    .line 296
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/widget/SearchView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 298
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 299
    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setSearchView(Z)V

    .line 304
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->configureSearchView()V

    .line 306
    return-void

    .line 300
    :cond_1
    iget v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mActionCode:I

    const/16 v1, 0x15f

    if-ne v0, v1, :cond_0

    .line 301
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSearchViewLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 302
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setSearchView(Z)V

    goto :goto_0
.end method

.method private deleteFavoriteData(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/StringBuffer;)V
    .locals 3
    .parameter "cr"
    .parameter "values"
    .parameter "sb"

    .prologue
    const/4 v2, 0x0

    .line 769
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 770
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 771
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getFrequentDeleteUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 772
    .local v0, contactFrequentDeleteUri:Landroid/net/Uri;
    invoke-virtual {p1, v0, p2, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 774
    .end local v0           #contactFrequentDeleteUri:Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method private static dismissProgressDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 865
    sget-object v1, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->sProgressDialog:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_1

    move-object v0, v2

    .line 866
    .local v0, dialog:Landroid/app/ProgressDialog;
    :goto_0
    if-eqz v0, :cond_0

    .line 868
    :try_start_0
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 873
    :cond_0
    :goto_1
    sput-object v2, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->sProgressDialog:Ljava/lang/ref/WeakReference;

    .line 874
    return-void

    .line 865
    .end local v0           #dialog:Landroid/app/ProgressDialog;
    :cond_1
    sget-object v1, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->sProgressDialog:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ProgressDialog;

    move-object v0, v1

    goto :goto_0

    .line 869
    .restart local v0       #dialog:Landroid/app/ProgressDialog;
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private getFrequentDeleteUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .parameter "dataId"

    .prologue
    .line 777
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "usagefeedback_delete"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private getUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .parameter "contactId"

    .prologue
    .line 781
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private invalidateSelectedMap(Landroid/database/Cursor;)V
    .locals 7
    .parameter "data"

    .prologue
    .line 508
    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v5}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v4

    .line 509
    .local v4, mTempadapterHashSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    .line 510
    .local v0, countId:I
    if-eqz p1, :cond_4

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_4

    .line 511
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 514
    :cond_0
    :try_start_0
    const-string v5, "_id"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 515
    .local v2, lC_Id:J
    iget-object v5, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSelectedInfoHashSet:Ljava/util/Set;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 516
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 517
    add-int/lit8 v0, v0, 0x1

    .line 519
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_0

    .line 524
    .end local v2           #lC_Id:J
    :cond_2
    if-lez v0, :cond_3

    .line 525
    iput-object v4, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSelectedInfoHashSet:Ljava/util/Set;

    .line 532
    :goto_0
    return-void

    .line 520
    :catch_0
    move-exception v1

    .line 521
    .local v1, e:Ljava/lang/IllegalStateException;
    goto :goto_0

    .line 527
    .end local v1           #e:Ljava/lang/IllegalStateException;
    :cond_3
    iget-object v5, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSelectedInfoHashSet:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->clear()V

    goto :goto_0

    .line 529
    :cond_4
    iget-object v5, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSelectedInfoHashSet:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->clear()V

    goto :goto_0
.end method

.method private isSelectedContact(J)Z
    .locals 2
    .parameter "id"

    .prologue
    .line 379
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSelectedInfoHashSet:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private declared-synchronized markAsItsRunning()V
    .locals 1

    .prologue
    .line 639
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->threadRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 640
    monitor-exit p0

    return-void

    .line 639
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private refreshSelectAllState()V
    .locals 7

    .prologue
    .line 442
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;

    .line 443
    .local v0, adapter:Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;
    invoke-virtual {v0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->getCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 459
    :goto_0
    return-void

    .line 446
    :cond_0
    const/4 v2, 0x0

    .local v2, position:I
    :goto_1
    invoke-virtual {v0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 447
    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->getItemId(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 449
    .local v1, id:Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 446
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 453
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSelectedInfoHashSet:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 454
    iget-object v3, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_0

    .line 458
    .end local v1           #id:Ljava/lang/Long;
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method private removeContact(IJ)V
    .locals 2
    .parameter "position"
    .parameter "id"

    .prologue
    .line 384
    invoke-direct {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->checkIfRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSelectedInfoHashSet:Ljava/util/Set;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 386
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->onSelectedInfoChanged()V

    .line 388
    :cond_0
    return-void
.end method

.method private removeContactFromSelectAll(IJ)V
    .locals 2
    .parameter "position"
    .parameter "id"

    .prologue
    .line 416
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSelectedInfoHashSet:Ljava/util/Set;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 419
    return-void
.end method

.method private setDoneButton(I)V
    .locals 2
    .parameter "size"

    .prologue
    .line 474
    if-nez p1, :cond_1

    .line 475
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mListener:Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$onFavoritesActionBarUpdateListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$onFavoritesActionBarUpdateListener;->onDoneButtonStateUpdated(Z)V

    .line 479
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mListener:Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$onFavoritesActionBarUpdateListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$onFavoritesActionBarUpdateListener;->onSelectionChanged(I)V

    .line 480
    return-void

    .line 476
    :cond_1
    if-lez p1, :cond_0

    .line 477
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mListener:Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$onFavoritesActionBarUpdateListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$onFavoritesActionBarUpdateListener;->onDoneButtonStateUpdated(Z)V

    goto :goto_0
.end method

.method private setSelectAllChecked(Z)V
    .locals 7
    .parameter "isChecked"

    .prologue
    .line 422
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    .line 423
    .local v0, adapter:Lcom/android/contacts/list/ContactEntryListAdapter;
    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPinnedPartitionHeadersEnabled()Z

    move-result v1

    .line 424
    .local v1, headerEnabled:Z
    const/4 v5, 0x0

    .line 425
    .local v5, startPos:I
    if-eqz v1, :cond_0

    .line 426
    add-int/lit8 v5, v5, 0x1

    .line 429
    :cond_0
    move v4, v5

    .local v4, position:I
    :goto_0
    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getCount()I

    move-result v6

    if-ge v4, v6, :cond_2

    .line 430
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;

    invoke-virtual {v6, v4}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 432
    .local v2, id:J
    if-nez p1, :cond_1

    .line 433
    invoke-direct {p0, v4, v2, v3}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->addContactFromSelectAll(IJ)V

    .line 429
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 435
    :cond_1
    invoke-direct {p0, v4, v2, v3}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->removeContactFromSelectAll(IJ)V

    goto :goto_1

    .line 439
    .end local v2           #id:J
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->onSelectedInfoChanged()V

    .line 440
    return-void
.end method


# virtual methods
.method public actionDeleteFavoriteList()V
    .locals 24

    .prologue
    .line 670
    new-instance v21, Landroid/content/ContentValues;

    const/4 v4, 0x1

    move-object/from16 v0, v21

    invoke-direct {v0, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 671
    .local v21, values:Landroid/content/ContentValues;
    const-string v4, "starred"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 673
    new-instance v20, Ljava/lang/StringBuffer;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    .line 674
    .local v20, sb:Ljava/lang/StringBuffer;
    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "_id"

    aput-object v7, v5, v4

    const/4 v4, 0x1

    const-string v7, "contact_id"

    aput-object v7, v5, v4

    .line 675
    .local v5, ID_PROJECTION:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    .line 677
    .local v11, context:Landroid/content/Context;
    if-nez v11, :cond_1

    .line 763
    :cond_0
    :goto_0
    return-void

    .line 681
    :cond_1
    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 685
    .local v3, cr:Landroid/content/ContentResolver;
    const-string v6, " _id in (Select data_id from view_data_usage_stat where times_used>0 )"

    .line 687
    .local v6, selectionStr:Ljava/lang/String;
    const/4 v13, 0x0

    .line 688
    .local v13, dataIdCount:I
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 689
    .local v19, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-wide/16 v16, 0x0

    .line 690
    .local v16, iterator:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSelectedInfoHashSet:Ljava/util/Set;

    move-object/from16 v18, v0

    .line 692
    .local v18, mtempSelectedInfoHashSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 696
    .local v12, cursor:Landroid/database/Cursor;
    if-eqz v12, :cond_5

    .line 697
    :cond_2
    :goto_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 698
    const/4 v4, 0x1

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 699
    const/4 v4, 0x0

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 700
    add-int/lit8 v13, v13, 0x1

    .line 702
    :cond_3
    const/16 v4, 0xfa

    if-ne v13, v4, :cond_2

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 703
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->deleteFavoriteData(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/StringBuffer;)V

    .line 704
    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 705
    const/4 v13, 0x0

    goto :goto_1

    .line 708
    :cond_4
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 711
    :cond_5
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-lez v4, :cond_6

    .line 712
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->deleteFavoriteData(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/StringBuffer;)V

    .line 714
    :cond_6
    invoke-interface/range {v18 .. v18}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :cond_7
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    .line 715
    .local v9, contactId:Ljava/lang/Long;
    invoke-virtual {v9}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 717
    .local v10, contactfavoriteUri:Landroid/net/Uri;
    invoke-static {v10}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 739
    const-wide/16 v7, 0x1

    add-long v16, v16, v7

    .line 740
    const-wide/16 v7, 0x3c

    rem-long v7, v16, v7

    const-wide/16 v22, 0x0

    cmp-long v4, v7, v22

    if-nez v4, :cond_7

    .line 742
    :try_start_0
    const-string v4, "com.android.contacts"

    move-object/from16 v0, v19

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 748
    :goto_3
    const-wide/16 v16, 0x0

    .line 749
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->clear()V

    goto :goto_2

    .line 743
    :catch_0
    move-exception v14

    .line 744
    .local v14, e:Landroid/os/RemoteException;
    invoke-virtual {v14}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    .line 745
    .end local v14           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v14

    .line 746
    .local v14, e:Landroid/content/OperationApplicationException;
    invoke-virtual {v14}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto :goto_3

    .line 753
    .end local v9           #contactId:Ljava/lang/Long;
    .end local v10           #contactfavoriteUri:Landroid/net/Uri;
    .end local v14           #e:Landroid/content/OperationApplicationException;
    :cond_8
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 755
    :try_start_1
    const-string v4, "com.android.contacts"

    move-object/from16 v0, v19

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_0

    .line 756
    :catch_2
    move-exception v14

    .line 757
    .local v14, e:Landroid/os/RemoteException;
    invoke-virtual {v14}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 758
    .end local v14           #e:Landroid/os/RemoteException;
    :catch_3
    move-exception v14

    .line 759
    .local v14, e:Landroid/content/OperationApplicationException;
    invoke-virtual {v14}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public addFavoriteContactList()V
    .locals 15

    .prologue
    const/4 v12, 0x1

    .line 587
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10, v12}, Landroid/content/ContentValues;-><init>(I)V

    .line 588
    .local v10, values:Landroid/content/ContentValues;
    const-string v11, "starred"

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 589
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 591
    .local v2, context:Landroid/content/Context;
    if-nez v2, :cond_1

    .line 631
    :cond_0
    :goto_0
    return-void

    .line 595
    :cond_1
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 597
    .local v3, cr:Landroid/content/ContentResolver;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 598
    .local v9, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-wide/16 v6, 0x0

    .line 599
    .local v6, iterator:J
    iget-object v8, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSelectedInfoHashSet:Ljava/util/Set;

    .line 600
    .local v8, mtempSelectedInfoHashSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 601
    .local v0, contactId:Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 603
    .local v1, contactUri:Landroid/net/Uri;
    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 608
    const-wide/16 v11, 0x1

    add-long/2addr v6, v11

    .line 609
    const-wide/16 v11, 0x3c

    rem-long v11, v6, v11

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-nez v11, :cond_2

    .line 611
    :try_start_0
    const-string v11, "com.android.contacts"

    invoke-virtual {v3, v11, v9}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 617
    :goto_2
    const-wide/16 v6, 0x0

    .line 618
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    .line 612
    :catch_0
    move-exception v4

    .line 613
    .local v4, e:Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 614
    .end local v4           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v4

    .line 615
    .local v4, e:Landroid/content/OperationApplicationException;
    invoke-virtual {v4}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto :goto_2

    .line 621
    .end local v0           #contactId:Ljava/lang/Long;
    .end local v1           #contactUri:Landroid/net/Uri;
    .end local v4           #e:Landroid/content/OperationApplicationException;
    :cond_3
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    .line 623
    :try_start_1
    const-string v11, "com.android.contacts"

    invoke-virtual {v3, v11, v9}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 624
    :catch_2
    move-exception v4

    .line 625
    .local v4, e:Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 626
    .end local v4           #e:Landroid/os/RemoteException;
    :catch_3
    move-exception v4

    .line 627
    .local v4, e:Landroid/content/OperationApplicationException;
    invoke-virtual {v4}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto :goto_0
.end method

.method protected configureAdapter()V
    .locals 2

    .prologue
    .line 236
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureAdapter()V

    .line 238
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListAdapter;

    .line 240
    .local v0, adapter:Lcom/android/contacts/list/ContactListAdapter;
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactListAdapter;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 241
    return-void
.end method

.method protected createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 213
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->isLegacyCompatibilityMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 214
    new-instance v0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;-><init>(Landroid/content/Context;)V

    .line 215
    .local v0, adapter:Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 216
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableStrokeSortList"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    invoke-virtual {v0, v4}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 222
    :goto_0
    invoke-virtual {v0, v4}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->setDisplayPhotos(Z)V

    .line 223
    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->setQuickContactEnabled(Z)V

    .line 224
    iget v1, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mActionCode:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->setActionCode(I)V

    .line 230
    .end local v0           #adapter:Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;
    :goto_1
    return-object v0

    .line 220
    .restart local v0       #adapter:Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;
    :cond_0
    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    goto :goto_0

    .line 227
    .end local v0           #adapter:Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;
    :cond_1
    new-instance v0, Lcom/android/contacts/list/LegacyContactListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/LegacyContactListAdapter;-><init>(Landroid/content/Context;)V

    .line 228
    .local v0, adapter:Lcom/android/contacts/list/LegacyContactListAdapter;
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/LegacyContactListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 229
    invoke-virtual {v0, v3}, Lcom/android/contacts/list/LegacyContactListAdapter;->setDisplayPhotos(Z)V

    goto :goto_1
.end method

.method protected inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"

    .prologue
    .line 167
    const v0, 0x7f040149

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mView:Landroid/view/View;

    .line 168
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 172
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 173
    if-eqz p1, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSelectedInfoHashSet:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->setSelectedInfoHashSet(Ljava/util/Set;)V

    .line 175
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    .line 176
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSelectedInfoHashSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setDoneButton(I)V

    .line 177
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const-string v1, "SelectAllChecked"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 179
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 104
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 105
    if-eqz p1, :cond_0

    .line 106
    const-string v0, "actionCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mActionCode:I

    .line 111
    :goto_0
    return-void

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/activities/FavoriteInterfaceActivity;->getActionCode()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mActionCode:I

    goto :goto_0
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 7
    .parameter "inflater"
    .parameter "container"

    .prologue
    const v6, 0x7f04014e

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 127
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 130
    const/4 v2, 0x0

    invoke-virtual {p1, v6, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mHeaderView:Landroid/view/View;

    .line 131
    const-string v2, "DEFAULT"

    const-string v3, "PHONE_WHITE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 132
    iget-object v2, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mHeaderView:Landroid/view/View;

    const v3, 0x7f0901a8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 133
    .local v0, list_divider:Landroid/view/View;
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 135
    .end local v0           #list_divider:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mView:Landroid/view/View;

    const v3, 0x7f090168

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSearchViewLayout:Landroid/view/View;

    .line 136
    invoke-direct {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->createCustomSearchbar()V

    .line 138
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mFrameContainer:Landroid/widget/FrameLayout;

    .line 139
    iget-object v2, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mFrameContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v6}, Landroid/widget/FrameLayout;->setId(I)V

    .line 140
    iget-object v2, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mFrameContainer:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 141
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mFrameContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->addHeaderView(Landroid/view/View;)V

    .line 143
    iget-object v2, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mHeaderView:Landroid/view/View;

    const v3, 0x7f0900f8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v2, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 154
    iget-object v2, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 156
    iget-object v2, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mView:Landroid/view/View;

    const v3, 0x7f09016c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mEmptyView:Landroid/view/View;

    .line 157
    iget-object v2, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mEmptyView:Landroid/view/View;

    const v3, 0x7f090034

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 158
    .local v1, mEmptyViewText:Landroid/widget/TextView;
    iget v2, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mActionCode:I

    const/16 v3, 0x15f

    if-ne v2, v3, :cond_1

    .line 159
    const v2, 0x7f0d0306

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 161
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 162
    iget-object v2, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mView:Landroid/view/View;

    const v3, 0x7f090305

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mNoMatchView:Landroid/view/View;

    .line 163
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 400
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mAddAllTask:Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$AddAllTaskFavoriteList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mAddAllTask:Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$AddAllTaskFavoriteList;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$AddAllTaskFavoriteList;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask$Status;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mAddAllTask:Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$AddAllTaskFavoriteList;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$AddAllTaskFavoriteList;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask$Status;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 401
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mAddAllTask:Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$AddAllTaskFavoriteList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$AddAllTaskFavoriteList;->cancel(Z)Z

    .line 402
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;

    .line 403
    .local v0, lFavFrg:Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->mFavObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_2

    .line 404
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, v0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->mFavObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 406
    :cond_2
    invoke-super {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->onDestroy()V

    .line 407
    return-void
.end method

.method protected onHeaderViewClick(Landroid/view/View;IJ)V
    .locals 2
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 115
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/contacts/list/ContactEntryListFragment;->onHeaderViewClick(Landroid/view/View;IJ)V

    .line 116
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mHeaderView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mFrameContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mFrameContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getId()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setSelectAllChecked(Z)V

    .line 118
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->onSelectedInfoChanged()V

    .line 119
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 120
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->sendAccessibilityEvent(I)V

    .line 123
    :cond_2
    return-void
.end method

.method protected onItemClick(IJ)V
    .locals 3
    .parameter "position"
    .parameter "id"

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->getItemId(I)J

    move-result-wide v0

    .line 256
    .local v0, selectedId:J
    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->isSelectedContact(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 257
    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->removeContact(IJ)V

    .line 262
    :goto_0
    return-void

    .line 259
    :cond_0
    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->addSelectedContact(IJ)V

    goto :goto_0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 2
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 488
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mEnabled:Z

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    .line 505
    :cond_0
    :goto_0
    return-void

    .line 492
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    .line 493
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->hasFavUpdatedInBg()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 494
    invoke-direct {p0, p2}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->invalidateSelectedMap(Landroid/database/Cursor;)V

    .line 496
    :cond_2
    iget v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mActionCode:I

    const/16 v1, 0x15f

    if-ne v0, v1, :cond_3

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_3

    .line 497
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    check-cast v0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->setContactCursor(Landroid/database/Cursor;)V

    .line 498
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->onSelectedInfoChanged()V

    .line 499
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSelectedInfoHashSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setDoneButton(I)V

    goto :goto_0

    .line 500
    :cond_3
    iget v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mActionCode:I

    const/16 v1, 0x15e

    if-ne v0, v1, :cond_4

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_4

    .line 501
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->onSelectedInfoChanged()V

    goto :goto_0

    .line 502
    :cond_4
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSelectedInfoHashSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setDoneButton(I)V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 184
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 185
    const-string v1, "selectedInfo"

    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSelectedInfoHashSet:Ljava/util/Set;

    check-cast v0, Ljava/io/Serializable;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 187
    const-string v0, "filter"

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 188
    const-string v0, "actionCode"

    iget v1, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mActionCode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 189
    const-string v0, "SelectAllChecked"

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 190
    return-void
.end method

.method public onSelectedInfoChanged()V
    .locals 2

    .prologue
    .line 461
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSelectedInfoHashSet:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListAdapter;->setSelectedInfoHashSet(Ljava/util/Set;)V

    .line 462
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->notifyDataSetChanged()V

    .line 463
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSelectedInfoHashSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->setDoneButton(I)V

    .line 464
    invoke-direct {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->refreshSelectAllState()V

    .line 465
    return-void
.end method

.method public restoreSavedState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedState"

    .prologue
    .line 195
    invoke-super {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->restoreSavedState(Landroid/os/Bundle;)V

    .line 198
    if-nez p1, :cond_0

    .line 205
    :goto_0
    return-void

    .line 202
    :cond_0
    const-string v0, "actionCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mActionCode:I

    .line 203
    const-string v0, "filter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListFilter;

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    .line 204
    const-string v0, "selectedInfo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSelectedInfoHashSet:Ljava/util/Set;

    goto :goto_0
.end method

.method public runAddFavoriteListThread()V
    .locals 2

    .prologue
    .line 647
    invoke-direct {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->checkIfRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 648
    invoke-direct {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->markAsItsRunning()V

    .line 652
    new-instance v0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$AddAllTaskFavoriteList;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$AddAllTaskFavoriteList;-><init>(Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$1;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mAddAllTask:Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$AddAllTaskFavoriteList;

    .line 653
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mAddAllTask:Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$AddAllTaskFavoriteList;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$AddAllTaskFavoriteList;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 655
    :cond_0
    return-void
.end method

.method public runDeleteFavoriteListThread()V
    .locals 2

    .prologue
    .line 658
    invoke-direct {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->checkIfRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 659
    invoke-direct {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->markAsItsRunning()V

    .line 662
    new-instance v0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$DeleteAllTaskFavoriteList;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$DeleteAllTaskFavoriteList;-><init>(Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$1;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mDeleteAllTask:Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$DeleteAllTaskFavoriteList;

    .line 663
    iget-object v0, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mDeleteAllTask:Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$DeleteAllTaskFavoriteList;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$DeleteAllTaskFavoriteList;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 665
    :cond_0
    return-void
.end method

.method public setFilter(Lcom/android/contacts/list/ContactListFilter;)V
    .locals 0
    .parameter "filter"

    .prologue
    .line 483
    iput-object p1, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    .line 484
    return-void
.end method

.method public setQueryString(Ljava/lang/String;Z)V
    .locals 0
    .parameter "queryString"
    .parameter "delaySelection"

    .prologue
    .line 376
    invoke-super {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->setQueryString(Ljava/lang/String;Z)V

    .line 377
    return-void
.end method

.method public setSearchView(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 208
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSearchMode:Z

    .line 209
    return-void
.end method

.method public setonFavoritesActionBarUpdateListener(Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$onFavoritesActionBarUpdateListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 579
    iput-object p1, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mListener:Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment$onFavoritesActionBarUpdateListener;

    .line 580
    return-void
.end method

.method protected showCount(ILandroid/database/Cursor;)V
    .locals 5
    .parameter "partitionIndex"
    .parameter "data"

    .prologue
    const/16 v4, 0x30

    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 536
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mHeaderView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mEmptyView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mNoMatchView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 576
    :cond_0
    :goto_0
    return-void

    .line 540
    :cond_1
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 542
    .local v0, count:I
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->isSearchMode()Z

    move-result v1

    if-nez v1, :cond_3

    .line 543
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mNoMatchView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 544
    if-eqz v0, :cond_2

    .line 545
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 546
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 561
    :goto_1
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mSearchMode:Z

    if-nez v1, :cond_5

    .line 562
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 563
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_0

    .line 548
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 549
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 552
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 553
    if-eqz v0, :cond_4

    .line 554
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mNoMatchView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 555
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 557
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mNoMatchView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 558
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 566
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 567
    iget-object v1, p0, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_6

    .line 568
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    goto/16 :goto_0

    .line 571
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/list/FavoriteInterfaceListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    goto/16 :goto_0
.end method
