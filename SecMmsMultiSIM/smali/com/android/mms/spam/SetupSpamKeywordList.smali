.class public Lcom/android/mms/spam/SetupSpamKeywordList;
.super Landroid/app/Activity;
.source "SetupSpamKeywordList.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;,
        Lcom/android/mms/spam/SetupSpamKeywordList$SpamMenuClickListener;
    }
.end annotation


# static fields
.field private static final CANCEL_ITEM:I = 0x3

.field private static final CREATE_ITEM:I = 0x1

.field private static final DELETE_ITEM:I = 0x2

.field private static final DELETE_SPAM_ITEM:I = 0x1

.field private static final EDIT_DELETE_DIALOG:I = 0x64

.field private static final EDIT_SPAM_ITEM:I = 0x0

.field public static final MATCH_CRITERIA_RESULT:I = 0x3

.field private static final STATE_VALUE_BLACKLIST_ID:Ljava/lang/String; = "blacklist_id"

.field private static final TAG:Ljava/lang/String; = "Mms/SetupSpamKeywordList"


# instance fields
.field private final DELETE_SCREEN:I

.field private final NORMAL_SCREEN:I

.field private final QUERY_COMPLETE:I

.field private checked_cnt:I

.field private defaultName:Ljava/lang/String;

.field private edad:Landroid/app/AlertDialog;

.field private mActionBar:Landroid/app/ActionBar;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mCreate:Landroid/widget/LinearLayout;

.field private mDeleteDialog:Landroid/app/AlertDialog;

.field private mDeleteListActionBarCancelButton:Landroid/widget/TextView;

.field private mDeleteListActionBarDoneButton:Landroid/widget/TextView;

.field private mDeleteListActionBarLayout:Landroid/widget/LinearLayout;

.field private mDeleteListActionBarTitle:Landroid/widget/TextView;

.field private mDeleteModeDialog:Landroid/app/AlertDialog;

.field private mEmptySpamKeywordLayout:Landroid/widget/LinearLayout;

.field private mEmptySpamKeywordstring:Landroid/widget/TextView;

.field mHandler:Landroid/os/Handler;

.field private mHeader:Landroid/view/View;

.field private mHeaderViewCount:I

.field private mIsLandscape:Z

.field private mListView:Landroid/widget/ListView;

.field private mMenuCancel:Landroid/view/MenuItem;

.field private mMenuCreate:Landroid/view/MenuItem;

.field private mMenuDelete:Landroid/view/MenuItem;

.field private mScreenType:I

.field private final mSelectAllOnKeyListener:Landroid/view/View$OnKeyListener;

.field private mSelectedItem:I

.field private mSpamKeywordAdapter:Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;

.field private mSpamKeywordItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/spam/SpamFilter$SpamFilterData;",
            ">;"
        }
    .end annotation
.end field

.field private mSpamKeywordListContextMenu:Landroid/view/ContextMenu;

.field private final mSpamKeywordListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mUpdateScreen:Z

.field private selectAll:Landroid/widget/LinearLayout;

