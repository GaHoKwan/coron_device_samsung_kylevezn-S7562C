.class public Lcom/samsung/mms/ui/ConversationListRestore;
.super Landroid/app/ListActivity;
.source "ConversationListRestore.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/mms/ui/ConversationListRestore$ReadFilesTask;,
        Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;,
        Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter;
    }
.end annotation


# static fields
.field public static final MENU_RESTORE_CANCEL:I = 0x2

.field public static final MENU_RESTORE_OK:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Mms/ConversationListRestore"


# instance fields
.field private addressesSelected:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private array:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/mms/data/SavedSmsMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mAllItem:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mConvAdapter:Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter;

.field private mConvList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;",
            ">;"
        }
    .end annotation
.end field

.field public mDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mEmptyView:Landroid/view/View;

.field private mEmptyViewLandscape:Landroid/view/View;

.field private mEmptyViewPortrait:Landroid/view/View;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsLandscape:Z

.field private mListView:Landroid/widget/ListView;

.field private mMenuCancel:Landroid/view/MenuItem;

.field private mMenuDone:Landroid/view/MenuItem;

.field private mReadFileTask:Lcom/samsung/mms/ui/ConversationListRestore$ReadFilesTask;

.field private mSaveRestoreOperation:Lcom/samsung/mms/util/SaveRestoreOperation;

.field private mSelectAll:Landroid/widget/LinearLayout;

.field private mSelectAllCheckBox:Landroid/widget/CheckBox;

.field private mSelectAllText:Landroid/widget/TextView;

