.class public Landroid/telephony/MultiSimTelephonyManager;
.super Landroid/telephony/TelephonyManager;
.source "MultiSimTelephonyManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MultiSimTelephonyManager"

.field private static cnt:I

.field private static sInstance:[Landroid/telephony/MultiSimTelephonyManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

.field private mSimSlot:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    const/4 v1, 0x0

    sput v1, Landroid/telephony/MultiSimTelephonyManager;->cnt:I

    .line 46
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v1

    new-array v1, v1, [Landroid/telephony/MultiSimTelephonyManager;

    sput-object v1, Landroid/telephony/MultiSimTelephonyManager;->sInstance:[Landroid/telephony/MultiSimTelephonyManager;

    .line 47
    const/4 v0, 0x0

    .local v0, simSlotNum:I
    :goto_0
    sget-object v1, Landroid/telephony/MultiSimTelephonyManager;->sInstance:[Landroid/telephony/MultiSimTelephonyManager;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 48
    sget-object v1, Landroid/telephony/MultiSimTelephonyManager;->sInstance:[Landroid/telephony/MultiSimTelephonyManager;

    new-instance v2, Landroid/telephony/MultiSimTelephonyManager;

    invoke-direct {v2, v0}, Landroid/telephony/MultiSimTelephonyManager;-><init>(I)V

    aput-object v2, v1, v0

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;-><init>()V

    .line 54
    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .parameter "simSlot"

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;-><init>()V

    .line 63
    iput p1, p0, Landroid/telephony/MultiSimTelephonyManager;->mSimSlot:I

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 58
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getDefaultSimSlot()I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/telephony/MultiSimTelephonyManager;-><init>(Landroid/content/Context;I)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "simSlot"

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;-><init>()V

    .line 68
    iget-object v1, p0, Landroid/telephony/MultiSimTelephonyManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 70
    .local v0, appContext:Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 71
    iput-object v0, p0, Landroid/telephony/MultiSimTelephonyManager;->mContext:Landroid/content/Context;

    .line 77
    :goto_0
    const-string v1, "telephony.registry"

    invoke-static {v1, p2}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/MultiSimTelephonyManager;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 80
    .end local v0           #appContext:Landroid/content/Context;
    :cond_0
    iput p2, p0, Landroid/telephony/MultiSimTelephonyManager;->mSimSlot:I

    .line 81
    return-void

    .line 74
    .restart local v0       #appContext:Landroid/content/Context;
    :cond_1
    iput-object p1, p0, Landroid/telephony/MultiSimTelephonyManager;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public static getDefault()Landroid/telephony/MultiSimTelephonyManager;
    .locals 2

    .prologue
    .line 85
    sget-object v0, Landroid/telephony/MultiSimTelephonyManager;->sInstance:[Landroid/telephony/MultiSimTelephonyManager;

    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getDefaultSimSlot()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getDefault(I)Landroid/telephony/MultiSimTelephonyManager;
    .locals 1
    .parameter "simSlot"

    .prologue
    .line 90
    sget-object v0, Landroid/telephony/MultiSimTelephonyManager;->sInstance:[Landroid/telephony/MultiSimTelephonyManager;

    aget-object v0, v0, p0

    return-object v0
.end method


# virtual methods
.method protected getITelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 2

    .prologue
    .line 136
    const-string v0, "phone"

    iget v1, p0, Landroid/telephony/MultiSimTelephonyManager;->mSimSlot:I

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkCountryIso()Ljava/lang/String;
    .locals 2

    .prologue
    .line 188
    const-string v0, "gsm.operator.iso-country"

    iget v1, p0, Landroid/telephony/MultiSimTelephonyManager;->mSimSlot:I

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperator()Ljava/lang/String;
    .locals 2

    .prologue
    .line 166
    const-string v0, "gsm.operator.numeric"

    iget v1, p0, Landroid/telephony/MultiSimTelephonyManager;->mSimSlot:I

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 155
    const-string v0, "gsm.operator.alpha"

    iget v1, p0, Landroid/telephony/MultiSimTelephonyManager;->mSimSlot:I

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPhoneTypeFromProperty()I
    .locals 2

    .prologue
    .line 129
    const-string v0, "gsm.current.phone-type"

    iget v1, p0, Landroid/telephony/MultiSimTelephonyManager;->mSimSlot:I

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromNetworkType()I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSimCountryIso()Ljava/lang/String;
    .locals 2

    .prologue
    .line 246
    const-string v0, "gsm.sim.operator.iso-country"

    iget v1, p0, Landroid/telephony/MultiSimTelephonyManager;->mSimSlot:I

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperator()Ljava/lang/String;
    .locals 2

    .prologue
    .line 228
    const-string v0, "gsm.sim.operator.numeric"

    iget v1, p0, Landroid/telephony/MultiSimTelephonyManager;->mSimSlot:I

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperatorName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 239
    const-string v0, "gsm.sim.operator.alpha"

    iget v1, p0, Landroid/telephony/MultiSimTelephonyManager;->mSimSlot:I

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimState()I
    .locals 3

    .prologue
    .line 203
    const-string v1, "gsm.sim.state"

    iget v2, p0, Landroid/telephony/MultiSimTelephonyManager;->mSimSlot:I

    invoke-static {v1, v2}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, prop:Ljava/lang/String;
    const-string v1, "ABSENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    const/4 v1, 0x1

    .line 215
    :goto_0
    return v1

    .line 206
    :cond_0
    const-string v1, "PIN_REQUIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 207
    const/4 v1, 0x2

    goto :goto_0

    .line 208
    :cond_1
    const-string v1, "PUK_REQUIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 209
    const/4 v1, 0x3

    goto :goto_0

    .line 210
    :cond_2
    const-string v1, "NETWORK_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 211
    const/4 v1, 0x4

    goto :goto_0

    .line 212
    :cond_3
    const-string v1, "READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 213
    const/4 v1, 0x5

    goto :goto_0

    .line 215
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;
    .locals 2

    .prologue
    .line 144
    const-string v0, "iphonesubinfo"

    iget v1, p0, Landroid/telephony/MultiSimTelephonyManager;->mSimSlot:I

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    return-object v0
.end method

.method public isNetworkRoaming()Z
    .locals 3

    .prologue
    .line 176
    const-string v0, "true"

    const-string v1, "gsm.operator.isroaming"

    iget v2, p0, Landroid/telephony/MultiSimTelephonyManager;->mSimSlot:I

    invoke-static {v1, v2}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSmsCapable()Z
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Landroid/telephony/MultiSimTelephonyManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 284
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/telephony/MultiSimTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isVoiceCapable()Z
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Landroid/telephony/MultiSimTelephonyManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 267
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/telephony/MultiSimTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    goto :goto_0
.end method

.method public listen(Landroid/telephony/PhoneStateListener;I)V
    .locals 5
    .parameter "listener"
    .parameter "events"

    .prologue
    .line 117
    iget-object v2, p0, Landroid/telephony/MultiSimTelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/telephony/MultiSimTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, pkgForDebug:Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/MultiSimTelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 120
    .local v0, notifyNow:Ljava/lang/Boolean;
    iget-object v2, p0, Landroid/telephony/MultiSimTelephonyManager;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    iget-object v3, p1, Landroid/telephony/PhoneStateListener;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-interface {v2, v1, v3, p2, v4}, Lcom/android/internal/telephony/ITelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .end local v0           #notifyNow:Ljava/lang/Boolean;
    :goto_2
    return-void

    .line 117
    .end local v1           #pkgForDebug:Ljava/lang/String;
    :cond_0
    const-string v1, "<unknown>"

    goto :goto_0

    .line 119
    .restart local v1       #pkgForDebug:Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 123
    :catch_0
    move-exception v2

    goto :goto_2

    .line 121
    :catch_1
    move-exception v2

    goto :goto_2
.end method
