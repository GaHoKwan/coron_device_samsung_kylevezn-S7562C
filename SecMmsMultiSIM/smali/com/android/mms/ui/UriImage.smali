.class public Lcom/android/mms/ui/UriImage;
.super Ljava/lang/Object;
.source "UriImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/UriImage$1;,
        Lcom/android/mms/ui/UriImage$ResizeInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static IMAGE_EXTN_JPG:Ljava/lang/String; = null

.field private static IMAGE_EXTN_MAP:Ljava/lang/String; = null

.field private static final LOCAL_LOGV:Z = false

.field private static final NUMBER_OF_RESIZE_ATTEMPTS:I = 0x5

.field private static final SCHEME_CONTENT:Ljava/lang/String; = "content"

.field private static final SCHEME_FILE:Ljava/lang/String; = "file"

.field private static final TAG:Ljava/lang/String; = "Mms/image"


# instance fields
.field private mContentType:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mHeight:I

.field private mPath:Ljava/lang/String;

.field private mRotate:I

.field private mSrc:Ljava/lang/String;

.field private final mUri:Landroid/net/Uri;

.field private mWidth:I

.field private resizeInfo:Lcom/android/mms/ui/UriImage$ResizeInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-string v0, "map"

    sput-object v0, Lcom/android/mms/ui/UriImage;->IMAGE_EXTN_MAP:Ljava/lang/String;

    .line 55
    const-string v0, "jpg"

    sput-object v0, Lcom/android/mms/ui/UriImage;->IMAGE_EXTN_JPG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 8
    .parameter "context"
    .parameter "uri"

    .prologue
    const/16 v7, 0x5f

    const/4 v6, 0x1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/mms/ui/UriImage;->mRotate:I

    .line 366
    new-instance v3, Lcom/android/mms/ui/UriImage$ResizeInfo;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/mms/ui/UriImage$ResizeInfo;-><init>(Lcom/android/mms/ui/UriImage$1;)V

    iput-object v3, p0, Lcom/android/mms/ui/UriImage;->resizeInfo:Lcom/android/mms/ui/UriImage$ResizeInfo;

    .line 70
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 71
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 74
    :cond_1
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, scheme:Ljava/lang/String;
    const-string v3, "content"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/UriImage;->initFromContentUri(Landroid/content/Context;Landroid/net/Uri;)V

    .line 81
    :cond_2
    :goto_0
    invoke-static {p2, p1}, Lcom/android/mms/ui/UriImage;->getRotatedDegree(Landroid/net/Uri;Landroid/content/Context;)I

    move-result v3

    iput v3, p0, Lcom/android/mms/ui/UriImage;->mRotate:I

    .line 83
    iget-object v3, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    .line 85
    iget-object v3, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v6, :cond_3

    .line 86
    iget-object v3, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    .line 93
    :cond_3
    iget-object v3, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    const/16 v4, 0x20

    invoke-virtual {v3, v4, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    .line 96
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAttachmentFilenameEncoding()Z

    move-result v3

    if-nez v3, :cond_7

    .line 97
    iget-object v3, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 98
    .local v2, srcLen:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_7

    .line 99
    iget-object v3, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x21

    if-lt v3, v4, :cond_4

    iget-object v3, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x7e

    if-le v3, v4, :cond_5

    .line 100
    :cond_4
    iget-object v3, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    .line 98
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 77
    .end local v0           #i:I
    .end local v2           #srcLen:I
    :cond_6
    const-string v3, "file"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/UriImage;->initFromFile(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    .line 105
    :cond_7
    iget-object v3, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    sget-object v4, Lcom/android/mms/ui/UriImage;->IMAGE_EXTN_MAP:Ljava/lang/String;

    sget-object v5, Lcom/android/mms/ui/UriImage;->IMAGE_EXTN_JPG:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    .line 107
    iput-object p1, p0, Lcom/android/mms/ui/UriImage;->mContext:Landroid/content/Context;

    .line 108
    iput-object p2, p0, Lcom/android/mms/ui/UriImage;->mUri:Landroid/net/Uri;

    .line 110
    invoke-direct {p0}, Lcom/android/mms/ui/UriImage;->decodeBoundsInfo()V

    .line 111
    return-void
.end method

.method private decodeBoundsInfo()V
    .locals 6

    .prologue
    .line 192
    const/4 v1, 0x0

    .line 194
    .local v1, input:Ljava/io/InputStream;
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/ui/UriImage;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 195
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 196
    .local v2, opt:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 197
    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 198
    iget v3, p0, Lcom/android/mms/ui/UriImage;->mRotate:I

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/mms/ui/UriImage;->mRotate:I

    const/16 v4, 0xb4

    if-ne v3, v4, :cond_3

    .line 199
    :cond_0
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v3, p0, Lcom/android/mms/ui/UriImage;->mWidth:I

    .line 200
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v3, p0, Lcom/android/mms/ui/UriImage;->mHeight:I

    .line 205
    :goto_0
    iget-object v3, p0, Lcom/android/mms/ui/UriImage;->mContentType:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 206
    const-string v3, "Mms/image"

    const-string v4, "mContenType is null. so get from bitmapFactory options.outMimetype"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v3, v2, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/mms/ui/UriImage;->mContentType:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3

    .line 215
    :cond_1
    if-eqz v1, :cond_2

    .line 217
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 224
    .end local v2           #opt:Landroid/graphics/BitmapFactory$Options;
    :cond_2
    :goto_1
    return-void

    .line 202
    .restart local v2       #opt:Landroid/graphics/BitmapFactory$Options;
    :cond_3
    :try_start_2
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v3, p0, Lcom/android/mms/ui/UriImage;->mWidth:I

    .line 203
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v3, p0, Lcom/android/mms/ui/UriImage;->mHeight:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 209
    .end local v2           #opt:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v0

    .line 211
    .local v0, e:Ljava/io/FileNotFoundException;
    :try_start_3
    const-string v3, "Mms/image"

    const-string v4, "IOException caught while opening stream"

    invoke-static {v3, v4, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 215
    if-eqz v1, :cond_2

    .line 217
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 218
    :catch_1
    move-exception v0

    .line 220
    .local v0, e:Ljava/io/IOException;
    const-string v3, "Mms/image"

    const-string v4, "IOException caught while closing stream"

    invoke-static {v3, v4, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 218
    .end local v0           #e:Ljava/io/IOException;
    .restart local v2       #opt:Landroid/graphics/BitmapFactory$Options;
    :catch_2
    move-exception v0

    .line 220
    .restart local v0       #e:Ljava/io/IOException;
    const-string v3, "Mms/image"

    const-string v4, "IOException caught while closing stream"

    invoke-static {v3, v4, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 212
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #opt:Landroid/graphics/BitmapFactory$Options;
    :catch_3
    move-exception v0

    .line 213
    .local v0, e:Ljava/lang/OutOfMemoryError;
    :try_start_5
    const-string v3, "Mms/image"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OutOfMemoryError"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 215
    if-eqz v1, :cond_2

    .line 217
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    .line 218
    :catch_4
    move-exception v0

    .line 220
    .local v0, e:Ljava/io/IOException;
    const-string v3, "Mms/image"

    const-string v4, "IOException caught while closing stream"

    invoke-static {v3, v4, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 215
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_4

    .line 217
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 221
    :cond_4
    :goto_2
    throw v3

    .line 218
    :catch_5
    move-exception v0

    .line 220
    .restart local v0       #e:Ljava/io/IOException;
    const-string v4, "Mms/image"

    const-string v5, "IOException caught while closing stream"

    invoke-static {v4, v5, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private static getDegreeFromFile(Landroid/net/Uri;)I
    .locals 7
    .parameter "uri"

    .prologue
    .line 672
    const/4 v4, 0x0

    .line 675
    .local v4, path:Ljava/lang/String;
    const-string v5, "file"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 676
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 684
    :goto_0
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, v4}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 690
    .local v2, mExif:Landroid/media/ExifInterface;
    const/4 v0, 0x0

    .line 691
    .local v0, degree:I
    if-eqz v2, :cond_0

    .line 692
    const/4 v3, 0x0

    .line 694
    .local v3, orientation:I
    :try_start_1
    const-string v5, "Orientation"

    invoke-virtual {v2, v5}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 698
    :goto_1
    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    .line 699
    packed-switch v3, :pswitch_data_0

    .line 710
    :pswitch_0
    const/4 v0, 0x0

    .line 715
    .end local v0           #degree:I
    .end local v2           #mExif:Landroid/media/ExifInterface;
    .end local v3           #orientation:I
    :cond_0
    :goto_2
    return v0

    .line 678
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 685
    :catch_0
    move-exception v1

    .line 686
    .local v1, ex:Ljava/io/IOException;
    const-string v5, "Mms/image"

    const-string v6, "can not read exif"

    invoke-static {v5, v6, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 687
    const/4 v0, 0x0

    goto :goto_2

    .line 695
    .end local v1           #ex:Ljava/io/IOException;
    .restart local v0       #degree:I
    .restart local v2       #mExif:Landroid/media/ExifInterface;
    .restart local v3       #orientation:I
    :catch_1
    move-exception v1

    .line 696
    .local v1, ex:Ljava/lang/NumberFormatException;
    const/4 v3, -0x1

    goto :goto_1

    .line 701
    .end local v1           #ex:Ljava/lang/NumberFormatException;
    :pswitch_1
    const/16 v0, 0x5a

    .line 702
    goto :goto_2

    .line 704
    :pswitch_2
    const/16 v0, 0xb4

    .line 705
    goto :goto_2

    .line 707
    :pswitch_3
    const/16 v0, 0x10e

    .line 708
    goto :goto_2

    .line 699
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private getResizedImageData(III)[B
    .locals 30
    .parameter "widthLimit"
    .parameter "heightLimit"
    .parameter "byteLimit"

    .prologue
    .line 377
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/mms/ui/UriImage;->mWidth:I

    .line 378
    .local v15, outWidth:I
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/mms/ui/UriImage;->mHeight:I

    .line 379
    .local v14, outHeight:I
    const/16 v18, 0x1

    .line 382
    .local v18, sampleSize:I
    invoke-static {}, Lcom/android/mms/TimeChecker;->sStart()V

    .line 384
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/UriImage;->mHeight:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/UriImage;->mWidth:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_0

    move/from16 v0, p1

    move/from16 v1, p2

    if-gt v0, v1, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/UriImage;->mWidth:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/UriImage;->mHeight:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_2

    move/from16 v0, p2

    move/from16 v1, p1

    if-le v0, v1, :cond_2

    .line 386
    :cond_1
    const/16 v25, 0x0

    .line 388
    .local v25, tempLimit:I
    move/from16 v25, p1

    .line 389
    move/from16 p1, p2

    .line 390
    move/from16 p2, v25

    .line 393
    .end local v25           #tempLimit:I
    :cond_2
    const/high16 v19, 0x3f80

    .line 395
    .local v19, scaleFactor:F
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableStrictImageResizing()Z

    move-result v26

    if-eqz v26, :cond_c

    .line 396
    const/high16 v21, 0x3f80

    .line 397
    .local v21, scaleFactor_W:F
    const/high16 v20, 0x3f80

    .line 399
    .local v20, scaleFactor_H:F
    move/from16 v0, p1

    if-le v15, v0, :cond_3

    .line 400
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v26, v0

    int-to-float v0, v15

    move/from16 v27, v0

    div-float v21, v26, v27

    .line 402
    :cond_3
    move/from16 v0, p2

    if-le v14, v0, :cond_4

    .line 403
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v26, v0

    int-to-float v0, v14

    move/from16 v27, v0

    div-float v20, v26, v27

    .line 405
    :cond_4
    cmpg-float v26, v21, v20

    if-gez v26, :cond_b

    .line 406
    move/from16 v19, v21

    .line 415
    .end local v20           #scaleFactor_H:F
    .end local v21           #scaleFactor_W:F
    :cond_5
    :goto_0
    mul-int v26, v15, v14

    const v27, 0x79ec00

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_6

    .line 416
    const/16 v18, 0x2

    .line 418
    :cond_6
    const-string v26, "Mms:app"

    const/16 v27, 0x0

    invoke-static/range {v26 .. v27}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v26

    if-eqz v26, :cond_7

    .line 419
    const-string v26, "Mms/image"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "getResizedImageData: wlimit="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", hlimit="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", sizeLimit="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", mWidth="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/UriImage;->mWidth:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", mHeight="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/UriImage;->mHeight:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", initialScaleFactor="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", mUri="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/UriImage;->mUri:Landroid/net/Uri;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    :cond_7
    const/4 v6, 0x0

    .line 427
    .local v6, input:Ljava/io/InputStream;
    const/4 v12, 0x0

    .line 429
    .local v12, os:Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x1

    .line 431
    .local v3, attempts:I
    :try_start_0
    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 432
    .local v11, options:Landroid/graphics/BitmapFactory$Options;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getImageResizeQualityFactorWhenAttach()I

    move-result v16

    .line 433
    .local v16, quality:I
    const/4 v4, 0x0

    .line 439
    .local v4, b:Landroid/graphics/Bitmap;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/UriImage;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/UriImage;->mUri:Landroid/net/Uri;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6

    .line 440
    move/from16 v0, v18

    iput v0, v11, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3

    .line 442
    const/16 v26, 0x0

    :try_start_1
    move-object/from16 v0, v26

    invoke-static {v6, v0, v11}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    .line 451
    add-int/lit8 v3, v3, 0x1

    .line 452
    if-eqz v6, :cond_9

    .line 454
    :try_start_2
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_3

    .line 460
    :cond_9
    :goto_1
    if-nez v4, :cond_a

    const/16 v26, 0x5

    move/from16 v0, v26

    if-lt v3, v0, :cond_8

    .line 462
    :cond_a
    if-nez v4, :cond_f

    .line 463
    const/16 v26, 0x0

    .line 584
    if-eqz v12, :cond_23

    .line 585
    const-string v27, "Mms/image"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "resize result : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/UriImage;->resizeInfo:Lcom/android/mms/ui/UriImage$ResizeInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/mms/ui/UriImage$ResizeInfo;->width:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "x"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/UriImage;->resizeInfo:Lcom/android/mms/ui/UriImage$ResizeInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/mms/ui/UriImage$ResizeInfo;->height:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", quality="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/UriImage;->resizeInfo:Lcom/android/mms/ui/UriImage$ResizeInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/mms/ui/UriImage$ResizeInfo;->quality:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", rotated="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/UriImage;->resizeInfo:Lcom/android/mms/ui/UriImage$ResizeInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/mms/ui/UriImage$ResizeInfo;->rotatedDeg:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ",OOM="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/UriImage;->resizeInfo:Lcom/android/mms/ui/UriImage$ResizeInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/mms/ui/UriImage$ResizeInfo;->oomCount:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    const-string v27, "Mms/image"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "resize result : bytes before Compress="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/UriImage;->resizeInfo:Lcom/android/mms/ui/UriImage$ResizeInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/mms/ui/UriImage$ResizeInfo;->bytesBeforeCompress:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", after="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/UriImage;->resizeInfo:Lcom/android/mms/ui/UriImage$ResizeInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/mms/ui/UriImage$ResizeInfo;->bytesAfterCompress:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    const-string v27, "Mms/image"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "resize result done,"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-static {}, Lcom/android/mms/TimeChecker;->sEnd()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .end local v4           #b:Landroid/graphics/Bitmap;
    .end local v11           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v16           #quality:I
    :goto_2
    invoke-static/range {v27 .. v28}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    :goto_3
    return-object v26

    .line 408
    .end local v3           #attempts:I
    .end local v6           #input:Ljava/io/InputStream;
    .end local v12           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v20       #scaleFactor_H:F
    .restart local v21       #scaleFactor_W:F
    :cond_b
    move/from16 v19, v20

    goto/16 :goto_0

    .line 410
    .end local v20           #scaleFactor_H:F
    .end local v21           #scaleFactor_W:F
    :cond_c
    :goto_4
    int-to-float v0, v15

    move/from16 v26, v0

    mul-float v26, v26, v19

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v27, v0

    cmpl-float v26, v26, v27

    if-gtz v26, :cond_d

    int-to-float v0, v14

    move/from16 v26, v0

    mul-float v26, v26, v19

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v27, v0

    cmpl-float v26, v26, v27

    if-lez v26, :cond_5

    .line 411
    :cond_d
    const/high16 v26, 0x3f40

    mul-float v19, v19, v26

    goto :goto_4

    .line 443
    .restart local v3       #attempts:I
    .restart local v4       #b:Landroid/graphics/Bitmap;
    .restart local v6       #input:Ljava/io/InputStream;
    .restart local v11       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v12       #os:Ljava/io/ByteArrayOutputStream;
    .restart local v16       #quality:I
    :catch_0
    move-exception v5

    .line 444
    .local v5, e:Ljava/lang/OutOfMemoryError;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/UriImage;->resizeInfo:Lcom/android/mms/ui/UriImage$ResizeInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/mms/ui/UriImage$ResizeInfo;->oomCount:I

    move/from16 v27, v0

    add-int/lit8 v27, v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/mms/ui/UriImage$ResizeInfo;->oomCount:I

    .line 445
    const-string v26, "Mms/image"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "getResizedImageData: img too large to decode (OutOfMemoryError), may try with larger sampleSize. Curr sampleSize="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 447
    mul-int/lit8 v18, v18, 0x2

    .line 451
    add-int/lit8 v3, v3, 0x1

    .line 452
    if-eqz v6, :cond_9

    .line 454
    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_1

    .line 455
    :catch_1
    move-exception v5

    .line 456
    .local v5, e:Ljava/io/IOException;
    :try_start_5
    const-string v26, "Mms/image"

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_1

    .line 576
    .end local v4           #b:Landroid/graphics/Bitmap;
    .end local v5           #e:Ljava/io/IOException;
    .end local v11           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v16           #quality:I
    :catch_2
    move-exception v5

    .line 577
    .local v5, e:Ljava/io/FileNotFoundException;
    :goto_5
    :try_start_6
    const-string v26, "Mms/image"

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 578
    const/16 v26, 0x0

    .line 584
    if-eqz v12, :cond_21

    .line 585
    const-string v27, "Mms/image"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "resize result : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/UriImage;->resizeInfo:Lcom/android/mms/ui/UriImage$ResizeInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/mms/ui/UriImage$ResizeInfo;->width:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "x"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/UriImage;->resizeInfo:Lcom/android/mms/ui/UriImage$ResizeInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/mms/ui/UriImage$ResizeInfo;->height:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", quality="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/UriImage;->resizeInfo:Lcom/android/mms/ui/UriImage$ResizeInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/mms/ui/UriImage$ResizeInfo;->quality:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", rotated="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/UriImage;->resizeInfo:Lcom/android/mms/ui/UriImage$ResizeInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/mms/ui/UriImage$ResizeInfo;->rotatedDeg:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ",OOM="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/UriImage;->resizeInfo:Lcom/android/mms/ui/UriImage$ResizeInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/mms/ui/UriImage$ResizeInfo;->oomCount:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    const-string v27, "Mms/image"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "resize result : bytes before Compress="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/UriImage;->resizeInfo:Lcom/android/mms/ui/UriImage$ResizeInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/mms/ui/UriImage$ResizeInfo;->bytesBeforeCompress:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", after="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/UriImage;->resizeInfo:Lcom/android/mms/ui/UriImage$ResizeInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/mms/ui/UriImage$ResizeInfo;->bytesAfterCompress:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    const-string v27, "Mms/image"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "resize result done,"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-static {}, Lcom/android/mms/TimeChecker;->sEnd()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_2

    .line 451
    .end local v5           #e:Ljava/io/FileNotFoundException;
    .restart local v4       #b:Landroid/graphics/Bitmap;
    .restart local v11       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v16       #quality:I
    :catchall_0
    move-exception v26

    add-int/lit8 v3, v3, 0x1

    .line 452
    if-eqz v6, :cond_e

    .line 454
    :try_start_7
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_3

    .line 451
    :cond_e
    :goto_6
    :try_start_8
    throw v26
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_3

    .line 579
    .end local v4           #b:Landroid/graphics/Bitmap;
    .end local v11           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v16           #quality:I
    :catch_3
    move-exception v5

    .line 580
    .local v5, e:Ljava/lang/OutOfMemoryError;
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/UriImage;->resizeInfo:Lcom/android/mms/ui/UriImage$ResizeInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/mms/ui/UriImage$ResizeInfo;->oomCount:I

    move/from16 v27, v0

    add-int/lit8 v27, v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/mms/ui/UriImage$ResizeInfo;->oomCount:I

    .line 581
    const-string v26, "Mms/image"

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 582
    const/16 v26, 0x0

    .line 584
    if-eqz v12, :cond_22

    .line 585
    const-string v27, "Mms/image"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "resize result : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/UriImage;->resizeInfo:Lcom/android/mms/ui/UriImage$ResizeInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/mms/ui/UriImage$ResizeInfo;->width:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "x"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/UriImage;->resizeInfo:Lcom/android/mms/ui/UriImage$ResizeInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/mms/ui/UriImage$ResizeInfo;->height:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", quality="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/UriImage;->resizeInfo:Lcom/android/mms/ui/UriImage$ResizeInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/mms/ui/UriImage$ResizeInfo;->quality:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", rotated="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/UriImage;->resizeInfo:Lcom/android/mms/ui/UriImage$ResizeInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/mms/ui/UriImage$ResizeInfo;->rotatedDeg:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ",OOM="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/UriImage;->resizeInfo:Lcom/android/mms/ui/UriImage$ResizeInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/mms/ui/UriImage$ResizeInfo;->oomCount:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    const-string v27, "Mms/image"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "resize result : bytes before Compress="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/UriImage;->resizeInfo:Lcom/android/mms/ui/UriImage$ResizeInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/mms/ui/UriImage$ResizeInfo;->bytesBeforeCompress:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", after="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/UriImage;->resizeInfo:Lcom/android/mms/ui/UriImage$ResizeInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/mms/ui/UriImage$ResizeInfo;->bytesAfterCompress:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    const-string v27, "Mms/image"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "resize result done,"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-static {}, Lcom/android/mms/TimeChecker;->sEnd()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_2

    .line 466
    .end local v5           #e:Ljava/lang/OutOfMemoryError;
    .restart local v4       #b:Landroid/graphics/Bitmap;
    .restart local v11       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v16       #quality:I
    :cond_f
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/UriImage;->resizeInfo:Lcom/android/mms/ui/UriImage$ResizeInfo;

    move-object/from16 v26, v0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/mms/ui/UriImage$ResizeInfo;->bytesBeforeCompress:I

    .line 468
    const/4 v3, 0x1

    .line 472
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/UriImage;->mRotate:I

    move/from16 v26, v0

    if-eqz v26, :cond_13

    const/4 v8, 0x1

    .line 473
    .local v8, needsRotation:Z
    :goto_7
    const/4 v7, 0x0

    .line 474
    .local v7, isRotated:Z
    const/4 v9, 0x0

    .line 477
    .local v9, needsRotationAgain:Z
    if-eqz v8, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/UriImage;->mRotate:I

    move/from16 v26, v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_3

    const/16 v27, 0xb4

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_10

    .line 478
    move/from16 v24, v15

    .line 479
    .local v24, temp:I
    move v15, v14

    .line 480
    move/from16 v14, v24

    .line 485
    .end local v24           #temp:I
    :cond_10
    if-nez v9, :cond_11

    :try_start_b
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v26

    move/from16 v0, v26

    move/from16 v1, p1

    if-gt v0, v1, :cond_11

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v26

    move/from16 v0, v26

    move/from16 v1, p2

    if-gt v0, v1, :cond_11

    if-eqz v12, :cond_16

    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v26

    move/from16 v0, v26

    move/from16 v1, p3

    if-le v0, v1, :cond_16

    .line 489
    :cond_11
    int-to-float v0, v15

    move/from16 v26, v0

    mul-float v26, v26, v19

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v23, v0

    .line 490
    .local v23, scaledWidth:I
    int-to-float v0, v14

    move/from16 v26, v0

    mul-float v26, v26, v19

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v22, v0

    .line 492
    .local v22, scaledHeight:I
    const-string v26, "Mms:app"

    const/16 v27, 0x0

    invoke-static/range {v26 .. v27}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v26

    if-eqz v26, :cond_12

    .line 493
    const-string v26, "Mms/image"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "getResizedImageData: retry scaling using Bitmap.createScaledBitmap: w="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", h="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    :cond_12
    move-object v10, v4

    .line 499
    .local v10, old:Landroid/graphics/Bitmap;
    const/16 v26, 0x0

    move/from16 v0, v23

    move/from16 v1, v22

    move/from16 v2, v26

    invoke-static {v4, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_2

    move-result-object v4

    .line 500
    if-nez v4, :cond_14

    .line 501
    const/16 v26, 0x0

    .line 584
    if-eqz v12, :cond_25

    .line 585
    const-string v27, "Mms/image"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "resize result : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/UriImage;->resizeInfo:Lcom/android/mms/ui/UriImage$ResizeInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/mms/ui/UriImage$ResizeInfo;->width:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "x"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/UriImage;->resizeInfo:Lcom/android/mms/ui/UriImage$ResizeInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/mms/ui/UriImage$ResizeInfo;->height:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", quality="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/UriImage;->resizeInfo:Lcom/android/mms/ui/UriImage$ResizeInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/mms/ui/UriImage$ResizeInfo;->quality:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", rotated="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/UriImage;->resizeInfo:Lcom/android/mms/ui/UriImage$ResizeInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/mms/ui/UriImage$ResizeInfo;->rotatedDeg:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ",OOM="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/UriImage;->resizeInfo:Lcom/android/mms/ui/UriImage$ResizeInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/mms/ui/UriImage$ResizeInfo;->oomCount:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    const-string v27, "Mms/image"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "resize result : bytes before Compress="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/UriImage;->resizeInfo:Lcom/android/mms/ui/UriImage$ResizeInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/mms/ui/UriImage$ResizeInfo;->bytesBeforeCompress:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", after="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/UriImage;->resizeInfo:Lcom/android/mms/ui/UriImage$ResizeInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/mms/ui/UriImage$ResizeInfo;->bytesAfterCompress:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    const-string v27, "Mms/image"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "resize result done,"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-static {}, Lcom/android/mms/TimeChecker;->sEnd()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_2

    .line 472
    .end local v7           #isRotated:Z
    .end local v8           #needsRotation:Z
    .end local v9           #needsRotationAgain:Z
    .end local v10           #old:Landroid/graphics/Bitmap;
    .end local v22           #scaledHeight:I
    .end local v23           #scaledWidth:I
    :cond_13
    const/4 v8, 0x0

    goto/16 :goto_7

    .line 502
    .restart local v7       #isRotated:Z
    .restart local v8       #needsRotation:Z
    .restart local v9       #needsRotationAgain:Z
    .restart local v10       #old:Landroid/graphics/Bitmap;
    .restart local v22       #scaledHeight:I
    .restart local v23       #scaledWidth:I
    :cond_14
    if-eq v10, v4, :cond_15

    .line 503
    :try_start_c
    const-string v26, "Mms/image"

    const-string v27, "recyle old bitmap after scale"

    invoke-static/range {v26 .. v27}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 507
    :cond_15
    if-eqz v9, :cond_16

    .line 508
    const/4 v9, 0x0

    .line 509
    const/16 v16, 0x64

    .line 513
    .end local v10           #old:Landroid/graphics/Bitmap;
    .end local v22           #scaledHeight:I
    .end local v23           #scaledWidth:I
    :cond_16
    if-eqz v8, :cond_18

    if-nez v7, :cond_18

    .line 516
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/UriImage;->mRotate:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v4, v1}, Lcom/android/mms/ui/UriImage;->getRotatedBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 517
    .local v17, rotated:Landroid/graphics/Bitmap;
    if-eqz v17, :cond_17

    .line 518
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 519
    move-object/from16 v4, v17

    .line 520
    const/4 v7, 0x1

    .line 522
    :cond_17
    const-string v26, "Mms/image"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "isRotated = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_2

    .line 533
    .end local v17           #rotated:Landroid/graphics/Bitmap;
    :cond_18
    const/16 v26, 0x28

    move/from16 v0, v16

    move/from16 v1, v26

    if-ge v0, v1, :cond_26

    .line 534
    const/16 v16, 0x28

    move-object v13, v12

    .line 538
    .end local v12           #os:Ljava/io/ByteArrayOutputStream;
    .local v13, os:Ljava/io/ByteArrayOutputStream;
    :goto_8
    :try_start_d
    new-instance v12, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v12}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_d .. :try_end_d} :catch_8
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_7

    .line 539
    .end local v13           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v12       #os:Ljava/io/ByteArrayOutputStream;
    :try_start_e
    const-string v26, "Mms/image"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "before compressing b.getByteCount() = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "quality = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    sget-object v26, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    move-object/from16 v0, v26

    move/from16 v1, v16

    invoke-virtual {v4, v0, v1, v12}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/UriImage;->resizeInfo:Lcom/android/mms/ui/UriImage$ResizeInfo;

    move-object/from16 v26, v0

    move/from16 v0, v16

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/mms/ui/UriImage$ResizeInfo;->quality:I

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/UriImage;->resizeInfo:Lcom/android/mms/ui/UriImage$ResizeInfo;

    move-object/from16 v26, v0

    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/mms/ui/UriImage$ResizeInfo;->bytesAfterCompress:I

    .line 543
    const-string v26, "Mms/image"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "after compressing os.size() = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    add-int/lit8 v16, v16, -0x5

    .line 545
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v26

    move/from16 v0, v26

    move/from16 v1, p3

    if-le v0, v1, :cond_19

    const/16 v26, 0x28

    move/from16 v0, v16

    move/from16 v1, v26

    if-ge v0, v1, :cond_26

    .line 547
    :cond_19
    if-eqz v8, :cond_1c

    if-nez v7, :cond_1c

    .line 548
    const-string v26, "Mms/image"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Image need to Rotate so try again!!! attempts = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_e .. :try_end_e} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_2

    .line 549
    const/high16 v19, 0x3f40

    .line 550
    add-int/lit8 v3, v3, 0x1

    .line 551
    const/4 v9, 0x1

    .line 570
    :goto_9
    if-nez v9, :cond_1a

    if-eqz v12, :cond_1a

    :try_start_f
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v26

    move/from16 v0, v26

    move/from16 v1, p3

    if-le v0, v1, :cond_1b

    :cond_1a
    const/16 v26, 0x5

    move/from16 v0, v26

    if-lt v3, v0, :cond_10

    .line 571
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/UriImage;->resizeInfo:Lcom/android/mms/ui/UriImage$ResizeInfo;

    move-object/from16 v26, v0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/mms/ui/UriImage$ResizeInfo;->width:I

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/UriImage;->resizeInfo:Lcom/android/mms/ui/UriImage$ResizeInfo;

    move-object/from16 v26, v0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/mms/ui/UriImage$ResizeInfo;->height:I

    .line 573
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_f .. :try_end_f} :catch_3

    .line 575
    if-nez v12, :cond_1f

    const/16 v26, 0x0

    .line 584
    :goto_a
    if-eqz v12, :cond_24

    .line 585
    const-string v27, "Mms/image"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "resize result : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/UriImage;->resizeInfo:Lcom/android/mms/ui/UriImage$ResizeInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/mms/ui/UriImage$ResizeInfo;->width:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "x"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/UriImage;->resizeInfo:Lcom/android/mms/ui/UriImage$ResizeInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/mms/ui/UriImage$ResizeInfo;->height:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", quality="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/UriImage;->resizeInfo:Lcom/android/mms/ui/UriImage$ResizeInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/mms/ui/UriImage$ResizeInfo;->quality:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", rotated="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/UriImage;->resizeInfo:Lcom/android/mms/ui/UriImage$ResizeInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/mms/ui/UriImage$ResizeInfo;->rotatedDeg:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ",OOM="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/UriImage;->resizeInfo:Lcom/android/mms/ui/UriImage$ResizeInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/mms/ui/UriImage$ResizeInfo;->oomCount:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    const-string v27, "Mms/image"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "resize result : bytes before Compress="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/UriImage;->resizeInfo:Lcom/android/mms/ui/UriImage$ResizeInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/mms/ui/UriImage$ResizeInfo;->bytesBeforeCompress:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", after="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/UriImage;->resizeInfo:Lcom/android/mms/ui/UriImage$ResizeInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/mms/ui/UriImage$ResizeInfo;->bytesAfterCompress:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    const-string v27, "Mms/image"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "resize result done,"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-static {}, Lcom/android/mms/TimeChecker;->sEnd()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_2

    .line 554
    :catch_4
    move-exception v5

    .line 555
    .restart local v5       #e:Ljava/lang/OutOfMemoryError;
    :goto_b
    :try_start_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/UriImage;->resizeInfo:Lcom/android/mms/ui/UriImage$ResizeInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/mms/ui/UriImage$ResizeInfo;->oomCount:I

    move/from16 v27, v0

    add-int/lit8 v27, v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/mms/ui/UriImage$ResizeInfo;->oomCount:I

    .line 556
    const-string v26, "Mms/image"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "getResizedImageData - image too big (OutOfMemoryError), will try  with smaller scale factor, cur scale factor: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    .end local v5           #e:Ljava/lang/OutOfMemoryError;
    :cond_1c
    const-string v26, "Mms:app"

    const/16 v27, 0x0

    invoke-static/range {v26 .. v27}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v26

    if-eqz v26, :cond_1d

    .line 561
    const-string v27, "Mms/image"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "attempt="

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v28, " size="

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    if-nez v12, :cond_1e

    const/16 v26, 0x0

    :goto_c
    move-object/from16 v0, v28

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v28, " width="

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    int-to-float v0, v15

    move/from16 v28, v0

    mul-float v28, v28, v19

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v28, " height="

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    int-to-float v0, v14

    move/from16 v28, v0

    mul-float v28, v28, v19

    move-object/from16 v0, v26

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v28, " scaleFactor="

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v28, " quality="

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    :cond_1d
    const/high16 v26, 0x3f40

    mul-float v19, v19, v26

    .line 569
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_9

    .line 561
    :cond_1e
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v26

    goto :goto_c

    .line 575
    :cond_1f
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_10 .. :try_end_10} :catch_3

    move-result-object v26

    goto/16 :goto_a

    .line 584
    .end local v4           #b:Landroid/graphics/Bitmap;
    .end local v7           #isRotated:Z
    .end local v8           #needsRotation:Z
    .end local v9           #needsRotationAgain:Z
    .end local v11           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v16           #quality:I
    :catchall_1
    move-exception v26

    :goto_d
    if-eqz v12, :cond_20

    .line 585
    const-string v27, "Mms/image"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "resize result : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/UriImage;->resizeInfo:Lcom/android/mms/ui/UriImage$ResizeInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/mms/ui/UriImage$ResizeInfo;->width:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "x"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/UriImage;->resizeInfo:Lcom/android/mms/ui/UriImage$ResizeInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/mms/ui/UriImage$ResizeInfo;->height:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", quality="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/UriImage;->resizeInfo:Lcom/android/mms/ui/UriImage$ResizeInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/mms/ui/UriImage$ResizeInfo;->quality:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", rotated="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/UriImage;->resizeInfo:Lcom/android/mms/ui/UriImage$ResizeInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/mms/ui/UriImage$ResizeInfo;->rotatedDeg:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ",OOM="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/UriImage;->resizeInfo:Lcom/android/mms/ui/UriImage$ResizeInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/mms/ui/UriImage$ResizeInfo;->oomCount:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    const-string v27, "Mms/image"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "resize result : bytes before Compress="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/UriImage;->resizeInfo:Lcom/android/mms/ui/UriImage$ResizeInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/mms/ui/UriImage$ResizeInfo;->bytesBeforeCompress:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", after="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/UriImage;->resizeInfo:Lcom/android/mms/ui/UriImage$ResizeInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/mms/ui/UriImage$ResizeInfo;->bytesAfterCompress:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    const-string v27, "Mms/image"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "resize result done,"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-static {}, Lcom/android/mms/TimeChecker;->sEnd()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    :goto_e
    throw v26

    .line 589
    :cond_20
    const-string v27, "Mms/image"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "resize result falied,"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-static {}, Lcom/android/mms/TimeChecker;->sEnd()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .local v5, e:Ljava/io/FileNotFoundException;
    :cond_21
    const-string v27, "Mms/image"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "resize result falied,"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-static {}, Lcom/android/mms/TimeChecker;->sEnd()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .end local v5           #e:Ljava/io/FileNotFoundException;
    :goto_f
    invoke-static/range {v27 .. v28}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .local v5, e:Ljava/lang/OutOfMemoryError;
    :cond_22
    const-string v27, "Mms/image"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "resize result falied,"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-static {}, Lcom/android/mms/TimeChecker;->sEnd()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    goto :goto_f

    .line 455
    .end local v5           #e:Ljava/lang/OutOfMemoryError;
    .restart local v4       #b:Landroid/graphics/Bitmap;
    .restart local v11       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v16       #quality:I
    :catch_5
    move-exception v5

    .line 456
    .local v5, e:Ljava/io/IOException;
    :try_start_11
    const-string v27, "Mms/image"

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_11 .. :try_end_11} :catch_3

    goto/16 :goto_6

    .line 589
    .end local v5           #e:Ljava/io/IOException;
    :cond_23
    const-string v27, "Mms/image"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "resize result falied,"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-static {}, Lcom/android/mms/TimeChecker;->sEnd()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    goto :goto_f

    .restart local v7       #isRotated:Z
    .restart local v8       #needsRotation:Z
    .restart local v9       #needsRotationAgain:Z
    :cond_24
    const-string v27, "Mms/image"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "resize result falied,"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-static {}, Lcom/android/mms/TimeChecker;->sEnd()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    goto :goto_f

    .restart local v10       #old:Landroid/graphics/Bitmap;
    .restart local v22       #scaledHeight:I
    .restart local v23       #scaledWidth:I
    :cond_25
    const-string v27, "Mms/image"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "resize result falied,"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-static {}, Lcom/android/mms/TimeChecker;->sEnd()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    goto :goto_f

    .line 455
    .end local v7           #isRotated:Z
    .end local v8           #needsRotation:Z
    .end local v9           #needsRotationAgain:Z
    .end local v10           #old:Landroid/graphics/Bitmap;
    .end local v22           #scaledHeight:I
    .end local v23           #scaledWidth:I
    :catch_6
    move-exception v5

    .line 456
    .restart local v5       #e:Ljava/io/IOException;
    :try_start_12
    const-string v26, "Mms/image"

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_12} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_12 .. :try_end_12} :catch_3

    goto/16 :goto_1

    .line 584
    .end local v5           #e:Ljava/io/IOException;
    .end local v12           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v7       #isRotated:Z
    .restart local v8       #needsRotation:Z
    .restart local v9       #needsRotationAgain:Z
    .restart local v13       #os:Ljava/io/ByteArrayOutputStream;
    :catchall_2
    move-exception v26

    move-object v12, v13

    .end local v13           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v12       #os:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_d

    .line 576
    .end local v12           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v13       #os:Ljava/io/ByteArrayOutputStream;
    :catch_7
    move-exception v5

    move-object v12, v13

    .end local v13           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v12       #os:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_5

    .line 554
    .end local v12           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v13       #os:Ljava/io/ByteArrayOutputStream;
    :catch_8
    move-exception v5

    move-object v12, v13

    .end local v13           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v12       #os:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_b

    :cond_26
    move-object v13, v12

    .end local v12           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v13       #os:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_8
