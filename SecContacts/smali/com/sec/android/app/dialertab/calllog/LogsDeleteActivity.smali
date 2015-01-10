.class public Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;
.super Landroid/app/Activity;
.source "LogsDeleteActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$CallObserver;,
        Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$ItemView;,
        Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$PerformScan;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static bDBChanged:Z

.field private static mDoneEable:Z


# instance fields
.field HEADER_VALUE:Ljava/lang/String;

.field ITEM_ARRAY:Ljava/lang/String;

.field ITEM_COUNT:Ljava/lang/String;

.field SIM_ID:Ljava/lang/String;

.field VIEW_BY:Ljava/lang/String;

.field private checkedItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field co:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$CallObserver;

.field private delprogressdlg:Landroid/app/ProgressDialog;

.field private empty_layout:Landroid/widget/LinearLayout;

.field public groupCountList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/dialertab/calllog/GroupCount;",
            ">;"
        }
    .end annotation
.end field

.field private mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

.field mBundle:Landroid/os/Bundle;

.field mCallHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mDeleteConfirmDlg:Landroid/app/AlertDialog;

.field public mHandler:Landroid/os/Handler;

.field private mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mHeaderSelectAll:Landroid/view/View;

.field private volatile mIsListDone:Z

.field private mListView:Landroid/widget/ListView;

.field mListViewOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mMenuDone:Landroid/view/MenuItem;

.field private mSimId:I

