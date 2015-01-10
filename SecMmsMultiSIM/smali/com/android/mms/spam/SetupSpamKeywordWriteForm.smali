.class public Lcom/android/mms/spam/SetupSpamKeywordWriteForm;
.super Landroid/app/Activity;
.source "SetupSpamKeywordWriteForm.java"


# static fields
.field private static final ALERT_SPAM_KEYWORD_DIALOG:I = 0x1

.field private static final ALERT_SPAM_KEYWORD_MAX_BYTE_DIALOG:I = 0x5

.field private static final ALERT_SPAM_MAX_SIZE_DIALOG:I = 0x3

.field private static final ALERT_SPAM_SIZE_DIALOG:I = 0x2

.field private static final CANCEL:I = 0x2

.field private static final DIALOG_SPAM:I = 0x4

.field private static final SAVE:I = 0x1


# instance fields
.field private IMEHandler:Landroid/os/Handler;

.field private final TAG:Ljava/lang/String;

.field idx:I

.field private mActionBar:Landroid/app/ActionBar;

.field private mActionbarAddListCancelButton:Landroid/widget/TextView;

.field private mActionbarAddListDoneButton:Landroid/widget/TextView;

.field private mActionbarAddListLayout:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mIsLandscape:Z

.field private mMaxCharsInputToast:Landroid/widget/Toast;

.field private mMenuCancel:Landroid/view/MenuItem;

.field private mMenuSave:Landroid/view/MenuItem;

.field private m_DialogView:Landroid/app/AlertDialog;

.field private m_SaveButton:Landroid/widget/Button;

.field private m_SentenceText:Landroid/widget/EditText;

.field private m_TextChanged:Landroid/text/TextWatcher;

.field m_Title:Landroid/widget/TextView;

.field private m_lOldShowDialogTime:J

.field spamCriteria:I

.field spamText:Ljava/lang/String;

