.class public Lcom/android/mms/spam/ManageSpamMessages;
.super Landroid/app/Activity;
.source "ManageSpamMessages.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/android/mms/data/Contact$UpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/spam/ManageSpamMessages$MultipleRestoreSpamTask;,
        Lcom/android/mms/spam/ManageSpamMessages$SingleRestoreSpamTask;,
        Lcom/android/mms/spam/ManageSpamMessages$QueryHandler;,
        Lcom/android/mms/spam/ManageSpamMessages$CheckedValue;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/view/View$OnCreateContextMenuListener;",
        "Landroid/widget/CompoundButton$OnCheckedChangeListener;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/android/mms/data/Contact$UpdateListener;"
    }
.end annotation


# static fields
.field public static final COPY_MODE:I = 0x2

.field private static final DEBUG:Z = true

.field public static final DELETE_MODE:I = 0x1

.field private static final MENU_COPY_TO_ORIGINALBOX:I = 0x0

.field private static final MENU_DELETE_FROM_SPAM:I = 0x1

.field private static final MENU_VIEW:I = 0x2

.field static final MMSSMS_LIST_PARTIAL_PROJECT:[Ljava/lang/String; = null

.field public static final NORMAL_MODE:I = 0x0

.field private static final OPTION_MENU_CANCEL:I = 0x4

.field private static final OPTION_MENU_CONFIRM:I = 0x3

.field private static final OPTION_MENU_COPY_ALL:I = 0x1

.field private static final OPTION_MENU_DELETE_ALL:I = 0x2

.field private static final SHOW_BUSY:I = 0x2

.field private static final SHOW_EMPTY:I = 0x1

.field private static final SHOW_LIST:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Mms/ManageSpamMessages"


# instance fields
.field private allCheckBox:Landroid/widget/CheckBox;

.field private completeToast:Landroid/widget/Toast;

.field private mCompleteHandler:Landroid/os/Handler;

.field private final mContentChangedListener:Lcom/android/mms/spam/SpamMessageListAdapter$OnContentChangedListener;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContextMenu:Landroid/view/ContextMenu;

.field private mDialog:Landroid/app/AlertDialog;

.field private mEmptyMessageLayout:Landroid/widget/LinearLayout;

.field private mListAdapter:Lcom/android/mms/spam/SpamMessageListAdapter;

.field private mMode:I

.field private mPosForContext:I

.field private mQueryHandler:Landroid/content/AsyncQueryHandler;

.field private mSpamList:Landroid/widget/ListView;

.field private final mSpamListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mState:I

.field private progressDialog:Landroid/app/ProgressDialog;

.field private selectAllUserUnchecked:Z

.field private seletAllLayout:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 475
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "transport_type"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "address"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "body"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "read"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "sub"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "sub_cs"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "m_type"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "msg_box"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "d_rpt"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "rr"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "err_type"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "locked"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "date"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/spam/ManageSpamMessages;->MMSSMS_LIST_PARTIAL_PROJECT:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 103
    iput-object v1, p0, Lcom/android/mms/spam/ManageSpamMessages;->mListAdapter:Lcom/android/mms/spam/SpamMessageListAdapter;

    .line 106
    iput-object v1, p0, Lcom/android/mms/spam/ManageSpamMessages;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 140
    iput-object v1, p0, Lcom/android/mms/spam/ManageSpamMessages;->progressDialog:Landroid/app/ProgressDialog;

    .line 588
    new-instance v0, Lcom/android/mms/spam/ManageSpamMessages$6;

    invoke-direct {v0, p0}, Lcom/android/mms/spam/ManageSpamMessages$6;-><init>(Lcom/android/mms/spam/ManageSpamMessages;)V

    iput-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages;->mContentChangedListener:Lcom/android/mms/spam/SpamMessageListAdapter$OnContentChangedListener;

    .line 679
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/spam/ManageSpamMessages;->mPosForContext:I

    .line 682
    iput-object v1, p0, Lcom/android/mms/spam/ManageSpamMessages;->mContextMenu:Landroid/view/ContextMenu;

    .line 684
    new-instance v0, Lcom/android/mms/spam/ManageSpamMessages$8;

    invoke-direct {v0, p0}, Lcom/android/mms/spam/ManageSpamMessages$8;-><init>(Lcom/android/mms/spam/ManageSpamMessages;)V

    iput-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages;->mSpamListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 1048
    iput-object v1, p0, Lcom/android/mms/spam/ManageSpamMessages;->mDialog:Landroid/app/AlertDialog;

    .line 1129
    new-instance v0, Lcom/android/mms/spam/ManageSpamMessages$11;

    invoke-direct {v0, p0}, Lcom/android/mms/spam/ManageSpamMessages$11;-><init>(Lcom/android/mms/spam/ManageSpamMessages;)V

    iput-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages;->mCompleteHandler:Landroid/os/Handler;

    .line 1138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/spam/ManageSpamMessages;->selectAllUserUnchecked:Z

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/spam/ManageSpamMessages;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget v0, p0, Lcom/android/mms/spam/ManageSpamMessages;->mMode:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/mms/spam/ManageSpamMessages;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages;->mSpamList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/spam/ManageSpamMessages;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/mms/spam/ManageSpamMessages;->startQuery()V

    return-void
.end method

.method static synthetic access$1102(Lcom/android/mms/spam/ManageSpamMessages;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput p1, p0, Lcom/android/mms/spam/ManageSpamMessages;->mPosForContext:I

    return p1
.end method

.method static synthetic access$1202(Lcom/android/mms/spam/ManageSpamMessages;Landroid/view/ContextMenu;)Landroid/view/ContextMenu;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/mms/spam/ManageSpamMessages;->mContextMenu:Landroid/view/ContextMenu;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/mms/spam/ManageSpamMessages;Ljava/lang/String;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/spam/ManageSpamMessages;->deleteFromSpam(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/mms/spam/ManageSpamMessages;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/mms/spam/ManageSpamMessages;->showProgressDialog(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/mms/spam/ManageSpamMessages;Lcom/android/mms/spam/ManageSpamMessages$CheckedValue;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/mms/spam/ManageSpamMessages;->deleteFromSpam(Lcom/android/mms/spam/ManageSpamMessages$CheckedValue;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/mms/spam/ManageSpamMessages;)Landroid/widget/Toast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages;->completeToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/mms/spam/ManageSpamMessages;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages;->mCompleteHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/mms/spam/ManageSpamMessages;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/spam/ManageSpamMessages;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages;->allCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/spam/ManageSpamMessages;)Lcom/android/mms/spam/SpamMessageListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages;->mListAdapter:Lcom/android/mms/spam/SpamMessageListAdapter;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/mms/spam/ManageSpamMessages;Lcom/android/mms/spam/SpamMessageListAdapter;)Lcom/android/mms/spam/SpamMessageListAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/mms/spam/ManageSpamMessages;->mListAdapter:Lcom/android/mms/spam/SpamMessageListAdapter;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/mms/spam/ManageSpamMessages;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/mms/spam/ManageSpamMessages;->updateState(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/spam/ManageSpamMessages;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages;->seletAllLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/spam/ManageSpamMessages;)Lcom/android/mms/spam/SpamMessageListAdapter$OnContentChangedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages;->mContentChangedListener:Lcom/android/mms/spam/SpamMessageListAdapter$OnContentChangedListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/spam/ManageSpamMessages;)Landroid/view/View$OnCreateContextMenuListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages;->mSpamListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/mms/spam/ManageSpamMessages;Landroid/database/Cursor;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/mms/spam/ManageSpamMessages;->checkStatusSelectAll(Landroid/database/Cursor;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/mms/spam/ManageSpamMessages;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/android/mms/spam/ManageSpamMessages;->startAsyncQueryDelayed(J)V

    return-void
.end method

.method private addRecipientsListener()V
    .locals 0

    .prologue
    .line 448
    invoke-static {p0}, Lcom/android/mms/data/Contact;->addListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 449
    return-void
.end method

.method private checkStatusSelectAll(Landroid/database/Cursor;)Z
    .locals 6
    .parameter "c"

    .prologue
    .line 626
    iget-object v3, p0, Lcom/android/mms/spam/ManageSpamMessages;->mListAdapter:Lcom/android/mms/spam/SpamMessageListAdapter;

    invoke-virtual {v3}, Lcom/android/mms/spam/SpamMessageListAdapter;->getArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 627
    .local v1, checkList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 628
    .local v0, checkCount:I
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 630
    .local v2, listCount:I
    const-string v3, "Mms/ManageSpamMessages"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkStatusSelectAll(), checkCount"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", listCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    if-ne v0, v2, :cond_0

    .line 635
    const/4 v3, 0x1

    .line 641
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private checkStatusSelectAllforV2(Landroid/database/Cursor;)Z
    .locals 5
    .parameter "c"

    .prologue
    .line 608
    iget-object v2, p0, Lcom/android/mms/spam/ManageSpamMessages;->mListAdapter:Lcom/android/mms/spam/SpamMessageListAdapter;

    invoke-virtual {v2}, Lcom/android/mms/spam/SpamMessageListAdapter;->getCheckedCount()I

    move-result v0

    .line 609
    .local v0, checkCount:I
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 611
    .local v1, listCount:I
    const-string v2, "Mms/ManageSpamMessages"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkStatusSelectAllforV2(), checkCount"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", listCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    if-ne v0, v1, :cond_0

    .line 616
    const/4 v2, 0x1

    .line 622
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;I)V
    .locals 3
    .parameter "listener"
    .parameter "messageId"

    .prologue
    .line 1051
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1052
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0a009a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1054
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1055
    const v1, 0x7f0a011d

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1056
    const v1, 0x7f0a013a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1057
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1059
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/spam/ManageSpamMessages;->mDialog:Landroid/app/AlertDialog;

    .line 1060
    iget-object v1, p0, Lcom/android/mms/spam/ManageSpamMessages;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1061
    return-void
.end method

.method private confirmMultipleDeleteDialog(Landroid/content/DialogInterface$OnClickListener;II)V
    .locals 5
    .parameter "listener"
    .parameter "messageId"
    .parameter "messageNumber"

    .prologue
    const/4 v3, 0x1

    .line 1064
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1065
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0a009a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1067
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1069
    const v1, 0x7f0a011d

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1070
    const v1, 0x7f0a013a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1071
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1074
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1077
    return-void
.end method

.method private deleteAllFromSpam()V
    .locals 4

    .prologue
    .line 866
    iget-object v3, p0, Lcom/android/mms/spam/ManageSpamMessages;->mListAdapter:Lcom/android/mms/spam/SpamMessageListAdapter;

    invoke-virtual {v3}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 868
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_0

    .line 869
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 870
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 871
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 872
    invoke-direct {p0, v1}, Lcom/android/mms/spam/ManageSpamMessages;->deleteFromSpam(Landroid/database/Cursor;)V

    .line 873
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 871
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 877
    .end local v0           #count:I
    .end local v2           #i:I
    :cond_0
    return-void
.end method

.method private deleteFromSpam(Landroid/database/Cursor;)V
    .locals 7
    .parameter "cursor"

    .prologue
    const/4 v6, 0x0

    .line 813
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 839
    :goto_0
    return-void

    .line 816
    :cond_0
    const-string v5, "transport_type"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 818
    .local v3, typeStr:Ljava/lang/String;
    const-string v5, "_id"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 819
    .local v1, id:J
    const/4 v4, 0x0

    .line 821
    .local v4, uri:Landroid/net/Uri;
    const-string v5, "mms"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 822
    sget-object v5, Lcom/android/mms/spam/SpamFilter;->SPAM_MMS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 838
    :goto_1
    iget-object v5, p0, Lcom/android/mms/spam/ManageSpamMessages;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p0, v5, v4, v6, v6}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 825
    :cond_1
    const-string v5, "wpm"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 826
    sget-object v5, Lcom/android/mms/ui/MessageUtils;->WAP_PUSH_MESSAGE_BY_ID_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    goto :goto_1

    .line 831
    :cond_2
    sget-object v0, Lcom/android/mms/spam/SpamFilter;->SPAM_SMS_CONTENT_URI:Landroid/net/Uri;

    .line 832
    .local v0, CONTENT_URI:Landroid/net/Uri;
    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    goto :goto_1