.field private selectAllCheck:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mSpamKeywordItemList:Ljava/util/ArrayList;

    .line 75
    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mSpamKeywordListContextMenu:Landroid/view/ContextMenu;

    .line 85
    iput v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->NORMAL_SCREEN:I

    .line 86
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->DELETE_SCREEN:I

    .line 88
    iput v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mScreenType:I

    .line 97
    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->defaultName:Ljava/lang/String;

    .line 98
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->QUERY_COMPLETE:I

    .line 99
    iput-boolean v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mUpdateScreen:Z

    .line 100
    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mDeleteDialog:Landroid/app/AlertDialog;

    .line 101
    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mDeleteModeDialog:Landroid/app/AlertDialog;

    .line 102
    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->edad:Landroid/app/AlertDialog;

    .line 107
    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mDeleteListActionBarLayout:Landroid/widget/LinearLayout;

    .line 108
    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mDeleteListActionBarDoneButton:Landroid/widget/TextView;

    .line 109
    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mDeleteListActionBarCancelButton:Landroid/widget/TextView;

    .line 110
    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mDeleteListActionBarTitle:Landroid/widget/TextView;

    .line 113
    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mMenuCreate:Landroid/view/MenuItem;

    .line 114
    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mMenuDelete:Landroid/view/MenuItem;

    .line 115
    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mMenuCancel:Landroid/view/MenuItem;

    .line 119
    iput v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->checked_cnt:I

    .line 121
    new-instance v0, Lcom/android/mms/spam/SetupSpamKeywordList$1;

    invoke-direct {v0, p0}, Lcom/android/mms/spam/SetupSpamKeywordList$1;-><init>(Lcom/android/mms/spam/SetupSpamKeywordList;)V

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mHandler:Landroid/os/Handler;

    .line 129
    new-instance v0, Lcom/android/mms/spam/SetupSpamKeywordList$2;

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/spam/SetupSpamKeywordList$2;-><init>(Lcom/android/mms/spam/SetupSpamKeywordList;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mContentObserver:Landroid/database/ContentObserver;

    .line 224
    new-instance v0, Lcom/android/mms/spam/SetupSpamKeywordList$3;

    invoke-direct {v0, p0}, Lcom/android/mms/spam/SetupSpamKeywordList$3;-><init>(Lcom/android/mms/spam/SetupSpamKeywordList;)V

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mSelectAllOnKeyListener:Landroid/view/View$OnKeyListener;

    .line 614
    new-instance v0, Lcom/android/mms/spam/SetupSpamKeywordList$10;

    invoke-direct {v0, p0}, Lcom/android/mms/spam/SetupSpamKeywordList$10;-><init>(Lcom/android/mms/spam/SetupSpamKeywordList;)V

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mSpamKeywordListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 766
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/spam/SetupSpamKeywordList;)Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mSpamKeywordAdapter:Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/spam/SetupSpamKeywordList;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/mms/spam/SetupSpamKeywordList;->deleteSpamKeyword(I)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/mms/spam/SetupSpamKeywordList;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mUpdateScreen:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/mms/spam/SetupSpamKeywordList;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/mms/spam/SetupSpamKeywordList;->displayToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/mms/spam/SetupSpamKeywordList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamKeywordList;->makeScreen()V

    return-void
.end method