.field private update_MODE:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 60
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 62
    const-string v0, "Mms/SetupSpamKeywordWriteForm"

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->TAG:Ljava/lang/String;

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->spamText:Ljava/lang/String;

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->spamCriteria:I

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->idx:I

    .line 70
    iput-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->m_Title:Landroid/widget/TextView;

    .line 81
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->m_lOldShowDialogTime:J

    .line 82
    iput-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->IMEHandler:Landroid/os/Handler;

    .line 84
    iput-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mActionbarAddListLayout:Landroid/widget/LinearLayout;

    .line 85
    iput-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mActionbarAddListDoneButton:Landroid/widget/TextView;

    .line 86
    iput-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mActionbarAddListCancelButton:Landroid/widget/TextView;

    .line 88
    iput-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mMenuSave:Landroid/view/MenuItem;

    .line 89
    iput-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mMenuCancel:Landroid/view/MenuItem;

    .line 92
    iput-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mContext:Landroid/content/Context;

    .line 504
    new-instance v0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$5;

    invoke-direct {v0, p0}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$5;-><init>(Lcom/android/mms/spam/SetupSpamKeywordWriteForm;)V

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->m_TextChanged:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/spam/SetupSpamKeywordWriteForm;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->m_SentenceText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/spam/SetupSpamKeywordWriteForm;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->update_MODE:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/mms/spam/SetupSpamKeywordWriteForm;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->insert(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/spam/SetupSpamKeywordWriteForm;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->getSpamWordData()I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/mms/spam/SetupSpamKeywordWriteForm;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->updateSapmKeyWord()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/spam/SetupSpamKeywordWriteForm;)Landroid/widget/Toast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mMaxCharsInputToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/mms/spam/SetupSpamKeywordWriteForm;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mMaxCharsInputToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/mms/spam/SetupSpamKeywordWriteForm;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/spam/SetupSpamKeywordWriteForm;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->IMEHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private duplicationCheck(Ljava/lang/String;)I
    .locals 9
    .parameter "keyword"

    .prologue
    const/4 v2, 0x0

    .line 363
    const/4 v6, 0x0

    .line 364
    .local v6, countResult:I
    const/4 v7, 0x0

    .line 365
    .local v7, cur:Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 366
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 367
    .local v8, sbWhere:Ljava/lang/StringBuilder;
    const-string v1, "filter_type = 1 AND filter = "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    invoke-static {v8, p1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 377
    sget-object v1, Lcom/android/mms/spam/SpamFilter;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 380
    if-nez v7, :cond_0

    .line 381
    const/4 v1, 0x0

    .line 387
    :goto_0
    return v1

    .line 383
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 384
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 385
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v1, v6

    .line 387
    goto :goto_0
.end method

.method private getSpamWordData()I
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 467
    const/4 v6, 0x0

    .line 468
    .local v6, count:I
    const-string v3, ""

    .line 469
    .local v3, sWhereSQL:Ljava/lang/String;
    const-string v3, "filter_type = 1"

    .line 474
    const/4 v7, 0x0

    .line 475
    .local v7, cur:Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 476
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/mms/spam/SpamFilter;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 479
    if-nez v7, :cond_0

    .line 480
    const/4 v1, 0x0

    .line 486
    :goto_0
    return v1

    .line 482
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 483
    if-eqz v7, :cond_1

    .line 484
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    move v1, v6

    .line 486
    goto :goto_0
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 236
    const v1, 0x7f0e00fa

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->m_SentenceText:Landroid/widget/EditText;

    .line 237
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->m_SentenceText:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 240
    new-array v0, v2, [Landroid/text/InputFilter;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/mms/util/LengthFilterWithToast;

    const/16 v3, 0x20

    invoke-direct {v2, v3}, Lcom/android/mms/util/LengthFilterWithToast;-><init>(I)V

    aput-object v2, v0, v1

    .line 242
    .local v0, inputFilters:[Landroid/text/InputFilter;
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->m_SentenceText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 255
    return-void
.end method

.method private insert(Ljava/lang/String;)V
    .locals 8
    .parameter "pStr"

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 325
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 326
    .local v7, values:Landroid/content/ContentValues;
    const-string v3, "filter_type"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 327
    const-string v3, "filter"

    invoke-virtual {v7, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const-string v3, "criteria"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 329
    const-string v3, "enable"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 334
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/mms/spam/SpamFilter;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v3, v4, v7}, Lcom/google/android/mms/util/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    .line 338
    .local v6, new_uri:Landroid/net/Uri;
    invoke-virtual {v6}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 339
    .local v1, id:I
    new-instance v0, Lcom/android/mms/spam/SpamFilter$SpamFilterData;

    move v3, v2

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/spam/SpamFilter$SpamFilterData;-><init>(IIZLjava/lang/String;I)V

    .line 342
    .local v0, spamdata:Lcom/android/mms/spam/SpamFilter$SpamFilterData;
    invoke-static {v1, v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->insert(ILcom/android/mms/spam/SpamFilter$SpamFilterData;)V

    .line 343
    return-void
.end method

.method private updateActionBar()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 259
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mActionbarAddListLayout:Landroid/widget/LinearLayout;

    if-nez v3, :cond_1

    .line 260
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030004

    invoke-virtual {v3, v4, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mActionbarAddListLayout:Landroid/widget/LinearLayout;

    .line 261
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mActionbarAddListLayout:Landroid/widget/LinearLayout;

    const v4, 0x7f0e000f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mActionbarAddListDoneButton:Landroid/widget/TextView;

    .line 262
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mActionbarAddListLayout:Landroid/widget/LinearLayout;

    const v4, 0x7f0e000d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mActionbarAddListCancelButton:Landroid/widget/TextView;

    .line 263
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mActionbarAddListLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_0

    .line 264
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mActionbarAddListLayout:Landroid/widget/LinearLayout;

    const v4, 0x7f0e000c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 265
    .local v2, title:Landroid/widget/TextView;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 266
    const v3, 0x7f0a03a1

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    .end local v2           #title:Landroid/widget/TextView;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mActionbarAddListLayout:Landroid/widget/LinearLayout;

    const v4, 0x7f0e000e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 284
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 285
    .local v1, doneText:Ljava/lang/StringBuffer;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 295
    .local v0, cancelText:Ljava/lang/StringBuffer;
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mActionbarAddListDoneButton:Landroid/widget/TextView;

    if-eqz v3, :cond_2

    .line 296
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mActionbarAddListDoneButton:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 299
    :cond_2
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mActionbarAddListCancelButton:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    .line 300
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mActionbarAddListCancelButton:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 303
    :cond_3
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mMenuSave:Landroid/view/MenuItem;

    if-eqz v3, :cond_4

    .line 304
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mMenuSave:Landroid/view/MenuItem;

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 305
    iget-boolean v3, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mIsLandscape:Z

    if-eqz v3, :cond_7

    .line 306
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mMenuSave:Landroid/view/MenuItem;

    const v4, 0x7f020286

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 311
    :cond_4
    :goto_1
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mMenuCancel:Landroid/view/MenuItem;

    if-eqz v3, :cond_5

    .line 312
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 313
    iget-boolean v3, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mIsLandscape:Z

    if-eqz v3, :cond_8

    .line 314
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mMenuCancel:Landroid/view/MenuItem;

    const v4, 0x7f020285

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 319
    :cond_5
    :goto_2
    return-void

    .line 268
    .end local v0           #cancelText:Ljava/lang/StringBuffer;
    .end local v1           #doneText:Ljava/lang/StringBuffer;
    .restart local v2       #title:Landroid/widget/TextView;
    :cond_6
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 308
    .end local v2           #title:Landroid/widget/TextView;
    .restart local v0       #cancelText:Ljava/lang/StringBuffer;
    .restart local v1       #doneText:Ljava/lang/StringBuffer;
    :cond_7
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mMenuSave:Landroid/view/MenuItem;

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 316
    :cond_8
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method private updateSapmKeyWord()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 349
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 350
    .local v2, values:Landroid/content/ContentValues;
    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->m_SentenceText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 351
    .local v0, strSpamData:Ljava/lang/String;
    const-string v3, "filter"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    sget-object v3, Lcom/android/mms/spam/SpamFilter;->CONTENT_URI:Landroid/net/Uri;

    iget v4, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->idx:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 355
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 356
    iget v3, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->idx:I

    invoke-static {v3, v0}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->update(ILjava/lang/String;)V

    .line 357
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "config"

    .prologue
    .line 702
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 703
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mIsLandscape:Z

    .line 704
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->updateActionBar()V

    .line 711
    return-void

    .line 703
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 97
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mContext:Landroid/content/Context;

    .line 103
    const v1, 0x7f03003c

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 105
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_3

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mIsLandscape:Z

    .line 107
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->updateActionBar()V

    .line 108
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mActionBar:Landroid/app/ActionBar;

    .line 109
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mActionBar:Landroid/app/ActionBar;

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 111
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mActionBar:Landroid/app/ActionBar;

    iget-object v4, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mActionbarAddListLayout:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 112
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 115
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->init()V

    .line 116
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 117
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "UPDATE_MODE"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->update_MODE:Z

    .line 119
    iget-boolean v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->update_MODE:Z

    if-ne v1, v2, :cond_1

    .line 120
    const-string v1, "SpamWord"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->spamText:Ljava/lang/String;

    .line 121
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->m_SentenceText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->spamText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->m_SentenceText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->spamText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 126
    const-string v1, "UPDATE_ID"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->idx:I

    .line 130
    :cond_1
    const-string v1, "SpamCriteria"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->spamCriteria:I

    .line 132
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 133
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->m_SentenceText:Landroid/widget/EditText;

    new-instance v2, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$1;

    invoke-direct {v2, p0}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$1;-><init>(Lcom/android/mms/spam/SetupSpamKeywordWriteForm;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 145
    :cond_2
    return-void

    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    move v1, v3

    .line 105
    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    const v1, 0x1010355

    const v2, 0x7f0a0385

    const v3, 0x104000a

    .line 591
    const/4 v0, 0x0

    .line 593
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 696
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 595
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 598
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 599
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 600
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0380

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 604
    :goto_1
    new-instance v1, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$6;

    invoke-direct {v1, p0}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$6;-><init>(Lcom/android/mms/spam/SetupSpamKeywordWriteForm;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 617
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->m_DialogView:Landroid/app/AlertDialog;

    .line 618
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->m_DialogView:Landroid/app/AlertDialog;

    goto :goto_0

    .line 602
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a037f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 621
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 622
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 623
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 624
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0381

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 625
    new-instance v1, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$7;

    invoke-direct {v1, p0}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$7;-><init>(Lcom/android/mms/spam/SetupSpamKeywordWriteForm;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 638
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->m_DialogView:Landroid/app/AlertDialog;

    .line 639
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->m_DialogView:Landroid/app/AlertDialog;

    goto :goto_0

    .line 642
    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 643
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 644
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 645
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0382

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 646
    new-instance v1, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$8;

    invoke-direct {v1, p0}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$8;-><init>(Lcom/android/mms/spam/SetupSpamKeywordWriteForm;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 659
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->m_DialogView:Landroid/app/AlertDialog;

    .line 660
    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->m_DialogView:Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 593
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 197
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 491
    packed-switch p1, :pswitch_data_0

    .line 497
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 493
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    const/4 v0, 0x1

    goto :goto_0

    .line 491
    :pswitch_data_0
    .packed-switch 0x52
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 201
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 213
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 203
    :sswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 206
    :sswitch_1
    invoke-virtual {p0, v2}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->softkeyLeftRun(Landroid/view/View;)V

    .line 207
    invoke-static {p0}, Lcom/android/mms/ui/SipHandler;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->m_SentenceText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 210
    :sswitch_2
    invoke-virtual {p0, v2}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->softkeyRightRun(Landroid/view/View;)V

    goto :goto_0

    .line 201
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 185
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 188
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x0

    .line 217
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 219
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 221
    const/4 v0, 0x2

    const v1, 0x7f0a01e9

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mMenuCancel:Landroid/view/MenuItem;

    .line 222
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mMenuCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 224
    const/4 v0, 0x1

    const v1, 0x7f0a010f

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mMenuSave:Landroid/view/MenuItem;

    .line 225
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mMenuSave:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 227
    iget-boolean v0, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mIsLandscape:Z

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mMenuCancel:Landroid/view/MenuItem;

    const v1, 0x7f020285

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 229
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->mMenuSave:Landroid/view/MenuItem;

    const v1, 0x7f020286

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 232
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 149
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 150
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->IMEHandler:Landroid/os/Handler;

    .line 151
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->m_SentenceText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 155
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->m_SentenceText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->IMEHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$2;

    invoke-direct {v1, p0}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$2;-><init>(Lcom/android/mms/spam/SetupSpamKeywordWriteForm;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 181
    :cond_0
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 715
    const/4 v0, 0x1

    return v0
.end method

.method public showKeyWordConfirmDialog(IILjava/lang/String;)V
    .locals 7
    .parameter "id"
    .parameter "resString"
    .parameter "textMessage"

    .prologue
    .line 426
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 428
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 429
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a037a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 432
    .local v1, showMessage:Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 433
    const v2, 0x7f0a006a

    new-instance v3, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$4;

    invoke-direct {v3, p0}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$4;-><init>(Lcom/android/mms/spam/SetupSpamKeywordWriteForm;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a006b

    new-instance v4, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$3;

    invoke-direct {v4, p0}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm$3;-><init>(Lcom/android/mms/spam/SetupSpamKeywordWriteForm;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 460
    return-void
.end method

.method public softkeyLeftRun(Landroid/view/View;)V
    .locals 6
    .parameter "target"

    .prologue
    const/4 v5, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 391
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->m_SentenceText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 393
    .local v1, strKeyWord:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->getByteSize(Ljava/lang/String;)I

    move-result v0

    .line 394
    .local v0, sSize:I
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 395
    invoke-static {p0}, Lcom/android/mms/ui/SipHandler;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->m_SentenceText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 396
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->showDialog(I)V

    .line 416
    :goto_0
    return-void

    .line 397
    :cond_0
    if-ge v0, v5, :cond_1

    .line 399
    invoke-virtual {p0, v3}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 400
    :cond_1
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->spamText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->duplicationCheck(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_2

    .line 401
    invoke-static {p0}, Lcom/android/mms/ui/SipHandler;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->m_SentenceText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 402
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 405
    :cond_2
    iget-object v2, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->spamText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v2, v3, :cond_3

    .line 407
    const v2, 0x7f0a02ea

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 408
    invoke-static {p0}, Lcom/android/mms/ui/SipHandler;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->m_SentenceText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 410
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 412
    :cond_3
    const v2, 0x7f0a0385

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v5, v2, v3}, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->showKeyWordConfirmDialog(IILjava/lang/String;)V

    goto :goto_0
.end method

.method public softkeyRightRun(Landroid/view/View;)V
    .locals 3
    .parameter "target"

    .prologue
    const/4 v2, 0x0

    .line 419
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 421
    invoke-static {p0}, Lcom/android/mms/ui/SipHandler;->getInputMethodManager(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/spam/SetupSpamKeywordWriteForm;->m_SentenceText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 422
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 423
    return-void
.end method
