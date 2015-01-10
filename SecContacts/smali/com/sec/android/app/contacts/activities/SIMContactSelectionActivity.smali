.class public Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "SIMContactSelectionActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;,
        Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask;,
        Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;,
        Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;
    }
.end annotation


# static fields
.field private static mCP_Start:I

.field static final sEmptyContentValues:Landroid/content/ContentValues;


# instance fields
.field private final SIM_COPY_CALL_FROM_AAB:Ljava/lang/String;

.field private final SIM_ONE:I

.field private final SIM_ZERO:I

.field private mAccount:Landroid/accounts/Account;

.field private mActionCode:I

.field private mCanceled:Z

.field private mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

.field private mDeleteTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask;

.field private mDoneButtonClickable:Z

.field private mExportTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;

.field private mHomeCheck:Z

.field private mImportTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;

.field private mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

.field private mIsMultiWindowSupported:Z

.field protected mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/contacts/list/ContactEntryListFragment",
            "<*>;"
        }
    .end annotation
.end field

.field private mMW:Landroid/sec/multiwindow/MultiWindow;

.field private mMenuDone:Landroid/view/MenuItem;

.field private mMode:I

.field private mPowerManager:Landroid/os/PowerManager;

.field private mRequest:Lcom/android/contacts/list/ContactsRequest;

.field private mSearchView:Landroid/widget/SearchView;

.field public mToastHandler:Landroid/os/Handler;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field revertMenuItem:Landroid/view/View;

.field saveMenuItem:Landroid/view/View;

.field private selectAllAtFirstLoad:Z

.field private showConfirmationDialog:Z

.field private simcopycallfromAAB:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 120
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sput-object v0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->sEmptyContentValues:Landroid/content/ContentValues;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 159
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 111
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->selectAllAtFirstLoad:Z

    .line 112
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->showConfirmationDialog:Z

    .line 125
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mActionCode:I

    .line 130
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mCanceled:Z

    .line 131
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mHomeCheck:Z

    .line 137
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->simcopycallfromAAB:Z

    .line 138
    const-string v0, "simcopycallfromAAB"

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->SIM_COPY_CALL_FROM_AAB:Ljava/lang/String;

    .line 150
    iput v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->SIM_ZERO:I

    .line 151
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->SIM_ONE:I

    .line 1965
    new-instance v0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$6;-><init>(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mToastHandler:Landroid/os/Handler;

    .line 160
    new-instance v0, Lcom/android/contacts/list/ContactsIntentResolver;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/ContactsIntentResolver;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

    .line 161
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)Lcom/android/contacts/list/ContactsRequest;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mCanceled:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mCanceled:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->showConfirmationDialog:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)Lcom/android/contacts/preference/ContactsPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mMode:I

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput p1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mMode:I

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mActionCode:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)Landroid/accounts/Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mImportTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;)Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mImportTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;

    return-object p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mExportTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;)Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mExportTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;

    return-object p1
.end method

