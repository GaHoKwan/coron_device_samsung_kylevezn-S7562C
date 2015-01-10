.class public Lcom/android/phone/CallMotion;
.super Ljava/lang/Object;
.source "CallMotion.java"


# static fields
.field private static mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;


# instance fields
.field private mMotionListener:Landroid/hardware/motion/MRListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/CallMotion;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    return-void
.end method


# virtual methods
.method stopMotionCatch()V
    .locals 3

    .prologue
    .line 82
    const-string v0, "CallMotion"

    const-string v1, "stopMotionCatch"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 84
    sget-object v0, Lcom/android/phone/CallMotion;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    .line 85
    sget-object v0, Lcom/android/phone/CallMotion;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/phone/CallMotion;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 86
    :cond_0
    return-void
.end method