.end method

.method private deleteFromSpam(Lcom/android/mms/spam/ManageSpamMessages$CheckedValue;)V
    .locals 9
    .parameter "value"

    .prologue
    const/4 v8, 0x0

    .line 786
    invoke-virtual {p1}, Lcom/android/mms/spam/ManageSpamMessages$CheckedValue;->getTypeStr()Ljava/lang/String;

    move-result-object v3

    .line 787
    .local v3, typeStr:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/mms/spam/ManageSpamMessages$CheckedValue;->getId()J

    move-result-wide v1

    .line 789
    .local v1, id:J
    const/4 v4, 0x0

    .line 791
    .local v4, uri:Landroid/net/Uri;
    const-string v5, "mms"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 792
    sget-object v5, Lcom/android/mms/spam/SpamFilter;->SPAM_MMS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 808
    :goto_0
    iget-object v5, p0, Lcom/android/mms/spam/ManageSpamMessages;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p0, v5, v4, v8, v8}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 809
    return-void

    .line 795
    :cond_0
    const-string v5, "wpm"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 796
    sget-object v5, Lcom/android/mms/ui/MessageUtils;->WAP_PUSH_MESSAGE_BY_ID_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    goto :goto_0

    .line 801
    :cond_1
    sget-object v0, Lcom/android/mms/spam/SpamFilter;->SPAM_SMS_CONTENT_URI:Landroid/net/Uri;

    .line 802
    .local v0, CONTENT_URI:Landroid/net/Uri;
    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 803
    const-string v5, "Mms/ManageSpamMessages"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Spam_Soyeon delete uri= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private deleteFromSpam(Ljava/lang/String;J)V
    .locals 4
    .parameter "typeStr"
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 843
    const/4 v1, 0x0

    .line 845
    .local v1, uri:Landroid/net/Uri;
    const-string v2, "mms"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 846
    sget-object v2, Lcom/android/mms/spam/SpamFilter;->SPAM_MMS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 862
    :goto_0
    iget-object v2, p0, Lcom/android/mms/spam/ManageSpamMessages;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p0, v2, v1, v3, v3}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 863
    return-void

    .line 849
    :cond_0
    const-string v2, "wpm"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 850
    sget-object v2, Lcom/android/mms/ui/MessageUtils;->WAP_PUSH_MESSAGE_BY_ID_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 855
    :cond_1
    sget-object v0, Lcom/android/mms/spam/SpamFilter;->SPAM_SMS_CONTENT_URI:Landroid/net/Uri;

    .line 856
    .local v0, CONTENT_URI:Landroid/net/Uri;
    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 464
    const-string v0, "Mms/ManageSpamMessages"

    const-string v1, "init()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/mms/spam/ManageSpamMessages;->updateState(I)V

    .line 469
    invoke-direct {p0}, Lcom/android/mms/spam/ManageSpamMessages;->startQuery()V

    .line 470
    return-void
