.class public Lcom/android/phone/LGTNetworkSetting;
.super Landroid/preference/PreferenceActivity;
.source "LGTNetworkSetting.java"


# static fields
.field private static final DBG:Z

.field private static mSelect:I

.field private static mSelect_imsi:I


# instance fields
.field private DIALOG_ITEM:[Ljava/lang/String;

.field private mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

.field private mHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneInterfaceManager:Lcom/android/phone/PhoneInterfaceManager;

.field private mProgressPanel:Landroid/content/DialogInterface;

.field private mRoamingLgt:Ljava/lang/String;

.field private mRoamingSponsor:Ljava/lang/String;

.field private mToast:Landroid/widget/Toast;

.field private network_choice:Landroid/preference/PreferenceScreen;

.field private network_mode:Landroid/preference/PreferenceScreen;

.field private service_provider:Landroid/preference/PreferenceScreen;

.field private setGlobalLte:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 35
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/phone/LGTNetworkSetting;->DBG:Z

    .line 45
    sput v1, Lcom/android/phone/LGTNetworkSetting;->mSelect:I

    .line 46
    sput v1, Lcom/android/phone/LGTNetworkSetting;->mSelect_imsi:I

    return-void

    :cond_0
    move v0, v1

    .line 35
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 47
    iput-object v1, p0, Lcom/android/phone/LGTNetworkSetting;->DIALOG_ITEM:[Ljava/lang/String;

    .line 64
    iput-object v1, p0, Lcom/android/phone/LGTNetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 66
    iput-object v1, p0, Lcom/android/phone/LGTNetworkSetting;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    .line 68
    iput-object v1, p0, Lcom/android/phone/LGTNetworkSetting;->mToast:Landroid/widget/Toast;

    .line 69
    const-string v0, "1"

    iput-object v0, p0, Lcom/android/phone/LGTNetworkSetting;->setGlobalLte:Ljava/lang/String;

    .line 70
    iput-object v1, p0, Lcom/android/phone/LGTNetworkSetting;->mRoamingLgt:Ljava/lang/String;

    .line 71
    iput-object v1, p0, Lcom/android/phone/LGTNetworkSetting;->mRoamingSponsor:Ljava/lang/String;

    .line 442
    new-instance v0, Lcom/android/phone/LGTNetworkSetting$5;

    invoke-direct {v0, p0}, Lcom/android/phone/LGTNetworkSetting$5;-><init>(Lcom/android/phone/LGTNetworkSetting;)V

    iput-object v0, p0, Lcom/android/phone/LGTNetworkSetting;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/LGTNetworkSetting;)Lcom/android/phone/PhoneInterfaceManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/phone/LGTNetworkSetting;->mPhoneInterfaceManager:Lcom/android/phone/PhoneInterfaceManager;

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 33
    sget v0, Lcom/android/phone/LGTNetworkSetting;->mSelect:I

    return v0
.end method

.method static synthetic access$102(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 33
    sput p0, Lcom/android/phone/LGTNetworkSetting;->mSelect:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/phone/LGTNetworkSetting;B)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/phone/LGTNetworkSetting;->setSelectedBandMode(B)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/LGTNetworkSetting;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/phone/LGTNetworkSetting;->selectedBandInformed(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/LGTNetworkSetting;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/phone/LGTNetworkSetting;->displayBandSelectionResult(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/LGTNetworkSetting;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/phone/LGTNetworkSetting;->handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    return-void
.end method

.method private displayBandSelectionResult(Ljava/lang/Throwable;)V
    .locals 3
    .parameter "ex"

    .prologue
    const v2, 0x7f0e05e0

    .line 370
    iget-object v0, p0, Lcom/android/phone/LGTNetworkSetting;->mProgressPanel:Landroid/content/DialogInterface;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/android/phone/LGTNetworkSetting;->mProgressPanel:Landroid/content/DialogInterface;

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    .line 373
    :cond_0
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/phone/LGTNetworkSetting;->removeDialog(I)V

    .line 374
    if-eqz p1, :cond_2

    .line 375
    const-string v0, "LGTNetworkSetting"

    const-string v1, "Network mode change is failed........"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const-string v0, "LGTNetworkSetting"

    const-string v1, "[LGTNetworkSetting] enableDataConnectivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget-object v0, p0, Lcom/android/phone/LGTNetworkSetting;->mPhoneInterfaceManager:Lcom/android/phone/PhoneInterfaceManager;

    if-eqz v0, :cond_1

    .line 378
    iget-object v0, p0, Lcom/android/phone/LGTNetworkSetting;->mPhoneInterfaceManager:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManager;->enableDataConnectivity()Z

    .line 408
    :cond_1
    :goto_0
    return-void

    .line 380
    :cond_2
    const-string v0, "LGTNetworkSetting"

    const-string v1, "Network mode change is success........"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const-string v0, "LGTNetworkSetting"

    const-string v1, "[LGTNetworkSetting] enableDataConnectivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget-object v0, p0, Lcom/android/phone/LGTNetworkSetting;->mPhoneInterfaceManager:Lcom/android/phone/PhoneInterfaceManager;

    if-eqz v0, :cond_3

    .line 383
    iget-object v0, p0, Lcom/android/phone/LGTNetworkSetting;->mPhoneInterfaceManager:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManager;->enableDataConnectivity()Z

    .line 400
    :cond_3
    iget-object v0, p0, Lcom/android/phone/LGTNetworkSetting;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_4

    .line 401
    const/4 v0, 0x0

    invoke-static {p0, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/LGTNetworkSetting;->mToast:Landroid/widget/Toast;

    .line 405
    :goto_1
    iget-object v0, p0, Lcom/android/phone/LGTNetworkSetting;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 406
    invoke-direct {p0}, Lcom/android/phone/LGTNetworkSetting;->getSelectedBandMode()V

    goto :goto_0

    .line 403
    :cond_4
    iget-object v0, p0, Lcom/android/phone/LGTNetworkSetting;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setText(I)V

    goto :goto_1
.end method

.method private getAutoTitle()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 205
    const-string v7, "phone"

    invoke-virtual {p0, v7}, Lcom/android/phone/LGTNetworkSetting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 206
    .local v6, telephonyManager:Landroid/telephony/TelephonyManager;
    const-string v1, ""

    .line 207
    .local v1, result:Ljava/lang/String;
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, imsi:Ljava/lang/String;
    const/4 v7, 0x3

    new-array v5, v7, [Ljava/lang/String;

    .line 209
    .local v5, sponIMSI:[Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 210
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getSponImsi()[Ljava/lang/String;

    move-result-object v5

    .line 217
    :goto_0
    aget-object v2, v5, v8

    .line 218
    .local v2, spon1:Ljava/lang/String;
    aget-object v3, v5, v9

    .line 219
    .local v3, spon2:Ljava/lang/String;
    aget-object v4, v5, v10

    .line 220
    .local v4, spon3:Ljava/lang/String;
    sget-boolean v7, Lcom/android/phone/LGTNetworkSetting;->DBG:Z

    if-eqz v7, :cond_0

    .line 221
    const-string v7, "LGTNetworkSetting"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "imsi = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", spon1 = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", spon2 = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", spon3 = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_0
    if-eqz v0, :cond_1

    const-string v7, "45006"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 224
    const-string v1, "LG U+"

    .line 226
    :cond_1
    if-eqz v2, :cond_4

    const-string v7, "imsi"

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 227
    invoke-direct {p0, v2}, Lcom/android/phone/LGTNetworkSetting;->getToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 233
    :cond_2
    :goto_1
    const-string v7, "LGTNetworkSetting"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "result = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    return-object v1

    .line 212
    .end local v2           #spon1:Ljava/lang/String;
    .end local v3           #spon2:Ljava/lang/String;
    .end local v4           #spon3:Ljava/lang/String;
    :cond_3
    const-string v7, ""

    aput-object v7, v5, v8

    .line 213
    const-string v7, ""

    aput-object v7, v5, v9

    .line 214
    const-string v7, ""

    aput-object v7, v5, v10

    goto :goto_0

    .line 228
    .restart local v2       #spon1:Ljava/lang/String;
    .restart local v3       #spon2:Ljava/lang/String;
    .restart local v4       #spon3:Ljava/lang/String;
    :cond_4
    if-eqz v3, :cond_5

    const-string v7, "imsi"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 229
    invoke-direct {p0, v3}, Lcom/android/phone/LGTNetworkSetting;->getToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 230
    :cond_5
    if-eqz v4, :cond_2

    const-string v7, "imsi"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 231
    invoke-direct {p0, v4}, Lcom/android/phone/LGTNetworkSetting;->getToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private getSelectedBandMode()V
    .locals 3

    .prologue
    .line 411
    iget-object v1, p0, Lcom/android/phone/LGTNetworkSetting;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 412
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/LGTNetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 413
    return-void
.end method

.method private getToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"

    .prologue
    .line 239
    :try_start_0
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ";"

    invoke-direct {v1, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    .local v1, str1:Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 241
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    move-object v2, p1

    .line 245
    .end local v1           #str1:Ljava/util/StringTokenizer;
    :goto_0
    return-object v2

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, e:Ljava/lang/Exception;
    const-string v2, ""

    goto :goto_0
.end method

.method private handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    .line 472
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 473
    .local v0, ar:Landroid/os/AsyncResult;
    const/4 v1, 0x0

    .line 474
    .local v1, type:I
    const-string v2, "LGTNetworkSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetPreferredNetworkTypeResponse "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ril.roaming.networkmode"

    const-string v5, "AUTO"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    if-nez v0, :cond_0

    .line 476
    const-string v2, "LGTNetworkSetting"

    const-string v3, "ar is null...."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :goto_0
    return-void

    .line 480
    :cond_0
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    .line 481
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    aget v1, v2, v6

    .line 482
    const-string v2, "LGTNetworkSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get preferred network type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    packed-switch v1, :pswitch_data_0

    .line 501
    sput v6, Lcom/android/phone/LGTNetworkSetting;->mSelect:I

    .line 502
    iget-object v2, p0, Lcom/android/phone/LGTNetworkSetting;->network_mode:Landroid/preference/PreferenceScreen;

    const v3, 0x7f0e05d9

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 503
    const-string v2, "ril.roaming.networkmode"

    const-string v3, "AUTO"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    :goto_1
    const-string v2, "LGTNetworkSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetPreferredNetworkTypeResponse  set to = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ril.roaming.networkmode"

    const-string v5, "AUTO"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 485
    :cond_1
    const-string v2, "LGTNetworkSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get preferred network type, exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 491
    :pswitch_0
    const/4 v2, 0x2

    sput v2, Lcom/android/phone/LGTNetworkSetting;->mSelect:I

    .line 492
    iget-object v2, p0, Lcom/android/phone/LGTNetworkSetting;->network_mode:Landroid/preference/PreferenceScreen;

    const v3, 0x7f0e05db

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 493
    const-string v2, "ril.roaming.networkmode"

    const-string v3, "GSM"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 496
    :pswitch_1
    const/4 v2, 0x1

    sput v2, Lcom/android/phone/LGTNetworkSetting;->mSelect:I

    .line 497
    iget-object v2, p0, Lcom/android/phone/LGTNetworkSetting;->network_mode:Landroid/preference/PreferenceScreen;

    const v3, 0x7f0e05da

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 498
    const-string v2, "ril.roaming.networkmode"

    const-string v3, "WCDMA"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 489
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private networkModeDialog()V
    .locals 5

    .prologue
    .line 269
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 270
    .local v0, networkModeDlg:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0e05d7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/LGTNetworkSetting;->DIALOG_ITEM:[Ljava/lang/String;

    sget v3, Lcom/android/phone/LGTNetworkSetting;->mSelect:I

    new-instance v4, Lcom/android/phone/LGTNetworkSetting$4;

    invoke-direct {v4, p0}, Lcom/android/phone/LGTNetworkSetting$4;-><init>(Lcom/android/phone/LGTNetworkSetting;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e05df

    new-instance v3, Lcom/android/phone/LGTNetworkSetting$3;

    invoke-direct {v3, p0}, Lcom/android/phone/LGTNetworkSetting$3;-><init>(Lcom/android/phone/LGTNetworkSetting;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/LGTNetworkSetting$2;

    invoke-direct {v2, p0}, Lcom/android/phone/LGTNetworkSetting$2;-><init>(Lcom/android/phone/LGTNetworkSetting;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    new-instance v2, Lcom/android/phone/LGTNetworkSetting$1;

    invoke-direct {v2, p0}, Lcom/android/phone/LGTNetworkSetting$1;-><init>(Lcom/android/phone/LGTNetworkSetting;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 318
    return-void
.end method

.method private selectedBandInformed(Landroid/os/AsyncResult;)V
    .locals 6
    .parameter "result"

    .prologue
    const/4 v5, 0x0

    .line 416
    const-string v2, "LGTNetworkSetting"

    const-string v3, "selectedBandInformed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    if-eqz p1, :cond_0

    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 418
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v1, v2

    check-cast v1, [I

    .line 419
    .local v1, selected:[I
    const-string v2, "LGTNetworkSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selectedBandInformed  selected[0]= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    aget v2, v1, v5

    packed-switch v2, :pswitch_data_0

    .line 432
    sput v5, Lcom/android/phone/LGTNetworkSetting;->mSelect:I

    .line 433
    iget-object v2, p0, Lcom/android/phone/LGTNetworkSetting;->network_mode:Landroid/preference/PreferenceScreen;

    const v3, 0x7f0e05d9

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 434
    const-string v2, "ril.roaming.networkmode"

    const-string v3, "AUTO"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    .end local v1           #selected:[I
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/phone/LGTNetworkSetting;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x2bc

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 439
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/phone/LGTNetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 440
    return-void

    .line 422
    .end local v0           #msg:Landroid/os/Message;
    .restart local v1       #selected:[I
    :pswitch_0
    const/4 v2, 0x2

    sput v2, Lcom/android/phone/LGTNetworkSetting;->mSelect:I

    .line 423
    iget-object v2, p0, Lcom/android/phone/LGTNetworkSetting;->network_mode:Landroid/preference/PreferenceScreen;

    const v3, 0x7f0e05db

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 424
    const-string v2, "ril.roaming.networkmode"

    const-string v3, "GSM"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 427
    :pswitch_1
    const/4 v2, 0x1

    sput v2, Lcom/android/phone/LGTNetworkSetting;->mSelect:I

    .line 428
    iget-object v2, p0, Lcom/android/phone/LGTNetworkSetting;->network_mode:Landroid/preference/PreferenceScreen;

    const v3, 0x7f0e05da

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 429
    const-string v2, "ril.roaming.networkmode"

    const-string v3, "WCDMA"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 420
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setSelectedBandMode(B)V
    .locals 7
    .parameter "bandValue"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 321
    const-string v1, "LGTNetworkSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bandValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Lcom/android/phone/LGTNetworkSetting;->showDialog(I)V

    .line 325
    iget-object v1, p0, Lcom/android/phone/LGTNetworkSetting;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 327
    .local v0, msg:Landroid/os/Message;
    const-string v1, "kor_phone_via_chip"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 328
    packed-switch p1, :pswitch_data_0

    .line 339
    iget-object v1, p0, Lcom/android/phone/LGTNetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 344
    :cond_0
    :goto_0
    packed-switch p1, :pswitch_data_1

    .line 355
    iget-object v1, p0, Lcom/android/phone/LGTNetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, v4, v0}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 356
    const-string v1, "LGTNetworkSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPreferredNetworkType(RILConstants.PREFERRED_NETWORK_MODE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :goto_1
    return-void

    .line 330
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/LGTNetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    invoke-static {v1, v2, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 334
    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/LGTNetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 346
    :pswitch_2
    iget-object v1, p0, Lcom/android/phone/LGTNetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, v6, v0}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 347
    const-string v1, "LGTNetworkSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPreferredNetworkType(RILConstants.NETWORK_MODE_WCDMA_ONLY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 350
    :pswitch_3
    iget-object v1, p0, Lcom/android/phone/LGTNetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, v5, v0}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 351
    const-string v1, "LGTNetworkSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPreferredNetworkType(RILConstants.NETWORK_MODE_GSM_ONLY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 328
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 344
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateScreen()V
    .locals 4

    .prologue
    .line 261
    const-string v1, "ril.simtype"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, mSimtype:Ljava/lang/String;
    const-string v1, "LGTNetworkSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ril.simtype = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const-string v1, "3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 264
    iget-object v1, p0, Lcom/android/phone/LGTNetworkSetting;->service_provider:Landroid/preference/PreferenceScreen;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 266
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const v0, 0x7f060033

    invoke-virtual {p0, v0}, Lcom/android/phone/LGTNetworkSetting;->addPreferencesFromResource(I)V

    .line 78
    const-string v0, "service_provider_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/LGTNetworkSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/LGTNetworkSetting;->service_provider:Landroid/preference/PreferenceScreen;

    .line 79
    const-string v0, "network_mode_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/LGTNetworkSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/LGTNetworkSetting;->network_mode:Landroid/preference/PreferenceScreen;

    .line 80
    const-string v0, "network_select_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/LGTNetworkSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/LGTNetworkSetting;->network_choice:Landroid/preference/PreferenceScreen;

    .line 82
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/LGTNetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 83
    new-instance v0, Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-direct {v0, p0}, Lcom/samsung/android/sec_platform_library/FactoryPhone;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/LGTNetworkSetting;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    .line 85
    invoke-direct {p0}, Lcom/android/phone/LGTNetworkSetting;->updateScreen()V

    .line 87
    invoke-virtual {p0}, Lcom/android/phone/LGTNetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080090

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/LGTNetworkSetting;->DIALOG_ITEM:[Ljava/lang/String;

    .line 89
    sget v0, Lcom/android/phone/LGTNetworkSetting;->mSelect:I

    packed-switch v0, :pswitch_data_0

    .line 102
    :goto_0
    return-void

    .line 91
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/LGTNetworkSetting;->network_mode:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0e05d9

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    .line 94
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/LGTNetworkSetting;->network_mode:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0e05da

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    .line 97
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/LGTNetworkSetting;->network_mode:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0e05db

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 511
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 512
    .local v0, dialog:Landroid/app/ProgressDialog;
    packed-switch p1, :pswitch_data_0

    .line 524
    :goto_0
    return-object v0

    .line 519
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/LGTNetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e05d4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 520
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 521
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto :goto_0

    .line 512
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 256
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 257
    iget-object v0, p0, Lcom/android/phone/LGTNetworkSetting;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v0}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->disconnectFromRilService()V

    .line 258
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 106
    iget-object v1, p0, Lcom/android/phone/LGTNetworkSetting;->service_provider:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/phone/LGTServiceProvider;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/android/phone/LGTNetworkSetting;->startActivity(Landroid/content/Intent;)V

    .line 126
    :goto_0
    return v0

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/android/phone/LGTNetworkSetting;->network_mode:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 110
    const-string v1, "LGTNetworkSetting"

    const-string v2, "[LGTNetworkSetting] disableDataConnectivity - 118"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v1, p0, Lcom/android/phone/LGTNetworkSetting;->mPhoneInterfaceManager:Lcom/android/phone/PhoneInterfaceManager;

    if-eqz v1, :cond_1

    .line 113
    iget-object v1, p0, Lcom/android/phone/LGTNetworkSetting;->mPhoneInterfaceManager:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v1}, Lcom/android/phone/PhoneInterfaceManager;->disableDataConnectivity()Z

    .line 115
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/LGTNetworkSetting;->networkModeDialog()V

    goto :goto_0

    .line 117
    :cond_2
    iget-object v1, p0, Lcom/android/phone/LGTNetworkSetting;->network_choice:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 123
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.samsung.android.phone"

    const-string v3, "com.samsung.android.phone.NetworkOperators"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/LGTNetworkSetting;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 126
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 132
    const-string v7, "LGTNetworkSetting"

    const-string v10, "onResume..............."

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const-string v7, "LGTNetworkSetting"

    const-string v10, "disableDataConnectivity"

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v7, p0, Lcom/android/phone/LGTNetworkSetting;->mPhoneInterfaceManager:Lcom/android/phone/PhoneInterfaceManager;

    if-eqz v7, :cond_0

    .line 136
    iget-object v7, p0, Lcom/android/phone/LGTNetworkSetting;->mPhoneInterfaceManager:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v7}, Lcom/android/phone/PhoneInterfaceManager;->enableDataConnectivity()Z

    .line 139
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/LGTNetworkSetting;->updateScreen()V

    .line 140
    const-string v7, "gsm.sim.roaming"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, efRoaming:Ljava/lang/String;
    const-string v7, "00"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v8

    :goto_0
    sput v7, Lcom/android/phone/LGTNetworkSetting;->mSelect_imsi:I

    .line 142
    const-string v6, ""

    .line 143
    .local v6, title:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/phone/LGTNetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x7f0e05dc

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/LGTNetworkSetting;->mRoamingLgt:Ljava/lang/String;

    .line 144
    invoke-virtual {p0}, Lcom/android/phone/LGTNetworkSetting;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x7f0e05dd

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/LGTNetworkSetting;->mRoamingSponsor:Ljava/lang/String;

    .line 146
    const-string v7, "phone"

    invoke-virtual {p0, v7}, Lcom/android/phone/LGTNetworkSetting;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 147
    .local v5, telephonyManager:Landroid/telephony/TelephonyManager;
    const/4 v7, 0x3

    new-array v3, v7, [Ljava/lang/String;

    .line 148
    .local v3, sponIMSI:[Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 149
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getSponImsi()[Ljava/lang/String;

    move-result-object v3

    .line 156
    :goto_1
    sget v7, Lcom/android/phone/LGTNetworkSetting;->mSelect_imsi:I

    packed-switch v7, :pswitch_data_0

    .line 197
    :goto_2
    const-string v7, "LGTNetworkSetting"

    const-string v8, "onResume : SendMsg EVENT_GET_PREFERRED_NETWORK"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v7, p0, Lcom/android/phone/LGTNetworkSetting;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x2bc

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 199
    .local v2, msg:Landroid/os/Message;
    iget-object v7, p0, Lcom/android/phone/LGTNetworkSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7, v2}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 201
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 202
    return-void

    .end local v2           #msg:Landroid/os/Message;
    .end local v3           #sponIMSI:[Ljava/lang/String;
    .end local v5           #telephonyManager:Landroid/telephony/TelephonyManager;
    .end local v6           #title:Ljava/lang/String;
    :cond_1
    move v7, v9

    .line 141
    goto :goto_0

    .line 151
    .restart local v3       #sponIMSI:[Ljava/lang/String;
    .restart local v5       #telephonyManager:Landroid/telephony/TelephonyManager;
    .restart local v6       #title:Ljava/lang/String;
    :cond_2
    const-string v7, ""

    aput-object v7, v3, v8

    .line 152
    const-string v7, ""

    aput-object v7, v3, v9

    .line 153
    const-string v7, ""

    aput-object v7, v3, v11

    goto :goto_1

    .line 158
    :pswitch_0
    invoke-direct {p0}, Lcom/android/phone/LGTNetworkSetting;->getAutoTitle()Ljava/lang/String;

    move-result-object v6

    .line 159
    const-string v7, "LG"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 160
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/LGTNetworkSetting;->mRoamingLgt:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 164
    :goto_3
    const-string v7, "LGTNetworkSetting"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Final AUTO title = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const-string v7, "service_provider_key"

    invoke-virtual {p0, v7}, Lcom/android/phone/LGTNetworkSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 162
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/LGTNetworkSetting;->mRoamingSponsor:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 168
    :pswitch_1
    const-string v7, "10"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 169
    const-string v6, "01;LG U+"

    .line 179
    :cond_4
    :goto_4
    :try_start_0
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v7, ";"

    invoke-direct {v4, v6, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .local v4, str1:Ljava/util/StringTokenizer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 181
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 186
    .end local v4           #str1:Ljava/util/StringTokenizer;
    :goto_5
    const-string v7, "LG"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 187
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/LGTNetworkSetting;->mRoamingLgt:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 191
    :goto_6
    const-string v7, "LGTNetworkSetting"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Final title = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const-string v7, "service_provider_key"

    invoke-virtual {p0, v7}, Lcom/android/phone/LGTNetworkSetting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 170
    :cond_5
    const-string v7, "11"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 171
    aget-object v6, v3, v8

    goto :goto_4

    .line 172
    :cond_6
    const-string v7, "12"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 173
    aget-object v6, v3, v9

    goto :goto_4

    .line 174
    :cond_7
    const-string v7, "13"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 175
    aget-object v6, v3, v11

    goto :goto_4

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "LGTNetworkSetting"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "title = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 189
    .end local v0           #e:Ljava/lang/Exception;
    :cond_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/LGTNetworkSetting;->mRoamingSponsor:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    .line 156
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 250
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 251
    const-string v0, "mwcho"

    const-string v1, "[LGTNetworkSetting] onStop..............."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    return-void
.end method
