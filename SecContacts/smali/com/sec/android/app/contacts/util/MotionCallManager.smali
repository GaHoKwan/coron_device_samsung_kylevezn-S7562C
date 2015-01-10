.class public Lcom/sec/android/app/contacts/util/MotionCallManager;
.super Ljava/lang/Object;
.source "MotionCallManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/util/MotionCallManager$UnlockReceiver;
    }
.end annotation


# static fields
.field private static CALL_CONNECT_TONE:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDirectCallPhoneNumber:Ljava/lang/String;

.field private mEnableTts:Z

.field private mEnableVibrator:Z

.field private mIIMSTelephonyCheck:Lcom/sec/android/app/contacts/util/IIMSTelephonyCheck;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field private mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTts:Landroid/speech/tts/TextToSpeech;

.field private myHashAlarm:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private unlockReceiver:Lcom/sec/android/app/contacts/util/MotionCallManager$UnlockReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "call_conn_tone"

    sput-object v0, Lcom/sec/android/app/contacts/util/MotionCallManager;->CALL_CONNECT_TONE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mEnableVibrator:Z

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mEnableTts:Z

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mDirectCallPhoneNumber:Ljava/lang/String;

    .line 53
    new-instance v0, Lcom/sec/android/app/contacts/util/MotionCallManager$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/util/MotionCallManager$1;-><init>(Lcom/sec/android/app/contacts/util/MotionCallManager;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 90
    iput-object p1, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mContext:Landroid/content/Context;

    .line 91
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mContext:Landroid/content/Context;

    const-string v1, "motion_recognition"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/motion/MotionRecognitionManager;

    iput-object v0, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 93
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 94
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/util/MotionCallManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mDirectCallPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/util/MotionCallManager;)Lcom/sec/android/app/contacts/util/MotionCallManager$UnlockReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->unlockReceiver:Lcom/sec/android/app/contacts/util/MotionCallManager$UnlockReceiver;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/contacts/util/MotionCallManager;Lcom/sec/android/app/contacts/util/MotionCallManager$UnlockReceiver;)Lcom/sec/android/app/contacts/util/MotionCallManager$UnlockReceiver;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->unlockReceiver:Lcom/sec/android/app/contacts/util/MotionCallManager$UnlockReceiver;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/util/MotionCallManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/util/MotionCallManager;)Landroid/hardware/motion/MotionRecognitionManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/util/MotionCallManager;)Landroid/hardware/motion/MRListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mMotionListener:Landroid/hardware/motion/MRListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/contacts/util/MotionCallManager;)Landroid/speech/tts/TextToSpeech;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mTts:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/contacts/util/MotionCallManager;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->myHashAlarm:Ljava/util/HashMap;

    return-object v0
.end method

.method private hasAnyActiveCall()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 119
    iget-object v2, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-eqz v2, :cond_2

    .line 121
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_1

    .line 122
    const-string v2, "MotionCallManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasAnyActiveCall: Call state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :goto_0
    return v1

    .line 124
    :cond_1
    const-string v2, "MotionCallManager"

    const-string v3, "telephony manager is null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 128
    :cond_2
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContactsForCG()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 130
    iget-object v2, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mContext:Landroid/content/Context;

    const-string v3, "phone2"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 131
    .local v0, tmSevice2:Landroid/telephony/TelephonyManager;
    if-nez v0, :cond_3

    .line 132
    const-string v2, "MotionCallManager"

    const-string v3, "Sevice2 object is null!"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 135
    :cond_3
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-eqz v2, :cond_4

    .line 136
    const-string v2, "MotionCallManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sevice2 call state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 140
    .end local v0           #tmSevice2:Landroid/telephony/TelephonyManager;
    :cond_4
    new-instance v1, Lcom/sec/android/app/contacts/util/IIMSTelephonyCheck;

    invoke-direct {v1}, Lcom/sec/android/app/contacts/util/IIMSTelephonyCheck;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mIIMSTelephonyCheck:Lcom/sec/android/app/contacts/util/IIMSTelephonyCheck;

    .line 141
    iget-object v1, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mIIMSTelephonyCheck:Lcom/sec/android/app/contacts/util/IIMSTelephonyCheck;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/util/IIMSTelephonyCheck;->hasActiveImsCall()Z

    move-result v1

    goto :goto_0
.end method

