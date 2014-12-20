.class public Landroid/net/MultiSimMobileDataStateTracker;
.super Landroid/net/MobileDataStateTracker;
.source "MultiSimMobileDataStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/MultiSimMobileDataStateTracker$1;,
        Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "MultiSimMobileDataStateTracker"

.field private static final VDBG:Z


# instance fields
.field private mSimSlot:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .parameter "netType"
    .parameter "tag"

    .prologue
    .line 73
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getDefaultSimSlot()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid/net/MultiSimMobileDataStateTracker;-><init>(ILjava/lang/String;I)V

    .line 74
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;I)V
    .locals 3
    .parameter "netType"
    .parameter "tag"
    .parameter "simSlot"

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/net/MobileDataStateTracker;-><init>()V

    .line 77
    iput p3, p0, Landroid/net/MultiSimMobileDataStateTracker;->mSimSlot:I

    .line 79
    new-instance v0, Landroid/net/NetworkInfo;

    iget v1, p0, Landroid/net/MultiSimMobileDataStateTracker;->mSimSlot:I

    invoke-static {v1}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    iget v2, p0, Landroid/net/MultiSimMobileDataStateTracker;->mSimSlot:I

    invoke-static {v2}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, p2, v2}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/MobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 82
    invoke-static {p1}, Landroid/net/MultiSimMobileDataStateTracker;->networkTypeToApnType(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/MobileDataStateTracker;->mApnType:Ljava/lang/String;

    .line 83
    return-void
.end method

.method static synthetic access$100(Landroid/net/MultiSimMobileDataStateTracker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget v0, p0, Landroid/net/MultiSimMobileDataStateTracker;->mSimSlot:I

    return v0
.end method

.method public static networkTypeToApnType(I)Ljava/lang/String;
    .locals 2
    .parameter "netType"

    .prologue
    .line 307
    rem-int/lit8 v0, p0, 0x32

    packed-switch v0, :pswitch_data_0

    .line 335
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error mapping networkType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to apnType."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/MultiSimMobileDataStateTracker;->sloge(Ljava/lang/String;)V

    .line 336
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 309
    :pswitch_1
    const-string v0, "default"

    goto :goto_0

    .line 311
    :pswitch_2
    const-string v0, "mms"

    goto :goto_0

    .line 313
    :pswitch_3
    const-string v0, "supl"

    goto :goto_0

    .line 315
    :pswitch_4
    const-string v0, "dun"

    goto :goto_0

    .line 317
    :pswitch_5
    const-string v0, "hipri"

    goto :goto_0

    .line 319
    :pswitch_6
    const-string v0, "fota"

    goto :goto_0

    .line 321
    :pswitch_7
    const-string v0, "ims"

    goto :goto_0

    .line 323
    :pswitch_8
    const-string v0, "cbs"

    goto :goto_0

    .line 325
    :pswitch_9
    const-string v0, "cas"

    goto :goto_0

    .line 328
    :pswitch_a
    const-string v0, "cmdm"

    goto :goto_0

    .line 330
    :pswitch_b
    const-string v0, "cmmail"

    goto :goto_0

    .line 332
    :pswitch_c
    const-string v0, "wap"

    goto :goto_0

    .line 307
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method protected getPhoneService(Z)V
    .locals 2
    .parameter "forceRefresh"

    .prologue
    .line 240
    iget-object v0, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 241
    :cond_0
    const-string v0, "phone"

    iget v1, p0, Landroid/net/MultiSimMobileDataStateTracker;->mSimSlot:I

    invoke-static {v0, v1}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Landroid/net/MobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    .line 243
    :cond_1
    return-void
.end method

.method public getTcpBufferSizesPropName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 250
    const-string v0, "unknown"

    .line 251
    .local v0, networkTypeStr:Ljava/lang/String;
    new-instance v1, Landroid/telephony/MultiSimTelephonyManager;

    iget-object v2, p0, Landroid/net/MobileDataStateTracker;->mContext:Landroid/content/Context;

    iget v3, p0, Landroid/net/MultiSimMobileDataStateTracker;->mSimSlot:I

    invoke-direct {v1, v2, v3}, Landroid/telephony/MultiSimTelephonyManager;-><init>(Landroid/content/Context;I)V

    .line 253
    .local v1, tm:Landroid/telephony/MultiSimTelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 300
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown network type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/net/MobileDataStateTracker;->loge(Ljava/lang/String;)V

    .line 302
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "net.tcp.buffersize."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 255
    :pswitch_0
    const-string v0, "gprs"

    .line 256
    goto :goto_0

    .line 258
    :pswitch_1
    const-string v0, "edge"

    .line 259
    goto :goto_0

    .line 261
    :pswitch_2
    const-string v0, "umts"

    .line 262
    goto :goto_0

    .line 264
    :pswitch_3
    const-string v0, "hsdpa"

    .line 265
    goto :goto_0

    .line 267
    :pswitch_4
    const-string v0, "hsupa"

    .line 268
    goto :goto_0

    .line 270
    :pswitch_5
    const-string v0, "hspa"

    .line 271
    goto :goto_0

    .line 273
    :pswitch_6
    const-string v0, "hspap"

    .line 274
    goto :goto_0

    .line 276
    :pswitch_7
    const-string v0, "cdma"

    .line 277
    goto :goto_0

    .line 279
    :pswitch_8
    const-string v0, "1xrtt"

    .line 280
    goto :goto_0

    .line 282
    :pswitch_9
    const-string v0, "evdo"

    .line 283
    goto :goto_0

    .line 285
    :pswitch_a
    const-string v0, "evdo"

    .line 286
    goto :goto_0

    .line 288
    :pswitch_b
    const-string v0, "evdo"

    .line 289
    goto :goto_0

    .line 291
    :pswitch_c
    const-string v0, "iden"

    .line 292
    goto :goto_0

    .line 294
    :pswitch_d
    const-string v0, "lte"

    .line 295
    goto :goto_0

    .line 297
    :pswitch_e
    const-string v0, "ehrpd"

    .line 298
    goto :goto_0

    .line 253
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_c
        :pswitch_b
        :pswitch_d
        :pswitch_e
        :pswitch_6
    .end packed-switch
.end method

.method public startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 4
    .parameter "context"
    .parameter "target"

    .prologue
    .line 92
    iput-object p2, p0, Landroid/net/MobileDataStateTracker;->mTarget:Landroid/os/Handler;

    .line 93
    iput-object p1, p0, Landroid/net/MobileDataStateTracker;->mContext:Landroid/content/Context;

    .line 95
    new-instance v1, Landroid/net/MobileDataStateTracker$MdstHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/net/MobileDataStateTracker$MdstHandler;-><init>(Landroid/os/Looper;Landroid/net/MobileDataStateTracker;)V

    iput-object v1, p0, Landroid/net/MobileDataStateTracker;->mHandler:Landroid/os/Handler;

    .line 97
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 98
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    const-string v1, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker;->ACTION_DATA_CONNECTION_TRACKER_MESSENGER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Landroid/net/MobileDataStateTracker;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;-><init>(Landroid/net/MultiSimMobileDataStateTracker;Landroid/net/MultiSimMobileDataStateTracker$1;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 103
    sget-object v1, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    iput-object v1, p0, Landroid/net/MobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/Phone$DataState;

    .line 104
    return-void
.end method