.field private mViewBy:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 80
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->DBG:Z

    .line 104
    sput-boolean v1, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->bDBChanged:Z

    .line 123
    sput-boolean v1, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mDoneEable:Z

    return-void

    :cond_0
    move v0, v1

    .line 80
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->checkedItemList:Ljava/util/ArrayList;

    .line 108
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;

    .line 413
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mBundle:Landroid/os/Bundle;

    .line 415
    const-string v0, "view_by"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->VIEW_BY:Ljava/lang/String;

    .line 416
    const-string v0, "sim_id"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->SIM_ID:Ljava/lang/String;

    .line 418
    const-string v0, "item_count"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->ITEM_COUNT:Ljava/lang/String;

    .line 420
    const-string v0, "item_array"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->ITEM_ARRAY:Ljava/lang/String;

    .line 422
    const-string v0, "header_value"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->HEADER_VALUE:Ljava/lang/String;

    .line 504
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$4;-><init>(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mHandler:Landroid/os/Handler;

    .line 853
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$8;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$8;-><init>(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListViewOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 966
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mCallHandler:Landroid/os/Handler;

    .line 976
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mIsListDone:Z

    return v0
.end method

.method static synthetic access$1000()Z
    .locals 1

    .prologue
    .line 77
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->DBG:Z

    return v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mIsListDone:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    sput-boolean p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->bDBChanged:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->updateAllCheckState()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->logsDBChanged()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mViewBy:I

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mSimId:I

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->checkedItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$902(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method private configureActionBar()V
    .locals 2

    .prologue
    const/16 v1, 0x1e

    .line 343
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 344
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {v0, v1, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 349
    const v1, 0x7f030005

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(I)V

    .line 351
    :cond_0
    return-void
.end method

.method private logsDBChanged()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 991
    const/4 v6, 0x0

    .line 993
    .local v6, size:I
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 994
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 996
    :cond_0
    const-string v0, "feature_common_dsds_support "

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 998
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogQuery;->_PROJECTION:[Ljava/lang/String;

    iget v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mViewBy:I

    iget v5, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mSimId:I

    invoke-static {v3, v5}, Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;->viewByQueryTextBuilder(II)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1005
    .local v7, tempCursor:Landroid/database/Cursor;
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eq v6, v0, :cond_2

    .line 1006
    const/4 v0, 0x1

    .line 1008
    :goto_1
    return v0

    .line 1002
    .end local v7           #tempCursor:Landroid/database/Cursor;
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogQuery;->_PROJECTION:[Ljava/lang/String;

    iget v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mViewBy:I

    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;->viewByQueryTextBuilder(I)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .restart local v7       #tempCursor:Landroid/database/Cursor;
    goto :goto_0

    .line 1008
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setObserver()V
    .locals 4

    .prologue
    .line 971
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 972
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v1, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$CallObserver;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mCallHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$CallObserver;-><init>(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->co:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$CallObserver;

    .line 973
    const-string v1, "content://logs/allcalls"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->co:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$CallObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 974
    return-void
.end method

.method private updateAllCheckState()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 891
    const/4 v3, 0x1

    .line 892
    .local v3, everyBodyIsOn:Z
    const/4 v2, 0x1

    .line 893
    .local v2, everyBodyIsOff:Z
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    if-nez v7, :cond_0

    .line 924
    :goto_0
    return-void

    .line 895
    :cond_0
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getCount()I

    move-result v1

    .line 897
    .local v1, dataCount:I
    sget-boolean v7, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->DBG:Z

    if-eqz v7, :cond_1

    .line 898
    const-string v7, "LogsDeleteActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "headerviewsconut : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v9}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " dataCount : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v9}, Landroid/widget/ListView;->getCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    :cond_1
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v4

    .line 901
    .local v4, i:I
    :goto_1
    if-ge v4, v1, :cond_4

    or-int v7, v3, v2

    if-eqz v7, :cond_4

    .line 902
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7, v4}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v5

    .line 903
    .local v5, id:J
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-eqz v7, :cond_2

    .line 904
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7, v4}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v0

    .line 905
    .local v0, checked:Z
    if-nez v0, :cond_3

    .line 906
    const/4 v3, 0x0

    .line 901
    .end local v0           #checked:Z
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 908
    .restart local v0       #checked:Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    .line 911
    .end local v0           #checked:Z
    .end local v5           #id:J
    :cond_4
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v7, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 912
    if-eqz v2, :cond_6

    .line 913
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mMenuDone:Landroid/view/MenuItem;

    if-eqz v7, :cond_5

    .line 914
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v7, v10}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 916
    :cond_5
    sput-boolean v10, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mDoneEable:Z

    goto :goto_0

    .line 919
    :cond_6
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mMenuDone:Landroid/view/MenuItem;

    if-eqz v7, :cond_7

    .line 920
    iget-object v7, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v7, v11}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 922
    :cond_7
    sput-boolean v11, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mDoneEable:Z

    goto :goto_0
.end method


# virtual methods
.method public CancelIsClicked(Landroid/view/View;)V
    .locals 2
    .parameter "target"

    .prologue
    .line 758
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->co:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$CallObserver;

    if-eqz v0, :cond_0

    .line 759
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->co:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$CallObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 760
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->co:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$CallObserver;

    .line 762
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->finish()V

    .line 763
    return-void
.end method

.method public DeleteIsClicked(Landroid/view/View;)V
    .locals 8
    .parameter "target"

    .prologue
    const v7, 0x7f0d035e

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 725
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->co:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$CallObserver;

    if-eqz v3, :cond_0

    .line 726
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->co:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$CallObserver;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 727
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->co:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$CallObserver;

    .line 730
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->checkedItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 731
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 733
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 734
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v1

    .line 735
    .local v1, viewid:J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1

    .line 736
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->checkedItemList:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 732
    .end local v1           #viewid:J
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 741
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 742
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->checkedItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v5, :cond_3

    .line 743
    invoke-virtual {p0, v7}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v6}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->showDeleteConfirmDlg(Ljava/lang/String;I)V

    .line 754
    :goto_1
    return-void

    .line 745
    :cond_3
    const v3, 0x7f0d0360

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v5}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->showDeleteConfirmDlg(Ljava/lang/String;I)V

    goto :goto_1

    .line 748
    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->checkedItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v5, :cond_5

    .line 749
    invoke-virtual {p0, v7}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v6}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->showDeleteConfirmDlg(Ljava/lang/String;I)V

    goto :goto_1

    .line 751
    :cond_5
    const v3, 0x7f0d035f

    invoke-virtual {p0, v3}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v6}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->showDeleteConfirmDlg(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public clickHandler(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 810
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 826
    :goto_0
    return-void

    .line 812
    :pswitch_0
    const-string v4, "LogsDeleteActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clickhandler"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p1

    .line 814
    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 815
    .local v0, checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    .line 816
    .local v1, position:I
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    .line 818
    .local v2, sba:Landroid/util/SparseBooleanArray;
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 819
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->invalidate()V

    .line 820
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->updateAllCheckState()V

    goto :goto_0

    .line 810
    nop

    :pswitch_data_0
    .packed-switch 0x7f090086
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "newConfig"

    .prologue
    const v4, 0x7f0900bc

    const v3, 0x7f0900b8

    const/16 v2, 0x8

    .line 283
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 285
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->invalidateOptionsMenu()V

    .line 287
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    :cond_0
    invoke-virtual {p0, v4}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 289
    invoke-virtual {p0, v3}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->empty_layout:Landroid/widget/LinearLayout;

    .line 296
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->empty_layout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 297
    return-void

    .line 292
    :cond_1
    invoke-virtual {p0, v3}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 293
    invoke-virtual {p0, v4}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->empty_layout:Landroid/widget/LinearLayout;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const v10, 0x7f0902a7

    const/4 v2, 0x1

    const/4 v9, 0x0

    const/4 v4, 0x0

    .line 144
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 146
    iput-object p0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mContext:Landroid/content/Context;

    .line 148
    const v0, 0x7f040125

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->setContentView(I)V

    .line 150
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 152
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->configureActionBar()V

    .line 154
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mDeleteConfirmDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 155
    const-string v0, "LogsDeleteActivity"

    const-string v1, "mDeleteConfirmDlg cancel() at onCreate"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mDeleteConfirmDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 157
    iput-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mDeleteConfirmDlg:Landroid/app/AlertDialog;

    .line 160
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 161
    :cond_1
    const v0, 0x7f0900b8

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->empty_layout:Landroid/widget/LinearLayout;

    .line 167
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->empty_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 169
    const v0, 0x1020004

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 170
    .local v8, view:Landroid/view/View;
    const/16 v0, 0x8

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 172
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    .line 173
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 174
    const v0, 0x7f040121

    invoke-static {p0, v0, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mHeaderSelectAll:Landroid/view/View;

    .line 175
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mHeaderSelectAll:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 177
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mHeaderSelectAll:Landroid/view/View;

    invoke-virtual {v0, v1, v4, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 178
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 180
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListViewOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 181
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mHeaderSelectAll:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$1;-><init>(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mHeaderSelectAll:Landroid/view/View;

    new-instance v1, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$2;-><init>(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 206
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 207
    .local v7, i:Landroid/content/Intent;
    if-nez p1, :cond_4

    .line 208
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->VIEW_BY:Ljava/lang/String;

    invoke-virtual {v7, v0, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mViewBy:I

    .line 213
    :goto_1
    const-string v0, "feature_common_dsds_support "

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 214
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->SIM_ID:Ljava/lang/String;

    invoke-virtual {v7, v0, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mSimId:I

    .line 216
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogQuery;->_PROJECTION:[Ljava/lang/String;

    iget v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mViewBy:I

    iget v5, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mSimId:I

    invoke-static {v3, v5}, Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;->viewByQueryTextBuilder(II)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mCursor:Landroid/database/Cursor;

    .line 224
    :goto_2
    invoke-virtual {p0, v10}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 226
    .local v6, allChBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    sput-boolean v9, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mDoneEable:Z

    .line 228
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 229
    invoke-virtual {v6, v9}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setEnabled(Z)V

    .line 231
    :cond_2
    return-void

    .line 164
    .end local v6           #allChBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .end local v7           #i:Landroid/content/Intent;
    .end local v8           #view:Landroid/view/View;
    :cond_3
    const v0, 0x7f0900bc

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->empty_layout:Landroid/widget/LinearLayout;

    goto/16 :goto_0

    .line 210
    .restart local v7       #i:Landroid/content/Intent;
    .restart local v8       #view:Landroid/view/View;
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->VIEW_BY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mViewBy:I

    goto :goto_1

    .line 220
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallLogQuery;->_PROJECTION:[Ljava/lang/String;

    iget v3, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mViewBy:I

    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;->viewByQueryTextBuilder(I)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mCursor:Landroid/database/Cursor;

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    .line 358
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 359
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 360
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f12000b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 361
    const v1, 0x7f0903b5

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mMenuDone:Landroid/view/MenuItem;

    .line 362
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mMenuDone:Landroid/view/MenuItem;

    sget-boolean v2, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mDoneEable:Z

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 364
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 263
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 266
    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mCursor:Landroid/database/Cursor;

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->stopRequestProcessing()V

    .line 270
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 272
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mDeleteConfirmDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 273
    const-string v0, "LogsDeleteActivity"

    const-string v1, "mDeleteConfirmDlg cancel() at onDestroy"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mDeleteConfirmDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 275
    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mDeleteConfirmDlg:Landroid/app/AlertDialog;

    .line 277
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->bDBChanged:Z

    .line 278
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 279
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 377
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 394
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 379
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->finish()V

    goto :goto_0

    .line 382
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->finish()V

    goto :goto_0

    .line 385
    :sswitch_2
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mDeleteConfirmDlg:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mDeleteConfirmDlg:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 386
    const-string v1, "LogsDeleteActivity"

    const-string v2, "mDeleteConfirmDlg is showing"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 389
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->DeleteIsClicked(Landroid/view/View;)V

    goto :goto_0

    .line 377
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0903a5 -> :sswitch_1
        0x7f0903b5 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->co:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$CallObserver;

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->co:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$CallObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->co:Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$CallObserver;

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->stopRequestProcessing()V

    .line 137
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 138
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 369
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mMenuDone:Landroid/view/MenuItem;

    sget-boolean v1, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mDoneEable:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 370
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mMenuDone:Landroid/view/MenuItem;

    const v1, 0x7f0d0319

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 372
    const/4 v0, 0x1

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .parameter "bundle"

    .prologue
    .line 447
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 448
    if-nez p1, :cond_1

    .line 475
    :cond_0
    :goto_0
    return-void

    .line 452
    :cond_1
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mBundle:Landroid/os/Bundle;

    .line 453
    iget-boolean v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mIsListDone:Z

    if-eqz v4, :cond_0

    .line 457
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->ITEM_COUNT:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 458
    .local v3, itemCnt:I
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->HEADER_VALUE:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 459
    .local v2, isHeaderChecked:Z
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v4, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 460
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->VIEW_BY:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mViewBy:I

    .line 462
    const-string v4, "feature_common_dsds_support "

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 463
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->SIM_ID:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mSimId:I

    .line 465
    :cond_2
    if-lez v3, :cond_3

    .line 466
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->ITEM_ARRAY:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v0

    .line 467
    .local v0, checkedarray:[Z
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_3

    .line 468
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    aget-boolean v5, v0, v1

    invoke-virtual {v4, v1, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 467
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 472
    .end local v0           #checkedarray:[Z
    .end local v1           #i:I
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->updateAllCheckState()V

    .line 473
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->invalidate()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 235
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->setObserver()V

    .line 236
    invoke-static {p0}, Lcom/android/contacts/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 239
    .local v2, currentCountryIso:Ljava/lang/String;
    const-string v0, "feature_chn_duos_cdma_gsm"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 240
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mContext:Landroid/content/Context;

    const-string v1, "phone2"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v3

    .line 246
    .local v3, voiceMailNumber:Ljava/lang/String;
    :goto_0
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    .line 247
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 249
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->setLoading(Z)V

    .line 250
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 252
    const-string v0, "LogsDeleteActivity"

    const-string v1, "on resume() checking allItemChecked....."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {p0, v4}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->setAllItemChecked(Z)V

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 256
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->startCheckProcessing()V

    .line 258
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 259
    return-void

    .line 243
    .end local v3           #voiceMailNumber:Ljava/lang/String;
    :cond_2
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #voiceMailNumber:Ljava/lang/String;
    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .parameter "outState"

    .prologue
    .line 426
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 428
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v3

    .line 429
    .local v3, itemCnt:I
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v2

    .line 431
    .local v2, isHeaderChecked:Z
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->ITEM_COUNT:Ljava/lang/String;

    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 432
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->VIEW_BY:Ljava/lang/String;

    iget v5, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mViewBy:I

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 433
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->HEADER_VALUE:Ljava/lang/String;

    invoke-virtual {p1, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 434
    const-string v4, "feature_common_dsds_support "

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 435
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->SIM_ID:Ljava/lang/String;

    iget v5, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mSimId:I

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 437
    :cond_0
    new-array v0, v3, [Z

    .line 438
    .local v0, checkedArray:[Z
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 439
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v4

    aput-boolean v4, v0, v1

    .line 438
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 441
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->ITEM_ARRAY:Ljava/lang/String;

    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 442
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mBundle:Landroid/os/Bundle;

    .line 443
    return-void
.end method

.method public setAllItemChecked(Z)V
    .locals 3
    .parameter "bCheckStatus"

    .prologue
    .line 879
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v0

    .line 881
    .local v0, dataCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 882
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1, p1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 881
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 884
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mMenuDone:Landroid/view/MenuItem;

    if-eqz v2, :cond_1

    .line 885
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v2, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 887
    :cond_1
    sput-boolean p1, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mDoneEable:Z

    .line 888
    return-void
.end method

.method public showDeleteConfirmDlg(Ljava/lang/String;I)V
    .locals 6
    .parameter "msg"
    .parameter "iOpIndex"

    .prologue
    const v5, 0x7f0d0356

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 767
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->checkedItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 769
    .local v0, deleteLogsCount:I
    if-ne p2, v3, :cond_0

    .line 770
    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v5, v2}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 778
    .local v1, title:Ljava/lang/String;
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d0319

    new-instance v4, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$6;

    invoke-direct {v4, p0, p2}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$6;-><init>(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;I)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d02f8

    new-instance v4, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$5;

    invoke-direct {v4, p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$5;-><init>(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mDeleteConfirmDlg:Landroid/app/AlertDialog;

    .line 806
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mDeleteConfirmDlg:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 807
    return-void

    .line 772
    .end local v1           #title:Ljava/lang/String;
    :cond_0
    const/4 v2, 0x2

    if-ge v0, v2, :cond_1

    .line 773
    const v2, 0x7f0d0355

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #title:Ljava/lang/String;
    goto :goto_0

    .line 775
    .end local v1           #title:Ljava/lang/String;
    :cond_1
    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v5, v2}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #title:Ljava/lang/String;
    goto :goto_0
.end method

.method public showProgress()V
    .locals 2

    .prologue
    .line 830
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 831
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;

    .line 834
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 835
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;

    const v1, 0x7f0d0249

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 839
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$7;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$7;-><init>(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 850
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 851
    return-void
.end method

.method public startCheckProcessing()V
    .locals 2

    .prologue
    .line 480
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;->mIsListDone:Z

    .line 481
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity$3;-><init>(Lcom/sec/android/app/dialertab/calllog/LogsDeleteActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 496
    .local v0, thread:Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 497
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 498
    return-void
.end method
