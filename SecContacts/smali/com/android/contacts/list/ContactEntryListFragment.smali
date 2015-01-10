.class public abstract Lcom/android/contacts/list/ContactEntryListFragment;
.super Landroid/app/Fragment;
.source "ContactEntryListFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;
.implements Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/contacts/list/ContactEntryListAdapter;",
        ">",
        "Landroid/app/Fragment;",
        "Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;",
        "Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;",
        "Landroid/view/View$OnFocusChangeListener;",
        "Landroid/view/View$OnTouchListener;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static sIsDoubleTapEnabled:Z

.field protected static sIsMMSAvailable:Z

.field protected static sIsPhone:Z

.field protected static sIsTwoPaneMode:Z


# instance fields
.field private isSearchFromRelationship:Z

.field protected mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected mChagingSplitRatioMode:Z

.field private mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

.field protected mContext:Landroid/content/Context;

.field private mContextMenuAdapter:Lcom/android/contacts/widget/ContextMenuAdapter;

.field private mDarkTheme:Z

.field private mDelayedDirectorySearchHandler:Landroid/os/Handler;

.field protected mDeleteMode:Z

.field private mDetailsLoaded:Z

.field protected mDirectoryListStatus:I

.field private mDirectoryResultLimit:I

.field private mDirectorySearchMode:I

.field private mDisplayOrder:I

.field private mEmptyView:Lcom/android/contacts/ContactListEmptyView;

.field protected mEnabled:Z

.field protected mFakeQueryModeEnabled:Z

.field protected mFakeQueryStatus:I

.field private mForceLoad:Z

.field private mForceReverseFastScrollBarPosition:Z

.field private mFromDelete:Z

.field private mIncludeProfile:Z

.field private mLegacyCompatibility:Z

.field private mListState:Landroid/os/Parcelable;

.field private mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

.field private mLoadPriorityDirectoriesOnly:Z

.field private mLoaderManager:Landroid/app/LoaderManager;

.field private mMultiSelectEnabled:Z

.field private mPhotoLoaderEnabled:Z

.field private mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

.field private mPreferencesChangeListener:Lcom/android/contacts/preference/ContactsPreferences$ChangeListener;

.field private mQueryString:Ljava/lang/String;

.field private mQuickContactEnabled:Z

.field private mReadyForFakeQuery:Z

.field protected mRequest:Lcom/android/contacts/list/ContactsRequest;

.field mScreenOrientation:I

.field private mSearchMode:Z

.field private mSectionHeaderDisplayEnabled:Z

.field private mSelectionVisible:Z

.field private mSortOrder:I

.field private mSweepActionBarCallBack:Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

.field private mSweepActionEnabled:Z

.field private mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

.field private mSweepRestrictionCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepRestrictionCallback;

.field private mTwCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

.field private mTwIndexLayout:Landroid/widget/LinearLayout;

.field private mTwIndexScrollView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

.field protected mUserProfileExists:Z

.field private mVerticalScrollbarPosition:I

.field private mVerticalTwIndexScrollbarPosition:I

.field private mView:Landroid/view/View;

.field private mVisibleScrollbarEnabled:Z

.field private mVisibleTwIndexScrollbarEnabled:Z

.field private mVoLTEStateTracker:Lcom/android/contacts/VoLTEStateTracker;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const/4 v2, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 113
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 199
    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mQuickContactEnabled:Z

    .line 207
    iput v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVerticalScrollbarPosition:I

    .line 212
    iput v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVerticalTwIndexScrollbarPosition:I

    .line 215
    iput-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mFakeQueryModeEnabled:Z

    .line 217
    iput v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mFakeQueryStatus:I

    .line 222
    iput-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDetailsLoaded:Z

    .line 228
    iput-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mChagingSplitRatioMode:Z

    .line 232
    iput v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectorySearchMode:I

    .line 234
    iput-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mFromDelete:Z

    .line 242
    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mEnabled:Z

    .line 258
    iput-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSweepActionEnabled:Z

    .line 268
    iput-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDeleteMode:Z

    .line 276
    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mForceReverseFastScrollBarPosition:Z

    .line 300
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryResultLimit:I

    .line 322
    iput v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryListStatus:I

    .line 340
    new-instance v0, Lcom/android/contacts/list/ContactEntryListFragment$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/ContactEntryListFragment$1;-><init>(Lcom/android/contacts/list/ContactEntryListFragment;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDelayedDirectorySearchHandler:Landroid/os/Handler;

    .line 349
    iput-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->isSearchFromRelationship:Z

    .line 1720
    new-instance v0, Lcom/android/contacts/list/ContactEntryListFragment$4;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/ContactEntryListFragment$4;-><init>(Lcom/android/contacts/list/ContactEntryListFragment;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mPreferencesChangeListener:Lcom/android/contacts/preference/ContactsPreferences$ChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/list/ContactEntryListFragment;)Lcom/android/contacts/VoLTEStateTracker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVoLTEStateTracker:Lcom/android/contacts/VoLTEStateTracker;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/list/ContactEntryListFragment;)Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    return-object v0
.end method

.method private configureVerticalScrollbar()V
    .locals 7

    .prologue
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const v6, 0x7f0c004b

    const/4 v3, 0x1

    .line 1104
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isVisibleScrollbarEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isSectionHeaderDisplayEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v3

    .line 1106
    .local v0, hasScrollbar:Z
    :goto_0
    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    if-eqz v4, :cond_0

    .line 1107
    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v4, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setFastScrollEnabled(Z)V

    .line 1108
    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v4, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setFastScrollAlwaysVisible(Z)V

    .line 1109
    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getVerticalScrollbarPosition()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setVerticalScrollbarPosition(I)V

    .line 1111
    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    const/high16 v5, 0x200

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setScrollBarStyle(I)V

    .line 1112
    const/4 v1, 0x0

    .line 1113
    .local v1, leftPadding:I
    const/4 v2, 0x0

    .line 1114
    .local v2, rightPadding:I
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getVerticalScrollbarPosition()I

    move-result v4

    if-ne v4, v3, :cond_2

    .line 1115
    iget-object v3, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 1121
    :goto_1
    iget-object v3, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getPaddingTop()I

    move-result v4

    iget-object v5, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v3, v1, v4, v2, v5}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setPadding(IIII)V

    .line 1124
    .end local v1           #leftPadding:I
    .end local v2           #rightPadding:I
    :cond_0
    return-void

    .line 1104
    .end local v0           #hasScrollbar:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1118
    .restart local v0       #hasScrollbar:Z
    .restart local v1       #leftPadding:I
    .restart local v2       #rightPadding:I
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    goto :goto_1
.end method

.method private getCurrentScreenOrientation()I
    .locals 1

    .prologue
    .line 527
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0
.end method

.method private getFakeQueryLimitedCount()I
    .locals 4

    .prologue
    .line 2056
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v3, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    check-cast v3, Lcom/android/contacts/widget/AutoScrollListView;

    invoke-virtual {v3}, Lcom/android/contacts/widget/AutoScrollListView;->getFirstVisiblePosition()I

    move-result v3

    add-int/lit8 v0, v3, 0x14

    .line 2057
    .local v0, firstVisible:I
    iget-object v3, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getSelectedItemPosition()I

    move-result v3

    add-int/lit8 v2, v3, 0x14

    .line 2058
    .local v2, selectedItem:I
    const/16 v1, 0x1e

    .line 2059
    .local v1, max:I
    if-le v0, v1, :cond_0

    .line 2060
    move v1, v0

    .line 2062
    :cond_0
    if-le v2, v1, :cond_1

    .line 2063
    move v1, v2

    .line 2065
    :cond_1
    return v1
.end method

.method private getXpositionOfDisplayNameTextView()F
    .locals 4

    .prologue
    .line 2010
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c006b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 2012
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00dd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 2014
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00de

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 2016
    add-float/2addr v0, v1

    const/high16 v1, 0x4000

    div-float v1, v2, v1

    add-float/2addr v0, v1

    return v0
.end method

.method private hideSoftKeyboard()V
    .locals 3

    .prologue
    .line 1587
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1589
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1592
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->clearFocusOnSoftKeyboard()V

    .line 1593
    return-void
.end method

.method private loadDirectoryPartitionDelayed(ILcom/android/contacts/list/DirectoryPartition;)V
    .locals 4
    .parameter "partitionIndex"
    .parameter "partition"

    .prologue
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const/4 v3, 0x1

    .line 822
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDelayedDirectorySearchHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 823
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDelayedDirectorySearchHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 825
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDelayedDirectorySearchHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 826
    return-void
.end method

