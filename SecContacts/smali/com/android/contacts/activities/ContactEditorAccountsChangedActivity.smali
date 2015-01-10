.class public Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;
.super Landroid/app/Activity;
.source "ContactEditorAccountsChangedActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;


# instance fields
.field private isUsingTwoPanel:Z

.field private mAccountListAdapter:Lcom/android/contacts/util/AccountsListAdapter;

.field private final mAccountListItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private final mAddAccountClickListener:Landroid/view/View$OnClickListener;

.field private mChangeAccountDialogFragment:Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;

.field private mHasEmail:Z

.field private mHasPhoto:Z

.field private mHasRingtone:Z

.field private mIsICEGroup:Z

.field private mIsMultiWindowSupported:Z

.field private mMW:Landroid/sec/multiwindow/MultiWindow;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-class v0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 73
    iput-boolean v0, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mHasPhoto:Z

    .line 74
    iput-boolean v0, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mHasRingtone:Z

    .line 75
    iput-boolean v0, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mIsICEGroup:Z

    .line 76
    iput-boolean v0, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mHasEmail:Z

    .line 79
    new-instance v0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$1;-><init>(Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mAccountListItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 89
    new-instance v0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity$2;-><init>(Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;)V

    iput-object v0, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mAddAccountClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;)Lcom/android/contacts/util/AccountsListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mAccountListAdapter:Lcom/android/contacts/util/AccountsListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;Lcom/android/contacts/model/AccountWithDataSet;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->saveAccountAndReturnResult(Lcom/android/contacts/model/AccountWithDataSet;)V

    return-void
.end method

.method static synthetic access$200()Lcom/android/contacts/editor/ContactEditorUtils;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

    return-object v0
.end method

.method public static getEditorUtilInstance()Lcom/android/contacts/editor/ContactEditorUtils;
    .locals 1

    .prologue
    .line 412
    sget-object v0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

    return-object v0
.end method

.method private saveAccountAndReturnResult(Lcom/android/contacts/model/AccountWithDataSet;)V
    .locals 8
    .parameter "account"

    .prologue
    const/4 v7, 0x0

    .line 358
    const/4 v1, 0x0

    .line 359
    .local v1, SIM_ZERO:I
    const/4 v0, 0x1

    .line 362
    .local v0, SIM_ONE:I
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v3

    if-nez v3, :cond_0

    .line 363
    :cond_0
    const-string v3, "vnd.sec.contact.sim"

    iget-object v4, p1, Lcom/android/contacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "vnd.sec.contact.sim2"

    iget-object v4, p1, Lcom/android/contacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    invoke-static {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v3

    iget-object v4, p1, Lcom/android/contacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimFull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 367
    const v3, 0x7f0d0415

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v5

    iget-object v6, p1, Lcom/android/contacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p0, v3, v4}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 369
    const/4 p1, 0x0

    .line 409
    :goto_0
    return-void

    .line 402
    :cond_2
    sget-object v3, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

    invoke-virtual {v3, p1}, Lcom/android/contacts/editor/ContactEditorUtils;->saveDefaultAndAllAccounts(Lcom/android/contacts/model/AccountWithDataSet;)V

    .line 405
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 406
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "com.android.contacts.extra.ACCOUNT"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 407
    const/4 v3, -0x1

    invoke-virtual {p0, v3, v2}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->setResult(ILandroid/content/Intent;)V

    .line 408
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->finish()V

    goto :goto_0
.end method

