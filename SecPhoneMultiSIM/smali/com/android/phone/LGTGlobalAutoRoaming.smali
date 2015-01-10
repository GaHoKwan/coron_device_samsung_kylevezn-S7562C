.class public Lcom/android/phone/LGTGlobalAutoRoaming;
.super Landroid/preference/PreferenceActivity;
.source "LGTGlobalAutoRoaming.java"


# static fields
.field private static final DBG:Z

.field private static mCardNum:I

.field private static state:I


# instance fields
.field private final BUTTON_ROAMING_KEY:Ljava/lang/String;

.field private final CUSTOMER_CENTER:Ljava/lang/String;

.field private final LGT_BIP_FAIL:Ljava/lang/String;

.field private final LGT_BIP_SUCCESS:Ljava/lang/String;

.field private final LGT_BIP_UNSUCCESS:Ljava/lang/String;

.field private addRoamingCountry:Landroid/preference/PreferenceScreen;

.field private autoDialSetting:Landroid/preference/PreferenceScreen;

.field private customCenterKey:Landroid/preference/PreferenceScreen;

.field private mButtonDataRoam:Landroid/preference/CheckBoxPreference;

.field public mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mNetworkSetting:Landroid/preference/PreferenceScreen;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mStkService:Lcom/android/internal/telephony/cat/AppInterface;

.field private roamingClock:Landroid/preference/PreferenceScreen;

.field private roamingCustomerCenter:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 54
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/phone/LGTGlobalAutoRoaming;->DBG:Z

    .line 60
    sput v1, Lcom/android/phone/LGTGlobalAutoRoaming;->mCardNum:I

    .line 62
    sput v1, Lcom/android/phone/LGTGlobalAutoRoaming;->state:I

    return-void

    :cond_0
    move v0, v1

    .line 54
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 50
    const-string v0, "0234167010"

    iput-object v0, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->CUSTOMER_CENTER:Ljava/lang/String;

    .line 51
    const-string v0, "button_roaming_key"

    iput-object v0, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->BUTTON_ROAMING_KEY:Ljava/lang/String;

    .line 57
    iput-object v1, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 58
    iput-object v1, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mStkService:Lcom/android/internal/telephony/cat/AppInterface;

    .line 64
    const-string v0, "com.sec.android.lgt.bip.SUCCESS"

    iput-object v0, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->LGT_BIP_SUCCESS:Ljava/lang/String;

    .line 65
    const-string v0, "com.sec.android.lgt.bip.UNSUCCESS"

    iput-object v0, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->LGT_BIP_UNSUCCESS:Ljava/lang/String;

    .line 66
    const-string v0, "com.sec.android.lgt.bip.FAIL"

    iput-object v0, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->LGT_BIP_FAIL:Ljava/lang/String;

    .line 71
    new-instance v0, Lcom/android/phone/LGTGlobalAutoRoaming$1;

    invoke-direct {v0, p0}, Lcom/android/phone/LGTGlobalAutoRoaming$1;-><init>(Lcom/android/phone/LGTGlobalAutoRoaming;)V

    iput-object v0, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/LGTGlobalAutoRoaming;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/phone/LGTGlobalAutoRoaming;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/phone/LGTGlobalAutoRoaming;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/phone/LGTGlobalAutoRoaming;->onReceiveBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/LGTGlobalAutoRoaming;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/LGTGlobalAutoRoaming;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/phone/LGTGlobalAutoRoaming;->enableDataConnection(Z)V

    return-void
.end method