.end method

.method private getRotatedBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "original"
    .parameter "rotateDegree"

    .prologue
    .line 607
    const-string v0, "Mms/image"

    const-string v1, "getRotatedBitmap"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    if-nez p1, :cond_0

    .line 609
    const/4 v8, 0x0

    .line 624
    :goto_0
    return-object v8

    .line 611
    :cond_0
    const/4 v8, 0x0

    .line 615
    .local v8, rotated:Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 616
    .local v5, m:Landroid/graphics/Matrix;
    int-to-float v0, p2

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 617
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    goto :goto_0

    .line 619
    .end local v5           #m:Landroid/graphics/Matrix;
    :catch_0
    move-exception v7

    .line 620
    .local v7, e:Ljava/lang/OutOfMemoryError;
    iget-object v0, p0, Lcom/android/mms/ui/UriImage;->resizeInfo:Lcom/android/mms/ui/UriImage$ResizeInfo;

    iget v1, v0, Lcom/android/mms/ui/UriImage$ResizeInfo;->oomCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/mms/ui/UriImage$ResizeInfo;->oomCount:I

    .line 621
    const-string v0, "Mms/image"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OutOfMemoryError"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getRotatedDegree(Landroid/net/Uri;Landroid/content/Context;)I
    .locals 9
    .parameter "uri"
    .parameter "context"

    .prologue
    .line 648
    const/4 v8, 0x0

    .line 649
    .local v8, degree:I
    if-eqz p0, :cond_3

    invoke-static {p0}, Lcom/android/mms/ui/UriImage;->isMediaUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 650
    const/4 v7, 0x0

    .line 652
    .local v7, cur:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    move-object v2, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 654
    if-eqz v7, :cond_0

    .line 655
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 656
    const-string v0, "orientation"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 661
    :cond_0
    if-eqz v7, :cond_1

    .line 662
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 668
    .end local v7           #cur:Landroid/database/Cursor;
    :cond_1
    :goto_1
    return v8

    .line 661
    .restart local v7       #cur:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 662
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 661
    :cond_2
    throw v0

    .line 665
    .end local v7           #cur:Landroid/database/Cursor;
    :cond_3
    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/android/mms/ui/UriImage;->isMMSUri(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 666
    invoke-static {p0}, Lcom/android/mms/ui/UriImage;->getDegreeFromFile(Landroid/net/Uri;)I

    move-result v8

    goto :goto_1

    .line 659
    .restart local v7       #cur:Landroid/database/Cursor;
    :catch_0
    move-exception v0

    .line 661
    if-eqz v7, :cond_1

    goto :goto_0
.end method

.method private getRotatedImageData()[B
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 318
    const/4 v8, 0x0

    .line 319
    .local v8, input:Ljava/io/InputStream;
    const/4 v10, 0x0

    .line 321
    .local v10, os:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 322
    .local v9, options:Landroid/graphics/BitmapFactory$Options;
    iget-object v1, p0, Lcom/android/mms/ui/UriImage;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v8

    .line 323
    const/16 v12, 0x64

    .line 325
    .local v12, quality:I
    const/4 v1, 0x0

    :try_start_1
    invoke-static {v8, v1, v9}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 327
    .local v0, b:Landroid/graphics/Bitmap;
    iget v1, p0, Lcom/android/mms/ui/UriImage;->mRotate:I

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 328
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 329
    .local v5, m:Landroid/graphics/Matrix;
    iget v1, p0, Lcom/android/mms/ui/UriImage;->mRotate:I

    int-to-float v1, v1

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 330
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v0

    .line 332
    .end local v5           #m:Landroid/graphics/Matrix;
    :cond_0
    if-nez v0, :cond_3

    .line 347
    if-eqz v8, :cond_1

    .line 349
    :try_start_2
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 354
    :cond_1
    :goto_0
    if-eqz v10, :cond_2

    .line 356
    :try_start_3
    throw v10
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 359
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v9           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v12           #quality:I
    :cond_2
    :goto_1
    return-object v13

    .line 350
    .restart local v0       #b:Landroid/graphics/Bitmap;
    .restart local v9       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v12       #quality:I
    :catch_0
    move-exception v7

    .line 351
    .local v7, e:Ljava/io/IOException;
    const-string v1, "Mms/image"

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 357
    .end local v7           #e:Ljava/io/IOException;
    :catch_1
    move-exception v7

    .line 358
    .restart local v7       #e:Ljava/io/IOException;
    const-string v1, "Mms/image"

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 335
    .end local v7           #e:Ljava/io/IOException;
    :cond_3
    :try_start_4
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    .line 337
    .end local v10           #os:Ljava/io/ByteArrayOutputStream;
    .local v11, os:Ljava/io/ByteArrayOutputStream;
    :try_start_5
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0, v1, v12, v11}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_a

    move-object v10, v11

    .line 342
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v11           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v10       #os:Ljava/io/ByteArrayOutputStream;
    :goto_2
    if-nez v10, :cond_7

    move-object v1, v13

    .line 347
    :goto_3
    if-eqz v8, :cond_4

    .line 349
    :try_start_6
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 354
    :cond_4
    :goto_4
    if-eqz v10, :cond_5

    .line 356
    :try_start_7
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    :cond_5
    :goto_5
    move-object v13, v1

    .line 359
    goto :goto_1

    .line 338
    :catch_2
    move-exception v7

    .line 339
    .local v7, e:Ljava/lang/OutOfMemoryError;
    :goto_6
    :try_start_8
    const-string v1, "Mms/image"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OutOfMemoryError"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_2

    .line 343
    .end local v7           #e:Ljava/lang/OutOfMemoryError;
    .end local v9           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v12           #quality:I
    :catch_3
    move-exception v7

    .line 344
    .local v7, e:Ljava/io/FileNotFoundException;
    :goto_7
    :try_start_9
    const-string v1, "Mms/image"

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 347
    if-eqz v8, :cond_6

    .line 349
    :try_start_a
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 354
    .end local v7           #e:Ljava/io/FileNotFoundException;
    :cond_6
    :goto_8
    if-eqz v10, :cond_2

    .line 356
    :try_start_b
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    goto :goto_1

    .line 357
    :catch_4
    move-exception v7

    .line 358
    .local v7, e:Ljava/io/IOException;
    const-string v1, "Mms/image"

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 342
    .end local v7           #e:Ljava/io/IOException;
    .restart local v9       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v12       #quality:I
    :cond_7
    :try_start_c
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_3

    move-result-object v1

    goto :goto_3

    .line 350
    :catch_5
    move-exception v7

    .line 351
    .restart local v7       #e:Ljava/io/IOException;
    const-string v2, "Mms/image"

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 357
    .end local v7           #e:Ljava/io/IOException;
    :catch_6
    move-exception v7

    .line 358
    .restart local v7       #e:Ljava/io/IOException;
    const-string v2, "Mms/image"

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 350
    .end local v9           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v12           #quality:I
    .local v7, e:Ljava/io/FileNotFoundException;
    :catch_7
    move-exception v7

    .line 351
    .local v7, e:Ljava/io/IOException;
    const-string v1, "Mms/image"

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    .line 347
    .end local v7           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    :goto_9
    if-eqz v8, :cond_8

    .line 349
    :try_start_d
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    .line 354
    :cond_8
    :goto_a
    if-eqz v10, :cond_9

    .line 356
    :try_start_e
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9

    .line 359
    :cond_9
    :goto_b
    throw v1

    .line 350
    :catch_8
    move-exception v7

    .line 351
    .restart local v7       #e:Ljava/io/IOException;
    const-string v2, "Mms/image"

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    .line 357
    .end local v7           #e:Ljava/io/IOException;
    :catch_9
    move-exception v7

    .line 358
    .restart local v7       #e:Ljava/io/IOException;
    const-string v2, "Mms/image"

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b

    .line 347
    .end local v7           #e:Ljava/io/IOException;
    .end local v10           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v0       #b:Landroid/graphics/Bitmap;
    .restart local v9       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v11       #os:Ljava/io/ByteArrayOutputStream;
    .restart local v12       #quality:I
    :catchall_1
    move-exception v1

    move-object v10, v11

    .end local v11           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v10       #os:Ljava/io/ByteArrayOutputStream;
    goto :goto_9

    .line 343
    .end local v10           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v11       #os:Ljava/io/ByteArrayOutputStream;
    :catch_a
    move-exception v7

    move-object v10, v11

    .end local v11           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v10       #os:Ljava/io/ByteArrayOutputStream;
    goto :goto_7

    .line 338
    .end local v10           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v11       #os:Ljava/io/ByteArrayOutputStream;
    :catch_b
    move-exception v7

    move-object v10, v11

    .end local v11           #os:Ljava/io/ByteArrayOutputStream;
    .restart local v10       #os:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_6
.end method

.method private initFromContentUri(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 10
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    .line 139
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v0, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 142
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 143
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " returns null result."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    .line 151
    :cond_1
    const-string v0, "Mms/image"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " returns 0 or multiple rows."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v0, "Mms/image"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cursor count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    .line 154
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " returns 0 or multiple rows."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 160
    :cond_2
    if-eqz p2, :cond_5

    :try_start_1
    invoke-static {p2}, Lcom/android/mms/model/ImageModel;->isMmsUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 161
    const-string v0, "fn"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 162
    .local v9, filePath:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 163
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 165
    :cond_3
    const-string v0, "ct"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/UriImage;->mContentType:Ljava/lang/String;

    .line 181
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/UriImage;->mContentType:Ljava/lang/String;

    const-string v1, "image/x-ms-bmp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 182
    const-string v0, "image/bmp"

    iput-object v0, p0, Lcom/android/mms/ui/UriImage;->mContentType:Ljava/lang/String;

    .line 185
    :cond_4
    iput-object v9, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 189
    return-void

    .line 167
    .end local v9           #filePath:Ljava/lang/String;
    :cond_5
    if-eqz p2, :cond_6

    :try_start_2
    invoke-static {p2}, Lcom/android/mms/ui/UriImage;->isMediaUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 169
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v9

    .line 174
    .restart local v9       #filePath:Ljava/lang/String;
    :goto_1
    :try_start_3
    const-string v0, "mime_type"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/UriImage;->mContentType:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 175
    :catch_0
    move-exception v8

    .line 176
    .local v8, ex:Ljava/lang/IllegalArgumentException;
    :try_start_4
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/UriImage;->mContentType:Ljava/lang/String;

    .line 177
    const-string v0, "Mms/image"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initFromContentUri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", getType => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/UriImage;->mContentType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 171
    .end local v8           #ex:Ljava/lang/IllegalArgumentException;
    .end local v9           #filePath:Ljava/lang/String;
    :cond_6
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v9

    .restart local v9       #filePath:Ljava/lang/String;
    goto :goto_1
.end method

.method private initFromFile(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 5
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 114
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    .line 115
    invoke-static {}, Lcom/android/mms/util/MessageMimeTypeMap;->getSingleton()Lcom/android/mms/util/MessageMimeTypeMap;

    move-result-object v2

    .line 116
    .local v2, mimeTypeMap:Lcom/android/mms/util/MessageMimeTypeMap;
    iget-object v3, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/mms/util/MessageMimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, extension:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 121
    iget-object v3, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    if-nez v3, :cond_2

    const/4 v0, -0x1

    .line 122
    .local v0, dotPos:I
    :goto_0
    if-ltz v0, :cond_0

    .line 123
    iget-object v3, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 126
    .end local v0           #dotPos:I
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/mms/util/MessageMimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/UriImage;->mContentType:Ljava/lang/String;

    .line 132
    iget-object v3, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/mms/drm/DrmWrapper;->IsDrmFile(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 133
    invoke-static {}, Lcom/android/mms/drm/DrmWrapper;->getDrmClient()Landroid/drm/DrmManagerClient;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/UriImage;->mContentType:Ljava/lang/String;

    .line 136
    :cond_1
    return-void

    .line 121
    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/UriImage;->mPath:Ljava/lang/String;

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    goto :goto_0
.end method

.method private static isMMSUri(Landroid/net/Uri;)Z
    .locals 3
    .parameter "uri"

    .prologue
    .line 638
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 639
    .local v0, authority:Ljava/lang/String;
    const-string v1, "content"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    const-string v1, "mms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "spammms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 641
    :cond_0
    const/4 v1, 0x1

    .line 643
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isMediaUri(Landroid/net/Uri;)Z
    .locals 3
    .parameter "uri"

    .prologue
    .line 628
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 629
    .local v0, authority:Ljava/lang/String;
    const-string v1, "content"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const-string v1, "media"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 631
    const/4 v1, 0x1

    .line 633
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/mms/ui/UriImage;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Lcom/android/mms/ui/UriImage;->mHeight:I

    return v0
.end method

.method public getResizedImageAsPart(III)Lcom/google/android/mms/pdu/PduPart;
    .locals 11
    .parameter "widthLimit"
    .parameter "heightLimit"
    .parameter "byteLimit"

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 261
    new-instance v2, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v2}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 263
    .local v2, part:Lcom/google/android/mms/pdu/PduPart;
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/UriImage;->getResizedImageData(III)[B

    move-result-object v1

    .line 264
    .local v1, data:[B
    if-eqz v1, :cond_0

    array-length v7, v1

    if-gtz v7, :cond_1

    .line 268
    :cond_0
    const/4 v2, 0x0

    .line 289
    .end local v2           #part:Lcom/google/android/mms/pdu/PduPart;
    :goto_0
    return-object v2

    .line 271
    .restart local v2       #part:Lcom/google/android/mms/pdu/PduPart;
    :cond_1
    invoke-virtual {v2, v1}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 273
    const-string v7, "image/jpeg"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 277
    invoke-virtual {p0}, Lcom/android/mms/ui/UriImage;->getSrc()Ljava/lang/String;

    move-result-object v4

    .line 278
    .local v4, src:Ljava/lang/String;
    const-string v6, ".jpeg"

    .line 279
    .local v6, temp:Ljava/lang/String;
    const/16 v7, 0x2e

    invoke-virtual {v4, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 280
    .local v3, period:I
    if-eq v3, v9, :cond_2

    if-eqz v3, :cond_2

    .line 281
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 283
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 284
    .local v5, srcBytes:[B
    invoke-virtual {v2, v5}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 285
    invoke-virtual {v2, v5}, Lcom/google/android/mms/pdu/PduPart;->setFilename([B)V

    .line 286
    if-eq v3, v9, :cond_3

    if-eqz v3, :cond_3

    invoke-virtual {v4, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 287
    .local v0, contentId:[B
    :goto_1
    invoke-virtual {v2, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    goto :goto_0

    .end local v0           #contentId:[B
    :cond_3
    move-object v0, v5

    .line 286
    goto :goto_1
.end method

.method public getRotate()I
    .locals 1

    .prologue
    .line 243
    iget v0, p0, Lcom/android/mms/ui/UriImage;->mRotate:I

    return v0
.end method

.method public getRotateImageAsPart()Lcom/google/android/mms/pdu/PduPart;
    .locals 7

    .prologue
    .line 294
    new-instance v2, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v2}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 296
    .local v2, part:Lcom/google/android/mms/pdu/PduPart;
    invoke-direct {p0}, Lcom/android/mms/ui/UriImage;->getRotatedImageData()[B

    move-result-object v1

    .line 297
    .local v1, data:[B
    if-nez v1, :cond_0

    .line 301
    const/4 v2, 0x0

    .line 314
    .end local v2           #part:Lcom/google/android/mms/pdu/PduPart;
    :goto_0
    return-object v2

    .line 304
    .restart local v2       #part:Lcom/google/android/mms/pdu/PduPart;
    :cond_0
    invoke-virtual {v2, v1}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 305
    invoke-virtual {p0}, Lcom/android/mms/ui/UriImage;->getContentType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 306
    invoke-virtual {p0}, Lcom/android/mms/ui/UriImage;->getSrc()Ljava/lang/String;

    move-result-object v4

    .line 307
    .local v4, src:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 308
    .local v5, srcBytes:[B
    invoke-virtual {v2, v5}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 309
    invoke-virtual {v2, v5}, Lcom/google/android/mms/pdu/PduPart;->setFilename([B)V

    .line 310
    const/16 v6, 0x2e

    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 311
    .local v3, period:I
    const/4 v6, -0x1

    if-eq v3, v6, :cond_1

    if-eqz v3, :cond_1

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 312
    .local v0, contentId:[B
    :goto_1
    invoke-virtual {v2, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    goto :goto_0

    .end local v0           #contentId:[B
    :cond_1
    move-object v0, v5

    .line 311
    goto :goto_1
.end method

.method public getSrc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/mms/ui/UriImage;->mSrc:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lcom/android/mms/ui/UriImage;->mWidth:I

    return v0
.end method

.method public setRotate(I)V
    .locals 0
    .parameter "mRotate"

    .prologue
    .line 247
    iput p1, p0, Lcom/android/mms/ui/UriImage;->mRotate:I

    .line 248
    return-void
.end method
