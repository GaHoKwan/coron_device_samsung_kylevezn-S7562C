.class public abstract Lcom/android/contacts/detail/PhotoSelectionHandler;
.super Ljava/lang/Object;
.source "PhotoSelectionHandler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected final mContext:Landroid/content/Context;

.field private mIsDirectoryContact:Z

.field private mPhotoMode:I

.field private final mPhotoPickSize:I

.field private final mPhotoView:Landroid/view/View;

.field private mPopup:Landroid/app/AlertDialog;

.field private mState:Lcom/android/contacts/model/EntityDeltaList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-class v0, Lcom/android/contacts/detail/PhotoSelectionHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/detail/PhotoSelectionHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IZLcom/android/contacts/model/EntityDeltaList;)V
    .locals 1
    .parameter "context"
    .parameter "photoView"
    .parameter "photoMode"
    .parameter "isDirectoryContact"
    .parameter "state"

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    .line 82
    iput-object p2, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mPhotoView:Landroid/view/View;

    .line 83
    iput p3, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mPhotoMode:I

    .line 84
    iput-boolean p4, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mIsDirectoryContact:Z

    .line 85
    iput-object p5, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mState:Lcom/android/contacts/model/EntityDeltaList;

    .line 86
    invoke-direct {p0}, Lcom/android/contacts/detail/PhotoSelectionHandler;->getPhotoPickSize()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mPhotoPickSize:I

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/detail/PhotoSelectionHandler;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/contacts/detail/PhotoSelectionHandler;->startTakePhotoActivity(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/contacts/detail/PhotoSelectionHandler;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/contacts/detail/PhotoSelectionHandler;->startPickFromGalleryActivity(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/contacts/detail/PhotoSelectionHandler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/contacts/detail/PhotoSelectionHandler;->startPickFromSNoteActivity()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/contacts/detail/PhotoSelectionHandler;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/contacts/detail/PhotoSelectionHandler;->startPickFromTaggedPictureActivity(Ljava/lang/String;)V

    return-void
.end method

.method private doCropPhoto(Ljava/lang/String;)V
    .locals 10
    .parameter "fileName"

    .prologue
    const/4 v9, 0x1

    .line 247
    :try_start_0
    invoke-static {p1}, Lcom/android/contacts/util/ContactPhotoUtils;->pathForNewCameraPhoto(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 248
    .local v3, newPath:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    invoke-static {v4, p1}, Lcom/android/contacts/util/ContactPhotoUtils;->pathForCroppedPhoto(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, croppedPath:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput-object v8, v6, v7

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 258
    invoke-direct {p0, v3, v0}, Lcom/android/contacts/detail/PhotoSelectionHandler;->getCropImageIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 259
    .local v2, intent:Landroid/content/Intent;
    const/16 v4, 0x3ea

    invoke-virtual {p0, v2, v4, p1}, Lcom/android/contacts/detail/PhotoSelectionHandler;->startPhotoActivity(Landroid/content/Intent;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    .end local v0           #croppedPath:Ljava/lang/String;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #newPath:Ljava/lang/String;
    :goto_0
    return-void

    .line 260
    :catch_0
    move-exception v1

    .line 261
    .local v1, e:Ljava/lang/Exception;
    sget-object v4, Lcom/android/contacts/detail/PhotoSelectionHandler;->TAG:Ljava/lang/String;

    const-string v5, "Cannot crop image"

    invoke-static {v4, v5, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 262
    iget-object v4, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    const v5, 0x7f0d0064

    invoke-static {v4, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private getCropImageIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .parameter "inputPhotoPath"
    .parameter "croppedPhotoPath"

    .prologue
    .line 353
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 354
    .local v1, inputPhotoUri:Landroid/net/Uri;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 355
    .local v0, croppedPhotoUri:Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.camera.action.CROP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 356
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "image/*"

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 357
    iget v3, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mPhotoPickSize:I

    invoke-static {v2, v0, v3}, Lcom/android/contacts/util/ContactPhotoUtils;->addGalleryIntentExtras(Landroid/content/Intent;Landroid/net/Uri;I)V

    .line 358
    return-object v2
.end method

.method private getCropSNoteIntent(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter "fileUri"
    .parameter "croppedPhotoPath"

    .prologue
    .line 363
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 364
    .local v0, croppedPhotoUri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.camera.action.CROP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 365
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "image/*"

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    iget v2, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mPhotoPickSize:I

    invoke-static {v1, v0, v2}, Lcom/android/contacts/util/ContactPhotoUtils;->addGalleryIntentExtras(Landroid/content/Intent;Landroid/net/Uri;I)V

    .line 367
    return-object v1
.end method

.method private getPhotoPickIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 5
    .parameter "photoFile"

    .prologue
    .line 340
    iget-object v3, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/android/contacts/util/ContactPhotoUtils;->pathForCroppedPhoto(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 341
    .local v0, croppedPhotoPath:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 342
    .local v1, croppedPhotoUri:Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.GET_CONTENT"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 343
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "com.sec.android.gallery3d"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    const-string v3, "image/*"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 345
    iget v3, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mPhotoPickSize:I

    invoke-static {v2, v1, v3}, Lcom/android/contacts/util/ContactPhotoUtils;->addGalleryIntentExtras(Landroid/content/Intent;Landroid/net/Uri;I)V

    .line 346
    return-object v2
.end method

.method private getPhotoPickSize()I
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 322
    iget-object v0, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$DisplayPhoto;->CONTENT_MAX_DIMENSIONS_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "display_max_dim"

    aput-object v4, v2, v7

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 324
    .local v6, c:Landroid/database/Cursor;
    if-nez v6, :cond_1

    move v0, v7

    .line 331
    :cond_0
    :goto_0
    return v0

    .line 327
    :cond_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 328
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 330
    if-eqz v6, :cond_0

    .line 331
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 330
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 331
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private getSNotePickIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 394
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SNOTE_PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 395
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "SelectMode"

    const-string v2, "single"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 396
    const-string v1, "ReturnType"

    const-string v2, "Imageonly"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 397
    return-object v0
.end method

.method private getTaggedPhotoPickIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 5
    .parameter "photoFile"

    .prologue
    .line 372
    iget-object v3, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/android/contacts/util/ContactPhotoUtils;->pathForCroppedPhoto(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, croppedPhotoPath:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 374
    .local v1, croppedPhotoUri:Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.GET_CONTENT"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 375
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "com.sec.android.gallery3d"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    const-string v3, "image/*"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 377
    const-string v3, "caller_id_pick"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 378
    iget v3, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mPhotoPickSize:I

    invoke-static {v2, v1, v3}, Lcom/android/contacts/util/ContactPhotoUtils;->addGalleryIntentExtras(Landroid/content/Intent;Landroid/net/Uri;I)V

    .line 379
    return-object v2
.end method

.method private static getTakePhotoIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .parameter "fileName"

    .prologue
    .line 386
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 387
    .local v0, intent:Landroid/content/Intent;
    invoke-static {p0}, Lcom/android/contacts/util/ContactPhotoUtils;->pathForNewCameraPhoto(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 388
    .local v1, newPhotoPath:Ljava/lang/String;
    const-string v2, "output"

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 389
    return-object v0
.end method

.method private startPickFromGalleryActivity(Ljava/lang/String;)V
    .locals 2
    .parameter "photoFile"

    .prologue
    .line 304
    invoke-direct {p0, p1}, Lcom/android/contacts/detail/PhotoSelectionHandler;->getPhotoPickIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 305
    .local v0, intent:Landroid/content/Intent;
    const/16 v1, 0x3ea

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/contacts/detail/PhotoSelectionHandler;->startPhotoActivity(Landroid/content/Intent;ILjava/lang/String;)V

    .line 306
    return-void
.end method

.method private startPickFromSNoteActivity()V
    .locals 2

    .prologue
    .line 310
    invoke-direct {p0}, Lcom/android/contacts/detail/PhotoSelectionHandler;->getSNotePickIntent()Landroid/content/Intent;

    move-result-object v0

    .line 311
    .local v0, intent:Landroid/content/Intent;
    const/16 v1, 0x3eb

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/detail/PhotoSelectionHandler;->startSNoteActivity(Landroid/content/Intent;I)V

    .line 312
    return-void
.end method

.method private startPickFromTaggedPictureActivity(Ljava/lang/String;)V
    .locals 2
    .parameter "photoFile"

    .prologue
    .line 316
    invoke-direct {p0, p1}, Lcom/android/contacts/detail/PhotoSelectionHandler;->getTaggedPhotoPickIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 317
    .local v0, intent:Landroid/content/Intent;
    const/16 v1, 0x3ea

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/contacts/detail/PhotoSelectionHandler;->startPhotoActivity(Landroid/content/Intent;ILjava/lang/String;)V

    .line 318
    return-void
.end method

.method private startTakePhotoActivity(Ljava/lang/String;)V
    .locals 2
    .parameter "photoFile"

    .prologue
    .line 293
    invoke-static {p1}, Lcom/android/contacts/detail/PhotoSelectionHandler;->getTakePhotoIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 294
    .local v0, intent:Landroid/content/Intent;
    const/16 v1, 0x3e9

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/contacts/detail/PhotoSelectionHandler;->startPhotoActivity(Landroid/content/Intent;ILjava/lang/String;)V

    .line 295
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 93
    :cond_0
    return-void
.end method

.method public dismissPhotoSelectionPopup()V
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 479
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mPopup:Landroid/app/AlertDialog;

    .line 481
    :cond_0
    return-void
.end method

.method protected doCropSNote(Landroid/net/Uri;)V
    .locals 9
    .parameter "fileUri"

    .prologue
    const/4 v8, 0x1

    .line 269
    :try_start_0
    iget-object v3, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/contacts/util/ContactPhotoUtils;->generateTempPhotoFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    .line 271
    .local v2, tempCropFile:Ljava/io/File;
    iget-object v3, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput-object v7, v5, v6

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 278
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/android/contacts/detail/PhotoSelectionHandler;->getCropSNoteIntent(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 279
    .local v1, intent:Landroid/content/Intent;
    const/16 v3, 0x3ea

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v3, v4}, Lcom/android/contacts/detail/PhotoSelectionHandler;->startPhotoActivity(Landroid/content/Intent;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #tempCropFile:Ljava/io/File;
    :goto_0
    return-void

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Lcom/android/contacts/detail/PhotoSelectionHandler;->TAG:Ljava/lang/String;

    const-string v4, "Cannot crop image"

    invoke-static {v3, v4, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 282
    iget-object v3, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    const v4, 0x7f0d0064

    invoke-static {v3, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public getDeltaForAttachingPhotoToContact()Lcom/android/contacts/model/EntityDeltaList;
    .locals 9

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/android/contacts/detail/PhotoSelectionHandler;->getWritableEntityIndex()I

    move-result v6

    .line 214
    .local v6, writableEntityIndex:I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 216
    iget-object v7, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/EntityDelta;

    .line 219
    .local v3, delta:Lcom/android/contacts/model/EntityDelta;
    invoke-virtual {v3}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getCompleteValues()Landroid/content/ContentValues;

    move-result-object v4

    .line 220
    .local v4, entityValues:Landroid/content/ContentValues;
    const-string v7, "account_type"

    invoke-virtual {v4, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 221
    .local v5, type:Ljava/lang/String;
    const-string v7, "data_set"

    invoke-virtual {v4, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 222
    .local v2, dataSet:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v7

    invoke-virtual {v7, v5, v2}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v0

    .line 225
    .local v0, accountType:Lcom/android/contacts/model/AccountType;
    const-string v7, "vnd.android.cursor.item/photo"

    invoke-static {v3, v0, v7}, Lcom/android/contacts/model/EntityModifier;->ensureKindExists(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v1

    .line 227
    .local v1, child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->setFromTemplate(Z)V

    .line 228
    const-string v7, "is_super_primary"

    const/4 v8, 0x1

    invoke-virtual {v1, v7, v8}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;I)V

    .line 230
    iget-object v7, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mState:Lcom/android/contacts/model/EntityDeltaList;

    .line 232
    .end local v0           #accountType:Lcom/android/contacts/model/AccountType;
    .end local v1           #child:Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v2           #dataSet:Ljava/lang/String;
    .end local v3           #delta:Lcom/android/contacts/model/EntityDelta;
    .end local v4           #entityValues:Landroid/content/ContentValues;
    .end local v5           #type:Ljava/lang/String;
    :goto_0
    return-object v7

    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public abstract getListener()Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;
.end method

.method public getWritableEntityId()J
    .locals 3

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/android/contacts/detail/PhotoSelectionHandler;->getWritableEntityIndex()I

    move-result v0

    .line 199
    .local v0, index:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-wide/16 v1, -0x1

    .line 200
    :goto_0
    return-wide v1

    :cond_0
    iget-object v1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mState:Lcom/android/contacts/model/EntityDeltaList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {v1}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0
.end method

.method public getWritableEntityIndex()I
    .locals 2

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mIsDirectoryContact:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 190
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mState:Lcom/android/contacts/model/EntityDeltaList;

    iget-object v1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDeltaList;->indexOfFirstWritableRawContact(Landroid/content/Context;)I

    move-result v0

    goto :goto_0
.end method

.method public handlePhotoActivityResult(IILandroid/content/Intent;)Z
    .locals 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 151
    invoke-virtual {p0}, Lcom/android/contacts/detail/PhotoSelectionHandler;->getListener()Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;

    move-result-object v3

    .line 152
    .local v3, listener:Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;
    const/4 v7, -0x1

    if-ne p2, v7, :cond_0

    .line 153
    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    move v5, v6

    .line 180
    :goto_1
    return v5

    .line 156
    :pswitch_0
    iget-object v6, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;->getCurrentPhotoFile()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/contacts/util/ContactPhotoUtils;->pathForCroppedPhoto(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 158
    .local v4, path:Ljava/lang/String;
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 159
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v3, v0}, Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;->onPhotoSelected(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 164
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v4           #path:Ljava/lang/String;
    :pswitch_1
    invoke-virtual {v3}, Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;->getCurrentPhotoFile()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/contacts/detail/PhotoSelectionHandler;->doCropPhoto(Ljava/lang/String;)V

    goto :goto_1

    .line 169
    :pswitch_2
    if-eqz p3, :cond_0

    const-string v5, "android.intent.extra.STREAM"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 170
    const-string v5, "android.intent.extra.STREAM"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 171
    .local v2, itemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 172
    .local v1, fileUri:Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 173
    invoke-virtual {p0, v1}, Lcom/android/contacts/detail/PhotoSelectionHandler;->doCropSNote(Landroid/net/Uri;)V

    goto :goto_0

    .line 153
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/android/contacts/detail/PhotoSelectionHandler;->getListener()Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;

    move-result-object v1

    .line 114
    .local v1, listener:Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;
    if-eqz v1, :cond_1

    .line 115
    invoke-virtual {p0}, Lcom/android/contacts/detail/PhotoSelectionHandler;->getWritableEntityIndex()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 116
    iget-object v2, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mPopup:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    .line 117
    iget-object v2, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 118
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mPopup:Landroid/app/AlertDialog;

    .line 120
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mPhotoView:Landroid/view/View;

    iget v4, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mPhotoMode:I

    invoke-static {v2, v3, v1, v4}, Lcom/android/contacts/editor/PhotoActionPopup;->createPopupMenu(Landroid/content/Context;Landroid/view/View;Lcom/android/contacts/editor/PhotoActionPopup$Listener;I)Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mPopup:Landroid/app/AlertDialog;

    .line 122
    iget-object v2, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mPopup:Landroid/app/AlertDialog;

    new-instance v3, Lcom/android/contacts/detail/PhotoSelectionHandler$1;

    invoke-direct {v3, p0, v1}, Lcom/android/contacts/detail/PhotoSelectionHandler$1;-><init>(Lcom/android/contacts/detail/PhotoSelectionHandler;Lcom/android/contacts/detail/PhotoSelectionHandler$PhotoActionListener;)V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 129
    iget-object v2, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_2

    .line 130
    iget-object v0, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 131
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 140
    .end local v0           #activity:Landroid/app/Activity;
    :cond_1
    :goto_0
    return-void

    .line 136
    :cond_2
    iget-object v2, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mPopup:Landroid/app/AlertDialog;

    if-eqz v2, :cond_1

    .line 137
    iget-object v2, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method public setDirectoryContact(Z)V
    .locals 0
    .parameter "isDirectoryContact"

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mIsDirectoryContact:Z

    .line 107
    return-void
.end method

.method public setPhotoMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 96
    iput p1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mPhotoMode:I

    .line 97
    return-void
.end method

.method public setState(Lcom/android/contacts/model/EntityDeltaList;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/contacts/detail/PhotoSelectionHandler;->mState:Lcom/android/contacts/model/EntityDeltaList;

    .line 102
    return-void
.end method

.method protected abstract startPhotoActivity(Landroid/content/Intent;ILjava/lang/String;)V
.end method

.method protected abstract startSNoteActivity(Landroid/content/Intent;I)V
.end method
