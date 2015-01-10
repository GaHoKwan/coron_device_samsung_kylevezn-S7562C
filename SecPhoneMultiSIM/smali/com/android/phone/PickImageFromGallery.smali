.class public Lcom/android/phone/PickImageFromGallery;
.super Landroid/app/Activity;
.source "PickImageFromGallery.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String;

.field private static myHandler:Landroid/os/Handler;


# instance fields
.field private final MAX_OUTPUT_X:I

.field private final MAX_OUTPUT_Y:I

.field private selectImageFromGallery:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/android/phone/PickImageFromGallery;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/PickImageFromGallery;->LOG_TAG:Ljava/lang/String;

    .line 134
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/PickImageFromGallery;->myHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/PickImageFromGallery;->selectImageFromGallery:Z

    .line 40
    const/16 v0, 0x16e

    iput v0, p0, Lcom/android/phone/PickImageFromGallery;->MAX_OUTPUT_X:I

    .line 41
    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/phone/PickImageFromGallery;->MAX_OUTPUT_Y:I

    return-void
.end method

.method protected static registerForImageGalleryResponse(Landroid/os/Handler;)V
    .locals 0
    .parameter "mHandlerforImageGallery"

    .prologue
    .line 137
    sput-object p0, Lcom/android/phone/PickImageFromGallery;->myHandler:Landroid/os/Handler;

    .line 139
    return-void
.end method

.method protected static unregisterForImageGalleryResponse()V
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/PickImageFromGallery;->myHandler:Landroid/os/Handler;

    .line 145
    return-void
.end method


# virtual methods
.method public log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 148
    sget-object v0, Lcom/android/phone/PickImageFromGallery;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v5, -0x1

    .line 98
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 104
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "imageSelected"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/phone/PickImageFromGallery;->selectImageFromGallery:Z

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult : selectImageFromGallery = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/phone/PickImageFromGallery;->selectImageFromGallery:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/phone/PickImageFromGallery;->log(Ljava/lang/String;)V

    .line 107
    iget-boolean v2, p0, Lcom/android/phone/PickImageFromGallery;->selectImageFromGallery:Z

    if-eqz v2, :cond_2

    .line 108
    if-ne p2, v5, :cond_1

    sget-object v2, Lcom/android/phone/PickImageFromGallery;->myHandler:Landroid/os/Handler;

    if-eqz v2, :cond_1

    .line 109
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 110
    .local v0, extras:Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 111
    sget-object v2, Lcom/android/phone/PickImageFromGallery;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Return value from GALLERY (extras) is null"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .end local v0           #extras:Landroid/os/Bundle;
    :goto_0
    return-void

    .line 114
    .restart local v0       #extras:Landroid/os/Bundle;
    :cond_0
    const-string v2, "data"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 115
    .local v1, photo:Landroid/graphics/Bitmap;
    sput-object v1, Lcom/android/phone/InVTCallScreen;->mImageSelectedFromGalary:Landroid/graphics/Bitmap;

    .line 116
    sget-object v2, Lcom/android/phone/PickImageFromGallery;->myHandler:Landroid/os/Handler;

    const/16 v3, 0x7c

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 125
    .end local v0           #extras:Landroid/os/Bundle;
    .end local v1           #photo:Landroid/graphics/Bitmap;
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 120
    :cond_2
    if-ne p2, v5, :cond_1

    sget-object v2, Lcom/android/phone/PickImageFromGallery;->myHandler:Landroid/os/Handler;

    if-eqz v2, :cond_1

    .line 121
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    sput-object v2, Lcom/android/phone/InVTCallScreen;->mVideoSelectedFromGalary:Landroid/net/Uri;

    .line 122
    sget-object v2, Lcom/android/phone/PickImageFromGallery;->myHandler:Landroid/os/Handler;

    const/16 v3, 0x81

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 130
    const-string v0, "Ignore onConfigurationChanged for PickImageFromGallery"

    invoke-virtual {p0, v0}, Lcom/android/phone/PickImageFromGallery;->log(Ljava/lang/String;)V

    .line 131
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 132
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/high16 v9, 0x800

    const/16 v8, 0x16e

    const/16 v7, 0x12c

    const/4 v6, 0x1

    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate : savedInstanceState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/phone/PickImageFromGallery;->log(Ljava/lang/String;)V

    .line 55
    if-nez p1, :cond_0

    .line 57
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "imageSelected"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/phone/PickImageFromGallery;->selectImageFromGallery:Z

    .line 58
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate : selectImageFromGallery = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/phone/PickImageFromGallery;->selectImageFromGallery:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/phone/PickImageFromGallery;->log(Ljava/lang/String;)V

    .line 60
    iget-boolean v4, p0, Lcom/android/phone/PickImageFromGallery;->selectImageFromGallery:Z

    if-eqz v4, :cond_1

    .line 61
    sget-object v4, Lcom/android/phone/PickImageFromGallery;->LOG_TAG:Ljava/lang/String;

    const-string v5, "select Image from the gallery "

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    sget-object v4, Lcom/android/phone/PickImageFromGallery;->LOG_TAG:Ljava/lang/String;

    const-string v5, "PickImageFromFallery : OnCreate()"

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "surfaceWidth"

    invoke-virtual {v4, v5, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 65
    .local v3, surfaceWidth:I
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "surfaceHeight"

    invoke-virtual {v4, v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 67
    .local v2, surfaceHeight:I
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.PICK"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 69
    .local v0, mImgIntent:Landroid/content/Intent;
    const-string v4, "com.sec.android.gallery3d"

    const-string v5, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    invoke-virtual {v0, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 71
    const-string v4, "image/*"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    const-string v4, "crop"

    const-string v5, "true"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    const-string v4, "aspectX"

    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 74
    const-string v4, "aspectY"

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 75
    const-string v4, "outputX"

    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 76
    const-string v4, "outputY"

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 77
    const-string v4, "android.intent.extra.LOCAL_ONLY"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 78
    const-string v4, "senderIsVideoCall"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 79
    const-string v4, "return-data"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 80
    invoke-virtual {p0, v0, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 95
    .end local v0           #mImgIntent:Landroid/content/Intent;
    .end local v2           #surfaceHeight:I
    .end local v3           #surfaceWidth:I
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    sget-object v4, Lcom/android/phone/PickImageFromGallery;->LOG_TAG:Ljava/lang/String;

    const-string v5, "select Video from the gallery "

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.PICK"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    .local v1, mVideoIntent:Landroid/content/Intent;
    const-string v4, "com.sec.android.gallery3d"

    const-string v5, "com.sec.android.gallery3d.app.Gallery"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    invoke-virtual {v1, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 87
    const-string v4, "video/*"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    const-string v4, "only3gp"

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 90
    const-string v4, "senderIsVideoCall"

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 91
    const-string v4, "android.intent.extra.LOCAL_ONLY"

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 92
    invoke-virtual {p0, v1, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