.method private setLayout()V
    .locals 2

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 252
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000b

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 253
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 339
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 342
    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 346
    :cond_1
    sget-object v1, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

    invoke-virtual {v1, p2, p3}, Lcom/android/contacts/editor/ContactEditorUtils;->getCreatedAccount(ILandroid/content/Intent;)Lcom/android/contacts/model/AccountWithDataSet;

    move-result-object v0

    .line 347
    .local v0, account:Lcom/android/contacts/model/AccountWithDataSet;
    if-nez v0, :cond_2

    .line 348
    invoke-virtual {p0, p2}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->setResult(I)V

    .line 349
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->finish()V

    goto :goto_0

    .line 352
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->saveAccountAndReturnResult(Lcom/android/contacts/model/AccountWithDataSet;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 99
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->isUsingTwoPanel:Z

    .line 101
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isMultiWindowSupported(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mIsMultiWindowSupported:Z

    .line 102
    iget-boolean v3, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mIsMultiWindowSupported:Z

    if-eqz v3, :cond_0

    .line 103
    invoke-static {p0}, Landroid/sec/multiwindow/MultiWindow;->createInstance(Landroid/app/Activity;)Landroid/sec/multiwindow/MultiWindow;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    .line 105
    :cond_0
    invoke-static {p0}, Lcom/android/contacts/editor/ContactEditorUtils;->getInstance(Landroid/content/Context;)Lcom/android/contacts/editor/ContactEditorUtils;

    move-result-object v3

    sput-object v3, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mEditorUtils:Lcom/android/contacts/editor/ContactEditorUtils;

    .line 106
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "photo_uri"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mHasPhoto:Z

    .line 107
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "ringtone_uri"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mHasRingtone:Z

    .line 108
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "is_ice_group"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mIsICEGroup:Z

    .line 109
    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "emailmode"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mHasEmail:Z

    .line 112
    iget-boolean v3, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mHasPhoto:Z

    iget-boolean v4, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mIsICEGroup:Z

    or-int/2addr v3, v4

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mHasRingtone:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mHasEmail:Z

    if-eqz v3, :cond_b

    .line 114
    :cond_1
    iget-boolean v3, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mHasEmail:Z

    if-eqz v3, :cond_a

    .line 115
    const/4 v3, 0x2

    new-array v1, v3, [Z

    fill-array-data v1, :array_0

    .line 116
    .local v1, isTwoGSim:[Z
    invoke-static {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v3

    const-string v4, "vnd.sec.contact.sim"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 117
    aput-boolean v5, v1, v6

    .line 118
    :cond_2
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_3
    invoke-static {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v3

    const-string v4, "vnd.sec.contact.sim2"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 120
    aput-boolean v5, v1, v5

    .line 122
    :cond_4
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v3

    if-nez v3, :cond_5

    .line 123
    :cond_5
    aget-boolean v3, v1, v6

    if-eqz v3, :cond_6

    aget-boolean v3, v1, v5

    if-eqz v3, :cond_6

    .line 124
    invoke-static {p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/model/AccountTypeManager;->getWritableAccountsWithoutSim()Ljava/util/List;

    move-result-object v0

    .line 152
    .end local v1           #isTwoGSim:[Z
    .local v0, accounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 153
    .local v2, numAccounts:I
    new-instance v3, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;

    invoke-direct {v3}, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;-><init>()V

    iput-object v3, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mChangeAccountDialogFragment:Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;

    .line 154
    invoke-virtual {p0, v5}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->requestWindowFeature(I)Z

    .line 156
    if-gez v2, :cond_c

    .line 157
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Cannot have a negative number of accounts"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 125
    .end local v0           #accounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    .end local v2           #numAccounts:I
    .restart local v1       #isTwoGSim:[Z
    :cond_6
    aget-boolean v3, v1, v6

    if-eqz v3, :cond_8

    .line 126
    invoke-static {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v3

    const-string v4, "vnd.sec.contact.sim2"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->hasIccCard(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v3

    const-string v4, "vnd.sec.contact.sim2"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 128
    invoke-static {p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/model/AccountTypeManager;->getWritableAccountsWithoutSim1()Ljava/util/List;

    move-result-object v0

    .restart local v0       #accounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    goto :goto_0

    .line 130
    .end local v0           #accounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    :cond_7
    invoke-static {p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/model/AccountTypeManager;->getWritableAccountsWithoutSim()Ljava/util/List;

    move-result-object v0

    .restart local v0       #accounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    goto :goto_0

    .line 133
    .end local v0           #accounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    :cond_8
    aget-boolean v3, v1, v5

    if-eqz v3, :cond_9

    .line 134
    invoke-static {p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/model/AccountTypeManager;->getWritableAccountsWithoutSim2()Ljava/util/List;

    move-result-object v0

    .restart local v0       #accounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    goto :goto_0

    .line 136
    .end local v0           #accounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    :cond_9
    invoke-static {p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v0

    .restart local v0       #accounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    goto :goto_0

    .line 146
    .end local v0           #accounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    .end local v1           #isTwoGSim:[Z
    :cond_a
    invoke-static {p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/model/AccountTypeManager;->getWritableAccountsWithoutSim()Ljava/util/List;

    move-result-object v0

    .restart local v0       #accounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    goto :goto_0

    .line 149
    .end local v0           #accounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    :cond_b
    invoke-static {p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v0

    .restart local v0       #accounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    goto :goto_0

    .line 159
    .restart local v2       #numAccounts:I
    :cond_c
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 160
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->setLayout()V

    .line 242
    :cond_d
    return-void

    .line 115
    :array_0
    .array-data 0x1
        0x0t
        0x0t
    .end array-data
.end method

.method protected onResume()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 257
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 261
    iget-boolean v4, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mHasPhoto:Z

    iget-boolean v5, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mIsICEGroup:Z

    or-int/2addr v4, v5

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mHasRingtone:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mHasEmail:Z

    if-eqz v4, :cond_a

    .line 263
    :cond_0
    iget-boolean v4, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mHasEmail:Z

    if-eqz v4, :cond_9

    .line 264
    const/4 v4, 0x2

    new-array v1, v4, [Z

    fill-array-data v1, :array_0

    .line 265
    .local v1, isTwoGSim:[Z
    invoke-static {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v4

    const-string v5, "vnd.sec.contact.sim"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 266
    aput-boolean v6, v1, v7

    .line 267
    :cond_1
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_2
    invoke-static {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v4

    const-string v5, "vnd.sec.contact.sim2"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 269
    aput-boolean v6, v1, v6

    .line 271
    :cond_3
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v4

    if-nez v4, :cond_4

    .line 272
    :cond_4
    aget-boolean v4, v1, v7

    if-eqz v4, :cond_5

    aget-boolean v4, v1, v6

    if-eqz v4, :cond_5

    .line 273
    invoke-static {p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/model/AccountTypeManager;->getWritableAccountsWithoutSim()Ljava/util/List;

    move-result-object v0

    .line 274
    .local v0, accounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    sget-object v2, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_WRITABLE_WITHOUT_SIM:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    .line 317
    .end local v1           #isTwoGSim:[Z
    .local v2, listFilter:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 319
    .local v3, numAccounts:I
    if-gez v3, :cond_b

    .line 320
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Cannot have a negative number of accounts"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 276
    .end local v0           #accounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    .end local v2           #listFilter:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;
    .end local v3           #numAccounts:I
    .restart local v1       #isTwoGSim:[Z
    :cond_5
    aget-boolean v4, v1, v7

    if-eqz v4, :cond_7

    .line 277
    invoke-static {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v4

    const-string v5, "vnd.sec.contact.sim2"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->hasIccCard(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v4

    const-string v5, "vnd.sec.contact.sim2"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 279
    invoke-static {p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/model/AccountTypeManager;->getWritableAccountsWithoutSim1()Ljava/util/List;

    move-result-object v0

    .line 280
    .restart local v0       #accounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    sget-object v2, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_WRITABLE_WITHOUT_SIM1:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    .restart local v2       #listFilter:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;
    goto :goto_0

    .line 283
    .end local v0           #accounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    .end local v2           #listFilter:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;
    :cond_6
    invoke-static {p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/model/AccountTypeManager;->getWritableAccountsWithoutSim()Ljava/util/List;

    move-result-object v0

    .line 284
    .restart local v0       #accounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    sget-object v2, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_WRITABLE_WITHOUT_SIM:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    .restart local v2       #listFilter:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;
    goto :goto_0

    .line 287
    .end local v0           #accounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    .end local v2           #listFilter:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;
    :cond_7
    aget-boolean v4, v1, v6

    if-eqz v4, :cond_8

    .line 288
    invoke-static {p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/model/AccountTypeManager;->getWritableAccountsWithoutSim2()Ljava/util/List;

    move-result-object v0

    .line 289
    .restart local v0       #accounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    sget-object v2, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_WRITABLE_WITHOUT_SIM2:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    .restart local v2       #listFilter:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;
    goto :goto_0

    .line 292
    .end local v0           #accounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    .end local v2           #listFilter:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;
    :cond_8
    invoke-static {p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v0

    .line 293
    .restart local v0       #accounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    sget-object v2, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_WRITABLE:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    .restart local v2       #listFilter:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;
    goto :goto_0

    .line 308
    .end local v0           #accounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    .end local v1           #isTwoGSim:[Z
    .end local v2           #listFilter:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;
    :cond_9
    invoke-static {p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/model/AccountTypeManager;->getWritableAccountsWithoutSim()Ljava/util/List;

    move-result-object v0

    .line 309
    .restart local v0       #accounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    sget-object v2, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_WRITABLE_WITHOUT_SIM:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    .restart local v2       #listFilter:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;
    goto :goto_0

    .line 313
    .end local v0           #accounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    .end local v2           #listFilter:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;
    :cond_a
    invoke-static {p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v0

    .line 314
    .restart local v0       #accounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    sget-object v2, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_WRITABLE:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    .restart local v2       #listFilter:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;
    goto :goto_0

    .line 323
    .restart local v3       #numAccounts:I
    :cond_b
    if-le v3, v6, :cond_c

    .line 328
    iget-object v4, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mChangeAccountDialogFragment:Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const v5, 0x7f0d02b6

    invoke-static {v4, v5, v2, v8}, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;->show(Landroid/app/FragmentManager;ILcom/android/contacts/util/AccountsListAdapter$AccountListFilter;Landroid/os/Bundle;)V

    .line 336
    :goto_1
    return-void

    .line 334
    :cond_c
    iget-object v4, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mChangeAccountDialogFragment:Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;

    invoke-virtual {p0}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const v5, 0x7f0d02b5

    invoke-static {v4, v5, v2, v8}, Lcom/sec/android/app/contacts/editor/ChangeAccountDialogFragment;->show(Landroid/app/FragmentManager;ILcom/android/contacts/util/AccountsListAdapter$AccountListFilter;Landroid/os/Bundle;)V

    goto :goto_1

    .line 264
    nop

    :array_0
    .array-data 0x1
        0x0t
        0x0t
    .end array-data
.end method

.method public onWindowStatusChanged(ZZZ)V
    .locals 1
    .parameter "isMaximized"
    .parameter "isMinimized"
    .parameter "isPinup"

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    if-eqz v0, :cond_0

    .line 246
    invoke-direct {p0}, Lcom/android/contacts/activities/ContactEditorAccountsChangedActivity;->setLayout()V

    .line 248
    :cond_0
    return-void
.end method