.method private isKeyGuardOn()Z
    .locals 3

    .prologue
    .line 232
    iget-object v1, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 234
    .local v0, unlockReceiverfilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 235
    new-instance v1, Lcom/sec/android/app/contacts/util/MotionCallManager$UnlockReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/contacts/util/MotionCallManager$UnlockReceiver;-><init>(Lcom/sec/android/app/contacts/util/MotionCallManager;Lcom/sec/android/app/contacts/util/MotionCallManager$1;)V

    iput-object v1, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->unlockReceiver:Lcom/sec/android/app/contacts/util/MotionCallManager$UnlockReceiver;

    .line 236
    iget-object v1, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->unlockReceiver:Lcom/sec/android/app/contacts/util/MotionCallManager$UnlockReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 237
    const/4 v1, 0x1

    .line 239
    .end local v0           #unlockReceiverfilter:Landroid/content/IntentFilter;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private makeVibrate()V
    .locals 3

    .prologue
    .line 168
    new-instance v0, Landroid/os/SystemVibrator;

    invoke-direct {v0}, Landroid/os/SystemVibrator;-><init>()V

    .line 169
    .local v0, vibrator:Landroid/os/SystemVibrator;
    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/os/SystemVibrator;->vibrate(J)V

    .line 170
    return-void
.end method

.method private registerMotionCallListener()V
    .locals 3

    .prologue
    .line 210
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/contacts/util/MotionCallManager;->isKeyGuardOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 212
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mMotionListener:Landroid/hardware/motion/MRListener;

    const/16 v2, 0x400

    invoke-virtual {v0, v1, v2}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    .line 215
    :cond_0
    return-void
.end method

.method private speakMakeCallMsg()V
    .locals 4

    .prologue
    .line 174
    iget-object v1, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 176
    .local v0, locale:Ljava/util/Locale;
    iget-object v1, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->myHashAlarm:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 177
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->myHashAlarm:Ljava/util/HashMap;

    .line 179
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->myHashAlarm:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 180
    iget-object v1, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->myHashAlarm:Ljava/util/HashMap;

    const-string v2, "streamType"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    new-instance v1, Landroid/speech/tts/TextToSpeech;

    iget-object v2, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/sec/android/app/contacts/util/MotionCallManager$2;

    invoke-direct {v3, p0, v0}, Lcom/sec/android/app/contacts/util/MotionCallManager$2;-><init>(Lcom/sec/android/app/contacts/util/MotionCallManager;Ljava/util/Locale;)V

    invoke-direct {v1, v2, v3}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v1, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 203
    return-void
.end method

.method private unregisterMotionCallListener()V
    .locals 3

    .prologue
    .line 218
    iget-object v1, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v1, :cond_0

    .line 219
    iget-object v1, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v2, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v1, v2}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 221
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->unlockReceiver:Lcom/sec/android/app/contacts/util/MotionCallManager$UnlockReceiver;

    if-eqz v1, :cond_1

    .line 223
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->unlockReceiver:Lcom/sec/android/app/contacts/util/MotionCallManager$UnlockReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->unlockReceiver:Lcom/sec/android/app/contacts/util/MotionCallManager$UnlockReceiver;

    .line 229
    :cond_1
    return-void

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "MotionCallManager"

    const-string v2, "unlock receiver is not registered."

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public call()V
    .locals 3

    .prologue
    .line 145
    const-string v1, "MotionCallManager"

    const-string v2, "Calling by motion"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v1, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mDirectCallPhoneNumber:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 147
    invoke-direct {p0}, Lcom/sec/android/app/contacts/util/MotionCallManager;->hasAnyActiveCall()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mDirectCallPhoneNumber:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getCallIntent(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 152
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.phone.extra.CALL_DIRECTCALL"

    const-string v2, "Contacts"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableBackupSvc4Ctc"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 156
    const-string v1, "directcall"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 159
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 160
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mEnableTts:Z

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/contacts/util/MotionCallManager;->speakMakeCallMsg()V

    .line 161
    :cond_3
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mEnableVibrator:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/contacts/util/MotionCallManager;->makeVibrate()V

    goto :goto_0

    .line 163
    .end local v0           #intent:Landroid/content/Intent;
    :cond_4
    const-string v1, "MotionCallManager"

    const-string v2, "No number"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateDirectCall(ILjava/lang/String;)V
    .locals 2
    .parameter "which"
    .parameter "number"

    .prologue
    .line 99
    packed-switch p1, :pswitch_data_0

    .line 113
    const-string v0, "MotionCallManager"

    const-string v1, "Default"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :goto_0
    return-void

    .line 101
    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/contacts/util/MotionCallManager;->registerMotionCallListener()V

    goto :goto_0

    .line 105
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/contacts/util/MotionCallManager;->unregisterMotionCallListener()V

    goto :goto_0

    .line 109
    :pswitch_2
    iput-object p2, p0, Lcom/sec/android/app/contacts/util/MotionCallManager;->mDirectCallPhoneNumber:Ljava/lang/String;

    goto :goto_0

    .line 99
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
