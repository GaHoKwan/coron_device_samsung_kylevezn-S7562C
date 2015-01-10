.class public Lcom/android/mms/util/DirectCallingManager;
.super Ljava/lang/Object;
.source "DirectCallingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/util/DirectCallingManager$TTSListener;,
        Lcom/android/mms/util/DirectCallingManager$DirectCallingEvent;,
        Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;
    }
.end annotation


# static fields
.field private static final ACCELLEROMETER_OVER_THRESHOLD:F = 60.0f

.field private static final ACCELLEROMETER_UNDER_THRESHOLD:F = 20.0f

.field private static CALL_CONNECT_TONE:Ljava/lang/String; = null

.field private static final DEBUG:Z = true

.field private static final MOVING_THRESHOLD_TIME:I = 0x12c

.field public static final NORMAL:I = 0x0

.field private static final PROXIMITY_CLOSE_DISTANCE:I = 0x40

.field public static final PROXIMITY_DISABLE:I = 0x0

.field public static final PROXIMITY_ENABLE:I = 0x1

.field private static final PROXIMITY_FALSE:F = 5.0f

.field public static final PROXIMITY_FORCE_STOP:I = 0x2

.field private static final PROXIMITY_TRUE:F = 0.0f

.field private static final ROCOGNITION_ERROR_KEY:Ljava/lang/String; = "recognition_error"

.field private static final SPEECH_RECOGNITION_PARTIAL:I = 0x30

.field private static final SPEECH_RECORGNITION_COMPLETE:I = 0x20

.field private static final SPEECH_ROCORGNITION_ERROR:I = 0x50

.field private static final SPEECH_YES:Ljava/lang/String; = "yes"