.method static synthetic access$800(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mDeleteTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask;

    return-object v0
.end method

.method static synthetic access$802(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask;)Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mDeleteTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask;

    return-object p1
.end method

.method static synthetic access$900(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->simcopycallfromAAB:Z

    return v0
.end method

.method private adjustActionBarMenuText(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "config"

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->invalidateOptionsMenu()V

    .line 279
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mDoneButtonClickable:Z

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->setButtonClickable(Z)V

    .line 295
    return-void
.end method

.method private configureActivityTitle(Landroid/app/ActionBar;)V
    .locals 8
    .parameter "actionBar"

    .prologue
    const v7, 0x7f0d0413

    const v6, 0x7f0d0412

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 483
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v0

    .line 486
    .local v0, actionCode:I
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "CONTACT_SELECTION_TITLE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 487
    .local v1, title:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 488
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getSetTitleOnActionBar()Z

    move-result v2

    if-nez v2, :cond_0

    .line 489
    const-string v2, ""

    invoke-virtual {p1, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 613
    :goto_0
    return-void

    .line 491
    :cond_0
    invoke-virtual {p1, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 544
    :cond_1
    sparse-switch v0, :sswitch_data_0

    .line 608
    const-string v2, "SIMContactSelectionActivity"

    const-string v3, "configureActivityTitle : default"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 546
    :sswitch_0
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getSetTitleOnActionBar()Z

    move-result v2

    if-nez v2, :cond_2

    .line 547
    const-string v2, ""

    invoke-virtual {p1, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 548
    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_ReplaceLabelDualModeSim"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isUIMCard()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 554
    const v2, 0x7f0d02eb

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 555
    :cond_3
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 556
    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v3

    const-string v4, "vnd.sec.contact.sim"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v7, v2}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 559
    :cond_4
    const v2, 0x7f0d02ea

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 564
    :sswitch_1
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getSetTitleOnActionBar()Z

    move-result v2

    if-nez v2, :cond_5

    .line 565
    const-string v2, ""

    invoke-virtual {p1, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 566
    :cond_5
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_ReplaceLabelDualModeSim"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isUIMCard()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 572
    const v2, 0x7f0d00e3

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 573
    :cond_6
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 574
    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v3

    const-string v4, "vnd.sec.contact.sim"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v6, v2}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 577
    :cond_7
    const v2, 0x7f0d00e2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 582
    :sswitch_2
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getSetTitleOnActionBar()Z

    move-result v2

    if-nez v2, :cond_8

    .line 583
    const-string v2, ""

    invoke-virtual {p1, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 585
    :cond_8
    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v3

    const-string v4, "vnd.sec.contact.sim2"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v7, v2}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 591
    :sswitch_3
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getSetTitleOnActionBar()Z

    move-result v2

    if-nez v2, :cond_9

    .line 592
    const-string v2, ""

    invoke-virtual {p1, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 594
    :cond_9
    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v3

    const-string v4, "vnd.sec.contact.sim2"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v6, v2}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 600
    :sswitch_4
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getSetTitleOnActionBar()Z

    move-result v2

    if-nez v2, :cond_a

    .line 601
    const-string v2, ""

    invoke-virtual {p1, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 603
    :cond_a
    const v2, 0x7f0d03cd

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 544
    nop

    :sswitch_data_0
    .sparse-switch
        0x12c -> :sswitch_0
        0x136 -> :sswitch_1
        0x15e -> :sswitch_4
        0x190 -> :sswitch_2
        0x19a -> :sswitch_3
    .end sparse-switch
.end method

.method private configureComponenets()V
    .locals 11

    .prologue
    const/16 v5, 0x1e

    const/16 v10, 0x8

    const/4 v9, 0x5

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 301
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 302
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_2

    .line 306
    invoke-virtual {v0, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 311
    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->configureActivityTitle(Landroid/app/ActionBar;)V

    .line 374
    :goto_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Contact_EnableUIM"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "KDDI"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v5}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v5

    const/16 v6, 0x136

    if-ne v5, v6, :cond_5

    .line 377
    const v5, 0x7f090168

    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 378
    .local v4, ll:Landroid/widget/LinearLayout;
    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 379
    const v5, 0x7f090169

    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SearchView;

    iput-object v5, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    .line 380
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v5, v10}, Landroid/widget/SearchView;->setVisibility(I)V

    .line 395
    .end local v4           #ll:Landroid/widget/LinearLayout;
    :cond_1
    :goto_1
    invoke-virtual {p0, v7}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->setButtonClickable(Z)V

    .line 396
    const-string v5, "power"

    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    iput-object v5, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mPowerManager:Landroid/os/PowerManager;

    .line 397
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mPowerManager:Landroid/os/PowerManager;

    const/4 v6, 0x6

    const-string v7, "Sim_WakeLock"

    invoke-virtual {v5, v6, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 398
    return-void

    .line 314
    :cond_2
    const v5, 0x7f0900ee

    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 315
    .local v2, activityTitle:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v5}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v1

    .line 317
    .local v1, actionCode1:I
    const v5, 0x7f0900f3

    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->saveMenuItem:Landroid/view/View;

    .line 318
    const v5, 0x7f0900ef

    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->revertMenuItem:Landroid/view/View;

    .line 321
    const v5, 0x7f0900ed

    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 322
    .local v3, homeButton:Landroid/view/View;
    new-instance v5, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$1;

    invoke-direct {v5, p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$1;-><init>(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->saveMenuItem:Landroid/view/View;

    new-instance v6, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$2;

    invoke-direct {v6, p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$2;-><init>(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->revertMenuItem:Landroid/view/View;

    new-instance v6, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$3;

    invoke-direct {v6, p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$3;-><init>(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 345
    sparse-switch v1, :sswitch_data_0

    .line 369
    const-string v5, "SIMContactSelectionActivity"

    const-string v6, "configureComponenets : default"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 348
    :sswitch_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Contact_ReplaceLabelDualModeSim"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isUIMCard()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 351
    const v5, 0x7f0d02eb

    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 353
    :cond_3
    const v5, 0x7f0d02ea

    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 359
    :sswitch_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Contact_ReplaceLabelDualModeSim"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isUIMCard()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 362
    const v5, 0x7f0d00e3

    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 364
    :cond_4
    const v5, 0x7f0d00e2

    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 382
    .end local v1           #actionCode1:I
    .end local v2           #activityTitle:Landroid/widget/TextView;
    .end local v3           #homeButton:Landroid/view/View;
    :cond_5
    const v5, 0x7f090169

    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SearchView;

    iput-object v5, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    .line 383
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v5, v8}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 384
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v5}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 385
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v5}, Landroid/widget/SearchView;->clearFocus()V

    .line 386
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    const v6, 0x7f0d01df

    invoke-virtual {p0, v6}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 387
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v5, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 388
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    iget-object v5, v5, Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v5, v9, v7, v9, v7}, Landroid/widget/SearchView$SearchAutoComplete;->setPadding(IIII)V

    .line 389
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Framework_EnableThaiVietReshaping"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 392
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    const/4 v6, 0x0

    invoke-virtual {v5, v8, v6}, Landroid/widget/SearchView;->setLayerType(ILandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 345
    :sswitch_data_0
    .sparse-switch
        0x12c -> :sswitch_0
        0x136 -> :sswitch_1
        0x190 -> :sswitch_0
        0x19a -> :sswitch_1
    .end sparse-switch
.end method

.method private hideSoftKeyboard()V
    .locals 3

    .prologue
    .line 779
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 781
    .local v0, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    check-cast v1, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->getListView()Lcom/sec/android/touchwiz/widget/TwSweepActionListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwSweepActionListView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 783
    return-void
.end method

.method private setWindowBackground(Landroid/content/res/Configuration;)V
    .locals 6
    .parameter "config"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 256
    const v2, 0x7f09031e

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 257
    .local v0, mainView:Landroid/view/View;
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    invoke-virtual {v2}, Landroid/sec/multiwindow/MultiWindow;->isMultiWindow()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 258
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/Window;->setDimAmount(F)V

    .line 259
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 275
    :goto_0
    return-void

    .line 261
    :cond_0
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 262
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/Window;->setDimAmount(F)V

    .line 263
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 264
    .local v1, param:Landroid/view/WindowManager$LayoutParams;
    const/4 v2, -0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 265
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 273
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x7f04006e

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    goto :goto_0

    .line 267
    .end local v1           #param:Landroid/view/WindowManager$LayoutParams;
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x3f00

    invoke-virtual {v2, v3}, Landroid/view/Window;->setDimAmount(F)V

    .line 268
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 269
    .restart local v1       #param:Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00e3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 271
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1
.end method


# virtual methods
.method public configureListFragment()V
    .locals 6

    .prologue
    const/4 v5, -0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 672
    iget v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mActionCode:I

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 741
    :goto_0
    return-void

    .line 675
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mActionCode:I

    .line 676
    iget v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mActionCode:I

    sparse-switch v1, :sswitch_data_0

    .line 729
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid action code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mActionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 678
    :sswitch_0
    new-instance v0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;-><init>()V

    .line 679
    .local v0, fragment:Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;
    invoke-virtual {v0, v4}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setVisibleScrollbarEnabled(Z)V

    .line 680
    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 681
    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setVisibleTwIndexScrollbarEnabled(Z)V

    .line 682
    new-instance v1, Lcom/android/contacts/list/ContactListFilter;

    invoke-direct {v1, v5}, Lcom/android/contacts/list/ContactListFilter;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 683
    invoke-virtual {v0, v4}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setDirectorySearchMode(I)V

    .line 685
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->selectAllAtFirstLoad:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setSelectAllAtFirstLoad(Z)V

    .line 686
    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    .line 732
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->isLegacyCompatibilityMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactEntryListFragment;->setLegacyCompatibilityMode(Z)V

    .line 733
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactEntryListFragment;->setContactsRequest(Lcom/android/contacts/list/ContactsRequest;)V

    .line 734
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->isSearchMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactEntryListFragment;->setSearchMode(Z)V

    .line 735
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->getQueryString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Lcom/android/contacts/list/ContactEntryListFragment;->setQueryString(Ljava/lang/String;Z)V

    .line 736
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lcom/android/contacts/list/ContactEntryListFragment;->setDirectoryResultLimit(I)V

    .line 737
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v1, v3}, Lcom/android/contacts/list/ContactEntryListFragment;->setMultiSelectEnabled(Z)V

    .line 739
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f090161

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    goto/16 :goto_0

    .line 692
    .end local v0           #fragment:Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;
    :sswitch_1
    new-instance v0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;-><init>()V

    .line 693
    .restart local v0       #fragment:Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;
    invoke-virtual {v0, v4}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setVisibleScrollbarEnabled(Z)V

    .line 694
    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 695
    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setVisibleTwIndexScrollbarEnabled(Z)V

    .line 696
    new-instance v1, Lcom/android/contacts/list/ContactListFilter;

    const/16 v2, -0xb

    invoke-direct {v1, v2}, Lcom/android/contacts/list/ContactListFilter;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 697
    invoke-virtual {v0, v4}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setDirectorySearchMode(I)V

    .line 699
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->selectAllAtFirstLoad:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setSelectAllAtFirstLoad(Z)V

    .line 700
    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    goto :goto_1

    .line 704
    .end local v0           #fragment:Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;
    :sswitch_2
    new-instance v0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;-><init>()V

    .line 705
    .restart local v0       #fragment:Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;
    invoke-virtual {v0, v4}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setVisibleScrollbarEnabled(Z)V

    .line 706
    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 707
    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setSelectionVisible(Z)V

    .line 708
    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setVisibleTwIndexScrollbarEnabled(Z)V

    .line 709
    new-instance v1, Lcom/android/contacts/list/ContactListFilter;

    invoke-direct {v1, v5}, Lcom/android/contacts/list/ContactListFilter;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 710
    invoke-virtual {v0, v4}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setDirectorySearchMode(I)V

    .line 711
    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    goto/16 :goto_1

    .line 717
    .end local v0           #fragment:Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;
    :sswitch_3
    new-instance v0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;-><init>()V

    .line 718
    .restart local v0       #fragment:Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;
    invoke-virtual {v0, v4}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setVisibleScrollbarEnabled(Z)V

    .line 719
    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setSectionHeaderDisplayEnabled(Z)V

    .line 720
    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setSelectionVisible(Z)V

    .line 721
    invoke-virtual {v0, v3}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setVisibleTwIndexScrollbarEnabled(Z)V

    .line 722
    new-instance v1, Lcom/android/contacts/list/ContactListFilter;

    const/16 v2, -0x10

    invoke-direct {v1, v2}, Lcom/android/contacts/list/ContactListFilter;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 723
    invoke-virtual {v0, v4}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setDirectorySearchMode(I)V

    .line 724
    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    goto/16 :goto_1

    .line 676
    nop

    :sswitch_data_0
    .sparse-switch
        0x12c -> :sswitch_0
        0x136 -> :sswitch_1
        0x15e -> :sswitch_1
        0x190 -> :sswitch_2
        0x19a -> :sswitch_3
        0x1c2 -> :sswitch_3
    .end sparse-switch
.end method

.method public getActionCode()I
    .locals 1

    .prologue
    .line 1174
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mActionCode:I

    return v0
.end method

.method public isLocked(I)Z
    .locals 3
    .parameter "cardType"

    .prologue
    .line 795
    if-nez p1, :cond_0

    .line 796
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 801
    .local v0, mTelMan:Landroid/telephony/TelephonyManager;
    :goto_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 802
    const/4 v1, 0x1

    .line 804
    :goto_1
    return v1

    .line 798
    .end local v0           #mTelMan:Landroid/telephony/TelephonyManager;
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSecondary()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .restart local v0       #mTelMan:Landroid/telephony/TelephonyManager;
    goto :goto_0

    .line 804
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isSIM2Enabled()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 813
    const-string v0, "DSDS"

    invoke-static {v0}, Landroid/plugin/PlugInServiceManager;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/plugin/dsds/PlugInDsdsService;

    .line 815
    invoke-virtual {v0, v1}, Landroid/plugin/dsds/PlugInDsdsService;->hasIccCard(I)Z

    move-result v3

    .line 816
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "airplane_mode_on"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 819
    :goto_0
    if-eqz v3, :cond_1

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    return v0

    :cond_0
    move v0, v2

    .line 816
    goto :goto_0

    :cond_1
    move v0, v2

    .line 819
    goto :goto_1
.end method

.method public isSIMEnabled()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 786
    invoke-static {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->hasIccCard()Z

    move-result v1

    .line 787
    .local v1, isSIMEnabled:Z
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    move v0, v2

    .line 790
    .local v0, isAirplaneMode:Z
    :goto_0
    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    :goto_1
    return v2

    .end local v0           #isAirplaneMode:Z
    :cond_0
    move v0, v3

    .line 787
    goto :goto_0

    .restart local v0       #isAirplaneMode:Z
    :cond_1
    move v2, v3

    .line 790
    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, -0x1

    .line 1165
    if-ne p2, v3, :cond_0

    .line 1166
    const-string v0, "namecard_string"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1167
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1168
    const-string v2, "namecard_result"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->setResult(ILandroid/content/Intent;)V

    .line 1169
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->finish()V

    .line 1171
    :cond_0
    return-void
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1
    .parameter "fragment"

    .prologue
    .line 165
    instance-of v0, p1, Lcom/android/contacts/list/ContactEntryListFragment;

    if-eqz v0, :cond_0

    .line 166
    check-cast p1, Lcom/android/contacts/list/ContactEntryListFragment;

    .end local p1
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    .line 167
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->setupActionListener()V

    .line 169
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 623
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onBackPressed()V

    .line 624
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mImportTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;

    if-eqz v1, :cond_0

    .line 625
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mCanceled:Z

    .line 626
    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mImportTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;

    .line 628
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mExportTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;

    if-eqz v1, :cond_1

    .line 629
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mCanceled:Z

    .line 630
    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mExportTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;

    .line 633
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mDeleteTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask;

    if-eqz v1, :cond_2

    .line 634
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mCanceled:Z

    .line 635
    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mDeleteTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask;

    .line 637
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 638
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 640
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v2}, Lcom/android/contacts/preference/ContactsPreferences;->getDelete()Z

    move-result v2

    if-nez v2, :cond_5

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/contacts/preference/ContactsPreferences;->setDelete(Z)V

    .line 642
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_4

    .line 643
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->finish()V

    .line 645
    :cond_4
    return-void

    .line 640
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 451
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 452
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->setWindowBackground(Landroid/content/res/Configuration;)V

    .line 455
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->adjustActionBarMenuText(Landroid/content/res/Configuration;)V

    .line 456
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 1156
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactEntryListFragment;->getContextMenuAdapter()Lcom/android/contacts/widget/ContextMenuAdapter;

    move-result-object v0

    .line 1157
    .local v0, menuAdapter:Lcom/android/contacts/widget/ContextMenuAdapter;
    if-eqz v0, :cond_0

    .line 1158
    invoke-interface {v0, p1}, Lcom/android/contacts/widget/ContextMenuAdapter;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    .line 1160
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedState"

    .prologue
    const/4 v13, 0x1

    const/4 v3, 0x0

    const/4 v12, 0x0

    .line 173
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 176
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "SELECT_ALL_CONTACT_ON_LOAD"

    invoke-virtual {v2, v4, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->selectAllAtFirstLoad:Z

    .line 177
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "SHOW_CONFIRMATION_DIALOG"

    invoke-virtual {v2, v4, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->showConfirmationDialog:Z

    .line 178
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "simcopycallfromAAB"

    invoke-virtual {v2, v4, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->simcopycallfromAAB:Z

    .line 180
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isMultiWindowSupported(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mIsMultiWindowSupported:Z

    .line 183
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mIsMultiWindowSupported:Z

    if-eqz v2, :cond_0

    .line 184
    invoke-static {p0}, Landroid/sec/multiwindow/MultiWindow;->createInstance(Landroid/app/Activity;)Landroid/sec/multiwindow/MultiWindow;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    .line 187
    :cond_0
    const v2, 0x7f110011

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->setTheme(I)V

    .line 188
    if-eqz p1, :cond_1

    .line 189
    const-string v2, "actionCode"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mActionCode:I

    .line 190
    const-string v2, "mode"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mMode:I

    .line 194
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mIntentResolver:Lcom/android/contacts/list/ContactsIntentResolver;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/contacts/list/ContactsIntentResolver;->resolveIntent(Landroid/content/Intent;)Lcom/android/contacts/list/ContactsRequest;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    .line 195
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->isValid()Z

    move-result v2

    if-nez v2, :cond_2

    .line 196
    invoke-virtual {p0, v12}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->setResult(I)V

    .line 197
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->finish()V

    .line 253
    :goto_0
    return-void

    .line 202
    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v4, "CscFeature_Common_MyPhonebookBrandName"

    invoke-virtual {v2, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 204
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v4, "CP_Start"

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mCP_Start:I

    .line 206
    sget v2, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mCP_Start:I

    if-ne v2, v13, :cond_3

    .line 207
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 208
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v4, "account_name"

    const-string v5, "primary.sim.account_name"

    invoke-virtual {v2, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v4, "account_type"

    const-string v5, "vnd.sec.contact.sim"

    invoke-virtual {v2, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 212
    .local v1, checkUri:Landroid/net/Uri;
    if-eqz v0, :cond_3

    .line 213
    new-array v2, v13, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v12

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 214
    .local v9, cur:Landroid/database/Cursor;
    if-eqz v9, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_4

    .line 215
    new-instance v10, Landroid/content/Intent;

    const-string v2, "SIM_IMPORT_FINISHED"

    invoke-direct {v10, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 216
    .local v10, intent:Landroid/content/Intent;
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 217
    invoke-virtual {p0, v10}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 218
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->finish()V

    .line 227
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #checkUri:Landroid/net/Uri;
    .end local v9           #cur:Landroid/database/Cursor;
    .end local v10           #intent:Landroid/content/Intent;
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->getRedirectIntent()Landroid/content/Intent;

    move-result-object v11

    .line 228
    .local v11, redirect:Landroid/content/Intent;
    if-eqz v11, :cond_5

    .line 230
    invoke-virtual {p0, v11}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->startActivity(Landroid/content/Intent;)V

    .line 231
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->finish()V

    goto :goto_0

    .line 219
    .end local v11           #redirect:Landroid/content/Intent;
    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v1       #checkUri:Landroid/net/Uri;
    .restart local v9       #cur:Landroid/database/Cursor;
    :cond_4
    if-eqz v9, :cond_3

    .line 220
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 235
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #checkUri:Landroid/net/Uri;
    .end local v9           #cur:Landroid/database/Cursor;
    .restart local v11       #redirect:Landroid/content/Intent;
    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->getAccountName()Ljava/lang/String;

    move-result-object v6

    .line 236
    .local v6, accountName:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactsRequest;->getAccountType()Ljava/lang/String;

    move-result-object v7

    .line 238
    .local v7, accountType:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 239
    new-instance v2, Landroid/accounts/Account;

    invoke-direct {v2, v6, v7}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mAccount:Landroid/accounts/Account;

    .line 242
    :cond_6
    const v2, 0x7f04015f

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->setContentView(I)V

    .line 243
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->configureComponenets()V

    .line 244
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 245
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    .line 246
    .local v8, config:Landroid/content/res/Configuration;
    invoke-direct {p0, v8}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->setWindowBackground(Landroid/content/res/Configuration;)V

    .line 250
    .end local v8           #config:Landroid/content/res/Configuration;
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->configureListFragment()V

    .line 252
    new-instance v2, Lcom/android/contacts/preference/ContactsPreferences;

    invoke-direct {v2, p0}, Lcom/android/contacts/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    .line 402
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 403
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 404
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f12000b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 405
    const v1, 0x7f0903b5

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mMenuDone:Landroid/view/MenuItem;

    .line 406
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v1

    const/16 v2, 0x15e

    if-ne v1, v2, :cond_0

    .line 407
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mMenuDone:Landroid/view/MenuItem;

    if-eqz v1, :cond_0

    .line 408
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mMenuDone:Landroid/view/MenuItem;

    const v2, 0x7f0d0319

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 411
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 649
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onDestroy()V

    .line 651
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Common_MyPhonebookBrandName"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 653
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v1}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v1

    const/16 v2, 0x136

    if-ne v1, v2, :cond_0

    .line 654
    sget v1, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mCP_Start:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 655
    new-instance v0, Landroid/content/Intent;

    const-string v1, "SIM_IMPORT_FINISHED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 656
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 661
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 662
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->finish()V

    .line 664
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 423
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 439
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 426
    :sswitch_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    check-cast v0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->onCancel()V

    .line 427
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->finish()V

    move v0, v1

    .line 428
    goto :goto_0

    .line 430
    :sswitch_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mRequest:Lcom/android/contacts/list/ContactsRequest;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactsRequest;->getActionCode()I

    move-result v0

    const/16 v2, 0x15e

    if-ne v0, v2, :cond_0

    .line 431
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    check-cast v0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->onDeleteResult()V

    :goto_1
    move v0, v1

    .line 435
    goto :goto_0

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    check-cast v0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->onCopyResult()V

    goto :goto_1

    .line 423
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0903a5 -> :sswitch_0
        0x7f0903b5 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 459
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onPause()V

    .line 460
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mImportTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mHomeCheck:Z

    if-eqz v1, :cond_0

    .line 461
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mCanceled:Z

    .line 462
    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mImportTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ImportTask;

    .line 464
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mExportTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mHomeCheck:Z

    if-eqz v1, :cond_1

    .line 465
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mCanceled:Z

    .line 466
    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mExportTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$ExportTask;

    .line 469
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mDeleteTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mHomeCheck:Z

    if-eqz v1, :cond_2

    .line 470
    iput-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mCanceled:Z

    .line 471
    iput-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mDeleteTask:Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$DeleteTask;

    .line 474
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mHomeCheck:Z

    if-eqz v1, :cond_3

    .line 475
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 477
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v2}, Lcom/android/contacts/preference/ContactsPreferences;->getDelete()Z

    move-result v2

    if-nez v2, :cond_4

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/contacts/preference/ContactsPreferences;->setDelete(Z)V

    .line 479
    :cond_3
    return-void

    .line 477
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 416
    const-string v0, "SIMContactSelectionActivity"

    const-string v1, "onPrepareOptionsMenu"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mMenuDone:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mDoneButtonClickable:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 418
    const/4 v0, 0x1

    return v0
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 4
    .parameter "newText"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 763
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v0, p1, v1}, Lcom/android/contacts/list/ContactEntryListFragment;->setQueryString(Ljava/lang/String;Z)V

    .line 764
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    check-cast v0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setSearchMode(Z)V

    .line 765
    return v2

    :cond_0
    move v1, v2

    .line 764
    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .parameter "query"

    .prologue
    .line 770
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    .line 771
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    instance-of v0, v0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;

    if-eqz v0, :cond_0

    .line 772
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->hideSoftKeyboard()V

    .line 774
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 445
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 446
    const-string v0, "actionCode"

    iget v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mActionCode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 447
    const-string v0, "mode"

    iget v1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 448
    return-void
.end method

.method public onUserLeaveHint()V
    .locals 1

    .prologue
    .line 617
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onUserLeaveHint()V

    .line 618
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mHomeCheck:Z

    .line 619
    return-void
.end method

.method public onWindowStatusChanged(ZZZ)V
    .locals 1
    .parameter "isMaximized"
    .parameter "isMinimized"
    .parameter "isPinup"

    .prologue
    .line 1178
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mMW:Landroid/sec/multiwindow/MultiWindow;

    if-eqz v0, :cond_0

    .line 1179
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->setWindowBackground(Landroid/content/res/Configuration;)V

    .line 1181
    :cond_0
    return-void
.end method

.method protected setButtonClickable(Z)V
    .locals 4
    .parameter "clickable"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 744
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mDoneButtonClickable:Z

    .line 745
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mMenuDone:Landroid/view/MenuItem;

    if-eqz v2, :cond_2

    .line 746
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mMenuDone:Landroid/view/MenuItem;

    iget-boolean v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mDoneButtonClickable:Z

    if-eqz v3, :cond_1

    :goto_0
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 750
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 746
    goto :goto_0

    .line 747
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->saveMenuItem:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 748
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->saveMenuItem:Landroid/view/View;

    iget-boolean v3, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mDoneButtonClickable:Z

    if-eqz v3, :cond_3

    :goto_2
    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public setupActionListener()V
    .locals 3

    .prologue
    .line 753
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    instance-of v0, v0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;

    if-eqz v0, :cond_0

    .line 754
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    check-cast v0, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;

    new-instance v1, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$SIMContactPickerActionListener;-><init>(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/sim/SIMContactPickerFragment;->setOnSIMContactPickerActionListener(Lcom/sec/android/app/contacts/sim/OnSIMContactPickerActionListener;)V

    .line 759
    return-void

    .line 757
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported list fragment type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;->mListFragment:Lcom/android/contacts/list/ContactEntryListFragment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public showAlertDialogAndFinish(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1134
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$5;-><init>(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity$4;-><init>(Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1152
    return-void
.end method
