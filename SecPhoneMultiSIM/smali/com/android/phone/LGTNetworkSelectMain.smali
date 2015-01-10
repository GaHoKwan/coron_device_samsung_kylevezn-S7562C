.class public Lcom/android/phone/LGTNetworkSelectMain;
.super Landroid/preference/PreferenceActivity;
.source "LGTNetworkSelectMain.java"


# static fields
.field private static airPlaneEnabled:I

.field private static dialogCnt:I

.field private static mImsi:Z

.field private static mNetworkMode:Z

.field private static mNetworkSelect:Z

.field private static mSelect:I


# instance fields
.field private auto_setting:Landroid/preference/CheckBoxPreference;

.field private mCard:Lcom/android/internal/telephony/IccCard;

.field private mEfRoaming:Ljava/lang/String;

.field private mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

.field private final mHandler:Landroid/os/Handler;

.field mPhone:Lcom/android/internal/telephony/Phone;

.field private manual_setting:Landroid/preference/CheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 84
    sput v0, Lcom/android/phone/LGTNetworkSelectMain;->airPlaneEnabled:I

    .line 88
    sput v0, Lcom/android/phone/LGTNetworkSelectMain;->mSelect:I

    .line 89
    sput v0, Lcom/android/phone/LGTNetworkSelectMain;->dialogCnt:I

    .line 91
    sput-boolean v0, Lcom/android/phone/LGTNetworkSelectMain;->mImsi:Z

    .line 92
    sput-boolean v0, Lcom/android/phone/LGTNetworkSelectMain;->mNetworkMode:Z

    .line 93
    sput-boolean v0, Lcom/android/phone/LGTNetworkSelectMain;->mNetworkSelect:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 82
    iput-object v0, p0, Lcom/android/phone/LGTNetworkSelectMain;->mEfRoaming:Ljava/lang/String;

    .line 86
    iput-object v0, p0, Lcom/android/phone/LGTNetworkSelectMain;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    .line 95
    new-instance v0, Lcom/android/phone/LGTNetworkSelectMain$1;

    invoke-direct {v0, p0}, Lcom/android/phone/LGTNetworkSelectMain$1;-><init>(Lcom/android/phone/LGTNetworkSelectMain;)V

    iput-object v0, p0, Lcom/android/phone/LGTNetworkSelectMain;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    sput-boolean p0, Lcom/android/phone/LGTNetworkSelectMain;->mNetworkSelect:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/phone/LGTNetworkSelectMain;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/phone/LGTNetworkSelectMain;->successToast()V

    return-void
.end method

