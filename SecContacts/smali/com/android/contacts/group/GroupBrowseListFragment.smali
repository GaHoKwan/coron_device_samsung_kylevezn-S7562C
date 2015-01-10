.class public Lcom/android/contacts/group/GroupBrowseListFragment;
.super Landroid/app/Fragment;
.source "GroupBrowseListFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/ExpandableListView$OnChildClickListener;
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;
.implements Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/group/GroupBrowseListFragment$ArrayListCursor;,
        Lcom/android/contacts/group/GroupBrowseListFragment$QueryHandler;,
        Lcom/android/contacts/group/GroupBrowseListFragment$GroupListItemCache;,
        Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;,
        Lcom/android/contacts/group/GroupBrowseListFragment$OnGroupBrowserActionListener;
    }
.end annotation


# static fields
.field static final GROUP_LIST_PROJECTION:[Ljava/lang/String;

.field static final GROUP_MEMBER_PROJECTION:[Ljava/lang/String;

.field private static mProgress:Ljava/lang/ref/WeakReference;
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
.field private final EXPANDED_CHILD_POSITION:Ljava/lang/String;

.field private final EXPANDED_GROUP_POSITION:Ljava/lang/String;

.field private alert:Landroid/app/AlertDialog;

.field private childpos:I

.field private groupPos:I

.field private mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

.field private mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

.field private mAddAccountsView:Landroid/view/View;

.field private mChagingSplitRatioMode:Z

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHugeFontSize:I

.field private mInternalGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

.field private mIsGroupDeleteAndMemberDialogShowing:Z

.field private mIsGroupDeleteOnlyDialogShowing:Z

.field private mIsHugeFontMode:Z

.field private mIsProgressShowing:Z

.field private mIsTwoPaneMode:Z

.field private mList:Landroid/widget/ExpandableListView;

.field private mListener:Lcom/android/contacts/group/GroupBrowseListFragment$OnGroupBrowserActionListener;

.field private mLowSegModel:Z

.field private mRootView:Landroid/view/View;

.field private mSelectedGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

.field private mSelectionToScreenRequested:Z

.field private mSelectionVisible:Z

.field private mShouldRefreshData:Z

.field private mSyncStatusObserver:Landroid/database/ContentObserver;

.field private popupMenu:Landroid/widget/PopupMenu;

.field private savedGroup:Lcom/sec/android/app/contacts/group/GroupInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 192
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "groups_count"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "data_set"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "system_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "auto_add"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/group/GroupBrowseListFragment;->GROUP_LIST_PROJECTION:[Ljava/lang/String;

    .line 205
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/contacts/group/GroupBrowseListFragment;->GROUP_MEMBER_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 170
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 158
    new-instance v0, Lcom/android/contacts/group/GroupBrowseListFragment$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/group/GroupBrowseListFragment$1;-><init>(Lcom/android/contacts/group/GroupBrowseListFragment;)V

    iput-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mHandler:Landroid/os/Handler;

    .line 233
    iput-boolean v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mChagingSplitRatioMode:Z

    .line 242
    const-string v0, "expanded_group_position"

    iput-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->EXPANDED_GROUP_POSITION:Ljava/lang/String;

    .line 243
    const-string v0, "expanded_child_position"

    iput-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->EXPANDED_CHILD_POSITION:Ljava/lang/String;

    .line 255
    iput-boolean v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mIsGroupDeleteOnlyDialogShowing:Z

    .line 257
    iput-boolean v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mIsGroupDeleteAndMemberDialogShowing:Z

    .line 261
    new-instance v0, Lcom/android/contacts/group/GroupBrowseListFragment$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/group/GroupBrowseListFragment$2;-><init>(Lcom/android/contacts/group/GroupBrowseListFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mSyncStatusObserver:Landroid/database/ContentObserver;

    .line 171
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/contacts/group/GroupBrowseListFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mIsHugeFontMode:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/contacts/group/GroupBrowseListFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mHugeFontSize:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/android/contacts/model/AccountTypeManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/contacts/group/GroupBrowseListFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectionToScreenRequested:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/contacts/group/GroupBrowseListFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectionToScreenRequested:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/contacts/group/GroupBrowseListFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectionVisible:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/sec/android/app/contacts/group/GroupInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->savedGroup:Lcom/sec/android/app/contacts/group/GroupInfo;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/contacts/group/GroupBrowseListFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->groupPos:I

    return v0
.end method

.method static synthetic access$2102(Lcom/android/contacts/group/GroupBrowseListFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->groupPos:I

    return p1
.end method

.method static synthetic access$2300(Lcom/android/contacts/group/GroupBrowseListFragment;)Lcom/sec/android/app/contacts/group/GroupInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectedGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/contacts/group/GroupBrowseListFragment;Lcom/sec/android/app/contacts/group/GroupInfo;)Lcom/sec/android/app/contacts/group/GroupInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectedGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/contacts/group/GroupBrowseListFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/contacts/group/GroupBrowseListFragment;->invalidateSeltectedGroupInfo()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/contacts/group/GroupBrowseListFragment;Lcom/sec/android/app/contacts/group/GroupInfo;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/group/GroupBrowseListFragment;->viewGroup(Lcom/sec/android/app/contacts/group/GroupInfo;Z)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/widget/PopupMenu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->popupMenu:Landroid/widget/PopupMenu;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/contacts/group/GroupBrowseListFragment;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupBrowseListFragment;->constructPopupMenu(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/contacts/group/GroupBrowseListFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/contacts/group/GroupBrowseListFragment;->performGroupQuery()V

    return-void
.end method

.method static synthetic access$3002(Lcom/android/contacts/group/GroupBrowseListFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mIsGroupDeleteOnlyDialogShowing:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/contacts/group/GroupBrowseListFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/contacts/group/GroupBrowseListFragment;->showProgress()V

    return-void
.end method

.method static synthetic access$3202(Lcom/android/contacts/group/GroupBrowseListFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mIsGroupDeleteAndMemberDialogShowing:Z

    return p1
.end method

.method static synthetic access$402(Lcom/android/contacts/group/GroupBrowseListFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mShouldRefreshData:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/contacts/group/GroupBrowseListFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mLowSegModel:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/contacts/group/GroupBrowseListFragment;Lcom/sec/android/app/contacts/group/GroupInfo;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupBrowseListFragment;->isExpanedListItem(Lcom/sec/android/app/contacts/group/GroupInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/contacts/group/GroupBrowseListFragment;)Landroid/widget/ExpandableListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/contacts/group/GroupBrowseListFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mIsTwoPaneMode:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/contacts/group/GroupBrowseListFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mChagingSplitRatioMode:Z

    return v0
.end method

.method private configureCustomActionBarAtBottom()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1891
    iget-object v4, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mRootView:Landroid/view/View;

    const v5, 0x7f090191

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1892
    iget-object v4, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mRootView:Landroid/view/View;

    const v5, 0x7f09018e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1893
    .local v0, bottomActionBar:Landroid/view/View;
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1895
    const v4, 0x7f09018f

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1896
    .local v3, searchButton:Landroid/view/View;
    new-instance v4, Lcom/android/contacts/group/GroupBrowseListFragment$4;

    invoke-direct {v4, p0}, Lcom/android/contacts/group/GroupBrowseListFragment$4;-><init>(Lcom/android/contacts/group/GroupBrowseListFragment;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1904
    const v4, 0x7f09016a

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1905
    .local v1, createButton:Landroid/view/View;
    new-instance v4, Lcom/android/contacts/group/GroupBrowseListFragment$5;

    invoke-direct {v4, p0}, Lcom/android/contacts/group/GroupBrowseListFragment$5;-><init>(Lcom/android/contacts/group/GroupBrowseListFragment;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1913
    const v4, 0x7f090190

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1914
    .local v2, menuButton:Landroid/view/View;
    new-instance v4, Lcom/android/contacts/group/GroupBrowseListFragment$6;

    invoke-direct {v4, p0}, Lcom/android/contacts/group/GroupBrowseListFragment$6;-><init>(Lcom/android/contacts/group/GroupBrowseListFragment;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1921
    return-void
.end method

.method private constructPopupMenu(Landroid/view/View;)V
    .locals 3
    .parameter "anchorView"

    .prologue
    .line 1846
    new-instance v1, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->popupMenu:Landroid/widget/PopupMenu;

    .line 1847
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->popupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 1848
    .local v0, menu:Landroid/view/Menu;
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->popupMenu:Landroid/widget/PopupMenu;

    const/high16 v2, 0x7f12

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 1849
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->popupMenu:Landroid/widget/PopupMenu;

    new-instance v2, Lcom/android/contacts/group/GroupBrowseListFragment$3;

    invoke-direct {v2, p0}, Lcom/android/contacts/group/GroupBrowseListFragment$3;-><init>(Lcom/android/contacts/group/GroupBrowseListFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 1856
    invoke-direct {p0, v0}, Lcom/android/contacts/group/GroupBrowseListFragment;->setupMenuItems(Landroid/view/Menu;)V

    .line 1857
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->popupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    .line 1858
    return-void
.end method

.method private createIntentForContextMenu(Landroid/view/Menu;Landroid/database/Cursor;)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x4

    const/4 v8, 0x1

    .line 2358
    new-instance v0, Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x6

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/contacts/group/GroupInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 2365
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/util/ContactsUtil;->parseGroupType(Lcom/sec/android/app/contacts/group/GroupInfo;Landroid/content/Context;)I

    move-result v2

    .line 2368
    const v1, 0x7f0903c9

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 2369
    const/4 v1, 0x2

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 2370
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 2371
    const-string v5, "GroupInfo"

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2372
    iget-boolean v5, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mLowSegModel:Z

    if-ne v5, v8, :cond_1

    .line 2373
    const-string v1, "hasMember"

    invoke-virtual {v4, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2377
    :goto_0
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 2380
    const v1, 0x7f0903ca

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 2381
    new-instance v3, Landroid/content/Intent;

    const-string v4, "intent.action.INTERACTION_GROUP_SELECT_MEMBER"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2382
    const-string v4, "com.sec.android.app.contacts.action.INTERACTION_GROUP_SELECT_MEMBER"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2383
    const-string v4, "GroupInfo"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2384
    const-string v4, "actionCode"

    const/16 v5, 0x96

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2385
    const-string v4, "SelectMode"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2386
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 2389
    const v1, 0x7f0903cb

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 2390
    new-instance v3, Landroid/content/Intent;

    const-string v4, "intent.action.INTERACTION_GROUP_SELECT_MEMBER"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2391
    const-string v4, "com.sec.android.app.contacts.action.INTERACTION_GROUP_SELECT_MEMBER"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2392
    const-string v4, "GroupInfo"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2393
    const-string v4, "actionCode"

    const/16 v5, 0xa0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2394
    const-string v4, "SelectMode"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2395
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 2398
    const v1, 0x7f0903cc

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 2399
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/contacts/activities/GroupEditorActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2400
    const-string v3, "android.intent.action.EDIT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2401
    const-string v3, "GroupInfo"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2402
    const-string v0, "com.google"

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v3, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "com.android.nttdocomo"

    invoke-interface {p2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2410
    :cond_0
    const-string v0, "EditMode"

    const/16 v3, 0xf

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2416
    :goto_1
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 2417
    return-void

    .line 2375
    :cond_1
    const-string v5, "hasMember"

    if-lez v1, :cond_2

    move v1, v8

    :goto_2
    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_0

    :cond_2
    move v1, v9

    goto :goto_2

    .line 2413
    :cond_3
    const-string v0, "EditMode"

    const/16 v3, 0xe

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1
.end method

.method private dismissProgress()V
    .locals 3

    .prologue
    .line 1813
    sget-object v1, Lcom/android/contacts/group/GroupBrowseListFragment;->mProgress:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    .line 1814
    const-string v1, "GroupBrowseListFragment"

    const-string v2, "progress null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1828
    :goto_0
    return-void

    .line 1816
    :cond_0
    sget-object v1, Lcom/android/contacts/group/GroupBrowseListFragment;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1817
    const-string v1, "GroupBrowseListFragment"

    const-string v2, "progress.get null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1820
    :cond_1
    :try_start_0
    sget-object v1, Lcom/android/contacts/group/GroupBrowseListFragment;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 1821
    const/4 v1, 0x0

    sput-object v1, Lcom/android/contacts/group/GroupBrowseListFragment;->mProgress:Ljava/lang/ref/WeakReference;

    .line 1822
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mIsProgressShowing:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1823
    :catch_0
    move-exception v0

    .line 1824
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "GroupBrowseListFragment"

    const-string v2, "Error dismissing progress dialog"

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getQueryDelay()I
    .locals 2

    .prologue
    .line 2448
    iget-boolean v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mLowSegModel:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2449
    const-string v0, "GroupBrowseListFragment"

    const-string v1, "VR get Delay for Low seg model Nevis to 2000 "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2450
    const/16 v0, 0x7d0

    .line 2453
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x3e8

    goto :goto_0
.end method

.method private hideSoftKeyboard()V
    .locals 3

    .prologue
    .line 2209
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    if-eqz v0, :cond_0

    .line 2211
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2213
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2215
    :cond_0
    return-void
.end method

.method private invalidateSeltectedGroupInfo()V
    .locals 3

    .prologue
    .line 2165
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupBrowseListFragment;->getSelectedGroupPosition()I

    move-result v0

    .line 2166
    .local v0, position:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2167
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->setSelectedGroup(Lcom/sec/android/app/contacts/group/GroupInfo;)V

    .line 2168
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->setAutoAdd(Z)V

    .line 2170
    :cond_0
    return-void
.end method

.method private isExpanedListItem(Lcom/sec/android/app/contacts/group/GroupInfo;)Z
    .locals 2
    .parameter "groupInfo"

    .prologue
    .line 2462
    const-string v0, "com.google"

    invoke-virtual {p1}, Lcom/sec/android/app/contacts/group/GroupInfo;->getAccountType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isFromGroupListContextMenu(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "menuItem"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 567
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 568
    .local v0, itemId:I
    const v3, 0x7f0903ca

    if-eq v3, v0, :cond_0

    const v3, 0x7f0903cb

    if-eq v3, v0, :cond_0

    const v3, 0x7f0903cc

    if-eq v3, v0, :cond_0

    const v3, 0x7f0903c9

    if-ne v3, v0, :cond_1

    .line 580
    :cond_0
    :goto_0
    return v1

    .line 572
    :cond_1
    const v3, 0x7f0903cd

    if-ne v3, v0, :cond_2

    .line 574
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_IMS_EnableRCSPresence"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 577
    goto :goto_0

    :cond_2
    move v1, v2

    .line 580
    goto :goto_0
.end method

.method private isSelectedGoogleAccountAvailable(Ljava/lang/String;)Z
    .locals 6
    .parameter "aGoogleAccName"

    .prologue
    const/4 v4, 0x0

    .line 1592
    iget-object v5, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    .line 1593
    .local v0, accountTypes:Lcom/android/contacts/model/AccountTypeManager;
    invoke-virtual {v0}, Lcom/android/contacts/model/AccountTypeManager;->getGoogleAccountsWithDataSet()Ljava/util/List;

    move-result-object v1

    .line 1595
    .local v1, googleAccountList:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    if-eqz v1, :cond_0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 1606
    :cond_0
    :goto_0
    return v4

    .line 1599
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1600
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/model/AccountWithDataSet;>;"
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1601
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/AccountWithDataSet;

    .line 1602
    .local v3, lAccName:Lcom/android/contacts/model/AccountWithDataSet;
    iget-object v5, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1603
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private performGroupQuery()V
    .locals 4

    .prologue
    .line 2430
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2431
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/contacts/activities/PeopleActivity;

    if-eqz v1, :cond_1

    .line 2432
    check-cast v0, Lcom/android/contacts/activities/PeopleActivity;

    .line 2433
    invoke-virtual {v0}, Lcom/android/contacts/activities/PeopleActivity;->getActivityTabState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2434
    const-string v0, "GroupBrowseListFragment"

    const-string v1, "VR Start query with delay "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2435
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/contacts/group/GroupBrowseListFragment;->getQueryDelay()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2444
    :goto_0
    return-void

    .line 2437
    :cond_0
    const-string v0, "GroupBrowseListFragment"

    const-string v1, "VR Start query immediatelly 1"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2438
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    #calls: Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->startQuery()V
    invoke-static {v0}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->access$100(Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;)V

    goto :goto_0

    .line 2441
    :cond_1
    const-string v0, "GroupBrowseListFragment"

    const-string v1, "VR Start query immediatelly 2"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2442
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    #calls: Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->startQuery()V
    invoke-static {v0}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->access$100(Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;)V

    goto :goto_0
.end method

.method private registerSyncStatusObserver()V
    .locals 4

    .prologue
    .line 296
    const-string v1, "content://com.android.contacts/check_photo_updates"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 297
    .local v0, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mSyncStatusObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 298
    return-void
.end method

.method private setIsAutoAdd(Z)V
    .locals 1
    .parameter "isAutoAdd"

    .prologue
    .line 2119
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    if-eqz v0, :cond_0

    .line 2120
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->setAutoAdd(Z)V

    .line 2121
    :cond_0
    return-void
.end method

.method private setSelectedGroup(Lcom/sec/android/app/contacts/group/GroupInfo;)V
    .locals 1
    .parameter "groupInfo"

    .prologue
    .line 2124
    iput-object p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectedGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    .line 2125
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2126
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->setSelectedGroup(Lcom/sec/android/app/contacts/group/GroupInfo;)V

    .line 2128
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    if-eqz v0, :cond_1

    .line 2129
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->invalidateViews()V

    .line 2130
    :cond_1
    return-void
.end method

.method private setupMenuItems(Landroid/view/Menu;)V
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 1862
    const v1, 0x7f090370

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1863
    const v1, 0x7f09036e

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1864
    const v1, 0x7f09036f

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1865
    const v1, 0x7f090377

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1866
    const v1, 0x7f090379

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1867
    const v1, 0x7f09037a

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1868
    const v1, 0x7f09037b

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1869
    const v1, 0x7f09037d

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1870
    const v1, 0x7f09037e

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1871
    const v1, 0x7f09037f

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1872
    const v1, 0x7f090382

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1873
    const v1, 0x7f09037c

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1874
    const v1, 0x7f090383

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1875
    const v1, 0x7f090384

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1876
    const v1, 0x7f090385

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1877
    const v1, 0x7f090386

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1879
    const v1, 0x7f090380

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1880
    .local v0, contactCounterMenu:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 1881
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1883
    :cond_0
    const v1, 0x7f090387

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1884
    const v1, 0x7f090388

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1885
    const v1, 0x7f090389

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1886
    const v1, 0x7f090381

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1887
    return-void
.end method

.method private showDeleleDialog(ILcom/sec/android/app/contacts/group/GroupInfo;)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const v11, 0x7f0d0359

    const v10, 0x7f0d02f8

    const v9, 0x7f0d01ed

    const/4 v8, 0x1

    .line 2218
    invoke-virtual {p2}, Lcom/sec/android/app/contacts/group/GroupInfo;->getGroupId()J

    move-result-wide v4

    .line 2219
    invoke-virtual {p2}, Lcom/sec/android/app/contacts/group/GroupInfo;->getAccountType()Ljava/lang/String;

    move-result-object v2

    .line 2220
    invoke-virtual {p2}, Lcom/sec/android/app/contacts/group/GroupInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 2222
    packed-switch p1, :pswitch_data_0

    .line 2354
    :goto_0
    return-void

    .line 2224
    :pswitch_0
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2225
    const v0, 0x7f0d01ee

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v0, Lcom/android/contacts/group/GroupBrowseListFragment$9;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/group/GroupBrowseListFragment$9;-><init>(Lcom/android/contacts/group/GroupBrowseListFragment;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v7, v11, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/group/GroupBrowseListFragment$8;

    invoke-direct {v1, p0}, Lcom/android/contacts/group/GroupBrowseListFragment$8;-><init>(Lcom/android/contacts/group/GroupBrowseListFragment;)V

    invoke-virtual {v0, v10, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/group/GroupBrowseListFragment$7;

    invoke-direct {v1, p0}, Lcom/android/contacts/group/GroupBrowseListFragment$7;-><init>(Lcom/android/contacts/group/GroupBrowseListFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 2283
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->alert:Landroid/app/AlertDialog;

    .line 2284
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->alert:Landroid/app/AlertDialog;

    invoke-virtual {v0, v9}, Landroid/app/Dialog;->setTitle(I)V

    .line 2285
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->alert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 2286
    iput-boolean v8, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mIsGroupDeleteOnlyDialogShowing:Z

    goto :goto_0

    .line 2289
    :pswitch_1
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2290
    const v0, 0x7f0d01f0

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v0, Lcom/android/contacts/group/GroupBrowseListFragment$12;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/group/GroupBrowseListFragment$12;-><init>(Lcom/android/contacts/group/GroupBrowseListFragment;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v7, v11, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/group/GroupBrowseListFragment$11;

    invoke-direct {v1, p0}, Lcom/android/contacts/group/GroupBrowseListFragment$11;-><init>(Lcom/android/contacts/group/GroupBrowseListFragment;)V

    invoke-virtual {v0, v10, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/group/GroupBrowseListFragment$10;

    invoke-direct {v1, p0}, Lcom/android/contacts/group/GroupBrowseListFragment$10;-><init>(Lcom/android/contacts/group/GroupBrowseListFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 2348
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->alert:Landroid/app/AlertDialog;

    .line 2349
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->alert:Landroid/app/AlertDialog;

    invoke-virtual {v0, v9}, Landroid/app/Dialog;->setTitle(I)V

    .line 2350
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->alert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 2351
    iput-boolean v8, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mIsGroupDeleteAndMemberDialogShowing:Z

    goto :goto_0

    .line 2222
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showProgress()V
    .locals 4

    .prologue
    .line 1799
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1800
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 1801
    new-instance v1, Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    const v3, 0x7f0d0249

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/android/contacts/group/GroupBrowseListFragment;->mProgress:Ljava/lang/ref/WeakReference;

    .line 1803
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mIsProgressShowing:Z

    .line 1807
    :goto_0
    return-void

    .line 1805
    :cond_0
    const-string v1, "GroupBrowseListFragment"

    const-string v2, "showProgress() : context is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private unregisterSyncStatusObserver()V
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mSyncStatusObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 302
    return-void
.end method

.method private viewGroup(Lcom/sec/android/app/contacts/group/GroupInfo;Z)V
    .locals 1
    .parameter "groupInfo"
    .parameter "isAutoAdd"

    .prologue
    .line 2141
    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupBrowseListFragment;->setSelectedGroup(Lcom/sec/android/app/contacts/group/GroupInfo;)V

    .line 2142
    invoke-direct {p0, p2}, Lcom/android/contacts/group/GroupBrowseListFragment;->setIsAutoAdd(Z)V

    .line 2143
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mListener:Lcom/android/contacts/group/GroupBrowseListFragment$OnGroupBrowserActionListener;

    if-eqz v0, :cond_0

    .line 2144
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mListener:Lcom/android/contacts/group/GroupBrowseListFragment$OnGroupBrowserActionListener;

    invoke-interface {v0, p1, p2}, Lcom/android/contacts/group/GroupBrowseListFragment$OnGroupBrowserActionListener;->onViewGroupAction(Lcom/sec/android/app/contacts/group/GroupInfo;Z)V

    .line 2145
    :cond_0
    return-void
.end method


# virtual methods
.method public configureListPadding(Z)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 2023
    if-eqz p1, :cond_0

    .line 2024
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    const/high16 v2, 0x200

    invoke-virtual {v0, v2}, Landroid/view/View;->setScrollBarStyle(I)V

    .line 2027
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->shouldApplyUiMirroring()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2028
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c0095

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 2034
    :goto_0
    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    iget-object v3, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v2, v1, v3, v0, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 2037
    :cond_0
    return-void

    .line 2031
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c0094

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    move v5, v1

    move v1, v0

    move v0, v5

    goto :goto_0
.end method

.method public dismissAlertDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1749
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->alert:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 1750
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->alert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1751
    iput-boolean v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mIsGroupDeleteOnlyDialogShowing:Z

    .line 1752
    iput-boolean v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mIsGroupDeleteAndMemberDialogShowing:Z

    .line 1754
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->alert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1756
    :cond_1
    return-void
.end method

.method public getGroupTitle(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "c"

    .prologue
    .line 1759
    if-nez p2, :cond_1

    .line 1760
    const/4 v1, 0x0

    .line 1785
    :cond_0
    :goto_0
    return-object v1

    .line 1763
    :cond_1
    const-string v2, "title"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1764
    .local v1, title:Ljava/lang/String;
    const-string v2, "system_id"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1765
    .local v0, systemId:Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    .line 1767
    invoke-static {v0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getSystemTitleRes(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1771
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1772
    const v2, 0x7f0d0099

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1781
    :cond_3
    :goto_1
    const-string v2, "_id"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 1782
    const v2, 0x7f0d0149

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1773
    :cond_4
    const-string v2, "ICE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1774
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->shouldChangeEmergencyText()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1775
    const v2, 0x7f0d0285

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1778
    :cond_5
    const v2, 0x7f0d0284

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public getSelectedGroup()Lcom/sec/android/app/contacts/group/GroupInfo;
    .locals 1

    .prologue
    .line 2137
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectedGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    return-object v0
.end method

.method public getSelectedGroupPosition()I
    .locals 1

    .prologue
    .line 2133
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->getSelectedGroupPosition()I

    move-result v0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v6, -0x1

    .line 587
    packed-switch p1, :pswitch_data_0

    .line 626
    :cond_0
    :goto_0
    return-void

    .line 590
    :pswitch_0
    if-ne p2, v6, :cond_0

    .line 591
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.SENDTO"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 592
    .local v2, intent:Landroid/content/Intent;
    const-string v6, "result"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 593
    .local v5, rtnData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v6, "smsto"

    const-string v7, ""

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 594
    .local v4, phoneUri:Landroid/net/Uri;
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 595
    const-string v6, "sendto"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 596
    invoke-virtual {p0, v2}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 601
    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #phoneUri:Landroid/net/Uri;
    .end local v5           #rtnData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_1
    if-ne p2, v6, :cond_0

    .line 602
    const-string v6, "result"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 603
    .restart local v5       #rtnData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v3, v6, [Ljava/lang/String;

    .line 604
    .local v3, output:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 605
    const-string v6, ""

    aput-object v6, v3, v1

    .line 606
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v3, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v9, ";"

    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v1

    .line 604
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 608
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.SENDTO"

    const-string v7, "mailto:"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 609
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v6, "android.intent.extra.EMAIL"

    invoke-virtual {v2, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 611
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 612
    :catch_0
    move-exception v0

    .line 613
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0d0125

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 615
    const-string v6, "GroupBrowseListFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No activity found for intent: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 621
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    .end local v1           #i:I
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #output:[Ljava/lang/String;
    .end local v5           #rtnData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_2
    if-ne p2, v6, :cond_0

    goto/16 :goto_0

    .line 587
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 2041
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 2043
    iput-object p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;

    .line 2044
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    .line 2045
    new-instance v0, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;-><init>(Lcom/android/contacts/group/GroupBrowseListFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    .line 2046
    invoke-direct {p0}, Lcom/android/contacts/group/GroupBrowseListFragment;->registerSyncStatusObserver()V

    .line 2048
    invoke-static {p1}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mIsTwoPaneMode:Z

    .line 2049
    return-void
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 11
    .parameter "parent"
    .parameter "view"
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "id"

    .prologue
    .line 1535
    iget-object v10, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    invoke-virtual {v10, p3, p4}, Landroid/widget/CursorTreeAdapter;->getChild(II)Landroid/database/Cursor;

    move-result-object v8

    .line 1536
    .local v8, c:Landroid/database/Cursor;
    iput p3, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->groupPos:I

    .line 1537
    iput p4, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->childpos:I

    .line 1538
    if-eqz v8, :cond_0

    .line 1539
    const/4 v10, 0x0

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1540
    .local v4, groupId:J
    const/4 v10, 0x4

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1541
    .local v1, accountType:Ljava/lang/String;
    const/4 v10, 0x3

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1542
    .local v2, accountName:Ljava/lang/String;
    const/4 v10, 0x5

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1543
    .local v3, dataSet:Ljava/lang/String;
    const/4 v10, 0x1

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1544
    .local v6, title:Ljava/lang/String;
    const/4 v10, 0x6

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1547
    .local v7, systemId:Ljava/lang/String;
    const/4 v10, 0x7

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-eqz v10, :cond_1

    const/4 v9, 0x1

    .line 1550
    .local v9, isAutoAdd:Z
    :goto_0
    new-instance v0, Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/contacts/group/GroupInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 1551
    .local v0, groupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;
    invoke-direct {p0, v0, v9}, Lcom/android/contacts/group/GroupBrowseListFragment;->viewGroup(Lcom/sec/android/app/contacts/group/GroupInfo;Z)V

    .line 1554
    .end local v0           #groupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;
    .end local v1           #accountType:Ljava/lang/String;
    .end local v2           #accountName:Ljava/lang/String;
    .end local v3           #dataSet:Ljava/lang/String;
    .end local v4           #groupId:J
    .end local v6           #title:Ljava/lang/String;
    .end local v7           #systemId:Ljava/lang/String;
    .end local v9           #isAutoAdd:Z
    :cond_0
    const/4 v10, 0x0

    return v10

    .line 1547
    .restart local v1       #accountType:Ljava/lang/String;
    .restart local v2       #accountName:Ljava/lang/String;
    .restart local v3       #dataSet:Ljava/lang/String;
    .restart local v4       #groupId:J
    .restart local v6       #title:Ljava/lang/String;
    .restart local v7       #systemId:Ljava/lang/String;
    :cond_1
    const/4 v9, 0x0

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 504
    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupBrowseListFragment;->isFromGroupListContextMenu(Landroid/view/MenuItem;)Z

    move-result v3

    .line 506
    .local v3, isFromGroupList:Z
    if-nez v3, :cond_0

    .line 556
    :goto_0
    return v5

    .line 509
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 510
    .local v2, intent:Landroid/content/Intent;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    :cond_1
    :goto_1
    move v5, v6

    .line 556
    goto :goto_0

    .line 514
    :pswitch_0
    const-string v5, "FromMMS"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 515
    const/4 v5, 0x5

    invoke-virtual {p0, v2, v5}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 518
    :pswitch_1
    const/4 v5, 0x6

    invoke-virtual {p0, v2, v5}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 521
    :pswitch_2
    const/4 v5, 0x7

    invoke-virtual {p0, v2, v5}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 524
    :pswitch_3
    const-string v7, "hasMember"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 526
    .local v1, hasMember:Z
    const-string v7, "GroupInfo"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/group/GroupInfo;

    .line 528
    .local v0, groupinfo:Lcom/sec/android/app/contacts/group/GroupInfo;
    iput-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mInternalGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    .line 529
    if-eqz v1, :cond_2

    .line 530
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 531
    .local v4, selectedGroups:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Lcom/sec/android/app/contacts/group/GroupInfo;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 532
    invoke-static {p0, v4}, Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment;->show(Landroid/app/Fragment;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 535
    .end local v4           #selectedGroups:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    invoke-direct {p0, v5, v0}, Lcom/android/contacts/group/GroupBrowseListFragment;->showDeleleDialog(ILcom/sec/android/app/contacts/group/GroupInfo;)V

    goto :goto_1

    .line 540
    .end local v0           #groupinfo:Lcom/sec/android/app/contacts/group/GroupInfo;
    .end local v1           #hasMember:Z
    :pswitch_4
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v7, "CscFeature_IMS_EnableRCSPresence"

    invoke-virtual {v5, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 510
    nop

    :pswitch_data_0
    .packed-switch 0x7f0903c9
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    .line 306
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 307
    iput-boolean v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mShouldRefreshData:Z

    .line 308
    const-string v0, "GroupBrowseListFragment"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/util/LoadCscFeatureUtils;->isNotShownGroupMemberCount()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    iput-boolean v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mLowSegModel:Z

    .line 315
    :goto_0
    return-void

    .line 313
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mLowSegModel:Z

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 15
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 351
    invoke-super/range {p0 .. p3}, Landroid/app/Fragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 356
    :try_start_0
    move-object/from16 v0, p3

    check-cast v0, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    move-object v7, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    .local v7, info:Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;
    if-nez v7, :cond_1

    .line 493
    .end local v7           #info:Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;
    :cond_0
    :goto_0
    return-void

    .line 358
    :catch_0
    move-exception v4

    .line 360
    .local v4, e:Ljava/lang/ClassCastException;
    goto :goto_0

    .line 367
    .end local v4           #e:Ljava/lang/ClassCastException;
    .restart local v7       #info:Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;
    :cond_1
    iget-object v11, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isUsmMode(Landroid/content/Context;)Z

    move-result v9

    .line 368
    .local v9, isUsmEnabled:Z
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v6

    .line 369
    .local v6, inflater:Landroid/view/MenuInflater;
    const v11, 0x7f120012

    move-object/from16 v0, p1

    invoke-virtual {v6, v11, v0}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 371
    const/4 v3, 0x0

    .line 372
    .local v3, cursor:Landroid/database/Cursor;
    iget-wide v11, v7, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v11, v12}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v10

    .line 375
    .local v10, type:I
    packed-switch v10, :pswitch_data_0

    .line 392
    :goto_1
    if-eqz v3, :cond_0

    const/4 v11, 0x0

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-eqz v11, :cond_0

    const/4 v11, 0x1

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isICEGroup(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 397
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v3}, Lcom/android/contacts/group/GroupBrowseListFragment;->createIntentForContextMenu(Landroid/view/Menu;Landroid/database/Cursor;)V

    .line 400
    iget-object v11, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMMSAvailable(Landroid/content/Context;)Z

    move-result v8

    .line 403
    .local v8, isSMSAvailable:Z
    const/4 v11, 0x6

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_8

    const/4 v11, 0x6

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_8

    .line 405
    const/4 v11, 0x6

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getSystemTitleRes(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 410
    iget-boolean v11, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mLowSegModel:Z

    if-nez v11, :cond_2

    const/4 v11, 0x2

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-gtz v11, :cond_3

    :cond_2
    iget-boolean v11, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mLowSegModel:Z

    const/4 v12, 0x1

    if-ne v11, v12, :cond_4

    .line 411
    :cond_3
    const v11, 0x7f0903ca

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 412
    const v11, 0x7f0903cb

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    const/4 v12, 0x1

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 413
    const v11, 0x7f0903cb

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    if-eqz v9, :cond_6

    const/4 v11, 0x0

    :goto_2
    invoke-interface {v12, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 414
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v11

    const-string v12, "CscFeature_IMS_EnableRCSPresence"

    invoke-virtual {v11, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 415
    const v11, 0x7f0903cd

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    const/4 v12, 0x1

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 421
    :cond_4
    :goto_3
    const/4 v11, 0x6

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "xxx"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 422
    const v11, 0x7f0903cc

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    const/4 v12, 0x1

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 426
    :cond_5
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v11

    const-string v12, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v11, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v11, 0x4

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "com.android.nttdocomo"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v11, 0x6

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 431
    const v11, 0x7f0903c9

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    const/4 v12, 0x1

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 378
    .end local v8           #isSMSAvailable:Z
    :pswitch_0
    iget-wide v11, v7, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v11, v12}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v5

    .line 379
    .local v5, groupPos:I
    iget-wide v11, v7, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v11, v12}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v2

    .line 380
    .local v2, childPos:I
    iget-object v11, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    invoke-virtual {v11, v5, v2}, Landroid/widget/CursorTreeAdapter;->getChild(II)Landroid/database/Cursor;

    move-result-object v3

    .line 381
    goto/16 :goto_1

    .line 384
    .end local v2           #childPos:I
    .end local v5           #groupPos:I
    :pswitch_1
    iget-wide v11, v7, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v11, v12}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v5

    .line 385
    .restart local v5       #groupPos:I
    iget-object v11, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    invoke-virtual {v11, v5}, Landroid/widget/CursorTreeAdapter;->getGroup(I)Landroid/database/Cursor;

    move-result-object v3

    .line 386
    goto/16 :goto_1

    .line 413
    .end local v5           #groupPos:I
    .restart local v8       #isSMSAvailable:Z
    :cond_6
    const/4 v11, 0x1

    goto/16 :goto_2

    .line 417
    :cond_7
    const v11, 0x7f0903cd

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3

    .line 435
    :cond_8
    const/4 v11, 0x0

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-gez v11, :cond_c

    .line 436
    iget-object v11, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    const/4 v12, 0x4

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x5

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v1

    .line 440
    .local v1, accountType:Lcom/android/contacts/model/AccountType;
    iget-object v11, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v11}, Lcom/android/contacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 442
    iget-boolean v11, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mLowSegModel:Z

    if-nez v11, :cond_9

    const/4 v11, 0x2

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-gtz v11, :cond_a

    :cond_9
    iget-boolean v11, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mLowSegModel:Z

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    .line 443
    :cond_a
    const v11, 0x7f0903ca

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 444
    const v11, 0x7f0903cb

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    if-eqz v9, :cond_b

    const/4 v11, 0x0

    :goto_4
    invoke-interface {v12, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_b
    const/4 v11, 0x1

    goto :goto_4

    .line 448
    .end local v1           #accountType:Lcom/android/contacts/model/AccountType;
    :cond_c
    const-string v11, "com.google"

    const/4 v12, 0x4

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    const-string v11, "plus"

    const/4 v12, 0x5

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 452
    const/4 v11, 0x1

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 454
    iget-boolean v11, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mLowSegModel:Z

    if-nez v11, :cond_d

    const/4 v11, 0x2

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-gtz v11, :cond_e

    :cond_d
    iget-boolean v11, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mLowSegModel:Z

    const/4 v12, 0x1

    if-ne v11, v12, :cond_0

    .line 455
    :cond_e
    const v11, 0x7f0903ca

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 456
    const v11, 0x7f0903cb

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    if-eqz v9, :cond_f

    const/4 v11, 0x0

    :goto_5
    invoke-interface {v12, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_f
    const/4 v11, 0x1

    goto :goto_5

    .line 458
    :cond_10
    const/4 v11, 0x1

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "Starred in Android"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_16

    .line 459
    const/4 v11, 0x1

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 461
    iget-boolean v11, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mLowSegModel:Z

    if-nez v11, :cond_11

    const/4 v11, 0x2

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-gtz v11, :cond_12

    :cond_11
    iget-boolean v11, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mLowSegModel:Z

    const/4 v12, 0x1

    if-ne v11, v12, :cond_13

    .line 462
    :cond_12
    const v11, 0x7f0903ca

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 463
    const v11, 0x7f0903cb

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    if-eqz v9, :cond_14

    const/4 v11, 0x0

    :goto_6
    invoke-interface {v12, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 466
    :cond_13
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v11

    const-string v12, "CscFeature_IMS_EnableRCSPresence"

    invoke-virtual {v11, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_15

    .line 467
    const v11, 0x7f0903cd

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    const/4 v12, 0x1

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 471
    :goto_7
    const v11, 0x7f0903cc

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    const/4 v12, 0x1

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 463
    :cond_14
    const/4 v11, 0x1

    goto :goto_6

    .line 469
    :cond_15
    const v11, 0x7f0903cd

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_7

    .line 475
    :cond_16
    const/4 v11, 0x1

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 476
    const v11, 0x7f0903c9

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    const/4 v12, 0x1

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 478
    iget-boolean v11, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mLowSegModel:Z

    if-nez v11, :cond_17

    const/4 v11, 0x2

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-gtz v11, :cond_18

    :cond_17
    iget-boolean v11, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mLowSegModel:Z

    const/4 v12, 0x1

    if-ne v11, v12, :cond_19

    .line 479
    :cond_18
    const v11, 0x7f0903ca

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    const/4 v12, 0x1

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 480
    const v11, 0x7f0903ca

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    invoke-interface {v11, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 481
    const v11, 0x7f0903cb

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    if-eqz v9, :cond_1a

    const/4 v11, 0x0

    :goto_8
    invoke-interface {v12, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 483
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v11

    const-string v12, "CscFeature_IMS_EnableRCSPresence"

    invoke-virtual {v11, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1b

    .line 484
    const v11, 0x7f0903cd

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    const/4 v12, 0x1

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 490
    :cond_19
    :goto_9
    const v11, 0x7f0903cc

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    const/4 v12, 0x1

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 481
    :cond_1a
    const/4 v11, 0x1

    goto :goto_8

    .line 486
    :cond_1b
    const v11, 0x7f0903cd

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_9

    .line 375
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v4, -0x1

    const/4 v2, 0x0

    .line 1943
    const-string v0, "GroupBrowseListFragment"

    const-string v3, "VR onCreateView GroupBrowseListFragment"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1945
    if-eqz p3, :cond_7

    .line 1946
    const-string v0, "groupInfoInternal"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/group/GroupInfo;

    iput-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mInternalGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    .line 1947
    const-string v0, "groupInfo"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/group/GroupInfo;

    iput-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectedGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    .line 1948
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectedGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    if-eqz v0, :cond_0

    .line 1951
    iput-boolean v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectionToScreenRequested:Z

    .line 1952
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    iget-object v3, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectedGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v0, v3}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->setSelectedGroup(Lcom/sec/android/app/contacts/group/GroupInfo;)V

    .line 1953
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectedGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/group/GroupInfo;->getAccountName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "vnd.sec.contact.phone"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectedGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/group/GroupInfo;->getAccountName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "vnd.sec.contact.agg.account_name"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1954
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectedGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    iput-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->savedGroup:Lcom/sec/android/app/contacts/group/GroupInfo;

    .line 1955
    const-string v0, "expanded_group_position"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->groupPos:I

    .line 1956
    const-string v0, "expanded_child_position"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->childpos:I

    .line 1965
    :cond_0
    :goto_0
    const-string v0, "isAutoAdd"

    invoke-virtual {p3, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1966
    iget-object v3, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    invoke-virtual {v3, v0}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->setAutoAdd(Z)V

    .line 1967
    const-string v0, "isShowing"

    invoke-virtual {p3, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mIsProgressShowing:Z

    .line 1970
    const-string v0, "isShowingDeleteGroupOnly"

    invoke-virtual {p3, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mIsGroupDeleteOnlyDialogShowing:Z

    .line 1972
    const-string v0, "isShowingDeleteGroupAndMemberOnly"

    invoke-virtual {p3, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mIsGroupDeleteAndMemberDialogShowing:Z

    .line 1975
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mInternalGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    if-eqz v0, :cond_1

    .line 1976
    iget-boolean v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mIsGroupDeleteOnlyDialogShowing:Z

    if-eqz v0, :cond_6

    .line 1977
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mInternalGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-direct {p0, v2, v0}, Lcom/android/contacts/group/GroupBrowseListFragment;->showDeleleDialog(ILcom/sec/android/app/contacts/group/GroupInfo;)V

    .line 1988
    :cond_1
    :goto_1
    const v0, 0x7f040103

    invoke-virtual {p1, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mRootView:Landroid/view/View;

    .line 1989
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->hasPermanentMenuKey(Landroid/content/Context;)Z

    move-result v0

    .line 1990
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    if-nez v0, :cond_2

    .line 1992
    invoke-direct {p0}, Lcom/android/contacts/group/GroupBrowseListFragment;->configureCustomActionBarAtBottom()V

    .line 1995
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mRootView:Landroid/view/View;

    const v3, 0x102000a

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    .line 1996
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    iget-object v3, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    invoke-virtual {v0, v3}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 1997
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 1998
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 1999
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v5}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 2000
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 2001
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2003
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2004
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVerticalScrollBarPadding(Z)V

    .line 2005
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c00ad

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setVerticalScrollBarPaddingPosition(I)V

    .line 2011
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->registerForContextMenu(Landroid/view/View;)V

    .line 2013
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/ContactsUtils;->areGroupWritableAccountsAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v1

    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/contacts/group/GroupBrowseListFragment;->setAddAccountsVisibility(Z)V

    .line 2015
    iget-boolean v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mIsProgressShowing:Z

    if-eqz v0, :cond_4

    .line 2016
    invoke-direct {p0}, Lcom/android/contacts/group/GroupBrowseListFragment;->showProgress()V

    .line 2018
    :cond_4
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mRootView:Landroid/view/View;

    return-object v0

    .line 1959
    :cond_5
    iput-object v5, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->savedGroup:Lcom/sec/android/app/contacts/group/GroupInfo;

    .line 1960
    iput v4, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->groupPos:I

    .line 1961
    iput v4, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->childpos:I

    goto/16 :goto_0

    .line 1978
    :cond_6
    iget-boolean v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mIsGroupDeleteAndMemberDialogShowing:Z

    if-eqz v0, :cond_1

    .line 1979
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mInternalGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-direct {p0, v1, v0}, Lcom/android/contacts/group/GroupBrowseListFragment;->showDeleleDialog(ILcom/sec/android/app/contacts/group/GroupInfo;)V

    goto/16 :goto_1

    .line 1984
    :cond_7
    iput-object v5, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->savedGroup:Lcom/sec/android/app/contacts/group/GroupInfo;

    .line 1985
    iput v4, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->groupPos:I

    .line 1986
    iput v4, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->childpos:I

    goto/16 :goto_1

    :cond_8
    move v0, v2

    .line 2013
    goto :goto_2
.end method

.method public onDeleteCompleted()V
    .locals 0

    .prologue
    .line 1792
    invoke-direct {p0}, Lcom/android/contacts/group/GroupBrowseListFragment;->dismissProgress()V

    .line 1793
    return-void
.end method

.method public onDeleteGroupOnlyChosen()V
    .locals 2

    .prologue
    .line 2421
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mInternalGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->showDeleleDialog(ILcom/sec/android/app/contacts/group/GroupInfo;)V

    .line 2422
    return-void
.end method

.method public onDeleteGroupWithMemberChosen()V
    .locals 2

    .prologue
    .line 2426
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mInternalGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-direct {p0, v0, v1}, Lcom/android/contacts/group/GroupBrowseListFragment;->showDeleleDialog(ILcom/sec/android/app/contacts/group/GroupInfo;)V

    .line 2427
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2053
    const-string v0, "GroupBrowseListFragment"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2054
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 2055
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    #calls: Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->cancelQuery()V
    invoke-static {v0}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->access$2800(Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;)V

    .line 2056
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    invoke-virtual {v0, v2}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 2057
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    #calls: Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->closeAllCursor()V
    invoke-static {v0}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->access$2900(Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;)V

    .line 2058
    invoke-direct {p0}, Lcom/android/contacts/group/GroupBrowseListFragment;->unregisterSyncStatusObserver()V

    .line 2059
    iput-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    .line 2060
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 2061
    invoke-virtual {p0}, Lcom/android/contacts/group/GroupBrowseListFragment;->dismissAlertDialog()V

    .line 2062
    iput-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;

    .line 2063
    iput-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    .line 2064
    return-void
.end method

.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 12
    .parameter "l"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1558
    invoke-virtual {p1}, Landroid/widget/ExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v10

    invoke-interface {v10, p3}, Landroid/widget/ExpandableListAdapter;->getGroup(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/database/Cursor;

    .line 1560
    .local v8, c:Landroid/database/Cursor;
    iput p3, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->groupPos:I

    .line 1561
    const/4 v10, 0x4

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1562
    .local v1, accountType:Ljava/lang/String;
    const/4 v10, 0x3

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1563
    .local v2, accountName:Ljava/lang/String;
    const/4 v10, 0x5

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1564
    .local v3, dataSet:Ljava/lang/String;
    const-string v10, "com.google"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1565
    invoke-direct {p0, v2}, Lcom/android/contacts/group/GroupBrowseListFragment;->isSelectedGoogleAccountAvailable(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1566
    const/4 v10, 0x1

    .line 1589
    :goto_0
    return v10

    .line 1569
    :cond_0
    const-string v10, "xxx"

    const/4 v11, 0x6

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1571
    const/4 v10, 0x0

    goto :goto_0

    .line 1574
    :cond_1
    iget-object v10, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    invoke-virtual {v10, p3}, Landroid/widget/CursorTreeAdapter;->getChildrenCount(I)I

    move-result v10

    if-nez v10, :cond_3

    const-string v10, "com.google"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v10, "com.android.nttdocomo"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 1579
    :cond_2
    const/4 v10, 0x0

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1580
    .local v4, groupId:J
    const/4 v10, 0x1

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1581
    .local v6, title:Ljava/lang/String;
    const/4 v10, 0x6

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1583
    .local v7, systemId:Ljava/lang/String;
    const/4 v10, 0x7

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-eqz v10, :cond_4

    const/4 v9, 0x1

    .line 1586
    .local v9, isAutoAdd:Z
    :goto_1
    new-instance v0, Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/contacts/group/GroupInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 1587
    .local v0, groupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;
    invoke-direct {p0, v0, v9}, Lcom/android/contacts/group/GroupBrowseListFragment;->viewGroup(Lcom/sec/android/app/contacts/group/GroupInfo;Z)V

    .line 1589
    .end local v0           #groupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;
    .end local v4           #groupId:J
    .end local v6           #title:Ljava/lang/String;
    .end local v7           #systemId:Ljava/lang/String;
    .end local v9           #isAutoAdd:Z
    :cond_3
    const/4 v10, 0x0

    goto :goto_0

    .line 1583
    .restart local v4       #groupId:J
    .restart local v6       #title:Ljava/lang/String;
    .restart local v7       #systemId:Ljava/lang/String;
    :cond_4
    const/4 v9, 0x0

    goto :goto_1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->popupMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->popupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 345
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 346
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 319
    const-string v4, "GroupBrowseListFragment"

    const-string v5, "onResume"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 322
    iget-object v4, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 324
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v4, "huge_font"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 325
    .local v0, flagHugeFont:I
    if-ne v0, v2, :cond_0

    :goto_0
    iput-boolean v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mIsHugeFontMode:Z

    .line 326
    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c009c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mHugeFontSize:I

    .line 329
    iget-boolean v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mShouldRefreshData:Z

    if-eqz v2, :cond_1

    .line 330
    const-string v2, "GroupBrowseListFragment"

    const-string v3, "should refresh data"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-direct {p0}, Lcom/android/contacts/group/GroupBrowseListFragment;->performGroupQuery()V

    .line 339
    :goto_1
    return-void

    :cond_0
    move v2, v3

    .line 325
    goto :goto_0

    .line 333
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    if-eqz v2, :cond_2

    .line 334
    iget-object v2, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    invoke-virtual {v2}, Landroid/widget/CursorTreeAdapter;->notifyDataSetChanged()V

    .line 336
    :cond_2
    const-string v2, "GroupBrowseListFragment"

    const-string v3, "Nothing changed"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 2174
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2175
    const-string v0, "groupInfo"

    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectedGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2176
    const-string v0, "isAutoAdd"

    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->isAutoAdd()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2177
    const-string v0, "expanded_group_position"

    iget v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->groupPos:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2178
    const-string v0, "expanded_child_position"

    iget v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->childpos:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2180
    sget-object v0, Lcom/android/contacts/group/GroupBrowseListFragment;->mProgress:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/contacts/group/GroupBrowseListFragment;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2181
    sget-object v0, Lcom/android/contacts/group/GroupBrowseListFragment;->mProgress:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    .line 2182
    const-string v1, "isShowing"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2184
    :cond_0
    const-string v0, "groupInfoInternal"

    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mInternalGroupInfo:Lcom/sec/android/app/contacts/group/GroupInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2185
    const-string v0, "isShowingDeleteGroupOnly"

    iget-boolean v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mIsGroupDeleteOnlyDialogShowing:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2187
    const-string v0, "isShowingDeleteGroupAndMemberOnly"

    iget-boolean v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mIsGroupDeleteAndMemberDialogShowing:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2189
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "event"

    .prologue
    .line 2202
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    if-ne p1, v0, :cond_0

    .line 2203
    invoke-direct {p0}, Lcom/android/contacts/group/GroupBrowseListFragment;->hideSoftKeyboard()V

    .line 2205
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected requestSelectionToScreen()V
    .locals 3

    .prologue
    .line 2154
    iget-boolean v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectionVisible:Z

    if-nez v1, :cond_1

    .line 2161
    :cond_0
    :goto_0
    return-void

    .line 2157
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->getSelectedGroupPosition()I

    move-result v0

    .line 2158
    .local v0, selectedPosition:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2159
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mList:Landroid/widget/ExpandableListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_0
.end method

.method public setAddAccountsVisibility(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 2192
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAddAccountsView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2193
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAddAccountsView:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2195
    :cond_0
    return-void

    .line 2193
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setChangingSplitRatioMode(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1925
    iget-boolean v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mChagingSplitRatioMode:Z

    if-eq v0, p1, :cond_1

    .line 1926
    iput-boolean p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mChagingSplitRatioMode:Z

    .line 1927
    iget-boolean v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mChagingSplitRatioMode:Z

    if-eqz v0, :cond_0

    .line 1932
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    if-eqz v0, :cond_1

    .line 1933
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorTreeAdapter;->notifyDataSetChanged()V

    .line 1935
    :cond_1
    return-void
.end method

.method public setListener(Lcom/android/contacts/group/GroupBrowseListFragment$OnGroupBrowserActionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 2108
    iput-object p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mListener:Lcom/android/contacts/group/GroupBrowseListFragment$OnGroupBrowserActionListener;

    .line 2109
    return-void
.end method

.method public setSelectedUri(Lcom/sec/android/app/contacts/group/GroupInfo;)V
    .locals 2
    .parameter "groupInfo"

    .prologue
    .line 2148
    iget-object v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    invoke-virtual {v1}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->isAutoAdd()Z

    move-result v0

    .line 2149
    .local v0, isAutoadd:Z
    invoke-direct {p0, p1, v0}, Lcom/android/contacts/group/GroupBrowseListFragment;->viewGroup(Lcom/sec/android/app/contacts/group/GroupInfo;Z)V

    .line 2151
    return-void
.end method

.method public setSelectionVisible(Z)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 2112
    iput-boolean p1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectionVisible:Z

    .line 2113
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    if-eqz v0, :cond_0

    .line 2114
    iget-object v0, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mAdapter:Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;

    iget-boolean v1, p0, Lcom/android/contacts/group/GroupBrowseListFragment;->mSelectionVisible:Z

    invoke-virtual {v0, v1}, Lcom/android/contacts/group/GroupBrowseListFragment$GroupExpandableListAdapter;->setSelectionVisible(Z)V

    .line 2116
    :cond_0
    return-void
.end method