.method private dataRoamingSettingDialog()V
    .locals 3

    .prologue
    .line 221
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 222
    .local v0, dataRoamingDlg:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0e05c0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 223
    const v1, 0x7f0e05c1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 224
    const v1, 0x7f0e05c2

    new-instance v2, Lcom/android/phone/LGTGlobalAutoRoaming$3;

    invoke-direct {v2, p0}, Lcom/android/phone/LGTGlobalAutoRoaming$3;-><init>(Lcom/android/phone/LGTGlobalAutoRoaming;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 233
    const v1, 0x7f0e05c3

    new-instance v2, Lcom/android/phone/LGTGlobalAutoRoaming$4;

    invoke-direct {v2, p0}, Lcom/android/phone/LGTGlobalAutoRoaming$4;-><init>(Lcom/android/phone/LGTGlobalAutoRoaming;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 238
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 239
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 240
    return-void
.end method

.method private enableDataConnection(Z)V
    .locals 6
    .parameter "enable"

    .prologue
    .line 286
    const-string v3, "GlobalAutoRoaming"

    const-string v4, "enableDataConnection() - start"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 288
    .local v1, phoneMgr:Lcom/android/internal/telephony/ITelephony;
    iget-object v3, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 289
    .local v2, wm:Landroid/net/wifi/WifiManager;
    if-eqz v1, :cond_1

    .line 291
    if-eqz p1, :cond_2

    .line 292
    :try_start_0
    const-string v3, "GlobalAutoRoaming"

    const-string v4, "enableDataConnection() - enable"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v3

    if-nez v3, :cond_0

    .line 294
    const-string v3, "default"

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/ITelephony;->enableApnType(Ljava/lang/String;)I

    .line 296
    :cond_0
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->enableDataConnectivity()Z

    .line 306
    :cond_1
    :goto_0
    return-void

    .line 298
    :cond_2
    const-string v3, "GlobalAutoRoaming"

    const-string v4, "enableDataConnection() - disable"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const-string v3, "default"

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/ITelephony;->disableApnType(Ljava/lang/String;)I

    .line 300
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->disableDataConnectivity()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 302
    :catch_0
    move-exception v0

    .line 303
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "GlobalAutoRoaming"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Mobile data operation failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private errorDialog()V
    .locals 3

    .prologue
    .line 244
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0e05c6

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e05c7

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 245
    .local v0, noAccess:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0e05c8

    new-instance v2, Lcom/android/phone/LGTGlobalAutoRoaming$5;

    invoke-direct {v2, p0}, Lcom/android/phone/LGTGlobalAutoRoaming$5;-><init>(Lcom/android/phone/LGTGlobalAutoRoaming;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 250
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 251
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 252
    return-void
.end method

.method private onReceiveBroadcast(Landroid/content/Intent;)V
    .locals 8
    .parameter "intent"

    .prologue
    const v7, 0x7f0e05cc

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 341
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, action:Ljava/lang/String;
    const-string v1, ""

    .line 343
    .local v1, message:Ljava/lang/String;
    const-string v2, "GlobalAutoRoaming"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceiveBroadcast action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v2, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 345
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 346
    const-string v2, "state"

    invoke-virtual {p1, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 347
    iget-object v2, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->addRoamingCountry:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 348
    iget-object v2, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->customCenterKey:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 354
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_2

    .line 355
    const-string v2, "com.sec.android.lgt.bip.SUCCESS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 356
    iget-object v2, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e05cb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 364
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 365
    iget-object v2, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 366
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 368
    :cond_2
    return-void

    .line 350
    :cond_3
    iget-object v2, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->addRoamingCountry:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v6}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 351
    iget-object v2, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->customCenterKey:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v6}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    goto :goto_0

    .line 357
    :cond_4
    const-string v2, "com.sec.android.lgt.bip.UNSUCCESS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 358
    iget-object v2, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 359
    :cond_5
    const-string v2, "com.sec.android.lgt.bip.FAIL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 360
    iget-object v2, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e05be

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 361
    :cond_6
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 362
    iget-object v2, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private sendEnvelope()V
    .locals 2

    .prologue
    .line 268
    const-string v0, "GlobalAutoRoaming"

    const-string v1, "sendEnvelope to trigger BIP!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-direct {p0}, Lcom/android/phone/LGTGlobalAutoRoaming;->showDownloadProgressDialog()V

    .line 270
    iget-object v0, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mStkService:Lcom/android/internal/telephony/cat/AppInterface;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mStkService:Lcom/android/internal/telephony/cat/AppInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/cat/AppInterface;->sendEnvelopeToTriggerBip()V

    .line 273
    :cond_0
    return-void
.end method

.method private showDownloadProgressDialog()V
    .locals 6

    .prologue
    .line 309
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 311
    iget-object v2, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e05c9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 312
    iget-object v2, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 313
    new-instance v0, Lcom/android/phone/LGTGlobalAutoRoaming$6;

    invoke-direct {v0, p0}, Lcom/android/phone/LGTGlobalAutoRoaming$6;-><init>(Lcom/android/phone/LGTGlobalAutoRoaming;)V

    .line 319
    .local v0, cancelListener:Landroid/content/DialogInterface$OnCancelListener;
    new-instance v1, Lcom/android/phone/LGTGlobalAutoRoaming$7;

    invoke-direct {v1, p0}, Lcom/android/phone/LGTGlobalAutoRoaming$7;-><init>(Lcom/android/phone/LGTGlobalAutoRoaming;)V

    .line 324
    .local v1, dismissListener:Landroid/content/DialogInterface$OnDismissListener;
    iget-object v2, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 325
    iget-object v2, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 326
    iget-object v2, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 327
    iget-object v2, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    const-wide/32 v4, 0xea60

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 328
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 92
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    iput-object p0, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mContext:Landroid/content/Context;

    .line 94
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 95
    iget-object v1, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    sput v1, Lcom/android/phone/LGTGlobalAutoRoaming;->state:I

    .line 96
    const v1, 0x7f06001f

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 97
    const-string v1, "button_roaming_key"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    .line 98
    const-string v1, "button_network_setting"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mNetworkSetting:Landroid/preference/PreferenceScreen;

    .line 99
    const-string v1, "button_auto_dialing_key"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->autoDialSetting:Landroid/preference/PreferenceScreen;

    .line 100
    const-string v1, "button_global_auto_roaming_key"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->roamingCustomerCenter:Landroid/preference/PreferenceScreen;

    .line 101
    const-string v1, "button_add_nation_key"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->addRoamingCountry:Landroid/preference/PreferenceScreen;

    .line 102
    const-string v1, "button_call_customcenter_key"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->customCenterKey:Landroid/preference/PreferenceScreen;

    .line 105
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    .line 106
    iget-object v1, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->autoDialSetting:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 113
    :goto_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->addRoamingCountry:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 115
    iget-object v1, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->customCenterKey:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 134
    :cond_1
    iget-object v1, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->getIccCardState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne v1, v2, :cond_4

    .line 135
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mStkService:Lcom/android/internal/telephony/cat/AppInterface;

    .line 139
    :goto_1
    iget-object v1, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mStkService:Lcom/android/internal/telephony/cat/AppInterface;

    if-nez v1, :cond_2

    .line 140
    const-string v1, "GlobalAutoRoaming"

    const-string v2, " GetCatServiceInstance is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_2
    new-instance v1, Lcom/android/phone/LGTGlobalAutoRoaming$2;

    invoke-direct {v1, p0}, Lcom/android/phone/LGTGlobalAutoRoaming$2;-><init>(Lcom/android/phone/LGTGlobalAutoRoaming;)V

    iput-object v1, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 149
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 150
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.lgt.bip.SUCCESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    const-string v1, "com.sec.android.lgt.bip.UNSUCCESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 152
    const-string v1, "com.sec.android.lgt.bip.FAIL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    iget-object v1, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 155
    return-void

    .line 111
    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    :cond_3
    iget-object v1, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->addRoamingCountry:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    goto :goto_0

    .line 137
    :cond_4
    iget-object v1, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getCatService()Lcom/android/internal/telephony/cat/CatService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mStkService:Lcom/android/internal/telephony/cat/AppInterface;

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 332
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 334
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    :goto_0
    return-void

    .line 335
    :catch_0
    move-exception v0

    .line 336
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "GlobalAutoRoaming"

    const-string v2, "unregisterReceiver(mReceiver)"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 158
    const-string v0, "GlobalAutoRoaming"

    const-string v1, "onPreferenceTreeClick"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v0, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 160
    const-string v0, "GlobalAutoRoaming"

    const-string v1, "onPreferenceTreeClick: preference == mButtonDataRoam."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v0, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v7}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 165
    invoke-direct {p0}, Lcom/android/phone/LGTGlobalAutoRoaming;->dataRoamingSettingDialog()V

    .line 216
    :cond_0
    :goto_0
    return v8

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mContext:Landroid/content/Context;

    const v1, 0x7f0e05c5

    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 168
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v7

    invoke-interface {v0, v7}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    .line 169
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    invoke-direct {p0, v7}, Lcom/android/phone/LGTGlobalAutoRoaming;->enableDataConnection(Z)V

    goto :goto_0

    .line 173
    :cond_2
    iget-object v0, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mNetworkSetting:Landroid/preference/PreferenceScreen;

    if-ne p2, v0, :cond_3

    .line 174
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/LGTNetworkSelectMain;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 175
    :cond_3
    iget-object v0, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->autoDialSetting:Landroid/preference/PreferenceScreen;

    if-ne p2, v0, :cond_4

    .line 176
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/LGTSetAutoDialing;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 177
    :cond_4
    iget-object v0, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->addRoamingCountry:Landroid/preference/PreferenceScreen;

    if-ne p2, v0, :cond_b

    .line 178
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 190
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 191
    invoke-direct {p0}, Lcom/android/phone/LGTGlobalAutoRoaming;->errorDialog()V

    goto :goto_0

    .line 193
    :cond_5
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->phone:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v7

    .line 195
    const-string v2, "1"

    const-string v3, "REG"

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->getHandsetInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 196
    const-string v3, "1"

    const-string v4, "AUTH"

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->getHandsetInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 197
    const-string v4, "GlobalAutoRoaming"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isSetLGTReg = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "isSetLGTAuth = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    if-nez v2, :cond_6

    .line 199
    const v0, 0x7f0e060f

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 200
    :cond_6
    if-nez v3, :cond_7

    .line 201
    const v0, 0x7f0e0610

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 202
    :cond_7
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-eq v2, v3, :cond_8

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_9

    .line 203
    :cond_8
    const v0, 0x7f0e05bf

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 204
    :cond_9
    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v7

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-eqz v0, :cond_a

    .line 205
    const v0, 0x7f0e01ae

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 207
    :cond_a
    invoke-direct {p0}, Lcom/android/phone/LGTGlobalAutoRoaming;->sendEnvelope()V

    goto/16 :goto_0

    .line 210
    :cond_b
    iget-object v0, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->roamingClock:Landroid/preference/PreferenceScreen;

    if-ne p2, v0, :cond_c

    .line 211
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/LGTRoamingDualClockSetting;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 212
    :cond_c
    iget-object v0, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->customCenterKey:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    const-string v0, "GlobalAutoRoaming"

    const-string v1, "onPreferenceTreeClick: preference == customCenterKey"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const-string v0, "0234167010"

    invoke-virtual {p0, v0}, Lcom/android/phone/LGTGlobalAutoRoaming;->placeCall(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 277
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 281
    const-string v0, "mwcho"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDataRoamingEnabled() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->phone:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, v3

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v0, p0, Lcom/android/phone/LGTGlobalAutoRoaming;->mButtonDataRoam:Landroid/preference/CheckBoxPreference;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->phone:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v3

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 283
    return-void
.end method

.method placeCall(Ljava/lang/String;)V
    .locals 4
    .parameter "number"

    .prologue
    .line 255
    sget-boolean v1, Lcom/android/phone/LGTGlobalAutoRoaming;->DBG:Z

    if-eqz v1, :cond_0

    .line 256
    const-string v1, "GlobalAutoRoaming"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "placeCall :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 259
    :cond_1
    const-string v1, "GlobalAutoRoaming"

    const-string v2, "number == null || !TextUtils.isGraphic(number)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :goto_0
    return-void

    .line 262
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 263
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 264
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