.method private reloadDataDirectoryPartition(I)V
    .locals 1
    .parameter "partitionIndex"

    .prologue
    .line 990
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->onDataReloadDirectoryPartition(I)V

    .line 991
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mForceLoad:Z

    .line 992
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureAdapter()V

    .line 993
    invoke-direct {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->startLoadingDirectoryPartition(I)V

    .line 994
    return-void
.end method

.method private removePendingDirectorySearchRequests()V
    .locals 2

    .prologue
    .line 841
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDelayedDirectorySearchHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 842
    return-void
.end method

.method private screenOrientationChanged()Z
    .locals 2

    .prologue
    .line 531
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mScreenOrientation:I

    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getCurrentScreenOrientation()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 532
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getCurrentScreenOrientation()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mScreenOrientation:I

    .line 533
    const/4 v0, 0x1

    .line 535
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startFullQuery(Z)V
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 2097
    const-string v0, "ContactEntryListFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startFullQuery() : forceLoad is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2099
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mFakeQueryModeEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mFakeQueryStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDetailsLoaded:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/contacts/list/ContactEntryListFragment;->sIsTwoPaneMode:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDeleteMode:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_2

    .line 2105
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->isSearchMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2106
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mFakeQueryStatus:I

    .line 2107
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v3

    move v1, v2

    .line 2110
    :goto_0
    if-ge v1, v3, :cond_2

    .line 2111
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/DirectoryPartition;

    .line 2112
    invoke-virtual {v0}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v4

    .line 2114
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_3

    .line 2115
    const-string v0, "ContactEntryListFragment"

    const-string v3, "startFullQuery(), set full query"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2117
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v0

    .line 2118
    check-cast v0, Landroid/content/CursorLoader;

    .line 2120
    invoke-virtual {v0}, Landroid/content/CursorLoader;->getSortOrder()Ljava/lang/String;

    move-result-object v1

    .line 2121
    const-string v3, " LIMIT "

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v2

    .line 2122
    invoke-virtual {v0, v1}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    .line 2124
    invoke-virtual {v0}, Landroid/content/CursorLoader;->onContentChanged()V

    .line 2131
    :cond_2
    return-void

    .line 2110
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private startLoadingDirectoryPartition(I)V
    .locals 6
    .parameter "partitionIndex"

    .prologue
    .line 798
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v4, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/list/DirectoryPartition;

    .line 799
    .local v3, partition:Lcom/android/contacts/list/DirectoryPartition;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/list/DirectoryPartition;->setStatus(I)V

    .line 800
    invoke-virtual {v3}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v1

    .line 801
    .local v1, directoryId:J
    iget-boolean v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mForceLoad:Z

    if-eqz v4, :cond_1

    .line 802
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->isSearchFromRelationship:Z

    if-nez v4, :cond_0

    .line 803
    invoke-virtual {p0, p1, v3}, Lcom/android/contacts/list/ContactEntryListFragment;->loadDirectoryPartition(ILcom/android/contacts/list/DirectoryPartition;)V

    .line 813
    :goto_0
    return-void

    .line 805
    :cond_0
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->isSearchFromRelationship:Z

    .line 806
    invoke-direct {p0, p1, v3}, Lcom/android/contacts/list/ContactEntryListFragment;->loadDirectoryPartitionDelayed(ILcom/android/contacts/list/DirectoryPartition;)V

    goto :goto_0

    .line 809
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 810
    .local v0, args:Landroid/os/Bundle;
    const-string v4, "directoryId"

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 811
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v4

    invoke-virtual {v4, p1, v0, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0
.end method

.method private updateSweepActionFeasibility()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1959
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    if-nez v0, :cond_1

    .line 2007
    :cond_0
    :goto_0
    return-void

    .line 1963
    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_SweepOperationArea"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1966
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isSweepActionEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1967
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSweepActionBarCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;)V

    .line 1968
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V

    .line 1969
    iput-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSweepActionBarCallBack:Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

    .line 1970
    iput-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    .line 1972
    const-string v1, "ExcludeAvatar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1974
    iput-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSweepRestrictionCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepRestrictionCallback;

    .line 1975
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSweepRestrictionCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepRestrictionCallback;)V

    .line 1976
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSweepAreaRestrictionStart(F)V

    goto :goto_0

    .line 1979
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSweepActionBarCallBack:Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    if-nez v1, :cond_4

    .line 1980
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureSweepActionCallbackAndListener()V

    .line 1982
    :cond_4
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSweepActionBarCallBack:Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSweepActionBarCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionBarCallback;)V

    .line 1983
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V

    .line 1985
    const-string v1, "ExcludeAvatar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1987
    new-instance v0, Lcom/android/contacts/list/ContactEntryListFragment$7;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/ContactEntryListFragment$7;-><init>(Lcom/android/contacts/list/ContactEntryListFragment;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSweepRestrictionCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepRestrictionCallback;

    .line 2002
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSweepRestrictionCallback:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepRestrictionCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSweepRestrictionCallback(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepRestrictionCallback;)V

    .line 2003
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getXpositionOfDisplayNameTextView()F

    move-result v0

    .line 2004
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v1, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSweepAreaRestrictionStart(F)V

    goto :goto_0
.end method


# virtual methods
.method protected addTwIndexScroll(Landroid/database/Cursor;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1763
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexScrollView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    .line 1764
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getSortOrder()I

    move-result v0

    .line 1766
    packed-switch v0, :pswitch_data_0

    .line 1774
    const-string v0, "sort_key"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1780
    :goto_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1781
    const-string v0, "display_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1784
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1785
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    if-eqz v1, :cond_1

    .line 1787
    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactEntryListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1791
    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    .line 1795
    :cond_1
    :try_start_1
    const-string v1, "KOR"

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1797
    const/4 v1, 0x0

    .line 1798
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080015

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 1799
    new-instance v3, Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    invoke-direct {v3, p1, v0, v2, v1}, Lcom/sec/android/touchwiz/widget/TwCursorIndexer;-><init>(Landroid/database/Cursor;I[Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1810
    :goto_2
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    if-eqz v0, :cond_2

    .line 1811
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexScrollView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->setIndexer(Lcom/sec/android/touchwiz/widget/TwAbstractIndexer;)V

    .line 1813
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexScrollView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->invalidate()V

    .line 1815
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_FastScrollDepth"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v4, :cond_6

    .line 1818
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexScrollView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->setSubscrollLimit(I)V

    .line 1824
    :goto_3
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getVerticalTwIndexScrollbarPosition()I

    move-result v0

    if-ne v0, v4, :cond_7

    .line 1825
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexScrollView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    invoke-virtual {v0, v5}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->setHandlePosition(I)V

    .line 1830
    :goto_4
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    if-eqz v0, :cond_3

    .line 1831
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1833
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexScrollView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->setmIsFavoriteContactMode(Z)V

    .line 1834
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexScrollView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    new-instance v1, Lcom/android/contacts/list/ContactEntryListFragment$5;

    invoke-direct {v1, p0}, Lcom/android/contacts/list/ContactEntryListFragment$5;-><init>(Lcom/android/contacts/list/ContactEntryListFragment;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->setOnIndexSelectedListener(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$OnIndexSelectedListener;)V

    .line 1844
    :cond_4
    return-void

    .line 1768
    :pswitch_0
    const-string v0, "sort_key"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 1771
    :pswitch_1
    const-string v0, "sort_key_alt"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 1788
    :catch_0
    move-exception v1

    .line 1789
    const-string v1, "ContactEntryListFragment"

    const-string v2, "Observer TwCursorIndexer was not registered."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1802
    :cond_5
    const/4 v1, 0x0

    .line 1803
    :try_start_2
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080015

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 1804
    new-instance v3, Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    invoke-direct {v3, p1, v0, v2, v1}, Lcom/sec/android/touchwiz/widget/TwCursorIndexer;-><init>(Landroid/database/Cursor;I[Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 1807
    :catch_1
    move-exception v0

    .line 1808
    const-string v1, "ContactEntryListFragment"

    const-string v2, "IllegalStateException."

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1821
    :cond_6
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexScrollView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->setSubscrollLimit(I)V

    goto :goto_3

    .line 1827
    :cond_7
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexScrollView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->setHandlePosition(I)V

    goto :goto_4

    .line 1766
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected addTwIndexScroll_HK()V
    .locals 11

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 1848
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexScrollView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    if-eqz v0, :cond_6

    .line 1849
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    if-eqz v0, :cond_0

    .line 1850
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    .line 1854
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexScrollView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080015

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->setSimpleIndexHandleCharForContact_HK([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1858
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexScrollView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->invalidate()V

    .line 1859
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexScrollView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->setSubscrollLimit(I)V

    .line 1861
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getVerticalTwIndexScrollbarPosition()I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 1862
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexScrollView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->setHandlePosition(I)V

    .line 1867
    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f080016

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 1868
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getHeaderTitles()[Ljava/lang/String;

    move-result-object v6

    .line 1869
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getIndexCounts()[I

    move-result-object v7

    .line 1870
    array-length v0, v5

    new-array v8, v0, [I

    move v0, v1

    move v2, v1

    .line 1874
    :goto_2
    array-length v3, v5

    if-ge v0, v3, :cond_5

    move v3, v1

    .line 1875
    :goto_3
    array-length v9, v6

    if-ge v3, v9, :cond_1

    .line 1876
    aget-object v9, v5, v0

    aget-object v10, v6, v3

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1878
    aget v2, v7, v3

    aput v2, v8, v0

    move v2, v4

    .line 1883
    :cond_1
    if-eqz v2, :cond_4

    move v2, v1

    .line 1874
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1855
    :catch_0
    move-exception v0

    .line 1856
    const-string v2, "ContactEntryListFragment"

    const-string v3, "IllegalStateException."

    invoke-static {v2, v3, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1864
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexScrollView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->setHandlePosition(I)V

    goto :goto_1

    .line 1875
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1886
    :cond_4
    aput v1, v8, v0

    goto :goto_4

    .line 1890
    :cond_5
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0, v8}, Lcom/android/contacts/list/ContactEntryListAdapter;->setHandleCounts([I)V

    .line 1891
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexScrollView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->setmIsFavoriteContactMode(Z)V

    .line 1892
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexScrollView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    new-instance v1, Lcom/android/contacts/list/ContactEntryListFragment$6;

    invoke-direct {v1, p0}, Lcom/android/contacts/list/ContactEntryListFragment$6;-><init>(Lcom/android/contacts/list/ContactEntryListFragment;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->setOnIndexSelectedListener(Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView$OnIndexSelectedListener;)V

    .line 1931
    :cond_6
    return-void
.end method

.method protected clearFocusOnSoftKeyboard()V
    .locals 0

    .prologue
    .line 368
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    return-void
.end method

.method protected completeRestoreInstanceState()V
    .locals 2

    .prologue
    .line 1664
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListState:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    .line 1665
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1666
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListState:Landroid/os/Parcelable;

    .line 1668
    :cond_0
    return-void
.end method

.method protected configureAdapter()V
    .locals 2

    .prologue
    .line 1515
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-nez v0, :cond_0

    .line 1534
    :goto_0
    return-void

    .line 1519
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mQuickContactEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setQuickContactEnabled(Z)V

    .line 1520
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mIncludeProfile:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setIncludeProfile(Z)V

    .line 1521
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setQueryString(Ljava/lang/String;)V

    .line 1522
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectorySearchMode:I

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setDirectorySearchMode(I)V

    .line 1523
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSearchMode:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setPinnedPartitionHeadersEnabled(Z)V

    .line 1524
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDisplayOrder:I

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setContactNameDisplayOrder(I)V

    .line 1525
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSortOrder:I

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setSortOrder(I)V

    .line 1526
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSectionHeaderDisplayEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 1527
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSelectionVisible:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setSelectionVisible(Z)V

    .line 1528
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryResultLimit:I

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setDirectoryResultLimit(I)V

    .line 1529
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDarkTheme:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setDarkTheme(Z)V

    .line 1531
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mMultiSelectEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setMultiSelectEnabled(Z)V

    .line 1533
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    sget-boolean v1, Lcom/android/contacts/list/ContactEntryListFragment;->sIsTwoPaneMode:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setTwoPaneModeEnabled(Z)V

    goto :goto_0
.end method

.method protected configurePhotoLoader()V
    .locals 2

    .prologue
    .line 1501
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isPhotoLoaderEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 1502
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    if-nez v0, :cond_0

    .line 1503
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    .line 1505
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    if-eqz v0, :cond_1

    .line 1506
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setOnScrollListener(Lcom/sec/android/touchwiz/widget/TwAbsListView$OnScrollListener;)V

    .line 1508
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-eqz v0, :cond_2

    .line 1509
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setPhotoLoader(Lcom/android/contacts/ContactPhotoManager;)V

    .line 1512
    :cond_2
    return-void
.end method

.method protected configureSweepActionCallbackAndListener()V
    .locals 0

    .prologue
    .line 557
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    return-void
.end method

.method protected configureVerticalTwIndexScrollbar()V
    .locals 7

    .prologue
    const v5, 0x7f0c004b

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1128
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isVisibleTwIndexScrollbarEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isSectionHeaderDisplayEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 1131
    :goto_0
    iget-object v3, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    if-eqz v3, :cond_3

    .line 1132
    iget-object v3, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v3, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setFastScrollEnabled(Z)V

    .line 1133
    iget-object v3, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v3, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setFastScrollAlwaysVisible(Z)V

    .line 1135
    iget-object v3, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    const/high16 v4, 0x200

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setScrollBarStyle(I)V

    .line 1136
    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    sget-boolean v3, Lcom/android/contacts/list/ContactEntryListFragment;->sIsTwoPaneMode:Z

    if-nez v3, :cond_0

    if-nez v0, :cond_5

    :cond_0
    move v3, v1

    :goto_1
    invoke-virtual {v4, v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setVerticalScrollBarEnabled(Z)V

    .line 1137
    if-eqz v0, :cond_6

    .line 1138
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->showTwIndexScrollbar()V

    .line 1145
    :goto_2
    if-eq v0, v1, :cond_1

    sget-boolean v0, Lcom/android/contacts/list/ContactEntryListFragment;->sIsTwoPaneMode:Z

    if-eqz v0, :cond_b

    .line 1146
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getVerticalTwIndexScrollbarPosition()I

    move-result v0

    if-ne v0, v1, :cond_8

    .line 1147
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexScrollView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    if-eqz v0, :cond_2

    .line 1148
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexScrollView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->setHandlePosition(I)V

    .line 1152
    :cond_2
    sget-boolean v0, Lcom/android/contacts/list/ContactEntryListFragment;->sIsTwoPaneMode:Z

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->shouldApplyUiMirroring()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v2

    .line 1191
    :goto_3
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iget-object v3, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v1, v0, v3, v2, v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setPadding(IIII)V

    .line 1194
    :cond_3
    :goto_4
    return-void

    :cond_4
    move v0, v2

    .line 1128
    goto :goto_0

    :cond_5
    move v3, v2

    .line 1136
    goto :goto_1

    .line 1140
    :cond_6
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->hideTwIndexScrollbar()V

    .line 1141
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->unRegisterTwindexDataSetObserver()V

    goto :goto_2

    .line 1155
    :cond_7
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    goto :goto_3

    .line 1159
    :cond_8
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexScrollView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    if-eqz v0, :cond_9

    .line 1160
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexScrollView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->setHandlePosition(I)V

    .line 1163
    :cond_9
    sget-boolean v0, Lcom/android/contacts/list/ContactEntryListFragment;->sIsTwoPaneMode:Z

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->shouldApplyUiMirroring()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1169
    const-string v0, "alwasy_tab_mode_tablet"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    instance-of v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-nez v0, :cond_b

    .line 1170
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    const/high16 v1, 0x300

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setScrollBarStyle(I)V

    .line 1171
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c00b1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setPadding(IIII)V

    .line 1173
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09016d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1175
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget-object v3, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c00af

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 1177
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090168

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1178
    if-eqz v0, :cond_3

    .line 1179
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c00b0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto/16 :goto_4

    .line 1186
    :cond_a
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    move v6, v0

    move v0, v2

    move v2, v6

    goto/16 :goto_3

    :cond_b
    move v0, v2

    goto/16 :goto_3
.end method

.method public createCursorLoader()Lcom/sec/android/app/contacts/ContactCursorLoader;
    .locals 7

    .prologue
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const/4 v2, 0x0

    .line 703
    new-instance v0, Lcom/sec/android/app/contacts/ContactCursorLoader;

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/contacts/ContactCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createCursorLoaderToSupportSimContacts()Lcom/sec/android/app/contacts/ContactCursorLoader;
    .locals 8

    .prologue
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const/4 v3, 0x0

    .line 710
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v0

    if-nez v0, :cond_0

    .line 711
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->createCursorLoader()Lcom/sec/android/app/contacts/ContactCursorLoader;

    move-result-object v0

    .line 714
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/contacts/list/ContactEntryListFragment$3;

    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    move-object v1, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/android/contacts/list/ContactEntryListFragment$3;-><init>(Lcom/android/contacts/list/ContactEntryListFragment;Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected abstract createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 479
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    return-object v0
.end method

.method protected getContactNameDisplayOrder()I
    .locals 1

    .prologue
    .line 1331
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDisplayOrder:I

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 450
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getContextMenuAdapter()Lcom/android/contacts/widget/ContextMenuAdapter;
    .locals 1

    .prologue
    .line 1364
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContextMenuAdapter:Lcom/android/contacts/widget/ContextMenuAdapter;

    return-object v0
.end method

.method public getDelete()Z
    .locals 1

    .prologue
    .line 1315
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mFromDelete:Z

    return v0
.end method

.method public getDirectorySearchMode()I
    .locals 1

    .prologue
    .line 1307
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectorySearchMode:I

    return v0
.end method

.method public getFakeQueryStatus()I
    .locals 1

    .prologue
    .line 2075
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mFakeQueryStatus:I

    return v0
.end method

.method public getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;
    .locals 1

    .prologue
    .line 489
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    return-object v0
.end method

.method public getLoaderManager()Landroid/app/LoaderManager;
    .locals 1

    .prologue
    .line 475
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mLoaderManager:Landroid/app/LoaderManager;

    return-object v0
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1267
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    return-object v0
.end method

.method public getSortOrder()I
    .locals 1

    .prologue
    .line 1342
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSortOrder:I

    return v0
.end method

.method protected final getSweepActionBarCallBack()Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;
    .locals 1

    .prologue
    .line 572
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSweepActionBarCallBack:Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

    return-object v0
.end method

.method public getVerticalScrollbarPosition()I
    .locals 2

    .prologue
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const/4 v0, 0x1

    .line 1061
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->shouldApplyUiMirroring()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mForceReverseFastScrollBarPosition:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/android/contacts/list/ContactEntryListFragment;->sIsTwoPaneMode:Z

    if-eqz v1, :cond_2

    .line 1063
    :cond_0
    iget v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVerticalScrollbarPosition:I

    .line 1066
    :cond_1
    :goto_0
    return v0

    :cond_2
    iget v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVerticalScrollbarPosition:I

    if-ne v1, v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getVerticalTwIndexScrollbarPosition()I
    .locals 2

    .prologue
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const/4 v0, 0x1

    .line 1094
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->shouldApplyUiMirroring()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1095
    iget v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVerticalTwIndexScrollbarPosition:I

    .line 1098
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVerticalTwIndexScrollbarPosition:I

    if-ne v1, v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 484
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public hideTwIndexScrollbar()V
    .locals 2

    .prologue
    .line 1730
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    if-eqz v0, :cond_0

    .line 1731
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 1732
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1735
    :cond_0
    return-void
.end method

.method protected abstract inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public isFakeQueryModeEnabled()Z
    .locals 1

    .prologue
    .line 2070
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mFakeQueryModeEnabled:Z

    return v0
.end method

.method public isLegacyCompatibilityMode()Z
    .locals 1

    .prologue
    .line 1323
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mLegacyCompatibility:Z

    return v0
.end method

.method public isLoading()Z
    .locals 2

    .prologue
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const/4 v0, 0x1

    .line 955
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->isLoading()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 963
    :cond_0
    :goto_0
    return v0

    .line 959
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isLoadingDirectoryList()Z

    move-result v1

    if-nez v1, :cond_0

    .line 963
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLoadingDirectoryList()Z
    .locals 2

    .prologue
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const/4 v0, 0x1

    .line 967
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isSearchMode()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getDirectorySearchMode()I

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryListStatus:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryListStatus:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMultiSelectEnabled()Z
    .locals 1

    .prologue
    .line 1272
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mMultiSelectEnabled:Z

    return v0
.end method

.method public isPhotoLoaderEnabled()Z
    .locals 1

    .prologue
    .line 1202
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mPhotoLoaderEnabled:Z

    return v0
.end method

.method public isSearchFromRelationship(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 1281
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->isSearchFromRelationship:Z

    .line 1282
    return-void
.end method

.method public isSearchMode()Z
    .locals 1

    .prologue
    .line 1263
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSearchMode:Z

    return v0
.end method

.method public isSectionHeaderDisplayEnabled()Z
    .locals 1

    .prologue
    .line 1038
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSectionHeaderDisplayEnabled:Z

    return v0
.end method

.method public isSelectionVisible()Z
    .locals 1

    .prologue
    .line 1210
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSelectionVisible:Z

    return v0
.end method

.method public isSweepActionEnabled()Z
    .locals 1

    .prologue
    .line 1954
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSweepActionEnabled:Z

    return v0
.end method

.method public isVisibleScrollbarEnabled()Z
    .locals 1

    .prologue
    .line 1049
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVisibleScrollbarEnabled:Z

    return v0
.end method

.method public isVisibleTwIndexScrollbarEnabled()Z
    .locals 1

    .prologue
    .line 1081
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVisibleTwIndexScrollbarEnabled:Z

    return v0
.end method

.method protected loadDirectoryPartition(ILcom/android/contacts/list/DirectoryPartition;)V
    .locals 4
    .parameter "partitionIndex"
    .parameter "partition"

    .prologue
    .line 832
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 833
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "directoryId"

    invoke-virtual {p2}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 834
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 835
    return-void
.end method

.method protected loadPreferences()Z
    .locals 3

    .prologue
    .line 1368
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const/4 v0, 0x0

    .line 1369
    .local v0, changed:Z
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getContactNameDisplayOrder()I

    move-result v1

    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v2}, Lcom/android/contacts/preference/ContactsPreferences;->getDisplayOrder()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 1370
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v1}, Lcom/android/contacts/preference/ContactsPreferences;->getDisplayOrder()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactEntryListFragment;->setContactNameDisplayOrder(I)V

    .line 1371
    const/4 v0, 0x1

    .line 1374
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getSortOrder()I

    move-result v1

    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v2}, Lcom/android/contacts/preference/ContactsPreferences;->getSortOrder()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 1375
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v1}, Lcom/android/contacts/preference/ContactsPreferences;->getSortOrder()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactEntryListFragment;->setSortOrder(I)V

    .line 1376
    const/4 v0, 0x1

    .line 1379
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getDirectorySearchMode()I

    move-result v1

    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v2}, Lcom/android/contacts/preference/ContactsPreferences;->getOnlineSearch()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 1380
    instance-of v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-eqz v1, :cond_2

    .line 1381
    instance-of v1, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    if-nez v1, :cond_2

    .line 1382
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v1}, Lcom/android/contacts/preference/ContactsPreferences;->getOnlineSearch()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactEntryListFragment;->setDirectorySearchMode(I)V

    .line 1383
    const/4 v0, 0x1

    .line 1388
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getDelete()Z

    move-result v1

    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v2}, Lcom/android/contacts/preference/ContactsPreferences;->getDelete()Z

    move-result v2

    if-eq v1, v2, :cond_3

    .line 1389
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v1}, Lcom/android/contacts/preference/ContactsPreferences;->getDelete()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactEntryListFragment;->setDelete(Z)V

    .line 1390
    const/4 v0, 0x1

    .line 1393
    :cond_3
    return v0
.end method

.method public loadSimInfo()V
    .locals 9

    .prologue
    .line 2151
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v8, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v4

    .line 2152
    .local v4, accountTypes:Lcom/android/contacts/model/AccountTypeManager;
    iget-object v8, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v7

    .line 2153
    .local v7, phoneBookManageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    invoke-virtual {v7}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimIconChanged()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2157
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimIcon(I)I

    move-result v5

    .line 2158
    .local v5, iconRes:I
    invoke-virtual {v4}, Lcom/android/contacts/model/AccountTypeManager;->getSim1AccountWithDataSet()Lcom/android/contacts/model/AccountWithDataSet;

    move-result-object v0

    .line 2159
    .local v0, account:Lcom/android/contacts/model/AccountWithDataSet;
    if-eqz v0, :cond_0

    .line 2160
    invoke-virtual {v4, v0}, Lcom/android/contacts/model/AccountTypeManager;->getAccountTypeForAccount(Lcom/android/contacts/model/AccountWithDataSet;)Lcom/android/contacts/model/AccountType;

    move-result-object v2

    .line 2161
    .local v2, accountType:Lcom/android/contacts/model/AccountType;
    invoke-virtual {v2, v5}, Lcom/android/contacts/model/AccountType;->setIconRes(I)V

    .line 2164
    .end local v2           #accountType:Lcom/android/contacts/model/AccountType;
    :cond_0
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimIcon(I)I

    move-result v6

    .line 2165
    .local v6, iconRes2:I
    invoke-virtual {v4}, Lcom/android/contacts/model/AccountTypeManager;->getSim2AccountWithDataSet()Lcom/android/contacts/model/AccountWithDataSet;

    move-result-object v1

    .line 2166
    .local v1, account2:Lcom/android/contacts/model/AccountWithDataSet;
    if-eqz v1, :cond_1

    .line 2167
    invoke-virtual {v4, v1}, Lcom/android/contacts/model/AccountTypeManager;->getAccountTypeForAccount(Lcom/android/contacts/model/AccountWithDataSet;)Lcom/android/contacts/model/AccountType;

    move-result-object v3

    .line 2168
    .local v3, accountType2:Lcom/android/contacts/model/AccountType;
    invoke-virtual {v3, v6}, Lcom/android/contacts/model/AccountType;->setIconRes(I)V

    .line 2186
    .end local v0           #account:Lcom/android/contacts/model/AccountWithDataSet;
    .end local v1           #account2:Lcom/android/contacts/model/AccountWithDataSet;
    .end local v3           #accountType2:Lcom/android/contacts/model/AccountType;
    .end local v5           #iconRes:I
    .end local v6           #iconRes2:I
    :cond_1
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 372
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 374
    iput-object p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    .line 377
    invoke-static {p1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/android/contacts/list/ContactEntryListFragment;->sIsTwoPaneMode:Z

    .line 378
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/contacts/list/ContactEntryListFragment;->sIsDoubleTapEnabled:Z

    .line 380
    invoke-static {p1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/android/contacts/list/ContactEntryListFragment;->sIsPhone:Z

    .line 381
    invoke-static {p1}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMMSAvailable(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/android/contacts/list/ContactEntryListFragment;->sIsMMSAvailable:Z

    .line 383
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->setContext(Landroid/content/Context;)V

    .line 384
    invoke-super {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactEntryListFragment;->setLoaderManager(Landroid/app/LoaderManager;)V

    .line 385
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedState"

    .prologue
    .line 540
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 541
    new-instance v0, Lcom/android/contacts/preference/ContactsPreferences;

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/contacts/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    .line 542
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactEntryListFragment;->restoreSavedState(Landroid/os/Bundle;)V

    .line 543
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v0}, Lcom/android/contacts/preference/ContactsPreferences;->getDelete()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mFromDelete:Z

    .line 551
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 7
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 665
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const-string v4, "ContactEntryListFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreateLoader(id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    const/4 v4, -0x1

    if-ne p1, v4, :cond_1

    .line 668
    new-instance v2, Lcom/android/contacts/list/DirectoryListLoader;

    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/contacts/list/DirectoryListLoader;-><init>(Landroid/content/Context;)V

    .line 669
    .local v2, loader:Lcom/android/contacts/list/DirectoryListLoader;
    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v4, v2}, Lcom/android/contacts/list/ContactEntryListAdapter;->configureDirectoryLoader(Lcom/android/contacts/list/DirectoryListLoader;)V

    .line 698
    .end local v2           #loader:Lcom/android/contacts/list/DirectoryListLoader;
    :cond_0
    :goto_0
    return-object v2

    .line 675
    :cond_1
    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 676
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->createCursorLoaderToSupportSimContacts()Lcom/sec/android/app/contacts/ContactCursorLoader;

    move-result-object v2

    .line 680
    .local v2, loader:Lcom/sec/android/app/contacts/ContactCursorLoader;
    :goto_1
    if-eqz p2, :cond_3

    const-string v4, "directoryId"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "directoryId"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 682
    .local v0, directoryId:J
    :goto_2
    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v4, v2, v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->configureLoader(Landroid/content/CursorLoader;J)V

    .line 685
    iget-boolean v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mFakeQueryModeEnabled:Z

    if-eqz v4, :cond_0

    .line 686
    iget v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mFakeQueryStatus:I

    if-nez v4, :cond_0

    .line 687
    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactEntryListAdapter;->isSearchMode()Z

    move-result v4

    if-nez v4, :cond_0

    .line 688
    const-string v4, "ContactEntryListFragment"

    const-string v5, "onCreateLoader(), set fake mode"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    const/4 v4, 0x1

    iput v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mFakeQueryStatus:I

    .line 691
    invoke-virtual {v2}, Lcom/sec/android/app/contacts/ContactCursorLoader;->getSortOrder()Ljava/lang/String;

    move-result-object v3

    .line 692
    .local v3, sortOrder:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " LIMIT "

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " LIMIT 30"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 693
    invoke-virtual {v2, v3}, Lcom/sec/android/app/contacts/ContactCursorLoader;->setSortOrder(Ljava/lang/String;)V

    goto :goto_0

    .line 678
    .end local v0           #directoryId:J
    .end local v2           #loader:Lcom/sec/android/app/contacts/ContactCursorLoader;
    .end local v3           #sortOrder:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->createCursorLoader()Lcom/sec/android/app/contacts/ContactCursorLoader;

    move-result-object v2

    .restart local v2       #loader:Lcom/sec/android/app/contacts/ContactCursorLoader;
    goto :goto_1

    .line 680
    :cond_3
    const-wide/16 v0, 0x0

    goto :goto_2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 1398
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    .line 1400
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->createListAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    .line 1402
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isSearchMode()Z

    move-result v0

    .line 1403
    .local v0, searchMode:Z
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v1, v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->setSearchMode(Z)V

    .line 1404
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->configureDefaultPartition(ZZ)V

    .line 1405
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactEntryListAdapter;->setPhotoLoader(Lcom/android/contacts/ContactPhotoManager;)V

    .line 1406
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1408
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1409
    new-instance v1, Lcom/android/contacts/VoLTEStateTracker;

    invoke-direct {v1}, Lcom/android/contacts/VoLTEStateTracker;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVoLTEStateTracker:Lcom/android/contacts/VoLTEStateTracker;

    .line 1420
    :cond_0
    instance-of v1, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-eqz v1, :cond_1

    .line 1421
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isSweepActionEnabled()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/contacts/list/ContactEntryListFragment;->setSweepActionEnabled(Z)V

    .line 1424
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isSearchMode()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1425
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setFocusableInTouchMode(Z)V

    .line 1426
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->requestFocus()Z

    .line 1429
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mView:Landroid/view/View;

    return-object v1
.end method

.method protected onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1433
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mView:Landroid/view/View;

    .line 1436
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mView:Landroid/view/View;

    const v3, 0x102000a

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    .line 1437
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    if-nez v0, :cond_0

    .line 1438
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your content must have a ListView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1442
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mView:Landroid/view/View;

    const v3, 0x1020004

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1443
    if-eqz v0, :cond_1

    .line 1444
    iget-object v3, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v3, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setEmptyView(Landroid/view/View;)V

    .line 1445
    instance-of v3, v0, Lcom/android/contacts/ContactListEmptyView;

    if-eqz v3, :cond_1

    .line 1446
    check-cast v0, Lcom/android/contacts/ContactListEmptyView;

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mEmptyView:Lcom/android/contacts/ContactListEmptyView;

    .line 1450
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setOnItemClickListener(Lcom/sec/android/touchwiz/widget/TwAdapterView$OnItemClickListener;)V

    .line 1451
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1452
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1454
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isVisibleScrollbarEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1455
    iget-object v3, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isSearchMode()Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setFastScrollEnabled(Z)V

    .line 1461
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setDividerHeight(I)V

    .line 1464
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setSaveEnabled(Z)V

    .line 1466
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContextMenuAdapter:Lcom/android/contacts/widget/ContextMenuAdapter;

    if-eqz v0, :cond_3

    .line 1467
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iget-object v3, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContextMenuAdapter:Lcom/android/contacts/widget/ContextMenuAdapter;

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1471
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mView:Landroid/view/View;

    const v3, 0x7f09016f

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexLayout:Landroid/widget/LinearLayout;

    .line 1472
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mView:Landroid/view/View;

    const v3, 0x7f090170

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexScrollView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    .line 1474
    sget-boolean v0, Lcom/android/contacts/list/ContactEntryListFragment;->sIsTwoPaneMode:Z

    if-nez v0, :cond_4

    const-string v0, "DEFAULT"

    const-string v3, "PHONE_WHITE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const-string v0, "DEFAULT"

    const-string v3, "TABLET_BLACK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1475
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexScrollView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->setIndexScrollViewTheme(I)V

    .line 1477
    :cond_5
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isVisibleTwIndexScrollbarEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1478
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureVerticalTwIndexScrollbar()V

    .line 1483
    :cond_6
    :goto_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Contact_EnableUIM"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "KDDI"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1485
    :cond_7
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1487
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 1488
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 1489
    const-string v1, "com.sec.android.app.contacts.activities.SIMContactSelectionActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1491
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1492
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexScrollView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    invoke-virtual {v0, v4}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->setVisibility(I)V

    .line 1493
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getPaddingTop()I

    move-result v1

    iget-object v3, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v0, v2, v1, v2, v3}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setPadding(IIII)V

    .line 1497
    :cond_8
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configurePhotoLoader()V

    .line 1498
    return-void

    :cond_9
    move v0, v2

    .line 1455
    goto/16 :goto_0

    .line 1479
    :cond_a
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isVisibleScrollbarEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1480
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureVerticalScrollbar()V

    goto :goto_1
.end method

.method public onDetailsLoaded()V
    .locals 1

    .prologue
    .line 2079
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDetailsLoaded:Z

    .line 2080
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->startFullQuery()V

    .line 2081
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .parameter "view"
    .parameter "hasFocus"

    .prologue
    .line 1600
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 1601
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->hideSoftKeyboard()V

    .line 1603
    :cond_0
    return-void
.end method

.method protected onHeaderViewClick(Landroid/view/View;IJ)V
    .locals 0
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 357
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    return-void
.end method

.method protected abstract onItemClick(IJ)V
.end method

.method public onItemClick(Lcom/sec/android/touchwiz/widget/TwAdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/touchwiz/widget/TwAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1565
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    .local p1, parent:Lcom/sec/android/touchwiz/widget/TwAdapterView;,"Lcom/sec/android/touchwiz/widget/TwAdapterView<*>;"
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->hideSoftKeyboard()V

    .line 1568
    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getHeaderViewsCount()I

    move-result v2

    if-ge p3, v2, :cond_1

    .line 1569
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/contacts/list/ContactEntryListFragment;->onHeaderViewClick(Landroid/view/View;IJ)V

    .line 1583
    :cond_0
    :goto_0
    return-void

    .line 1571
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getHeaderViewsCount()I

    move-result v2

    sub-int v0, p3, v2

    .line 1575
    .local v0, adjPosition:I
    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v2, v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->isGalSearchShowMore(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1576
    iget v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryResultLimit:I

    add-int/lit8 v2, v2, 0x14

    iput v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryResultLimit:I

    .line 1577
    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v2, v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionForPosition(I)I

    move-result v1

    .line 1578
    .local v1, partitionIndex:I
    invoke-direct {p0, v1}, Lcom/android/contacts/list/ContactEntryListFragment;->reloadDataDirectoryPartition(I)V

    goto :goto_0

    .line 1579
    .end local v1           #partitionIndex:I
    :cond_2
    if-ltz v0, :cond_0

    .line 1580
    invoke-virtual {p0, v0, p4, p5}, Lcom/android/contacts/list/ContactEntryListFragment;->onItemClick(IJ)V

    goto :goto_0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 9
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
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 846
    const-string v2, "ContactEntryListFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onLoadFinished(id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    iget-boolean v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mEnabled:Z

    if-nez v2, :cond_1

    .line 892
    :cond_0
    :goto_0
    return-void

    .line 852
    :cond_1
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v1

    .line 853
    .local v1, loaderId:I
    if-ne v1, v5, :cond_2

    .line 854
    iput v8, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryListStatus:I

    .line 855
    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v2, p2}, Lcom/android/contacts/list/ContactEntryListAdapter;->changeDirectories(Landroid/database/Cursor;)V

    .line 856
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->startLoading()V

    goto :goto_0

    .line 858
    :cond_2
    invoke-virtual {p0, v1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onPartitionLoaded(ILandroid/database/Cursor;)V

    .line 861
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isSearchMode()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDeleteMode:Z

    if-nez v2, :cond_4

    .line 862
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getDirectorySearchMode()I

    move-result v0

    .line 863
    .local v0, directorySearchMode:I
    if-eqz v0, :cond_0

    .line 864
    iget v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryListStatus:I

    if-nez v2, :cond_3

    .line 865
    iput v7, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryListStatus:I

    .line 866
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v5, v3, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0

    .line 868
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->startLoading()V

    goto :goto_0

    .line 872
    .end local v0           #directorySearchMode:I
    :cond_4
    iput v6, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryListStatus:I

    .line 873
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 876
    iget-boolean v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mReadyForFakeQuery:Z

    if-eqz v2, :cond_5

    .line 877
    iput-boolean v6, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mReadyForFakeQuery:Z

    .line 878
    invoke-virtual {p1}, Landroid/content/Loader;->onContentChanged()V

    goto :goto_0

    .line 880
    :cond_5
    iget-boolean v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mFakeQueryModeEnabled:Z

    if-eqz v2, :cond_0

    .line 881
    iget v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mFakeQueryStatus:I

    if-ne v2, v7, :cond_6

    .line 882
    iput v8, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mFakeQueryStatus:I

    .line 883
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->startFullQuery()V

    goto :goto_0

    .line 884
    :cond_6
    iget v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mFakeQueryStatus:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 885
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mFakeQueryStatus:I

    .line 886
    invoke-virtual {p1}, Landroid/content/Loader;->onContentChanged()V

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 896
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    return-void
.end method

.method protected onPartitionLoaded(ILandroid/database/Cursor;)V
    .locals 4
    .parameter "partitionIndex"
    .parameter "data"

    .prologue
    .line 900
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDeleteMode:Z

    if-eqz v0, :cond_1

    int-to-long v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 952
    :cond_0
    :goto_0
    return-void

    .line 904
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 910
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/list/ContactEntryListAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 911
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->setProfileHeader()V

    .line 912
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->showCount(ILandroid/database/Cursor;)V

    .line 914
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isLoading()Z

    move-result v0

    if-nez v0, :cond_2

    .line 915
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->completeRestoreInstanceState()V

    .line 919
    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_EnableUIM"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "KDDI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_3
    if-eqz p2, :cond_6

    invoke-interface {p2}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    const/16 v1, 0x9

    if-gt v0, v1, :cond_6

    .line 947
    :cond_4
    :goto_1
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v0

    if-nez v0, :cond_5

    .line 950
    :cond_5
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->loadSimInfo()V

    goto :goto_0

    .line 924
    :cond_6
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isSearchMode()Z

    move-result v0

    if-nez v0, :cond_7

    if-eqz p2, :cond_7

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isVisibleTwIndexScrollbarEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 927
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_EnableStrokeSortList"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh_HK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 929
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->addTwIndexScroll_HK()V

    .line 937
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isVisibleTwIndexScrollbarEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isSectionHeaderDisplayEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 938
    if-eqz p2, :cond_9

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_9

    .line 939
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->showTwIndexScrollbar()V

    goto :goto_1

    .line 932
    :cond_8
    invoke-virtual {p0, p2}, Lcom/android/contacts/list/ContactEntryListFragment;->addTwIndexScroll(Landroid/database/Cursor;)V

    goto :goto_2

    .line 941
    :cond_9
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->hideTwIndexScrollbar()V

    goto :goto_1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1618
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 1619
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->removePendingDirectorySearchRequests()V

    .line 1621
    sget-boolean v0, Lcom/android/contacts/list/ContactEntryListFragment;->sIsDoubleTapEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    if-eqz v0, :cond_0

    .line 1622
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->unregisterDoubleTapMotion()V

    .line 1625
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexScrollView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    if-eqz v0, :cond_1

    .line 1627
    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1631
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    .line 1637
    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1638
    const-string v0, "ContactEntryListFragment"

    const-string v1, "VoLTEStateTracker : stopTracking"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVoLTEStateTracker:Lcom/android/contacts/VoLTEStateTracker;

    invoke-virtual {v0}, Lcom/android/contacts/VoLTEStateTracker;->stopTracking()V

    .line 1642
    :cond_2
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1645
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v0

    .line 1646
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->setSimIconChanged(Z)V

    .line 1649
    return-void

    .line 1628
    :catch_0
    move-exception v0

    .line 1629
    const-string v0, "ContactEntryListFragment"

    const-string v1, "Observer TwCursorIndexer was not registered."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPickerResult(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 1717
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Picker result handler is not implemented."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onResume()V
    .locals 5

    .prologue
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const/4 v4, 0x1

    .line 389
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 392
    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 394
    .local v1, prefs:Landroid/content/SharedPreferences;
    :try_start_0
    const-string v2, "huge_font"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_3

    .line 395
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/contacts/list/ContactEntryListAdapter;->setHugeFontEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    :goto_0
    sget-boolean v2, Lcom/android/contacts/list/ContactEntryListFragment;->sIsDoubleTapEnabled:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    if-eqz v2, :cond_0

    .line 406
    :try_start_1
    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_double_tap"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 408
    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->unregisterDoubleTapMotion()V

    .line 409
    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->registerDoubleTapMotion()V
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 420
    :cond_0
    :goto_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 421
    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget-object v3, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVoLTEStateTracker:Lcom/android/contacts/VoLTEStateTracker;

    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/contacts/VoLTEStateTracker;->isVolteEnabled(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/contacts/list/ContactEntryListAdapter;->setVoLTEEnabled(Z)V

    .line 423
    const-string v2, "ContactEntryListFragment"

    const-string v3, "VoLTEStateTracker : startTracking"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iget-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVoLTEStateTracker:Lcom/android/contacts/VoLTEStateTracker;

    iget-object v3, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/contacts/list/ContactEntryListFragment$2;

    invoke-direct {v4, p0}, Lcom/android/contacts/list/ContactEntryListFragment$2;-><init>(Lcom/android/contacts/list/ContactEntryListFragment;)V

    invoke-virtual {v2, v3, v4}, Lcom/android/contacts/VoLTEStateTracker;->startTracking(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 433
    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 434
    const-string v2, "ContactEntryListFragment"

    const-string v3, "=========  onResume updateSweepActionFeasibility========="

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSweepActionBarCallBack:Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

    .line 436
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->updateSweepActionFeasibility()V

    .line 439
    :cond_2
    return-void

    .line 397
    :cond_3
    :try_start_2
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/contacts/list/ContactEntryListAdapter;->setHugeFontEnabled(Z)V
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 399
    :catch_0
    move-exception v0

    .line 400
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v2, "ContactEntryListFragment"

    const-string v3, "ClassCastException occurs."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 411
    .end local v0           #e:Ljava/lang/ClassCastException;
    :catch_1
    move-exception v0

    .line 412
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "ContactEntryListFragment"

    const-string v3, "SettingNotFoundException"

    invoke-static {v2, v3, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 498
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 499
    const-string v0, "sectionHeaderDisplayEnabled"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSectionHeaderDisplayEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 500
    const-string v0, "photoLoaderEnabled"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mPhotoLoaderEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 501
    const-string v0, "quickContactEnabled"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mQuickContactEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 502
    const-string v0, "includeProfile"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mIncludeProfile:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 503
    const-string v0, "searchMode"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSearchMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 504
    const-string v0, "visibleScrollbarEnabled"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVisibleScrollbarEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 505
    const-string v0, "scrollbarPosition"

    iget v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVerticalScrollbarPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 506
    const-string v0, "multiselectionEnabled"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mMultiSelectEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 508
    const-string v0, "visibleTwIndexScrollbarEnabled"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVisibleTwIndexScrollbarEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 509
    const-string v0, "scrollbarPosition"

    iget v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVerticalTwIndexScrollbarPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 510
    const-string v0, "directorySearchMode"

    iget v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectorySearchMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 511
    const-string v0, "selectionVisible"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSelectionVisible:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 512
    const-string v0, "legacyCompatibility"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mLegacyCompatibility:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 513
    const-string v0, "queryString"

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    const-string v0, "directoryResultLimit"

    iget v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryResultLimit:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 515
    const-string v0, "request"

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 516
    const-string v0, "darkTheme"

    iget-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDarkTheme:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 518
    const-string v0, "fakeQueryStatus"

    iget v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mFakeQueryStatus:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 519
    const-string v0, "screenorientation"

    iget v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mScreenOrientation:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 520
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListState:Landroid/os/Parcelable;

    .line 522
    const-string v0, "liststate"

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListState:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 524
    :cond_0
    return-void
.end method

.method public onScroll(Lcom/sec/android/touchwiz/widget/TwAbsListView;III)V
    .locals 2
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 1542
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexScrollView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    if-eqz v0, :cond_0

    .line 1543
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexScrollView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->onScroll(Landroid/widget/AbsListView;III)V

    .line 1545
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Lcom/sec/android/touchwiz/widget/TwAbsListView;I)V
    .locals 2
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 1550
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 1551
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    invoke-virtual {v0}, Lcom/android/contacts/ContactPhotoManager;->pause()V

    .line 1557
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexScrollView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    if-eqz v0, :cond_1

    .line 1558
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexScrollView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 1560
    :cond_1
    return-void

    .line 1552
    :cond_2
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isPhotoLoaderEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1553
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    invoke-virtual {v0}, Lcom/android/contacts/ContactPhotoManager;->resume()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 4

    .prologue
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 624
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 626
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    iget-object v3, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mPreferencesChangeListener:Lcom/android/contacts/preference/ContactsPreferences$ChangeListener;

    invoke-virtual {v0, v3}, Lcom/android/contacts/preference/ContactsPreferences;->registerChangeListener(Lcom/android/contacts/preference/ContactsPreferences$ChangeListener;)V

    .line 628
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->loadPreferences()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->screenOrientationChanged()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mForceLoad:Z

    .line 630
    iput v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryListStatus:I

    .line 631
    iput-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mLoadPriorityDirectoriesOnly:Z

    .line 633
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->startLoading()V

    .line 634
    return-void

    :cond_0
    move v0, v2

    .line 628
    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 974
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 975
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v0}, Lcom/android/contacts/preference/ContactsPreferences;->unregisterChangeListener()V

    .line 976
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->clearPartitions()V

    .line 977
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "event"

    .prologue
    .line 1610
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    if-ne p1, v0, :cond_0

    .line 1611
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->hideSoftKeyboard()V

    .line 1613
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected reloadData()V
    .locals 2

    .prologue
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const/4 v1, 0x1

    .line 980
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->removePendingDirectorySearchRequests()V

    .line 981
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-eqz v0, :cond_0

    .line 982
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->onDataReload()V

    .line 983
    :cond_0
    iput-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mLoadPriorityDirectoriesOnly:Z

    .line 984
    iput-boolean v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mForceLoad:Z

    .line 985
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->startLoading()V

    .line 986
    return-void
.end method

.method public restoreSavedState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedState"

    .prologue
    .line 576
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    if-nez p1, :cond_0

    .line 577
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getCurrentScreenOrientation()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mScreenOrientation:I

    .line 605
    :goto_0
    return-void

    .line 581
    :cond_0
    const-string v0, "sectionHeaderDisplayEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSectionHeaderDisplayEnabled:Z

    .line 582
    const-string v0, "photoLoaderEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mPhotoLoaderEnabled:Z

    .line 583
    const-string v0, "quickContactEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mQuickContactEnabled:Z

    .line 584
    const-string v0, "includeProfile"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mIncludeProfile:Z

    .line 585
    const-string v0, "searchMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSearchMode:Z

    .line 586
    const-string v0, "visibleScrollbarEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVisibleScrollbarEnabled:Z

    .line 587
    const-string v0, "scrollbarPosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVerticalScrollbarPosition:I

    .line 588
    const-string v0, "multiselectionEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mMultiSelectEnabled:Z

    .line 590
    const-string v0, "visibleTwIndexScrollbarEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVisibleTwIndexScrollbarEnabled:Z

    .line 592
    const-string v0, "scrollbarPosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVerticalTwIndexScrollbarPosition:I

    .line 593
    const-string v0, "directorySearchMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectorySearchMode:I

    .line 594
    const-string v0, "selectionVisible"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSelectionVisible:Z

    .line 595
    const-string v0, "legacyCompatibility"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mLegacyCompatibility:Z

    .line 596
    const-string v0, "queryString"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    .line 597
    const-string v0, "directoryResultLimit"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryResultLimit:I

    .line 598
    const-string v0, "request"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactsRequest;

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    .line 599
    const-string v0, "darkTheme"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDarkTheme:Z

    .line 601
    const-string v0, "fakeQueryStatus"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mFakeQueryStatus:I

    .line 602
    const-string v0, "screenorientation"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mScreenOrientation:I

    .line 604
    const-string v0, "liststate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListState:Landroid/os/Parcelable;

    goto/16 :goto_0
.end method

.method public setChangingSplitRatioMode(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 2135
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mChagingSplitRatioMode:Z

    .line 2136
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getAdapter()Lcom/android/contacts/list/ContactEntryListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setChangingSplitRatioMode(Z)V

    .line 2137
    return-void
.end method

.method protected setContactNameDisplayOrder(I)V
    .locals 1
    .parameter "displayOrder"

    .prologue
    .line 1335
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iput p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDisplayOrder:I

    .line 1336
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-eqz v0, :cond_0

    .line 1337
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setContactNameDisplayOrder(I)V

    .line 1339
    :cond_0
    return-void
.end method

.method public setContactsRequest(Lcom/android/contacts/list/ContactsRequest;)V
    .locals 0
    .parameter "request"

    .prologue
    .line 619
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iput-object p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    .line 620
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 445
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iput-object p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mContext:Landroid/content/Context;

    .line 446
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configurePhotoLoader()V

    .line 447
    return-void
.end method

.method public setDelete(Z)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 1319
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mFromDelete:Z

    .line 1320
    return-void
.end method

.method public setDirectoryResultLimit(I)V
    .locals 0
    .parameter "limit"

    .prologue
    .line 1353
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iput p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryResultLimit:I

    .line 1354
    return-void
.end method

.method public setDirectorySearchMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 1311
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iput p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectorySearchMode:I

    .line 1312
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 454
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mEnabled:Z

    if-eq v0, p1, :cond_0

    .line 455
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mEnabled:Z

    .line 456
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-eqz v0, :cond_0

    .line 457
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mEnabled:Z

    if-eqz v0, :cond_1

    .line 458
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->reloadData()V

    .line 464
    :cond_0
    :goto_0
    return-void

    .line 460
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->clearPartitions()V

    goto :goto_0
.end method

.method public setFakeQueryModeEnabled(Z)V
    .locals 12
    .parameter "enabled"

    .prologue
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const/4 v11, 0x0

    .line 2021
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mFakeQueryModeEnabled:Z

    .line 2024
    iget-object v9, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v9}, Lcom/android/contacts/list/ContactEntryListAdapter;->isSearchMode()Z

    move-result v9

    if-nez v9, :cond_2

    .line 2025
    iget-object v9, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v9}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v7

    .line 2028
    .local v7, partitionCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v7, :cond_2

    .line 2029
    iget-object v9, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v9, v3}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/list/DirectoryPartition;

    .line 2030
    .local v6, partition:Lcom/android/contacts/list/DirectoryPartition;
    invoke-virtual {v6}, Lcom/android/contacts/list/DirectoryPartition;->getDirectoryId()J

    move-result-wide v1

    .line 2032
    .local v1, directoryId:J
    const-wide/16 v9, 0x0

    cmp-long v9, v1, v9

    if-nez v9, :cond_0

    .line 2034
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v5

    .local v5, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    move-object v0, v5

    .line 2035
    check-cast v0, Landroid/content/CursorLoader;

    .line 2037
    .local v0, cursorLoader:Landroid/content/CursorLoader;
    invoke-virtual {v0}, Landroid/content/CursorLoader;->getSortOrder()Ljava/lang/String;

    move-result-object v8

    .line 2038
    .local v8, sortOrder:Ljava/lang/String;
    iget-boolean v9, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mFakeQueryModeEnabled:Z

    if-eqz v9, :cond_1

    .line 2039
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getFakeQueryLimitedCount()I

    move-result v4

    .line 2040
    .local v4, limitCount:I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " LIMIT "

    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " LIMIT "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2042
    const/4 v9, 0x1

    iput v9, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mFakeQueryStatus:I

    .line 2043
    iput-boolean v11, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDetailsLoaded:Z

    .line 2048
    .end local v4           #limitCount:I
    :goto_1
    invoke-virtual {v0, v8}, Landroid/content/CursorLoader;->setSortOrder(Ljava/lang/String;)V

    .line 2028
    .end local v0           #cursorLoader:Landroid/content/CursorLoader;
    .end local v5           #loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    .end local v8           #sortOrder:Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2045
    .restart local v0       #cursorLoader:Landroid/content/CursorLoader;
    .restart local v5       #loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    .restart local v8       #sortOrder:Ljava/lang/String;
    :cond_1
    const-string v9, " LIMIT "

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    aget-object v8, v9, v11

    .line 2046
    const/4 v9, 0x3

    iput v9, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mFakeQueryStatus:I

    goto :goto_1

    .line 2053
    .end local v0           #cursorLoader:Landroid/content/CursorLoader;
    .end local v1           #directoryId:J
    .end local v3           #i:I
    .end local v5           #loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    .end local v6           #partition:Lcom/android/contacts/list/DirectoryPartition;
    .end local v7           #partitionCount:I
    .end local v8           #sortOrder:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method protected setForceReverseFastScrollBarPositionEnabled(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 2141
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mForceReverseFastScrollBarPosition:Z

    .line 2142
    return-void
.end method

.method public setIncludeProfile(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1222
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mIncludeProfile:Z

    .line 1223
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-eqz v0, :cond_0

    .line 1224
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setIncludeProfile(Z)V

    .line 1226
    :cond_0
    return-void
.end method

.method public setLegacyCompatibilityMode(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 1327
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mLegacyCompatibility:Z

    .line 1328
    return-void
.end method

.method public setLoaderManager(Landroid/app/LoaderManager;)V
    .locals 0
    .parameter "loaderManager"

    .prologue
    .line 470
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iput-object p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mLoaderManager:Landroid/app/LoaderManager;

    .line 471
    return-void
.end method

.method public setMultiSelectEnabled(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 1276
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mMultiSelectEnabled:Z

    .line 1277
    return-void
.end method

.method public setPhotoLoaderEnabled(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 1197
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mPhotoLoaderEnabled:Z

    .line 1198
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configurePhotoLoader()V

    .line 1199
    return-void
.end method

.method protected setProfileHeader()V
    .locals 1

    .prologue
    .line 1015
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mUserProfileExists:Z

    .line 1016
    return-void
.end method

.method public setQueryString(Ljava/lang/String;Z)V
    .locals 1
    .parameter "queryString"
    .parameter "delaySelection"

    .prologue
    .line 1286
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1287
    const/4 p1, 0x0

    .line 1289
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1290
    iput-object p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    .line 1292
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mQueryString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactEntryListFragment;->setSearchMode(Z)V

    .line 1295
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryResultLimit:I

    .line 1297
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-eqz v0, :cond_1

    .line 1298
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setQueryString(Ljava/lang/String;)V

    .line 1299
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->isSearchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1300
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->reloadData()V

    .line 1304
    :cond_1
    return-void

    .line 1292
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setQuickContactEnabled(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 1218
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mQuickContactEnabled:Z

    .line 1219
    return-void
.end method

.method public setReadyForFakeQuery(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 2146
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactEntryListFragment;->setFakeQueryModeEnabled(Z)V

    .line 2147
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mReadyForFakeQuery:Z

    .line 2148
    return-void
.end method

.method public setSearchMode(Z)V
    .locals 4
    .parameter "flag"

    .prologue
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1229
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSearchMode:Z

    if-eq v0, p1, :cond_3

    .line 1230
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSearchMode:Z

    .line 1231
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSearchMode:Z

    if-nez v0, :cond_4

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/list/ContactEntryListFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 1233
    if-nez p1, :cond_0

    .line 1234
    iput v2, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mDirectoryListStatus:I

    .line 1235
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 1238
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-eqz v0, :cond_2

    .line 1239
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setPinnedPartitionHeadersEnabled(Z)V

    .line 1240
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setSearchMode(Z)V

    .line 1242
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->clearPartitions()V

    .line 1243
    if-nez p1, :cond_1

    .line 1247
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->removeDirectoriesAfterDefault()V

    .line 1249
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0, v2, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->configureDefaultPartition(ZZ)V

    .line 1250
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->reloadData()V

    .line 1253
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    if-eqz v0, :cond_3

    .line 1255
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->isVisibleScrollbarEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1256
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    if-nez p1, :cond_5

    :goto_1
    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->setFastScrollEnabled(Z)V

    .line 1260
    :cond_3
    return-void

    :cond_4
    move v0, v2

    .line 1231
    goto :goto_0

    :cond_5
    move v1, v2

    .line 1256
    goto :goto_1
.end method

.method public setSectionHeaderDisplayEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1026
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSectionHeaderDisplayEnabled:Z

    if-eq v0, p1, :cond_1

    .line 1027
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSectionHeaderDisplayEnabled:Z

    .line 1028
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-eqz v0, :cond_0

    .line 1029
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 1031
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureVerticalScrollbar()V

    .line 1033
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureVerticalTwIndexScrollbar()V

    .line 1035
    :cond_1
    return-void
.end method

.method public setSelectionVisible(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 1214
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSelectionVisible:Z

    .line 1215
    return-void
.end method

.method public setSortOrder(I)V
    .locals 1
    .parameter "sortOrder"

    .prologue
    .line 1346
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iput p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSortOrder:I

    .line 1347
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-eqz v0, :cond_0

    .line 1348
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setSortOrder(I)V

    .line 1350
    :cond_0
    return-void
.end method

.method protected final setSweepActionBarCallBack(Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;)V
    .locals 0
    .parameter "sweepActionBarCallBack"

    .prologue
    .line 562
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iput-object p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSweepActionBarCallBack:Lcom/sec/android/app/contacts/list/ContactListSweepActionHandler;

    .line 563
    return-void
.end method

.method public setSweepActionEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1935
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    sget-boolean v0, Lcom/android/contacts/list/ContactEntryListFragment;->sIsPhone:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/contacts/list/ContactEntryListFragment;->sIsMMSAvailable:Z

    if-eqz v0, :cond_1

    .line 1936
    :cond_0
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSweepActionEnabled:Z

    .line 1940
    :goto_0
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->updateSweepActionFeasibility()V

    .line 1950
    return-void

    .line 1938
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSweepActionEnabled:Z

    goto :goto_0
.end method

.method protected final setSweepActionListener(Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;)V
    .locals 0
    .parameter "sweepActionListener"

    .prologue
    .line 567
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iput-object p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mSweepActionListener:Lcom/sec/android/touchwiz/widget/TwSweepActionListView$SweepActionListener;

    .line 568
    return-void
.end method

.method public setVerticalScrollbarPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 1053
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVerticalScrollbarPosition:I

    if-eq v0, p1, :cond_0

    .line 1054
    iput p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVerticalScrollbarPosition:I

    .line 1055
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureVerticalScrollbar()V

    .line 1057
    :cond_0
    return-void
.end method

.method public setVerticalTwIndexScrollbarPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 1086
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVerticalTwIndexScrollbarPosition:I

    if-eq v0, p1, :cond_0

    .line 1087
    iput p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVerticalTwIndexScrollbarPosition:I

    .line 1088
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureVerticalTwIndexScrollbar()V

    .line 1090
    :cond_0
    return-void
.end method

.method public setVisibleScrollbarEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1042
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVisibleScrollbarEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1043
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVisibleScrollbarEnabled:Z

    .line 1044
    invoke-direct {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureVerticalScrollbar()V

    .line 1046
    :cond_0
    return-void
.end method

.method public setVisibleTwIndexScrollbarEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1073
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVisibleTwIndexScrollbarEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1074
    iput-boolean p1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mVisibleTwIndexScrollbarEnabled:Z

    .line 1075
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureVerticalTwIndexScrollbar()V

    .line 1077
    :cond_0
    return-void
.end method

.method protected showCount(ILandroid/database/Cursor;)V
    .locals 0
    .parameter "partitionIndex"
    .parameter "data"

    .prologue
    .line 1008
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    return-void
.end method

.method public showTwIndexScrollbar()V
    .locals 2

    .prologue
    .line 1753
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    if-eqz v0, :cond_0

    .line 1754
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 1755
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1756
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->bringToFront()V

    .line 1759
    :cond_0
    return-void
.end method

.method protected startFullQuery()V
    .locals 1

    .prologue
    .line 2085
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    instance-of v0, p0, Lcom/android/contacts/list/DefaultContactBrowseListFragment;

    if-eqz v0, :cond_0

    instance-of v0, p0, Lcom/sec/android/app/contacts/group/GroupMemberBrowseListFragment;

    if-eqz v0, :cond_1

    .line 2088
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/contacts/list/ContactEntryListFragment;->startFullQuery(Z)V

    .line 2093
    :goto_0
    return-void

    .line 2091
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/contacts/list/ContactEntryListFragment;->startFullQuery(Z)V

    goto :goto_0
.end method

.method protected startLoading()V
    .locals 6

    .prologue
    .line 637
    .local p0, this:Lcom/android/contacts/list/ContactEntryListFragment;,"Lcom/android/contacts/list/ContactEntryListFragment<TT;>;"
    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-nez v4, :cond_0

    .line 661
    :goto_0
    return-void

    .line 642
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->configureAdapter()V

    .line 643
    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v4}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartitionCount()I

    move-result v3

    .line 644
    .local v3, partitionCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_4

    .line 645
    iget-object v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    invoke-virtual {v4, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v2

    .line 646
    .local v2, partition:Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    instance-of v4, v2, Lcom/android/contacts/list/DirectoryPartition;

    if-eqz v4, :cond_3

    move-object v0, v2

    .line 647
    check-cast v0, Lcom/android/contacts/list/DirectoryPartition;

    .line 648
    .local v0, directoryPartition:Lcom/android/contacts/list/DirectoryPartition;
    invoke-virtual {v0}, Lcom/android/contacts/list/DirectoryPartition;->getStatus()I

    move-result v4

    if-nez v4, :cond_2

    .line 649
    invoke-virtual {v0}, Lcom/android/contacts/list/DirectoryPartition;->isPriorityDirectory()Z

    move-result v4

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mLoadPriorityDirectoriesOnly:Z

    if-nez v4, :cond_2

    .line 650
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/contacts/list/ContactEntryListFragment;->startLoadingDirectoryPartition(I)V

    .line 644
    .end local v0           #directoryPartition:Lcom/android/contacts/list/DirectoryPartition;
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 654
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactEntryListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_2

    .line 660
    .end local v2           #partition:Lcom/android/common/widget/CompositeCursorAdapter$Partition;
    :cond_4
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mLoadPriorityDirectoriesOnly:Z

    goto :goto_0
.end method

.method public unRegisterTwindexDataSetObserver()V
    .locals 2

    .prologue
    .line 1739
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mListView:Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    if-eqz v0, :cond_0

    .line 1740
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwIndexScrollView:Lcom/sec/android/touchwiz/widget/TwLangIndexScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    if-eqz v0, :cond_0

    .line 1742
    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mAdapter:Lcom/android/contacts/list/ContactEntryListAdapter;

    iget-object v1, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1746
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/list/ContactEntryListFragment;->mTwCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    .line 1749
    :cond_0
    return-void

    .line 1743
    :catch_0
    move-exception v0

    .line 1744
    const-string v0, "ContactEntryListFragment"

    const-string v1, "Observer TwCursorIndexer was not registered."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
