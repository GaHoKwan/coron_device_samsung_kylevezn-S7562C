.class public Lcom/android/mms/spam/SetupSpamNumberWriteForm;
.super Landroid/app/Activity;
.source "SetupSpamNumberWriteForm.java"


# static fields
.field private static final CANCEL:I = 0x2

.field private static final CONTACT_IMPORT_INTENT:Landroid/content/Intent; = null

.field private static final MAX_NUMBER_LENGTH:I = 0x64

.field private static final NUM_PROJECTION:[Ljava/lang/String; = null

.field public static final PICK_CONTACT_NUMBER:I = 0x2

.field public static final PICK_LOGS_NUMBER:I = 0x1

.field private static final SAVE:I = 0x1

.field private static final STATE_VALUE_MATCH_CRITERIA:Ljava/lang/String; = "match_criteria"

.field static mLeftSoftkey:Landroid/widget/Button;

.field static mSoftkeyView:Landroid/widget/LinearLayout;

.field private static sIsPhone:Z


# instance fields
.field private IMEHandler:Landroid/os/Handler;

.field final TAG:Ljava/lang/String;

.field createEdit:Landroid/widget/EditText;

.field createItem:Landroid/widget/LinearLayout;

.field criteria:Landroid/widget/LinearLayout;

.field criteriaSub:Landroid/widget/TextView;

.field factory:Landroid/view/LayoutInflater;

.field private handler:Landroid/os/Handler;

.field private header:Landroid/view/View;

.field private mActionBar:Landroid/app/ActionBar;

.field private mActionbarAddListCancelButton:Landroid/widget/TextView;

.field private mActionbarAddListDoneButton:Landroid/widget/TextView;

.field private mActionbarAddListLayout:Landroid/widget/LinearLayout;

.field private mIsLandscape:Z

.field private mMatchCriteria:I

.field private mMenuCancel:Landroid/view/MenuItem;

.field private mMenuSave:Landroid/view/MenuItem;

.field mToast:Landroid/widget/Toast;

.field private match_MODE:I

.field private mtelephonyManager:Landroid/telephony/TelephonyManager;

.field private previous_NUM:Ljava/lang/String;

.field private previous_match_MODE:I

.field searchButton:Landroid/widget/ImageButton;

.field selectAll:Landroid/widget/LinearLayout;

.field selectAllCheck:Landroid/widget/CheckBox;

.field private select_NUM:Ljava/lang/String;

.field private update_ID:I

.field private update_MODE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 69
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    .line 70
    sget-object v0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    const-string v1, "vnd.android.cursor.dir/phone_v2"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "display_name"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "data1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->NUM_PROJECTION:[Ljava/lang/String;

    .line 107
    sput-boolean v3, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->sIsPhone:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 97
    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->IMEHandler:Landroid/os/Handler;

    .line 99
    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mActionbarAddListLayout:Landroid/widget/LinearLayout;

    .line 100
    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mActionbarAddListDoneButton:Landroid/widget/TextView;

    .line 101
    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mActionbarAddListCancelButton:Landroid/widget/TextView;

    .line 103
    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mMenuSave:Landroid/view/MenuItem;

    .line 104
    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mMenuCancel:Landroid/view/MenuItem;

    .line 108
    const-string v0, "SetupSpamNumberWriteForm"

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->TAG:Ljava/lang/String;

    .line 508
    new-instance v0, Lcom/android/mms/spam/SetupSpamNumberWriteForm$10;

    invoke-direct {v0, p0}, Lcom/android/mms/spam/SetupSpamNumberWriteForm$10;-><init>(Lcom/android/mms/spam/SetupSpamNumberWriteForm;)V

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->handler:Landroid/os/Handler;

    return-void
.end method

.method private LayoutInit()V
    .locals 3

    .prologue
    .line 219
    const v1, 0x7f0e00fe

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->createEdit:Landroid/widget/EditText;

    .line 221
    const v1, 0x7f0e00ff

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->searchButton:Landroid/widget/ImageButton;

    .line 222
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mtelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    sput-boolean v1, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->sIsPhone:Z

    .line 224
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->searchButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/android/mms/spam/SetupSpamNumberWriteForm$3;

    invoke-direct {v2, p0}, Lcom/android/mms/spam/SetupSpamNumberWriteForm$3;-><init>(Lcom/android/mms/spam/SetupSpamNumberWriteForm;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->factory:Landroid/view/LayoutInflater;

    .line 245
    const v1, 0x7f0e0101

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->criteria:Landroid/widget/LinearLayout;

    .line 246
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->criteria:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/mms/spam/SetupSpamNumberWriteForm$4;

    invoke-direct {v2, p0}, Lcom/android/mms/spam/SetupSpamNumberWriteForm$4;-><init>(Lcom/android/mms/spam/SetupSpamNumberWriteForm;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070029

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, matchEntry:[Ljava/lang/String;
    const v1, 0x7f0e0103

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->criteriaSub:Landroid/widget/TextView;

    .line 254
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->criteriaSub:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mMatchCriteria:I

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 60
    sget-boolean v0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->sIsPhone:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/mms/spam/SetupSpamNumberWriteForm;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->alertdialogSearch()V

    return-void
.end method

.method static synthetic access$200()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/spam/SetupSpamNumberWriteForm;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->alertdialogMatchCriteria()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/spam/SetupSpamNumberWriteForm;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mMatchCriteria:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/mms/spam/SetupSpamNumberWriteForm;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput p1, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mMatchCriteria:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/mms/spam/SetupSpamNumberWriteForm;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->IMEHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private addSpamNumber(Ljava/lang/String;I)I
    .locals 8
    .parameter "string"
    .parameter "matched"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 699
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 700
    .local v7, values:Landroid/content/ContentValues;
    const-string v4, "filter_type"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 701
    const-string v4, "filter"

    invoke-virtual {v7, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    const-string v4, "enable"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 703
    const-string v4, "criteria"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 708
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/mms/spam/SpamFilter;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    .line 711
    .local v6, uri:Landroid/net/Uri;
    if-nez v6, :cond_0

    .line 721
    :goto_0
    return v2

    .line 714
    :cond_0
    invoke-virtual {v6}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 715
    .local v1, id:I
    new-instance v0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;-><init>(IIZLjava/lang/String;I)V

    .line 720
    .local v0, spamdata:Lcom/android/mms/spam/SpamFilter$SpamFilterData;
    invoke-static {v1, v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->insert(ILcom/android/mms/spam/SpamFilter$SpamFilterData;)V

    move v2, v1

    .line 721
    goto :goto_0
.end method

.method private alertdialogMatchCriteria()V
    .locals 5

    .prologue
    .line 362
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 363
    .local v0, ad:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0a0394

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 364
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 365
    const v2, 0x7f0a01e9

    new-instance v3, Lcom/android/mms/spam/SetupSpamNumberWriteForm$5;

    invoke-direct {v3, p0}, Lcom/android/mms/spam/SetupSpamNumberWriteForm$5;-><init>(Lcom/android/mms/spam/SetupSpamNumberWriteForm;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 371
    const v2, 0x7f070029

    iget v3, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mMatchCriteria:I

    new-instance v4, Lcom/android/mms/spam/SetupSpamNumberWriteForm$6;

    invoke-direct {v4, p0}, Lcom/android/mms/spam/SetupSpamNumberWriteForm$6;-><init>(Lcom/android/mms/spam/SetupSpamNumberWriteForm;)V

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 382
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 383
    .local v1, createDialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 384
    return-void
.end method

.method private alertdialogSearch()V
    .locals 5

    .prologue
    .line 388
    invoke-static {p0}, Lcom/android/mms/ui/SipHandler;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->createEdit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 390
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 391
    .local v0, SearchListDialog:Landroid/app/AlertDialog$Builder;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 392
    const v2, 0x7f0a01cf

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 397
    :goto_0
    const v2, 0x7f07002b

    new-instance v3, Lcom/android/mms/spam/SetupSpamNumberWriteForm$7;

    invoke-direct {v3, p0}, Lcom/android/mms/spam/SetupSpamNumberWriteForm$7;-><init>(Lcom/android/mms/spam/SetupSpamNumberWriteForm;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 420
    new-instance v2, Lcom/android/mms/spam/SetupSpamNumberWriteForm$8;

    invoke-direct {v2, p0}, Lcom/android/mms/spam/SetupSpamNumberWriteForm$8;-><init>(Lcom/android/mms/spam/SetupSpamNumberWriteForm;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 440
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 441
    .local v1, searchListDlg:Landroid/app/AlertDialog;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 442
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 444
    return-void

    .line 394
    .end local v1           #searchListDlg:Landroid/app/AlertDialog;
    :cond_0
    const v2, 0x104000c

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method private checkAlreadyInUse(Ljava/lang/String;I)Z
    .locals 10
    .parameter "phoneNumber"
    .parameter "matchCriteria"

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x0

    .line 608
    const/4 v8, 0x0

    .line 609
    .local v8, retValue:Z
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v9

    .line 646
    :goto_0
    return v0

    .line 612
    :cond_0
    const/4 v6, 0x0

    .line 613
    .local v6, cur:Landroid/database/Cursor;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "filter_type =0 AND filter =\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "criteria"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " =\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 617
    .local v3, where:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/spam/SpamFilter;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 621
    if-nez v6, :cond_1

    .line 622
    const-string v0, "SetupSpamNumberWriteForm"

    const-string v1, "checkAlreadyInUse : false, cursor is null"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v9

    .line 623
    goto :goto_0

    .line 625
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 626
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_4

    .line 627
    iget-boolean v0, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->update_MODE:Z

    if-nez v0, :cond_2

    .line 628
    const-string v0, "SetupSpamNumberWriteForm"

    const-string v1, "checkAlreadyInUse : true, insert mode, number is duplicated"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    const/4 v8, 0x1

    .line 643
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 644
    const/4 v6, 0x0

    move v0, v8

    .line 646
    goto :goto_0

    .line 631
    :cond_2
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 632
    .local v7, duplicateId:I
    iget v0, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->update_ID:I

    if-ne v0, v7, :cond_3

    .line 633
    const/4 v8, 0x0

    goto :goto_1

    .line 635
    :cond_3
    const-string v0, "SetupSpamNumberWriteForm"

    const-string v1, "checkAlreadyInUse : true, update mode, number is duplicated"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    const/4 v8, 0x1

    goto :goto_1

    .line 640
    .end local v7           #duplicateId:I
    :cond_4
    const/4 v8, 0x0

    goto :goto_1
.end method

.method private displayToast(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 673
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 674
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 675
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 677
    :cond_0
    return-void
.end method

.method private getSpamNumber()Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 665
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/spam/SpamFilter;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "filter_type =0"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private isAvaliableNumber(Ljava/lang/String;)Z
    .locals 4
    .parameter "str"

    .prologue
    const/4 v2, 0x0

    .line 651
    if-nez p1, :cond_1

    .line 661
    :cond_0
    :goto_0
    return v2

    .line 655
    :cond_1
    const/4 v1, 0x0

    .local v1, index:I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 656
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 657
    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 655
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 661
    .end local v0           #c:C
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private showSip()V
    .locals 4

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->createEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->IMEHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/spam/SetupSpamNumberWriteForm$2;

    invoke-direct {v1, p0}, Lcom/android/mms/spam/SetupSpamNumberWriteForm$2;-><init>(Lcom/android/mms/spam/SetupSpamNumberWriteForm;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 198
    :cond_0
    return-void
.end method

.method private updateActionBar()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 260
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mActionbarAddListLayout:Landroid/widget/LinearLayout;

    if-nez v3, :cond_1

    .line 261
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030004

    invoke-virtual {v3, v4, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mActionbarAddListLayout:Landroid/widget/LinearLayout;

    .line 262
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mActionbarAddListLayout:Landroid/widget/LinearLayout;

    const v4, 0x7f0e000f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mActionbarAddListDoneButton:Landroid/widget/TextView;

    .line 263
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mActionbarAddListLayout:Landroid/widget/LinearLayout;

    const v4, 0x7f0e000d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mActionbarAddListCancelButton:Landroid/widget/TextView;

    .line 264
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mActionbarAddListLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_0

    .line 265
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mActionbarAddListLayout:Landroid/widget/LinearLayout;

    const v4, 0x7f0e000c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 267
    .local v2, title:Landroid/widget/TextView;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 268
    const v3, 0x7f0a03a0

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    .end local v2           #title:Landroid/widget/TextView;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mActionbarAddListLayout:Landroid/widget/LinearLayout;

    const v4, 0x7f0e000e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 289
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 290
    .local v1, doneText:Ljava/lang/StringBuffer;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 300
    .local v0, cancelText:Ljava/lang/StringBuffer;
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mActionbarAddListDoneButton:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    .line 301
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mActionbarAddListDoneButton:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 304
    :cond_2
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mActionbarAddListCancelButton:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    .line 305
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mActionbarAddListCancelButton:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 308
    :cond_3
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mMenuSave:Landroid/view/MenuItem;

    if-eqz v3, :cond_4

    .line 309
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mMenuSave:Landroid/view/MenuItem;

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 310
    iget-boolean v3, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mIsLandscape:Z

    if-eqz v3, :cond_7

    .line 311
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mMenuSave:Landroid/view/MenuItem;

    const v4, 0x7f020286

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 316
    :cond_4
    :goto_1
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mMenuCancel:Landroid/view/MenuItem;

    if-eqz v3, :cond_5

    .line 317
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 318
    iget-boolean v3, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mIsLandscape:Z

    if-eqz v3, :cond_8

    .line 319
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mMenuCancel:Landroid/view/MenuItem;

    const v4, 0x7f020285

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 324
    :cond_5
    :goto_2
    return-void

    .line 270
    .end local v0           #cancelText:Ljava/lang/StringBuffer;
    .end local v1           #doneText:Ljava/lang/StringBuffer;
    .restart local v2       #title:Landroid/widget/TextView;
    :cond_6
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 313
    .end local v2           #title:Landroid/widget/TextView;
    .restart local v0       #cancelText:Ljava/lang/StringBuffer;
    .restart local v1       #doneText:Ljava/lang/StringBuffer;
    :cond_7
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mMenuSave:Landroid/view/MenuItem;

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 321
    :cond_8
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method private updateSpamNumber(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;I)V
    .locals 6
    .parameter "string"
    .parameter "checked"
    .parameter "matched"
    .parameter "rowId"

    .prologue
    const/4 v5, 0x0

    .line 680
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 681
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "filter"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    const-string v3, "enable"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 683
    const-string v3, "criteria"

    invoke-virtual {v2, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 687
    sget-object v3, Lcom/android/mms/spam/SpamFilter;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 688
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 692
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, 0x0

    .line 693
    .local v0, enable:Z
    :goto_0
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {p4, p1, v0, v3}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->update(ILjava/lang/String;ZI)V

    .line 694
    return-void

    .line 692
    .end local v0           #enable:Z
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .parameter "reqCode"
    .parameter "resCode"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    const/4 v0, -0x1

    const/16 v8, 0x64

    .line 447
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 448
    const-string v7, ""

    .line 450
    .local v7, output:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 496
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/spam/SetupSpamNumberWriteForm$9;

    invoke-direct {v1, p0}, Lcom/android/mms/spam/SetupSpamNumberWriteForm$9;-><init>(Lcom/android/mms/spam/SetupSpamNumberWriteForm;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 504
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 505
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->createEdit:Landroid/widget/EditText;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 506
    :cond_1
    return-void

    .line 452
    :pswitch_0
    if-ne p2, v0, :cond_0

    .line 454
    const-string v0, "TEST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LogsPickerActivity.onActivityResult] uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    const-string v0, "NUMBER"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 456
    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 458
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v8, :cond_2

    .line 459
    invoke-virtual {v7, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 461
    :cond_2
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->createEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 466
    :pswitch_1
    if-ne p2, v0, :cond_8

    .line 467
    const/4 v6, 0x0

    .line 469
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->NUM_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 471
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_5

    .line 472
    :cond_3
    const-string v0, "AutoReject"

    const-string v1, "onActivityResult: bad contact data, no results found."

    invoke-static {v0, v1}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 484
    :cond_4
    :goto_1
    if-eqz v6, :cond_0

    .line 485
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 474
    :cond_5
    const/4 v0, 0x1

    :try_start_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 476
    if-eqz v7, :cond_4

    .line 477
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v8, :cond_6

    .line 478
    const/4 v0, 0x0

    const/16 v1, 0x64

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 480
    :cond_6
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->createEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 484
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_7

    .line 485
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0

    .line 488
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_8
    const-string v0, "AutoReject"

    const-string v1, "onActivityResult: cancelled."

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 450
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "config"

    .prologue
    .line 203
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 205
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mIsLandscape:Z

    .line 206
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->updateActionBar()V

    .line 207
    return-void

    .line 205
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 112
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 113
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mtelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v2, :cond_0

    .line 114
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mtelephonyManager:Landroid/telephony/TelephonyManager;

    .line 116
    :cond_0
    const v2, 0x7f03003d

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    .line 117
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_6

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mIsLandscape:Z

    .line 119
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->updateActionBar()V

    .line 120
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mActionBar:Landroid/app/ActionBar;

    .line 121
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mActionBar:Landroid/app/ActionBar;

    if-eqz v2, :cond_1

    .line 122
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 123
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mActionBar:Landroid/app/ActionBar;

    iget-object v5, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mActionbarAddListLayout:Landroid/widget/LinearLayout;

    new-instance v6, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v6, v7, v7}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5, v6}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 124
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 127
    :cond_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v5, 0x0

    invoke-static {v2, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mToast:Landroid/widget/Toast;

    .line 128
    if-eqz p1, :cond_2

    .line 129
    const-string v2, "SetupSpamNumberWriteForm"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate  savedInstanceState  mMatchCriteria = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mMatchCriteria:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v2, "match_criteria"

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mMatchCriteria:I

    .line 133
    :cond_2
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->LayoutInit()V

    .line 134
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v5, "UPDATE_MODE"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->update_MODE:Z

    .line 135
    iget-boolean v2, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->update_MODE:Z

    if-ne v2, v3, :cond_4

    .line 136
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "UPDATE_ID"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->update_ID:I

    .line 137
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "MATCH_MODE"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->match_MODE:I

    .line 138
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "SELECT_NUMBER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->select_NUM:Ljava/lang/String;

    .line 139
    iget v2, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->match_MODE:I

    iput v2, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mMatchCriteria:I

    .line 140
    iget v2, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->match_MODE:I

    iput v2, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->previous_match_MODE:I

    .line 141
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->select_NUM:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->previous_NUM:Ljava/lang/String;

    .line 142
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->createEdit:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->select_NUM:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->createEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/TextView;->length()I

    move-result v0

    .line 144
    .local v0, len:I
    if-lez v0, :cond_3

    .line 145
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->createEdit:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 147
    :cond_3
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070029

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, matchEntry:[Ljava/lang/String;
    const v2, 0x7f0e0103

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->criteriaSub:Landroid/widget/TextView;

    .line 149
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->criteriaSub:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mMatchCriteria:I

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    .end local v0           #len:I
    .end local v1           #matchEntry:[Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 153
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->createEdit:Landroid/widget/EditText;

    new-instance v3, Lcom/android/mms/spam/SetupSpamNumberWriteForm$1;

    invoke-direct {v3, p0}, Lcom/android/mms/spam/SetupSpamNumberWriteForm$1;-><init>(Lcom/android/mms/spam/SetupSpamNumberWriteForm;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 165
    :cond_5
    return-void

    :cond_6
    move v2, v4

    .line 117
    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 215
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 327
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 340
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 329
    :sswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 333
    :sswitch_1
    invoke-virtual {p0, v2}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->softkeyLeftRun(Landroid/view/View;)V

    goto :goto_0

    .line 337
    :sswitch_2
    invoke-virtual {p0, v2}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->softkeyRightRun(Landroid/view/View;)V

    goto :goto_0

    .line 327
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x0

    .line 344
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 346
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 348
    const/4 v0, 0x2

    const v1, 0x7f0a01e9

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mMenuCancel:Landroid/view/MenuItem;

    .line 349
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 351
    const/4 v0, 0x1

    const v1, 0x7f0a010f

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mMenuSave:Landroid/view/MenuItem;

    .line 352
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mMenuSave:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 354
    iget-boolean v0, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mIsLandscape:Z

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mMenuCancel:Landroid/view/MenuItem;

    const v1, 0x7f020285

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 356
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mMenuSave:Landroid/view/MenuItem;

    const v1, 0x7f020286

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 358
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "inState"

    .prologue
    .line 175
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 176
    if-eqz p1, :cond_0

    .line 177
    const-string v0, "match_criteria"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mMatchCriteria:I

    .line 178
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 182
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 183
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->IMEHandler:Landroid/os/Handler;

    .line 184
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->createEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 185
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->showSip()V

    .line 186
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 169
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 170
    const-string v0, "match_criteria"

    iget v1, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mMatchCriteria:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 171
    return-void
.end method

.method public softkeyLeftRun(Landroid/view/View;)V
    .locals 10
    .parameter "target"

    .prologue
    const v9, 0x7f0a0385

    const v7, 0x104000a

    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 519
    iget-object v4, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->createEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    if-nez v4, :cond_0

    .line 520
    const/4 v0, 0x0

    .line 521
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 522
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    const v4, 0x1010355

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 523
    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 524
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a037c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 525
    const/4 v4, 0x0

    invoke-virtual {v0, v7, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 526
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 527
    .local v1, createDialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 528
    invoke-static {p0}, Lcom/android/mms/ui/SipHandler;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->createEdit:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5, v8}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 529
    new-instance v4, Lcom/android/mms/spam/SetupSpamNumberWriteForm$11;

    invoke-direct {v4, p0}, Lcom/android/mms/spam/SetupSpamNumberWriteForm$11;-><init>(Lcom/android/mms/spam/SetupSpamNumberWriteForm;)V

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 600
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #createDialog:Landroid/app/AlertDialog;
    :goto_0
    return-void

    .line 537
    :cond_0
    const/4 v3, 0x0

    .line 538
    .local v3, match_criteria:Ljava/lang/String;
    iget v4, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mMatchCriteria:I

    packed-switch v4, :pswitch_data_0

    .line 555
    :goto_1
    iget-object v4, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->createEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mMatchCriteria:I

    invoke-direct {p0, v4, v5}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->checkAlreadyInUse(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 556
    const/4 v0, 0x0

    .line 557
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 559
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 561
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->createEdit:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ) \n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f0a037b

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 564
    new-instance v4, Lcom/android/mms/spam/SetupSpamNumberWriteForm$12;

    invoke-direct {v4, p0}, Lcom/android/mms/spam/SetupSpamNumberWriteForm$12;-><init>(Lcom/android/mms/spam/SetupSpamNumberWriteForm;)V

    invoke-virtual {v0, v7, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 577
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 578
    .restart local v1       #createDialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 579
    invoke-static {p0}, Lcom/android/mms/ui/SipHandler;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->createEdit:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5, v8}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 540
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #createDialog:Landroid/app/AlertDialog;
    :pswitch_0
    const v4, 0x7f0a0396

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 541
    goto :goto_1

    .line 544
    :pswitch_1
    const v4, 0x7f0a0397

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 545
    goto :goto_1

    .line 548
    :pswitch_2
    const v4, 0x7f0a0398

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 549
    goto/16 :goto_1

    .line 552
    :pswitch_3
    const v4, 0x7f0a0399

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 583
    :cond_1
    iget-object v4, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->createEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->isAvaliableNumber(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 584
    const v4, 0x7f0a037d

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->displayToast(Ljava/lang/String;)V

    .line 585
    invoke-static {p0}, Lcom/android/mms/ui/SipHandler;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->createEdit:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5, v8}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto/16 :goto_0

    .line 589
    :cond_2
    iget-boolean v4, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->update_MODE:Z

    if-ne v4, v6, :cond_3

    .line 590
    iget-object v4, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->createEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mMatchCriteria:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->update_ID:I

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->updateSpamNumber(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;I)V

    .line 595
    :goto_2
    invoke-static {p0}, Lcom/android/mms/ui/SipHandler;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->createEdit:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5, v8}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 597
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 598
    .local v2, intent:Landroid/content/Intent;
    const/4 v4, -0x1

    invoke-virtual {p0, v4, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 599
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 592
    .end local v2           #intent:Landroid/content/Intent;
    :cond_3
    iget-object v4, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->createEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->mMatchCriteria:I

    invoke-direct {p0, v4, v5}, Lcom/android/mms/spam/SetupSpamNumberWriteForm;->addSpamNumber(Ljava/lang/String;I)I

    goto :goto_2

    .line 538
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public softkeyRightRun(Landroid/view/View;)V
    .locals 2
    .parameter "target"

    .prologue
    .line 603
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 604
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 605
    return-void
.end method
