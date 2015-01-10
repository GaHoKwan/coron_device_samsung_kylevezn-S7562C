.class public Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;
.super Ljava/lang/Object;
.source "DirectCallingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$TTSListener;,
        Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$DirectCallingEvent;,
        Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$UnlockReceiver;
    }
.end annotation


# static fields
.field private static CALL_CONNECT_TONE:Ljava/lang/String;

.field private static final SRC_TAGS:[Ljava/lang/String;

.field private static bErrorSpeech:Z

.field private static mCheckTryToCall:Z

.field private static mCheckTwiceEvent:Z

.field private static mIsStartedProximitySensor:Z


# instance fields
.field private IsTTSInitiated:Z

.field private lastX:F

.field private lastY:F

.field private lastZ:F

.field private mAccelerometerSensor:Landroid/hardware/Sensor;

.field mAccelerormeterListener:Landroid/hardware/SensorEventListener;

.field private mActiveMode:I

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field public mIsProximityCloseDistance:Z

.field private mIsSpeechRecorgnizing:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLastTime:J

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field private mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

.field private mName:Ljava/lang/String;

.field private mPhoneNumber:Ljava/lang/String;

.field mProximityListener:Landroid/hardware/SensorEventListener;

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mRecognitionListener:Landroid/speech/RecognitionListener;

.field private mRegisteredAccelerometer:Z

.field private mRegisteredMotionRecognition:Z

.field private mRegisteredProximity:Z

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mTextToSpeech:Landroid/speech/tts/TextToSpeech;

.field private mTextToSpeechListener:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$TTSListener;

.field private unlockReceiver:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$UnlockReceiver;

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 48
    const-string v0, "call_conn_tone"

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->CALL_CONNECT_TONE:Ljava/lang/String;

    .line 49
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "%s"

    aput-object v1, v0, v2

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->SRC_TAGS:[Ljava/lang/String;

    .line 77
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->bErrorSpeech:Z

    .line 78
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mIsStartedProximitySensor:Z

    .line 79
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mCheckTwiceEvent:Z

    .line 80
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mCheckTryToCall:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "activeMode"

    .prologue
    const/4 v1, 0x0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->IsTTSInitiated:Z

    .line 113
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$1;-><init>(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mHandler:Landroid/os/Handler;

    .line 639
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$3;-><init>(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mProximityListener:Landroid/hardware/SensorEventListener;

    .line 679
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$4;-><init>(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mAccelerormeterListener:Landroid/hardware/SensorEventListener;

    .line 727
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$5;-><init>(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mRecognitionListener:Landroid/speech/RecognitionListener;

    .line 154
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mContext:Landroid/content/Context;

    .line 155
    iput p2, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mActiveMode:I

    .line 156
    sput-boolean v1, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mCheckTwiceEvent:Z

    .line 157
    sput-boolean v1, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mCheckTryToCall:Z

    .line 159
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->setMotionSensor(Landroid/content/Context;)V

    .line 164
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->tryToCall()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->setIsSpeechRecorgnizing(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$UnlockReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->unlockReceiver:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$UnlockReceiver;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$UnlockReceiver;)Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$UnlockReceiver;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->unlockReceiver:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$UnlockReceiver;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mIsSpeechRecorgnizing:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->registerAccelerometer()V

    return-void
.end method

.method static synthetic access$1500(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->unregisterAccelerometer()V

    return-void
.end method

.method static synthetic access$1600(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mLastTime:J

    return-wide v0
.end method

.method static synthetic access$1702(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-wide p1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mLastTime:J

    return-wide p1
.end method

.method static synthetic access$1800(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->x:F

    return v0
.end method

.method static synthetic access$1802(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput p1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->x:F

    return p1
.end method

.method static synthetic access$1900(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->y:F

    return v0
.end method

.method static synthetic access$1902(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput p1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->y:F

    return p1
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mIsStartedProximitySensor:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->z:F

    return v0
.end method

.method static synthetic access$2002(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput p1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->z:F

    return p1
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    sput-boolean p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mIsStartedProximitySensor:Z

    return p0
.end method

.method static synthetic access$2100(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->lastX:F

    return v0
.end method

.method static synthetic access$2102(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput p1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->lastX:F

    return p1
.end method

.method static synthetic access$2200(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->lastY:F

    return v0
.end method

.method static synthetic access$2202(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput p1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->lastY:F

    return p1
.end method

.method static synthetic access$2300(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->lastZ:F

    return v0
.end method

.method static synthetic access$2302(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput p1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->lastZ:F

    return p1
.end method

.method static synthetic access$2400(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)Landroid/speech/tts/TextToSpeech;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->IsTTSInitiated:Z

    return p1
.end method

.method static synthetic access$2600()Z
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->bErrorSpeech:Z

    return v0
.end method

.method static synthetic access$2602(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    sput-boolean p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->bErrorSpeech:Z

    return p0
.end method

.method static synthetic access$300(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->updateProximitySensorMode(I)V

    return-void
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mCheckTwiceEvent:Z

    return v0
.end method

.method static synthetic access$402(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    sput-boolean p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mCheckTwiceEvent:Z

    return p0
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mCheckTryToCall:Z

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->readyForCall()V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->registerMotionRecognition()V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->setTextToSpeech()V

    return-void
.end method

.method public static isSensorReadyForDirectCall(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x1

    .line 890
    const/4 v2, 0x0

    .line 891
    .local v2, isProximitySensor:Z
    const/4 v1, 0x0

    .line 893
    .local v1, isAccelerometerSensor:Z
    const-string v6, "sensor"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/SensorManager;

    .line 894
    .local v4, sensorMgr:Landroid/hardware/SensorManager;
    const/4 v6, -0x1

    invoke-virtual {v4, v6}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v3

    .line 896
    .local v3, sensorList:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_2

    .line 897
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/Sensor;

    invoke-virtual {v6}, Landroid/hardware/Sensor;->getType()I

    move-result v5

    .line 898
    .local v5, sensorType:I
    if-ne v5, v7, :cond_1

    .line 899
    const/4 v1, 0x1

    .line 896
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 900
    :cond_1
    const/16 v6, 0x8

    if-ne v5, v6, :cond_0

    .line 901
    const/4 v2, 0x1

    goto :goto_1

    .line 904
    .end local v5           #sensorType:I
    :cond_2
    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    move v6, v7

    :goto_2
    return v6

    :cond_3
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private makeVibrate()V
    .locals 3

    .prologue
    .line 536
    new-instance v0, Landroid/os/SystemVibrator;

    invoke-direct {v0}, Landroid/os/SystemVibrator;-><init>()V

    .line 537
    .local v0, vibrator:Landroid/os/SystemVibrator;
    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/os/SystemVibrator;->vibrate(J)V

    .line 538
    return-void
.end method

.method private readyForCall()V
    .locals 1

    .prologue
    .line 497
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->tryToCall()V

    .line 500
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->setIsSpeechRecorgnizing(Z)V

    .line 501
    return-void
.end method

.method private registerAccelerometer()V
    .locals 4

    .prologue
    .line 361
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mRegisteredAccelerometer:Z

    if-eqz v0, :cond_0

    .line 369
    :goto_0
    return-void

    .line 364
    :cond_0
    const-string v0, "Logs/DirectCallingManager"

    const-string v1, "registerAccelerometer"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mAccelerormeterListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mAccelerometerSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 368
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mRegisteredAccelerometer:Z

    goto :goto_0
.end method

.method private registerMotionRecognition()V
    .locals 3

    .prologue
    .line 344
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mRegisteredMotionRecognition:Z

    if-eqz v0, :cond_0

    .line 351
    :goto_0
    return-void

    .line 347
    :cond_0
    const-string v0, "Logs/DirectCallingManager"

    const-string v1, "registerMotionRecognition"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 349
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mMotionListener:Landroid/hardware/motion/MRListener;

    const/16 v2, 0x400

    invoke-virtual {v0, v1, v2}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    .line 350
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mRegisteredMotionRecognition:Z

    goto :goto_0
.end method

.method private registerProximitySensor()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 379
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mRegisteredProximity:Z

    if-eqz v0, :cond_0

    .line 388
    :goto_0
    return-void

    .line 382
    :cond_0
    const-string v0, "Logs/DirectCallingManager"

    const-string v1, "registerProximitySensor"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mProximityListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 384
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mRegisteredProximity:Z

    .line 385
    iput-boolean v3, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mIsProximityCloseDistance:Z

    goto :goto_0
.end method

.method private setIsSpeechRecorgnizing(Z)V
    .locals 3
    .parameter "set"

    .prologue
    .line 844
    const-string v0, "Logs/DirectCallingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIsSpeechRecorgnizing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mIsSpeechRecorgnizing:Z

    .line 846
    return-void
.end method

.method private setMotionSensor(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 187
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mRegisteredMotionRecognition:Z

    .line 189
    const-string v0, "motion_recognition"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/motion/MotionRecognitionManager;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 192
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$2;-><init>(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 230
    return-void
.end method

.method private setTextToSpeech()V
    .locals 0

    .prologue
    .line 334
    return-void
.end method

.method private speakText(Ljava/lang/String;)V
    .locals 7
    .parameter "textForSpeech"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 775
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 776
    .local v0, myHashAlarm:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "streamType"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->setTextToSpeech()V

    .line 779
    const-string v2, "Logs/DirectCallingManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "speakText, mTextToSpeech : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    if-eqz v2, :cond_1

    .line 781
    const/4 v1, 0x0

    .line 783
    .local v1, nRet:I
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v2, p1, v6, v0}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    move-result v1

    .line 784
    const-string v2, "Logs/DirectCallingManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "speak, ret:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    const-string v2, "utteranceId"

    const-string v3, "DirectCalling ended"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v3, v4, v6, v0}, Landroid/speech/tts/TextToSpeech;->playSilence(JILjava/util/HashMap;)I

    move-result v1

    .line 787
    const-string v2, "Logs/DirectCallingManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playSilence     ret:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    if-gez v1, :cond_0

    .line 789
    sput-boolean v5, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mIsStartedProximitySensor:Z

    .line 790
    sput-boolean v5, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mCheckTwiceEvent:Z

    .line 797
    .end local v1           #nRet:I
    :cond_0
    :goto_0
    return-void

    .line 794
    :cond_1
    sput-boolean v5, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mIsStartedProximitySensor:Z

    .line 795
    sput-boolean v5, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mCheckTwiceEvent:Z

    goto :goto_0
.end method

.method private stopSpeechRecognition()V
    .locals 0

    .prologue
    .line 612
    return-void
.end method

.method private stopTTS()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 623
    const-string v1, "Logs/DirectCallingManager"

    const-string v2, "stopTTS"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_0

    .line 626
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    .line 627
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 628
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 629
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 635
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mTextToSpeechListener:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$TTSListener;

    if-eqz v1, :cond_1

    .line 636
    iput-object v3, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mTextToSpeechListener:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$TTSListener;

    .line 638
    :cond_1
    return-void

    .line 630
    :catch_0
    move-exception v0

    .line 631
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "Logs/DirectCallingManager"

    const-string v2, "TTS is shutdown"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private tryToCall()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 503
    const-string v1, "Logs/DirectCallingManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tryToCall, mActiveMode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mActiveMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    const/4 v0, 0x0

    .line 514
    .local v0, callConnectTone:I
    if-nez v0, :cond_0

    .line 515
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->makeVibrate()V

    .line 517
    :cond_0
    iget v1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mActiveMode:I

    if-nez v1, :cond_1

    .line 518
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v1, v2, v5}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->makeCallForResult(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 519
    const-string v1, "Logs/DirectCallingManager"

    const-string v2, "tryToCall, mCheckTwiceEvent is false"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    sput-boolean v4, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mIsStartedProximitySensor:Z

    .line 521
    sput-boolean v4, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mCheckTwiceEvent:Z

    .line 522
    sput-boolean v5, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mCheckTryToCall:Z

    .line 533
    :cond_1
    return-void
.end method

.method private unregisterAccelerometer()V
    .locals 2

    .prologue
    .line 371
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mRegisteredAccelerometer:Z

    if-nez v0, :cond_0

    .line 377
    :goto_0
    return-void

    .line 374
    :cond_0
    const-string v0, "Logs/DirectCallingManager"

    const-string v1, "unregisterAccelerometer"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mAccelerormeterListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 376
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mRegisteredAccelerometer:Z

    goto :goto_0
.end method

.method private unregisterMotionRecognition()V
    .locals 2

    .prologue
    .line 353
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mRegisteredMotionRecognition:Z

    if-nez v0, :cond_0

    .line 359
    :goto_0
    return-void

    .line 356
    :cond_0
    const-string v0, "Logs/DirectCallingManager"

    const-string v1, "unregisterMotionRecognition"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 358
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mRegisteredMotionRecognition:Z

    goto :goto_0
.end method

.method private unregisterProximity()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 390
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mRegisteredProximity:Z

    if-nez v0, :cond_0

    .line 398
    :goto_0
    return-void

    .line 394
    :cond_0
    const-string v0, "Logs/DirectCallingManager"

    const-string v1, "unregisterProximity"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mProximityListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 396
    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mRegisteredProximity:Z

    .line 397
    iput-boolean v2, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mIsProximityCloseDistance:Z

    goto :goto_0
.end method

.method private updateProximitySensorMode(I)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v2, 0x0

    .line 564
    packed-switch p1, :pswitch_data_0

    .line 596
    :goto_0
    return-void

    .line 572
    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->registerProximitySensor()V

    goto :goto_0

    .line 576
    :pswitch_1
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mIsStartedProximitySensor:Z

    .line 577
    const-string v0, "Logs/DirectCallingManager"

    const-string v1, "PROXIMITY_DISABLE, mCheckTwiceEvent is true"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mCheckTwiceEvent:Z

    .line 584
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->unregisterProximity()V

    goto :goto_0

    .line 588
    :pswitch_2
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mIsStartedProximitySensor:Z

    .line 589
    const-string v0, "Logs/DirectCallingManager"

    const-string v1, "PROXIMITY_FORCE_STOP, mCheckTwiceEvent is true"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mCheckTwiceEvent:Z

    .line 591
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->unregisterProximity()V

    goto :goto_0

    .line 564
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected AnalizeRecorgnitionPartialResult(Landroid/os/Bundle;)V
    .locals 4
    .parameter "bundle"

    .prologue
    .line 551
    const-string v1, "results_recognition"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 552
    .local v0, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "Logs/DirectCallingManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AnalizeRecorgnitionPartialResult, result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    if-eqz v0, :cond_0

    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 554
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->readyForCall()V

    .line 555
    const-string v1, "Logs/DirectCallingManager"

    const-string v2, "AnalizeRecorgnitionPartialResult - makeCall"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :goto_0
    return-void

    .line 557
    :cond_0
    const-string v1, "Logs/DirectCallingManager"

    const-string v2, "AnalizeRecorgnitionPartialResult - makeCall fail : Say No"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected AnalizeRecorgnitionResult(Landroid/os/Bundle;)V
    .locals 4
    .parameter "bundle"

    .prologue
    .line 472
    const-string v1, "results_recognition"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 473
    .local v0, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "Logs/DirectCallingManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AnalizeRecorgnitionResult, result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    if-eqz v0, :cond_0

    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 475
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->readyForCall()V

    .line 476
    const-string v1, "Logs/DirectCallingManager"

    const-string v2, "AnalizeRecorgnitionResult - makeCall"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :goto_0
    return-void

    .line 478
    :cond_0
    const-string v1, "Logs/DirectCallingManager"

    const-string v2, "AnalizeRecorgnitionResult - makeCall fail : Say No"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getPickupToCallOut()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 254
    iget v4, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mActiveMode:I

    if-ne v4, v2, :cond_0

    .line 263
    :goto_0
    return v2

    .line 257
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "motion_engine"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 258
    .local v1, motionState:I
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "motion_pick_up_to_call_out"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 260
    .local v0, directCallState:I
    if-ne v1, v2, :cond_1

    if-ne v0, v2, :cond_1

    .line 262
    .local v2, state:Z
    :goto_1
    const-string v3, "Logs/DirectCallingManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPickupToCallOut() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v2           #state:Z
    :cond_1
    move v2, v3

    .line 260
    goto :goto_1
.end method

.method protected onResultErrorCode(I)V
    .locals 6
    .parameter "error"

    .prologue
    const/4 v5, 0x0

    .line 428
    const/4 v0, 0x0

    .line 429
    .local v0, msg:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 430
    .local v1, res:Landroid/content/res/Resources;
    const-string v2, "Logs/DirectCallingManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResultErrorCode : error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    packed-switch p1, :pswitch_data_0

    .line 460
    const-string v2, "Logs/DirectCallingManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :goto_0
    const-string v2, "Logs/DirectCallingManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResultErrorCode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->speakText(Ljava/lang/String;)V

    .line 465
    if-eqz v0, :cond_0

    .line 466
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 468
    :cond_0
    const/4 v2, 0x1

    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->bErrorSpeech:Z

    .line 469
    invoke-direct {p0, v5}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->setIsSpeechRecorgnizing(Z)V

    .line 470
    return-void

    .line 433
    :pswitch_0
    const v2, 0x7f0d036b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 434
    goto :goto_0

    .line 436
    :pswitch_1
    const v2, 0x7f0d036c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 437
    goto :goto_0

    .line 439
    :pswitch_2
    const v2, 0x7f0d036d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 440
    goto :goto_0

    .line 442
    :pswitch_3
    const v2, 0x7f0d036e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 443
    goto :goto_0

    .line 445
    :pswitch_4
    const v2, 0x7f0d036f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 446
    goto :goto_0

    .line 448
    :pswitch_5
    const v2, 0x7f0d0370

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 449
    goto :goto_0

    .line 451
    :pswitch_6
    const v2, 0x7f0d0371

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 452
    goto :goto_0

    .line 454
    :pswitch_7
    const v2, 0x7f0d0372

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 455
    goto :goto_0

    .line 457
    :pswitch_8
    const v2, 0x7f0d0373

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 458
    goto :goto_0

    .line 431
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
    .line 289
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mCheckTryToCall:Z

    .line 291
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->getPickupToCallOut()Z

    move-result v0

    if-nez v0, :cond_0

    .line 306
    :goto_0
    return-void

    .line 293
    :cond_0
    const-string v0, "Logs/DirectCallingManager"

    const-string v1, "pause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->stopTTS()V

    .line 295
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->stopSpeechRecognition()V

    .line 296
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->unlockReceiver:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$UnlockReceiver;

    if-eqz v0, :cond_1

    .line 297
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->unlockReceiver:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$UnlockReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 298
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->unlockReceiver:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$UnlockReceiver;

    .line 301
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->unregisterMotionRecognition()V

    goto :goto_0
.end method

.method public resume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 308
    sput-boolean v3, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mCheckTryToCall:Z

    .line 310
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->getPickupToCallOut()Z

    move-result v1

    if-nez v1, :cond_0

    .line 331
    :goto_0
    return-void

    .line 312
    :cond_0
    const-string v1, "Logs/DirectCallingManager"

    const-string v2, "resume"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    sput-boolean v3, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mIsStartedProximitySensor:Z

    .line 314
    sput-boolean v3, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mCheckTwiceEvent:Z

    .line 316
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v1, :cond_1

    .line 317
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mContext:Landroid/content/Context;

    const-string v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 318
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 319
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 320
    .local v0, unlockReceiverfilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 321
    new-instance v1, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$UnlockReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$UnlockReceiver;-><init>(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$1;)V

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->unlockReceiver:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$UnlockReceiver;

    .line 322
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->unlockReceiver:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$UnlockReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 326
    .end local v0           #unlockReceiverfilter:Landroid/content/IntentFilter;
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->registerMotionRecognition()V

    .line 330
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->setTextToSpeech()V

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 604
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 605
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mName:Ljava/lang/String;

    .line 608
    :goto_0
    return-void

    .line 607
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mPhoneNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mName:Ljava/lang/String;

    goto :goto_0
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "number"

    .prologue
    .line 601
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mPhoneNumber:Ljava/lang/String;

    .line 602
    return-void
.end method