.method static synthetic access$1002(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    sput p0, Lcom/android/phone/LGTNetworkSelectMain;->dialogCnt:I

    return p0
.end method

.method static synthetic access$1100()I
    .locals 1

    .prologue
    .line 51
    sget v0, Lcom/android/phone/LGTNetworkSelectMain;->airPlaneEnabled:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/phone/LGTNetworkSelectMain;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/phone/LGTNetworkSelectMain;->setIMSIAuto()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/phone/LGTNetworkSelectMain;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/phone/LGTNetworkSelectMain;->networkSelectAuto()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/phone/LGTNetworkSelectMain;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/phone/LGTNetworkSelectMain;->setAutoBandMode()V

    return-void
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    sput-boolean p0, Lcom/android/phone/LGTNetworkSelectMain;->mNetworkMode:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/phone/LGTNetworkSelectMain;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/phone/LGTNetworkSelectMain;->mEfRoaming:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    sput-boolean p0, Lcom/android/phone/LGTNetworkSelectMain;->mImsi:Z

    return p0
.end method

.method static synthetic access$500(Lcom/android/phone/LGTNetworkSelectMain;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/phone/LGTNetworkSelectMain;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/LGTNetworkSelectMain;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/phone/LGTNetworkSelectMain;->rebootAfterAutoSetting()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/LGTNetworkSelectMain;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/phone/LGTNetworkSelectMain;->handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$802(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    sput p0, Lcom/android/phone/LGTNetworkSelectMain;->mSelect:I

    return p0
.end method

.method static synthetic access$900(Lcom/android/phone/LGTNetworkSelectMain;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/phone/LGTNetworkSelectMain;->initState()V

    return-void
.end method

.method private checkAuto(Z)V
    .locals 3
    .parameter "setAuto"

    .prologue
    .line 199
    const-string v0, "LGTNetworkSelectMain"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkAuto : setAuto = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v0, p0, Lcom/android/phone/LGTNetworkSelectMain;->auto_setting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 201
    iget-object v1, p0, Lcom/android/phone/LGTNetworkSelectMain;->manual_setting:Landroid/preference/CheckBoxPreference;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 202
    return-void

    .line 201
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 376
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 377
    .local v0, ar:Landroid/os/AsyncResult;
    const/4 v1, 0x0

    .line 378
    .local v1, type:I
    const-string v2, "LGTNetworkSelectMain"

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

    .line 379
    if-nez v0, :cond_0

    .line 380
    const-string v2, "LGTNetworkSelectMain"

    const-string v3, "ar is null...."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :goto_0
    return-void

    .line 384
    :cond_0
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    .line 385
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    const/4 v3, 0x0

    aget v1, v2, v3

    .line 386
    const-string v2, "LGTNetworkSelectMain"

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

    .line 393
    packed-switch v1, :pswitch_data_0

    .line 401
    const-string v2, "ril.roaming.networkmode"

    const-string v3, "AUTO"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    :goto_1
    const-string v2, "LGTNetworkSelectMain"

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

    .line 405
    invoke-direct {p0}, Lcom/android/phone/LGTNetworkSelectMain;->updateScreen()V

    goto :goto_0

    .line 389
    :cond_1
    const-string v2, "LGTNetworkSelectMain"

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

    .line 395
    :pswitch_0
    const-string v2, "ril.roaming.networkmode"

    const-string v3, "GSM"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 398
    :pswitch_1
    const-string v2, "ril.roaming.networkmode"

    const-string v3, "WCDMA"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 393
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private initState()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 409
    sput-boolean v0, Lcom/android/phone/LGTNetworkSelectMain;->mImsi:Z

    .line 410
    sput-boolean v0, Lcom/android/phone/LGTNetworkSelectMain;->mNetworkMode:Z

    .line 411
    sput-boolean v0, Lcom/android/phone/LGTNetworkSelectMain;->mNetworkSelect:Z

    .line 412
    return-void
.end method

.method private isAuto()I
    .locals 8

    .prologue
    const/4 v4, 0x1

    .line 205
    const-string v5, "gsm.sim.roaming"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 206
    .local v1, efRoaming:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/phone/LGTNetworkSelectMain;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v0

    .line 207
    .local v0, IsManualSelection:Z
    const-string v5, "ril.roaming.networkmode"

    const-string v6, "AUTO"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 208
    .local v2, networkMode:Ljava/lang/String;
    const-string v5, "ril.simtype"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 209
    .local v3, simtype:Ljava/lang/String;
    const-string v5, "LGTNetworkSelectMain"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "simtype = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "efRoaming = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", IsManualSelection = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ,networkMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const-string v5, "3"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "00"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 219
    :cond_0
    :goto_0
    return v4

    .line 213
    :cond_1
    if-nez v0, :cond_0

    .line 215
    const-string v5, "AUTO"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 219
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private manualNetworkSettingDialog()V
    .locals 3

    .prologue
    .line 266
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 267
    .local v0, networkSelectDlg:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0e05cf

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 268
    const v1, 0x7f0e05d0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 269
    const v1, 0x7f0e05f4

    new-instance v2, Lcom/android/phone/LGTNetworkSelectMain$2;

    invoke-direct {v2, p0}, Lcom/android/phone/LGTNetworkSelectMain$2;-><init>(Lcom/android/phone/LGTNetworkSelectMain;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 277
    const v1, 0x7f0e05f5

    new-instance v2, Lcom/android/phone/LGTNetworkSelectMain$3;

    invoke-direct {v2, p0}, Lcom/android/phone/LGTNetworkSelectMain$3;-><init>(Lcom/android/phone/LGTNetworkSelectMain;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 282
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 283
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 284
    return-void
.end method

.method private networkSelectAuto()V
    .locals 3

    .prologue
    .line 345
    iget-object v1, p0, Lcom/android/phone/LGTNetworkSelectMain;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x190

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 346
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/LGTNetworkSelectMain;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/Phone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 347
    return-void
.end method

.method private rebootAfterAutoSetting()V
    .locals 4

    .prologue
    .line 318
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 319
    .local v0, mRebootHandler:Landroid/os/Handler;
    new-instance v1, Lcom/android/phone/LGTNetworkSelectMain$6;

    invoke-direct {v1, p0}, Lcom/android/phone/LGTNetworkSelectMain$6;-><init>(Lcom/android/phone/LGTNetworkSelectMain;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 325
    return-void
.end method

.method private rebootDialog()V
    .locals 3

    .prologue
    .line 287
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 288
    .local v0, rebootDialog:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0e05ae

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 289
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 290
    const v1, 0x7f0e05d1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 291
    const v1, 0x7f0e05d2

    new-instance v2, Lcom/android/phone/LGTNetworkSelectMain$4;

    invoke-direct {v2, p0}, Lcom/android/phone/LGTNetworkSelectMain$4;-><init>(Lcom/android/phone/LGTNetworkSelectMain;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 307
    const v1, 0x7f0e05d3

    new-instance v2, Lcom/android/phone/LGTNetworkSelectMain$5;

    invoke-direct {v2, p0}, Lcom/android/phone/LGTNetworkSelectMain$5;-><init>(Lcom/android/phone/LGTNetworkSelectMain;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 312
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 313
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 314
    return-void
.end method

.method private setAutoBandMode()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 333
    const-string v1, "LGTNetworkSelectMain"

    const-string v2, "setAutoBandMode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v1, p0, Lcom/android/phone/LGTNetworkSelectMain;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 336
    .local v0, msg:Landroid/os/Message;
    const-string v1, "kor_phone_via_chip"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 337
    iget-object v1, p0, Lcom/android/phone/LGTNetworkSelectMain;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 341
    :cond_0
    iget-object v1, p0, Lcom/android/phone/LGTNetworkSelectMain;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, v3, v0}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 342
    return-void
.end method

.method private setIMSIAuto()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 350
    iget-object v0, p0, Lcom/android/phone/LGTNetworkSelectMain;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 351
    new-array v1, v3, [B

    .line 352
    aput-byte v2, v1, v2

    .line 353
    const-string v2, "00"

    iput-object v2, p0, Lcom/android/phone/LGTNetworkSelectMain;->mEfRoaming:Ljava/lang/String;

    .line 358
    :try_start_0
    const-class v2, Lcom/android/internal/telephony/IccCard;

    const-string v3, "setRoaming"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 359
    iget-object v3, p0, Lcom/android/phone/LGTNetworkSelectMain;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v0, v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    :goto_0
    return-void

    .line 363
    :catch_0
    move-exception v0

    goto :goto_0

    .line 362
    :catch_1
    move-exception v0

    goto :goto_0

    .line 361
    :catch_2
    move-exception v0

    goto :goto_0

    .line 360
    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method private successToast()V
    .locals 2

    .prologue
    .line 368
    sget-boolean v0, Lcom/android/phone/LGTNetworkSelectMain;->mImsi:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/phone/LGTNetworkSelectMain;->mNetworkMode:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/phone/LGTNetworkSelectMain;->mNetworkSelect:Z

    if-eqz v0, :cond_0

    .line 369
    const-string v0, "LGTNetworkSelectMain"

    const-string v1, "Auto Setting is Success. It will be rebooting."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v0, p0, Lcom/android/phone/LGTNetworkSelectMain;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x258

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 371
    invoke-direct {p0}, Lcom/android/phone/LGTNetworkSelectMain;->initState()V

    .line 373
    :cond_0
    return-void
.end method

.method private updateScreen()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 183
    invoke-direct {p0}, Lcom/android/phone/LGTNetworkSelectMain;->isAuto()I

    move-result v0

    .line 184
    .local v0, isAuto:I
    const-string v1, "LGTNetworkSelectMain"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateScreen : isAuto = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    packed-switch v0, :pswitch_data_0

    .line 193
    invoke-direct {p0, v4}, Lcom/android/phone/LGTNetworkSelectMain;->checkAuto(Z)V

    .line 196
    :goto_0
    return-void

    .line 187
    :pswitch_0
    invoke-direct {p0, v4}, Lcom/android/phone/LGTNetworkSelectMain;->checkAuto(Z)V

    goto :goto_0

    .line 190
    :pswitch_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/phone/LGTNetworkSelectMain;->checkAuto(Z)V

    goto :goto_0

    .line 185
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    const/4 v2, 0x0

    .line 150
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 152
    const v0, 0x7f060032

    invoke-virtual {p0, v0}, Lcom/android/phone/LGTNetworkSelectMain;->addPreferencesFromResource(I)V

    .line 154
    const-string v0, "auto_setting_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/LGTNetworkSelectMain;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/LGTNetworkSelectMain;->auto_setting:Landroid/preference/CheckBoxPreference;

    .line 155
    const-string v0, "manual_setting_key"

    invoke-virtual {p0, v0}, Lcom/android/phone/LGTNetworkSelectMain;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/LGTNetworkSelectMain;->manual_setting:Landroid/preference/CheckBoxPreference;

    .line 157
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/android/phone/LGTNetworkSelectMain;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 158
    new-instance v0, Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-direct {v0, p0}, Lcom/samsung/android/sec_platform_library/FactoryPhone;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/LGTNetworkSelectMain;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    .line 159
    iget-object v0, p0, Lcom/android/phone/LGTNetworkSelectMain;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/LGTNetworkSelectMain;->mCard:Lcom/android/internal/telephony/IccCard;

    .line 160
    invoke-virtual {p0}, Lcom/android/phone/LGTNetworkSelectMain;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/phone/LGTNetworkSelectMain;->airPlaneEnabled:I

    .line 162
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isNetworkSettingEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/phone/LGTNetworkSelectMain;->manual_setting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 165
    :cond_0
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 249
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 250
    .local v0, dialog:Landroid/app/ProgressDialog;
    packed-switch p1, :pswitch_data_0

    .line 262
    :goto_0
    return-object v0

    .line 257
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/LGTNetworkSelectMain;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e05d4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 258
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 259
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto :goto_0

    .line 250
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 178
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 179
    iget-object v0, p0, Lcom/android/phone/LGTNetworkSelectMain;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v0}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->disconnectFromRilService()V

    .line 180
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 224
    iget-object v2, p0, Lcom/android/phone/LGTNetworkSelectMain;->auto_setting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 225
    sput v1, Lcom/android/phone/LGTNetworkSelectMain;->mSelect:I

    .line 226
    iget-object v2, p0, Lcom/android/phone/LGTNetworkSelectMain;->auto_setting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 227
    iget-object v2, p0, Lcom/android/phone/LGTNetworkSelectMain;->auto_setting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 231
    :goto_0
    invoke-direct {p0}, Lcom/android/phone/LGTNetworkSelectMain;->initState()V

    .line 232
    invoke-direct {p0}, Lcom/android/phone/LGTNetworkSelectMain;->rebootDialog()V

    .line 243
    :goto_1
    return v0

    .line 229
    :cond_0
    iget-object v1, p0, Lcom/android/phone/LGTNetworkSelectMain;->auto_setting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 234
    :cond_1
    iget-object v2, p0, Lcom/android/phone/LGTNetworkSelectMain;->manual_setting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 235
    iget-object v2, p0, Lcom/android/phone/LGTNetworkSelectMain;->manual_setting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 236
    iget-object v2, p0, Lcom/android/phone/LGTNetworkSelectMain;->manual_setting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 240
    :goto_2
    invoke-direct {p0}, Lcom/android/phone/LGTNetworkSelectMain;->manualNetworkSettingDialog()V

    goto :goto_1

    .line 238
    :cond_2
    iget-object v1, p0, Lcom/android/phone/LGTNetworkSelectMain;->manual_setting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_2

    :cond_3
    move v0, v1

    .line 243
    goto :goto_1
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 170
    iget-object v1, p0, Lcom/android/phone/LGTNetworkSelectMain;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x2bc

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 171
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/LGTNetworkSelectMain;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 172
    invoke-direct {p0}, Lcom/android/phone/LGTNetworkSelectMain;->updateScreen()V

    .line 173
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 174
    return-void
.end method
