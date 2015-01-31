.class Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;
.super Ljava/lang/Object;
.source "CameraEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/CameraEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShootingModeManager"
.end annotation


# instance fields
.field private mActionShotStarted:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContinuousFileSequence:I

.field private mCurrentShootingMode:I

.field public mFlashMode:I

.field private mLocation:Landroid/location/Location;

.field private mPanoramaCapturing:Z

.field public mStorage:I

.field public mWhiteBalance:I

.field final synthetic this$0:Lcom/sec/android/app/camera/CameraEngine;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/CameraEngine;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 3232
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3233
    iput-boolean v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mActionShotStarted:Z

    .line 3234
    iput-boolean v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mPanoramaCapturing:Z

    .line 3235
    iput-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mLocation:Landroid/location/Location;

    .line 3236
    iput-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 3237
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mContinuousFileSequence:I

    .line 3238
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mCurrentShootingMode:I

    .line 3239
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mStorage:I

    .line 3240
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getWhiteBalance()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mWhiteBalance:I

    .line 3241
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFlashMode()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mFlashMode:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/CameraEngine;Lcom/sec/android/app/camera/CameraEngine$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3232
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;-><init>(Lcom/sec/android/app/camera/CameraEngine;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;[BLandroid/location/Location;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 3232
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->storeImage([BLandroid/location/Location;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2802(Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3232
    iput p1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mContinuousFileSequence:I

    return p1
.end method

.method static synthetic access$502(Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;Landroid/content/ContentResolver;)Landroid/content/ContentResolver;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3232
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mContentResolver:Landroid/content/ContentResolver;

    return-object p1
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;[BLcom/sec/android/seccamera/SecCamera;Landroid/location/Location;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 3232
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->startSavePicture([BLcom/sec/android/seccamera/SecCamera;Landroid/location/Location;)V

    return-void
.end method

.method private getHDRFileName()Ljava/lang/String;
    .locals 8

    .prologue
    .line 3647
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 3648
    .local v1, dateTaken:J
    iget-object v5, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iput-wide v1, v5, Lcom/sec/android/app/camera/CameraEngine;->mDateTaken:J

    .line 3650
    iget-object v5, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 3652
    .local v0, currentAddress:Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    #getter for: Lcom/sec/android/app/camera/CameraEngine;->mNumOfSavedImageInHDR:I
    invoke-static {v5}, Lcom/sec/android/app/camera/CameraEngine;->access$1900(Lcom/sec/android/app/camera/CameraEngine;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 3654
    iget-object v5, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iput-wide v1, v5, Lcom/sec/android/app/camera/CameraEngine;->mDateTakenForHDR:J

    .line 3655
    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/ImageSavingUtils;->createName(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, name:Ljava/lang/String;
    move-object v4, v3

    .line 3663
    .end local v3           #name:Ljava/lang/String;
    .local v4, name:Ljava/lang/String;
    :goto_0
    return-object v4

    .line 3657
    .end local v4           #name:Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    #getter for: Lcom/sec/android/app/camera/CameraEngine;->mNumOfSavedImageInHDR:I
    invoke-static {v5}, Lcom/sec/android/app/camera/CameraEngine;->access$1900(Lcom/sec/android/app/camera/CameraEngine;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 3659
    iget-object v5, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-wide v5, v5, Lcom/sec/android/app/camera/CameraEngine;->mDateTakenForHDR:J

    const-string v7, "HDR"

    invoke-static {v5, v6, v0, v7}, Lcom/sec/android/app/camera/ImageSavingUtils;->createName(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #name:Ljava/lang/String;
    move-object v4, v3

    .line 3660
    .end local v3           #name:Ljava/lang/String;
    .restart local v4       #name:Ljava/lang/String;
    goto :goto_0

    .line 3662
    .end local v4           #name:Ljava/lang/String;
    :cond_1
    invoke-static {v1, v2, v0}, Lcom/sec/android/app/camera/ImageSavingUtils;->createName(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .restart local v3       #name:Ljava/lang/String;
    move-object v4, v3

    .line 3663
    .end local v3           #name:Ljava/lang/String;
    .restart local v4       #name:Ljava/lang/String;
    goto :goto_0
.end method

.method private final startSavePicture([BLcom/sec/android/seccamera/SecCamera;Landroid/location/Location;)V
    .locals 3
    .parameter "jpegData"
    .parameter "camera"
    .parameter "location"

    .prologue
    .line 3321
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager$1;

    invoke-direct {v2, p0, p1, p3}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager$1;-><init>(Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;[BLandroid/location/Location;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #setter for: Lcom/sec/android/app/camera/CameraEngine;->mPictureSavingThread:Ljava/lang/Thread;
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/CameraEngine;->access$1602(Lcom/sec/android/app/camera/CameraEngine;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 3334
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    #getter for: Lcom/sec/android/app/camera/CameraEngine;->mPictureSavingThread:Ljava/lang/Thread;
    invoke-static {v0}, Lcom/sec/android/app/camera/CameraEngine;->access$1600(Lcom/sec/android/app/camera/CameraEngine;)Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "pictureSavingThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 3335
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    #getter for: Lcom/sec/android/app/camera/CameraEngine;->mPictureSavingThread:Ljava/lang/Thread;
    invoke-static {v0}, Lcom/sec/android/app/camera/CameraEngine;->access$1600(Lcom/sec/android/app/camera/CameraEngine;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3336
    return-void
.end method

.method private declared-synchronized storeImage([BLandroid/location/Location;)Z
    .locals 35
    .parameter "data"
    .parameter "loc"

    .prologue
    .line 3348
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    if-eqz v2, :cond_0

    .line 3349
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CaptureData;->clear()V

    .line 3350
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v7, 0x0

    iput-object v7, v2, Lcom/sec/android/app/camera/CameraEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    .line 3353
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/4 v7, 0x2

    if-ne v2, v7, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v7, 0x11

    if-ne v2, v7, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v7, 0x18

    if-ne v2, v7, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    const/16 v7, 0x19

    if-eq v2, v7, :cond_2

    .line 3358
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    new-instance v7, Lcom/sec/android/app/camera/CaptureData;

    invoke-direct {v7}, Lcom/sec/android/app/camera/CaptureData;-><init>()V

    iput-object v7, v2, Lcom/sec/android/app/camera/CameraEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    .line 3359
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v7, v7, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v8, v8, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v8

    invoke-static {v8}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v8

    mul-int/2addr v7, v8

    int-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    double-to-int v7, v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget v8, v8, Lcom/sec/android/app/camera/CameraEngine;->mOriginalViewFinderWidth:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget v9, v9, Lcom/sec/android/app/camera/CameraEngine;->mOriginalViewFinderHeight:I

    mul-int/2addr v8, v9

    int-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-int v8, v8

    invoke-static {v7, v8}, Lcom/sec/android/glview/TwGLUtil;->calculateSampleSize(II)I

    move-result v7

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v7}, Lcom/sec/android/app/camera/CaptureData;->setCaptureData([BI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    .line 3370
    :cond_2
    :goto_0
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraReview()I

    move-result v2

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v7, 0xa

    if-eq v2, v7, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/4 v7, 0x2

    if-eq v2, v7, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v7, 0xe

    if-eq v2, v7, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/4 v7, 0x1

    if-eq v2, v7, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v7, 0x11

    if-eq v2, v7, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v7, 0x19

    if-eq v2, v7, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v7, 0x18

    if-eq v2, v7, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v7, 0x12

    if-eq v2, v7, :cond_3

    .line 3380
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    if-eqz v2, :cond_3

    .line 3382
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v7, v7, Lcom/sec/android/app/camera/CameraEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CaptureData;->getCaptureSmallBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/sec/android/app/camera/Camera;->startPostCaptureAnimation(Landroid/graphics/Bitmap;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3388
    :cond_3
    const/4 v13, 0x1

    .line 3390
    .local v13, bSuccess:Z
    :try_start_3
    new-instance v14, Ljava/util/GregorianCalendar;

    invoke-direct {v14}, Ljava/util/GregorianCalendar;-><init>()V

    .line 3391
    .local v14, calendar:Ljava/util/GregorianCalendar;
    new-instance v32, Landroid/text/format/Time;

    invoke-direct/range {v32 .. v32}, Landroid/text/format/Time;-><init>()V

    .line 3392
    .local v32, time:Landroid/text/format/Time;
    move-object/from16 v0, v32

    iget-object v2, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v33

    .line 3393
    .local v33, timezone:Ljava/util/TimeZone;
    move-object/from16 v0, v33

    invoke-virtual {v14, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 3394
    invoke-virtual {v14}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    .line 3396
    .local v5, dateTaken:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iput-wide v5, v2, Lcom/sec/android/app/camera/CameraEngine;->mDateTaken:J

    .line 3398
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->getAddress()Ljava/lang/String;

    move-result-object v15

    .line 3400
    .local v15, currentAddress:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mCurrentShootingMode:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_5

    .line 3401
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mContinuousFileSequence:I

    add-int/lit8 v7, v2, 0x1

    move-object/from16 v0, p0

    iput v7, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mContinuousFileSequence:I

    invoke-static {v5, v6, v15, v2}, Lcom/sec/android/app/camera/ImageSavingUtils;->createName(JLjava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    .line 3422
    .local v28, name:Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    move-object/from16 v0, v28

    #setter for: Lcom/sec/android/app/camera/CameraEngine;->mLastCapturedTitle:Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/sec/android/app/camera/CameraEngine;->access$2002(Lcom/sec/android/app/camera/CameraEngine;Ljava/lang/String;)Ljava/lang/String;

    .line 3425
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mCurrentShootingMode:I

    const/16 v7, 0xb

    if-ne v2, v7, :cond_c

    .line 3426
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ".gif"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3432
    .local v4, filename:Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v7, 0xf

    if-ne v2, v7, :cond_e

    .line 3433
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mStorage:I

    if-nez v2, :cond_d

    .line 3434
    sget-object v3, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_SNS_MODE_PHONE:Ljava/lang/String;

    .line 3453
    .local v3, directory:Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    #setter for: Lcom/sec/android/app/camera/CameraEngine;->mLastCapturedFileName:Ljava/lang/String;
    invoke-static {v2, v7}, Lcom/sec/android/app/camera/CameraEngine;->access$2102(Lcom/sec/android/app/camera/CameraEngine;Ljava/lang/String;)Ljava/lang/String;

    .line 3456
    new-instance v22, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    #getter for: Lcom/sec/android/app/camera/CameraEngine;->mLastCapturedFileName:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/camera/CameraEngine;->access$2100(Lcom/sec/android/app/camera/CameraEngine;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3457
    .local v22, f:Ljava/io/File;
    const/16 v24, 0x0

    .local v24, filenumber:I
    move/from16 v25, v24

    .line 3458
    .end local v24           #filenumber:I
    .local v25, filenumber:I
    :goto_4
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 3459
    const-string v2, "CameraEngine"

    const-string v7, "Duplicated file name found"

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3460
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "("

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v24, v25, 0x1

    .end local v25           #filenumber:I
    .restart local v24       #filenumber:I
    move/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ")"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ".jpg"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3461
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    #setter for: Lcom/sec/android/app/camera/CameraEngine;->mLastCapturedFileName:Ljava/lang/String;
    invoke-static {v2, v7}, Lcom/sec/android/app/camera/CameraEngine;->access$2102(Lcom/sec/android/app/camera/CameraEngine;Ljava/lang/String;)Ljava/lang/String;

    .line 3463
    const-string v2, "CameraEngine"

    const-string v7, "New file name created"

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3464
    new-instance v22, Ljava/io/File;

    .end local v22           #f:Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    #getter for: Lcom/sec/android/app/camera/CameraEngine;->mLastCapturedFileName:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/camera/CameraEngine;->access$2100(Lcom/sec/android/app/camera/CameraEngine;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .restart local v22       #f:Ljava/io/File;
    move/from16 v25, v24

    .end local v24           #filenumber:I
    .restart local v25       #filenumber:I
    goto :goto_4

    .line 3362
    .end local v3           #directory:Ljava/lang/String;
    .end local v4           #filename:Ljava/lang/String;
    .end local v5           #dateTaken:J
    .end local v13           #bSuccess:Z
    .end local v14           #calendar:Ljava/util/GregorianCalendar;
    .end local v15           #currentAddress:Ljava/lang/String;
    .end local v22           #f:Ljava/io/File;
    .end local v25           #filenumber:I
    .end local v28           #name:Ljava/lang/String;
    .end local v32           #time:Landroid/text/format/Time;
    .end local v33           #timezone:Ljava/util/TimeZone;
    :catch_0
    move-exception v29

    .line 3363
    .local v29, oom:Ljava/lang/OutOfMemoryError;
    :try_start_4
    const-string v2, "CameraEngine"

    const-string v7, "Out of memory while creating bitmap."

    invoke-static {v2, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3364
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    if-eqz v2, :cond_4

    .line 3365
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CaptureData;->clear()V

    .line 3366
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v7, 0x0

    iput-object v7, v2, Lcom/sec/android/app/camera/CameraEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 3348
    .end local v29           #oom:Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 3402
    .restart local v5       #dateTaken:J
    .restart local v13       #bSuccess:Z
    .restart local v14       #calendar:Ljava/util/GregorianCalendar;
    .restart local v15       #currentAddress:Ljava/lang/String;
    .restart local v32       #time:Landroid/text/format/Time;
    .restart local v33       #timezone:Ljava/util/TimeZone;
    :cond_5
    :try_start_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mCurrentShootingMode:I

    const/16 v7, 0xe

    if-ne v2, v7, :cond_8

    .line 3403
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getHDRPictureMode()I

    move-result v2

    if-nez v2, :cond_6

    .line 3404
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    #getter for: Lcom/sec/android/app/camera/CameraEngine;->mNumOfSavedImageInHDR:I
    invoke-static {v7}, Lcom/sec/android/app/camera/CameraEngine;->access$1900(Lcom/sec/android/app/camera/CameraEngine;)I

    move-result v7

    add-int/lit8 v7, v7, 0x2

    #setter for: Lcom/sec/android/app/camera/CameraEngine;->mNumOfSavedImageInHDR:I
    invoke-static {v2, v7}, Lcom/sec/android/app/camera/CameraEngine;->access$1902(Lcom/sec/android/app/camera/CameraEngine;I)I

    .line 3405
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iput-wide v5, v2, Lcom/sec/android/app/camera/CameraEngine;->mDateTakenForHDR:J

    .line 3409
    :goto_5
    const-string v2, "CameraEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[HDR] storeImage - mNumOfSavedImageInHDR = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    #getter for: Lcom/sec/android/app/camera/CameraEngine;->mNumOfSavedImageInHDR:I
    invoke-static {v8}, Lcom/sec/android/app/camera/CameraEngine;->access$1900(Lcom/sec/android/app/camera/CameraEngine;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3410
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->getHDRFileName()Ljava/lang/String;

    move-result-object v28

    .restart local v28       #name:Ljava/lang/String;
    goto/16 :goto_1

    .line 3407
    .end local v28           #name:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    #getter for: Lcom/sec/android/app/camera/CameraEngine;->mNumOfSavedImageInHDR:I
    invoke-static {v7}, Lcom/sec/android/app/camera/CameraEngine;->access$1900(Lcom/sec/android/app/camera/CameraEngine;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    #setter for: Lcom/sec/android/app/camera/CameraEngine;->mNumOfSavedImageInHDR:I
    invoke-static {v2, v7}, Lcom/sec/android/app/camera/CameraEngine;->access$1902(Lcom/sec/android/app/camera/CameraEngine;I)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_5

    .line 3638
    .end local v5           #dateTaken:J
    .end local v14           #calendar:Ljava/util/GregorianCalendar;
    .end local v15           #currentAddress:Ljava/lang/String;
    .end local v32           #time:Landroid/text/format/Time;
    .end local v33           #timezone:Ljava/util/TimeZone;
    :catch_1
    move-exception v16

    .line 3639
    .local v16, ex:Ljava/lang/Exception;
    :try_start_6
    const-string v2, "CameraEngine"

    const-string v7, "Exception while compressing image."

    move-object/from16 v0, v16

    invoke-static {v2, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 3642
    .end local v16           #ex:Ljava/lang/Exception;
    :cond_7
    :goto_6
    monitor-exit p0

    return v13

    .line 3411
    .restart local v5       #dateTaken:J
    .restart local v14       #calendar:Ljava/util/GregorianCalendar;
    .restart local v15       #currentAddress:Ljava/lang/String;
    .restart local v32       #time:Landroid/text/format/Time;
    .restart local v33       #timezone:Ljava/util/TimeZone;
    :cond_8
    :try_start_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mCurrentShootingMode:I

    const/16 v7, 0x17

    if-ne v2, v7, :cond_9

    .line 3412
    const-string v2, "CameraEngine"

    const-string v7, "[LowLight] storeImage - add LLS tag "

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3413
    const-string v2, "LLS"

    invoke-static {v5, v6, v15, v2}, Lcom/sec/android/app/camera/ImageSavingUtils;->createName(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .restart local v28       #name:Ljava/lang/String;
    goto/16 :goto_1

    .line 3414
    .end local v28           #name:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mCurrentShootingMode:I

    const/16 v7, 0x11

    if-eq v2, v7, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mCurrentShootingMode:I

    const/16 v7, 0x18

    if-eq v2, v7, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mCurrentShootingMode:I

    const/16 v7, 0x19

    if-ne v2, v7, :cond_b

    .line 3418
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mContinuousFileSequence:I

    add-int/lit8 v8, v7, 0x1

    move-object/from16 v0, p0

    iput v8, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mContinuousFileSequence:I

    invoke-static {v5, v6, v15, v7}, Lcom/sec/android/app/camera/ImageSavingUtils;->createName(JLjava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "_bestshot"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .restart local v28       #name:Ljava/lang/String;
    goto/16 :goto_1

    .line 3420
    .end local v28           #name:Ljava/lang/String;
    :cond_b
    invoke-static {v5, v6, v15}, Lcom/sec/android/app/camera/ImageSavingUtils;->createName(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .restart local v28       #name:Ljava/lang/String;
    goto/16 :goto_1

    .line 3428
    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ".jpg"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4       #filename:Ljava/lang/String;
    goto/16 :goto_2

    .line 3436
    :cond_d
    sget-object v3, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_SNS_MODE_MMC:Ljava/lang/String;

    .restart local v3       #directory:Ljava/lang/String;
    goto/16 :goto_3

    .line 3437
    .end local v3           #directory:Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v7, 0x11

    if-eq v2, v7, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v7, 0x18

    if-eq v2, v7, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v7, 0x19

    if-ne v2, v7, :cond_11

    .line 3441
    :cond_f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mStorage:I

    if-nez v2, :cond_10

    .line 3442
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_PHONE:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "/.BestPic"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #directory:Ljava/lang/String;
    goto/16 :goto_3

    .line 3444
    .end local v3           #directory:Ljava/lang/String;
    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_MMC:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "/.BestPic"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #directory:Ljava/lang/String;
    goto/16 :goto_3

    .line 3447
    .end local v3           #directory:Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mStorage:I

    if-nez v2, :cond_12

    .line 3448
    sget-object v3, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_PHONE:Ljava/lang/String;

    .restart local v3       #directory:Ljava/lang/String;
    goto/16 :goto_3

    .line 3450
    .end local v3           #directory:Ljava/lang/String;
    :cond_12
    sget-object v3, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_MMC:Ljava/lang/String;

    .restart local v3       #directory:Ljava/lang/String;
    goto/16 :goto_3

    .line 3467
    .restart local v22       #f:Ljava/io/File;
    .restart local v25       #filenumber:I
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraEngine;->getOrientationOnTake()I

    move-result v7

    invoke-virtual {v2, v7}, Lcom/sec/android/app/camera/CameraEngine;->calculateOrientationForPicture(I)I

    move-result v30

    .line 3468
    .local v30, orientationForPicture:I
    const-string v2, "CameraEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "storeImage - orientationForPicture : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3469
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    move/from16 v0, v30

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/CameraEngine;->convertToExifInterfaceOrientation(I)I

    move-result v10

    .line 3470
    .local v10, orientationForExif:I
    const-string v2, "CameraEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "storeImage - ExifInterface Orientation : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3472
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    if-eqz v2, :cond_14

    .line 3473
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    move/from16 v0, v30

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/CaptureData;->setOrientation(I)V

    .line 3475
    :cond_14
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mCurrentShootingMode:I

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mWhiteBalance:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mFlashMode:I

    move-object/from16 v7, p2

    move-object/from16 v9, p1

    invoke-static/range {v2 .. v12}, Lcom/sec/android/app/camera/ImageSavingUtils;->addImage(ILjava/lang/String;Ljava/lang/String;JLandroid/location/Location;Landroid/graphics/Bitmap;[BIII)Z

    move-result v13

    .line 3477
    const-string v2, "CameraEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "storeImage bSuccess: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3479
    if-nez v13, :cond_15

    .line 3480
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraEngine;->mMainHandler:Lcom/sec/android/app/camera/CameraEngine$MainHandler;

    const/16 v7, 0x64

    invoke-virtual {v2, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3483
    :cond_15
    const/16 v21, 0x0

    .line 3484
    .local v21, exifWidth:I
    const/16 v19, 0x0

    .line 3486
    .local v19, exifHeight:I
    if-eqz v13, :cond_7

    .line 3487
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v7, 0xa

    if-eq v2, v7, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v7, 0xe

    if-ne v2, v7, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v2

    if-eqz v2, :cond_17

    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v7, 0x17

    if-ne v2, v7, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 3489
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    if-eqz v2, :cond_18

    .line 3491
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v7, v7, Lcom/sec/android/app/camera/CameraEngine;->mLastCaptureData:Lcom/sec/android/app/camera/CaptureData;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CaptureData;->getCaptureSmallBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    move/from16 v0, v30

    invoke-virtual {v2, v7, v0}, Lcom/sec/android/app/camera/Camera;->updateThumbnail(Landroid/graphics/Bitmap;I)V

    .line 3520
    :cond_18
    :goto_7
    new-instance v34, Landroid/content/ContentValues;

    const/16 v2, 0x9

    move-object/from16 v0, v34

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 3521
    .local v34, values:Landroid/content/ContentValues;
    const-string v2, "title"

    move-object/from16 v0, v34

    move-object/from16 v1, v28

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3526
    const-string v2, "_display_name"

    move-object/from16 v0, v34

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3527
    const-string v2, "datetaken"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v34

    invoke-virtual {v0, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3528
    const-string v2, "mime_type"

    const-string v7, "image/jpeg"

    move-object/from16 v0, v34

    invoke-virtual {v0, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3529
    const-string v2, "orientation"

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v34

    invoke-virtual {v0, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3530
    const-string v2, "_data"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    #getter for: Lcom/sec/android/app/camera/CameraEngine;->mLastCapturedFileName:Ljava/lang/String;
    invoke-static {v7}, Lcom/sec/android/app/camera/CameraEngine;->access$2100(Lcom/sec/android/app/camera/CameraEngine;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v34

    invoke-virtual {v0, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3531
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/4 v7, 0x2

    if-eq v2, v7, :cond_1f

    .line 3532
    const-string v2, "height"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v7, v7, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v34

    invoke-virtual {v0, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3533
    const-string v2, "width"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v7, v7, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v34

    invoke-virtual {v0, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 3540
    :goto_8
    const/16 v17, 0x0

    .line 3542
    .local v17, exif:Landroid/media/ExifInterface;
    :try_start_8
    new-instance v18, Landroid/media/ExifInterface;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "/"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .end local v17           #exif:Landroid/media/ExifInterface;
    .local v18, exif:Landroid/media/ExifInterface;
    move-object/from16 v17, v18

    .line 3547
    .end local v18           #exif:Landroid/media/ExifInterface;
    .restart local v17       #exif:Landroid/media/ExifInterface;
    :goto_9
    if-eqz v17, :cond_19

    .line 3548
    const/4 v2, 0x2

    :try_start_9
    new-array v0, v2, [F

    move-object/from16 v27, v0

    .line 3549
    .local v27, latlng:[F
    move-object/from16 v0, v17

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/media/ExifInterface;->getLatLong([F)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 3550
    const-string v2, "latitude"

    const/4 v7, 0x0

    aget v7, v27, v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    move-object/from16 v0, v34

    invoke-virtual {v0, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 3551
    const-string v2, "longitude"

    const/4 v7, 0x1

    aget v7, v27, v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    move-object/from16 v0, v34

    invoke-virtual {v0, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 3560
    .end local v27           #latlng:[F
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/4 v7, 0x1

    if-eq v2, v7, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v7, 0x18

    if-eq v2, v7, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v7, 0x11

    if-ne v2, v7, :cond_1b

    .line 3563
    :cond_1a
    const-string v2, "CameraEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Burstshot/Bestshot groupID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraEngine;->getGroupID()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is set"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3569
    :cond_1b
    const-string v2, "date_modified"

    const-wide/16 v7, 0x3e8

    div-long v7, v5, v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v34

    invoke-virtual {v0, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 3571
    const/16 v23, 0x0

    .line 3588
    .local v23, fileUri:Landroid/net/Uri;
    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v7, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v34

    invoke-virtual {v2, v7, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v23

    .line 3598
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v7

    move-object/from16 v0, v23

    invoke-static {v2, v0, v7, v8}, Lcom/sec/android/app/camera/ImageSavingUtils;->setImageSize(Landroid/content/ContentResolver;Landroid/net/Uri;J)V

    .line 3600
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    move-object/from16 v0, v23

    iput-object v0, v2, Lcom/sec/android/app/camera/CameraEngine;->mLastContentUri:Landroid/net/Uri;

    .line 3601
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v2, :cond_1c

    .line 3602
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.android.camera.NEW_PICTURE"

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v9, v9, Lcom/sec/android/app/camera/CameraEngine;->mLastContentUri:Landroid/net/Uri;

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v7}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    .line 3612
    :cond_1c
    :goto_a
    :try_start_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v7, 0x1

    #setter for: Lcom/sec/android/app/camera/CameraEngine;->mCaptureInitiated:Z
    invoke-static {v2, v7}, Lcom/sec/android/app/camera/CameraEngine;->access$2302(Lcom/sec/android/app/camera/CameraEngine;Z)Z

    goto/16 :goto_6

    .line 3495
    .end local v17           #exif:Landroid/media/ExifInterface;
    .end local v23           #fileUri:Landroid/net/Uri;
    .end local v34           #values:Landroid/content/ContentValues;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/4 v7, 0x2

    if-ne v2, v7, :cond_18

    .line 3496
    const-string v2, "CameraEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "panorama mode with bitmap "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    #getter for: Lcom/sec/android/app/camera/CameraEngine;->mPanoramaLowResolutionBitmap:Landroid/graphics/Bitmap;
    invoke-static {v8}, Lcom/sec/android/app/camera/CameraEngine;->access$2200(Lcom/sec/android/app/camera/CameraEngine;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3497
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v2, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    #getter for: Lcom/sec/android/app/camera/CameraEngine;->mPanoramaLowResolutionBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/sec/android/app/camera/CameraEngine;->access$2200(Lcom/sec/android/app/camera/CameraEngine;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 3498
    const-string v2, "CameraEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updating thumbnail now "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    #getter for: Lcom/sec/android/app/camera/CameraEngine;->mPanoramaLowResolutionBitmap:Landroid/graphics/Bitmap;
    invoke-static {v8}, Lcom/sec/android/app/camera/CameraEngine;->access$2200(Lcom/sec/android/app/camera/CameraEngine;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " with orientationForPicture "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3499
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    #getter for: Lcom/sec/android/app/camera/CameraEngine;->mPanoramaLowResolutionBitmap:Landroid/graphics/Bitmap;
    invoke-static {v7}, Lcom/sec/android/app/camera/CameraEngine;->access$2200(Lcom/sec/android/app/camera/CameraEngine;)Landroid/graphics/Bitmap;

    move-result-object v7

    move/from16 v0, v30

    invoke-virtual {v2, v7, v0}, Lcom/sec/android/app/camera/Camera;->updateThumbnail(Landroid/graphics/Bitmap;I)V

    .line 3500
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    #getter for: Lcom/sec/android/app/camera/CameraEngine;->mPanoramaLowResolutionBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2}, Lcom/sec/android/app/camera/CameraEngine;->access$2200(Lcom/sec/android/app/camera/CameraEngine;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 3501
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v7, 0x0

    #setter for: Lcom/sec/android/app/camera/CameraEngine;->mPanoramaLowResolutionBitmap:Landroid/graphics/Bitmap;
    invoke-static {v2, v7}, Lcom/sec/android/app/camera/CameraEngine;->access$2202(Lcom/sec/android/app/camera/CameraEngine;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    .line 3507
    :cond_1e
    :try_start_c
    new-instance v17, Landroid/media/ExifInterface;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "/"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 3508
    .restart local v17       #exif:Landroid/media/ExifInterface;
    const-string v2, "Orientation"

    const/4 v7, -0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v7}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v20

    .line 3509
    .local v20, exifOrientation:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/CameraEngine;->convertExifOrientationToMediaOrientation(I)I

    move-result v30

    .line 3510
    const-string v2, "CameraEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Read new orientation from exif: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " --> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3512
    const-string v2, "ImageWidth"

    const/4 v7, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v7}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v21

    .line 3513
    const-string v2, "ImageLength"

    const/4 v7, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v7}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v19

    .line 3514
    const-string v2, "CameraEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Read width/height from exif: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " / "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    goto/16 :goto_7

    .line 3515
    .end local v17           #exif:Landroid/media/ExifInterface;
    .end local v20           #exifOrientation:I
    :catch_2
    move-exception v26

    .line 3516
    .local v26, ioex:Ljava/io/IOException;
    :try_start_d
    const-string v2, "CameraEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not read exif tags from : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 3535
    .end local v26           #ioex:Ljava/io/IOException;
    .restart local v34       #values:Landroid/content/ContentValues;
    :cond_1f
    const-string v2, "height"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v34

    invoke-virtual {v0, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3536
    const-string v2, "width"

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v34

    invoke-virtual {v0, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_8

    .line 3543
    .restart local v17       #exif:Landroid/media/ExifInterface;
    :catch_3
    move-exception v16

    .line 3544
    .local v16, ex:Ljava/io/IOException;
    const-string v2, "CameraEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not read exif tags from : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 3604
    .end local v16           #ex:Ljava/io/IOException;
    .restart local v23       #fileUri:Landroid/net/Uri;
    :catch_4
    move-exception v31

    .line 3605
    .local v31, sfe:Landroid/database/sqlite/SQLiteFullException;
    const-string v2, "CameraEngine"

    const-string v7, "Not enough space in database"

    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3606
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-eqz v2, :cond_1c

    .line 3607
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v7, 0x7f0900f5

    const/4 v8, 0x0

    invoke-static {v2, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    goto/16 :goto_a
.end method


# virtual methods
.method public cancelCaptureForPanorama()V
    .locals 1

    .prologue
    .line 3957
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    #getter for: Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/sec/android/app/camera/CameraEngine;->access$600(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3958
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    #getter for: Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/sec/android/app/camera/CameraEngine;->access$600(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->cancelPanorama()V

    .line 3962
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->resumeAudioPlayback()V

    .line 3963
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mPanoramaCapturing:Z

    .line 3964
    return-void
.end method

.method public cancelSeriesActionShot()V
    .locals 1

    .prologue
    .line 4062
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    #getter for: Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/sec/android/app/camera/CameraEngine;->access$600(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4063
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    #getter for: Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/sec/android/app/camera/CameraEngine;->access$600(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->cancelSeriesActionShot()V

    .line 4065
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->resumeAudioPlayback()V

    .line 4066
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mActionShotStarted:Z

    .line 4067
    return-void
.end method

.method public chkActionShotStarted()Z
    .locals 1

    .prologue
    .line 4070
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mActionShotStarted:Z

    return v0
.end method

.method public getCurrentShootingmode()I
    .locals 1

    .prologue
    .line 3975
    iget v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mCurrentShootingMode:I

    return v0
.end method

.method public handleShutterEvent()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 3683
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->isCapturing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    .line 3684
    :cond_0
    const-string v1, "CameraEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleShutterEvent - isCapturing:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraEngine;->isCapturing()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " current state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3729
    :cond_1
    :goto_0
    return-void

    .line 3688
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    .line 3689
    .local v0, shootingMode:I
    const-string v1, "CameraEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleShutterEvent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3690
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/16 v2, 0x11

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/16 v2, 0x18

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/16 v2, 0x19

    if-ne v1, v2, :cond_4

    .line 3693
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    #getter for: Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v1}, Lcom/sec/android/app/camera/CameraEngine;->access$600(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3703
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v2, 0x1d

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3716
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartBurstShot()V

    goto :goto_0

    .line 3720
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getBurstMode()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 3721
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->isSingleShotBurst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3722
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    #getter for: Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v1}, Lcom/sec/android/app/camera/CameraEngine;->access$600(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3723
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->onBurstShotStarted()V

    .line 3724
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    #getter for: Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v1}, Lcom/sec/android/app/camera/CameraEngine;->access$600(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v3, v3, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v3

    invoke-virtual {v1, v4, v2, v3}, Lcom/sec/android/seccamera/SecCamera;->startBurstShot(ZZI)V

    .line 3725
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->captureBurstShot()V

    goto/16 :goto_0
.end method

.method public handleShutterReleaseEvent()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 3732
    const-string v2, "CameraEngine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleShutterReleaseEvent - mFocusState: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget v6, v6, Lcom/sec/android/app/camera/CameraEngine;->mFocusState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3734
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->isCapturing()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->isStartingPreview()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3735
    :cond_0
    const-string v2, "CameraEngine"

    const-string v3, "handleShutterReleaseEvent returning.."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3882
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 3739
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    #getter for: Lcom/sec/android/app/camera/CameraEngine;->mJpegPictureCallback:Lcom/sec/android/app/camera/CameraEngine$JpegPictureCallback;
    invoke-static {v2}, Lcom/sec/android/app/camera/CameraEngine;->access$2400(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/app/camera/CameraEngine$JpegPictureCallback;

    move-result-object v2

    iget-object v5, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/sec/android/app/camera/CameraEngine$JpegPictureCallback;->setLocation(Landroid/location/Location;)V

    .line 3741
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v2

    if-eq v2, v7, :cond_3

    .line 3742
    const-string v2, "CameraEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wrong state for take picture: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v4, v4, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3747
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->isAutoFocusing()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->getFocusState()I

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->getFocusState()I

    move-result v2

    if-ne v2, v7, :cond_6

    .line 3749
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->isBurstCapturing()Z

    move-result v2

    if-nez v2, :cond_5

    .line 3750
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->scheduleAutoFocus()V

    .line 3764
    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    .line 3766
    .local v1, shootingMode:I
    packed-switch v1, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    .line 3801
    :pswitch_2
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getBurstMode()I

    move-result v2

    if-ne v2, v4, :cond_7

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->isSingleShotBurst()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3802
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getTimer()I

    move-result v2

    if-nez v2, :cond_1

    .line 3803
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->doStopBurstShot()V

    goto/16 :goto_0

    .line 3752
    .end local v1           #shootingMode:I
    :cond_6
    sget-boolean v2, Lcom/sec/android/app/camera/CameraEngine;->m_bRestartTouchAF:Z

    if-ne v2, v4, :cond_5

    .line 3753
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->restartTouchAF()V

    goto :goto_1

    .line 3797
    .restart local v1       #shootingMode:I
    :pswitch_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->handleSingleShutterWithNoShutterLag()V

    goto/16 :goto_0

    .line 3806
    :cond_7
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraReview()I

    move-result v2

    if-nez v2, :cond_8

    .line 3807
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->handleSingleShutterWithNoShutterLag()V

    goto/16 :goto_0

    .line 3809
    :cond_8
    invoke-static {}, Lcom/sec/android/app/camera/CameraEngine;->access$2500()Z

    move-result v2

    if-nez v2, :cond_9

    .line 3810
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->handleSingleShutter()V

    .line 3813
    :cond_9
    invoke-static {v4}, Lcom/sec/android/app/camera/CameraEngine;->access$2502(Z)Z

    .line 3814
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager$2;-><init>(Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3824
    .local v0, blockSingShutterThread:Ljava/lang/Thread;
    const-string v2, "blockSingShutterThread"

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 3825
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 3830
    .end local v0           #blockSingShutterThread:Ljava/lang/Thread;
    :pswitch_4
    iget-boolean v2, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mPanoramaCapturing:Z

    if-eqz v2, :cond_a

    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mPanoramaCapturing:Z

    .line 3831
    iget-boolean v2, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mPanoramaCapturing:Z

    if-nez v2, :cond_c

    .line 3832
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->onPanoramaCaptureStart()Z

    move-result v2

    if-nez v2, :cond_b

    .line 3833
    iput-boolean v4, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mPanoramaCapturing:Z

    goto/16 :goto_0

    :cond_a
    move v2, v4

    .line 3830
    goto :goto_2

    .line 3836
    :cond_b
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopPanorama()V

    goto/16 :goto_0

    .line 3838
    :cond_c
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideSideMenuItems()V

    .line 3839
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartPanorama()V

    goto/16 :goto_0

    .line 3849
    :pswitch_5
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/CeRequestQueue;->removeRequest(I)V

    .line 3850
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->handleSingleShutter()V

    goto/16 :goto_0

    .line 3853
    :pswitch_6
    iget-boolean v2, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mActionShotStarted:Z

    if-eqz v2, :cond_d

    move v4, v3

    :cond_d
    iput-boolean v4, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mActionShotStarted:Z

    .line 3854
    iget-boolean v2, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mActionShotStarted:Z

    if-eqz v2, :cond_e

    .line 3855
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getActionShotProgressValue()I

    move-result v2

    if-nez v2, :cond_1

    .line 3856
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartActionShot()V

    goto/16 :goto_0

    .line 3858
    :cond_e
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getActionShotProgressValue()I

    move-result v2

    if-eqz v2, :cond_f

    .line 3859
    const-string v4, "CameraEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "scheduleStopActionShot : STOP"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getActionShotProgressValue()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3860
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopActionShot()V

    goto/16 :goto_0

    .line 3862
    :cond_f
    const-string v4, "CameraEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "scheduleStopActionShot: don\'t STOP"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getActionShotProgressValue()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3867
    :pswitch_7
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v2, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->isBestPicMode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3868
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v3, 0x1d

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v2

    if-ne v2, v4, :cond_10

    .line 3869
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopBurstShot()V

    goto/16 :goto_0

    .line 3873
    :cond_10
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->doStopBurstShot()V

    goto/16 :goto_0

    .line 3766
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_6
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_7
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handleSingleShutter()V
    .locals 4

    .prologue
    .line 3886
    const-string v0, "AXLOG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shot2Shot-CaptureSequenceStart**Point["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]**"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3887
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->clearCaptureImageData()V

    .line 3888
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 3895
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->handleTimer()Z

    .line 3899
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopPreviewDummy()V

    .line 3903
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleTakePicture()V

    .line 3905
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 3906
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartPreview()V

    .line 3909
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->pauseAudioPlayback()V

    .line 3910
    return-void
.end method

.method public handleSingleShutterWithNoShutterLag()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 3919
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->handleTimer()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3921
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopPreviewDummy()V

    .line 3941
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleTakePicture()V

    .line 3943
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0x17

    if-ne v0, v1, :cond_0

    .line 3948
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getChkKeyFromApp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3949
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartPreview()V

    .line 3952
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->pauseAudioPlayback()V

    .line 3953
    return-void

    .line 3929
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFocusMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 3930
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3932
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3935
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mStateDepot:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/AbstractCeState;

    iput-object v0, v1, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    goto :goto_0

    .line 3938
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mStateDepot:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/AbstractCeState;

    iput-object v0, v1, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    goto :goto_0
.end method

.method public handleTimer()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 3668
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getTimer()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 3679
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 3670
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraEngine;->scheduleShutterTimer(I)V

    goto :goto_0

    .line 3673
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraEngine;->scheduleShutterTimer(I)V

    goto :goto_0

    .line 3676
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraEngine;->scheduleShutterTimer(I)V

    goto :goto_0

    .line 3668
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isPanoramaCapturing()Z
    .locals 1

    .prologue
    .line 3967
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mPanoramaCapturing:Z

    return v0
.end method

.method public onPictureTaken([BLcom/sec/android/seccamera/SecCamera;)V
    .locals 4
    .parameter "jpegData"
    .parameter "camera"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x3

    .line 3249
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    .line 3251
    .local v0, shootingMode:I
    packed-switch v0, :pswitch_data_0

    .line 3305
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->clearFocusState()V

    .line 3306
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->updateFocusIndicator()V

    .line 3312
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/Camera;->setTouchAutoFocusActive(Z)V

    .line 3314
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/CameraEngine;->setFocusParameter(I)V

    .line 3317
    return-void

    .line 3253
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mLocation:Landroid/location/Location;

    invoke-direct {p0, p1, p2, v1}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->startSavePicture([BLcom/sec/android/seccamera/SecCamera;Landroid/location/Location;)V

    .line 3254
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 3257
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mLocation:Landroid/location/Location;

    invoke-direct {p0, p1, p2, v1}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->startSavePicture([BLcom/sec/android/seccamera/SecCamera;Landroid/location/Location;)V

    .line 3258
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 3271
    :pswitch_3
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mLocation:Landroid/location/Location;

    invoke-direct {p0, p1, p2, v1}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->startSavePicture([BLcom/sec/android/seccamera/SecCamera;Landroid/location/Location;)V

    .line 3272
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 3275
    :pswitch_4
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->onSmileDetectingStopped()V

    .line 3276
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mLocation:Landroid/location/Location;

    invoke-direct {p0, p1, p2, v1}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->startSavePicture([BLcom/sec/android/seccamera/SecCamera;Landroid/location/Location;)V

    .line 3277
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 3280
    :pswitch_5
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mLocation:Landroid/location/Location;

    invoke-direct {p0, p1, p2, v1}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->startSavePicture([BLcom/sec/android/seccamera/SecCamera;Landroid/location/Location;)V

    .line 3281
    iput-boolean v3, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mActionShotStarted:Z

    goto :goto_0

    .line 3284
    :pswitch_6
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mLocation:Landroid/location/Location;

    invoke-direct {p0, p1, p2, v1}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->startSavePicture([BLcom/sec/android/seccamera/SecCamera;Landroid/location/Location;)V

    .line 3285
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 3288
    :pswitch_7
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mLocation:Landroid/location/Location;

    invoke-direct {p0, p1, p2, v1}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->startSavePicture([BLcom/sec/android/seccamera/SecCamera;Landroid/location/Location;)V

    goto :goto_0

    .line 3291
    :pswitch_8
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mLocation:Landroid/location/Location;

    invoke-direct {p0, p1, p2, v1}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->startSavePicture([BLcom/sec/android/seccamera/SecCamera;Landroid/location/Location;)V

    goto :goto_0

    .line 3296
    :pswitch_9
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mLocation:Landroid/location/Location;

    invoke-direct {p0, p1, p2, v1}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->startSavePicture([BLcom/sec/android/seccamera/SecCamera;Landroid/location/Location;)V

    goto :goto_0

    .line 3299
    :pswitch_a
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mLocation:Landroid/location/Location;

    invoke-direct {p0, p1, p2, v1}, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->startSavePicture([BLcom/sec/android/seccamera/SecCamera;Landroid/location/Location;)V

    .line 3300
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mStateMessageHandler:Lcom/sec/android/app/camera/CameraEngine$StateMessageHandler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 3251
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_8
        :pswitch_6
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_7
        :pswitch_3
        :pswitch_3
        :pswitch_9
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public resetPanoramaCapturing()V
    .locals 1

    .prologue
    .line 3971
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mPanoramaCapturing:Z

    .line 3972
    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 0
    .parameter "loc"

    .prologue
    .line 3244
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mLocation:Landroid/location/Location;

    .line 3245
    return-void
.end method

.method public setShootingMode(I)V
    .locals 5
    .parameter "shootingMode"

    .prologue
    const/4 v4, 0x0

    .line 3979
    iget v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mCurrentShootingMode:I

    packed-switch v0, :pswitch_data_0

    .line 4016
    :cond_0
    :goto_0
    :pswitch_0
    iput p1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mCurrentShootingMode:I

    .line 4018
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    #getter for: Lcom/sec/android/app/camera/CameraEngine;->mJpegPictureCallback:Lcom/sec/android/app/camera/CameraEngine$JpegPictureCallback;
    invoke-static {v0}, Lcom/sec/android/app/camera/CameraEngine;->access$2400(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/app/camera/CameraEngine$JpegPictureCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->getGpsLocation()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine$JpegPictureCallback;->setLocation(Landroid/location/Location;)V

    .line 4019
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    #getter for: Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/sec/android/app/camera/CameraEngine;->access$600(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4021
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    #getter for: Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/sec/android/app/camera/CameraEngine;->access$600(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/seccamera/SecCamera;->setShootingMode(I)V

    .line 4022
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    #getter for: Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/sec/android/app/camera/CameraEngine;->access$600(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    #getter for: Lcom/sec/android/app/camera/CameraEngine;->mShutterCallback:Lcom/sec/android/app/camera/CameraEngine$ShutterCallback;
    invoke-static {v1}, Lcom/sec/android/app/camera/CameraEngine;->access$2600(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/app/camera/CameraEngine$ShutterCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    #getter for: Lcom/sec/android/app/camera/CameraEngine;->mRawPictureCallback:Lcom/sec/android/app/camera/CameraEngine$RawPictureCallback;
    invoke-static {v2}, Lcom/sec/android/app/camera/CameraEngine;->access$2700(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/app/camera/CameraEngine$RawPictureCallback;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    #getter for: Lcom/sec/android/app/camera/CameraEngine;->mJpegPictureCallback:Lcom/sec/android/app/camera/CameraEngine$JpegPictureCallback;
    invoke-static {v3}, Lcom/sec/android/app/camera/CameraEngine;->access$2400(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/app/camera/CameraEngine$JpegPictureCallback;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/seccamera/SecCamera;->setShootingModeCallbacks(Lcom/sec/android/seccamera/SecCamera$ShutterCallback;Lcom/sec/android/seccamera/SecCamera$PictureCallback;Lcom/sec/android/seccamera/SecCamera$PictureCallback;)V

    .line 4025
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 4059
    :cond_2
    :goto_1
    :sswitch_0
    return-void

    .line 3996
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    #getter for: Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/sec/android/app/camera/CameraEngine;->access$600(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3997
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    #getter for: Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/sec/android/app/camera/CameraEngine;->access$600(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->cancelPanorama()V

    .line 3998
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->clearPanoramaRect()V

    .line 3999
    iput-boolean v4, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mPanoramaCapturing:Z

    goto :goto_0

    .line 4002
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    #getter for: Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/sec/android/app/camera/CameraEngine;->access$600(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4003
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    #getter for: Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/sec/android/app/camera/CameraEngine;->access$600(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->finishActionShot()V

    goto :goto_0

    .line 4010
    :pswitch_3
    const-string v0, "CameraEngine"

    const-string v1, "setLowLightShot : 0"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4011
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onMultiFrameShotReset()V

    .line 4012
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraEngine;->setLowLightShot(I)V

    goto/16 :goto_0

    .line 4039
    :sswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getHDRIntensityMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine;->setHDRShotModeChanged(I)V

    .line 4040
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getHDRPictureMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine;->setHDRPictureModeChanged(I)V

    goto :goto_1

    .line 4044
    :sswitch_2
    iput-boolean v4, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->mPanoramaCapturing:Z

    goto :goto_1

    .line 4047
    :sswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    #getter for: Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/sec/android/app/camera/CameraEngine;->access$600(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4048
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    #getter for: Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/sec/android/app/camera/CameraEngine;->access$600(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/seccamera/SecCamera;->initializeActionShot()V

    .line 4049
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    #getter for: Lcom/sec/android/app/camera/CameraEngine;->mCameraDevice:Lcom/sec/android/seccamera/SecCamera;
    invoke-static {v0}, Lcom/sec/android/app/camera/CameraEngine;->access$600(Lcom/sec/android/app/camera/CameraEngine;)Lcom/sec/android/seccamera/SecCamera;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, v1, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/seccamera/SecCamera;->setResolutionActionShot(II)V

    goto/16 :goto_1

    .line 4055
    :sswitch_4
    const-string v0, "CameraEngine"

    const-string v1, "setLowLightShot : 1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4056
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraEngine$ShootingModeManager;->this$0:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine;->setLowLightShot(I)V

    goto/16 :goto_1

    .line 3979
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 4025
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_0
        0x8 -> :sswitch_0
        0xa -> :sswitch_3
        0xd -> :sswitch_0
        0xe -> :sswitch_1
        0xf -> :sswitch_0
        0x10 -> :sswitch_0
        0x17 -> :sswitch_4
        0x1b -> :sswitch_0
    .end sparse-switch
.end method
