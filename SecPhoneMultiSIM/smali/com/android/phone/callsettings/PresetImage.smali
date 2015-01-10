.class public Lcom/android/phone/callsettings/PresetImage;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "PresetImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/PresetImage$DefaultClickListener;,
        Lcom/android/phone/callsettings/PresetImage$NotDefaultClickListener;
    }
.end annotation


# static fields
.field public static final THUMBNAIL_PROJECTION_VIDEOS:[Ljava/lang/String;

.field private static final mContext:Landroid/content/Context;

.field public static mUriVideos:Landroid/net/Uri;


# instance fields
.field private final INVALID_VIDEO_FILE:I

.field private final MAX_OUTPUT_X:I

.field private final MAX_OUTPUT_Y:I

.field private final NOT_ENOUGH_SPACE:I

.field private final REQUEST_ATTACH_PHOTO_FROM_CAMERA:I

.field private final REQUEST_ATTACH_VIDEO_FROM_CAMERA:I

.field private final REQUEST_PICK_PHOTO_FROM_GALLERY:I

.field private final REQUEST_PICK_VIDEO_FROM_GALLERY:I

.field private final UNABLE_TO_PLAY_VIDEO:I

.field private btnChangePreset:Landroid/widget/Button;

.field changeDialog:Landroid/app/AlertDialog;

.field isVideoContents:Z

.field private mCallerImageAlertChanged:[Ljava/lang/String;

.field private mCallerImageAlertDefault:[Ljava/lang/String;

.field private mImageButton:Landroid/widget/ImageButton;

.field outputX:I

.field outputY:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 69
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/callsettings/PresetImage;->mContext:Landroid/content/Context;

    .line 85
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "_data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/callsettings/PresetImage;->THUMBNAIL_PROJECTION_VIDEOS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    .line 92
    const/16 v0, 0x32

    iput v0, p0, Lcom/android/phone/callsettings/PresetImage;->REQUEST_PICK_PHOTO_FROM_GALLERY:I

    .line 94
    const/16 v0, 0x33

    iput v0, p0, Lcom/android/phone/callsettings/PresetImage;->REQUEST_PICK_VIDEO_FROM_GALLERY:I

    .line 96
    const/16 v0, 0x34

    iput v0, p0, Lcom/android/phone/callsettings/PresetImage;->REQUEST_ATTACH_PHOTO_FROM_CAMERA:I

    .line 98
    const/16 v0, 0x35

    iput v0, p0, Lcom/android/phone/callsettings/PresetImage;->REQUEST_ATTACH_VIDEO_FROM_CAMERA:I

    .line 101
    const/16 v0, 0x36

    iput v0, p0, Lcom/android/phone/callsettings/PresetImage;->UNABLE_TO_PLAY_VIDEO:I

    .line 103
    const/16 v0, 0x37

    iput v0, p0, Lcom/android/phone/callsettings/PresetImage;->NOT_ENOUGH_SPACE:I

    .line 105
    const/16 v0, 0x38

    iput v0, p0, Lcom/android/phone/callsettings/PresetImage;->INVALID_VIDEO_FILE:I

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/callsettings/PresetImage;->isVideoContents:Z

    .line 122
    const/16 v0, 0x16e

    iput v0, p0, Lcom/android/phone/callsettings/PresetImage;->MAX_OUTPUT_X:I

    .line 124
    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/phone/callsettings/PresetImage;->MAX_OUTPUT_Y:I

    .line 337
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/callsettings/PresetImage;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/phone/callsettings/PresetImage;->mCallerImageAlertChanged:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/callsettings/PresetImage;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/phone/callsettings/PresetImage;->mCallerImageAlertDefault:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/callsettings/PresetImage;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/phone/callsettings/PresetImage;->mImageButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/callsettings/PresetImage;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/phone/callsettings/PresetImage;->pickImageFromGallery()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/callsettings/PresetImage;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/phone/callsettings/PresetImage;->capturePicture()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/callsettings/PresetImage;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/phone/callsettings/PresetImage;->pickVideoFromGallery()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/callsettings/PresetImage;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/phone/callsettings/PresetImage;->checkRemainingSize()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$900(Lcom/android/phone/callsettings/PresetImage;J)Landroid/content/Intent;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/phone/callsettings/PresetImage;->recordVideo(J)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private capturePicture()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 413
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 414
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.sec.android.app.camera"

    const-string v2, "com.sec.android.app.camera.Camera"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 415
    const-string v1, "crop"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 416
    const-string v1, "aspectX"

    iget v2, p0, Lcom/android/phone/callsettings/PresetImage;->outputX:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 417
    const-string v1, "aspectY"

    iget v2, p0, Lcom/android/phone/callsettings/PresetImage;->outputY:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 418
    const-string v1, "outputX"

    iget v2, p0, Lcom/android/phone/callsettings/PresetImage;->outputX:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 419
    const-string v1, "outputY"

    iget v2, p0, Lcom/android/phone/callsettings/PresetImage;->outputY:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 420
    return-object v0
.end method

.method private checkRemainingSize()J
    .locals 12

    .prologue
    .line 373
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    .line 374
    .local v7, storageDirectory:Ljava/lang/String;
    new-instance v6, Landroid/os/StatFs;

    invoke-direct {v6, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 375
    .local v6, stat:Landroid/os/StatFs;
    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v10

    int-to-long v10, v10

    mul-long v2, v8, v10

    .line 376
    .local v2, remainSize:J
    const-wide/16 v0, 0x0

    .line 377
    .local v0, margin:J
    mul-long v8, v2, v0

    sub-long v4, v2, v8

    .line 378
    .local v4, sizeLimit:J
    const-string v8, "PresetImage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checked sizeLimit is : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    return-wide v4
.end method

.method private checkVideo(Landroid/net/Uri;)Z
    .locals 9
    .parameter "UriVideos"

    .prologue
    .line 434
    const/4 v8, 0x0

    .line 435
    .local v8, isVideoOk:Z
    move-object v1, p1

    .line 436
    .local v1, tempUriVideos:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 438
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_0
    sget-object v2, Lcom/android/phone/callsettings/PresetImage;->THUMBNAIL_PROJECTION_VIDEOS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 442
    .local v6, cursorVideos:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 443
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 444
    const/4 v8, 0x1

    .line 450
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 451
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    .end local v6           #cursorVideos:Landroid/database/Cursor;
    :cond_1
    :goto_1
    const-string v2, "PresetImage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Result of video validation = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    return v8

    .line 446
    .restart local v6       #cursorVideos:Landroid/database/Cursor;
    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    .line 453
    .end local v6           #cursorVideos:Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 454
    .local v7, e:Ljava/lang/Exception;
    const-string v2, "PresetImage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception is  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private overlay(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "bmp1"
    .parameter "bmp2"

    .prologue
    const/4 v5, 0x0

    .line 771
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 772
    .local v0, bmOverlay:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 773
    .local v1, canvas:Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v1, p1, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 774
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, p2, v2, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 776
    return-object v0
.end method

.method private pickImageFromGallery()Landroid/content/Intent;
    .locals 6

    .prologue
    const/16 v5, 0x16e

    const/16 v4, 0x12c

    const/4 v3, 0x1

    .line 384
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 386
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.sec.android.gallery3d"

    const-string v2, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 387
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 388
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 389
    const-string v1, "crop"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 390
    const-string v1, "aspectX"

    iget v2, p0, Lcom/android/phone/callsettings/PresetImage;->outputX:I

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 391
    const-string v1, "aspectY"

    iget v2, p0, Lcom/android/phone/callsettings/PresetImage;->outputY:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 392
    const-string v1, "outputX"

    iget v2, p0, Lcom/android/phone/callsettings/PresetImage;->outputX:I

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 393
    const-string v1, "outputY"

    iget v2, p0, Lcom/android/phone/callsettings/PresetImage;->outputY:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 394
    const-string v1, "android.intent.extra.LOCAL_ONLY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 395
    const-string v1, "return-data"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 396
    return-object v0
.end method

.method private pickVideoFromGallery()Landroid/content/Intent;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 400
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 401
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.PICK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 403
    const-string v1, "com.sec.android.gallery3d"

    const-string v2, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 404
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 405
    const-string v1, "video/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 406
    const-string v1, "only3gp"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 407
    const-string v1, "senderIsVideoCall"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 408
    const-string v1, "android.intent.extra.LOCAL_ONLY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 409
    return-object v0
.end method

.method private recordVideo(J)Landroid/content/Intent;
    .locals 3
    .parameter "sizeLimit"

    .prologue
    .line 424
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 427
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.sizeLimit"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 428
    const-string v1, "videocall_preset"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 429
    return-object v0
.end method

.method private setImage(Landroid/graphics/Bitmap;)V
    .locals 9
    .parameter "photo"

    .prologue
    .line 616
    move-object v5, p1

    .line 617
    .local v5, selectedPhoto:Landroid/graphics/Bitmap;
    const-string v6, "PresetImage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "set the Image, the selcted photo is = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    if-nez p1, :cond_0

    .line 638
    :goto_0
    return-void

    .line 622
    :cond_0
    const/4 v2, 0x2

    .line 623
    .local v2, mode:I
    :try_start_0
    const-string v6, "ims_vt_alternative_image_permission"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 624
    const/4 v2, 0x3

    .line 625
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "preset_photo.jpg"

    invoke-virtual {v6, v7, v2}, Landroid/content/ContextWrapper;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 626
    .local v1, fos:Ljava/io/FileOutputStream;
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x4b

    invoke-virtual {p1, v6, v7, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 627
    const-string v4, "data/data/com.android.phone/files/preset_photo.jpg"

    .line 628
    .local v4, preset_Path:Ljava/lang/String;
    const-string v3, "photo"

    .line 629
    .local v3, preset_Name:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "preset_path"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 631
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "preset_name"

    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 633
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 634
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .end local v3           #preset_Name:Ljava/lang/String;
    .end local v4           #preset_Path:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 635
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 636
    const-string v6, "IOException"

    const-string v7, "e"

    invoke-static {v6, v7}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setVideo(Ljava/lang/String;)V
    .locals 16
    .parameter "selectedVideoPath"

    .prologue
    .line 641
    const-string v2, "PresetImage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set the Video, the selcted video is = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 643
    .local v1, cr:Landroid/content/ContentResolver;
    const-wide/16 v14, -0x1

    .line 645
    .local v14, videoId:J
    :try_start_0
    sget-object v2, Lcom/android/phone/callsettings/PresetImage;->mUriVideos:Landroid/net/Uri;

    sget-object v3, Lcom/android/phone/callsettings/PresetImage;->THUMBNAIL_PROJECTION_VIDEOS:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 647
    .local v7, cursorVideos:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 648
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 649
    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 653
    :cond_0
    if-eqz v7, :cond_1

    .line 654
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 666
    .end local v7           #cursorVideos:Landroid/database/Cursor;
    :cond_1
    :goto_0
    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 667
    .local v10, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput v2, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 669
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v14, v15, v3, v10}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 672
    .local v13, video:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/phone/callsettings/PresetImage;->outputX:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/phone/callsettings/PresetImage;->outputY:I

    const/4 v4, 0x1

    invoke-static {v13, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v13

    .line 674
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "preset_video.jpg"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/content/ContextWrapper;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v9

    .line 676
    .local v9, fos:Ljava/io/FileOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x4b

    invoke-virtual {v13, v2, v3, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 677
    const-string v12, "data/data/com.android.phone/files/preset_video.jpg"

    .line 678
    .local v12, preset_Path:Ljava/lang/String;
    const-string v11, "video"

    .line 679
    .local v11, preset_Name:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preset_path"

    invoke-static {v2, v3, v12}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 681
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preset_name"

    invoke-static {v2, v3, v11}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 683
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preset_video_path"

    move-object/from16 v0, p1

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 685
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 695
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .end local v11           #preset_Name:Ljava/lang/String;
    .end local v12           #preset_Path:Ljava/lang/String;
    .end local v13           #video:Landroid/graphics/Bitmap;
    :goto_1
    return-void

    .line 656
    .end local v10           #options:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v8

    .line 658
    .local v8, e:Ljava/lang/Exception;
    const-string v2, "PresetImage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception is  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 686
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v10       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v13       #video:Landroid/graphics/Bitmap;
    :catch_1
    move-exception v8

    .line 687
    .local v8, e:Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    .line 688
    const-string v2, "IOException"

    const-string v3, "e"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 690
    .end local v8           #e:Ljava/io/IOException;
    .end local v13           #video:Landroid/graphics/Bitmap;
    :catch_2
    move-exception v8

    .line 692
    .local v8, e:Ljava/lang/Exception;
    const-string v2, "Exception casued by thumnail operation"

    const-string v3, "e"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    const v2, 0x7f0e02ad

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/phone/callsettings/PresetImage;->displayToast(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updatePresetImage()V
    .locals 15

    .prologue
    .line 699
    const-string v12, "PresetImage"

    const-string v13, "updatePresetImage()"

    invoke-static {v12, v13}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "preset_path"

    invoke-static {v12, v13}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 705
    .local v10, preset_Path:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "preset_name"

    invoke-static {v12, v13}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 707
    .local v9, preset_Name:Ljava/lang/String;
    const-string v3, "data/data/com.android.phone/files/preset_defaultimage.png"

    .line 711
    .local v3, mDefaultPath:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 712
    .local v5, myResources:Landroid/content/res/Resources;
    const v12, 0x7f02025d

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    .line 714
    .local v2, is:Ljava/io/InputStream;
    :try_start_1
    new-instance v4, Ljava/io/File;

    const-string v12, "data/data/com.android.phone/files/preset_defaultimage.png"

    invoke-direct {v4, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 715
    .local v4, mdefaultFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_1

    .line 716
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const-string v13, "preset_defaultimage.png"

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Landroid/content/ContextWrapper;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v7

    .line 720
    .local v7, os:Ljava/io/OutputStream;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v12

    new-array v0, v12, [B

    .line 723
    .local v0, data:[B
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v11

    .local v11, result:I
    const/4 v12, -0x1

    if-eq v11, v12, :cond_0

    .line 724
    const/4 v12, 0x0

    invoke-virtual {v7, v0, v12, v11}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 727
    .end local v0           #data:[B
    .end local v11           #result:I
    :catch_0
    move-exception v1

    .line 729
    .local v1, e:Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 733
    .end local v1           #e:Ljava/io/IOException;
    :cond_0
    :goto_1
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 738
    .end local v4           #mdefaultFile:Ljava/io/File;
    .end local v7           #os:Ljava/io/OutputStream;
    :cond_1
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 743
    .end local v2           #is:Ljava/io/InputStream;
    .end local v5           #myResources:Landroid/content/res/Resources;
    :goto_3
    invoke-static {v10}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 745
    .local v6, originalImage:Landroid/graphics/Bitmap;
    if-nez v6, :cond_2

    .line 747
    move-object v10, v3

    .line 748
    const-string v9, "preset_default"

    .line 749
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "preset_name"

    invoke-static {v12, v13, v9}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 751
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "preset_path"

    invoke-static {v12, v13, v10}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 753
    iget-object v12, p0, Lcom/android/phone/callsettings/PresetImage;->mImageButton:Landroid/widget/ImageButton;

    const v13, 0x7f02025d

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 768
    :goto_4
    return-void

    .line 730
    .end local v6           #originalImage:Landroid/graphics/Bitmap;
    .restart local v2       #is:Ljava/io/InputStream;
    .restart local v4       #mdefaultFile:Ljava/io/File;
    .restart local v5       #myResources:Landroid/content/res/Resources;
    .restart local v7       #os:Ljava/io/OutputStream;
    :catch_1
    move-exception v1

    .line 731
    .local v1, e:Landroid/content/res/Resources$NotFoundException;
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 735
    .end local v1           #e:Landroid/content/res/Resources$NotFoundException;
    .end local v4           #mdefaultFile:Ljava/io/File;
    .end local v7           #os:Ljava/io/OutputStream;
    :catch_2
    move-exception v1

    .line 736
    .local v1, e:Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    .line 739
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #is:Ljava/io/InputStream;
    .end local v5           #myResources:Landroid/content/res/Resources;
    :catch_3
    move-exception v1

    .line 740
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 755
    .end local v1           #e:Ljava/io/IOException;
    .restart local v6       #originalImage:Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "preset_name"

    invoke-static {v12, v13, v9}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 757
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "preset_path"

    invoke-static {v12, v13, v10}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 760
    invoke-static {v10}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 761
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f020668

    invoke-static {v12, v13}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 762
    .local v8, playImg:Landroid/graphics/Bitmap;
    iget-boolean v12, p0, Lcom/android/phone/callsettings/PresetImage;->isVideoContents:Z

    if-eqz v12, :cond_3

    .line 763
    iget-object v12, p0, Lcom/android/phone/callsettings/PresetImage;->mImageButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v6, v8}, Lcom/android/phone/callsettings/PresetImage;->overlay(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_4

    .line 765
    :cond_3
    iget-object v12, p0, Lcom/android/phone/callsettings/PresetImage;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v12, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_4
.end method


# virtual methods
.method public displayToast(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 548
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 549
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 550
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 553
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 554
    const-string v3, "PresetImage"

    const-string v4, "onActivityResult"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    const/4 v3, -0x1

    if-eq p2, v3, :cond_0

    .line 613
    :goto_0
    return-void

    .line 561
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 563
    :pswitch_0
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 564
    .local v0, extras:Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 565
    const-string v3, "PresetImage"

    const-string v4, "Return value from GALLERY (extras) is null"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 568
    :cond_1
    const-string v3, "data"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 569
    .local v1, photo:Landroid/graphics/Bitmap;
    iget v3, p0, Lcom/android/phone/callsettings/PresetImage;->outputX:I

    iget v4, p0, Lcom/android/phone/callsettings/PresetImage;->outputY:I

    const/4 v5, 0x1

    invoke-static {v1, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 570
    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/PresetImage;->setImage(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 579
    .end local v0           #extras:Landroid/os/Bundle;
    .end local v1           #photo:Landroid/graphics/Bitmap;
    :pswitch_1
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 580
    .restart local v0       #extras:Landroid/os/Bundle;
    if-nez v0, :cond_2

    .line 581
    const-string v3, "PresetImage"

    const-string v4, "Return value from GALLERY (extras) is null"

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 584
    :cond_2
    const-string v3, "data"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 585
    .restart local v1       #photo:Landroid/graphics/Bitmap;
    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/PresetImage;->setImage(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 592
    .end local v0           #extras:Landroid/os/Bundle;
    .end local v1           #photo:Landroid/graphics/Bitmap;
    :pswitch_2
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    sput-object v3, Lcom/android/phone/callsettings/PresetImage;->mUriVideos:Landroid/net/Uri;

    .line 593
    const-string v3, "PresetImage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mUriVideos by REQUEST_PICK_VIDEO_FROM_GALLERY : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/phone/callsettings/PresetImage;->mUriVideos:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    .line 595
    .local v2, preset_video_path:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/PresetImage;->setVideo(Ljava/lang/String;)V

    goto :goto_0

    .line 602
    .end local v2           #preset_video_path:Ljava/lang/String;
    :pswitch_3
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    sput-object v3, Lcom/android/phone/callsettings/PresetImage;->mUriVideos:Landroid/net/Uri;

    .line 603
    const-string v3, "PresetImage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mUriVideos by REQUEST_ATTACH_VIDEO_FROM_CAMERA : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/phone/callsettings/PresetImage;->mUriVideos:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    .line 605
    .restart local v2       #preset_video_path:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/PresetImage;->setVideo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 561
    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 144
    const-string v0, "Configuration"

    const-string v1, "changed"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 146
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 470
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 471
    const-string v1, "PresetImage"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 474
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 476
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 478
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 483
    const v9, 0x7f04009c

    const/4 v10, 0x0

    invoke-virtual {p1, v9, p2, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 488
    .local v8, v:Landroid/view/View;
    const v9, 0x7f090249

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageButton;

    iput-object v9, p0, Lcom/android/phone/callsettings/PresetImage;->mImageButton:Landroid/widget/ImageButton;

    .line 490
    if-eqz p3, :cond_3

    .line 491
    const-string v9, "bitmapXY"

    invoke-virtual {p3, v9}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 493
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 494
    const-string v9, "outputX"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/android/phone/callsettings/PresetImage;->outputX:I

    .line 495
    const-string v9, "outputY"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/android/phone/callsettings/PresetImage;->outputY:I

    .line 514
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 515
    .local v6, myResources:Landroid/content/res/Resources;
    const v9, 0x7f02025d

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    .line 517
    .local v4, is:Ljava/io/InputStream;
    :try_start_1
    new-instance v5, Ljava/io/File;

    const-string v9, "data/data/com.android.phone/files/preset_defaultimage.png"

    invoke-direct {v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 518
    .local v5, mdefaultFile:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_2

    .line 519
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string v10, "preset_defaultimage.png"

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Landroid/content/ContextWrapper;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    .line 523
    .local v7, os:Ljava/io/OutputStream;
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v9

    new-array v2, v9, [B

    .line 524
    .local v2, data:[B
    invoke-virtual {v4, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 525
    .local v1, count:I
    const/4 v9, -0x1

    if-eq v1, v9, :cond_1

    .line 526
    invoke-virtual {v7, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    .line 533
    .end local v1           #count:I
    .end local v2           #data:[B
    :cond_1
    :goto_1
    :try_start_3
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 538
    .end local v5           #mdefaultFile:Ljava/io/File;
    .end local v7           #os:Ljava/io/OutputStream;
    :cond_2
    :goto_2
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 543
    .end local v4           #is:Ljava/io/InputStream;
    .end local v6           #myResources:Landroid/content/res/Resources;
    :goto_3
    return-object v8

    .line 498
    :cond_3
    iget-object v9, p0, Lcom/android/phone/callsettings/PresetImage;->mImageButton:Landroid/widget/ImageButton;

    new-instance v10, Lcom/android/phone/callsettings/PresetImage$3;

    invoke-direct {v10, p0}, Lcom/android/phone/callsettings/PresetImage$3;-><init>(Lcom/android/phone/callsettings/PresetImage;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 527
    .restart local v4       #is:Ljava/io/InputStream;
    .restart local v5       #mdefaultFile:Ljava/io/File;
    .restart local v6       #myResources:Landroid/content/res/Resources;
    .restart local v7       #os:Ljava/io/OutputStream;
    :catch_0
    move-exception v3

    .line 529
    .local v3, e:Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 535
    .end local v3           #e:Ljava/io/IOException;
    .end local v5           #mdefaultFile:Ljava/io/File;
    .end local v7           #os:Ljava/io/OutputStream;
    :catch_1
    move-exception v3

    .line 536
    .restart local v3       #e:Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    .line 539
    .end local v3           #e:Ljava/io/IOException;
    .end local v4           #is:Ljava/io/InputStream;
    .end local v6           #myResources:Landroid/content/res/Resources;
    :catch_2
    move-exception v3

    .line 540
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 530
    .end local v3           #e:Ljava/io/IOException;
    .restart local v4       #is:Ljava/io/InputStream;
    .restart local v5       #mdefaultFile:Ljava/io/File;
    .restart local v6       #myResources:Landroid/content/res/Resources;
    .restart local v7       #os:Ljava/io/OutputStream;
    :catch_3
    move-exception v3

    .line 531
    .local v3, e:Landroid/content/res/Resources$NotFoundException;
    :try_start_7
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 797
    iget-object v0, p0, Lcom/android/phone/callsettings/PresetImage;->changeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 798
    iget-object v0, p0, Lcom/android/phone/callsettings/PresetImage;->changeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 799
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/callsettings/PresetImage;->changeDialog:Landroid/app/AlertDialog;

    .line 802
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 803
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 780
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 793
    .local v0, itemId:I
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method public onResume()V
    .locals 10

    .prologue
    const v9, 0x7f0e0435

    const v8, 0x7f0e0434

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 149
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    .line 150
    const-string v2, "PresetImage"

    const-string v3, "onResume()"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iput-boolean v5, p0, Lcom/android/phone/callsettings/PresetImage;->isVideoContents:Z

    .line 155
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preset_name"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, preset_Name:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 158
    const-string v2, "video"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 159
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preset_video_path"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, videoUri:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 162
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sput-object v2, Lcom/android/phone/callsettings/PresetImage;->mUriVideos:Landroid/net/Uri;

    .line 164
    :cond_0
    sget-object v2, Lcom/android/phone/callsettings/PresetImage;->mUriVideos:Landroid/net/Uri;

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/phone/callsettings/PresetImage;->mUriVideos:Landroid/net/Uri;

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/PresetImage;->checkVideo(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 165
    const-string v2, "PresetImage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mUriVideos in onResume :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/phone/callsettings/PresetImage;->mUriVideos:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iput-boolean v6, p0, Lcom/android/phone/callsettings/PresetImage;->isVideoContents:Z

    .line 176
    .end local v1           #videoUri:Ljava/lang/String;
    :cond_1
    :goto_0
    const-string v2, "rearrange_preset_image_setting"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 178
    iget-object v2, p0, Lcom/android/phone/callsettings/PresetImage;->mCallerImageAlertChanged:[Ljava/lang/String;

    if-nez v2, :cond_2

    .line 179
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const v3, 0x7f0e03e7

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v8}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v9}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    iput-object v2, p0, Lcom/android/phone/callsettings/PresetImage;->mCallerImageAlertChanged:[Ljava/lang/String;

    .line 186
    :cond_2
    iget-object v2, p0, Lcom/android/phone/callsettings/PresetImage;->mCallerImageAlertDefault:[Ljava/lang/String;

    if-nez v2, :cond_3

    .line 187
    new-array v2, v7, [Ljava/lang/String;

    invoke-virtual {p0, v8}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v9}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    iput-object v2, p0, Lcom/android/phone/callsettings/PresetImage;->mCallerImageAlertDefault:[Ljava/lang/String;

    .line 214
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/callsettings/PresetImage;->setListener()V

    .line 215
    invoke-direct {p0}, Lcom/android/phone/callsettings/PresetImage;->updatePresetImage()V

    .line 218
    iget-object v2, p0, Lcom/android/phone/callsettings/PresetImage;->mImageButton:Landroid/widget/ImageButton;

    iget-boolean v3, p0, Lcom/android/phone/callsettings/PresetImage;->isVideoContents:Z

    invoke-virtual {v2, v3}, Landroid/view/View;->setClickable(Z)V

    .line 219
    const-string v2, "PresetImage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Clickable attr. in onResume() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/callsettings/PresetImage;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/view/View;->isClickable()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    return-void

    .line 168
    .restart local v1       #videoUri:Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preset_path"

    const-string v4, "data/data/com.android.phone/files/preset_defaultimage.png"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 170
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preset_name"

    const v4, 0x7f0e02af

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 194
    .end local v1           #videoUri:Ljava/lang/String;
    :cond_5
    iget-object v2, p0, Lcom/android/phone/callsettings/PresetImage;->mCallerImageAlertChanged:[Ljava/lang/String;

    if-nez v2, :cond_6

    .line 195
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const v3, 0x7f0e03e7

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v8}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {p0, v9}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    const/4 v3, 0x3

    const v4, 0x7f0e03e6

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const v4, 0x7f0e03e1

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    iput-object v2, p0, Lcom/android/phone/callsettings/PresetImage;->mCallerImageAlertChanged:[Ljava/lang/String;

    .line 204
    :cond_6
    iget-object v2, p0, Lcom/android/phone/callsettings/PresetImage;->mCallerImageAlertDefault:[Ljava/lang/String;

    if-nez v2, :cond_3

    .line 205
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p0, v8}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v9}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    const v3, 0x7f0e03e6

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    const/4 v3, 0x3

    const v4, 0x7f0e03e1

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    iput-object v2, p0, Lcom/android/phone/callsettings/PresetImage;->mCallerImageAlertDefault:[Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 134
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 136
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "outputX"

    iget v2, p0, Lcom/android/phone/callsettings/PresetImage;->outputX:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 137
    const-string v1, "outputY"

    iget v2, p0, Lcom/android/phone/callsettings/PresetImage;->outputY:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 139
    const-string v1, "bitmapXY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 141
    return-void
.end method

.method public setListener()V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/phone/callsettings/PresetImage;->mImageButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/phone/callsettings/PresetImage$1;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/PresetImage$1;-><init>(Lcom/android/phone/callsettings/PresetImage;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09024a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/callsettings/PresetImage;->btnChangePreset:Landroid/widget/Button;

    .line 244
    iget-object v0, p0, Lcom/android/phone/callsettings/PresetImage;->btnChangePreset:Landroid/widget/Button;

    new-instance v1, Lcom/android/phone/callsettings/PresetImage$2;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/PresetImage$2;-><init>(Lcom/android/phone/callsettings/PresetImage;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    return-void
.end method
