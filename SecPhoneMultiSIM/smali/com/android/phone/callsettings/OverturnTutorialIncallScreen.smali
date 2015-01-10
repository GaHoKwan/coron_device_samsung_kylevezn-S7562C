.class public Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;
.super Landroid/app/Activity;
.source "OverturnTutorialIncallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$VibratorThread;
    }
.end annotation


# static fields
.field private static final mOverturnDrawable:[I


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAnimationIndex:I

.field private mCallStateLayout:Landroid/view/View;

.field private mContinueRinging:Z

.field private mImgView:Landroid/widget/ImageView;

.field private mIsForegroundActivity:Z

.field private mMainLayout:Landroid/view/View;

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field private mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

.field private mOkGoodJobDialog:Landroid/app/AlertDialog$Builder;

.field private mOverturnHandler:Landroid/os/Handler;

.field private mPreviousMsg:I

.field private mRingerType:Z

.field private mRingtone:Landroid/media/Ringtone;

.field private mTutorialDialogON:I

.field mVibrator:Landroid/os/Vibrator;

.field mVibratorThread:Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$VibratorThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mOverturnDrawable:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x75t 0x4t 0x2t 0x7ft
        0x76t 0x4t 0x2t 0x7ft
        0x77t 0x4t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 64
    iput v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mPreviousMsg:I

    .line 65
    iput v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mTutorialDialogON:I

    .line 66
    iput-boolean v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mRingerType:Z

    .line 67
    iput-boolean v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mContinueRinging:Z

    .line 69
    iput-object v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mRingtone:Landroid/media/Ringtone;

    .line 70
    iput-object v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mAlertDialog:Landroid/app/AlertDialog;

    .line 71
    iput-object v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mOkGoodJobDialog:Landroid/app/AlertDialog$Builder;

    .line 73
    iput-object v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 74
    iput-object v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 76
    iput-boolean v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mIsForegroundActivity:Z

    .line 87
    new-instance v0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$1;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$1;-><init>(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mOverturnHandler:Landroid/os/Handler;

    .line 259
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mPreviousMsg:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput p1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mPreviousMsg:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mAnimationIndex:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->startIncomingSound()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->updateAnimation(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mOverturnHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->stopRingingOrVibration()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->stopAnimation()V

    return-void
.end method

.method static synthetic access$702(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mImgView:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$802(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput p1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mTutorialDialogON:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->isForegroundActivity()Z

    move-result v0

    return v0
.end method

.method private controlRing(Z)V
    .locals 4
    .parameter "mContinueRinging"

    .prologue
    .line 227
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    .line 230
    .local v0, ringtoneUri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mRingtone:Landroid/media/Ringtone;

    if-nez v1, :cond_0

    .line 231
    invoke-static {p0, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mRingtone:Landroid/media/Ringtone;

    .line 235
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 236
    iget-object v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_2

    .line 237
    iget-object v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mRingtone:Landroid/media/Ringtone;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 238
    iget-object v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V

    .line 247
    :cond_1
    :goto_0
    return-void

    .line 240
    :cond_2
    const-string v1, "OverturnTutorialIncallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playRingtones: failed to load ringtone from uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 243
    :cond_3
    iget-object v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_1

    .line 244
    iget-object v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->stop()V

    goto :goto_0
.end method

.method private controlVibration()V
    .locals 3

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mVibratorThread:Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$VibratorThread;

    if-nez v0, :cond_0

    .line 252
    new-instance v0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$VibratorThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$VibratorThread;-><init>(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$1;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mVibratorThread:Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$VibratorThread;

    .line 253
    const-string v0, "OverturnTutorialIncallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Vibrator Start: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mVibratorThread:Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$VibratorThread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mVibratorThread:Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$VibratorThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 256
    :cond_0
    return-void
.end method

.method private isForegroundActivity()Z
    .locals 1

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mIsForegroundActivity:Z

    return v0
.end method

.method private startAnimation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 416
    const-string v0, "OverturnTutorialIncallScreen"

    const-string v1, "startAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mOverturnHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 418
    iput v2, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mAnimationIndex:I

    .line 419
    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->updateAnimation(I)V

    .line 421
    :cond_0
    return-void
.end method

.method private startIncomingSound()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 302
    iget-boolean v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mRingerType:Z

    if-ne v0, v1, :cond_0

    .line 303
    iput-boolean v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mContinueRinging:Z

    .line 304
    iget-boolean v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mContinueRinging:Z

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->controlRing(Z)V

    .line 308
    :goto_0
    return-void

    .line 307
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->controlVibration()V

    goto :goto_0
.end method

.method private stopAnimation()V
    .locals 2

    .prologue
    .line 425
    const-string v0, "OverturnTutorialIncallScreen"

    const-string v1, "stopAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mOverturnHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mOverturnHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 429
    :cond_0
    return-void
.end method

.method private stopRingingOrVibration()V
    .locals 3

    .prologue
    .line 270
    const-string v0, "OverturnTutorialIncallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stop Ring or Vibration, mRingerType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mRingerType:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-boolean v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mRingerType:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 272
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mContinueRinging:Z

    .line 273
    iget-boolean v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mContinueRinging:Z

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->controlRing(Z)V

    .line 278
    :goto_0
    return-void

    .line 275
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mVibratorThread:Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$VibratorThread;

    .line 276
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    goto :goto_0
.end method

.method private updateAnimation(I)V
    .locals 5
    .parameter "index"

    .prologue
    const/16 v4, 0x14

    .line 397
    const/4 v0, 0x0

    .line 398
    .local v0, animation_size:I
    iget-object v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mImgView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 399
    sget-object v1, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mOverturnDrawable:[I

    array-length v0, v1

    .line 400
    iget-object v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mImgView:Landroid/widget/ImageView;

    sget-object v2, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mOverturnDrawable:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 403
    :cond_0
    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mAnimationIndex:I

    .line 404
    iget-object v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mOverturnHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 405
    iget v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mAnimationIndex:I

    if-lt v1, v0, :cond_2

    .line 406
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mAnimationIndex:I

    .line 407
    iget-object v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mOverturnHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 412
    :cond_1
    :goto_0
    return-void

    .line 409
    :cond_2
    iget-object v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mOverturnHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 283
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 284
    invoke-direct {p0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->stopRingingOrVibration()V

    .line 285
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 288
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 293
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 294
    invoke-direct {p0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->stopRingingOrVibration()V

    .line 296
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 299
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 434
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 116
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 119
    const v1, 0x7f04006c

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 120
    const v1, 0x7f0901dd

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mMainLayout:Landroid/view/View;

    .line 121
    const v1, 0x7f0901de

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mCallStateLayout:Landroid/view/View;

    .line 123
    iget-object v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mMainLayout:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mMainLayout:Landroid/view/View;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 125
    :cond_0
    iget-object v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mCallStateLayout:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 126
    iget-object v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mCallStateLayout:Landroid/view/View;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 128
    :cond_1
    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mVibrator:Landroid/os/Vibrator;

    .line 131
    const-string v1, "motion_recognition"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/motion/MotionRecognitionManager;

    iput-object v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 132
    new-instance v1, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$2;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$2;-><init>(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;)V

    iput-object v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 158
    iget-object v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v1, :cond_2

    .line 159
    iget-object v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v2, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v1, v2, v4}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    .line 161
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 162
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 163
    const v1, 0x7f0203b9

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(I)V

    .line 164
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 9
    .parameter "id"

    .prologue
    const/4 v8, 0x0

    .line 315
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 316
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v6, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_0

    .line 317
    iget-object v6, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->dismiss()V

    .line 318
    iput-object v8, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mAlertDialog:Landroid/app/AlertDialog;

    .line 321
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 392
    :goto_0
    iget-object v6, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v6

    .line 323
    :sswitch_0
    const-string v6, "OverturnTutorialIncallScreen"

    const-string v7, "Get in the SHOW_TUTORIAL"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 325
    .local v3, mContext:Landroid/content/Context;
    const-string v6, "layout_inflater"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 326
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f040021

    invoke-virtual {v1, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 327
    .local v2, layout:Landroid/view/View;
    const v6, 0x7f0900a2

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mImgView:Landroid/widget/ImageView;

    .line 328
    const v6, 0x7f0900a1

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 329
    .local v4, message:Landroid/widget/TextView;
    const v6, 0x7f0e0333

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 330
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 331
    const v6, 0x7f0e0334

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 332
    new-instance v5, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$3;

    invoke-direct {v5, p0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$3;-><init>(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;)V

    .line 340
    .local v5, restartListener:Landroid/content/DialogInterface$OnClickListener;
    const v6, 0x7f0e05c8

    invoke-virtual {v0, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 341
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mAlertDialog:Landroid/app/AlertDialog;

    .line 342
    invoke-direct {p0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->stopRingingOrVibration()V

    .line 343
    const/16 v6, 0x32

    iput v6, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mTutorialDialogON:I

    .line 344
    iget-object v6, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    .line 345
    invoke-direct {p0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->startAnimation()V

    .line 346
    iget-object v6, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v7, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$4;

    invoke-direct {v7, p0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$4;-><init>(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;)V

    invoke-virtual {v6, v7}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 362
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    .end local v2           #layout:Landroid/view/View;
    .end local v3           #mContext:Landroid/content/Context;
    .end local v4           #message:Landroid/widget/TextView;
    .end local v5           #restartListener:Landroid/content/DialogInterface$OnClickListener;
    :sswitch_1
    const-string v6, "OverturnTutorialIncallScreen"

    const-string v7, "Get in the ShowOkGoodJob"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    const v6, 0x7f0e0339

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0e0338

    new-instance v8, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$6;

    invoke-direct {v8, p0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$6;-><init>(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0e0180

    new-instance v8, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$5;

    invoke-direct {v8, p0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$5;-><init>(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 378
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mAlertDialog:Landroid/app/AlertDialog;

    .line 379
    iget-object v6, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    .line 380
    iget-object v6, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v7, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$7;

    invoke-direct {v7, p0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen$7;-><init>(Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;)V

    invoke-virtual {v6, v7}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    .line 321
    nop

    :sswitch_data_0
    .sparse-switch
        0x1e -> :sswitch_0
        0x28 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 204
    const/4 v0, 0x1

    const v1, 0x7f0e02ce

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020474

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 206
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 210
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 220
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 212
    :sswitch_0
    const/16 v1, 0x1e

    invoke-virtual {p0, v1}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 215
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->onBackPressed()V

    goto :goto_0

    .line 210
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x102002c -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 189
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 190
    const-string v0, "OverturnTutorialIncallScreen"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mIsForegroundActivity:Z

    .line 192
    invoke-direct {p0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->stopRingingOrVibration()V

    .line 193
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 196
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 168
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 169
    const-string v0, "OverturnTutorialIncallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume(), mPreviousMsg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mPreviousMsg:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iput-boolean v3, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mIsForegroundActivity:Z

    .line 172
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1, v3}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    .line 177
    :cond_0
    iget v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mPreviousMsg:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mTutorialDialogON:I

    const/16 v1, 0x32

    if-eq v0, v1, :cond_1

    .line 179
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "UseRing"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mRingerType:Z

    .line 180
    const-string v0, "OverturnTutorialIncallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRingerType in onResume = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->mRingerType:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-direct {p0}, Lcom/android/phone/callsettings/OverturnTutorialIncallScreen;->startIncomingSound()V

    .line 183
    :cond_1
    return-void
.end method