.end method

.method private isIncomingMessage(Landroid/database/Cursor;)Z
    .locals 3
    .parameter "cursor"

    .prologue
    const/4 v1, 0x1

    .line 779
    const-string v2, "type"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 781
    .local v0, messageBox:I
    if-ne v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private refreshMessageList()V
    .locals 2

    .prologue
    .line 665
    const-string v0, "Mms/ManageSpamMessages"

    const-string v1, "refreshMessageList()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/mms/spam/ManageSpamMessages;->updateState(I)V

    .line 669
    invoke-direct {p0}, Lcom/android/mms/spam/ManageSpamMessages;->startQuery()V

    .line 670
    return-void
.end method

.method private reloadSelectedArray()V
    .locals 8

    .prologue
    .line 928
    iget-object v7, p0, Lcom/android/mms/spam/ManageSpamMessages;->mListAdapter:Lcom/android/mms/spam/SpamMessageListAdapter;

    invoke-virtual {v7}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 929
    .local v1, cursor:Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    .line 930
    .local v4, msgcount:I
    const/4 v5, 0x0

    .line 932
    .local v5, pos:I
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 933
    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    .line 936
    const-string v7, "transport_type"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 937
    .local v6, szMessageType:Ljava/lang/String;
    const-string v7, "_id"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 938
    .local v2, lMessageId:J
    iget-object v7, p0, Lcom/android/mms/spam/ManageSpamMessages;->mListAdapter:Lcom/android/mms/spam/SpamMessageListAdapter;

    invoke-virtual {v7, v2, v3, v6}, Lcom/android/mms/spam/SpamMessageListAdapter;->isCheckedMessageId(JLjava/lang/String;)Z

    move-result v0

    .line 940
    .local v0, checked:Z
    if-nez v0, :cond_0

    .line 941
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 933
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 949
    :cond_0
    iget-object v7, p0, Lcom/android/mms/spam/ManageSpamMessages;->mListAdapter:Lcom/android/mms/spam/SpamMessageListAdapter;

    invoke-virtual {v7, v5}, Lcom/android/mms/spam/SpamMessageListAdapter;->addList(I)V

    .line 950
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 953
    .end local v0           #checked:Z
    .end local v2           #lMessageId:J
    .end local v6           #szMessageType:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private removeRecipientsListener()V
    .locals 0

    .prologue
    .line 452
    invoke-static {p0}, Lcom/android/mms/data/Contact;->removeListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 453
    return-void
.end method