.method static synthetic access$1302(Lcom/android/mms/spam/SetupSpamKeywordList;Landroid/view/ContextMenu;)Landroid/view/ContextMenu;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mSpamKeywordListContextMenu:Landroid/view/ContextMenu;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/mms/spam/SetupSpamKeywordList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamKeywordList;->updateTitleBar()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mEmptySpamKeywordstring:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mEmptySpamKeywordLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/mms/spam/SetupSpamKeywordList;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/mms/spam/SetupSpamKeywordList;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/mms/spam/SetupSpamKeywordList;Lcom/android/mms/spam/SpamFilter$SpamFilterData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/mms/spam/SetupSpamKeywordList;->updateSpamKeyword(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mDeleteModeDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/mms/spam/SetupSpamKeywordList;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mDeleteModeDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mDeleteListActionBarCancelButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/spam/SetupSpamKeywordList;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->selectAllCheck:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/spam/SetupSpamKeywordList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mHeaderViewCount:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/mms/spam/SetupSpamKeywordList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamKeywordList;->updateDeleteScreenItems()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/spam/SetupSpamKeywordList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mScreenType:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/mms/spam/SetupSpamKeywordList;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput p1, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mScreenType:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/mms/spam/SetupSpamKeywordList;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mSpamKeywordItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/mms/spam/SetupSpamKeywordList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mSelectedItem:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/mms/spam/SetupSpamKeywordList;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput p1, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mSelectedItem:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/mms/spam/SetupSpamKeywordList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamKeywordList;->callMatchCriteriaToEditNum()V

    return-void
.end method

.method private callMatchCriteriaToEditNum()V
    .locals 5

    .prologue
    .line 950
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mSpamKeywordItemList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mSelectedItem:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-virtual {v2}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getId()I

    move-result v1

    .line 951
    .local v1, update_id:I
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 952
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "UPDATE_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 953
    const-string v3, "SpamWord"

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mSpamKeywordItemList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mSelectedItem:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-virtual {v2}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getFilter()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 954
    const-string v2, "UPDATE_MODE"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 955
    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 956
    return-void
.end method

.method private deleteSpamKeyword(I)V
    .locals 4
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 915
    sget-object v1, Lcom/android/mms/spam/SpamFilter;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 916
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 919
    invoke-static {p1}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->delete(I)V

    .line 920
    return-void
.end method

.method private displayToast(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 967
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 968
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 969
    return-void
.end method

.method private getSpam(I)Landroid/database/Cursor;
    .locals 6
    .parameter "nFilterType"

    .prologue
    const/4 v2, 0x0

    .line 940
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "filter_type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 944
    .local v3, sWhereSQL:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/spam/SpamFilter;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private initLayout()V
    .locals 4

    .prologue
    .line 239
    const v0, 0x7f0e0202

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mListView:Landroid/widget/ListView;

    .line 242
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03008f

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mListView:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mHeader:Landroid/view/View;

    .line 255
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mHeader:Landroid/view/View;

    const v1, 0x7f0e0228

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->selectAll:Landroid/widget/LinearLayout;

    .line 256
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mHeader:Landroid/view/View;

    const v1, 0x7f0e022a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->selectAllCheck:Landroid/widget/CheckBox;

    .line 260
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->selectAll:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mSelectAllOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 263
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->selectAll:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/mms/spam/SetupSpamKeywordList$4;

    invoke-direct {v1, p0}, Lcom/android/mms/spam/SetupSpamKeywordList$4;-><init>(Lcom/android/mms/spam/SetupSpamKeywordList;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->selectAllCheck:Landroid/widget/CheckBox;

    new-instance v1, Lcom/android/mms/spam/SetupSpamKeywordList$5;

    invoke-direct {v1, p0}, Lcom/android/mms/spam/SetupSpamKeywordList$5;-><init>(Lcom/android/mms/spam/SetupSpamKeywordList;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mSpamKeywordListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 286
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/mms/spam/SetupSpamKeywordList$6;

    invoke-direct {v1, p0}, Lcom/android/mms/spam/SetupSpamKeywordList$6;-><init>(Lcom/android/mms/spam/SetupSpamKeywordList;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 319
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mHeader:Landroid/view/View;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 320
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 1035
    const-string v0, "Mms/SetupSpamKeywordList"

    invoke-static {v0, p1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    return-void
.end method

.method private makeScreen()V
    .locals 14

    .prologue
    const/16 v13, 0x8

    const/4 v12, 0x2

    const/4 v11, -0x1

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 393
    const-string v0, "Mms/SetupSpamKeywordList"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "makeScreen : ScreenType = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mScreenType:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    const/4 v8, 0x0

    .line 395
    .local v8, idx:I
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mSpamKeywordItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 396
    invoke-direct {p0, v2}, Lcom/android/mms/spam/SetupSpamKeywordList;->getSpam(I)Landroid/database/Cursor;

    move-result-object v7

    .line 398
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 399
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 401
    :cond_0
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 403
    :cond_1
    invoke-interface {v7, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 404
    .local v1, id:I
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 405
    .local v6, checked:I
    if-eqz v6, :cond_6

    move v3, v2

    .line 406
    .local v3, bChecked:Z
    :goto_0
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 408
    .local v4, num:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mSpamKeywordItemList:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;-><init>(IIZLjava/lang/String;I)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 415
    .end local v1           #id:I
    .end local v3           #bChecked:Z
    .end local v4           #num:Ljava/lang/String;
    .end local v6           #checked:I
    :cond_2
    if-eqz v7, :cond_3

    .line 416
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 418
    :cond_3
    iget v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mScreenType:I

    if-nez v0, :cond_7

    .line 421
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mListView:Landroid/widget/ListView;

    iget-object v9, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mHeader:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 424
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamKeywordList;->removeDeleteModeActionBar()V

    .line 425
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 427
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 446
    :goto_1
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    iput v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mHeaderViewCount:I

    .line 448
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v0

    if-nez v0, :cond_4

    .line 450
    if-gtz v8, :cond_8

    .line 451
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mEmptySpamKeywordstring:Landroid/widget/TextView;

    const v2, 0x7f0a0387

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 452
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mEmptySpamKeywordLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 453
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    .line 460
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mSpamKeywordAdapter:Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;

    if-nez v0, :cond_5

    .line 461
    new-instance v0, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mSpamKeywordItemList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, p0, v2}, Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;-><init>(Lcom/android/mms/spam/SetupSpamKeywordList;Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mSpamKeywordAdapter:Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;

    .line 463
    :cond_5
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mSpamKeywordAdapter:Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 464
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamKeywordList;->updateTitleBar()V

    .line 465
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 466
    return-void

    .restart local v1       #id:I
    .restart local v6       #checked:I
    :cond_6
    move v3, v5

    .line 405
    goto :goto_0

    .line 431
    .end local v1           #id:I
    .end local v6           #checked:I
    :cond_7
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mListView:Landroid/widget/ListView;

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 432
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mListView:Landroid/widget/ListView;

    iget-object v9, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mHeader:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 433
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mListView:Landroid/widget/ListView;

    iget-object v9, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mSpamKeywordAdapter:Lcom/android/mms/spam/SetupSpamKeywordList$SpamAdapter;

    invoke-virtual {v0, v9}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 436
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->selectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 437
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->selectAllCheck:Landroid/widget/CheckBox;

    invoke-virtual {v0, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 438
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->clearChoices()V

    .line 439
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v12}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 440
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamKeywordList;->updateDeleteModeActionBar()V

    .line 441
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mActionBar:Landroid/app/ActionBar;

    iget-object v9, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mDeleteListActionBarLayout:Landroid/widget/LinearLayout;

    new-instance v10, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v10, v11, v11}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v9, v10}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 442
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 443
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    goto/16 :goto_1

    .line 455
    :cond_8
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mEmptySpamKeywordLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v13}, Landroid/view/View;->setVisibility(I)V

    .line 456
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method private removeDeleteModeActionBar()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1051
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mDeleteListActionBarCancelButton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1052
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mDeleteListActionBarCancelButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1053
    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mDeleteListActionBarCancelButton:Landroid/widget/TextView;

    .line 1056
    :cond_0
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mDeleteListActionBarDoneButton:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1057
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mDeleteListActionBarDoneButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1058
    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mDeleteListActionBarDoneButton:Landroid/widget/TextView;

    .line 1061
    :cond_1
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mDeleteListActionBarLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 1062
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mDeleteListActionBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 1063
    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mDeleteListActionBarLayout:Landroid/widget/LinearLayout;

    .line 1065
    :cond_2
    return-void
.end method

.method private updateDeleteModeActionBar()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 1069
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mDeleteListActionBarLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 1070
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030023

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mDeleteListActionBarLayout:Landroid/widget/LinearLayout;

    .line 1071
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mDeleteListActionBarLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0e00d2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mDeleteListActionBarDoneButton:Landroid/widget/TextView;

    .line 1072
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mDeleteListActionBarLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0e00d0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mDeleteListActionBarCancelButton:Landroid/widget/TextView;

    .line 1073
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mDeleteListActionBarLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0e00ce

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mDeleteListActionBarTitle:Landroid/widget/TextView;

    .line 1074
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mDeleteListActionBarTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1076
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mDeleteListActionBarLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0e00cf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1077
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mDeleteListActionBarLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0e00d1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1079
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mDeleteListActionBarDoneButton:Landroid/widget/TextView;

    new-instance v1, Lcom/android/mms/spam/SetupSpamKeywordList$14;

    invoke-direct {v1, p0}, Lcom/android/mms/spam/SetupSpamKeywordList$14;-><init>(Lcom/android/mms/spam/SetupSpamKeywordList;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1093
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mDeleteListActionBarCancelButton:Landroid/widget/TextView;

    new-instance v1, Lcom/android/mms/spam/SetupSpamKeywordList$15;

    invoke-direct {v1, p0}, Lcom/android/mms/spam/SetupSpamKeywordList$15;-><init>(Lcom/android/mms/spam/SetupSpamKeywordList;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1103
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamKeywordList;->updateDeleteScreenItems()V

    .line 1104
    return-void
.end method

.method private updateDeleteScreenItems()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 973
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 974
    .local v1, doneText:Ljava/lang/StringBuffer;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 976
    .local v0, cancelText:Ljava/lang/StringBuffer;
    iput v5, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->checked_cnt:I

    .line 978
    const/4 v2, 0x0

    .local v2, index:I
    :goto_0
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/AdapterView;->getCount()I

    move-result v3

    iget v6, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mHeaderViewCount:I

    sub-int/2addr v3, v6

    if-ge v2, v3, :cond_1

    .line 979
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mListView:Landroid/widget/ListView;

    iget v6, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mHeaderViewCount:I

    add-int/2addr v6, v2

    invoke-virtual {v3, v6}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 980
    iget v3, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->checked_cnt:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->checked_cnt:I

    .line 978
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 983
    :cond_1
    iget-object v6, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->selectAllCheck:Landroid/widget/CheckBox;

    iget v3, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->checked_cnt:I

    iget-object v7, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mSpamKeywordItemList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v3, v7, :cond_5

    move v3, v4

    :goto_1
    invoke-virtual {v6, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 984
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->selectAllCheck:Landroid/widget/CheckBox;

    invoke-virtual {v3, v4}, Landroid/view/View;->setClickable(Z)V

    .line 985
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->selectAllCheck:Landroid/widget/CheckBox;

    invoke-virtual {v3, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 986
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->selectAllCheck:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 987
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->selectAll:Landroid/widget/LinearLayout;

    const-string v6, "checked"

    invoke-virtual {v3, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 991
    :goto_2
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1008
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mDeleteListActionBarDoneButton:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    .line 1009
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mDeleteListActionBarDoneButton:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1011
    :cond_2
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mDeleteListActionBarCancelButton:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    .line 1012
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mDeleteListActionBarCancelButton:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1021
    :cond_3
    iget v3, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mScreenType:I

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mMenuDelete:Landroid/view/MenuItem;

    if-eqz v3, :cond_4

    .line 1022
    iget-boolean v3, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mIsLandscape:Z

    if-eqz v3, :cond_7

    .line 1023
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mMenuDelete:Landroid/view/MenuItem;

    const v6, 0x7f020286

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1027
    :goto_3
    iget v3, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->checked_cnt:I

    if-lez v3, :cond_8

    .line 1028
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mMenuDelete:Landroid/view/MenuItem;

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1032
    :cond_4
    :goto_4
    return-void

    :cond_5
    move v3, v5

    .line 983
    goto :goto_1

    .line 989
    :cond_6
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->selectAll:Landroid/widget/LinearLayout;

    const-string v6, "unchecked"

    invoke-virtual {v3, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1025
    :cond_7
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mMenuDelete:Landroid/view/MenuItem;

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_3

    .line 1030
    :cond_8
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mMenuDelete:Landroid/view/MenuItem;

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_4
.end method

.method private updateSpamKeyword(Lcom/android/mms/spam/SpamFilter$SpamFilterData;)V
    .locals 5
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    .line 924
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 925
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "filter"

    invoke-virtual {p1}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getFilter()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    const-string v3, "enable"

    invoke-virtual {p1}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getEnable()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 930
    sget-object v2, Lcom/android/mms/spam/SpamFilter;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 932
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 936
    invoke-virtual {p1}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getId()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getFilter()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getEnable()Z

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->update(ILjava/lang/String;Z)V

    .line 937
    return-void

    .line 926
    .end local v0           #uri:Landroid/net/Uri;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private updateTitleBar()V
    .locals 2

    .prologue
    .line 1039
    const/4 v0, 0x0

    .line 1040
    .local v0, titleString:Ljava/lang/CharSequence;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1041
    const v1, 0x7f0a0370

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1047
    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1048
    return-void

    .line 1043
    :cond_0
    const v1, 0x7f0a03a1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public autoreject_delete_cancel(Landroid/view/View;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 963
    const-string v0, "Cancel softkey clicked !!"

    invoke-direct {p0, v0}, Lcom/android/mms/spam/SetupSpamKeywordList;->displayToast(Ljava/lang/String;)V

    .line 964
    return-void
.end method

.method public autoreject_delete_items(Landroid/view/View;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 959
    const-string v0, "Delete softkey clicked !!"

    invoke-direct {p0, v0}, Lcom/android/mms/spam/SetupSpamKeywordList;->displayToast(Ljava/lang/String;)V

    .line 960
    return-void
.end method

.method public deleteDialog()V
    .locals 4

    .prologue
    .line 660
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 661
    .local v0, DeleteDialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a03a5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a009a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a01e7

    new-instance v3, Lcom/android/mms/spam/SetupSpamKeywordList$12;

    invoke-direct {v3, p0}, Lcom/android/mms/spam/SetupSpamKeywordList$12;-><init>(Lcom/android/mms/spam/SetupSpamKeywordList;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a01e9

    new-instance v3, Lcom/android/mms/spam/SetupSpamKeywordList$11;

    invoke-direct {v3, p0}, Lcom/android/mms/spam/SetupSpamKeywordList$11;-><init>(Lcom/android/mms/spam/SetupSpamKeywordList;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 696
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mDeleteDialog:Landroid/app/AlertDialog;

    .line 697
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mDeleteDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/mms/spam/SetupSpamKeywordList$13;

    invoke-direct {v2, p0}, Lcom/android/mms/spam/SetupSpamKeywordList$13;-><init>(Lcom/android/mms/spam/SetupSpamKeywordList;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 702
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 703
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "reqCode"
    .parameter "resCode"
    .parameter "data"

    .prologue
    .line 897
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 898
    packed-switch p1, :pswitch_data_0

    .line 909
    :cond_0
    :goto_0
    return-void

    .line 900
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 898
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 707
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 708
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mIsLandscape:Z

    .line 711
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamKeywordList;->updateDeleteModeActionBar()V

    .line 713
    return-void

    .line 708
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 137
    const-string v0, "Mms/SetupSpamKeywordList"

    const-string v3, "onCreate "

    invoke-static {v0, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 139
    const v0, 0x7f03007f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 140
    const v0, 0x7f0e0203

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mEmptySpamKeywordLayout:Landroid/widget/LinearLayout;

    .line 141
    const v0, 0x7f0e0204

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mEmptySpamKeywordstring:Landroid/widget/TextView;

    .line 143
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mEmptySpamKeywordLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mEmptySpamKeywordstring:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 148
    :cond_0
    if-eqz p1, :cond_1

    .line 149
    const-string v0, "blacklist_id"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mSelectedItem:I

    .line 151
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mActionBar:Landroid/app/ActionBar;

    .line 153
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamKeywordList;->initLayout()V

    .line 154
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamKeywordList;->makeScreen()V

    .line 156
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mIsLandscape:Z

    .line 157
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamKeywordList;->updateDeleteModeActionBar()V

    .line 158
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/mms/spam/SpamFilter;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 167
    return-void

    :cond_2
    move v0, v2

    .line 156
    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 470
    const v0, 0x7f0a0172

    invoke-interface {p1, v3, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02000a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 472
    const/4 v0, 0x2

    const v1, 0x7f0a00a2

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02000b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 475
    const/4 v0, 0x3

    const v1, 0x7f0a01e9

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02007a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 480
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 171
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 172
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 173
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamKeywordList;->removeDeleteModeActionBar()V

    .line 175
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mActionBar:Landroid/app/ActionBar;

    .line 177
    :cond_0
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 716
    sparse-switch p1, :sswitch_data_0

    .line 763
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v5

    :goto_1
    return v5

    .line 718
    :sswitch_0
    iget v7, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mScreenType:I

    if-ne v7, v5, :cond_0

    .line 719
    iput v6, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mScreenType:I

    .line 720
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamKeywordList;->makeScreen()V

    goto :goto_1

    .line 729
    :sswitch_1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 735
    .local v2, currentView:Landroid/widget/ListView;
    if-eqz v2, :cond_0

    .line 736
    invoke-virtual {v2}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 737
    .local v1, childView:Landroid/widget/LinearLayout;
    if-eqz v1, :cond_0

    .line 738
    const v5, 0x7f0e0235

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 740
    .local v0, checkBox:Landroid/widget/CheckBox;
    if-eqz v0, :cond_1

    .line 741
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->performClick()Z

    goto :goto_0

    .line 730
    .end local v0           #checkBox:Landroid/widget/CheckBox;
    .end local v1           #childView:Landroid/widget/LinearLayout;
    .end local v2           #currentView:Landroid/widget/ListView;
    :catch_0
    move-exception v3

    .line 731
    .local v3, e:Ljava/lang/ClassCastException;
    const-string v5, "Mms/SetupSpamKeywordList"

    const-string v7, "Unexpected ClassCastException."

    invoke-static {v5, v7, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v5, v6

    .line 732
    goto :goto_1

    .line 743
    .end local v3           #e:Ljava/lang/ClassCastException;
    .restart local v0       #checkBox:Landroid/widget/CheckBox;
    .restart local v1       #childView:Landroid/widget/LinearLayout;
    .restart local v2       #currentView:Landroid/widget/ListView;
    :cond_1
    const v5, 0x7f0e00fd

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 745
    .local v4, linearLayout:Landroid/widget/LinearLayout;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->isShown()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->isClickable()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 747
    invoke-virtual {v4}, Landroid/view/View;->performClick()Z

    goto :goto_0

    .line 749
    :cond_2
    const v5, 0x7f0e0228

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #linearLayout:Landroid/widget/LinearLayout;
    check-cast v4, Landroid/widget/LinearLayout;

    .line 751
    .restart local v4       #linearLayout:Landroid/widget/LinearLayout;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->isShown()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->isClickable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 753
    invoke-virtual {v4}, Landroid/view/View;->performClick()Z

    goto :goto_0

    .line 716
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x17 -> :sswitch_1
        0x42 -> :sswitch_1
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 557
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 610
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 559
    :sswitch_0
    iget v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mScreenType:I

    if-ne v2, v1, :cond_0

    .line 560
    iput v4, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mScreenType:I

    .line 561
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamKeywordList;->makeScreen()V

    goto :goto_0

    .line 563
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 568
    :sswitch_1
    iput v4, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mSelectedItem:I

    .line 569
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 572
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x2400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 574
    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 578
    .end local v0           #intent:Landroid/content/Intent;
    :sswitch_2
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->edad:Landroid/app/AlertDialog;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->edad:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 579
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->edad:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 580
    iput-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->edad:Landroid/app/AlertDialog;

    .line 583
    :cond_1
    iget v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mScreenType:I

    if-nez v2, :cond_2

    .line 584
    iput v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mScreenType:I

    .line 585
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamKeywordList;->makeScreen()V

    goto :goto_0

    .line 589
    :cond_2
    iget v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mScreenType:I

    if-ne v2, v1, :cond_4

    .line 590
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mDeleteModeDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mDeleteModeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 591
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mDeleteModeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 592
    iput-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mDeleteModeDialog:Landroid/app/AlertDialog;

    .line 594
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/mms/spam/SetupSpamKeywordList;->softkeyLeftRun(Landroid/view/View;)V

    goto :goto_0

    .line 603
    :cond_4
    :sswitch_3
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mDeleteModeDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mDeleteModeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 604
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mDeleteModeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 605
    iput-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mDeleteModeDialog:Landroid/app/AlertDialog;

    .line 607
    :cond_5
    invoke-virtual {p0, v3}, Lcom/android/mms/spam/SetupSpamKeywordList;->softkeyRightRun(Landroid/view/View;)V

    goto :goto_0

    .line 557
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 219
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 220
    const-string v0, "Mms/SetupSpamKeywordList"

    const-string v1, "onPause "

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .parameter "menu"

    .prologue
    const v7, 0x7f0a00a2

    const/4 v6, 0x2

    const/4 v5, 0x6

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 484
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 485
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 486
    const/4 v0, 0x0

    .line 488
    .local v0, currentCnt:I
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mSpamKeywordItemList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 489
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mSpamKeywordItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 498
    :cond_0
    iget v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mScreenType:I

    if-nez v1, :cond_2

    .line 499
    const v1, 0x7f0a0172

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mMenuCreate:Landroid/view/MenuItem;

    .line 500
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mMenuCreate:Landroid/view/MenuItem;

    const v2, 0x7f02000a

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 501
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mMenuCreate:Landroid/view/MenuItem;

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 503
    invoke-interface {p1, v3, v6, v3, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mMenuDelete:Landroid/view/MenuItem;

    .line 504
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mMenuDelete:Landroid/view/MenuItem;

    const v2, 0x7f02000b

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 505
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mMenuDelete:Landroid/view/MenuItem;

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 512
    :goto_0
    if-ge v0, v4, :cond_3

    .line 514
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mMenuDelete:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 553
    :cond_1
    :goto_1
    return v4

    .line 507
    :cond_2
    const/4 v1, 0x3

    const v2, 0x7f0a01e9

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mMenuCancel:Landroid/view/MenuItem;

    .line 508
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 509
    invoke-interface {p1, v3, v6, v3, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mMenuDelete:Landroid/view/MenuItem;

    .line 510
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mMenuDelete:Landroid/view/MenuItem;

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0

    .line 528
    :cond_3
    iget v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mScreenType:I

    if-eqz v1, :cond_4

    .line 529
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mMenuDelete:Landroid/view/MenuItem;

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 531
    :cond_4
    iget v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mScreenType:I

    if-nez v1, :cond_6

    if-lez v0, :cond_6

    .line 532
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mMenuDelete:Landroid/view/MenuItem;

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 539
    :goto_2
    iget v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mScreenType:I

    if-ne v1, v4, :cond_5

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mMenuDelete:Landroid/view/MenuItem;

    if-eqz v1, :cond_5

    .line 540
    iget v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->checked_cnt:I

    if-lez v1, :cond_7

    .line 541
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mMenuDelete:Landroid/view/MenuItem;

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 546
    :cond_5
    :goto_3
    iget-boolean v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mIsLandscape:Z

    if-eqz v1, :cond_1

    .line 547
    iget v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mScreenType:I

    if-eqz v1, :cond_1

    .line 548
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mMenuCancel:Landroid/view/MenuItem;

    const v2, 0x7f020285

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 549
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mMenuDelete:Landroid/view/MenuItem;

    const v2, 0x7f020286

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 534
    :cond_6
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mMenuDelete:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 543
    :cond_7
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mMenuDelete:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_3
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "inState"

    .prologue
    .line 188
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 189
    const-string v0, "Mms/SetupSpamKeywordList"

    const-string v1, "onRestoreInstanceState"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    if-eqz p1, :cond_0

    .line 192
    const-string v0, "blacklist_id"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mSelectedItem:I

    .line 194
    :cond_0
    const-string v0, "Mms/SetupSpamKeywordList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSelectedItem "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mSelectedItem:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 199
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 200
    const-string v0, "Mms/SetupSpamKeywordList"

    const-string v1, "onResume "

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-boolean v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mUpdateScreen:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mScreenType:I

    if-nez v0, :cond_1

    .line 203
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Landroid/app/Activity;->removeDialog(I)V

    .line 205
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mDeleteDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 207
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mDeleteDialog:Landroid/app/AlertDialog;

    .line 210
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamKeywordList;->makeScreen()V

    .line 211
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 212
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 213
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mUpdateScreen:Z

    .line 215
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 181
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 182
    const-string v0, "Mms/SetupSpamKeywordList"

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string v0, "blacklist_id"

    iget v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mSelectedItem:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 184
    return-void
.end method

.method public showItemContextMenu(Landroid/view/ContextMenu;Landroid/view/View;I)V
    .locals 4
    .parameter "menu"
    .parameter "v"
    .parameter "position"

    .prologue
    const/4 v3, 0x0

    .line 631
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mSpamKeywordItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-virtual {v1}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getFilter()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 632
    new-instance v0, Lcom/android/mms/spam/SetupSpamKeywordList$SpamMenuClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/mms/spam/SetupSpamKeywordList$SpamMenuClickListener;-><init>(Lcom/android/mms/spam/SetupSpamKeywordList;Lcom/android/mms/spam/SetupSpamKeywordList$1;)V

    .line 634
    .local v0, l:Lcom/android/mms/spam/SetupSpamKeywordList$SpamMenuClickListener;
    const v1, 0x7f0a006e

    invoke-interface {p1, v3, v3, v3, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 635
    const/4 v1, 0x1

    const v2, 0x7f0a00a2

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 636
    return-void
.end method

.method public softkeyLeftRun(Landroid/view/View;)V
    .locals 6
    .parameter "target"

    .prologue
    const/4 v5, 0x1

    .line 325
    const/4 v3, 0x0

    .line 326
    .local v3, mCountToDelete:I
    iget-object v4, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v1

    .line 327
    .local v1, checkedarray:Landroid/util/SparseBooleanArray;
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    .local v2, i:I
    :goto_0
    if-lez v2, :cond_1

    .line 328
    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v1, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 329
    add-int/lit8 v3, v3, 0x1

    .line 327
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 333
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 334
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0a009a

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 336
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 338
    if-le v3, v5, :cond_2

    .line 339
    const v4, 0x7f0a03a6

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 345
    :goto_1
    const v4, 0x104000a

    new-instance v5, Lcom/android/mms/spam/SetupSpamKeywordList$7;

    invoke-direct {v5, p0}, Lcom/android/mms/spam/SetupSpamKeywordList$7;-><init>(Lcom/android/mms/spam/SetupSpamKeywordList;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 373
    const/high16 v4, 0x104

    new-instance v5, Lcom/android/mms/spam/SetupSpamKeywordList$8;

    invoke-direct {v5, p0}, Lcom/android/mms/spam/SetupSpamKeywordList$8;-><init>(Lcom/android/mms/spam/SetupSpamKeywordList;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 379
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mDeleteModeDialog:Landroid/app/AlertDialog;

    .line 380
    iget-object v4, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mDeleteModeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 381
    return-void

    .line 341
    :cond_2
    const v4, 0x7f0a03a5

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method public softkeyRightRun(Landroid/view/View;)V
    .locals 4
    .parameter "target"

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordList;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/spam/SetupSpamKeywordList$9;

    invoke-direct {v1, p0}, Lcom/android/mms/spam/SetupSpamKeywordList$9;-><init>(Lcom/android/mms/spam/SetupSpamKeywordList;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 390
    return-void
.end method
