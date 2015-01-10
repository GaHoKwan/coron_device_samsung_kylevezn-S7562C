.class public Lcom/android/phone/callsettings/PhoneNumberLocator;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "PhoneNumberLocator.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/PhoneNumberLocator$UpdateVersionReceiver;
    }
.end annotation


# static fields
.field private static final SRC_TAGS:[Ljava/lang/String;

.field private static isLanguageChange:Z

.field private static state:Z


# instance fields
.field private final EVENT_COPY_FINISH:I

.field private final EVENT_DOWNLOAD_FINISH:I

.field private final EVENT_FILE_EXCEPTION:I

.field private final EVENT_HTTP_EXCEPTION:I

.field private final EVENT_USER_CANCELED:I

.field private final EVENT_VERSION_SAME:I

.field private autoUpdate:Z

.field private autoUpdatePreference:Landroid/preference/ListPreference;

.field private displayVersion:Ljava/lang/String;

.field private final extraSize:I

.field private isNeedRestartService:Z

.field mAlertDialog_EVENT_COPY_FINISH:Landroid/app/AlertDialog$Builder;

.field mAlertDialog_EVENT_DOWNLOAD_FINISH:Landroid/app/AlertDialog$Builder;

.field mAlertDialog_EVENT_FILE_EXCEPTION:Landroid/app/AlertDialog$Builder;

.field mAlertDialog_EVENT_HTTP_EXCEPTION:Landroid/app/AlertDialog$Builder;

.field mAlertDialog_EVENT_VERSION_SAME:Landroid/app/AlertDialog$Builder;

.field private mBinTmpFile:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mIsAutoUpdatingToast:Landroid/widget/Toast;

.field private mNumberRegionChecked:Landroid/preference/CheckBoxPreference;

.field private mNumberRegionOnOff:[I

.field private mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mReceiver:Lcom/android/phone/callsettings/PhoneNumberLocator$UpdateVersionReceiver;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field public mVersionInfo:Lcom/android/phone/callsettings/VersionInfo;

.field private mVersionTmpFile:Ljava/lang/String;

.field private mWLANOnly:Z

.field private mWLANUpdateOnlyChecked:Landroid/preference/CheckBoxPreference;

.field private manualUpdatePreference:Landroid/preference/PreferenceScreen;

.field private updateType:I

.field private version:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 155
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "%d"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/phone/callsettings/PhoneNumberLocator;->SRC_TAGS:[Ljava/lang/String;

    .line 208
    sput-boolean v2, Lcom/android/phone/callsettings/PhoneNumberLocator;->state:Z

    .line 1085
    sput-boolean v2, Lcom/android/phone/callsettings/PhoneNumberLocator;->isLanguageChange:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 90
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    .line 102
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->extraSize:I

    .line 148
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mNumberRegionOnOff:[I

    .line 184
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->EVENT_DOWNLOAD_FINISH:I

    .line 186
    iput v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->EVENT_HTTP_EXCEPTION:I

    .line 188
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->EVENT_FILE_EXCEPTION:I

    .line 190
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->EVENT_VERSION_SAME:I

    .line 192
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->EVENT_COPY_FINISH:I

    .line 194
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->EVENT_USER_CANCELED:I

    .line 227
    new-instance v0, Lcom/android/phone/callsettings/PhoneNumberLocator$1;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/PhoneNumberLocator$1;-><init>(Lcom/android/phone/callsettings/PhoneNumberLocator;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mHandler:Landroid/os/Handler;

    .line 1081
    iput-object v2, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mVersionTmpFile:Ljava/lang/String;

    .line 1083
    iput-object v2, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mBinTmpFile:Ljava/lang/String;

    .line 1363
    return-void

    .line 148
    nop

    :array_0
    .array-data 0x4
        0x82t 0x4t 0xet 0x7ft
        0x83t 0x4t 0xet 0x7ft
    .end array-data
.end method

.method private InitAutoUpdate()V
    .locals 4

    .prologue
    .line 982
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;->PNL_AUTO_UPDATE:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 987
    .local v0, sharedPreferences:Landroid/content/SharedPreferences$Editor;
    const-string v1, "autoUpdate"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 988
    const-string v1, "autoUpdateInit"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 989
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 990
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 90
    sget-boolean v0, Lcom/android/phone/callsettings/PhoneNumberLocator;->isLanguageChange:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/phone/callsettings/PhoneNumberLocator;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/PhoneNumberLocator;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/callsettings/PhoneNumberLocator;)Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/phone/callsettings/PhoneNumberLocator;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/callsettings/PhoneNumberLocator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->restartService()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/callsettings/PhoneNumberLocator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->refreshVersion()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/callsettings/PhoneNumberLocator;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/android/phone/callsettings/PhoneNumberLocator;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 90
    sget-boolean v0, Lcom/android/phone/callsettings/PhoneNumberLocator;->state:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/phone/callsettings/PhoneNumberLocator;)Landroid/widget/Toast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mIsAutoUpdatingToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/phone/callsettings/PhoneNumberLocator;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->isNeedRestartService:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/phone/callsettings/PhoneNumberLocator;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->startDownloadThread()V

    return-void
.end method

.method private createDialog()V
    .locals 3

    .prologue
    const v2, 0x7f0e02d4

    .line 628
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e048e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/callsettings/PhoneNumberLocator$3;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/PhoneNumberLocator$3;-><init>(Lcom/android/phone/callsettings/PhoneNumberLocator;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mAlertDialog_EVENT_VERSION_SAME:Landroid/app/AlertDialog$Builder;

    .line 648
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mAlertDialog_EVENT_VERSION_SAME:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 651
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e0496

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/callsettings/PhoneNumberLocator$4;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/PhoneNumberLocator$4;-><init>(Lcom/android/phone/callsettings/PhoneNumberLocator;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mAlertDialog_EVENT_COPY_FINISH:Landroid/app/AlertDialog$Builder;

    .line 669
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mAlertDialog_EVENT_COPY_FINISH:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 672
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e0487

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/callsettings/PhoneNumberLocator$5;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/PhoneNumberLocator$5;-><init>(Lcom/android/phone/callsettings/PhoneNumberLocator;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mAlertDialog_EVENT_DOWNLOAD_FINISH:Landroid/app/AlertDialog$Builder;

    .line 690
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mAlertDialog_EVENT_DOWNLOAD_FINISH:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 693
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e0491

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/callsettings/PhoneNumberLocator$6;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/PhoneNumberLocator$6;-><init>(Lcom/android/phone/callsettings/PhoneNumberLocator;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mAlertDialog_EVENT_HTTP_EXCEPTION:Landroid/app/AlertDialog$Builder;

    .line 713
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mAlertDialog_EVENT_HTTP_EXCEPTION:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 716
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e0492

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/callsettings/PhoneNumberLocator$7;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/PhoneNumberLocator$7;-><init>(Lcom/android/phone/callsettings/PhoneNumberLocator;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mAlertDialog_EVENT_FILE_EXCEPTION:Landroid/app/AlertDialog$Builder;

    .line 734
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mAlertDialog_EVENT_FILE_EXCEPTION:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 736
    return-void
.end method

.method private enablePNLService(Z)V
    .locals 4
    .parameter

    .prologue
    .line 995
    if-eqz p1, :cond_1

    .line 997
    sget-boolean v0, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;->isServiceStarted:Z

    if-nez v0, :cond_0

    .line 999
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1013
    :cond_0
    :goto_0
    return-void

    .line 1005
    :cond_1
    sget-boolean v0, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;->isServiceStarted:Z

    if-eqz v0, :cond_0

    .line 1007
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->stopService(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method private getDataFromDB()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 792
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget-object v3, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;->PNL_AUTO_UPDATE:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 799
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v2, "updateType"

    const/4 v3, 0x2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->updateType:I

    .line 803
    const-string v2, "WLANOnly"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mWLANOnly:Z

    .line 805
    const-string v2, "autoUpdateInit"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 806
    .local v0, autoUpdateInit:Z
    if-nez v0, :cond_0

    .line 807
    invoke-direct {p0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->InitAutoUpdate()V

    .line 810
    :cond_0
    const-string v2, "autoUpdate"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->autoUpdate:Z

    .line 811
    return-void
.end method

.method private initLocalnumberDBDownloader()V
    .locals 2

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    if-nez v0, :cond_0

    .line 381
    new-instance v0, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    invoke-direct {v0}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;-><init>()V

    iput-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->setContext(Landroid/content/Context;)V

    .line 385
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->setTypeAuto(Z)V

    .line 387
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->setCallback(Landroid/os/Handler;)V

    .line 389
    return-void
.end method

.method public static isUSMEnabled(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 1376
    const/4 v1, 0x0

    .line 1377
    .local v1, isUSMEnabled:Z
    const-string v2, "ultimate_standby_mode"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1379
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "usm_setting"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1380
    const/4 v1, 0x1

    .line 1387
    :cond_0
    :goto_0
    return v1

    .line 1382
    :catch_0
    move-exception v0

    .line 1383
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1392
    const-string v0, "PhoneNumberLocator"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1
    .parameter "msg"
    .parameter "always"

    .prologue
    .line 1399
    const-string v0, "PhoneNumberLocator"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1401
    return-void
.end method

.method private refreshVersion()V
    .locals 2

    .prologue
    .line 741
    invoke-virtual {p0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->getVersionInfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->displayVersion:Ljava/lang/String;

    .line 744
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->displayVersion:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 746
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->version:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->displayVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 750
    :cond_0
    return-void
.end method

.method private restartService()V
    .locals 4

    .prologue
    .line 1352
    iget-boolean v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->isNeedRestartService:Z

    if-eqz v0, :cond_0

    .line 1354
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1356
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->isNeedRestartService:Z

    .line 1358
    return-void
.end method

.method private saveAutoUpdate(Z)V
    .locals 4
    .parameter "autoUpdate"

    .prologue
    .line 966
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;->PNL_AUTO_UPDATE:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 975
    .local v0, sharedPreferences:Landroid/content/SharedPreferences$Editor;
    const-string v1, "autoUpdate"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 977
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 979
    return-void
.end method

.method private saveUdateType(I)V
    .locals 4
    .parameter "updateType"

    .prologue
    .line 948
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;->PNL_AUTO_UPDATE:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 957
    .local v0, sharedPreferences:Landroid/content/SharedPreferences$Editor;
    const-string v1, "updateType"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 959
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 961
    return-void
.end method

.method private saveWLANOnly(Z)V
    .locals 4
    .parameter "WLANOnly"

    .prologue
    .line 1018
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/android/phone/callsettings/PhoneNumberLocatorRegisterService;->PNL_AUTO_UPDATE:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1027
    .local v0, sharedPreferences:Landroid/content/SharedPreferences$Editor;
    const-string v1, "WLANOnly"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1029
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1031
    return-void
.end method

.method private startDownloadThread()V
    .locals 6

    .prologue
    .line 1093
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1097
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f0e0486

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 1104
    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v2, Lcom/android/phone/callsettings/PhoneNumberLocator$8;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/PhoneNumberLocator$8;-><init>(Lcom/android/phone/callsettings/PhoneNumberLocator;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1119
    const-string v1, "Long running dialog(show)"

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/PhoneNumberLocator;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1129
    :try_start_2
    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    if-eqz v1, :cond_0

    .line 1131
    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->startDownloadThread()V

    .line 1141
    :cond_0
    :goto_0
    return-void

    .line 1121
    :catch_0
    move-exception v0

    .line 1123
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Error while mProgressDialog working"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/phone/callsettings/PhoneNumberLocator;->log(Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1133
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1135
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized dismiss()V
    .locals 1

    .prologue
    .line 1146
    monitor-enter p0

    :try_start_0
    const-string v0, "mProgressDialog dismiss()"

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->log(Ljava/lang/String;)V

    .line 1148
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 1150
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mProgressDialog:Landroid/app/ProgressDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1156
    :cond_0
    monitor-exit p0

    return-void

    .line 1146
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getVersionInfo()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1038
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/data/com.android.phone/HomeLocationVersion.bin"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1040
    .local v1, myFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1042
    iget-object v2, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    if-eqz v2, :cond_0

    .line 1044
    iget-object v2, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    const-string v3, "/data/data/com.android.phone/HomeLocationVersion.bin"

    invoke-virtual {v2, v3}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->getVersionInfo(Ljava/lang/String;)Lcom/android/phone/callsettings/VersionInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mVersionInfo:Lcom/android/phone/callsettings/VersionInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1062
    .end local v1           #myFile:Ljava/io/File;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mVersionInfo:Lcom/android/phone/callsettings/VersionInfo;

    if-eqz v2, :cond_2

    .line 1066
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "version is :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mVersionInfo:Lcom/android/phone/callsettings/VersionInfo;

    iget-object v3, v3, Lcom/android/phone/callsettings/VersionInfo;->version:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " displayVersion is :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mVersionInfo:Lcom/android/phone/callsettings/VersionInfo;

    iget-object v3, v3, Lcom/android/phone/callsettings/VersionInfo;->displayVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mVersionInfo:Lcom/android/phone/callsettings/VersionInfo;

    iget-object v3, v3, Lcom/android/phone/callsettings/VersionInfo;->lastUpdate:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/android/phone/callsettings/PhoneNumberLocator;->log(Ljava/lang/String;Z)V

    .line 1072
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mVersionInfo:Lcom/android/phone/callsettings/VersionInfo;

    iget-object v3, v3, Lcom/android/phone/callsettings/VersionInfo;->displayVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mVersionInfo:Lcom/android/phone/callsettings/VersionInfo;

    iget-object v3, v3, Lcom/android/phone/callsettings/VersionInfo;->lastUpdate:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1076
    :goto_1
    return-object v2

    .line 1048
    .restart local v1       #myFile:Ljava/io/File;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    if-eqz v2, :cond_0

    .line 1050
    iget-object v2, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    const-string v3, "/system/etc/HomeLocationVersion.bin"

    invoke-virtual {v2, v3}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->getVersionInfo(Ljava/lang/String;)Lcom/android/phone/callsettings/VersionInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mVersionInfo:Lcom/android/phone/callsettings/VersionInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1054
    .end local v1           #myFile:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 1056
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1076
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 396
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 398
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0e049c

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mIsAutoUpdatingToast:Landroid/widget/Toast;

    .line 402
    invoke-direct {p0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->initLocalnumberDBDownloader()V

    .line 404
    const v1, 0x7f06002a

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 406
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 408
    const-string v1, "number_region_activation_preference"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mNumberRegionChecked:Landroid/preference/CheckBoxPreference;

    .line 411
    new-instance v1, Lcom/android/phone/callsettings/PhoneNumberLocator$UpdateVersionReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/phone/callsettings/PhoneNumberLocator$UpdateVersionReceiver;-><init>(Lcom/android/phone/callsettings/PhoneNumberLocator;Lcom/android/phone/callsettings/PhoneNumberLocator$1;)V

    iput-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mReceiver:Lcom/android/phone/callsettings/PhoneNumberLocator$UpdateVersionReceiver;

    .line 413
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 415
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.sec.action.UPDATE_VERSION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 417
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mReceiver:Lcom/android/phone/callsettings/PhoneNumberLocator$UpdateVersionReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 420
    invoke-direct {p0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->getDataFromDB()V

    .line 423
    const-string v1, "manual_update_preference"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->manualUpdatePreference:Landroid/preference/PreferenceScreen;

    .line 425
    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->manualUpdatePreference:Landroid/preference/PreferenceScreen;

    new-instance v2, Lcom/android/phone/callsettings/PhoneNumberLocator$2;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/PhoneNumberLocator$2;-><init>(Lcom/android/phone/callsettings/PhoneNumberLocator;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 509
    const-string v1, "version_preference"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->version:Landroid/preference/PreferenceScreen;

    .line 514
    const-string v1, "auto_update_preference"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->autoUpdatePreference:Landroid/preference/ListPreference;

    .line 519
    iget-boolean v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->autoUpdate:Z

    if-nez v1, :cond_1

    .line 521
    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->autoUpdatePreference:Landroid/preference/ListPreference;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 523
    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->autoUpdatePreference:Landroid/preference/ListPreference;

    const v2, 0x7f0e047b

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 572
    :goto_0
    const-string v1, "wlan_update_only_preference"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mWLANUpdateOnlyChecked:Landroid/preference/CheckBoxPreference;

    .line 574
    iget-boolean v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mWLANOnly:Z

    if-nez v1, :cond_0

    .line 576
    const-string v1, "wlan not available in oncreate"

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/PhoneNumberLocator;->log(Ljava/lang/String;)V

    .line 583
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 585
    return-void

    .line 527
    :cond_1
    iget v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->updateType:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 531
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->autoUpdatePreference:Landroid/preference/ListPreference;

    const-string v2, "2"

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 533
    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->autoUpdatePreference:Landroid/preference/ListPreference;

    const v2, 0x7f0e047c

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 539
    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->autoUpdatePreference:Landroid/preference/ListPreference;

    const-string v2, "3"

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 541
    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->autoUpdatePreference:Landroid/preference/ListPreference;

    const v2, 0x7f0e049a

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 547
    :pswitch_2
    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->autoUpdatePreference:Landroid/preference/ListPreference;

    const-string v2, "4"

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 549
    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->autoUpdatePreference:Landroid/preference/ListPreference;

    const v2, 0x7f0e049b

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 527
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v2, 0x0

    .line 1162
    const v0, 0x7f0e0488

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02054c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1166
    const/4 v0, 0x1

    const v1, 0x7f0e0485

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020544

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1170
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 757
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 759
    const-string v0, "null != mProgressDialog"

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->log(Ljava/lang/String;)V

    .line 761
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 763
    iput-object v2, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 767
    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    if-eqz v0, :cond_1

    .line 769
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    invoke-virtual {v0, v2}, Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;->setCallback(Landroid/os/Handler;)V

    .line 771
    iput-object v2, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mPhoneNumberLocatorDownloader:Lcom/android/phone/callsettings/PhoneNumberLocatorDownloader;

    .line 775
    :cond_1
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 777
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mReceiver:Lcom/android/phone/callsettings/PhoneNumberLocator$UpdateVersionReceiver;

    if-eqz v0, :cond_2

    .line 779
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mReceiver:Lcom/android/phone/callsettings/PhoneNumberLocator$UpdateVersionReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 781
    iput-object v2, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mReceiver:Lcom/android/phone/callsettings/PhoneNumberLocator$UpdateVersionReceiver;

    .line 785
    :cond_2
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/callsettings/PhoneNumberLocator;->state:Z

    .line 787
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 1186
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 1189
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1255
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1193
    :pswitch_0
    const-string v0, "MENU_RESET_TO_DEFAULT"

    invoke-direct {p0, v0, v6}, Lcom/android/phone/callsettings/PhoneNumberLocator;->log(Ljava/lang/String;Z)V

    .line 1195
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e0488

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e0489

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e02d4

    new-instance v2, Lcom/android/phone/callsettings/PhoneNumberLocator$10;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/PhoneNumberLocator$10;-><init>(Lcom/android/phone/callsettings/PhoneNumberLocator;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e02d5

    new-instance v2, Lcom/android/phone/callsettings/PhoneNumberLocator$9;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/PhoneNumberLocator$9;-><init>(Lcom/android/phone/callsettings/PhoneNumberLocator;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    move v0, v6

    .line 1233
    goto :goto_0

    .line 1237
    :pswitch_1
    const-string v0, "MENU_HELP"

    invoke-direct {p0, v0, v6}, Lcom/android/phone/callsettings/PhoneNumberLocator;->log(Ljava/lang/String;Z)V

    .line 1243
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1245
    const-class v0, Lcom/android/phone/callsettings/PhoneNumberLocatorHelp;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    const v5, 0x7f0e0485

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    move v0, v6

    .line 1247
    goto :goto_0

    .line 1189
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 592
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 594
    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 597
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/callsettings/PhoneNumberLocator;->state:Z

    .line 599
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 941
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 1177
    invoke-super {p0, p1}, Landroid/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 1179
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 606
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    .line 608
    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 610
    invoke-direct {p0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->refreshVersion()V

    .line 612
    invoke-direct {p0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->createDialog()V

    .line 614
    sput-boolean v2, Lcom/android/phone/callsettings/PhoneNumberLocator;->state:Z

    .line 616
    const-string v1, "ultimate_standby_mode"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 617
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/callsettings/PhoneNumberLocator;->isUSMEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 618
    .local v0, isUSMEnabled:Z
    iget-object v4, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->manualUpdatePreference:Landroid/preference/PreferenceScreen;

    if-nez v0, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 619
    iget-object v4, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->autoUpdatePreference:Landroid/preference/ListPreference;

    if-nez v0, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 620
    iget-object v1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mWLANUpdateOnlyChecked:Landroid/preference/CheckBoxPreference;

    if-nez v0, :cond_3

    :goto_2
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 622
    .end local v0           #isUSMEnabled:Z
    :cond_0
    return-void

    .restart local v0       #isUSMEnabled:Z
    :cond_1
    move v1, v3

    .line 618
    goto :goto_0

    :cond_2
    move v1, v3

    .line 619
    goto :goto_1

    :cond_3
    move v2, v3

    .line 620
    goto :goto_2
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 8
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 818
    const-string v6, "onSharedPreferenceChanged"

    invoke-direct {p0, v6, v4}, Lcom/android/phone/callsettings/PhoneNumberLocator;->log(Ljava/lang/String;Z)V

    .line 822
    const-string v6, "auto_update_preference"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 824
    const-string v6, "KEY_AUTO_UPDATE"

    invoke-direct {p0, v6, v4}, Lcom/android/phone/callsettings/PhoneNumberLocator;->log(Ljava/lang/String;Z)V

    .line 826
    const-string v6, "3"

    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 828
    .local v2, type:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onSharedPreferenceChanged the type is :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/callsettings/PhoneNumberLocator;->log(Ljava/lang/String;)V

    .line 830
    const-string v6, "1"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 832
    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/PhoneNumberLocator;->saveAutoUpdate(Z)V

    .line 834
    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/PhoneNumberLocator;->enablePNLService(Z)V

    .line 836
    iget-object v6, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->autoUpdatePreference:Landroid/preference/ListPreference;

    const v7, 0x7f0e047b

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(I)V

    .line 891
    .end local v2           #type:Ljava/lang/String;
    :cond_0
    :goto_0
    const-string v6, "number_region_activation_preference"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 893
    invoke-interface {p1, p2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_6

    move v1, v4

    .line 897
    .local v1, numberregion_checked:I
    :goto_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "number_region_activation_preference"

    invoke-static {v6, v7, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 903
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "numberregion_checked: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/callsettings/PhoneNumberLocator;->log(Ljava/lang/String;)V

    .line 906
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "number_region_activation_preference"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 912
    .local v0, numberRegionActivited:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "numberRegionActivited: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/PhoneNumberLocator;->log(Ljava/lang/String;)V

    .line 915
    iget-object v5, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mNumberRegionChecked:Landroid/preference/CheckBoxPreference;

    iget-object v6, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mNumberRegionOnOff:[I

    aget v6, v6, v1

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(I)V

    .line 922
    .end local v0           #numberRegionActivited:I
    .end local v1           #numberregion_checked:I
    :cond_1
    const-string v5, "wlan_update_only_preference"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 924
    const-string v5, "KEY_WLAN_UPDATE"

    invoke-direct {p0, v5}, Lcom/android/phone/callsettings/PhoneNumberLocator;->log(Ljava/lang/String;)V

    .line 926
    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 928
    .local v3, wlanUpdate:Ljava/lang/Boolean;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/phone/callsettings/PhoneNumberLocator;->saveWLANOnly(Z)V

    .line 932
    .end local v3           #wlanUpdate:Ljava/lang/Boolean;
    :cond_2
    return-void

    .line 838
    .restart local v2       #type:Ljava/lang/String;
    :cond_3
    const-string v6, "2"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 840
    invoke-direct {p0, v4}, Lcom/android/phone/callsettings/PhoneNumberLocator;->saveAutoUpdate(Z)V

    .line 842
    invoke-direct {p0, v4}, Lcom/android/phone/callsettings/PhoneNumberLocator;->enablePNLService(Z)V

    .line 844
    invoke-direct {p0, v4}, Lcom/android/phone/callsettings/PhoneNumberLocator;->saveUdateType(I)V

    .line 846
    iget-object v6, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->autoUpdatePreference:Landroid/preference/ListPreference;

    const v7, 0x7f0e047c

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_0

    .line 848
    :cond_4
    const-string v6, "3"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 850
    invoke-direct {p0, v4}, Lcom/android/phone/callsettings/PhoneNumberLocator;->saveAutoUpdate(Z)V

    .line 852
    invoke-direct {p0, v4}, Lcom/android/phone/callsettings/PhoneNumberLocator;->enablePNLService(Z)V

    .line 854
    const/4 v6, 0x2

    invoke-direct {p0, v6}, Lcom/android/phone/callsettings/PhoneNumberLocator;->saveUdateType(I)V

    .line 856
    iget-object v6, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->autoUpdatePreference:Landroid/preference/ListPreference;

    const v7, 0x7f0e049a

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_0

    .line 858
    :cond_5
    const-string v6, "4"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 860
    invoke-direct {p0, v4}, Lcom/android/phone/callsettings/PhoneNumberLocator;->saveAutoUpdate(Z)V

    .line 862
    invoke-direct {p0, v4}, Lcom/android/phone/callsettings/PhoneNumberLocator;->enablePNLService(Z)V

    .line 864
    const/4 v6, 0x3

    invoke-direct {p0, v6}, Lcom/android/phone/callsettings/PhoneNumberLocator;->saveUdateType(I)V

    .line 866
    iget-object v6, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->autoUpdatePreference:Landroid/preference/ListPreference;

    const v7, 0x7f0e049b

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_0

    .end local v2           #type:Ljava/lang/String;
    :cond_6
    move v1, v5

    .line 893
    goto/16 :goto_1
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1319
    const-string v0, "onStop"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/callsettings/PhoneNumberLocator;->log(Ljava/lang/String;Z)V

    .line 1335
    iput-object v2, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mAlertDialog_EVENT_VERSION_SAME:Landroid/app/AlertDialog$Builder;

    .line 1337
    iput-object v2, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mAlertDialog_EVENT_COPY_FINISH:Landroid/app/AlertDialog$Builder;

    .line 1339
    iput-object v2, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mAlertDialog_EVENT_DOWNLOAD_FINISH:Landroid/app/AlertDialog$Builder;

    .line 1341
    iput-object v2, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mAlertDialog_EVENT_HTTP_EXCEPTION:Landroid/app/AlertDialog$Builder;

    .line 1343
    iput-object v2, p0, Lcom/android/phone/callsettings/PhoneNumberLocator;->mAlertDialog_EVENT_FILE_EXCEPTION:Landroid/app/AlertDialog$Builder;

    .line 1345
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onStop()V

    .line 1347
    return-void
.end method

.method public startCopyThread()V
    .locals 3

    .prologue
    .line 1266
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->dismiss()V

    .line 1268
    new-instance v1, Lcom/android/phone/callsettings/PhoneNumberLocator$11;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/PhoneNumberLocator$11;-><init>(Lcom/android/phone/callsettings/PhoneNumberLocator;)V

    .line 1302
    .local v1, r:Ljava/lang/Runnable;
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1310
    .end local v1           #r:Ljava/lang/Runnable;
    :goto_0
    return-void

    .line 1304
    :catch_0
    move-exception v0

    .line 1306
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