.field private onSelectAllClick:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 69
    iput-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mMenuCancel:Landroid/view/MenuItem;

    .line 70
    iput-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mMenuDone:Landroid/view/MenuItem;

    .line 78
    iput-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mReadFileTask:Lcom/samsung/mms/ui/ConversationListRestore$ReadFilesTask;

    .line 221
    new-instance v0, Lcom/samsung/mms/ui/ConversationListRestore$1;

    invoke-direct {v0, p0}, Lcom/samsung/mms/ui/ConversationListRestore$1;-><init>(Lcom/samsung/mms/ui/ConversationListRestore;)V

    iput-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 240
    new-instance v0, Lcom/samsung/mms/ui/ConversationListRestore$2;

    invoke-direct {v0, p0}, Lcom/samsung/mms/ui/ConversationListRestore$2;-><init>(Lcom/samsung/mms/ui/ConversationListRestore;)V

    iput-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->onSelectAllClick:Landroid/view/View$OnClickListener;

    .line 453
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/mms/ui/ConversationListRestore;)[J
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/samsung/mms/ui/ConversationListRestore;->getIds()[J

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/mms/ui/ConversationListRestore;)Lcom/samsung/mms/util/SaveRestoreOperation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mSaveRestoreOperation:Lcom/samsung/mms/util/SaveRestoreOperation;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/mms/ui/ConversationListRestore;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/mms/ui/ConversationListRestore;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->array:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/samsung/mms/ui/ConversationListRestore;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->array:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/mms/ui/ConversationListRestore;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/mms/ui/ConversationListRestore;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/samsung/mms/ui/ConversationListRestore;->setAllChecked(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/mms/ui/ConversationListRestore;)Landroid/view/MenuItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mMenuDone:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/mms/ui/ConversationListRestore;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/mms/ui/ConversationListRestore;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mConvList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/mms/ui/ConversationListRestore;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->addressesSelected:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/mms/ui/ConversationListRestore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/samsung/mms/ui/ConversationListRestore;->updateCheckedMsgCount()V

    return-void
.end method

.method private createConversationList(Ljava/util/ArrayList;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/mms/data/SavedSmsMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 490
    .local p1, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/mms/data/SavedSmsMessage;>;"
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mConvList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 491
    const-string v2, ""

    .line 492
    .local v2, address:Ljava/lang/String;
    const-string v4, ""

    .line 493
    .local v4, text:Ljava/lang/String;
    const/4 v5, 0x0

    .line 494
    .local v5, readCount:I
    const/4 v6, 0x0

    .line 496
    .local v6, totalCount:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_3

    .line 497
    if-nez v7, :cond_1

    .line 498
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/mms/data/SavedSmsMessage;

    invoke-virtual {v0}, Lcom/samsung/mms/data/SavedSmsMessage;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 499
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/mms/data/SavedSmsMessage;

    invoke-virtual {v0}, Lcom/samsung/mms/data/SavedSmsMessage;->getBody()Ljava/lang/String;

    move-result-object v4

    .line 500
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/mms/data/SavedSmsMessage;

    invoke-virtual {v0}, Lcom/samsung/mms/data/SavedSmsMessage;->getRead()I

    move-result v5

    .line 501
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/mms/data/SavedSmsMessage;

    invoke-virtual {v0}, Lcom/samsung/mms/data/SavedSmsMessage;->getTotalCount()I

    move-result v6

    .line 503
    iget-object v9, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mConvList:Ljava/util/ArrayList;

    new-instance v0, Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "file_date"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;-><init>(Lcom/samsung/mms/ui/ConversationListRestore;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 505
    :cond_1
    const/4 v8, 0x0

    .local v8, j:I
    :goto_1
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mConvList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_0

    .line 506
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/mms/data/SavedSmsMessage;

    invoke-virtual {v0}, Lcom/samsung/mms/data/SavedSmsMessage;->getAddress()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mConvList:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;

    invoke-virtual {v0}, Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mConvList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v8, v0, :cond_2

    .line 508
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/mms/data/SavedSmsMessage;

    invoke-virtual {v0}, Lcom/samsung/mms/data/SavedSmsMessage;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 509
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/mms/data/SavedSmsMessage;

    invoke-virtual {v0}, Lcom/samsung/mms/data/SavedSmsMessage;->getBody()Ljava/lang/String;

    move-result-object v4

    .line 510
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/mms/data/SavedSmsMessage;

    invoke-virtual {v0}, Lcom/samsung/mms/data/SavedSmsMessage;->getRead()I

    move-result v5

    .line 511
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/mms/data/SavedSmsMessage;

    invoke-virtual {v0}, Lcom/samsung/mms/data/SavedSmsMessage;->getTotalCount()I

    move-result v6

    .line 513
    iget-object v9, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mConvList:Ljava/util/ArrayList;

    new-instance v0, Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "file_date"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;-><init>(Lcom/samsung/mms/ui/ConversationListRestore;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 505
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 521
    .end local v8           #j:I
    :cond_3
    return-void
.end method

.method private getIds()[J
    .locals 5

    .prologue
    .line 435
    iget-object v2, p0, Lcom/samsung/mms/ui/ConversationListRestore;->addressesSelected:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [J

    .line 437
    .local v1, threadIds:[J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 438
    iget-object v2, p0, Lcom/samsung/mms/ui/ConversationListRestore;->addressesSelected:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p0, v2}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 439
    const-string v3, "Mms/ConversationListRestore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "address: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/samsung/mms/ui/ConversationListRestore;->addressesSelected:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 441
    :cond_0
    return-object v1
.end method

.method private initListView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 351
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    .line 352
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mConvAdapter:Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 353
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 354
    return-void
.end method

.method private setAllChecked(Z)V
    .locals 4
    .parameter "set"

    .prologue
    .line 379
    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mConvList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 380
    .local v1, limit:I
    :goto_0
    if-nez v1, :cond_2

    .line 381
    iget-object v2, p0, Lcom/samsung/mms/ui/ConversationListRestore;->addressesSelected:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 387
    :cond_0
    iget-object v2, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mConvAdapter:Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 388
    return-void

    .line 379
    .end local v1           #limit:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 383
    .restart local v1       #limit:I
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 384
    iget-object v3, p0, Lcom/samsung/mms/ui/ConversationListRestore;->addressesSelected:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mConvList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;

    invoke-virtual {v2}, Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private updateCheckedMsgCount()V
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mMenuDone:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->addressesSelected:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->addressesSelected:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 264
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mMenuDone:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mMenuDone:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method


# virtual methods
.method public getEmptyScreenVisible()I
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    return v0
.end method

.method public newArrayFromSelection(Z)Ljava/util/ArrayList;
    .locals 5
    .parameter "getSelected"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/mms/data/SavedSmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 357
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 358
    .local v2, newArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/mms/data/SavedSmsMessage;>;"
    iget-object v3, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    if-nez v3, :cond_3

    .line 359
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/samsung/mms/ui/ConversationListRestore;->array:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 360
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    iget-object v3, p0, Lcom/samsung/mms/ui/ConversationListRestore;->addressesSelected:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 361
    if-eqz p1, :cond_1

    .line 362
    iget-object v3, p0, Lcom/samsung/mms/ui/ConversationListRestore;->addressesSelected:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/mms/ui/ConversationListRestore;->array:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/mms/data/SavedSmsMessage;

    invoke-virtual {v4}, Lcom/samsung/mms/data/SavedSmsMessage;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 363
    iget-object v3, p0, Lcom/samsung/mms/ui/ConversationListRestore;->array:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 366
    :cond_1
    iget-object v3, p0, Lcom/samsung/mms/ui/ConversationListRestore;->addressesSelected:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/mms/ui/ConversationListRestore;->array:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/mms/data/SavedSmsMessage;

    invoke-virtual {v4}, Lcom/samsung/mms/data/SavedSmsMessage;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 367
    iget-object v3, p0, Lcom/samsung/mms/ui/ConversationListRestore;->array:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 359
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 372
    .end local v0           #i:I
    .end local v1           #j:I
    :cond_3
    if-eqz p1, :cond_4

    .line 373
    iget-object v2, p0, Lcom/samsung/mms/ui/ConversationListRestore;->array:Ljava/util/ArrayList;

    .line 375
    :cond_4
    return-object v2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "newConfig"

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x0

    .line 124
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 125
    const-string v0, "Mms/ConversationListRestore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configurationChanged(),newConfig="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mIsLandscape:Z

    .line 127
    invoke-virtual {p0}, Lcom/samsung/mms/ui/ConversationListRestore;->getEmptyScreenVisible()I

    move-result v0

    if-nez v0, :cond_0

    .line 128
    iget-boolean v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mIsLandscape:Z

    if-eqz v0, :cond_2

    .line 129
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mEmptyViewPortrait:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mEmptyViewLandscape:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 137
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 126
    goto :goto_0

    .line 133
    :cond_2
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mEmptyViewPortrait:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mEmptyViewLandscape:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 86
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    const v1, 0x7f030027

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 88
    iput-object p0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mContext:Landroid/content/Context;

    .line 89
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 90
    .local v0, actionbar:Landroid/app/ActionBar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 92
    new-instance v1, Lcom/samsung/mms/util/SaveRestoreOperation;

    iget-object v2, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {v1, p0, v2}, Lcom/samsung/mms/util/SaveRestoreOperation;-><init>(Landroid/app/Activity;Landroid/content/DialogInterface$OnClickListener;)V

    iput-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mSaveRestoreOperation:Lcom/samsung/mms/util/SaveRestoreOperation;

    .line 93
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mInflater:Landroid/view/LayoutInflater;

    .line 94
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mListView:Landroid/widget/ListView;

    .line 95
    iget-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 96
    const v1, 0x7f0e00df

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mSelectAll:Landroid/widget/LinearLayout;

    .line 97
    iget-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mSelectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 98
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->addressesSelected:Ljava/util/ArrayList;

    .line 100
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "file_path"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/data/Conversation;->readXmlFile(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->array:Ljava/util/ArrayList;

    .line 101
    iget-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->array:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->array:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 102
    :cond_0
    const v1, 0x7f0a04ef

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 103
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 117
    :goto_0
    return-void

    .line 106
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mConvList:Ljava/util/ArrayList;

    .line 107
    iget-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->array:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/samsung/mms/ui/ConversationListRestore;->createConversationList(Ljava/util/ArrayList;)V

    .line 108
    new-instance v1, Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter;

    const v2, 0x7f030024

    iget-object v3, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mConvList:Ljava/util/ArrayList;

    invoke-direct {v1, p0, p0, v2, v3}, Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter;-><init>(Lcom/samsung/mms/ui/ConversationListRestore;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mConvAdapter:Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter;

    .line 109
    invoke-direct {p0}, Lcom/samsung/mms/ui/ConversationListRestore;->initListView()V

    .line 110
    iget-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mSelectAll:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/mms/ui/ConversationListRestore;->onSelectAllClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    const v1, 0x7f0e00e0

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    .line 112
    const v1, 0x7f0e01e7

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mSelectAllText:Landroid/widget/TextView;

    .line 114
    const v1, 0x7f0e003c

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mEmptyView:Landroid/view/View;

    .line 115
    const v1, 0x7f0e003d

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mEmptyViewPortrait:Landroid/view/View;

    .line 116
    const v1, 0x7f0e0043

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mEmptyViewLandscape:Landroid/view/View;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 141
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 142
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mConvAdapter:Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mConvAdapter:Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 144
    iput-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mConvAdapter:Lcom/samsung/mms/ui/ConversationListRestore$ConversationAdapter;

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mConvList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mConvList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 148
    iput-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mConvList:Ljava/util/ArrayList;

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->addressesSelected:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 151
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->addressesSelected:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 152
    iput-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->addressesSelected:Ljava/util/ArrayList;

    .line 154
    :cond_2
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->array:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 155
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->array:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 156
    iput-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->array:Ljava/util/ArrayList;

    .line 158
    :cond_3
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mSaveRestoreOperation:Lcom/samsung/mms/util/SaveRestoreOperation;

    if-eqz v0, :cond_4

    .line 159
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mSaveRestoreOperation:Lcom/samsung/mms/util/SaveRestoreOperation;

    invoke-virtual {v0}, Lcom/samsung/mms/util/SaveRestoreOperation;->OnDestroy()V

    .line 160
    iput-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mSaveRestoreOperation:Lcom/samsung/mms/util/SaveRestoreOperation;

    .line 163
    :cond_4
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mReadFileTask:Lcom/samsung/mms/ui/ConversationListRestore$ReadFilesTask;

    if-eqz v0, :cond_5

    .line 164
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mReadFileTask:Lcom/samsung/mms/ui/ConversationListRestore$ReadFilesTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 166
    :cond_5
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 171
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/mms/ui/RestorePreviewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 172
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "file_path"

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "file_path"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    const-string v2, "address"

    iget-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mConvList:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;

    invoke-virtual {v1}, Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    const-string v2, "Mms/ConversationListRestore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Address of conv selected: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mConvList:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;

    invoke-virtual {v1}, Lcom/samsung/mms/ui/ConversationListRestore$ConversationSms;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 176
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 202
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 203
    .local v0, itemId:I
    const-string v2, "Mms/ConversationListRestore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onOptionsItemSelected(),item="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    sparse-switch v0, :sswitch_data_0

    .line 218
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 207
    :sswitch_0
    invoke-virtual {p0}, Lcom/samsung/mms/ui/ConversationListRestore;->startRestoreOperation()V

    goto :goto_0

    .line 212
    :sswitch_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 205
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x102002c -> :sswitch_1
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 179
    const-string v0, "Mms/ConversationListRestore"

    const-string v1, "onPrepareOptionsMenu()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 182
    const/4 v0, 0x2

    const v1, 0x7f0a01e9

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mMenuCancel:Landroid/view/MenuItem;

    .line 183
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 185
    const v0, 0x7f0a0365

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mMenuDone:Landroid/view/MenuItem;

    .line 186
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 188
    iget-boolean v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mIsLandscape:Z

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mMenuCancel:Landroid/view/MenuItem;

    const v1, 0x7f020285

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 190
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mMenuDone:Landroid/view/MenuItem;

    const v1, 0x7f020286

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->addressesSelected:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->addressesSelected:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 198
    :goto_0
    return v3

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public softkeyRightRun(Landroid/view/View;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 486
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 487
    return-void
.end method

.method public startRestoreOperation()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 445
    iput-object v1, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mReadFileTask:Lcom/samsung/mms/ui/ConversationListRestore$ReadFilesTask;

    .line 446
    new-instance v0, Lcom/samsung/mms/ui/ConversationListRestore$ReadFilesTask;

    invoke-direct {v0, p0, v1}, Lcom/samsung/mms/ui/ConversationListRestore$ReadFilesTask;-><init>(Lcom/samsung/mms/ui/ConversationListRestore;Lcom/samsung/mms/ui/ConversationListRestore$1;)V

    iput-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mReadFileTask:Lcom/samsung/mms/ui/ConversationListRestore$ReadFilesTask;

    .line 447
    iget-object v0, p0, Lcom/samsung/mms/ui/ConversationListRestore;->mReadFileTask:Lcom/samsung/mms/ui/ConversationListRestore$ReadFilesTask;

    new-array v1, v3, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 451
    return-void
.end method