.field private static final SRC_TAGS:[Ljava/lang/String; = null

.field private static final START_RPOXIMITY_SENSOR:I = 0x60

.field private static final STOP_PROXIMITY_SENSOR:I = 0x70

.field private static final TAG:Ljava/lang/String; = "Mms/DirectCallingManager"

.field private static final TEXT_TO_SPEECH_COMPLETE:I = 0x10

.field public static final TUTORIAL:I = 0x1

.field private static bErrorSpeech:Z = false

.field private static final checkCallConnectTone:Z = false

.field public static mCheckTwiceEvent:Z = false

.field private static mIsStartedProximitySensor:Z = false

.field private static final usingMotionRecognition:Z = true

.field private static final usingTTS:Z

.field private static final usingVoiceRecognizer:Z


# instance fields
.field private IsTTSInitiated:Z

.field private lastX:F

.field private lastY:F

.field private lastZ:F

.field mAcceleration:[F

.field private mAccelerometerSensor:Landroid/hardware/Sensor;

.field mAccelerormeterListener:Landroid/hardware/SensorEventListener;

.field private mActiveMode:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mDirectCallActivity:Lcom/android/mms/ui/DirectCallActivityInterface;

.field private mFinishTutorial:Lcom/android/mms/util/DirectCallingManager$DirectCallingEvent;

.field mGravity:[F

.field private mHandler:Landroid/os/Handler;

.field public mIsProximityCloseDistance:Z

.field private mIsSpeechRecorgnizing:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLastTime:J

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field private mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

.field private mPaused:Z

.field mProximityListener:Landroid/hardware/SensorEventListener;

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mRecognitionListener:Landroid/speech/RecognitionListener;

.field private mRegisteredAccelerometer:Z

.field private mRegisteredMotionRecognition:Z

.field private mRegisteredProximity:Z

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mTextToSpeech:Landroid/speech/tts/TextToSpeech;

.field private mTextToSpeechListener:Lcom/android/mms/util/DirectCallingManager$TTSListener;

.field private mUnlockReceiver:Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;

.field private mVoiceRecognizer:Landroid/speech/SpeechRecognizer;

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 68
    const-string v0, "call_conn_tone"

    sput-object v0, Lcom/android/mms/util/DirectCallingManager;->CALL_CONNECT_TONE:Ljava/lang/String;

    .line 69
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "%s"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/mms/util/DirectCallingManager;->SRC_TAGS:[Ljava/lang/String;

    .line 103
    sput-boolean v2, Lcom/android/mms/util/DirectCallingManager;->bErrorSpeech:Z

    .line 104
    sput-boolean v2, Lcom/android/mms/util/DirectCallingManager;->mIsStartedProximitySensor:Z

    .line 105
    sput-boolean v2, Lcom/android/mms/util/DirectCallingManager;->mCheckTwiceEvent:Z

    return-void
.end method

.method public constructor <init>(ILcom/android/mms/ui/DirectCallActivityInterface;)V
    .locals 2
    .parameter "activeMode"
    .parameter "directCallActivity"

    .prologue
    const/4 v1, 0x0

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-boolean v1, p0, Lcom/android/mms/util/DirectCallingManager;->IsTTSInitiated:Z

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mUnlockReceiver:Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;

    .line 139
    iput-boolean v1, p0, Lcom/android/mms/util/DirectCallingManager;->mPaused:Z

    .line 141
    new-instance v0, Lcom/android/mms/util/DirectCallingManager$1;

    invoke-direct {v0, p0}, Lcom/android/mms/util/DirectCallingManager$1;-><init>(Lcom/android/mms/util/DirectCallingManager;)V

    iput-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mHandler:Landroid/os/Handler;

    .line 730
    new-instance v0, Lcom/android/mms/util/DirectCallingManager$3;

    invoke-direct {v0, p0}, Lcom/android/mms/util/DirectCallingManager$3;-><init>(Lcom/android/mms/util/DirectCallingManager;)V

    iput-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mProximityListener:Landroid/hardware/SensorEventListener;

    .line 779
    new-instance v0, Lcom/android/mms/util/DirectCallingManager$4;

    invoke-direct {v0, p0}, Lcom/android/mms/util/DirectCallingManager$4;-><init>(Lcom/android/mms/util/DirectCallingManager;)V

    iput-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mAccelerormeterListener:Landroid/hardware/SensorEventListener;

    .line 820
    new-instance v0, Lcom/android/mms/util/DirectCallingManager$5;

    invoke-direct {v0, p0}, Lcom/android/mms/util/DirectCallingManager$5;-><init>(Lcom/android/mms/util/DirectCallingManager;)V

    iput-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mRecognitionListener:Landroid/speech/RecognitionListener;

    .line 184
    iput p1, p0, Lcom/android/mms/util/DirectCallingManager;->mActiveMode:I

    .line 185
    iput-object p2, p0, Lcom/android/mms/util/DirectCallingManager;->mDirectCallActivity:Lcom/android/mms/ui/DirectCallActivityInterface;

    .line 186
    return-void
.end method

.method private SpeakCallQuestion()V
    .locals 0

    .prologue
    .line 896
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/util/DirectCallingManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/mms/util/DirectCallingManager;->tryToCall()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/util/DirectCallingManager;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/mms/util/DirectCallingManager;->setIsSpeechRecorgnizing(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/mms/util/DirectCallingManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/android/mms/util/DirectCallingManager;->mIsSpeechRecorgnizing:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/mms/util/DirectCallingManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/mms/util/DirectCallingManager;->registerAccelerometer()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/mms/util/DirectCallingManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/mms/util/DirectCallingManager;->unregisterAccelerometer()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/mms/util/DirectCallingManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/mms/util/DirectCallingManager;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/android/mms/util/DirectCallingManager;->mLastTime:J

    return-wide v0
.end method

.method static synthetic access$1602(Lcom/android/mms/util/DirectCallingManager;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-wide p1, p0, Lcom/android/mms/util/DirectCallingManager;->mLastTime:J

    return-wide p1
.end method

.method static synthetic access$1700(Lcom/android/mms/util/DirectCallingManager;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/android/mms/util/DirectCallingManager;->x:F

    return v0
.end method

.method static synthetic access$1702(Lcom/android/mms/util/DirectCallingManager;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput p1, p0, Lcom/android/mms/util/DirectCallingManager;->x:F

    return p1
.end method

.method static synthetic access$1800(Lcom/android/mms/util/DirectCallingManager;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/android/mms/util/DirectCallingManager;->y:F

    return v0
.end method

.method static synthetic access$1802(Lcom/android/mms/util/DirectCallingManager;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput p1, p0, Lcom/android/mms/util/DirectCallingManager;->y:F

    return p1
.end method

.method static synthetic access$1900(Lcom/android/mms/util/DirectCallingManager;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/android/mms/util/DirectCallingManager;->z:F

    return v0
.end method

.method static synthetic access$1902(Lcom/android/mms/util/DirectCallingManager;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput p1, p0, Lcom/android/mms/util/DirectCallingManager;->z:F

    return p1
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 62
    sget-boolean v0, Lcom/android/mms/util/DirectCallingManager;->mIsStartedProximitySensor:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/mms/util/DirectCallingManager;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/android/mms/util/DirectCallingManager;->lastX:F

    return v0
.end method

.method static synthetic access$2002(Lcom/android/mms/util/DirectCallingManager;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput p1, p0, Lcom/android/mms/util/DirectCallingManager;->lastX:F

    return p1
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    sput-boolean p0, Lcom/android/mms/util/DirectCallingManager;->mIsStartedProximitySensor:Z

    return p0
.end method

.method static synthetic access$2100(Lcom/android/mms/util/DirectCallingManager;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/android/mms/util/DirectCallingManager;->lastY:F

    return v0
.end method

.method static synthetic access$2102(Lcom/android/mms/util/DirectCallingManager;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput p1, p0, Lcom/android/mms/util/DirectCallingManager;->lastY:F

    return p1
.end method

.method static synthetic access$2200(Lcom/android/mms/util/DirectCallingManager;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/android/mms/util/DirectCallingManager;->lastZ:F

    return v0
.end method

.method static synthetic access$2202(Lcom/android/mms/util/DirectCallingManager;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput p1, p0, Lcom/android/mms/util/DirectCallingManager;->lastZ:F

    return p1
.end method

.method static synthetic access$2300(Lcom/android/mms/util/DirectCallingManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/mms/util/DirectCallingManager;)Landroid/speech/tts/TextToSpeech;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/mms/util/DirectCallingManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/android/mms/util/DirectCallingManager;->IsTTSInitiated:Z

    return p1
.end method

.method static synthetic access$2600()Z
    .locals 1

    .prologue
    .line 62
    sget-boolean v0, Lcom/android/mms/util/DirectCallingManager;->bErrorSpeech:Z

    return v0
.end method

.method static synthetic access$2602(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    sput-boolean p0, Lcom/android/mms/util/DirectCallingManager;->bErrorSpeech:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/mms/util/DirectCallingManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/mms/util/DirectCallingManager;->updateProximitySensorMode(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/util/DirectCallingManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/mms/util/DirectCallingManager;->isCall()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/mms/util/DirectCallingManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/mms/util/DirectCallingManager;->readyForCall()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/util/DirectCallingManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/android/mms/util/DirectCallingManager;->mPaused:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/mms/util/DirectCallingManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/mms/util/DirectCallingManager;->registerMotionRecognition()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/mms/util/DirectCallingManager;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/mms/util/DirectCallingManager;->setTextToSpeech(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/mms/util/DirectCallingManager;)Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mUnlockReceiver:Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/mms/util/DirectCallingManager;Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;)Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/mms/util/DirectCallingManager;->mUnlockReceiver:Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;

    return-object p1
.end method

.method private getWakeLockProximity(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 481
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 482
    .local v0, pm:Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->getSupportedWakeLockFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    .line 484
    const/16 v1, 0x20

    const-string v2, "Mms/DirectCallingManager"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/util/DirectCallingManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 487
    :cond_0
    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 488
    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->release(I)V

    .line 489
    :cond_1
    return-void
.end method

.method private isCall()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1050
    iget-object v2, p0, Lcom/android/mms/util/DirectCallingManager;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1051
    .local v0, tm:Landroid/telephony/TelephonyManager;
    if-nez v0, :cond_1

    .line 1057
    :cond_0
    :goto_0
    return v1

    .line 1054
    :cond_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1055
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1027
    if-nez p0, :cond_1

    .line 1046
    :cond_0
    :goto_0
    return v2

    .line 1032
    :cond_1
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 1034
    .local v1, connMgr:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1035
    .local v0, activeNetwork:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    .line 1038
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    move v2, v3

    .line 1044
    goto :goto_0

    :sswitch_1
    move v2, v3

    .line 1040
    goto :goto_0

    :sswitch_2
    move v2, v3

    .line 1042
    goto :goto_0

    .line 1038
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_2
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method public static isSensorReadyForDirectCall(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 1005
    const/4 v0, 0x0

    return v0
.end method

.method private makeVibrate()V
    .locals 3

    .prologue
    .line 633
    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager;->mContext:Landroid/content/Context;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 635
    .local v0, vibrator:Landroid/os/Vibrator;
    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 636
    return-void
.end method

.method private proximitySensorModeEnabled()Z
    .locals 1

    .prologue
    .line 696
    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readyForCall()V
    .locals 1

    .prologue
    .line 590
    invoke-direct {p0}, Lcom/android/mms/util/DirectCallingManager;->tryToCall()V

    .line 594
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/util/DirectCallingManager;->setIsSpeechRecorgnizing(Z)V

    .line 595
    return-void
.end method

.method private registerAccelerometer()V
    .locals 4

    .prologue
    .line 437
    iget-boolean v0, p0, Lcom/android/mms/util/DirectCallingManager;->mRegisteredAccelerometer:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_1

    .line 445
    :cond_0
    :goto_0
    return-void

    .line 440
    :cond_1
    const-string v0, "Mms/DirectCallingManager"

    const-string v1, "registerAccelerometer"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager;->mAccelerormeterListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/mms/util/DirectCallingManager;->mAccelerometerSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 444
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/util/DirectCallingManager;->mRegisteredAccelerometer:Z

    goto :goto_0
.end method

.method private registerMotionRecognition()V
    .locals 3

    .prologue
    .line 419
    iget-boolean v0, p0, Lcom/android/mms/util/DirectCallingManager;->mRegisteredMotionRecognition:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-nez v0, :cond_1

    .line 425
    :cond_0
    :goto_0
    return-void

    .line 422
    :cond_1
    const-string v0, "Mms/DirectCallingManager"

    const-string v1, "registerMotionRecognition"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager;->mMotionListener:Landroid/hardware/motion/MRListener;

    const/16 v2, 0x400

    invoke-virtual {v0, v1, v2}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    .line 424
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/util/DirectCallingManager;->mRegisteredMotionRecognition:Z

    goto :goto_0
.end method

.method private registerProximitySensor()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 457
    iget-boolean v0, p0, Lcom/android/mms/util/DirectCallingManager;->mRegisteredProximity:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_1

    .line 466
    :cond_0
    :goto_0
    return-void

    .line 460
    :cond_1
    const-string v0, "Mms/DirectCallingManager"

    const-string v1, "registerProximitySensor"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager;->mProximityListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/mms/util/DirectCallingManager;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 462
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/util/DirectCallingManager;->mRegisteredProximity:Z

    .line 463
    iput-boolean v3, p0, Lcom/android/mms/util/DirectCallingManager;->mIsProximityCloseDistance:Z

    goto :goto_0
.end method

.method private setContext(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mContext:Landroid/content/Context;

    if-ne v0, p1, :cond_0

    .line 199
    :goto_0
    return-void

    .line 192
    :cond_0
    iput-object p1, p0, Lcom/android/mms/util/DirectCallingManager;->mContext:Landroid/content/Context;

    .line 194
    invoke-direct {p0, p1}, Lcom/android/mms/util/DirectCallingManager;->setMotionSensor(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private setIsSpeechRecorgnizing(Z)V
    .locals 3
    .parameter "set"

    .prologue
    .line 951
    const-string v0, "Mms/DirectCallingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIsSpeechRecorgnizing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    iput-boolean p1, p0, Lcom/android/mms/util/DirectCallingManager;->mIsSpeechRecorgnizing:Z

    .line 953
    return-void
.end method

.method private setMotionSensor(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 215
    return-void
.end method

.method private setTextToSpeech(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 408
    return-void
.end method

.method private setVoiceRecognizer(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 207
    invoke-static {p1}, Landroid/speech/SpeechRecognizer;->createSpeechRecognizer(Landroid/content/Context;)Landroid/speech/SpeechRecognizer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mVoiceRecognizer:Landroid/speech/SpeechRecognizer;

    .line 208
    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mVoiceRecognizer:Landroid/speech/SpeechRecognizer;

    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager;->mRecognitionListener:Landroid/speech/RecognitionListener;

    invoke-virtual {v0, v1}, Landroid/speech/SpeechRecognizer;->setRecognitionListener(Landroid/speech/RecognitionListener;)V

    .line 209
    return-void
.end method

.method private setVolumeForTTS()V
    .locals 4

    .prologue
    .line 921
    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 922
    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mAudioManager:Landroid/media/AudioManager;

    .line 924
    :cond_0
    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    .line 925
    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 926
    :cond_1
    return-void
.end method

.method private speakText(Ljava/lang/String;)V
    .locals 7
    .parameter "textForSpeech"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 878
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 880
    .local v0, myHashAlarm:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "streamType"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 882
    const/4 v1, 0x0

    .line 883
    .local v1, nRet:I
    iget-object v2, p0, Lcom/android/mms/util/DirectCallingManager;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v2, p1, v6, v0}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    move-result v1

    .line 884
    const-string v2, "Mms/DirectCallingManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    ret:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    const-string v2, "utteranceId"

    const-string v3, "DirectCalling ended"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 886
    iget-object v2, p0, Lcom/android/mms/util/DirectCallingManager;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v3, v4, v6, v0}, Landroid/speech/tts/TextToSpeech;->playSilence(JILjava/util/HashMap;)I

    move-result v1

    .line 887
    const-string v2, "Mms/DirectCallingManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playSilence     ret:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    if-gez v1, :cond_0

    .line 889
    sput-boolean v5, Lcom/android/mms/util/DirectCallingManager;->mIsStartedProximitySensor:Z

    .line 890
    sput-boolean v5, Lcom/android/mms/util/DirectCallingManager;->mCheckTwiceEvent:Z

    .line 892
    :cond_0
    return-void
.end method

.method private startSpeechRecognize()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 929
    const-string v1, "Mms/DirectCallingManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startSpeechRecognize... recongnition Available : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/util/DirectCallingManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/speech/SpeechRecognizer;->isRecognitionAvailable(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager;->mVoiceRecognizer:Landroid/speech/SpeechRecognizer;

    if-nez v1, :cond_0

    .line 948
    :goto_0
    return-void

    .line 934
    :cond_0
    invoke-direct {p0, v4}, Lcom/android/mms/util/DirectCallingManager;->setIsSpeechRecorgnizing(Z)V

    .line 936
    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/speech/SpeechRecognizer;->isRecognitionAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 938
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 939
    .local v0, i:Landroid/content/Intent;
    const-string v1, "calling_package"

    iget-object v2, p0, Lcom/android/mms/util/DirectCallingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 940
    const-string v1, "android.speech.extra.LANGUAGE"

    const-string v2, "en-US"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 941
    const-string v1, "android.speech.extra.PARTIAL_RESULTS"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 943
    const-string v1, "Mms/DirectCallingManager"

    const-string v2, "start Listening... "

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager;->mVoiceRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v1, v0}, Landroid/speech/SpeechRecognizer;->startListening(Landroid/content/Intent;)V

    goto :goto_0

    .line 946
    .end local v0           #i:Landroid/content/Intent;
    :cond_1
    const-string v1, "Mms/DirectCallingManager"

    const-string v2, "stop listtening... "

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private stopSpeechRecognition()V
    .locals 0

    .prologue
    .line 701
    return-void
.end method

.method private stopTTS()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 713
    const-string v1, "Mms/DirectCallingManager"

    const-string v2, "stopTTS"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_0

    .line 717
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 718
    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 719
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/util/DirectCallingManager;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 725
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager;->mTextToSpeechListener:Lcom/android/mms/util/DirectCallingManager$TTSListener;

    if-eqz v1, :cond_1

    .line 726
    iput-object v3, p0, Lcom/android/mms/util/DirectCallingManager;->mTextToSpeechListener:Lcom/android/mms/util/DirectCallingManager$TTSListener;

    .line 728
    :cond_1
    return-void

    .line 720
    :catch_0
    move-exception v0

    .line 721
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "Mms/DirectCallingManager"

    const-string v2, "TTS is shutdown"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private tryToCall()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 598
    sput-boolean v4, Lcom/android/mms/util/DirectCallingManager;->mIsStartedProximitySensor:Z

    .line 601
    const/4 v0, 0x0

    .line 609
    .local v0, callConnectTone:I
    if-nez v0, :cond_0

    .line 610
    invoke-direct {p0}, Lcom/android/mms/util/DirectCallingManager;->makeVibrate()V

    .line 612
    :cond_0
    iget v2, p0, Lcom/android/mms/util/DirectCallingManager;->mActiveMode:I

    if-nez v2, :cond_2

    .line 613
    iget-object v2, p0, Lcom/android/mms/util/DirectCallingManager;->mDirectCallActivity:Lcom/android/mms/ui/DirectCallActivityInterface;

    if-eqz v2, :cond_1

    .line 614
    const-string v2, "Mms/DirectCallingManager"

    const-string v3, "tryToCall - makeCall"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    iget-object v2, p0, Lcom/android/mms/util/DirectCallingManager;->mDirectCallActivity:Lcom/android/mms/ui/DirectCallActivityInterface;

    invoke-interface {v2}, Lcom/android/mms/ui/DirectCallActivityInterface;->hideSipForDirectCall()V

    .line 616
    iget-object v2, p0, Lcom/android/mms/util/DirectCallingManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/util/DirectCallingManager;->mDirectCallActivity:Lcom/android/mms/ui/DirectCallActivityInterface;

    invoke-interface {v3}, Lcom/android/mms/ui/DirectCallActivityInterface;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/ui/MessageUtils;->makeCall(Landroid/content/Context;Ljava/lang/String;)V

    .line 624
    :cond_1
    :goto_0
    sput-boolean v4, Lcom/android/mms/util/DirectCallingManager;->mCheckTwiceEvent:Z

    .line 625
    return-void

    .line 618
    :cond_2
    iget v2, p0, Lcom/android/mms/util/DirectCallingManager;->mActiveMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 619
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/mms/util/DirectCallingManager;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/mms/ui/FakeCallActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 620
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x4000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 621
    iget-object v2, p0, Lcom/android/mms/util/DirectCallingManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/mms/util/PackageInfo;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 622
    iget-object v2, p0, Lcom/android/mms/util/DirectCallingManager;->mFinishTutorial:Lcom/android/mms/util/DirectCallingManager$DirectCallingEvent;

    invoke-interface {v2}, Lcom/android/mms/util/DirectCallingManager$DirectCallingEvent;->onFinishTutorial()V

    goto :goto_0
.end method

.method private unregisterAccelerometer()V
    .locals 2

    .prologue
    .line 448
    iget-boolean v0, p0, Lcom/android/mms/util/DirectCallingManager;->mRegisteredAccelerometer:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_1

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 451
    :cond_1
    const-string v0, "Mms/DirectCallingManager"

    const-string v1, "unregisterAccelerometer"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager;->mAccelerormeterListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 453
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/util/DirectCallingManager;->mRegisteredAccelerometer:Z

    goto :goto_0
.end method

.method private unregisterMotionRecognition()V
    .locals 2

    .prologue
    .line 428
    iget-boolean v0, p0, Lcom/android/mms/util/DirectCallingManager;->mRegisteredMotionRecognition:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-nez v0, :cond_1

    .line 434
    :cond_0
    :goto_0
    return-void

    .line 431
    :cond_1
    const-string v0, "Mms/DirectCallingManager"

    const-string v1, "unregisterMotionRecognition"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 433
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/util/DirectCallingManager;->mRegisteredMotionRecognition:Z

    goto :goto_0
.end method

.method private unregisterProximity()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 469
    iget-boolean v0, p0, Lcom/android/mms/util/DirectCallingManager;->mRegisteredProximity:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_1

    .line 477
    :cond_0
    :goto_0
    return-void

    .line 473
    :cond_1
    const-string v0, "Mms/DirectCallingManager"

    const-string v1, "unregisterProximity"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager;->mProximityListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 475
    iput-boolean v2, p0, Lcom/android/mms/util/DirectCallingManager;->mRegisteredProximity:Z

    .line 476
    iput-boolean v2, p0, Lcom/android/mms/util/DirectCallingManager;->mIsProximityCloseDistance:Z

    goto :goto_0
.end method

.method private updateProximitySensorMode(I)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v3, 0x0

    .line 662
    const-string v0, "Mms/DirectCallingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateProximitySensorMode(), proximitySensorModeEnabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/mms/util/DirectCallingManager;->proximitySensorModeEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    packed-switch p1, :pswitch_data_0

    .line 693
    :goto_0
    return-void

    .line 671
    :pswitch_0
    invoke-direct {p0}, Lcom/android/mms/util/DirectCallingManager;->registerProximitySensor()V

    goto :goto_0

    .line 675
    :pswitch_1
    sput-boolean v3, Lcom/android/mms/util/DirectCallingManager;->mIsStartedProximitySensor:Z

    .line 676
    sput-boolean v3, Lcom/android/mms/util/DirectCallingManager;->mCheckTwiceEvent:Z

    .line 682
    invoke-direct {p0}, Lcom/android/mms/util/DirectCallingManager;->unregisterProximity()V

    goto :goto_0

    .line 686
    :pswitch_2
    sput-boolean v3, Lcom/android/mms/util/DirectCallingManager;->mIsStartedProximitySensor:Z

    .line 687
    sput-boolean v3, Lcom/android/mms/util/DirectCallingManager;->mCheckTwiceEvent:Z

    .line 688
    invoke-direct {p0}, Lcom/android/mms/util/DirectCallingManager;->unregisterProximity()V

    goto :goto_0

    .line 664
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private wakeLockProximity()V
    .locals 2

    .prologue
    .line 492
    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 501
    :goto_0
    return-void

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    .line 496
    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0

    .line 499
    :cond_1
    const-string v0, "Mms/DirectCallingManager"

    const-string v1, "updateProximitySensorMode: lock already held."

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private wakeUnlockProximity()V
    .locals 2

    .prologue
    .line 504
    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->release(I)V

    .line 510
    :goto_0
    return-void

    .line 508
    :cond_0
    const-string v0, "Mms/DirectCallingManager"

    const-string v1, "updateProximitySensorMode: lock already released."

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected AnalizeRecorgnitionPartialResult(Landroid/os/Bundle;)V
    .locals 4
    .parameter "bundle"

    .prologue
    .line 650
    const-string v1, "results_recognition"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 651
    .local v0, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "Mms/DirectCallingManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AnalizeRecorgnitionPartialResult, result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    if-eqz v0, :cond_0

    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 653
    invoke-direct {p0}, Lcom/android/mms/util/DirectCallingManager;->readyForCall()V

    .line 654
    const-string v1, "Mms/DirectCallingManager"

    const-string v2, "AnalizeRecorgnitionPartialResult - makeCall"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    :goto_0
    return-void

    .line 656
    :cond_0
    const-string v1, "Mms/DirectCallingManager"

    const-string v2, "AnalizeRecorgnitionPartialResult - makeCall fail : Say No"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected AnalizeRecorgnitionResult(Landroid/os/Bundle;)V
    .locals 4
    .parameter "bundle"

    .prologue
    .line 562
    const-string v1, "results_recognition"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 563
    .local v0, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "Mms/DirectCallingManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AnalizeRecorgnitionResult, result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    if-eqz v0, :cond_0

    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 565
    invoke-direct {p0}, Lcom/android/mms/util/DirectCallingManager;->readyForCall()V

    .line 566
    const-string v1, "Mms/DirectCallingManager"

    const-string v2, "AnalizeRecorgnitionResult - makeCall"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    :goto_0
    return-void

    .line 568
    :cond_0
    const-string v1, "Mms/DirectCallingManager"

    const-string v2, "AnalizeRecorgnitionResult - makeCall fail : Say No"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getPickupToCallOut(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 310
    if-eqz p1, :cond_0

    .line 313
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onResultErrorCode(I)V
    .locals 6
    .parameter "error"

    .prologue
    const/4 v5, 0x0

    .line 513
    const/4 v0, 0x0

    .line 514
    .local v0, msg:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/mms/util/DirectCallingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 516
    .local v1, res:Landroid/content/res/Resources;
    packed-switch p1, :pswitch_data_0

    .line 545
    const-string v2, "Mms/DirectCallingManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    :goto_0
    const-string v2, "Mms/DirectCallingManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResultErrorCode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    invoke-direct {p0, v0}, Lcom/android/mms/util/DirectCallingManager;->speakText(Ljava/lang/String;)V

    .line 553
    if-eqz v0, :cond_0

    .line 554
    iget-object v2, p0, Lcom/android/mms/util/DirectCallingManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 556
    :cond_0
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/mms/util/DirectCallingManager;->bErrorSpeech:Z

    .line 557
    invoke-direct {p0, v5}, Lcom/android/mms/util/DirectCallingManager;->setIsSpeechRecorgnizing(Z)V

    .line 558
    return-void

    .line 518
    :pswitch_0
    const v2, 0x7f0a02f5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 519
    goto :goto_0

    .line 521
    :pswitch_1
    const v2, 0x7f0a02f6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 522
    goto :goto_0

    .line 524
    :pswitch_2
    const v2, 0x7f0a02f7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 525
    goto :goto_0

    .line 527
    :pswitch_3
    const v2, 0x7f0a02f8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 528
    goto :goto_0

    .line 530
    :pswitch_4
    const v2, 0x7f0a02f9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 531
    goto :goto_0

    .line 533
    :pswitch_5
    const v2, 0x7f0a02fa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 534
    goto :goto_0

    .line 536
    :pswitch_6
    const v2, 0x7f0a02fb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 537
    goto :goto_0

    .line 539
    :pswitch_7
    const v2, 0x7f0a02fc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 540
    goto :goto_0

    .line 542
    :pswitch_8
    const v2, 0x7f0a02fd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 543
    goto :goto_0

    .line 516
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_7
        :pswitch_1
        :pswitch_8
        :pswitch_5
        :pswitch_6
        :pswitch_2
    .end packed-switch
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/mms/util/DirectCallingManager;->getPickupToCallOut(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 362
    :goto_0
    return-void

    .line 350
    :cond_0
    const-string v0, "Mms/DirectCallingManager"

    const-string v1, "pause"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/util/DirectCallingManager;->mPaused:Z

    .line 353
    invoke-direct {p0}, Lcom/android/mms/util/DirectCallingManager;->stopTTS()V

    .line 354
    invoke-direct {p0}, Lcom/android/mms/util/DirectCallingManager;->stopSpeechRecognition()V

    .line 357
    invoke-direct {p0}, Lcom/android/mms/util/DirectCallingManager;->unregisterMotionRecognition()V

    goto :goto_0
.end method

.method public resume(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 365
    invoke-virtual {p0, p1}, Lcom/android/mms/util/DirectCallingManager;->getPickupToCallOut(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager;->mDirectCallActivity:Lcom/android/mms/ui/DirectCallActivityInterface;

    if-nez v1, :cond_1

    .line 404
    :cond_0
    :goto_0
    return-void

    .line 368
    :cond_1
    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager;->mDirectCallActivity:Lcom/android/mms/ui/DirectCallActivityInterface;

    invoke-interface {v1}, Lcom/android/mms/ui/DirectCallActivityInterface;->isAvailableDirectCall()Z

    move-result v1

    if-nez v1, :cond_2

    .line 369
    invoke-virtual {p0}, Lcom/android/mms/util/DirectCallingManager;->pause()V

    goto :goto_0

    .line 373
    :cond_2
    const-string v1, "Mms/DirectCallingManager"

    const-string v2, "resume"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    iput-boolean v3, p0, Lcom/android/mms/util/DirectCallingManager;->mPaused:Z

    .line 375
    invoke-direct {p0, p1}, Lcom/android/mms/util/DirectCallingManager;->setContext(Landroid/content/Context;)V

    .line 377
    sput-boolean v3, Lcom/android/mms/util/DirectCallingManager;->mIsStartedProximitySensor:Z

    .line 378
    sput-boolean v3, Lcom/android/mms/util/DirectCallingManager;->mCheckTwiceEvent:Z

    .line 380
    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v1, :cond_3

    .line 381
    const-string v1, "keyguard"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    iput-object v1, p0, Lcom/android/mms/util/DirectCallingManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 383
    :cond_3
    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 384
    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager;->mUnlockReceiver:Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;

    if-nez v1, :cond_0

    .line 385
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 386
    .local v0, unlockReceiverfilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 387
    new-instance v1, Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;-><init>(Lcom/android/mms/util/DirectCallingManager;Lcom/android/mms/util/DirectCallingManager$1;)V

    iput-object v1, p0, Lcom/android/mms/util/DirectCallingManager;->mUnlockReceiver:Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;

    .line 388
    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager;->mUnlockReceiver:Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;->setRegistered(Z)V

    .line 389
    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager;->mUnlockReceiver:Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 398
    .end local v0           #unlockReceiverfilter:Landroid/content/IntentFilter;
    :cond_4
    invoke-direct {p0}, Lcom/android/mms/util/DirectCallingManager;->registerMotionRecognition()V

    .line 403
    invoke-direct {p0, p1}, Lcom/android/mms/util/DirectCallingManager;->setTextToSpeech(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public setActiveMode(I)V
    .locals 0
    .parameter "activeMode"

    .prologue
    .line 202
    iput p1, p0, Lcom/android/mms/util/DirectCallingManager;->mActiveMode:I

    .line 203
    return-void
.end method

.method public setFinishTutorialListener(Lcom/android/mms/util/DirectCallingManager$DirectCallingEvent;)V
    .locals 0
    .parameter "finishEvent"

    .prologue
    .line 641
    iput-object p1, p0, Lcom/android/mms/util/DirectCallingManager;->mFinishTutorial:Lcom/android/mms/util/DirectCallingManager$DirectCallingEvent;

    .line 642
    return-void
.end method

.method public setPickupToCallOut(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "set"

    .prologue
    .line 328
    if-nez p1, :cond_0

    .line 344
    :goto_0
    return-void

    .line 331
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "master_motion"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 335
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_engine"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 339
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_pick_up_to_call_out"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 343
    const-string v0, "Mms/DirectCallingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPickupToCallOut() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
