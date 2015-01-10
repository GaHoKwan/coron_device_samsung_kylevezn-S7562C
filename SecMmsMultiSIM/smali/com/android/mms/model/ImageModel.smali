.class public Lcom/android/mms/model/ImageModel;
.super Lcom/android/mms/model/RegionMediaModel;
.source "ImageModel.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final LOCAL_LOGV:Z = false

#the value of this static final field might be set in the static constructor
.field private static final SLIDESHOW_BOUNDS_LIMIT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Mms/image"

.field private static final THUMBNAIL_BOUNDS_LIMIT:I


# instance fields
.field private mBitmapCache:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mHeight:I

.field private mRotate:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 57
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenHeight()I

    move-result v0

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenWidth()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenWidth()I

    move-result v0

    :goto_0
    sput v0, Lcom/android/mms/model/ImageModel;->THUMBNAIL_BOUNDS_LIMIT:I

    .line 60
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenHeight()I

    move-result v0

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenWidth()I

    move-result v1

    if-le v0, v1, :cond_1

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    :goto_1
    sput v0, Lcom/android/mms/model/ImageModel;->SLIDESHOW_BOUNDS_LIMIT:I

    return-void

    .line 57
    :cond_0
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenHeight()I

    move-result v0

    goto :goto_0

    .line 60
    :cond_1
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V
    .locals 3
    .parameter "context"
    .parameter "uri"
    .parameter "region"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 72
    const-string v1, "img"

    invoke-direct {p0, p1, v1, p2, p3}, Lcom/android/mms/model/RegionMediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .line 69
    new-instance v1, Ljava/lang/ref/SoftReference;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/mms/model/ImageModel;->mBitmapCache:Ljava/lang/ref/SoftReference;

    .line 73
    invoke-direct {p0, p2}, Lcom/android/mms/model/ImageModel;->initModelFromUri(Landroid/net/Uri;)V

    .line 74
    invoke-static {}, Lcom/android/mms/model/ContentRestrictionFactory;->getContentRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v0

    .line 75
    .local v0, cr:Lcom/android/mms/model/ContentRestriction;
    iget-object v1, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/mms/model/ContentRestriction;->checkImageContentType(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V
    .locals 7
    .parameter "context"
    .parameter "contentType"
    .parameter "src"
    .parameter "uri"
    .parameter "region"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 81
    const-string v2, "img"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/model/RegionMediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .line 69
    new-instance v0, Ljava/lang/ref/SoftReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/mms/model/ImageModel;->mBitmapCache:Ljava/lang/ref/SoftReference;

    .line 82
    invoke-direct {p0}, Lcom/android/mms/model/ImageModel;->decodeImageBounds()V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;I)V
    .locals 0
    .parameter "context"
    .parameter "contentType"
    .parameter "src"
    .parameter "uri"
    .parameter "region"
    .parameter "parDuation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-direct/range {p0 .. p5}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .line 94
    iput p6, p0, Lcom/android/mms/model/MediaModel;->mDuration:I

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/drm/DrmWrapper;Lcom/android/mms/model/RegionModel;)V
    .locals 7
    .parameter "context"
    .parameter "contentType"
    .parameter "src"
    .parameter "wrapper"
    .parameter "regionModel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    const-string v2, "img"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/model/RegionMediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/drm/DrmWrapper;Lcom/android/mms/model/RegionModel;)V

    .line 69
    new-instance v0, Ljava/lang/ref/SoftReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/mms/model/ImageModel;->mBitmapCache:Ljava/lang/ref/SoftReference;

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/drm/DrmWrapper;Lcom/android/mms/model/RegionModel;I)V
    .locals 0
    .parameter "context"
    .parameter "contentType"
    .parameter "src"
    .parameter "wrapper"
    .parameter "regionModel"
    .parameter "parDuation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    invoke-direct/range {p0 .. p5}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/drm/DrmWrapper;Lcom/android/mms/model/RegionModel;)V

    .line 100
    iput p6, p0, Lcom/android/mms/model/MediaModel;->mDuration:I

    .line 101
    return-void
.end method

