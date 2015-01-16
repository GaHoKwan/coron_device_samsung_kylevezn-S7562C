.class public Landroid/app/enterprise/lso/LSOUtils;
.super Ljava/lang/Object;
.source "LSOUtils.java"


# static fields
.field private static final DEFAULT_COMPRESS_QUALITY:I = 0x64

.field private static MAX_IMAGE_SIZE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "LSO"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    sput v0, Landroid/app/enterprise/lso/LSOUtils;->MAX_IMAGE_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertDipToPixel(Landroid/content/Context;I)I
    .locals 3
    .parameter "context"
    .parameter "sizeInDip"

    .prologue
    .line 509
    const/4 v0, 0x1

    int-to-float v1, p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public static convertImageFormat(Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;I)Z
    .locals 2
    .parameter "sourcePath"
    .parameter "format"
    .parameter "destPath"
    .parameter "maxSize"

    .prologue
    .line 344
    const/4 v0, 0x0

    .line 345
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-lez p3, :cond_0

    .line 346
    invoke-static {p0, p3}, Landroid/app/enterprise/lso/LSOUtils;->getBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 350
    :goto_0
    invoke-static {v0, p1, p2}, Landroid/app/enterprise/lso/LSOUtils;->saveBitmapToFile(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 348
    :cond_0
    invoke-static {p0}, Landroid/app/enterprise/lso/LSOUtils;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static convertImageFormat(Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;Landroid/graphics/Point;)Z
    .locals 3
    .parameter "sourcePath"
    .parameter "format"
    .parameter "destPath"
    .parameter "pt"

    .prologue
    .line 355
    const/4 v0, 0x0

    .line 356
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz p3, :cond_0

    .line 357
    iget v1, p3, Landroid/graphics/Point;->x:I

    iget v2, p3, Landroid/graphics/Point;->y:I

    invoke-static {p0, v1, v2}, Landroid/app/enterprise/lso/LSOUtils;->getBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 361
    :goto_0
    invoke-static {v0, p1, p2}, Landroid/app/enterprise/lso/LSOUtils;->saveBitmapToFile(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 359
    :cond_0
    invoke-static {p0}, Landroid/app/enterprise/lso/LSOUtils;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .parameter "srcFile"
    .parameter "destFile"

    .prologue
    .line 416
    const/4 v8, 0x0

    .line 418
    .local v8, result:Z
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 419
    .local v3, f1:Ljava/io/File;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 420
    .local v4, f2:Ljava/io/File;
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 421
    .local v5, in:Ljava/io/InputStream;
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 423
    .local v7, out:Ljava/io/OutputStream;
    const/16 v9, 0x400

    new-array v0, v9, [B

    .line 425
    .local v0, buf:[B
    :goto_0
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .local v6, len:I
    if-lez v6, :cond_0

    .line 426
    const/4 v9, 0x0

    invoke-virtual {v7, v0, v9, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 432
    .end local v0           #buf:[B
    .end local v3           #f1:Ljava/io/File;
    .end local v4           #f2:Ljava/io/File;
    .end local v5           #in:Ljava/io/InputStream;
    .end local v6           #len:I
    .end local v7           #out:Ljava/io/OutputStream;
    :catch_0
    move-exception v2

    .line 433
    .local v2, ex:Ljava/io/FileNotFoundException;
    const-string v9, "LSO"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " in the specified directory."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    .end local v2           #ex:Ljava/io/FileNotFoundException;
    :goto_1
    return v8

    .line 428
    .restart local v0       #buf:[B
    .restart local v3       #f1:Ljava/io/File;
    .restart local v4       #f2:Ljava/io/File;
    .restart local v5       #in:Ljava/io/InputStream;
    .restart local v6       #len:I
    .restart local v7       #out:Ljava/io/OutputStream;
    :cond_0
    :try_start_1
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 429
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 430
    const/4 v8, 0x1

    .line 431
    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v10}, Ljava/io/File;->setReadable(ZZ)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 434
    .end local v0           #buf:[B
    .end local v3           #f1:Ljava/io/File;
    .end local v4           #f2:Ljava/io/File;
    .end local v5           #in:Ljava/io/InputStream;
    .end local v6           #len:I
    .end local v7           #out:Ljava/io/OutputStream;
    :catch_1
    move-exception v1

    .line 435
    .local v1, e:Ljava/lang/Exception;
    const-string v9, "LSO"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static createRippleImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "ori"

    .prologue
    .line 105
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 106
    .local v8, width:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 107
    .local v2, height:I
    const/4 v3, 0x0

    .line 108
    .local v3, left:F
    const/4 v7, 0x0

    .line 109
    .local v7, top:F
    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 111
    .local v5, size:I
    if-ge v8, v2, :cond_0

    .line 112
    sub-int v9, v2, v8

    div-int/lit8 v9, v9, 0x2

    int-to-float v3, v9

    .line 117
    :goto_0
    const/4 v6, 0x0

    .line 119
    .local v6, target:Landroid/graphics/Bitmap;
    :try_start_0
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v5, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 120
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 121
    .local v0, canvas:Landroid/graphics/Canvas;
    const/high16 v9, -0x100

    invoke-virtual {v0, v9}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 122
    new-instance v4, Landroid/graphics/Paint;

    const/4 v9, 0x2

    invoke-direct {v4, v9}, Landroid/graphics/Paint;-><init>(I)V

    .line 123
    .local v4, paint:Landroid/graphics/Paint;
    invoke-virtual {v0, p0, v3, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .end local v0           #canvas:Landroid/graphics/Canvas;
    .end local v4           #paint:Landroid/graphics/Paint;
    :goto_1
    return-object v6

    .line 114
    .end local v6           #target:Landroid/graphics/Bitmap;
    :cond_0
    sub-int v9, v8, v2

    div-int/lit8 v9, v9, 0x2

    int-to-float v7, v9

    goto :goto_0

    .line 124
    .restart local v6       #target:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 125
    .local v1, e:Ljava/lang/Exception;
    const-string v9, "LSO"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "createRippleImage: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static createRippleImage(Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;)Z
    .locals 2
    .parameter "sourceImage"
    .parameter "format"
    .parameter "destImage"

    .prologue
    .line 100
    invoke-static {p0}, Landroid/app/enterprise/lso/LSOUtils;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Landroid/app/enterprise/lso/LSOUtils;->createRippleImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 101
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, p1, p2}, Landroid/app/enterprise/lso/LSOUtils;->saveBitmapToFile(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private static decodeFile(Ljava/io/File;II)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "f"
    .parameter "maxWidth"
    .parameter "maxHeight"

    .prologue
    .line 286
    move v3, p1

    .line 287
    .local v3, maxSize:I
    if-le v3, p2, :cond_0

    .line 288
    move v3, p2

    .line 291
    :cond_0
    const/4 v0, 0x0

    .line 294
    .local v0, b:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {p0}, Landroid/app/enterprise/lso/LSOUtils;->getBitmapSize(Ljava/io/File;)Landroid/graphics/Point;

    move-result-object v5

    .line 296
    .local v5, pt:Landroid/graphics/Point;
    const/4 v6, 0x1

    .line 297
    .local v6, scale:I
    iget v7, v5, Landroid/graphics/Point;->y:I

    if-le v7, p2, :cond_2

    iget v7, v5, Landroid/graphics/Point;->x:I

    if-le v7, p1, :cond_2

    .line 298
    const-wide/high16 v7, 0x4000

    int-to-double v9, v3

    iget v11, v5, Landroid/graphics/Point;->y:I

    iget v12, v5, Landroid/graphics/Point;->x:I

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    int-to-double v11, v11

    div-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->log(D)D

    move-result-wide v9

    const-wide/high16 v11, 0x3fe0

    invoke-static {v11, v12}, Ljava/lang/Math;->log(D)D

    move-result-wide v11

    div-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    long-to-int v9, v9

    int-to-double v9, v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-int v6, v7

    .line 311
    :cond_1
    :goto_0
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 312
    .local v4, o2:Landroid/graphics/BitmapFactory$Options;
    iput v6, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 313
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 314
    .local v2, fis:Ljava/io/FileInputStream;
    const/4 v7, 0x0

    invoke-static {v2, v7, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 315
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 319
    .end local v2           #fis:Ljava/io/FileInputStream;
    .end local v4           #o2:Landroid/graphics/BitmapFactory$Options;
    .end local v5           #pt:Landroid/graphics/Point;
    .end local v6           #scale:I
    :goto_1
    return-object v0

    .line 302
    .restart local v5       #pt:Landroid/graphics/Point;
    .restart local v6       #scale:I
    :cond_2
    iget v7, v5, Landroid/graphics/Point;->y:I

    if-le v7, p2, :cond_3

    .line 303
    const-wide/high16 v7, 0x4000

    int-to-double v9, p2

    iget v11, v5, Landroid/graphics/Point;->y:I

    int-to-double v11, v11

    div-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->log(D)D

    move-result-wide v9

    const-wide/high16 v11, 0x3fe0

    invoke-static {v11, v12}, Ljava/lang/Math;->log(D)D

    move-result-wide v11

    div-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    long-to-int v9, v9

    int-to-double v9, v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-int v6, v7

    goto :goto_0

    .line 305
    :cond_3
    iget v7, v5, Landroid/graphics/Point;->x:I

    if-le v7, p1, :cond_1

    .line 306
    const-wide/high16 v7, 0x4000

    int-to-double v9, p1

    iget v11, v5, Landroid/graphics/Point;->x:I

    int-to-double v11, v11

    div-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->log(D)D

    move-result-wide v9

    const-wide/high16 v11, 0x3fe0

    invoke-static {v11, v12}, Ljava/lang/Math;->log(D)D

    move-result-wide v11

    div-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    long-to-int v9, v9

    int-to-double v9, v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v7

    double-to-int v6, v7

    goto :goto_0

    .line 316
    .end local v5           #pt:Landroid/graphics/Point;
    .end local v6           #scale:I
    :catch_0
    move-exception v1

    .line 317
    .local v1, e:Ljava/io/IOException;
    const-string v7, "LSO"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "decodeFile: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static deleteFile(Ljava/lang/String;)V
    .locals 4
    .parameter "fileName"

    .prologue
    .line 443
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 444
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 445
    const-string v2, "LSO"

    const-string v3, "File deleted."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    .end local v1           #file:Ljava/io/File;
    :goto_0
    return-void

    .line 447
    .restart local v1       #file:Ljava/io/File;
    :cond_0
    const-string v2, "LSO"

    const-string v3, "Delete operation is failed."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 449
    .end local v1           #file:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 450
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "LSO"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "imagePath"

    .prologue
    .line 133
    if-nez p0, :cond_0

    .line 134
    const/4 v0, 0x0

    .line 149
    :goto_0
    return-object v0

    .line 137
    :cond_0
    const/4 v0, 0x0

    .line 139
    .local v0, bmp:Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 140
    .local v2, imgFile:Ljava/io/File;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 141
    const-string v3, "LSO"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Image found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 144
    :cond_1
    const-string v3, "LSO"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Image not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 146
    .end local v2           #imgFile:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 147
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "LSO"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBitmap: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "imagePath"
    .parameter "maxSize"

    .prologue
    .line 154
    if-nez p0, :cond_0

    .line 155
    const/4 v0, 0x0

    .line 170
    :goto_0
    return-object v0

    .line 158
    :cond_0
    const/4 v0, 0x0

    .line 160
    .local v0, bmp:Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 161
    .local v2, imgFile:Ljava/io/File;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 162
    const-string v3, "LSO"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Image found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-static {v2, p1, p1}, Landroid/app/enterprise/lso/LSOUtils;->decodeFile(Ljava/io/File;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 165
    :cond_1
    const-string v3, "LSO"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Image not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 167
    .end local v2           #imgFile:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 168
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "LSO"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBitmap: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "imagePath"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 195
    move v5, p1

    .line 196
    .local v5, maxSize:I
    if-le p2, v5, :cond_0

    .line 197
    move v5, p2

    .line 200
    :cond_0
    invoke-static {p0, v5}, Landroid/app/enterprise/lso/LSOUtils;->getBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 201
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-nez v0, :cond_2

    .line 202
    const/4 v0, 0x0

    .line 251
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    return-object v0

    .line 205
    .restart local v0       #bmp:Landroid/graphics/Bitmap;
    :cond_2
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 206
    .local v7, src:Landroid/graphics/Rect;
    const/4 v10, 0x0

    iput v10, v7, Landroid/graphics/Rect;->top:I

    iput v10, v7, Landroid/graphics/Rect;->left:I

    .line 207
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    iput v10, v7, Landroid/graphics/Rect;->right:I

    .line 208
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    iput v10, v7, Landroid/graphics/Rect;->bottom:I

    .line 210
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 211
    .local v2, dest:Landroid/graphics/RectF;
    const/4 v10, 0x0

    iput v10, v2, Landroid/graphics/RectF;->top:F

    iput v10, v2, Landroid/graphics/RectF;->left:F

    .line 212
    int-to-float v10, p2

    iput v10, v2, Landroid/graphics/RectF;->bottom:F

    .line 213
    int-to-float v10, p1

    iput v10, v2, Landroid/graphics/RectF;->right:F

    .line 215
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v10

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v11

    float-to-int v11, v11

    sub-int v9, v10, v11

    .line 216
    .local v9, widthDiff:I
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v10

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v11

    float-to-int v11, v11

    sub-int v4, v10, v11

    .line 218
    .local v4, heightDiff:I
    if-gtz v9, :cond_3

    if-lez v4, :cond_1

    .line 224
    :cond_3
    if-lez v9, :cond_4

    .line 225
    iget v10, v7, Landroid/graphics/Rect;->left:I

    div-int/lit8 v11, v9, 0x2

    add-int/2addr v10, v11

    iput v10, v7, Landroid/graphics/Rect;->left:I

    .line 226
    iget v10, v7, Landroid/graphics/Rect;->right:I

    div-int/lit8 v11, v9, 0x2

    sub-int/2addr v10, v11

    iput v10, v7, Landroid/graphics/Rect;->right:I

    .line 232
    :goto_1
    if-lez v4, :cond_5

    .line 233
    iget v10, v7, Landroid/graphics/Rect;->top:I

    div-int/lit8 v11, v4, 0x2

    add-int/2addr v10, v11

    iput v10, v7, Landroid/graphics/Rect;->top:I

    .line 234
    iget v10, v7, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v11, v4, 0x2

    sub-int/2addr v10, v11

    iput v10, v7, Landroid/graphics/Rect;->bottom:I

    .line 240
    :goto_2
    const/4 v8, 0x0

    .line 242
    .local v8, target:Landroid/graphics/Bitmap;
    :try_start_0
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 243
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 244
    .local v1, canvas:Landroid/graphics/Canvas;
    const/high16 v10, -0x100

    invoke-virtual {v1, v10}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 245
    new-instance v6, Landroid/graphics/Paint;

    const/4 v10, 0x2

    invoke-direct {v6, v10}, Landroid/graphics/Paint;-><init>(I)V

    .line 246
    .local v6, paint:Landroid/graphics/Paint;
    invoke-virtual {v1, v0, v7, v2, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #canvas:Landroid/graphics/Canvas;
    .end local v6           #paint:Landroid/graphics/Paint;
    :goto_3
    move-object v0, v8

    .line 251
    goto :goto_0

    .line 228
    .end local v8           #target:Landroid/graphics/Bitmap;
    :cond_4
    iget v10, v2, Landroid/graphics/RectF;->left:F

    div-int/lit8 v11, v9, 0x2

    int-to-float v11, v11

    sub-float/2addr v10, v11

    iput v10, v2, Landroid/graphics/RectF;->left:F

    .line 229
    iget v10, v2, Landroid/graphics/RectF;->right:F

    div-int/lit8 v11, v9, 0x2

    int-to-float v11, v11

    add-float/2addr v10, v11

    iput v10, v2, Landroid/graphics/RectF;->right:F

    goto :goto_1

    .line 236
    :cond_5
    iget v10, v2, Landroid/graphics/RectF;->top:F

    div-int/lit8 v11, v4, 0x2

    int-to-float v11, v11

    sub-float/2addr v10, v11

    iput v10, v2, Landroid/graphics/RectF;->top:F

    .line 237
    iget v10, v2, Landroid/graphics/RectF;->bottom:F

    div-int/lit8 v11, v4, 0x2

    int-to-float v11, v11

    add-float/2addr v10, v11

    iput v10, v2, Landroid/graphics/RectF;->bottom:F

    goto :goto_2

    .line 247
    .restart local v8       #target:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v3

    .line 248
    .local v3, e:Ljava/lang/Exception;
    const-string v10, "LSO"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "createRippleImage: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private static getBitmapSize(Ljava/io/File;)Landroid/graphics/Point;
    .locals 7
    .parameter "f"

    .prologue
    .line 266
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 269
    .local v3, pt:Landroid/graphics/Point;
    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 270
    .local v2, o:Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 272
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 273
    .local v1, fis:Ljava/io/FileInputStream;
    const/4 v4, 0x0

    invoke-static {v1, v4, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 274
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 276
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v4, v3, Landroid/graphics/Point;->x:I

    .line 277
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v4, v3, Landroid/graphics/Point;->y:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    .end local v1           #fis:Ljava/io/FileInputStream;
    .end local v2           #o:Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-object v3

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, e:Ljava/io/IOException;
    const-string v4, "LSO"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "decodeFile: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getBitmapSize(Ljava/lang/String;)Landroid/graphics/Point;
    .locals 5
    .parameter "imagePath"

    .prologue
    .line 255
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 256
    .local v1, pt:Landroid/graphics/Point;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 257
    .local v0, imgFile:Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 258
    const-string v2, "LSO"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Image found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-static {v0}, Landroid/app/enterprise/lso/LSOUtils;->getBitmapSize(Ljava/io/File;)Landroid/graphics/Point;

    move-result-object v1

    .line 262
    :cond_0
    return-object v1
.end method

.method public static getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "imagePath"

    .prologue
    .line 480
    if-nez p0, :cond_0

    .line 481
    const/4 v0, 0x0

    .line 496
    :goto_0
    return-object v0

    .line 484
    :cond_0
    const/4 v0, 0x0

    .line 486
    .local v0, d:Landroid/graphics/drawable/Drawable;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 487
    .local v2, imgFile:Ljava/io/File;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 488
    const-string v3, "LSO"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Image found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 491
    :cond_1
    const-string v3, "LSO"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Image not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 493
    .end local v2           #imgFile:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 494
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "LSO"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDrawable:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getMaxBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "imagePath"
    .parameter "maxWidth"
    .parameter "maxHeight"

    .prologue
    .line 175
    if-nez p0, :cond_0

    .line 176
    const/4 v0, 0x0

    .line 191
    :goto_0
    return-object v0

    .line 179
    :cond_0
    const/4 v0, 0x0

    .line 181
    .local v0, bmp:Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 182
    .local v2, imgFile:Ljava/io/File;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 183
    const-string v3, "LSO"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Image found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-static {v2, p1, p2}, Landroid/app/enterprise/lso/LSOUtils;->decodeFile(Ljava/io/File;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 186
    :cond_1
    const-string v3, "LSO"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Image not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 188
    .end local v2           #imgFile:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 189
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "LSO"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBitmap: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getMaxImageSize(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 81
    sget v2, Landroid/app/enterprise/lso/LSOUtils;->MAX_IMAGE_SIZE:I

    if-lez v2, :cond_0

    .line 82
    sget v2, Landroid/app/enterprise/lso/LSOUtils;->MAX_IMAGE_SIZE:I

    .line 95
    :goto_0
    return v2

    .line 85
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 86
    .local v0, pt:Landroid/graphics/Point;
    const-string v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 87
    .local v1, winMgr:Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 89
    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    if-le v2, v3, :cond_1

    .line 90
    iget v2, v0, Landroid/graphics/Point;->x:I

    sput v2, Landroid/app/enterprise/lso/LSOUtils;->MAX_IMAGE_SIZE:I

    .line 95
    :goto_1
    sget v2, Landroid/app/enterprise/lso/LSOUtils;->MAX_IMAGE_SIZE:I

    goto :goto_0

    .line 92
    :cond_1
    iget v2, v0, Landroid/graphics/Point;->y:I

    sput v2, Landroid/app/enterprise/lso/LSOUtils;->MAX_IMAGE_SIZE:I

    goto :goto_1
.end method

.method public static getResourceDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "context"
    .parameter "resId"

    .prologue
    .line 514
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 515
    .local v0, res:Landroid/content/res/Resources;
    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 516
    :cond_0
    const/4 v1, 0x0

    .line 519
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public static getResourceString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "resId"

    .prologue
    .line 500
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 501
    .local v0, res:Landroid/content/res/Resources;
    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 502
    :cond_0
    const/4 v1, 0x0

    .line 505
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static isTablet()Z
    .locals 2

    .prologue
    .line 75
    const-string v1, "ro.build.characteristics"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, deviceType:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static mkDir(Ljava/lang/String;)Z
    .locals 6
    .parameter "dirPath"

    .prologue
    .line 455
    const/4 v2, 0x0

    .line 457
    .local v2, result:Z
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 458
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 459
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v3

    if-nez v3, :cond_0

    .line 460
    const-string v3, "LSO"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to create directory: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    const/4 v2, 0x0

    .line 475
    .end local v0           #dir:Ljava/io/File;
    :goto_0
    return v2

    .line 463
    .restart local v0       #dir:Ljava/io/File;
    :cond_0
    const/4 v2, 0x1

    .line 464
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/io/File;->setReadable(Z)Z

    .line 465
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/io/File;->setWritable(Z)Z

    .line 466
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/io/File;->setExecutable(ZZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 472
    .end local v0           #dir:Ljava/io/File;
    :catch_0
    move-exception v1

    .line 473
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "LSO"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error creating directory "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 469
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #dir:Ljava/io/File;
    :cond_1
    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v3, v4}, Ljava/io/File;->setExecutable(ZZ)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 470
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static saveBitmapToFile(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/String;)Z
    .locals 7
    .parameter "bitmap"
    .parameter "format"
    .parameter "filePath"

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 366
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 368
    .local v0, candidate:Ljava/io/File;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v5

    if-nez v5, :cond_1

    .line 375
    :cond_0
    const-string v5, "LSO"

    const-string v6, "created file not exist: "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 397
    :goto_0
    return v3

    .line 369
    :catch_0
    move-exception v1

    .line 370
    .local v1, e:Ljava/io/IOException;
    const-string v5, "LSO"

    const-string v6, "fail to create new file: "

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v4

    .line 371
    goto :goto_0

    .line 379
    .end local v1           #e:Ljava/io/IOException;
    :cond_1
    invoke-virtual {v0, v6, v4}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 380
    invoke-virtual {v0, v6, v4}, Ljava/io/File;->setReadable(ZZ)Z

    .line 381
    invoke-virtual {v0, v6, v6}, Ljava/io/File;->setWritable(ZZ)Z

    .line 385
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 387
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_2
    invoke-static {p0, p1, v2}, Landroid/app/enterprise/lso/LSOUtils;->saveBitmapToOutputStream(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/io/OutputStream;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    .line 389
    .local v3, result:Z
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 391
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .end local v3           #result:Z
    :catch_1
    move-exception v1

    .line 392
    .restart local v1       #e:Ljava/io/IOException;
    const-string v5, "LSO"

    const-string v6, "fail to save image: "

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 393
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move v3, v4

    .line 394
    goto :goto_0

    .line 389
    .end local v1           #e:Ljava/io/IOException;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v5

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    throw v5
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
.end method

.method public static saveBitmapToOutputStream(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/io/OutputStream;)Z
    .locals 3
    .parameter "bitmap"
    .parameter "format"
    .parameter "os"

    .prologue
    .line 403
    const/4 v0, 0x0

    .line 406
    .local v0, result:Z
    const/16 v1, 0x64

    :try_start_0
    invoke-virtual {p0, p1, v1, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v0

    .line 407
    if-nez v0, :cond_0

    .line 408
    const-string v1, "LSO"

    const-string v2, "Bitmap write errror!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    :cond_0
    return v0

    .line 410
    :catchall_0
    move-exception v1

    throw v1
.end method

.method public static scaledBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "bmp"
    .parameter "maxWidth"
    .parameter "maxHeight"

    .prologue
    .line 324
    move v2, p1

    .line 325
    .local v2, maxSize:I
    if-le v2, p2, :cond_0

    .line 326
    move v2, p2

    .line 329
    :cond_0
    const/4 v0, 0x0

    .line 331
    .local v0, b:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-gt v3, p1, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-le v3, p2, :cond_2

    .line 332
    :cond_1
    const/4 v3, 0x0

    invoke-static {p0, p1, p2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 339
    :goto_0
    return-object v0

    .line 334
    :cond_2
    move-object v0, p0

    goto :goto_0

    .line 336
    :catch_0
    move-exception v1

    .line 337
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "LSO"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "decodeFile: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
