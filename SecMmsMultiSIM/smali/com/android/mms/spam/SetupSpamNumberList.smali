.class public Lcom/android/mms/spam/SetupSpamNumberList;
.super Landroid/app/Activity;
.source "SetupSpamNumberList.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;,
        Lcom/android/mms/spam/SetupSpamNumberList$SpamMenuClickListener;,
        Lcom/android/mms/spam/SetupSpamNumberList$QueryThread;
    }
.end annotation


# static fields
.field private static final CANCEL_ITEM:I = 0x3

.field private static final CONTACT_IMPORT_INTENT:Landroid/content/Intent; = null

.field private static final CREATE_ITEM:I = 0x1

.field private static final DELETE_ITEM:I = 0x2

.field private static final DELETE_SPAM_ITEM:I = 0x1

.field private static final EDIT_DELETE_DIALOG:I = 0x64

.field private static final EDIT_SPAM_ITEM:I = 0x0

.field public static final MATCH_CRITERIA_RESULT:I = 0x3

.field public static final PICK_CONTACT_NUMBER:I = 0x2

.field public static final PICK_LOGS_NUMBER:I = 0x1

.field private static final STATE_VALUE_BLACKLIST_ID:Ljava/lang/String; = "blacklist_id"

.field private static final TAG:Ljava/lang/String; = "Mms/SetupSpamNumberList"

.field public static final UNKNOWN_MODE:Ljava/lang/String; = "unknown_mode"


# instance fields
.field private final DELETE_SCREEN:I

.field private final NORMAL_SCREEN:I

.field private final QUERY_COMPLETE:I

.field private checked_cnt:I

.field private contactQueryThread:Lcom/android/mms/spam/SetupSpamNumberList$QueryThread;

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

.field private mSpamNumberAdapter:Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;

.field private mSpamNumberItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/spam/SpamFilter$SpamFilterData;",
            ">;"
        }
    .end annotation
.end field

.field private mSpamNumberListContextMenu:Landroid/view/ContextMenu;

.field private final mSpamNumberListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mUpdateScreen:Z

.field private selectAll:Landroid/widget/LinearLayout;

.field private selectAllCheck:Landroid/widget/CheckBox;

.field spamPreference:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 94
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/mms/spam/SetupSpamNumberList;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    .line 95
    sget-object v0, Lcom/android/mms/spam/SetupSpamNumberList;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberItemList:Ljava/util/ArrayList;

    .line 82
    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberListContextMenu:Landroid/view/ContextMenu;

    .line 98
    iput v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->NORMAL_SCREEN:I

    .line 99
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->DELETE_SCREEN:I

    .line 101
    iput v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mScreenType:I

    .line 109
    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->defaultName:Ljava/lang/String;

    .line 111
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->QUERY_COMPLETE:I

    .line 112
    iput-boolean v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mUpdateScreen:Z

    .line 113
    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteDialog:Landroid/app/AlertDialog;

    .line 114
    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteModeDialog:Landroid/app/AlertDialog;

    .line 115
    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->edad:Landroid/app/AlertDialog;

    .line 121
    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteListActionBarLayout:Landroid/widget/LinearLayout;

    .line 122
    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteListActionBarDoneButton:Landroid/widget/TextView;

    .line 123
    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteListActionBarCancelButton:Landroid/widget/TextView;

    .line 124
    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteListActionBarTitle:Landroid/widget/TextView;

    .line 127
    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mMenuCreate:Landroid/view/MenuItem;

    .line 128
    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mMenuDelete:Landroid/view/MenuItem;

    .line 129
    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mMenuCancel:Landroid/view/MenuItem;

    .line 132
    iput v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->checked_cnt:I

    .line 134
    new-instance v0, Lcom/android/mms/spam/SetupSpamNumberList$1;

    invoke-direct {v0, p0}, Lcom/android/mms/spam/SetupSpamNumberList$1;-><init>(Lcom/android/mms/spam/SetupSpamNumberList;)V

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mHandler:Landroid/os/Handler;

    .line 144
    new-instance v0, Lcom/android/mms/spam/SetupSpamNumberList$2;

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/spam/SetupSpamNumberList$2;-><init>(Lcom/android/mms/spam/SetupSpamNumberList;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mContentObserver:Landroid/database/ContentObserver;

    .line 325
    new-instance v0, Lcom/android/mms/spam/SetupSpamNumberList$3;

    invoke-direct {v0, p0}, Lcom/android/mms/spam/SetupSpamNumberList$3;-><init>(Lcom/android/mms/spam/SetupSpamNumberList;)V

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSelectAllOnKeyListener:Landroid/view/View$OnKeyListener;

    .line 754
    new-instance v0, Lcom/android/mms/spam/SetupSpamNumberList$10;

    invoke-direct {v0, p0}, Lcom/android/mms/spam/SetupSpamNumberList$10;-><init>(Lcom/android/mms/spam/SetupSpamNumberList;)V

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 896
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/spam/SetupSpamNumberList;)Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberAdapter:Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/spam/SetupSpamNumberList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->stopContactQuery()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/mms/spam/SetupSpamNumberList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->updateDeleteScreenItems()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/mms/spam/SetupSpamNumberList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSelectedItem:I

    return v0