.method private createBitmap(ILandroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "bitmapLimit"
    .parameter "uri"

    .prologue
    .line 247
    iget v2, p0, Lcom/android/mms/model/ImageModel;->mWidth:I

    .line 248
    .local v2, outWidth:I
    iget v1, p0, Lcom/android/mms/model/ImageModel;->mHeight:I

    .line 250
    .local v1, outHeight:I
    const/4 v3, 0x1

    .line 252
    .local v3, s:I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIEI()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 253
    if-le v2, v1, :cond_0

    move v0, v2

    .line 255
    .local v0, currentLength:I
    :goto_0
    div-int v4, v0, v3

    if-le v4, p1, :cond_3

    .line 256
    mul-int/lit8 v3, v3, 0x2

    goto :goto_0

    .end local v0           #currentLength:I
    :cond_0
    move v0, v1

    .line 253
    goto :goto_0

    .line 259
    :cond_1
    :goto_1
    div-int v4, v2, v3

    if-gt v4, p1, :cond_2

    div-int v4, v1, v3

    if-le v4, p1, :cond_3

    .line 260
    :cond_2
    mul-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 264
    :cond_3
    const-string v4, "Mms:app"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 265
    const-string v4, "Mms/image"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createThumbnailBitmap: scale="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", w="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    div-int v6, v2, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", h="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    div-int v6, v1, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    :cond_4
    invoke-direct {p0, p2, v3}, Lcom/android/mms/model/ImageModel;->decodeBitmap(Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v4

    return-object v4
.end method

.method private createThumbnailBitmap(ILandroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "thumbnailBoundsLimit"
    .parameter "uri"

    .prologue
    .line 272
    iget v2, p0, Lcom/android/mms/model/ImageModel;->mWidth:I

    .line 273
    .local v2, outWidth:I
    iget v1, p0, Lcom/android/mms/model/ImageModel;->mHeight:I

    .line 275
    .local v1, outHeight:I
    const/4 v3, 0x1

    .line 277
    .local v3, s:I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIEI()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 278
    if-le v2, v1, :cond_0

    move v0, v2

    .line 279
    .local v0, currentLength:I
    :goto_0
    div-int v4, v0, v3

    if-le v4, p1, :cond_3

    .line 280
    mul-int/lit8 v3, v3, 0x2

    goto :goto_0

    .end local v0           #currentLength:I
    :cond_0
    move v0, v1

    .line 278
    goto :goto_0

    .line 283
    :cond_1
    :goto_1
    div-int v4, v2, v3

    if-gt v4, p1, :cond_2

    div-int v4, v1, v3

    if-le v4, p1, :cond_3

    .line 284
    :cond_2
    mul-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 287
    :cond_3
    const-string v4, "Mms:app"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 288
    const-string v4, "Mms/image"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createThumbnailBitmap: scale="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", w="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    div-int v6, v2, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", h="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    div-int v6, v1, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    :cond_4
    invoke-direct {p0, p2, v3}, Lcom/android/mms/model/ImageModel;->decodeBitmap(Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v4

    return-object v4
.end method

.method private decodeBitmap(Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "uri"
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/OutOfMemoryError;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 295
    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 296
    .local v10, options:Landroid/graphics/BitmapFactory$Options;
    iput p2, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 298
    const/4 v9, 0x0

    .line 300
    .local v9, input:Ljava/io/InputStream;
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v9

    .line 301
    const/4 v1, 0x0

    invoke-static {v9, v1, v10}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 302
    .local v0, b:Landroid/graphics/Bitmap;
    iget v1, p0, Lcom/android/mms/model/ImageModel;->mRotate:I

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 303
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 304
    .local v5, m:Landroid/graphics/Matrix;
    iget v1, p0, Lcom/android/mms/model/ImageModel;->mRotate:I

    int-to-float v1, v1

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 305
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 315
    .end local v5           #m:Landroid/graphics/Matrix;
    :cond_0
    if-eqz v9, :cond_1

    .line 317
    :try_start_1
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 320
    .end local v0           #b:Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    return-object v0

    .line 318
    .restart local v0       #b:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v7

    .line 319
    .local v7, e:Ljava/io/IOException;
    const-string v1, "Mms/image"

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 308
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v7           #e:Ljava/io/IOException;
    :catch_1
    move-exception v7

    .line 309
    .local v7, e:Ljava/io/FileNotFoundException;
    :try_start_2
    const-string v1, "Mms/image"

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 315
    if-eqz v9, :cond_2

    .line 317
    :try_start_3
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .end local v7           #e:Ljava/io/FileNotFoundException;
    :cond_2
    :goto_1
    move-object v0, v11

    .line 320
    goto :goto_0

    .line 318
    .restart local v7       #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v7

    .line 319
    .local v7, e:Ljava/io/IOException;
    const-string v1, "Mms/image"

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 311
    .end local v7           #e:Ljava/io/IOException;
    :catch_3
    move-exception v8

    .line 313
    .local v8, ex:Ljava/lang/OutOfMemoryError;
    :try_start_4
    throw v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 315
    .end local v8           #ex:Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v1

    if-eqz v9, :cond_3

    .line 317
    :try_start_5
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 320
    :cond_3
    :goto_2
    throw v1

    .line 318
    :catch_4
    move-exception v7

    .line 319
    .restart local v7       #e:Ljava/io/IOException;
    const-string v2, "Mms/image"

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private decodeImageBounds()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    new-instance v0, Lcom/android/mms/ui/UriImage;

    iget-object v1, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/mms/model/MediaModel;->getUriWithDrmCheck()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/UriImage;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 130
    .local v0, uriImage:Lcom/android/mms/ui/UriImage;
    invoke-virtual {v0}, Lcom/android/mms/ui/UriImage;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/android/mms/model/ImageModel;->mWidth:I

    .line 131
    invoke-virtual {v0}, Lcom/android/mms/ui/UriImage;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/android/mms/model/ImageModel;->mHeight:I

    .line 132
    invoke-virtual {v0}, Lcom/android/mms/ui/UriImage;->getRotate()I

    move-result v1

    iput v1, p0, Lcom/android/mms/model/ImageModel;->mRotate:I

    .line 137
    return-void
.end method

.method private initModelFromUri(Landroid/net/Uri;)V
    .locals 3
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 106
    new-instance v0, Lcom/android/mms/ui/UriImage;

    iget-object v1, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/mms/ui/UriImage;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 108
    .local v0, uriImage:Lcom/android/mms/ui/UriImage;
    invoke-virtual {v0}, Lcom/android/mms/ui/UriImage;->getContentType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    .line 109
    iget-object v1, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    new-instance v1, Lcom/google/android/mms/MmsException;

    const-string v2, "Type of media is unknown."

    invoke-direct {v1, v2}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 112
    :cond_0
    invoke-virtual {v0}, Lcom/android/mms/ui/UriImage;->getSrc()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/model/MediaModel;->mSrc:Ljava/lang/String;

    .line 113
    invoke-virtual {v0}, Lcom/android/mms/ui/UriImage;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/android/mms/model/ImageModel;->mWidth:I

    .line 114
    invoke-virtual {v0}, Lcom/android/mms/ui/UriImage;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/android/mms/model/ImageModel;->mHeight:I

    .line 115
    invoke-virtual {v0}, Lcom/android/mms/ui/UriImage;->getRotate()I

    move-result v1

    iput v1, p0, Lcom/android/mms/model/ImageModel;->mRotate:I

    .line 123
    invoke-virtual {v0}, Lcom/android/mms/ui/UriImage;->getSrc()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/drm/DrmWrapper;->IsDrmFileByExt(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/mms/model/ImageModel;->mHeight:I

    if-gez v1, :cond_1

    iget v1, p0, Lcom/android/mms/model/ImageModel;->mWidth:I

    if-gez v1, :cond_1

    .line 124
    new-instance v1, Lcom/google/android/mms/MmsException;

    const-string v2, "Decode failed, so donot attach file"

    invoke-direct {v1, v2}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 126
    :cond_1
    return-void
.end method

.method private internalGetBitmap(Landroid/net/Uri;Z)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "uri"
    .parameter "thumbnail"

    .prologue
    .line 217
    iget-object v2, p0, Lcom/android/mms/model/ImageModel;->mBitmapCache:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 218
    .local v0, bm:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 220
    if-eqz p2, :cond_3

    .line 221
    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIEI()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 222
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v1, v2, 0x4

    .line 223
    .local v1, resizingWidth:I
    iget v2, p0, Lcom/android/mms/model/ImageModel;->mWidth:I

    mul-int/lit8 v2, v2, 0x2

    if-le v2, v1, :cond_1

    .line 224
    invoke-direct {p0, v1, p1}, Lcom/android/mms/model/ImageModel;->createThumbnailBitmap(ILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 235
    .end local v1           #resizingWidth:I
    :goto_0
    if-eqz v0, :cond_0

    .line 236
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/android/mms/model/ImageModel;->mBitmapCache:Ljava/lang/ref/SoftReference;

    .line 243
    :cond_0
    :goto_1
    return-object v0

    .line 226
    .restart local v1       #resizingWidth:I
    :cond_1
    iget v2, p0, Lcom/android/mms/model/ImageModel;->mWidth:I

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {p0, v2, p1}, Lcom/android/mms/model/ImageModel;->createThumbnailBitmap(ILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 229
    .end local v1           #resizingWidth:I
    :cond_2
    sget v2, Lcom/android/mms/model/ImageModel;->THUMBNAIL_BOUNDS_LIMIT:I

    invoke-direct {p0, v2, p1}, Lcom/android/mms/model/ImageModel;->createThumbnailBitmap(ILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 232
    :cond_3
    sget v2, Lcom/android/mms/model/ImageModel;->SLIDESHOW_BOUNDS_LIMIT:I

    invoke-direct {p0, v2, p1}, Lcom/android/mms/model/ImageModel;->createBitmap(ILandroid/net/Uri;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 238
    :catch_0
    move-exception v2

    goto :goto_1
.end method


# virtual methods
.method public checkContentRestriction()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 180
    invoke-static {}, Lcom/android/mms/model/ContentRestrictionFactory;->getContentRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v0

    .line 181
    .local v0, cr:Lcom/android/mms/model/ContentRestriction;
    iget-object v1, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/mms/model/ContentRestriction;->checkImageContentType(Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public checkCreationMode()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 186
    invoke-static {}, Lcom/android/mms/model/ContentRestrictionFactory;->getContentRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v0

    .line 187
    .local v0, cr:Lcom/android/mms/model/ContentRestriction;
    iget-object v1, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/model/CarrierContentRestriction;->getMmsCreationMode(Landroid/content/Context;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/mms/model/ContentRestriction;->checkImageCreationMode(Ljava/lang/String;I)V

    .line 190
    iget v1, p0, Lcom/android/mms/model/ImageModel;->mWidth:I

    iget v2, p0, Lcom/android/mms/model/ImageModel;->mHeight:I

    invoke-interface {v0, v1, v2}, Lcom/android/mms/model/ContentRestriction;->checkResolution(II)V

    .line 192
    iget v1, p0, Lcom/android/mms/model/ImageModel;->mRotate:I

    invoke-interface {v0, v1}, Lcom/android/mms/model/ContentRestriction;->checkImageRotation(I)V

    .line 194
    return-void
.end method

.method public checkResolution()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 198
    invoke-static {}, Lcom/android/mms/model/ContentRestrictionFactory;->getContentRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v0

    .line 199
    .local v0, cr:Lcom/android/mms/model/ContentRestriction;
    iget v1, p0, Lcom/android/mms/model/ImageModel;->mWidth:I

    iget v2, p0, Lcom/android/mms/model/ImageModel;->mHeight:I

    invoke-interface {v0, v1, v2}, Lcom/android/mms/model/ContentRestriction;->checkResolution(II)V

    .line 200
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/mms/model/ImageModel;->internalGetBitmap(Landroid/net/Uri;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBitmapWithDrmCheck()Landroid/graphics/Bitmap;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/android/mms/model/MediaModel;->getUriWithDrmCheck()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/mms/model/ImageModel;->internalGetBitmap(Landroid/net/Uri;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 327
    iget v0, p0, Lcom/android/mms/model/MediaModel;->mDuration:I

    if-nez v0, :cond_0

    .line 328
    invoke-super {p0}, Lcom/android/mms/model/MediaModel;->getDuration()I

    move-result v0

    .line 330
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/mms/model/MediaModel;->mDuration:I

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/android/mms/model/ImageModel;->mHeight:I

    return v0
.end method

.method public getMediaResizable()Z
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    const-string v1, "image/gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    const/4 v0, 0x0

    .line 340
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getMediaResizableForRetry()Z
    .locals 2

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    const-string v1, "image/jpg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    const-string v1, "image/jpeg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 380
    :cond_0
    const/4 v0, 0x1

    .line 382
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getThumbnailBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/model/ImageModel;->internalGetBitmap(Landroid/net/Uri;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/android/mms/model/ImageModel;->mWidth:I

    return v0
.end method

.method public handleEvent(Lorg/w3c/dom/events/Event;)V
    .locals 5
    .parameter "evt"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 147
    sget-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->NO_ACTIVE_ACTION:Lcom/android/mms/model/MediaModel$MediaAction;

    .line 148
    .local v0, action:Lcom/android/mms/model/MediaModel$MediaAction;
    invoke-interface {p1}, Lorg/w3c/dom/events/Event;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SmilMediaStart"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    sget-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->START:Lcom/android/mms/model/MediaModel$MediaAction;

    .line 150
    iput-boolean v3, p0, Lcom/android/mms/model/RegionMediaModel;->mVisible:Z

    .line 163
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/mms/model/MediaModel;->appendAction(Lcom/android/mms/model/MediaModel$MediaAction;)V

    .line 164
    invoke-virtual {p0, v4}, Lcom/android/mms/model/Model;->notifyModelChanged(Z)V

    .line 165
    return-void

    .line 151
    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/events/Event;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SmilMediaPause"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 152
    sget-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->PAUSE:Lcom/android/mms/model/MediaModel$MediaAction;

    .line 153
    iput-boolean v3, p0, Lcom/android/mms/model/RegionMediaModel;->mVisible:Z

    goto :goto_0

    .line 154
    :cond_2
    invoke-interface {p1}, Lorg/w3c/dom/events/Event;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SmilMediaEnd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 155
    sget-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->STOP:Lcom/android/mms/model/MediaModel$MediaAction;

    .line 156
    iget-short v1, p0, Lcom/android/mms/model/MediaModel;->mFill:S

    if-eq v1, v3, :cond_0

    .line 157
    iput-boolean v4, p0, Lcom/android/mms/model/RegionMediaModel;->mVisible:Z

    goto :goto_0

    .line 159
    :cond_3
    iget-short v1, p0, Lcom/android/mms/model/MediaModel;->mFill:S

    if-eq v1, v3, :cond_0

    .line 160
    iput-boolean v4, p0, Lcom/android/mms/model/RegionMediaModel;->mVisible:Z

    goto :goto_0
.end method

.method protected resizeMedia(IJ)V
    .locals 7
    .parameter "byteLimit"
    .parameter "messageId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 346
    new-instance v0, Lcom/android/mms/ui/UriImage;

    iget-object v4, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lcom/android/mms/ui/UriImage;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 347
    .local v0, image:Lcom/android/mms/ui/UriImage;
    if-nez v0, :cond_0

    .line 348
    new-instance v4, Lcom/android/mms/ExceedMessageSizeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No room to resize picture: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/mms/ExceedMessageSizeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 350
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageWidth()I

    move-result v4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageHeight()I

    move-result v5

    invoke-virtual {v0, v4, v5, p1}, Lcom/android/mms/ui/UriImage;->getResizedImageAsPart(III)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v2

    .line 353
    .local v2, part:Lcom/google/android/mms/pdu/PduPart;
    if-nez v2, :cond_1

    .line 354
    new-instance v4, Lcom/android/mms/ExceedMessageSizeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not enough memory to turn image into part: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/mms/ExceedMessageSizeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 366
    :cond_1
    iget-object v4, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v3

    .line 367
    .local v3, persister:Lcom/google/android/mms/pdu/PduPersister;
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v4

    array-length v4, v4

    iput v4, p0, Lcom/android/mms/model/MediaModel;->mSize:I

    .line 368
    invoke-virtual {v3, v2, p2, p3}, Lcom/google/android/mms/pdu/PduPersister;->persistPart(Lcom/google/android/mms/pdu/PduPart;J)Landroid/net/Uri;

    move-result-object v1

    .line 369
    .local v1, newUri:Landroid/net/Uri;
    invoke-virtual {p0, v1}, Lcom/android/mms/model/MediaModel;->setUri(Landroid/net/Uri;)V

    .line 370
    return-void
.end method

.method public setResizeImageSize(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 374
    iput p1, p0, Lcom/android/mms/model/MediaModel;->mSize:I

    .line 375
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lcom/android/mms/model/MediaModel$MediaAction;->STOP:Lcom/android/mms/model/MediaModel$MediaAction;

    invoke-virtual {p0, v0}, Lcom/android/mms/model/MediaModel;->appendAction(Lcom/android/mms/model/MediaModel$MediaAction;)V

    .line 142
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mms/model/Model;->notifyModelChanged(Z)V

    .line 143
    return-void
.end method