.method private setTitleByMode()V
    .locals 3

    .prologue
    const v2, 0x7f0e01f9

    .line 1194
    iget v0, p0, Lcom/android/mms/spam/ManageSpamMessages;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 1225
    :cond_0
    :goto_0
    return-void

    .line 1197
    :pswitch_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a036b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1201
    iget-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages;->mSpamList:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 1202
    iget-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages;->mSpamList:Landroid/widget/ListView;

    const v1, 0x7f0e01e4

    invoke-virtual {v0, v1}, Landroid/view/View;->setNextFocusUpId(I)V

    goto :goto_0

    .line 1207
    :pswitch_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1211
    iget-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages;->mSpamList:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 1212
    iget-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages;->mSpamList:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setNextFocusUpId(I)V

    goto :goto_0

    .line 1217
    :pswitch_2
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0365

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1221
    iget-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages;->mSpamList:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 1222
    iget-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages;->mSpamList:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setNextFocusUpId(I)V

    goto :goto_0

    .line 1194
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private showProgressDialog(I)V
    .locals 2
    .parameter "text"

    .prologue
    .line 1230
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages;->progressDialog:Landroid/app/ProgressDialog;

    .line 1231
    iget-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1232
    iget-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1233
    iget-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1235
    iget-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages;->progressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/android/mms/spam/ManageSpamMessages$12;

    invoke-direct {v1, p0}, Lcom/android/mms/spam/ManageSpamMessages$12;-><init>(Lcom/android/mms/spam/ManageSpamMessages;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1241
    iget-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1242
    return-void
.end method

.method private startAsyncQueryDelayed(J)V
    .locals 2
    .parameter "delay"

    .prologue
    .line 597
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/mms/spam/ManageSpamMessages$7;

    invoke-direct {v1, p0}, Lcom/android/mms/spam/ManageSpamMessages$7;-><init>(Lcom/android/mms/spam/ManageSpamMessages;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 603
    return-void
.end method

.method private startQuery()V
    .locals 9

    .prologue
    .line 648
    const-string v0, "Mms/ManageSpamMessages"

    const-string v1, "startQuery()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    :try_start_0
    const-string v7, "normalized_date DESC"

    .line 655
    .local v7, sOrderBySQL:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    sget-object v3, Lcom/android/mms/spam/SpamFilter;->SPAM_MESSAGES_CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/mms/spam/ManageSpamMessages;->MMSSMS_LIST_PARTIAL_PROJECT:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 662
    .end local v7           #sOrderBySQL:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 659
    :catch_0
    move-exception v8

    .line 660
    .local v8, e:Landroid/database/sqlite/SQLiteException;
    invoke-static {p0, v8}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method

.method private updateState(I)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 1080
    iget v0, p0, Lcom/android/mms/spam/ManageSpamMessages;->mState:I

    if-ne v0, p1, :cond_0

    .line 1108
    :goto_0
    return-void

    .line 1084
    :cond_0
    iput p1, p0, Lcom/android/mms/spam/ManageSpamMessages;->mState:I

    .line 1085
    packed-switch p1, :pswitch_data_0

    .line 1105
    const-string v0, "Mms/ManageSpamMessages"

    const-string v1, "Invalid State"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0

    .line 1087
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages;->mSpamList:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1088
    iget-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages;->mEmptyMessageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1089
    invoke-direct {p0}, Lcom/android/mms/spam/ManageSpamMessages;->setTitleByMode()V

    goto :goto_1

    .line 1093
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages;->mSpamList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1094
    iget-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages;->mEmptyMessageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1095
    invoke-direct {p0}, Lcom/android/mms/spam/ManageSpamMessages;->setTitleByMode()V

    goto :goto_1

    .line 1099
    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages;->mSpamList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1100
    iget-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages;->mEmptyMessageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1101
    const v0, 0x7f0a000d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1085
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private viewMessage(Landroid/database/Cursor;)V
    .locals 0
    .parameter "cursor"

    .prologue
    .line 1112
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1143
    iget-object v1, p0, Lcom/android/mms/spam/ManageSpamMessages;->mListAdapter:Lcom/android/mms/spam/SpamMessageListAdapter;

    if-nez v1, :cond_1

    .line 1144
    iget-object v1, p0, Lcom/android/mms/spam/ManageSpamMessages;->allCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1145
    iget-object v1, p0, Lcom/android/mms/spam/ManageSpamMessages;->allCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1190
    :cond_0
    :goto_0
    return-void

    .line 1149
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0e0201

    if-ne v1, v2, :cond_5

    .line 1151
    iget-object v1, p0, Lcom/android/mms/spam/ManageSpamMessages;->allCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1152
    iget-object v1, p0, Lcom/android/mms/spam/ManageSpamMessages;->mListAdapter:Lcom/android/mms/spam/SpamMessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/spam/SpamMessageListAdapter;->getArraySize()I

    move-result v1

    iget-object v2, p0, Lcom/android/mms/spam/ManageSpamMessages;->mListAdapter:Lcom/android/mms/spam/SpamMessageListAdapter;

    invoke-virtual {v2}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v2

    if-eq v1, v2, :cond_4

    .line 1154
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/android/mms/spam/ManageSpamMessages;->mListAdapter:Lcom/android/mms/spam/SpamMessageListAdapter;

    invoke-virtual {v1}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 1155
    iget-object v1, p0, Lcom/android/mms/spam/ManageSpamMessages;->mListAdapter:Lcom/android/mms/spam/SpamMessageListAdapter;

    invoke-virtual {v1, v0}, Lcom/android/mms/spam/SpamMessageListAdapter;->addList(I)V

    .line 1154
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1161
    .end local v0           #i:I
    :cond_2
    iget-boolean v1, p0, Lcom/android/mms/spam/ManageSpamMessages;->selectAllUserUnchecked:Z

    if-eqz v1, :cond_3

    .line 1162
    iget-object v1, p0, Lcom/android/mms/spam/ManageSpamMessages;->mListAdapter:Lcom/android/mms/spam/SpamMessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/spam/SpamMessageListAdapter;->deleteArray()V

    .line 1164
    :cond_3
    iput-boolean v4, p0, Lcom/android/mms/spam/ManageSpamMessages;->selectAllUserUnchecked:Z

    .line 1188
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/android/mms/spam/ManageSpamMessages;->mListAdapter:Lcom/android/mms/spam/SpamMessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/spam/SpamMessageListAdapter;->notifyDataSetChanged()V

    .line 1189
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0

    .line 1169
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0e0231

    if-ne v1, v2, :cond_4

    .line 1170
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1171
    iget-object v2, p0, Lcom/android/mms/spam/ManageSpamMessages;->mListAdapter:Lcom/android/mms/spam/SpamMessageListAdapter;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/mms/spam/SpamMessageListAdapter;->addList(I)V

    .line 1174
    iget-object v1, p0, Lcom/android/mms/spam/ManageSpamMessages;->mListAdapter:Lcom/android/mms/spam/SpamMessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/spam/SpamMessageListAdapter;->getArraySize()I

    move-result v1

    iget-object v2, p0, Lcom/android/mms/spam/ManageSpamMessages;->mListAdapter:Lcom/android/mms/spam/SpamMessageListAdapter;

    invoke-virtual {v2}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 1175
    iget-object v1, p0, Lcom/android/mms/spam/ManageSpamMessages;->allCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_2

    .line 1177
    :cond_6
    iget-object v2, p0, Lcom/android/mms/spam/ManageSpamMessages;->mListAdapter:Lcom/android/mms/spam/SpamMessageListAdapter;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/mms/spam/SpamMessageListAdapter;->removeList(I)V

    .line 1180
    iget-object v1, p0, Lcom/android/mms/spam/ManageSpamMessages;->allCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1182
    iput-boolean v3, p0, Lcom/android/mms/spam/ManageSpamMessages;->selectAllUserUnchecked:Z

    .line 1183
    iget-object v1, p0, Lcom/android/mms/spam/ManageSpamMessages;->allCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 674
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 676
    const-string v0, "Mms/ManageSpamMessages"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/4 v4, 0x1

    .line 712
    iget v5, p0, Lcom/android/mms/spam/ManageSpamMessages;->mPosForContext:I

    if-gez v5, :cond_0

    .line 713
    const/4 v4, 0x0

    .line 742
    :goto_0
    return v4

    .line 715
    :cond_0
    iget-object v5, p0, Lcom/android/mms/spam/ManageSpamMessages;->mListAdapter:Lcom/android/mms/spam/SpamMessageListAdapter;

    iget v6, p0, Lcom/android/mms/spam/ManageSpamMessages;->mPosForContext:I

    invoke-virtual {v5, v6}, Landroid/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 717
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 742
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    goto :goto_0

    .line 719
    :pswitch_0
    new-instance v5, Lcom/android/mms/spam/ManageSpamMessages$SingleRestoreSpamTask;

    invoke-direct {v5, p0}, Lcom/android/mms/spam/ManageSpamMessages$SingleRestoreSpamTask;-><init>(Lcom/android/mms/spam/ManageSpamMessages;)V

    invoke-virtual {v5, v0}, Lcom/android/mms/spam/ManageSpamMessages$SingleRestoreSpamTask;->execute(Landroid/database/Cursor;)V

    goto :goto_0

    .line 722
    :pswitch_1
    const-string v5, "transport_type"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 724
    .local v3, typeStr:Ljava/lang/String;
    const-string v5, "_id"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 726
    .local v1, id:J
    new-instance v5, Lcom/android/mms/spam/ManageSpamMessages$9;

    invoke-direct {v5, p0, v3, v1, v2}, Lcom/android/mms/spam/ManageSpamMessages$9;-><init>(Lcom/android/mms/spam/ManageSpamMessages;Ljava/lang/String;J)V

    const v6, 0x7f0a038a

    invoke-direct {p0, v5, v6}, Lcom/android/mms/spam/ManageSpamMessages;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;I)V

    goto :goto_0

    .line 737
    .end local v1           #id:J
    .end local v3           #typeStr:Ljava/lang/String;
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/android/mms/spam/ManageSpamMessages;->viewMessage(Landroid/database/Cursor;)V

    goto :goto_0

    .line 717
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const v5, 0x7f0e01f9

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 228
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 229
    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 231
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/spam/ManageSpamMessages;->mContentResolver:Landroid/content/ContentResolver;

    .line 232
    new-instance v1, Lcom/android/mms/spam/ManageSpamMessages$QueryHandler;

    iget-object v2, p0, Lcom/android/mms/spam/ManageSpamMessages;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v1, p0, v2, p0}, Lcom/android/mms/spam/ManageSpamMessages$QueryHandler;-><init>(Lcom/android/mms/spam/ManageSpamMessages;Landroid/content/ContentResolver;Lcom/android/mms/spam/ManageSpamMessages;)V

    iput-object v1, p0, Lcom/android/mms/spam/ManageSpamMessages;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 233
    const v1, 0x7f03008e

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 234
    const v1, 0x7f0e0226

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/mms/spam/ManageSpamMessages;->mSpamList:Landroid/widget/ListView;

    .line 235
    const v1, 0x7f0e0227

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/spam/ManageSpamMessages;->mEmptyMessageLayout:Landroid/widget/LinearLayout;

    .line 237
    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/spam/ManageSpamMessages;->seletAllLayout:Landroid/widget/LinearLayout;

    .line 241
    const v1, 0x7f0e0201

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/mms/spam/ManageSpamMessages;->allCheckBox:Landroid/widget/CheckBox;

    .line 242
    iget-object v1, p0, Lcom/android/mms/spam/ManageSpamMessages;->allCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 244
    iget-object v1, p0, Lcom/android/mms/spam/ManageSpamMessages;->seletAllLayout:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 250
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 252
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 257
    :cond_0
    iget-object v1, p0, Lcom/android/mms/spam/ManageSpamMessages;->mSpamList:Landroid/widget/ListView;

    new-instance v2, Lcom/android/mms/spam/ManageSpamMessages$1;

    invoke-direct {v2, p0}, Lcom/android/mms/spam/ManageSpamMessages$1;-><init>(Lcom/android/mms/spam/ManageSpamMessages;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 273
    iget-object v1, p0, Lcom/android/mms/spam/ManageSpamMessages;->seletAllLayout:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/mms/spam/ManageSpamMessages$2;

    invoke-direct {v2, p0}, Lcom/android/mms/spam/ManageSpamMessages$2;-><init>(Lcom/android/mms/spam/ManageSpamMessages;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 288
    iget-object v1, p0, Lcom/android/mms/spam/ManageSpamMessages;->allCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 290
    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/mms/spam/ManageSpamMessages$3;

    invoke-direct {v2, p0}, Lcom/android/mms/spam/ManageSpamMessages$3;-><init>(Lcom/android/mms/spam/ManageSpamMessages;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    iget-object v1, p0, Lcom/android/mms/spam/ManageSpamMessages;->mSpamList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/mms/spam/ManageSpamMessages;->mSpamListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 326
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mms/spam/ManageSpamMessages;->progressDialog:Landroid/app/ProgressDialog;

    .line 327
    iget-object v1, p0, Lcom/android/mms/spam/ManageSpamMessages;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 328
    iget-object v1, p0, Lcom/android/mms/spam/ManageSpamMessages;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 329
    iget-object v1, p0, Lcom/android/mms/spam/ManageSpamMessages;->progressDialog:Landroid/app/ProgressDialog;

    new-instance v2, Lcom/android/mms/spam/ManageSpamMessages$4;

    invoke-direct {v2, p0}, Lcom/android/mms/spam/ManageSpamMessages$4;-><init>(Lcom/android/mms/spam/ManageSpamMessages;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 335
    invoke-static {}, Lcom/android/mms/MmsApp;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/spam/ManageSpamMessages;->completeToast:Landroid/widget/Toast;

    .line 338
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/mms/spam/ManageSpamMessages;->updateState(I)V

    .line 339
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
    const/4 v4, 0x0

    .line 210
    new-instance v0, Landroid/content/CursorLoader;

    sget-object v2, Lcom/android/mms/spam/SpamFilter;->SPAM_MESSAGES_CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/spam/ManageSpamMessages;->MMSSMS_LIST_PARTIAL_PROJECT:[Ljava/lang/String;

    move-object v1, p0

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .local v0, cursorLoader:Landroid/content/CursorLoader;
    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 882
    const v0, 0x7f0a0365

    invoke-interface {p1, v2, v3, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200e8

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 885
    const/4 v0, 0x2

    const v1, 0x7f0a00a2

    invoke-interface {p1, v2, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020083

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 888
    const/4 v0, 0x4

    const v1, 0x7f0a01e9

    invoke-interface {p1, v2, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020079

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 892
    const/4 v0, 0x3

    const v1, 0x7f0a01e7

    invoke-interface {p1, v2, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020009

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 896
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 762
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 763
    iput-object v1, p0, Lcom/android/mms/spam/ManageSpamMessages;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 766
    iget-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages;->allCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 768
    iget-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages;->mListAdapter:Lcom/android/mms/spam/SpamMessageListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages;->mListAdapter:Lcom/android/mms/spam/SpamMessageListAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 769
    iget-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages;->mListAdapter:Lcom/android/mms/spam/SpamMessageListAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 772
    :cond_0
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 1246
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/mms/spam/ManageSpamMessages;->mMode:I

    if-eqz v0, :cond_0

    .line 1247
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mms/spam/ManageSpamMessages;->setMode(I)V

    .line 1248
    const/4 v0, 0x1

    .line 1255
    :goto_0
    return v0

    .line 1251
    :cond_0
    const/16 v0, 0x14

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages;->mSpamList:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages;->mSpamList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/mms/spam/ManageSpamMessages;->mMode:I

    if-nez v0, :cond_1

    .line 1253
    iget-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages;->mSpamList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1255
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 1
    .parameter
    .parameter "cursor"
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
    .line 218
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages;->mListAdapter:Lcom/android/mms/spam/SpamMessageListAdapter;

    invoke-virtual {v0, p2}, Landroid/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 219
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/spam/ManageSpamMessages;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
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
    .line 223
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages;->mListAdapter:Lcom/android/mms/spam/SpamMessageListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 224
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 457
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 459
    invoke-direct {p0}, Lcom/android/mms/spam/ManageSpamMessages;->init()V

    .line 460
    invoke-direct {p0}, Lcom/android/mms/spam/ManageSpamMessages;->startQuery()V

    .line 461
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    .line 959
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 1044
    :cond_0
    :goto_0
    return v6

    .line 961
    :sswitch_0
    invoke-virtual {p0, v5}, Lcom/android/mms/spam/ManageSpamMessages;->setMode(I)V

    goto :goto_0

    .line 964
    :sswitch_1
    invoke-virtual {p0, v6}, Lcom/android/mms/spam/ManageSpamMessages;->setMode(I)V

    goto :goto_0

    .line 968
    :sswitch_2
    sget-boolean v4, Lcom/android/mms/spam/SpamMessageListAdapter;->SPAM_SELECTION_LIST_V2:Z

    if-eqz v4, :cond_1

    .line 969
    invoke-direct {p0}, Lcom/android/mms/spam/ManageSpamMessages;->reloadSelectedArray()V

    .line 971
    :cond_1
    const/4 v3, 0x0

    .line 972
    .local v3, sizeCheckedMsg:I
    iget-object v4, p0, Lcom/android/mms/spam/ManageSpamMessages;->mListAdapter:Lcom/android/mms/spam/SpamMessageListAdapter;

    invoke-virtual {v4}, Lcom/android/mms/spam/SpamMessageListAdapter;->getArraySize()I

    move-result v4

    if-lez v4, :cond_0

    .line 975
    iget-object v4, p0, Lcom/android/mms/spam/ManageSpamMessages;->mListAdapter:Lcom/android/mms/spam/SpamMessageListAdapter;

    invoke-virtual {v4}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 976
    .local v0, cursor:Landroid/database/Cursor;
    iget-object v4, p0, Lcom/android/mms/spam/ManageSpamMessages;->mListAdapter:Lcom/android/mms/spam/SpamMessageListAdapter;

    invoke-virtual {v4}, Lcom/android/mms/spam/SpamMessageListAdapter;->getArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 978
    .local v2, mArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget v4, p0, Lcom/android/mms/spam/ManageSpamMessages;->mMode:I

    if-ne v4, v6, :cond_3

    .line 979
    new-instance v1, Lcom/android/mms/spam/ManageSpamMessages$10;

    invoke-direct {v1, p0, v2, v0}, Lcom/android/mms/spam/ManageSpamMessages$10;-><init>(Lcom/android/mms/spam/ManageSpamMessages;Ljava/util/ArrayList;Landroid/database/Cursor;)V

    .line 1020
    .local v1, listener:Landroid/content/DialogInterface$OnClickListener;
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v6, :cond_2

    .line 1021
    const v4, 0x7f0a00bb

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {p0, v1, v4, v5}, Lcom/android/mms/spam/ManageSpamMessages;->confirmMultipleDeleteDialog(Landroid/content/DialogInterface$OnClickListener;II)V

    goto :goto_0

    .line 1024
    :cond_2
    const v4, 0x7f0a00ba

    invoke-direct {p0, v1, v4}, Lcom/android/mms/spam/ManageSpamMessages;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;I)V

    goto :goto_0

    .line 1026
    .end local v1           #listener:Landroid/content/DialogInterface$OnClickListener;
    :cond_3
    iget v4, p0, Lcom/android/mms/spam/ManageSpamMessages;->mMode:I

    if-ne v4, v5, :cond_0

    .line 1027
    new-instance v4, Lcom/android/mms/spam/ManageSpamMessages$MultipleRestoreSpamTask;

    invoke-direct {v4, p0}, Lcom/android/mms/spam/ManageSpamMessages$MultipleRestoreSpamTask;-><init>(Lcom/android/mms/spam/ManageSpamMessages;)V

    invoke-virtual {v4, v0, v2}, Lcom/android/mms/spam/ManageSpamMessages$MultipleRestoreSpamTask;->execute(Landroid/database/Cursor;Ljava/util/List;)V

    goto :goto_0

    .line 1033
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v2           #mArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v3           #sizeCheckedMsg:I
    :sswitch_3
    invoke-virtual {p0, v7}, Lcom/android/mms/spam/ManageSpamMessages;->setMode(I)V

    goto :goto_0

    .line 1037
    :sswitch_4
    iget v4, p0, Lcom/android/mms/spam/ManageSpamMessages;->mMode:I

    if-eq v4, v5, :cond_4

    iget v4, p0, Lcom/android/mms/spam/ManageSpamMessages;->mMode:I

    if-ne v4, v6, :cond_5

    .line 1038
    :cond_4
    invoke-virtual {p0, v7}, Lcom/android/mms/spam/ManageSpamMessages;->setMode(I)V

    goto :goto_0

    .line 1040
    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 959
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x102002c -> :sswitch_4
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 753
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 755
    iget-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages;->mListAdapter:Lcom/android/mms/spam/SpamMessageListAdapter;

    if-eqz v0, :cond_0

    .line 756
    iget-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages;->mListAdapter:Lcom/android/mms/spam/SpamMessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/spam/SpamMessageListAdapter;->resetView()V

    .line 758
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const/4 v5, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 902
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 904
    const/4 v0, 0x0

    .line 906
    .local v0, currentCnt:I
    iget-object v1, p0, Lcom/android/mms/spam/ManageSpamMessages;->mListAdapter:Lcom/android/mms/spam/SpamMessageListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/spam/ManageSpamMessages;->mListAdapter:Lcom/android/mms/spam/SpamMessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/spam/SpamMessageListAdapter;->getArrayList()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 907
    sget-boolean v1, Lcom/android/mms/spam/SpamMessageListAdapter;->SPAM_SELECTION_LIST_V2:Z

    if-eqz v1, :cond_3

    .line 908
    iget-object v1, p0, Lcom/android/mms/spam/ManageSpamMessages;->mListAdapter:Lcom/android/mms/spam/SpamMessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/spam/SpamMessageListAdapter;->getCheckedCount()I

    move-result v0

    .line 913
    :cond_0
    :goto_0
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-lez v0, :cond_4

    move v1, v2

    :goto_1
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 915
    iget-object v1, p0, Lcom/android/mms/spam/ManageSpamMessages;->mListAdapter:Lcom/android/mms/spam/SpamMessageListAdapter;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/spam/ManageSpamMessages;->mListAdapter:Lcom/android/mms/spam/SpamMessageListAdapter;

    invoke-virtual {v1}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    iget v1, p0, Lcom/android/mms/spam/ManageSpamMessages;->mState:I

    if-nez v1, :cond_2

    .line 916
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v1, p0, Lcom/android/mms/spam/ManageSpamMessages;->mMode:I

    if-nez v1, :cond_5

    move v1, v2

    :goto_2
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 917
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v1, p0, Lcom/android/mms/spam/ManageSpamMessages;->mMode:I

    if-nez v1, :cond_6

    move v1, v2

    :goto_3
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 918
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v1, p0, Lcom/android/mms/spam/ManageSpamMessages;->mMode:I

    if-eqz v1, :cond_7

    move v1, v2

    :goto_4
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 919
    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget v4, p0, Lcom/android/mms/spam/ManageSpamMessages;->mMode:I

    if-eqz v4, :cond_1

    move v3, v2

    :cond_1
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 922
    :cond_2
    return v2

    .line 910
    :cond_3
    iget-object v1, p0, Lcom/android/mms/spam/ManageSpamMessages;->mListAdapter:Lcom/android/mms/spam/SpamMessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/spam/SpamMessageListAdapter;->getArraySize()I

    move-result v0

    goto :goto_0

    :cond_4
    move v1, v3

    .line 913
    goto :goto_1

    :cond_5
    move v1, v3

    .line 916
    goto :goto_2

    :cond_6
    move v1, v3

    .line 917
    goto :goto_3

    :cond_7
    move v1, v3

    .line 918
    goto :goto_4
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 747
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 749
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 422
    const-string v0, "Mms/ManageSpamMessages"

    const-string v1, "onStart()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 428
    invoke-direct {p0}, Lcom/android/mms/spam/ManageSpamMessages;->addRecipientsListener()V

    .line 430
    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    .line 434
    invoke-direct {p0}, Lcom/android/mms/spam/ManageSpamMessages;->startQuery()V

    .line 435
    const-string v0, "Mms/ManageSpamMessages"

    const-string v1, "onStart()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 414
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 416
    invoke-direct {p0}, Lcom/android/mms/spam/ManageSpamMessages;->removeRecipientsListener()V

    .line 417
    return-void
.end method

.method public onUpdate(Lcom/android/mms/data/Contact;)V
    .locals 1
    .parameter "updated"

    .prologue
    .line 440
    new-instance v0, Lcom/android/mms/spam/ManageSpamMessages$5;

    invoke-direct {v0, p0}, Lcom/android/mms/spam/ManageSpamMessages$5;-><init>(Lcom/android/mms/spam/ManageSpamMessages;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 445
    return-void
.end method

.method public refreshSelectionList()V
    .locals 2

    .prologue
    .line 581
    iget-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages;->mListAdapter:Lcom/android/mms/spam/SpamMessageListAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/spam/ManageSpamMessages;->checkStatusSelectAllforV2(Landroid/database/Cursor;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages;->allCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 586
    :goto_0
    return-void

    .line 584
    :cond_0
    iget-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages;->allCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto :goto_0
.end method

.method public setMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 1115
    iput p1, p0, Lcom/android/mms/spam/ManageSpamMessages;->mMode:I

    .line 1117
    iget v0, p0, Lcom/android/mms/spam/ManageSpamMessages;->mMode:I

    if-nez v0, :cond_0

    .line 1119
    iget-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages;->seletAllLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1121
    sget-boolean v0, Lcom/android/mms/spam/SpamMessageListAdapter;->SPAM_SELECTION_LIST_V2:Z

    if-eqz v0, :cond_0

    .line 1122
    iget-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages;->mListAdapter:Lcom/android/mms/spam/SpamMessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/spam/SpamMessageListAdapter;->clearCheckedList()V

    .line 1125
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/spam/ManageSpamMessages;->init()V

    .line 1126
    invoke-direct {p0}, Lcom/android/mms/spam/ManageSpamMessages;->startQuery()V

    .line 1127
    return-void
.end method

.method public startSlideshow(ZLandroid/view/View;)V
    .locals 13
    .parameter "quickPreview"
    .parameter "view"

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v9, -0x1

    const/4 v8, 0x0

    const/4 v6, 0x1

    .line 343
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 346
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 347
    .local v11, mTag:[Ljava/lang/String;
    if-eqz v11, :cond_0

    aget-object v0, v11, v8

    if-eqz v0, :cond_0

    aget-object v0, v11, v6

    if-eqz v0, :cond_0

    .line 349
    const/4 v10, 0x0

    .line 350
    .local v10, intent:Landroid/content/Intent;
    const-string v0, "mms"

    aget-object v1, v11, v8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 352
    new-instance v10, Landroid/content/Intent;

    .end local v10           #intent:Landroid/content/Intent;
    const-class v0, Lcom/android/mms/ui/SmsViewerActivity;

    invoke-direct {v10, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 353
    .restart local v10       #intent:Landroid/content/Intent;
    const-string v0, "msgId"

    aget-object v1, v11, v6

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v10, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 354
    const-string v0, "thread_id"

    invoke-virtual {v10, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 355
    const-string v0, "isSpam"

    invoke-virtual {v10, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 406
    :goto_1
    invoke-virtual {p0, v10}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 361
    :cond_2
    aget-object v0, v11, v2

    if-eqz v0, :cond_4

    aget-object v0, v11, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x82

    if-ne v0, v1, :cond_4

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v11, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND transport_type = \"mms\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 364
    .local v3, where:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/spam/SpamFilter;->SPAM_MESSAGES_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/spam/ManageSpamMessages;->MMSSMS_LIST_PARTIAL_PROJECT:[Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 367
    .local v5, cursor:Landroid/database/Cursor;
    if-eqz v5, :cond_0

    .line 369
    :try_start_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v6, :cond_3

    .line 370
    iget-object v0, p0, Lcom/android/mms/spam/ManageSpamMessages;->mListAdapter:Lcom/android/mms/spam/SpamMessageListAdapter;

    const/4 v1, 0x0

    aget-object v1, v11, v1

    const/4 v2, 0x1

    aget-object v2, v11, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v0, v1, v8, v9, v5}, Lcom/android/mms/spam/SpamMessageListAdapter;->getCachedMessageItem(Ljava/lang/String;JLandroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v7

    .line 372
    .local v7, msgItem:Lcom/android/mms/ui/MessageItem;
    const-string v12, ""

    .line 374
    .local v12, messageDetails:Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 375
    invoke-static {}, Lcom/android/mms/MmsApp;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v7}, Lcom/android/mms/ui/MessageItem;->getMessageSize()I

    move-result v6

    const/4 v8, 0x1

    invoke-virtual {v7}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v9

    invoke-static/range {v4 .. v9}, Lcom/android/mms/ui/MessageUtils;->getMessageDetails(Landroid/content/Context;Landroid/database/Cursor;ILcom/android/mms/ui/MessageItem;ZZ)Ljava/lang/String;

    move-result-object v12

    .line 378
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a00a4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    .end local v7           #msgItem:Lcom/android/mms/ui/MessageItem;
    .end local v12           #messageDetails:Ljava/lang/String;
    :cond_3
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    throw v0

    .line 390
    .end local v3           #where:Ljava/lang/String;
    .end local v5           #cursor:Landroid/database/Cursor;
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSinglePageSlideView()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 391
    new-instance v10, Landroid/content/Intent;

    .end local v10           #intent:Landroid/content/Intent;
    const-class v0, Lcom/android/mms/ui/MmsSinglePageActivity;

    invoke-direct {v10, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 392
    .restart local v10       #intent:Landroid/content/Intent;
    const-string v0, "msgId"

    aget-object v1, v11, v6

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v10, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 393
    const-string v0, "threadId"

    invoke-virtual {v10, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 394
    const-string v0, "isSpam"

    invoke-virtual {v10, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_1

    .line 396
    :cond_5
    new-instance v10, Landroid/content/Intent;

    .end local v10           #intent:Landroid/content/Intent;
    const-class v0, Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct {v10, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 397
    .restart local v10       #intent:Landroid/content/Intent;
    const-string v0, "msgId"

    aget-object v1, v11, v6

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v10, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 398
    const-string v0, "threadId"

    invoke-virtual {v10, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 399
    const-string v0, "previewMode"

    invoke-virtual {v10, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 400
    const-string v0, "mode"

    iget v1, p0, Lcom/android/mms/spam/ManageSpamMessages;->mMode:I

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 401
    const-string v0, "quickPlay"

    invoke-virtual {v10, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 402
    const-string v0, "isSpam"

    invoke-virtual {v10, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_1
.end method
