.class public Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;
.super Landroid/app/Fragment;
.source "ContactHistoryListFragment.java"

# interfaces
.implements Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$PersistTask;,
        Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$OnDeletedItemCheckedListener;,
        Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;,
        Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateTask;,
        Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateContactidTask;,
        Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$Prefs;,
        Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$ContextMenuIds;
    }
.end annotation


# static fields
.field static final LOGS_PROJECTION:[Ljava/lang/String;

.field private static mAdapter:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

.field private static mContactId:J

.field private static mContext:Landroid/content/Context;

.field private static mDeleteId:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mDeleteStrings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cursorCount:I

.field private mAllitem:Landroid/widget/LinearLayout;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContextInfoLogType:I

.field private mContextInfoMessageId:Ljava/lang/String;

.field private mContextInfoName:Ljava/lang/String;

.field private mContextualDeleteId:I

.field private mEmptyView:Landroid/view/View;

.field public mEveryBodyIsOff:Z

.field private mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mHeaderCheckState:Z

.field private mIsCallType:Z

.field private mIsDeleteMode:Z

.field public mIsLoadingProgress:Z

.field private mIsLogsUpdatedByTask:Z

.field private mListView:Landroid/widget/ListView;

.field mListener:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$OnDeletedItemCheckedListener;

.field private mLoadingLayout:Landroid/widget/LinearLayout;

.field private mLookupUri:Landroid/net/Uri;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mQueryHandler:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;

.field private mSelectedLogsHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mShouldQuery:Z

.field private mSortOptions:[Z

.field private mTask:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateTask;

.field public mToastHandler:Landroid/os/Handler;

.field private mUpdateDeletemode:Z

.field private mView:Landroid/view/View;

.field rawContactIdsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 158
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "logtype"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "messageid"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "m_subject"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "m_content"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "duration"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->LOGS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 199
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 108
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mHeaderCheckState:Z

    .line 110
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mUpdateDeletemode:Z

    .line 112
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mEveryBodyIsOff:Z

    .line 122
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mShouldQuery:Z

    .line 128
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mIsLogsUpdatedByTask:Z

    .line 130
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mIsLoadingProgress:Z

    .line 132
    iput v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContextualDeleteId:I

    .line 134
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->cursorCount:I

    .line 136
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mIsCallType:Z

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContextInfoName:Ljava/lang/String;

    .line 197
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mIsDeleteMode:Z

    .line 1189
    new-instance v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$3;-><init>(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mToastHandler:Landroid/os/Handler;

    .line 201
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mIsLogsUpdatedByTask:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mIsLogsUpdatedByTask:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mShouldQuery:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->startQuery()V

    return-void
.end method

.method static synthetic access$102(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mShouldQuery:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mQueryHandler:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;

    return-object v0
.end method

.method static synthetic access$1200()Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mAdapter:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->considerBindDate(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mIsDeleteMode:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->cursorCount:I

    return v0
.end method

.method static synthetic access$1502(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput p1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->cursorCount:I

    return p1
.end method

.method static synthetic access$1600(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mAllitem:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)Landroid/database/ContentObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContentObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$300()Landroid/content/Context;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$302(Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    sput-object p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mTask:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateTask;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateTask;)Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mTask:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateTask;

    return-object p1
.end method

.method static synthetic access$500()J
    .locals 2

    .prologue
    .line 75
    sget-wide v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContactId:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->updateContactId()V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mLoadingLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private addDeleteAllHeaderView(Landroid/view/LayoutInflater;)V
    .locals 4
    .parameter "inflater"

    .prologue
    .line 316
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 317
    .local v0, headerContainer:Landroid/widget/FrameLayout;
    const v1, 0x7f040051

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mAllitem:Landroid/widget/LinearLayout;

    .line 319
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mAllitem:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 320
    const v1, 0x7f040075

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setId(I)V

    .line 321
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mAllitem:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 322
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mAllitem:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$2;-><init>(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mAllitem:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 331
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 332
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mAllitem:Landroid/widget/LinearLayout;

    const v2, 0x7f09015a

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 333
    return-void
.end method

.method private considerBindDate(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    .line 972
    if-nez p1, :cond_0

    .line 973
    const-string v0, "ContactHistoryListFragment"

    const-string v1, "considerBindDate cursor is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    :goto_0
    return-void

    .line 977
    :cond_0
    sget-object v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mAdapter:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    if-nez v0, :cond_1

    .line 978
    new-instance v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    sget-object v1, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f040050

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mAdapter:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    .line 979
    sget-object v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mAdapter:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->setFragment(Landroid/app/Fragment;)V

    .line 980
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    sget-object v1, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mAdapter:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 982
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->forceLayout()V

    .line 983
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidate()V

    goto :goto_0
.end method

.method public static getAdapter()Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;
    .locals 1

    .prologue
    .line 529
    sget-object v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mAdapter:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    return-object v0
.end method

.method private getTypeSelection()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 571
    const-string v2, ""

    .line 572
    .local v2, logType:Ljava/lang/String;
    const-string v3, ""

    .line 573
    .local v3, selection:Ljava/lang/String;
    const/4 v1, 0x0

    .line 574
    .local v1, isPhone:Z
    const/4 v0, 0x0

    .line 576
    .local v0, isMMS:Z
    sget-object v4, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_3

    .line 577
    sget-object v4, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v1

    .line 578
    sget-object v4, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMMSAvailable(Landroid/content/Context;)Z

    move-result v0

    .line 585
    :goto_0
    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    aget-boolean v4, v4, v6

    if-eqz v4, :cond_0

    .line 586
    const-string v4, ""

    if-ne v2, v4, :cond_4

    .line 587
    const-string v2, "100, 500, 800, 900, 1000"

    .line 597
    :cond_0
    :goto_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Contact_DisableMessageLog"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 599
    if-eqz v1, :cond_6

    .line 600
    iget-object v4, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    aget-boolean v4, v4, v7

    if-eqz v4, :cond_1

    .line 601
    const-string v4, ""

    if-ne v2, v4, :cond_5

    .line 602
    const-string v2, "400"

    .line 645
    :cond_1
    :goto_2
    const-string v4, ""

    if-ne v2, v4, :cond_16

    .line 646
    const-string v2, "logtype = 0"

    .line 651
    :goto_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 652
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " and ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 655
    :cond_2
    return-object v3

    .line 580
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v1

    .line 581
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMMSAvailable(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0

    .line 591
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", 100, 500, 800, 900, 1000"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 604
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", 400"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 608
    :cond_6
    iget-object v4, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    aget-boolean v4, v4, v6

    if-eqz v4, :cond_1

    .line 609
    const-string v4, ""

    if-ne v2, v4, :cond_7

    .line 610
    const-string v2, "400"

    goto :goto_2

    .line 612
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", 400"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 618
    :cond_8
    if-eqz v1, :cond_9

    iget-object v4, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    aget-boolean v4, v4, v7

    if-nez v4, :cond_a

    :cond_9
    if-nez v1, :cond_b

    if-eqz v0, :cond_b

    iget-object v4, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    aget-boolean v4, v4, v6

    if-eqz v4, :cond_b

    .line 619
    :cond_a
    const-string v4, ""

    if-ne v2, v4, :cond_13

    .line 620
    const-string v2, "300, 200"

    .line 627
    :cond_b
    :goto_4
    if-eqz v1, :cond_c

    iget-object v4, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    aget-boolean v4, v4, v8

    if-nez v4, :cond_e

    :cond_c
    if-nez v1, :cond_d

    if-eqz v0, :cond_d

    iget-object v4, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    aget-boolean v4, v4, v7

    if-nez v4, :cond_e

    :cond_d
    if-nez v1, :cond_f

    if-nez v0, :cond_f

    iget-object v4, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    aget-boolean v4, v4, v6

    if-eqz v4, :cond_f

    .line 628
    :cond_e
    const-string v4, ""

    if-ne v2, v4, :cond_14

    .line 629
    const-string v2, "400"

    .line 636
    :cond_f
    :goto_5
    if-eqz v1, :cond_10

    iget-object v4, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    const/4 v5, 0x3

    aget-boolean v4, v4, v5

    if-nez v4, :cond_12

    :cond_10
    if-nez v1, :cond_11

    if-eqz v0, :cond_11

    iget-object v4, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    aget-boolean v4, v4, v8

    if-nez v4, :cond_12

    :cond_11
    if-nez v1, :cond_1

    if-nez v0, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    aget-boolean v4, v4, v7

    if-eqz v4, :cond_1

    .line 637
    :cond_12
    const-string v4, ""

    if-ne v2, v4, :cond_15

    .line 638
    const-string v2, "700"

    goto/16 :goto_2

    .line 622
    :cond_13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", 300, 200"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 631
    :cond_14
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", 400"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .line 640
    :cond_15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", 700"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 648
    :cond_16
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "logtype in ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3
.end method

.method public static queryForAllRawContactIds(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .parameter "cr"
    .parameter "contactId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 695
    const/4 v6, 0x0

    .line 696
    .local v6, rawContactIdCursor:Landroid/database/Cursor;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 698
    .local v7, rawContactIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :try_start_0
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contact_id = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 701
    if-eqz v6, :cond_1

    .line 702
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 703
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 707
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_0

    .line 708
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 707
    :cond_1
    if-eqz v6, :cond_2

    .line 708
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 711
    :cond_2
    return-object v7
.end method

.method private startQuery()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0xa

    .line 533
    sget-object v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mAdapter:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    if-eqz v0, :cond_0

    .line 534
    sget-object v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mAdapter:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->setLoading(Z)V

    .line 536
    :cond_0
    const-string v0, "ContactHistoryListFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mContactId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v8, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContactId:J

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    const-string v5, ""

    .line 541
    .local v5, selection:Ljava/lang/String;
    const-string v7, ""

    .line 544
    .local v7, sortOrder:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "( contactid  = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v3, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContactId:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getrawcontactSelection()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ) "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getTypeSelection()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 548
    const-string v0, "ContactHistoryListFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selection : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    const-string v7, "date DESC LIMIT 2500"

    .line 551
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mQueryHandler:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;->cancelOperation(I)V

    .line 552
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mQueryHandler:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;

    sget-object v3, Lcom/sec/android/app/contacts/detail/LogsColumn$Logs;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->LOGS_PROJECTION:[Ljava/lang/String;

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    return-void
.end method

.method private updateContactId()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 659
    const/4 v1, 0x0

    .line 662
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 692
    :cond_0
    :goto_0
    return-void

    .line 665
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mLookupUri:Landroid/net/Uri;

    if-nez v2, :cond_2

    .line 666
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mToastHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 667
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 671
    :cond_2
    sget-object v2, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mLookupUri:Landroid/net/Uri;

    invoke-static {v2, v3}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mLookupUri:Landroid/net/Uri;

    .line 672
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mLookupUri:Landroid/net/Uri;

    if-eqz v2, :cond_4

    .line 673
    sget-object v2, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mLookupUri:Landroid/net/Uri;

    invoke-static {v2, v3}, Landroid/provider/ContactsContract$Contacts;->lookupContact(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 675
    if-eqz v1, :cond_3

    .line 676
    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    sput-wide v2, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContactId:J

    .line 677
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    sget-wide v2, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContactId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 679
    .local v0, contactidString:Ljava/lang/String;
    sget-object v2, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->queryForAllRawContactIds(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->rawContactIdsList:Ljava/util/ArrayList;

    goto :goto_0

    .line 682
    .end local v0           #contactidString:Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mToastHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 683
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 687
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mToastHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 688
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 689
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method


# virtual methods
.method public doDeleteAction()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1064
    .line 1068
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mDeleteStrings:Ljava/util/ArrayList;

    .line 1069
    sget-object v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mDeleteStrings:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1071
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    move v1, v2

    move v3, v0

    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-ge v3, v0, :cond_0

    .line 1072
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v0

    if-ne v0, v4, :cond_4

    .line 1073
    sget-object v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mAdapter:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    iget-object v5, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v5

    sub-int v5, v3, v5

    invoke-virtual {v0, v5}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 1074
    if-nez v0, :cond_1

    move v1, v2

    .line 1088
    :cond_0
    sget-object v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "historyDeleteShowNeverAgain"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1090
    if-nez v0, :cond_3

    if-eqz v1, :cond_3

    .line 1091
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;)V

    .line 1098
    :goto_1
    return-void

    .line 1078
    :cond_1
    sget-object v5, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mDeleteStrings:Ljava/util/ArrayList;

    const-string v6, "_id"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1079
    const-string v5, "logtype"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1080
    const/16 v5, 0x64

    if-eq v0, v5, :cond_2

    const/16 v5, 0x1f4

    if-eq v0, v5, :cond_2

    const/16 v5, 0x320

    if-eq v0, v5, :cond_2

    const/16 v5, 0x3e8

    if-ne v0, v5, :cond_4

    :cond_2
    move v0, v4

    .line 1071
    :goto_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v0

    goto :goto_0

    .line 1095
    :cond_3
    new-instance v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$PersistTask;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$PersistTask;-><init>(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)V

    .line 1096
    new-array v1, v4, [Ljava/util/ArrayList;

    sget-object v3, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mDeleteStrings:Ljava/util/ArrayList;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$PersistTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 525
    sget-object v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getIsDeleteMode()Z
    .locals 1

    .prologue
    .line 517
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mIsDeleteMode:Z

    return v0
.end method

.method public getSortOptions()[Z
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    return-object v0
.end method

.method getrawcontactSelection()Ljava/lang/String;
    .locals 4

    .prologue
    .line 557
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 558
    .local v1, rawcontactselection:Ljava/lang/String;
    const-string v1, ""

    .line 560
    const/4 v0, 0x0

    .local v0, count:I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->rawContactIdsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 561
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->rawContactIdsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 562
    const-string v1, " or raw_contact_id = "

    .line 563
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->rawContactIdsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 560
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 567
    :cond_1
    return-object v1
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4
    .parameter "activity"

    .prologue
    .line 267
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 268
    sput-object p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContext:Landroid/content/Context;

    .line 270
    :try_start_0
    sget-object v1, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$OnDeletedItemCheckedListener;

    iput-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListener:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$OnDeletedItemCheckedListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    return-void

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, e:Ljava/lang/ClassCastException;
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must implement OnDeletedItemCheckedListener"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 17
    .parameter "item"

    .prologue
    .line 421
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 498
    :cond_0
    :goto_0
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 423
    :pswitch_0
    sget-object v1, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "historyDeleteShowNeverAgain"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    .line 425
    .local v15, showNeverAgain:I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mIsCallType:Z

    if-eqz v1, :cond_1

    if-nez v15, :cond_1

    .line 426
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-static {v1, v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;)V

    .line 449
    :goto_2
    const/4 v1, 0x1

    goto :goto_1

    .line 431
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mDeleteId:Ljava/util/ArrayList;

    .line 432
    sget-object v1, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mDeleteId:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 434
    sget-object v1, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mDeleteId:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContextualDeleteId:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    new-instance v16, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$PersistTask;

    invoke-direct/range {v16 .. v17}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$PersistTask;-><init>(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)V

    .line 446
    .local v16, task:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$PersistTask;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/ArrayList;

    const/4 v3, 0x0

    sget-object v4, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mDeleteId:Ljava/util/ArrayList;

    aput-object v4, v1, v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$PersistTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2

    .line 452
    .end local v15           #showNeverAgain:I
    .end local v16           #task:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$PersistTask;
    :pswitch_1
    const-wide/16 v13, 0x0

    .line 453
    .local v13, messageLongId2:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContextInfoMessageId:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 454
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContextInfoMessageId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    .line 457
    :cond_2
    const-wide/16 v7, 0x0

    .line 458
    .local v7, accountKey:J
    const-string v1, "content://com.android.email.provider/message"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 459
    .local v2, mUri:Landroid/net/Uri;
    const/4 v9, 0x0

    .line 461
    .local v9, c:Landroid/database/Cursor;
    :try_start_0
    const-string v11, "_id"

    .line 462
    .local v11, id:Ljava/lang/String;
    sget-object v1, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "accountKey"

    aput-object v5, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 466
    if-eqz v9, :cond_5

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 467
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v7

    .line 477
    if-eqz v9, :cond_3

    .line 478
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 482
    .end local v11           #id:Ljava/lang/String;
    :cond_3
    :goto_3
    const/4 v12, 0x0

    .line 483
    .local v12, intent:Landroid/content/Intent;
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_7

    .line 484
    new-instance v12, Landroid/content/Intent;

    .end local v12           #intent:Landroid/content/Intent;
    const-string v1, "com.android.email.intent.action.REPLY"

    invoke-direct {v12, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 489
    .restart local v12       #intent:Landroid/content/Intent;
    :cond_4
    :goto_4
    if-eqz v12, :cond_0

    .line 490
    const-string v1, "message_id"

    invoke-virtual {v12, v1, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 491
    const-string v1, "account_id"

    invoke-virtual {v12, v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 492
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 469
    .end local v12           #intent:Landroid/content/Intent;
    .restart local v11       #id:Ljava/lang/String;
    :cond_5
    :try_start_1
    sget-object v1, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d02d0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 477
    if-eqz v9, :cond_0

    .line 478
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 474
    .end local v11           #id:Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 475
    .local v10, e:Ljava/lang/IllegalStateException;
    :try_start_2
    invoke-virtual {v10}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 477
    if-eqz v9, :cond_3

    .line 478
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 477
    .end local v10           #e:Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v1

    if-eqz v9, :cond_6

    .line 478
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v1

    .line 485
    .restart local v12       #intent:Landroid/content/Intent;
    :cond_7
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    .line 486
    new-instance v12, Landroid/content/Intent;

    .end local v12           #intent:Landroid/content/Intent;
    const-string v1, "com.android.email.intent.action.FORWARD"

    invoke-direct {v12, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v12       #intent:Landroid/content/Intent;
    goto :goto_4

    .line 421
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 205
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 206
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mSelectedLogsHashMap:Ljava/util/HashMap;

    .line 207
    if-eqz p1, :cond_1

    .line 208
    const-string v0, "KEY_DELETE_MODE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mIsDeleteMode:Z

    .line 209
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mIsDeleteMode:Z

    if-eqz v0, :cond_0

    .line 210
    const-string v0, "DeleteStringArrayList"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    sput-object v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mDeleteStrings:Ljava/util/ArrayList;

    .line 212
    :cond_0
    const-string v0, "selectedIds"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mSelectedLogsHashMap:Ljava/util/HashMap;

    .line 214
    const-string v0, "headerCheckState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mHeaderCheckState:Z

    .line 215
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mUpdateDeletemode:Z

    .line 216
    const-string v0, "contextualDeleteIds"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContextualDeleteId:I

    .line 218
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "contactUri"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mLookupUri:Landroid/net/Uri;

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->rawContactIdsList:Ljava/util/ArrayList;

    .line 222
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContentObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_2

    .line 223
    new-instance v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$1;-><init>(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContentObserver:Landroid/database/ContentObserver;

    .line 235
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/contacts/detail/LogsColumn$Logs;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 237
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfo"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 377
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 379
    sget-object v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mAdapter:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContextInfoLogType:I

    .line 381
    sget-object v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mAdapter:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContextInfoName:Ljava/lang/String;

    .line 383
    sget-object v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mAdapter:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContextInfoMessageId:Ljava/lang/String;

    .line 387
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContextInfoName:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 388
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContextInfoName:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 396
    :goto_0
    sget-object v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mAdapter:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContextualDeleteId:I

    .line 399
    iget v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContextInfoLogType:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContextInfoLogType:I

    const/16 v1, 0x1f4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContextInfoLogType:I

    const/16 v1, 0x320

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContextInfoLogType:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_3

    .line 403
    :cond_0
    iput-boolean v3, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mIsCallType:Z

    .line 408
    :goto_1
    const v0, 0x7f0d0319

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 411
    iget v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContextInfoLogType:I

    const/16 v1, 0x190

    if-ne v0, v1, :cond_1

    .line 412
    const v0, 0x7f0d02d2

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 414
    const/4 v0, 0x2

    const v1, 0x7f0d02d1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 417
    :cond_1
    return-void

    .line 391
    :cond_2
    sget-object v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mAdapter:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto :goto_0

    .line 405
    :cond_3
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mIsCallType:Z

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedState"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 280
    new-instance v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateContactidTask;

    invoke-direct {v0, p0, p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateContactidTask;-><init>(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;Landroid/app/Fragment;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateContactidTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 282
    const v0, 0x7f04004f

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mView:Landroid/view/View;

    .line 284
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mView:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    .line 285
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    const/high16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setScrollBarStyle(I)V

    .line 286
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 287
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 290
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->addDeleteAllHeaderView(Landroid/view/LayoutInflater;)V

    .line 292
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mView:Landroid/view/View;

    const v1, 0x7f09014b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mLoadingLayout:Landroid/widget/LinearLayout;

    .line 296
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mView:Landroid/view/View;

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mEmptyView:Landroid/view/View;

    .line 298
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 300
    new-instance v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;

    invoke-direct {v0, p0, p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;-><init>(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mQueryHandler:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;

    .line 301
    new-instance v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f040050

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mAdapter:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    .line 303
    sget-object v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mAdapter:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->setFragment(Landroid/app/Fragment;)V

    .line 304
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    sget-object v1, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mAdapter:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 306
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mLoadingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 307
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 309
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->updateSharedPrefs()V

    .line 310
    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->setHasOptionsMenu(Z)V

    .line 312
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onDeleteItem()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 1176
    iput-boolean v5, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mShouldQuery:Z

    .line 1177
    iput-boolean v7, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mIsLogsUpdatedByTask:Z

    .line 1178
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mIsDeleteMode:Z

    if-eqz v0, :cond_0

    .line 1179
    new-instance v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$PersistTask;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$PersistTask;-><init>(Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;)V

    .line 1180
    new-array v1, v5, [Ljava/util/ArrayList;

    sget-object v2, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mDeleteStrings:Ljava/util/ArrayList;

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$PersistTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1187
    :goto_0
    return-void

    .line 1182
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mQueryHandler:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;

    const/16 v1, 0x28

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/app/contacts/detail/LogsColumn$Logs;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "_id=?"

    new-array v5, v5, [Ljava/lang/String;

    iget v6, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContextualDeleteId:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$QueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 251
    sget-object v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 252
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 253
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 257
    iput-boolean v3, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mShouldQuery:Z

    .line 258
    iput-boolean v4, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mIsLogsUpdatedByTask:Z

    .line 259
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/contacts/detail/LogsColumn$Logs;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 260
    new-instance v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateTask;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateTask;-><init>(Landroid/app/Fragment;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mTask:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateTask;

    .line 261
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mTask:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateTask;

    new-array v1, v3, [Ljava/lang/Long;

    sget-wide v2, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContactId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$UpdateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 262
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 263
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 241
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 242
    const-string v0, "KEY_DELETE_MODE"

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mIsDeleteMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 243
    const-string v0, "DeleteStringArrayList"

    sget-object v1, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mDeleteStrings:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 244
    const-string v0, "headerCheckState"

    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 245
    const-string v0, "selectedIds"

    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mSelectedLogsHashMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 246
    const-string v0, "contextualDeleteIds"

    iget v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mContextualDeleteId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 247
    return-void
.end method

.method public restoreCheckState()V
    .locals 7

    .prologue
    .line 1054
    iget-object v3, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v0

    .line 1055
    .local v0, dataCount:I
    iget-object v3, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    .line 1056
    .local v1, headerCnt:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1057
    iget-object v3, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mSelectedLogsHashMap:Ljava/util/HashMap;

    add-int v4, v2, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1058
    iget-object v4, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    add-int v5, v2, v1

    iget-object v3, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mSelectedLogsHashMap:Ljava/util/HashMap;

    add-int v6, v2, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v4, v5, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1056
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1061
    :cond_1
    return-void
.end method

.method public setAllItemChecked(Z)V
    .locals 4
    .parameter "bCheckStatus"

    .prologue
    .line 1042
    const/4 v0, 0x0

    .line 1043
    .local v0, dataCount:I
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v2, :cond_0

    .line 1044
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v0

    .line 1046
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1047
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1, p1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1046
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1049
    :cond_1
    if-nez p1, :cond_2

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mEveryBodyIsOff:Z

    .line 1050
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListener:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$OnDeletedItemCheckedListener;

    iget-boolean v3, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mEveryBodyIsOff:Z

    invoke-interface {v2, v3}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$OnDeletedItemCheckedListener;->onExistsDeletedItems(Z)V

    .line 1051
    return-void

    .line 1049
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public setCheckPosition(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 994
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    add-int v0, p1, v1

    .line 995
    .local v0, realPosition:I
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 997
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mSelectedLogsHashMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 998
    return-void

    .line 995
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setDeleteMode(Z)V
    .locals 0
    .parameter "isDeleteMode"

    .prologue
    .line 522
    return-void
.end method

.method public setMode(Z)V
    .locals 2
    .parameter "isDeleteMode"

    .prologue
    const/4 v1, 0x0

    .line 502
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mIsDeleteMode:Z

    .line 503
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mIsDeleteMode:Z

    if-eqz v0, :cond_1

    .line 504
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->setAllItemChecked(Z)V

    .line 505
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 506
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mAllitem:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 510
    :goto_0
    sget-object v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mAdapter:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->setMode(Z)V

    .line 511
    sget-object v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mAdapter:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->notifyDataSetChanged()V

    .line 512
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidate()V

    .line 514
    :cond_0
    return-void

    .line 508
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mAllitem:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateAllCheckState()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1001
    const/4 v3, 0x1

    .line 1002
    .local v3, everyBodyIsOn:Z
    const/4 v2, 0x1

    .line 1003
    .local v2, everyBodyIsOff:Z
    const/4 v1, 0x0

    .line 1005
    .local v1, dataCount:I
    iget-object v5, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v5, :cond_0

    .line 1006
    iget-object v5, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getCount()I

    move-result v1

    .line 1008
    :cond_0
    iget-boolean v5, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mUpdateDeletemode:Z

    if-eqz v5, :cond_1

    .line 1009
    iget-boolean v5, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mUpdateDeletemode:Z

    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->setMode(Z)V

    .line 1010
    iget-boolean v5, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mHeaderCheckState:Z

    if-eqz v5, :cond_3

    .line 1011
    iget-object v5, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-boolean v6, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mHeaderCheckState:Z

    invoke-virtual {v5, v6}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 1012
    iget-boolean v5, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mHeaderCheckState:Z

    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->setAllItemChecked(Z)V

    .line 1013
    iput-boolean v7, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mHeaderCheckState:Z

    .line 1017
    :goto_0
    iput-boolean v7, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mUpdateDeletemode:Z

    .line 1020
    :cond_1
    if-nez v1, :cond_4

    .line 1021
    const/4 v3, 0x0

    .line 1022
    const/4 v2, 0x1

    .line 1036
    :cond_2
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mEveryBodyIsOff:Z

    .line 1037
    iget-object v5, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v5, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 1038
    iget-object v5, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListener:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$OnDeletedItemCheckedListener;

    iget-boolean v6, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mEveryBodyIsOff:Z

    invoke-interface {v5, v6}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$OnDeletedItemCheckedListener;->onExistsDeletedItems(Z)V

    .line 1039
    return-void

    .line 1015
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->restoreCheckState()V

    goto :goto_0

    .line 1024
    :cond_4
    const/4 v0, 0x0

    .line 1025
    .local v0, checked:Z
    iget-object v5, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v4

    .line 1026
    .local v4, i:I
    :goto_1
    if-ge v4, v1, :cond_2

    or-int v5, v3, v2

    if-eqz v5, :cond_2

    .line 1027
    iget-object v5, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v4}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v0

    .line 1028
    if-nez v0, :cond_5

    .line 1029
    const/4 v3, 0x0

    .line 1026
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1031
    :cond_5
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public updateSharedPrefs()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 336
    const-string v2, "ContactHistoryListFragment"

    const-string v3, "updateSharedPrefs()"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v1

    .line 338
    .local v1, isPhone:Z
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMMSAvailable(Landroid/content/Context;)Z

    move-result v0

    .line 339
    .local v0, isMMS:Z
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mPrefs:Landroid/content/SharedPreferences;

    .line 341
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_DisableMessageLog"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 343
    if-eqz v1, :cond_0

    .line 344
    new-array v2, v7, [Z

    iput-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    .line 345
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    iget-object v3, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "view_by_call"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    aput-boolean v3, v2, v6

    .line 346
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    iget-object v3, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "view_by_email"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    aput-boolean v3, v2, v5

    .line 369
    :goto_0
    return-void

    .line 348
    :cond_0
    new-array v2, v5, [Z

    iput-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    .line 349
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    iget-object v3, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "view_by_email"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    aput-boolean v3, v2, v6

    goto :goto_0

    .line 352
    :cond_1
    if-eqz v1, :cond_2

    .line 353
    const/4 v2, 0x4

    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    .line 354
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    iget-object v3, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "view_by_call"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    aput-boolean v3, v2, v6

    .line 355
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    iget-object v3, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "view_by_message"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    aput-boolean v3, v2, v5

    .line 356
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    iget-object v3, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "view_by_email"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    aput-boolean v3, v2, v7

    .line 357
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    iget-object v3, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "view_by_im"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    aput-boolean v3, v2, v8

    goto :goto_0

    .line 358
    :cond_2
    if-eqz v0, :cond_3

    .line 359
    new-array v2, v8, [Z

    iput-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    .line 360
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    iget-object v3, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "view_by_message"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    aput-boolean v3, v2, v6

    .line 361
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    iget-object v3, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "view_by_email"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    aput-boolean v3, v2, v5

    .line 362
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    iget-object v3, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "view_by_im"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    aput-boolean v3, v2, v7

    goto :goto_0

    .line 364
    :cond_3
    new-array v2, v7, [Z

    iput-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    .line 365
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    iget-object v3, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "view_by_email"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    aput-boolean v3, v2, v6

    .line 366
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mSortOptions:[Z

    iget-object v3, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "view_by_im"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    aput-boolean v3, v2, v5

    goto/16 :goto_0
.end method