.end method

.method static synthetic access$1102(Lcom/android/mms/spam/SetupSpamNumberList;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput p1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSelectedItem:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/mms/spam/SetupSpamNumberList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->callMatchCriteriaToEditNum()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/mms/spam/SetupSpamNumberList;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/mms/spam/SetupSpamNumberList;->deleteSpamNumber(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/mms/spam/SetupSpamNumberList;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/mms/spam/SetupSpamNumberList;->displayToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/mms/spam/SetupSpamNumberList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->makeScreen()V

    return-void
.end method

.method static synthetic access$1602(Lcom/android/mms/spam/SetupSpamNumberList;Landroid/view/ContextMenu;)Landroid/view/ContextMenu;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberListContextMenu:Landroid/view/ContextMenu;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/mms/spam/SetupSpamNumberList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->updateTitleBar()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/mms/spam/SetupSpamNumberList;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/mms/spam/SetupSpamNumberList;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/mms/spam/SetupSpamNumberList;Ljava/lang/String;ZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/spam/SetupSpamNumberList;->updateSpamNumber(Ljava/lang/String;ZI)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/mms/spam/SetupSpamNumberList;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mUpdateScreen:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/mms/spam/SetupSpamNumberList;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteModeDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/mms/spam/SetupSpamNumberList;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteModeDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/mms/spam/SetupSpamNumberList;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteListActionBarCancelButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/spam/SetupSpamNumberList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mScreenType:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/mms/spam/SetupSpamNumberList;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput p1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mScreenType:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/mms/spam/SetupSpamNumberList;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/spam/SetupSpamNumberList;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->defaultName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/spam/SetupSpamNumberList;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/mms/spam/SetupSpamNumberList;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->selectAllCheck:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/mms/spam/SetupSpamNumberList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mHeaderViewCount:I

    return v0
.end method

.method private callMatchCriteriaToEditNum()V
    .locals 5

    .prologue
    .line 1200
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberItemList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSelectedItem:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-virtual {v2}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getId()I

    move-result v1

    .line 1201
    .local v1, update_id:I
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/spam/SetupSpamNumberWriteForm;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1202
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "UPDATE_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1203
    const-string v3, "SELECT_NUMBER"

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberItemList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSelectedItem:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-virtual {v2}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getFilter()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1204
    const-string v3, "MATCH_MODE"

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberItemList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSelectedItem:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-virtual {v2}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getCriteria()I

    move-result v2

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1205
    const-string v2, "UPDATE_MODE"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1206
    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1207
    return-void
.end method

.method private deleteSpamNumber(I)V
    .locals 4
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 1164
    sget-object v1, Lcom/android/mms/spam/SpamFilter;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1165
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1168
    invoke-static {p1}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->delete(I)V

    .line 1169
    return-void
.end method

.method private displayToast(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1218
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1219
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1220
    return-void
.end method

.method private getSpam(I)Landroid/database/Cursor;
    .locals 6
    .parameter "nFilterType"

    .prologue
    const/4 v2, 0x0

    .line 1190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "filter_type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1194
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
    .line 342
    const v0, 0x7f0e0202

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;

    .line 345
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03008f

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mHeader:Landroid/view/View;

    .line 356
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mHeader:Landroid/view/View;

    const v1, 0x7f0e0228

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->selectAll:Landroid/widget/LinearLayout;

    .line 357
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mHeader:Landroid/view/View;

    const v1, 0x7f0e022a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->selectAllCheck:Landroid/widget/CheckBox;

    .line 361
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->selectAll:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSelectAllOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 364
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->selectAll:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/mms/spam/SetupSpamNumberList$4;

    invoke-direct {v1, p0}, Lcom/android/mms/spam/SetupSpamNumberList$4;-><init>(Lcom/android/mms/spam/SetupSpamNumberList;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->selectAllCheck:Landroid/widget/CheckBox;

    new-instance v1, Lcom/android/mms/spam/SetupSpamNumberList$5;

    invoke-direct {v1, p0}, Lcom/android/mms/spam/SetupSpamNumberList$5;-><init>(Lcom/android/mms/spam/SetupSpamNumberList;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 385
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 386
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/mms/spam/SetupSpamNumberList$6;

    invoke-direct {v1, p0}, Lcom/android/mms/spam/SetupSpamNumberList$6;-><init>(Lcom/android/mms/spam/SetupSpamNumberList;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 432
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mHeader:Landroid/view/View;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 433
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 1283
    const-string v0, "Mms/SetupSpamNumberList"

    invoke-static {v0, p1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1284
    return-void
.end method

.method private makeScreen()V
    .locals 13

    .prologue
    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "makeScreen : ScreenType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mScreenType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/spam/SetupSpamNumberList;->log(Ljava/lang/String;)V

    .line 507
    const/4 v12, 0x0

    .line 508
    .local v12, idx:I
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 510
    iget v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mScreenType:I

    if-nez v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->spamPreference:Landroid/content/SharedPreferences;

    const-string v1, "pref_key_spam_option_unknown_num"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 513
    .local v3, unknownMode:Z
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 514
    iget-object v6, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberItemList:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const v4, 0x7f0a039f

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;-><init>(IIZLjava/lang/String;I)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 528
    .end local v3           #unknownMode:Z
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/spam/SetupSpamNumberList;->getSpam(I)Landroid/database/Cursor;

    move-result-object v11

    .line 530
    .local v11, cursor:Landroid/database/Cursor;
    if-eqz v11, :cond_1

    .line 531
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 533
    :cond_1
    if-eqz v11, :cond_3

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 535
    :cond_2
    const/4 v0, 0x0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 536
    .local v5, id:I
    const/4 v0, 0x2

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 537
    .local v10, checked:I
    if-eqz v10, :cond_7

    const/4 v7, 0x1

    .line 538
    .local v7, bChecked:Z
    :goto_0
    const/4 v0, 0x3

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 539
    .local v8, num:Ljava/lang/String;
    const/4 v0, 0x4

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 542
    .local v9, matched:I
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberItemList:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    const/4 v6, 0x0

    invoke-direct/range {v4 .. v9}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;-><init>(IIZLjava/lang/String;I)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 548
    .end local v5           #id:I
    .end local v7           #bChecked:Z
    .end local v8           #num:Ljava/lang/String;
    .end local v9           #matched:I
    .end local v10           #checked:I
    :cond_3
    if-eqz v11, :cond_4

    .line 549
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 551
    :cond_4
    iget v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mScreenType:I

    if-nez v0, :cond_8

    .line 554
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mHeader:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 558
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->removeDeleteModeActionBar()V

    .line 559
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 560
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 581
    :goto_1
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    iput v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mHeaderViewCount:I

    .line 583
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v0

    if-nez v0, :cond_5

    .line 585
    if-gtz v12, :cond_a

    .line 586
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mEmptySpamKeywordLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 587
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 588
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mEmptySpamKeywordstring:Landroid/widget/TextView;

    const v1, 0x7f0a0386

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 595
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberAdapter:Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;

    if-nez v0, :cond_6

    .line 596
    new-instance v0, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberItemList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, p0, v1}, Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;-><init>(Lcom/android/mms/spam/SetupSpamNumberList;Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberAdapter:Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;

    .line 598
    :cond_6
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberAdapter:Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 599
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->updateTitleBar()V

    .line 600
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->startContactQuery()V

    .line 602
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 603
    return-void

    .line 537
    .restart local v5       #id:I
    .restart local v10       #checked:I
    :cond_7
    const/4 v7, 0x0

    goto :goto_0

    .line 564
    .end local v5           #id:I
    .end local v10           #checked:I
    :cond_8
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 566
    iget v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mHeaderViewCount:I

    if-nez v0, :cond_9

    .line 567
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mHeader:Landroid/view/View;

    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 568
    :cond_9
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberAdapter:Lcom/android/mms/spam/SetupSpamNumberList$SpamAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 571
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->selectAll:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 572
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->selectAllCheck:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 573
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->clearChoices()V

    .line 574
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 575
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->updateDeleteModeActionBar()V

    .line 576
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteListActionBarLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    const/4 v4, -0x1

    const/4 v6, -0x1

    invoke-direct {v2, v4, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 577
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 578
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    goto/16 :goto_1

    .line 590
    :cond_a
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mEmptySpamKeywordLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 591
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method private removeDeleteModeActionBar()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1304
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteListActionBarCancelButton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1305
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteListActionBarCancelButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1306
    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteListActionBarCancelButton:Landroid/widget/TextView;

    .line 1309
    :cond_0
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteListActionBarDoneButton:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1310
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteListActionBarDoneButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1311
    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteListActionBarDoneButton:Landroid/widget/TextView;

    .line 1314
    :cond_1
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteListActionBarLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 1315
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteListActionBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 1316
    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteListActionBarLayout:Landroid/widget/LinearLayout;

    .line 1318
    :cond_2
    return-void
.end method

.method private startContactQuery()V
    .locals 4

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->contactQueryThread:Lcom/android/mms/spam/SetupSpamNumberList$QueryThread;

    if-nez v0, :cond_0

    .line 217
    new-instance v0, Lcom/android/mms/spam/SetupSpamNumberList$QueryThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/mms/spam/SetupSpamNumberList$QueryThread;-><init>(Lcom/android/mms/spam/SetupSpamNumberList;Lcom/android/mms/spam/SetupSpamNumberList$1;)V

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->contactQueryThread:Lcom/android/mms/spam/SetupSpamNumberList$QueryThread;

    .line 219
    const-string v0, "Mms/SetupSpamNumberList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID of contactQueryThread = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->contactQueryThread:Lcom/android/mms/spam/SetupSpamNumberList$QueryThread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->contactQueryThread:Lcom/android/mms/spam/SetupSpamNumberList$QueryThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 222
    :cond_0
    return-void
.end method

.method private stopContactQuery()V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->contactQueryThread:Lcom/android/mms/spam/SetupSpamNumberList$QueryThread;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->contactQueryThread:Lcom/android/mms/spam/SetupSpamNumberList$QueryThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 227
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->contactQueryThread:Lcom/android/mms/spam/SetupSpamNumberList$QueryThread;

    .line 229
    :cond_0
    return-void
.end method

.method private updateDeleteModeActionBar()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 1321
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteListActionBarLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 1322
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030023

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteListActionBarLayout:Landroid/widget/LinearLayout;

    .line 1323
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteListActionBarLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0e00d2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteListActionBarDoneButton:Landroid/widget/TextView;

    .line 1324
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteListActionBarLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0e00d0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteListActionBarCancelButton:Landroid/widget/TextView;

    .line 1325
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteListActionBarLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0e00ce

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteListActionBarTitle:Landroid/widget/TextView;

    .line 1326
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteListActionBarTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1328
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteListActionBarLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0e00cf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1329
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteListActionBarLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0e00d1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1332
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteListActionBarDoneButton:Landroid/widget/TextView;

    new-instance v1, Lcom/android/mms/spam/SetupSpamNumberList$14;

    invoke-direct {v1, p0}, Lcom/android/mms/spam/SetupSpamNumberList$14;-><init>(Lcom/android/mms/spam/SetupSpamNumberList;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1345
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteListActionBarCancelButton:Landroid/widget/TextView;

    new-instance v1, Lcom/android/mms/spam/SetupSpamNumberList$15;

    invoke-direct {v1, p0}, Lcom/android/mms/spam/SetupSpamNumberList$15;-><init>(Lcom/android/mms/spam/SetupSpamNumberList;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1357
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->updateDeleteScreenItems()V

    .line 1358
    return-void
.end method

.method private updateDeleteScreenItems()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1223
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1224
    .local v1, doneText:Ljava/lang/StringBuffer;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1225
    .local v0, cancelText:Ljava/lang/StringBuffer;
    iput v5, p0, Lcom/android/mms/spam/SetupSpamNumberList;->checked_cnt:I

    .line 1227
    const/4 v2, 0x0

    .local v2, index:I
    :goto_0
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/AdapterView;->getCount()I

    move-result v3

    iget v6, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mHeaderViewCount:I

    sub-int/2addr v3, v6

    if-ge v2, v3, :cond_1

    .line 1228
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;

    iget v6, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mHeaderViewCount:I

    add-int/2addr v6, v2

    invoke-virtual {v3, v6}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1229
    iget v3, p0, Lcom/android/mms/spam/SetupSpamNumberList;->checked_cnt:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/mms/spam/SetupSpamNumberList;->checked_cnt:I

    .line 1227
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1232
    :cond_1
    iget-object v6, p0, Lcom/android/mms/spam/SetupSpamNumberList;->selectAllCheck:Landroid/widget/CheckBox;

    iget v3, p0, Lcom/android/mms/spam/SetupSpamNumberList;->checked_cnt:I

    iget-object v7, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberItemList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v3, v7, :cond_5

    move v3, v4

    :goto_1
    invoke-virtual {v6, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1233
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList;->selectAllCheck:Landroid/widget/CheckBox;

    invoke-virtual {v3, v4}, Landroid/view/View;->setClickable(Z)V

    .line 1234
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList;->selectAllCheck:Landroid/widget/CheckBox;

    invoke-virtual {v3, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 1235
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList;->selectAllCheck:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1236
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList;->selectAll:Landroid/widget/LinearLayout;

    const-string v6, "checked"

    invoke-virtual {v3, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1240
    :goto_2
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1256
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteListActionBarDoneButton:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    .line 1257
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteListActionBarDoneButton:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1259
    :cond_2
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteListActionBarCancelButton:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    .line 1260
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteListActionBarCancelButton:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1269
    :cond_3
    iget v3, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mScreenType:I

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mMenuDelete:Landroid/view/MenuItem;

    if-eqz v3, :cond_4

    .line 1270
    iget-boolean v3, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mIsLandscape:Z

    if-eqz v3, :cond_7

    .line 1271
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mMenuDelete:Landroid/view/MenuItem;

    const v6, 0x7f020286

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1275
    :goto_3
    iget v3, p0, Lcom/android/mms/spam/SetupSpamNumberList;->checked_cnt:I

    if-lez v3, :cond_8

    .line 1276
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mMenuDelete:Landroid/view/MenuItem;

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1280
    :cond_4
    :goto_4
    return-void

    :cond_5
    move v3, v5

    .line 1232
    goto :goto_1

    .line 1238
    :cond_6
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList;->selectAll:Landroid/widget/LinearLayout;

    const-string v6, "unchecked"

    invoke-virtual {v3, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1273
    :cond_7
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mMenuDelete:Landroid/view/MenuItem;

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_3

    .line 1278
    :cond_8
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mMenuDelete:Landroid/view/MenuItem;

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_4
.end method

.method private updateSpamNumber(Ljava/lang/String;ZI)V
    .locals 5
    .parameter "string"
    .parameter "checked"
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    .line 1173
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1174
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "filter"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    const-string v3, "enable"

    if-nez p2, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1181
    sget-object v2, Lcom/android/mms/spam/SpamFilter;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1182
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1186
    invoke-static {p3, p1, p2}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->update(ILjava/lang/String;Z)V

    .line 1187
    return-void

    .line 1177
    .end local v0           #uri:Landroid/net/Uri;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private updateTitleBar()V
    .locals 3

    .prologue
    .line 1287
    const/4 v1, 0x0

    .line 1288
    .local v1, titleString:Ljava/lang/CharSequence;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1289
    const v2, 0x7f0a036f

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1293
    :goto_0
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1300
    .local v0, currentCnt:I
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1301
    return-void

    .line 1291
    .end local v0           #currentCnt:I
    :cond_0
    const v2, 0x7f0a03a0

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public autoreject_delete_cancel(Landroid/view/View;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 1214
    const-string v0, "Cancel softkey clicked !!"

    invoke-direct {p0, v0}, Lcom/android/mms/spam/SetupSpamNumberList;->displayToast(Ljava/lang/String;)V

    .line 1215
    return-void
.end method

.method public autoreject_delete_items(Landroid/view/View;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 1210
    const-string v0, "Delete softkey clicked !!"

    invoke-direct {p0, v0}, Lcom/android/mms/spam/SetupSpamNumberList;->displayToast(Ljava/lang/String;)V

    .line 1211
    return-void
.end method

.method public deleteDialog()V
    .locals 4

    .prologue
    .line 798
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 799
    .local v0, DeleteDialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a03a3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a009a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a01e7

    new-instance v3, Lcom/android/mms/spam/SetupSpamNumberList$12;

    invoke-direct {v3, p0}, Lcom/android/mms/spam/SetupSpamNumberList$12;-><init>(Lcom/android/mms/spam/SetupSpamNumberList;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a01e9

    new-instance v3, Lcom/android/mms/spam/SetupSpamNumberList$11;

    invoke-direct {v3, p0}, Lcom/android/mms/spam/SetupSpamNumberList$11;-><init>(Lcom/android/mms/spam/SetupSpamNumberList;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 824
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteDialog:Landroid/app/AlertDialog;

    .line 825
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/mms/spam/SetupSpamNumberList$13;

    invoke-direct {v2, p0}, Lcom/android/mms/spam/SetupSpamNumberList$13;-><init>(Lcom/android/mms/spam/SetupSpamNumberList;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 830
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 831
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "reqCode"
    .parameter "resCode"
    .parameter "data"

    .prologue
    .line 1148
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1149
    packed-switch p1, :pswitch_data_0

    .line 1159
    :cond_0
    :goto_0
    return-void

    .line 1151
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 1149
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
    .line 834
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 835
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mIsLandscape:Z

    .line 838
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->updateDeleteModeActionBar()V

    .line 840
    return-void

    .line 835
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

    .line 233
    const-string v0, "Mms/SetupSpamNumberList"

    const-string v3, "onCreate "

    invoke-static {v0, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 235
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0a0395

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->defaultName:Ljava/lang/String;

    .line 237
    const v0, 0x7f030080

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 239
    const v0, 0x7f0e0203

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mEmptySpamKeywordLayout:Landroid/widget/LinearLayout;

    .line 240
    const v0, 0x7f0e0204

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mEmptySpamKeywordstring:Landroid/widget/TextView;

    .line 242
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mEmptySpamKeywordLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 244
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mEmptySpamKeywordstring:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 247
    :cond_0
    if-eqz p1, :cond_1

    .line 248
    const-string v0, "blacklist_id"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSelectedItem:I

    .line 251
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mActionBar:Landroid/app/ActionBar;

    .line 252
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->spamPreference:Landroid/content/SharedPreferences;

    .line 253
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->initLayout()V

    .line 254
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->makeScreen()V

    .line 255
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mIsLandscape:Z

    .line 256
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->updateDeleteModeActionBar()V

    .line 257
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/mms/spam/SpamFilter;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 266
    return-void

    :cond_2
    move v0, v2

    .line 255
    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 606
    const v0, 0x7f0a0172

    invoke-interface {p1, v3, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02000a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 608
    const/4 v0, 0x2

    const v1, 0x7f0a00a2

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02000b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 613
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

    .line 621
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 270
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 271
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 272
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->removeDeleteModeActionBar()V

    .line 274
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    .line 275
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mActionBar:Landroid/app/ActionBar;

    .line 276
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

    .line 843
    sparse-switch p1, :sswitch_data_0

    .line 893
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v5

    :goto_1
    return v5

    .line 845
    :sswitch_0
    iget v7, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mScreenType:I

    if-ne v7, v5, :cond_0

    .line 846
    iput v6, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mScreenType:I

    .line 847
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->makeScreen()V

    goto :goto_1

    .line 856
    :sswitch_1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 863
    .local v2, currentView:Landroid/widget/ListView;
    if-eqz v2, :cond_0

    .line 864
    invoke-virtual {v2}, Landroid/widget/AbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 865
    .local v1, childView:Landroid/widget/LinearLayout;
    if-eqz v1, :cond_0

    .line 866
    const v5, 0x7f0e0235

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 869
    .local v0, checkBox:Landroid/widget/CheckBox;
    if-eqz v0, :cond_1

    .line 870
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->performClick()Z

    goto :goto_0

    .line 858
    .end local v0           #checkBox:Landroid/widget/CheckBox;
    .end local v1           #childView:Landroid/widget/LinearLayout;
    .end local v2           #currentView:Landroid/widget/ListView;
    :catch_0
    move-exception v3

    .line 859
    .local v3, e:Ljava/lang/ClassCastException;
    const-string v5, "Mms/SetupSpamNumberList"

    const-string v7, "Unexpected ClassCastException."

    invoke-static {v5, v7, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v5, v6

    .line 860
    goto :goto_1

    .line 872
    .end local v3           #e:Ljava/lang/ClassCastException;
    .restart local v0       #checkBox:Landroid/widget/CheckBox;
    .restart local v1       #childView:Landroid/widget/LinearLayout;
    .restart local v2       #currentView:Landroid/widget/ListView;
    :cond_1
    const v5, 0x7f0e00fd

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 875
    .local v4, linearLayout:Landroid/widget/LinearLayout;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->isShown()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Landroid/view/View;->isClickable()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 877
    invoke-virtual {v4}, Landroid/view/View;->performClick()Z

    goto :goto_0

    .line 879
    :cond_2
    const v5, 0x7f0e0228

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #linearLayout:Landroid/widget/LinearLayout;
    check-cast v4, Landroid/widget/LinearLayout;

    .line 882
    .restart local v4       #linearLayout:Landroid/widget/LinearLayout;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->isShown()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->isClickable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 884
    invoke-virtual {v4}, Landroid/view/View;->performClick()Z

    goto :goto_0

    .line 843
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

    .line 699
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 751
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 701
    :sswitch_0
    iget v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mScreenType:I

    if-ne v2, v1, :cond_0

    .line 702
    iput v4, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mScreenType:I

    .line 703
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->makeScreen()V

    goto :goto_0

    .line 705
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 710
    :sswitch_1
    iput v4, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSelectedItem:I

    .line 711
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/spam/SetupSpamNumberWriteForm;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 713
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x2400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 715
    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 719
    .end local v0           #intent:Landroid/content/Intent;
    :sswitch_2
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->edad:Landroid/app/AlertDialog;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->edad:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 720
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->edad:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 721
    iput-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList;->edad:Landroid/app/AlertDialog;

    .line 724
    :cond_1
    iget v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mScreenType:I

    if-nez v2, :cond_2

    .line 725
    iput v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mScreenType:I

    .line 726
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->makeScreen()V

    goto :goto_0

    .line 730
    :cond_2
    iget v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mScreenType:I

    if-ne v2, v1, :cond_4

    .line 731
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteModeDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteModeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 732
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteModeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 733
    iput-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteModeDialog:Landroid/app/AlertDialog;

    .line 735
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/mms/spam/SetupSpamNumberList;->softkeyLeftRun(Landroid/view/View;)V

    goto :goto_0

    .line 744
    :cond_4
    :sswitch_3
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteModeDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteModeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 745
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteModeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 746
    iput-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteModeDialog:Landroid/app/AlertDialog;

    .line 748
    :cond_5
    invoke-virtual {p0, v3}, Lcom/android/mms/spam/SetupSpamNumberList;->softkeyRightRun(Landroid/view/View;)V

    goto :goto_0

    .line 699
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
    .line 319
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 320
    const-string v0, "Mms/SetupSpamNumberList"

    const-string v1, "onPause "

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->stopContactQuery()V

    .line 322
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

    .line 625
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 626
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 627
    const/4 v0, 0x0

    .line 629
    .local v0, currentCnt:I
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberItemList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 630
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 639
    :cond_0
    iget v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mScreenType:I

    if-nez v1, :cond_2

    .line 640
    const v1, 0x7f0a0172

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mMenuCreate:Landroid/view/MenuItem;

    .line 641
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mMenuCreate:Landroid/view/MenuItem;

    const v2, 0x7f02000a

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 642
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mMenuCreate:Landroid/view/MenuItem;

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 644
    invoke-interface {p1, v3, v6, v3, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mMenuDelete:Landroid/view/MenuItem;

    .line 645
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mMenuDelete:Landroid/view/MenuItem;

    const v2, 0x7f02000b

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 646
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mMenuDelete:Landroid/view/MenuItem;

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 654
    :goto_0
    if-ge v0, v4, :cond_3

    .line 656
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mMenuDelete:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 695
    :cond_1
    :goto_1
    return v4

    .line 648
    :cond_2
    const/4 v1, 0x3

    const v2, 0x7f0a01e9

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mMenuCancel:Landroid/view/MenuItem;

    .line 649
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 650
    invoke-interface {p1, v3, v6, v3, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mMenuDelete:Landroid/view/MenuItem;

    .line 651
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mMenuDelete:Landroid/view/MenuItem;

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0

    .line 670
    :cond_3
    iget v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mScreenType:I

    if-eqz v1, :cond_4

    .line 671
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mMenuDelete:Landroid/view/MenuItem;

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 673
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 674
    if-le v0, v4, :cond_5

    .line 676
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mMenuDelete:Landroid/view/MenuItem;

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 688
    :goto_2
    iget-boolean v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mIsLandscape:Z

    if-eqz v1, :cond_1

    .line 689
    iget v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mScreenType:I

    if-eqz v1, :cond_1

    .line 690
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mMenuCancel:Landroid/view/MenuItem;

    const v2, 0x7f020285

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 691
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mMenuDelete:Landroid/view/MenuItem;

    const v2, 0x7f020286

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 678
    :cond_5
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mMenuDelete:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 680
    :cond_6
    iget v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mScreenType:I

    if-nez v1, :cond_7

    if-ge v0, v4, :cond_8

    :cond_7
    iget v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mScreenType:I

    if-ne v1, v4, :cond_9

    iget v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->checked_cnt:I

    if-lt v1, v4, :cond_9

    .line 681
    :cond_8
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mMenuDelete:Landroid/view/MenuItem;

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 684
    :cond_9
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mMenuDelete:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "inState"

    .prologue
    .line 287
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 288
    const-string v0, "Mms/SetupSpamNumberList"

    const-string v1, "onRestoreInstanceState "

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    if-eqz p1, :cond_0

    .line 291
    const-string v0, "blacklist_id"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSelectedItem:I

    .line 293
    :cond_0
    const-string v0, "Mms/SetupSpamNumberList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSelectedItem "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSelectedItem:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 298
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 299
    const-string v0, "Mms/SetupSpamNumberList"

    const-string v1, "onResume "

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    iget-boolean v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mUpdateScreen:Z

    if-eqz v0, :cond_1

    .line 302
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Landroid/app/Activity;->removeDialog(I)V

    .line 304
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 306
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteDialog:Landroid/app/AlertDialog;

    .line 309
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->makeScreen()V

    .line 310
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 311
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 312
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mUpdateScreen:Z

    .line 316
    :goto_0
    return-void

    .line 314
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamNumberList;->startContactQuery()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 280
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 281
    const-string v0, "Mms/SetupSpamNumberList"

    const-string v1, "onSaveInstanceState "

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string v0, "blacklist_id"

    iget v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSelectedItem:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 283
    return-void
.end method

.method public showItemContextMenu(Landroid/view/ContextMenu;Landroid/view/View;I)V
    .locals 4
    .parameter "menu"
    .parameter "v"
    .parameter "position"

    .prologue
    const/4 v3, 0x0

    .line 771
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mSpamNumberItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    invoke-virtual {v1}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;->getFilter()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 772
    new-instance v0, Lcom/android/mms/spam/SetupSpamNumberList$SpamMenuClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/mms/spam/SetupSpamNumberList$SpamMenuClickListener;-><init>(Lcom/android/mms/spam/SetupSpamNumberList;Lcom/android/mms/spam/SetupSpamNumberList$1;)V

    .line 774
    .local v0, l:Lcom/android/mms/spam/SetupSpamNumberList$SpamMenuClickListener;
    const v1, 0x7f0a006e

    invoke-interface {p1, v3, v3, v3, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 775
    const/4 v1, 0x1

    const v2, 0x7f0a00a2

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 776
    return-void
.end method

.method public softkeyLeftRun(Landroid/view/View;)V
    .locals 6
    .parameter "target"

    .prologue
    const/4 v5, 0x1

    .line 438
    const/4 v3, 0x0

    .line 439
    .local v3, mCountToDelete:I
    iget-object v4, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v1

    .line 440
    .local v1, checkedarray:Landroid/util/SparseBooleanArray;
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    .local v2, i:I
    :goto_0
    if-lez v2, :cond_1

    .line 441
    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v1, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 442
    add-int/lit8 v3, v3, 0x1

    .line 440
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 446
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 447
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0a009a

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 449
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 451
    if-le v3, v5, :cond_2

    .line 452
    const v4, 0x7f0a03a4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 457
    :goto_1
    const v4, 0x104000a

    new-instance v5, Lcom/android/mms/spam/SetupSpamNumberList$7;

    invoke-direct {v5, p0}, Lcom/android/mms/spam/SetupSpamNumberList$7;-><init>(Lcom/android/mms/spam/SetupSpamNumberList;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 485
    const/high16 v4, 0x104

    new-instance v5, Lcom/android/mms/spam/SetupSpamNumberList$8;

    invoke-direct {v5, p0}, Lcom/android/mms/spam/SetupSpamNumberList$8;-><init>(Lcom/android/mms/spam/SetupSpamNumberList;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 492
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteModeDialog:Landroid/app/AlertDialog;

    .line 493
    iget-object v4, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mDeleteModeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 494
    return-void

    .line 454
    :cond_2
    const v4, 0x7f0a03a3

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method public softkeyRightRun(Landroid/view/View;)V
    .locals 4
    .parameter "target"

    .prologue
    .line 497
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberList;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/spam/SetupSpamNumberList$9;

    invoke-direct {v1, p0}, Lcom/android/mms/spam/SetupSpamNumberList$9;-><init>(Lcom/android/mms/spam/SetupSpamNumberList;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 503
    return-void
.end method
