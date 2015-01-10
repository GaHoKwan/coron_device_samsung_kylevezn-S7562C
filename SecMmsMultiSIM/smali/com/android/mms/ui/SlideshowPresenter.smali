.class public Lcom/android/mms/ui/SlideshowPresenter;
.super Lcom/android/mms/ui/Presenter;
.source "SlideshowPresenter.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "Mms/SlideshowPresenter"

.field private static final VIDEO_MAXIMUM_HEIGHT:I = 0x134


# instance fields
.field public attachMsgId:J

.field private attachmentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/AttachmentModel;",
            ">;"
        }
    .end annotation
.end field

.field private mFullScreenText:Z

.field protected final mHandler:Landroid/os/Handler;

.field private mHasAttachment:Z

.field private mHasAudio:Z

.field private mHasText:Z

.field protected mHeightTransformRatio:F

.field protected mIsPreview:Z

.field protected mLocation:I

.field private mMovie:Landroid/graphics/Movie;

.field protected final mSlideNumber:I

.field private mTopText:Z

.field private final mViewSizeChangedListener:Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;

.field protected mWidthTransformRatio:F

.field private player:Lcom/android/mms/dom/smil/SmilPlayer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/mms/ui/ViewInterface;Lcom/android/mms/model/Model;)V
    .locals 3
    .parameter "context"
    .parameter "view"
    .parameter "model"

    .prologue
    .line 114
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/Presenter;-><init>(Landroid/content/Context;Lcom/android/mms/ui/ViewInterface;Lcom/android/mms/model/Model;)V

    .line 111
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHandler:Landroid/os/Handler;

    .line 125
    new-instance v0, Lcom/android/mms/ui/SlideshowPresenter$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideshowPresenter$1;-><init>(Lcom/android/mms/ui/SlideshowPresenter;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mViewSizeChangedListener:Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;

    .line 116
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    .line 117
    iget-object v0, p0, Lcom/android/mms/ui/Presenter;->mModel:Lcom/android/mms/model/Model;

    check-cast v0, Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mSlideNumber:I

    .line 118
    const-string v0, "Mms/SlideshowPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Slides Number:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/SlideshowPresenter;->mSlideNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    instance-of v0, p2, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    if-eqz v0, :cond_0

    .line 121
    check-cast p2, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    .end local p2
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mViewSizeChangedListener:Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;

    invoke-interface {p2, v0}, Lcom/android/mms/ui/AdaptableSlideViewInterface;->setOnSizeChangedListener(Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;)V

    .line 123
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/SlideshowPresenter;II)F
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/SlideshowPresenter;->getTransformRatio(II)F

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/SlideshowPresenter;)Lcom/android/mms/dom/smil/SmilPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->player:Lcom/android/mms/dom/smil/SmilPlayer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/SlideshowPresenter;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SlideshowPresenter;->getCurrentSlideIndex(I)I

    move-result v0

    return v0
.end method

.method private doAudioAction(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/AudioModel;)V
    .locals 2
    .parameter "view"
    .parameter "audio"

    .prologue
    .line 296
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getCurrentAction()Lcom/android/mms/model/MediaModel$MediaAction;

    move-result-object v0

    .line 298
    .local v0, action:Lcom/android/mms/model/MediaModel$MediaAction;
    sget-object v1, Lcom/android/mms/model/MediaModel$MediaAction;->START:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v1, :cond_1

    .line 299
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->startAudio()V

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    sget-object v1, Lcom/android/mms/model/MediaModel$MediaAction;->PAUSE:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v1, :cond_2

    .line 301
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->pauseAudio()V

    goto :goto_0

    .line 302
    :cond_2
    sget-object v1, Lcom/android/mms/model/MediaModel$MediaAction;->STOP:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v1, :cond_3

    .line 303
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->stopAudio()V

    goto :goto_0

    .line 304
    :cond_3
    sget-object v1, Lcom/android/mms/model/MediaModel$MediaAction;->SEEK:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v1, :cond_0

    .line 305
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getSeekTo()I

    move-result v1

    invoke-interface {p1, v1}, Lcom/android/mms/ui/SlideViewInterface;->seekAudio(I)V

    goto :goto_0
.end method

.method private doImageAction(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/ImageModel;)V
    .locals 2
    .parameter "view"
    .parameter "image"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 496
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getCurrentAction()Lcom/android/mms/model/MediaModel$MediaAction;

    move-result-object v0

    .line 498
    .local v0, action:Lcom/android/mms/model/MediaModel$MediaAction;
    sget-object v1, Lcom/android/mms/model/MediaModel$MediaAction;->START:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v1, :cond_1

    .line 499
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->startMovie()V

    .line 505
    :cond_0
    :goto_0
    return-void

    .line 500
    :cond_1
    sget-object v1, Lcom/android/mms/model/MediaModel$MediaAction;->PAUSE:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v1, :cond_2

    .line 501
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->pauseMovie()V

    goto :goto_0

    .line 502
    :cond_2
    sget-object v1, Lcom/android/mms/model/MediaModel$MediaAction;->STOP:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v1, :cond_0

    .line 503
    invoke-virtual {p2}, Lcom/android/mms/model/ImageModel;->getBitmapWithDrmCheck()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/android/mms/ui/SlideViewInterface;->stopMovie(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private doVideoAction(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/VideoModel;)V
    .locals 4
    .parameter "view"
    .parameter "video"

    .prologue
    .line 562
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getCurrentAction()Lcom/android/mms/model/MediaModel$MediaAction;

    move-result-object v0

    .line 564
    .local v0, action:Lcom/android/mms/model/MediaModel$MediaAction;
    sget-object v2, Lcom/android/mms/model/MediaModel$MediaAction;->START:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v2, :cond_1

    .line 565
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->startVideo()V

    .line 580
    :cond_0
    :goto_0
    return-void

    .line 566
    :cond_1
    sget-object v2, Lcom/android/mms/model/MediaModel$MediaAction;->PAUSE:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v2, :cond_2

    .line 567
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->pauseVideo()V

    goto :goto_0

    .line 568
    :cond_2
    sget-object v2, Lcom/android/mms/model/MediaModel$MediaAction;->STOP:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v2, :cond_4

    .line 571
    iget-object v2, p0, Lcom/android/mms/ui/Presenter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/ui/MessageUtils;->createVideoThumbnail(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 572
    .local v1, bitmap:Landroid/graphics/Bitmap;
    if-nez v1, :cond_3

    .line 573
    iget-object v2, p0, Lcom/android/mms/ui/Presenter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020273

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 576
    :cond_3
    invoke-interface {p1, v1}, Lcom/android/mms/ui/SlideViewInterface;->stopVideo(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 577
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    :cond_4
    sget-object v2, Lcom/android/mms/model/MediaModel$MediaAction;->SEEK:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v2, :cond_0

    .line 578
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getSeekTo()I

    move-result v2

    invoke-interface {p1, v2}, Lcom/android/mms/ui/SlideViewInterface;->seekVideo(I)V

    goto :goto_0
.end method

.method private getCurrentSlideIndex(I)I
    .locals 2
    .parameter "currentSlideTime"

    .prologue
    .line 678
    const/4 v0, 0x0

    .line 680
    .local v0, index:I
    iget-object v1, p0, Lcom/android/mms/ui/Presenter;->mModel:Lcom/android/mms/model/Model;

    check-cast v1, Lcom/android/mms/model/SlideshowModel;

    if-eqz v1, :cond_1

    .line 681
    :goto_0
    iget v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mSlideNumber:I

    if-ge v0, v1, :cond_1

    .line 682
    iget-object v1, p0, Lcom/android/mms/ui/Presenter;->mModel:Lcom/android/mms/model/Model;

    check-cast v1, Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1, v0}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->getDuration()I

    move-result v1

    sub-int/2addr p1, v1

    .line 683
    const/16 v1, -0x384

    if-ge p1, v1, :cond_0

    .line 684
    add-int/lit8 v1, v0, 0x1

    .line 687
    :goto_1
    return v1

    .line 681
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 687
    :cond_1
    iget v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mSlideNumber:I

    goto :goto_1
.end method

.method private getCurrentSlideIndexForVideo(I)I
    .locals 3
    .parameter "currentSlideTime"

    .prologue
    .line 831
    const/4 v0, 0x0

    .line 833
    .local v0, index:I
    iget-object v2, p0, Lcom/android/mms/ui/Presenter;->mModel:Lcom/android/mms/model/Model;

    check-cast v2, Lcom/android/mms/model/SlideshowModel;

    if-eqz v2, :cond_1

    .line 834
    :goto_0
    iget v2, p0, Lcom/android/mms/ui/SlideshowPresenter;->mSlideNumber:I

    if-ge v0, v2, :cond_1

    .line 835
    iget-object v2, p0, Lcom/android/mms/ui/Presenter;->mModel:Lcom/android/mms/model/Model;

    check-cast v2, Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2, v0}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getDuration()I

    move-result v2

    sub-int/2addr p1, v2

    .line 836
    if-gtz p1, :cond_0

    move v1, v0

    .line 840
    .end local v0           #index:I
    .local v1, index:I
    :goto_1
    return v1

    .line 834
    .end local v1           #index:I
    .restart local v0       #index:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    .line 840
    .end local v0           #index:I
    .restart local v1       #index:I
    goto :goto_1
.end method

.method private getHeightTransformRatio(II)F
    .locals 2
    .parameter "height"
    .parameter "layoutHeight"

    .prologue
    .line 180
    if-lez p1, :cond_0

    .line 181
    int-to-float v0, p2

    int-to-float v1, p1

    div-float/2addr v0, v1

    .line 183
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f80

    goto :goto_0
.end method

.method private getTransformRatio(II)F
    .locals 2
    .parameter "viewsize"
    .parameter "layoutsize"

    .prologue
    .line 159
    if-lez p1, :cond_0

    .line 160
    int-to-float v0, p2

    int-to-float v1, p1

    div-float/2addr v0, v1

    .line 162
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f80

    goto :goto_0
.end method

.method private getVideoCurSlideModel()Lcom/android/mms/model/VideoModel;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 808
    iget-object v3, p0, Lcom/android/mms/ui/SlideshowPresenter;->player:Lcom/android/mms/dom/smil/SmilPlayer;

    if-nez v3, :cond_1

    .line 818
    :cond_0
    :goto_0
    return-object v2

    .line 811
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/Presenter;->mModel:Lcom/android/mms/model/Model;

    check-cast v1, Lcom/android/mms/model/SlideshowModel;

    .line 812
    .local v1, ssm:Lcom/android/mms/model/SlideshowModel;
    iget-object v3, p0, Lcom/android/mms/ui/SlideshowPresenter;->player:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v3}, Lcom/android/mms/dom/smil/SmilPlayer;->getCurrentPosition()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/mms/ui/SlideshowPresenter;->getCurrentSlideIndexForVideo(I)I

    move-result v0

    .line 815
    .local v0, currentSlide:I
    invoke-virtual {v1, v0}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 816
    invoke-virtual {v1, v0}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v2

    goto :goto_0
.end method

.method private getWidthTransformRatio(II)F
    .locals 2
    .parameter "width"
    .parameter "layoutWidth"

    .prologue
    .line 173
    if-lez p1, :cond_0

    .line 174
    int-to-float v0, p2

    int-to-float v1, p1

    div-float/2addr v0, v1

    .line 176
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f80

    goto :goto_0
.end method

.method private hasTopText()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 262
    iget-object v0, p0, Lcom/android/mms/ui/Presenter;->mModel:Lcom/android/mms/model/Model;

    check-cast v0, Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/LayoutModel;->getLayoutType()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 266
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadAGIF(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/ImageModel;)V
    .locals 10
    .parameter "view"
    .parameter "image"

    .prologue
    .line 438
    const/4 v3, 0x0

    .line 439
    .local v3, is:Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 441
    .local v4, is2:Ljava/io/ByteArrayInputStream;
    :try_start_0
    iget-object v7, p0, Lcom/android/mms/ui/Presenter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getUriWithDrmCheck()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 442
    if-eqz v3, :cond_0

    .line 443
    const/4 v6, 0x0

    .line 444
    .local v6, streamSize:I
    invoke-virtual {v3}, Ljava/io/InputStream;->markSupported()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 446
    .local v1, canMark:Z
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v6

    .line 450
    :goto_0
    if-eqz v1, :cond_3

    .line 451
    const/4 v7, 0x0

    :try_start_2
    invoke-virtual {v3, v7}, Ljava/io/InputStream;->mark(I)V

    .line 452
    invoke-static {v4}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/ui/SlideshowPresenter;->mMovie:Landroid/graphics/Movie;

    .line 463
    :goto_1
    iget-object v7, p0, Lcom/android/mms/ui/SlideshowPresenter;->mMovie:Landroid/graphics/Movie;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/mms/ui/SlideshowPresenter;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v7}, Landroid/graphics/Movie;->duration()I

    move-result v7

    if-lez v7, :cond_4

    .line 464
    iget-object v7, p0, Lcom/android/mms/ui/SlideshowPresenter;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {p2}, Lcom/android/mms/model/ImageModel;->getBitmapWithDrmCheck()Landroid/graphics/Bitmap;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/mms/ui/SlideshowPresenter;->mTopText:Z

    invoke-interface {p1, v7, v8, v9}, Lcom/android/mms/ui/SlideViewInterface;->setMovie(Landroid/graphics/Movie;Landroid/graphics/Bitmap;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 475
    .end local v1           #canMark:Z
    .end local v6           #streamSize:I
    :cond_0
    :goto_2
    if-eqz v3, :cond_1

    .line 477
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    .line 484
    :cond_1
    :goto_3
    if-eqz v4, :cond_2

    .line 486
    :try_start_4
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    .line 493
    :cond_2
    :goto_4
    return-void

    .line 455
    .restart local v1       #canMark:Z
    .restart local v6       #streamSize:I
    :cond_3
    :try_start_5
    invoke-virtual {p0, v3, v6}, Lcom/android/mms/ui/SlideshowPresenter;->streamToBytes(Ljava/io/InputStream;I)[B

    move-result-object v0

    .line 456
    .local v0, array:[B
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 457
    .end local v4           #is2:Ljava/io/ByteArrayInputStream;
    .local v5, is2:Ljava/io/ByteArrayInputStream;
    :try_start_6
    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->markSupported()Z

    move-result v1

    .line 458
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 459
    invoke-static {v5}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/ui/SlideshowPresenter;->mMovie:Landroid/graphics/Movie;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    move-object v4, v5

    .end local v5           #is2:Ljava/io/ByteArrayInputStream;
    .restart local v4       #is2:Ljava/io/ByteArrayInputStream;
    goto :goto_1

    .line 467
    .end local v0           #array:[B
    :cond_4
    :try_start_7
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Lcom/android/mms/model/ImageModel;->getBitmapWithDrmCheck()Landroid/graphics/Bitmap;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/mms/ui/SlideshowPresenter;->mTopText:Z

    invoke-interface {p1, v7, v8, v9}, Lcom/android/mms/ui/SlideViewInterface;->setImage(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_2

    .line 470
    .end local v1           #canMark:Z
    .end local v6           #streamSize:I
    :catch_0
    move-exception v2

    .line 472
    .local v2, e:Ljava/io/IOException;
    :goto_5
    :try_start_8
    const-string v7, "Mms/SlideshowPresenter"

    const-string v8, "IOException caught while opening or reading stream in presentImage"

    invoke-static {v7, v8, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 475
    if-eqz v3, :cond_5

    .line 477
    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 484
    :cond_5
    :goto_6
    if-eqz v4, :cond_2

    .line 486
    :try_start_a
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_4

    .line 487
    :catch_1
    move-exception v2

    .line 489
    const-string v7, "Mms/SlideshowPresenter"

    const-string v8, "IOException caught while closing stream"

    :goto_7
    invoke-static {v7, v8, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 475
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_8
    if-eqz v3, :cond_6

    .line 477
    :try_start_b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    .line 484
    :cond_6
    :goto_9
    if-eqz v4, :cond_7

    .line 486
    :try_start_c
    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    .line 475
    :cond_7
    :goto_a
    throw v7

    .line 447
    .restart local v1       #canMark:Z
    .restart local v6       #streamSize:I
    :catch_2
    move-exception v7

    goto :goto_0

    .line 478
    .end local v1           #canMark:Z
    .end local v6           #streamSize:I
    :catch_3
    move-exception v2

    .line 480
    .restart local v2       #e:Ljava/io/IOException;
    const-string v8, "Mms/SlideshowPresenter"

    const-string v9, "IOException caught while closing stream"

    invoke-static {v8, v9, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    .line 487
    .end local v2           #e:Ljava/io/IOException;
    :catch_4
    move-exception v2

    .line 489
    .restart local v2       #e:Ljava/io/IOException;
    const-string v8, "Mms/SlideshowPresenter"

    const-string v9, "IOException caught while closing stream"

    invoke-static {v8, v9, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    .line 478
    :catch_5
    move-exception v2

    .line 480
    const-string v7, "Mms/SlideshowPresenter"

    const-string v8, "IOException caught while closing stream"

    invoke-static {v7, v8, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 478
    .end local v2           #e:Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 480
    .restart local v2       #e:Ljava/io/IOException;
    const-string v7, "Mms/SlideshowPresenter"

    const-string v8, "IOException caught while closing stream"

    invoke-static {v7, v8, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 487
    .end local v2           #e:Ljava/io/IOException;
    :catch_7
    move-exception v2

    .line 489
    .restart local v2       #e:Ljava/io/IOException;
    const-string v7, "Mms/SlideshowPresenter"

    const-string v8, "IOException caught while closing stream"

    goto :goto_7

    .line 475
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #is2:Ljava/io/ByteArrayInputStream;
    .restart local v0       #array:[B
    .restart local v1       #canMark:Z
    .restart local v5       #is2:Ljava/io/ByteArrayInputStream;
    .restart local v6       #streamSize:I
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5           #is2:Ljava/io/ByteArrayInputStream;
    .restart local v4       #is2:Ljava/io/ByteArrayInputStream;
    goto :goto_8

    .line 470
    .end local v4           #is2:Ljava/io/ByteArrayInputStream;
    .restart local v5       #is2:Ljava/io/ByteArrayInputStream;
    :catch_8
    move-exception v2

    move-object v4, v5

    .end local v5           #is2:Ljava/io/ByteArrayInputStream;
    .restart local v4       #is2:Ljava/io/ByteArrayInputStream;
    goto :goto_5
.end method

.method private presentModel(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/SlideModel;)V
    .locals 6
    .parameter "view"
    .parameter "model"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 241
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/MediaModel;

    .line 242
    .local v1, media:Lcom/android/mms/model/MediaModel;
    instance-of v2, v1, Lcom/android/mms/model/RegionMediaModel;

    if-eqz v2, :cond_4

    .line 245
    iget-object v2, p2, Lcom/android/mms/model/SlideModel;->mParent:Lcom/android/mms/model/SlideshowModel;

    iget-object v2, v2, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 246
    iget v2, p0, Lcom/android/mms/ui/SlideshowPresenter;->mSlideNumber:I

    iget v3, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    add-int/lit8 v3, v3, 0x1

    if-ne v2, v3, :cond_3

    .line 247
    iget-boolean v2, p0, Lcom/android/mms/ui/SlideshowPresenter;->mIsPreview:Z

    if-nez v2, :cond_2

    .line 248
    iput-boolean v4, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHasAttachment:Z

    .line 254
    :cond_1
    :goto_1
    check-cast v1, Lcom/android/mms/model/RegionMediaModel;

    .end local v1           #media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {p0, p1, v1, v4}, Lcom/android/mms/ui/SlideshowPresenter;->presentRegionMedia(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/RegionMediaModel;Z)V

    goto :goto_0

    .line 250
    .restart local v1       #media:Lcom/android/mms/model/MediaModel;
    :cond_2
    iput-boolean v5, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHasAttachment:Z

    goto :goto_1

    .line 252
    :cond_3
    iput-boolean v5, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHasAttachment:Z

    goto :goto_1

    .line 255
    :cond_4
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->isAudio()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 256
    check-cast v1, Lcom/android/mms/model/AudioModel;

    .end local v1           #media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {p0, p1, v1, v4}, Lcom/android/mms/ui/SlideshowPresenter;->presentAudio(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/AudioModel;Z)V

    goto :goto_0

    .line 259
    :cond_5
    return-void
.end method

.method private transformHeight(I)I
    .locals 2
    .parameter "height"

    .prologue
    .line 191
    int-to-float v0, p1

    iget v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHeightTransformRatio:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private transformMediaSize(I)I
    .locals 2
    .parameter "size"

    .prologue
    .line 169
    int-to-float v0, p1

    iget v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mWidthTransformRatio:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private transformWidth(I)I
    .locals 2
    .parameter "width"

    .prologue
    .line 187
    int-to-float v0, p1

    iget v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mWidthTransformRatio:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public findAttachmentList(JZ)Ljava/util/ArrayList;
    .locals 3
    .parameter "msgId"
    .parameter "isSpam"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/AttachmentModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 724
    if-eqz p3, :cond_0

    .line 725
    sget-object v1, Landroid/provider/Telephony$SpamMms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 730
    .local v0, msgUri:Landroid/net/Uri;
    :goto_0
    iput-wide p1, p0, Lcom/android/mms/ui/SlideshowPresenter;->attachMsgId:J

    .line 731
    iget-object v1, p0, Lcom/android/mms/ui/Presenter;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/samsung/mms/content/MmsPartExport;->getMmsAttachmentsAsModelList(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->attachmentList:Ljava/util/ArrayList;

    .line 738
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->attachmentList:Ljava/util/ArrayList;

    return-object v1

    .line 727
    .end local v0           #msgUri:Landroid/net/Uri;
    :cond_0
    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .restart local v0       #msgUri:Landroid/net/Uri;
    goto :goto_0
.end method

.method public getAttchmentList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/AttachmentModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 720
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->attachmentList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCurSlideIndex()I
    .locals 1

    .prologue
    .line 692
    iget v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getCurSlideModel()Lcom/android/mms/model/SlideModel;
    .locals 3

    .prologue
    .line 702
    iget-object v1, p0, Lcom/android/mms/ui/Presenter;->mModel:Lcom/android/mms/model/Model;

    check-cast v1, Lcom/android/mms/model/SlideshowModel;

    .line 704
    .local v1, ssm:Lcom/android/mms/model/SlideshowModel;
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowPresenter;->player:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v2}, Lcom/android/mms/dom/smil/SmilPlayer;->getCurrentPosition()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/SlideshowPresenter;->getCurrentSlideIndex(I)I

    move-result v0

    .line 705
    .local v0, currentSlide:I
    invoke-virtual {v1, v0}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    return-object v2
.end method

.method public getCurrentSlideTime(I)I
    .locals 4
    .parameter "currentSlideTime"

    .prologue
    .line 844
    const/4 v0, 0x0

    .line 845
    .local v0, index:I
    const/4 v2, 0x0

    .line 846
    .local v2, prevTime:I
    move v1, p1

    .line 848
    .local v1, originTime:I
    iget-object v3, p0, Lcom/android/mms/ui/Presenter;->mModel:Lcom/android/mms/model/Model;

    check-cast v3, Lcom/android/mms/model/SlideshowModel;

    if-eqz v3, :cond_1

    .line 849
    :goto_0
    iget v3, p0, Lcom/android/mms/ui/SlideshowPresenter;->mSlideNumber:I

    if-ge v0, v3, :cond_1

    .line 850
    iget-object v3, p0, Lcom/android/mms/ui/Presenter;->mModel:Lcom/android/mms/model/Model;

    check-cast v3, Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3, v0}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->getDuration()I

    move-result v3

    sub-int/2addr p1, v3

    .line 851
    if-gtz p1, :cond_0

    .line 852
    sub-int v3, v1, v2

    .line 857
    :goto_1
    return v3

    .line 853
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/Presenter;->mModel:Lcom/android/mms/model/Model;

    check-cast v3, Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3, v0}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->getDuration()I

    move-result v3

    add-int/2addr v2, v3

    .line 849
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 857
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getLocation()I
    .locals 1

    .prologue
    .line 587
    iget v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    return v0
.end method

.method public getTotSlideNumber()I
    .locals 1

    .prologue
    .line 696
    iget v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mSlideNumber:I

    return v0
.end method

.method public goBackward()V
    .locals 1

    .prologue
    .line 596
    iget v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    if-lez v0, :cond_0

    .line 597
    iget v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    .line 599
    :cond_0
    return-void
.end method

.method public goForward()V
    .locals 2

    .prologue
    .line 603
    iget v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    iget v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mSlideNumber:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 604
    iget v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    .line 606
    :cond_0
    return-void
.end method

.method public initAttachmentListView_presenter()V
    .locals 1

    .prologue
    .line 802
    iget-object v0, p0, Lcom/android/mms/ui/Presenter;->mView:Lcom/android/mms/ui/ViewInterface;

    check-cast v0, Lcom/android/mms/ui/SlideViewInterface;

    .line 803
    .local v0, view:Lcom/android/mms/ui/SlideViewInterface;
    invoke-interface {v0}, Lcom/android/mms/ui/SlideViewInterface;->initAttachmentListView()V

    .line 804
    return-void
.end method

.method public isVideoCurSlideModel()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 824
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowPresenter;->getVideoCurSlideModel()Lcom/android/mms/model/VideoModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 825
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 827
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public onModelChanged(Lcom/android/mms/model/Model;Z)V
    .locals 3
    .parameter "model"
    .parameter "dataChanged"

    .prologue
    .line 609
    iget-object v0, p0, Lcom/android/mms/ui/Presenter;->mView:Lcom/android/mms/ui/ViewInterface;

    check-cast v0, Lcom/android/mms/ui/SlideViewInterface;

    .line 612
    .local v0, view:Lcom/android/mms/ui/SlideViewInterface;
    instance-of v1, p1, Lcom/android/mms/model/SlideshowModel;

    if-eqz v1, :cond_1

    .line 674
    :cond_0
    :goto_0
    return-void

    .line 614
    :cond_1
    instance-of v1, p1, Lcom/android/mms/model/SlideModel;

    if-eqz v1, :cond_3

    move-object v1, p1

    .line 615
    check-cast v1, Lcom/android/mms/model/SlideModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 616
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/mms/ui/SlideshowPresenter$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/mms/ui/SlideshowPresenter$2;-><init>(Lcom/android/mms/ui/SlideshowPresenter;Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/Model;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 622
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/mms/ui/SlideshowPresenter$3;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/SlideshowPresenter$3;-><init>(Lcom/android/mms/ui/SlideshowPresenter;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 641
    :cond_3
    instance-of v1, p1, Lcom/android/mms/model/MediaModel;

    if-eqz v1, :cond_5

    .line 642
    instance-of v1, p1, Lcom/android/mms/model/RegionMediaModel;

    if-eqz v1, :cond_4

    .line 643
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/mms/ui/SlideshowPresenter$4;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/android/mms/ui/SlideshowPresenter$4;-><init>(Lcom/android/mms/ui/SlideshowPresenter;Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/Model;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_4
    move-object v1, p1

    .line 656
    check-cast v1, Lcom/android/mms/model/MediaModel;

    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->isAudio()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 657
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/mms/ui/SlideshowPresenter$5;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/android/mms/ui/SlideshowPresenter$5;-><init>(Lcom/android/mms/ui/SlideshowPresenter;Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/Model;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 671
    :cond_5
    instance-of v1, p1, Lcom/android/mms/model/RegionModel;

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method public present()V
    .locals 3

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/mms/ui/Presenter;->mView:Lcom/android/mms/ui/ViewInterface;

    check-cast v0, Lcom/android/mms/ui/SlideViewInterface;

    iget-object v1, p0, Lcom/android/mms/ui/Presenter;->mModel:Lcom/android/mms/model/Model;

    check-cast v1, Lcom/android/mms/model/SlideshowModel;

    iget v2, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    invoke-virtual {v1, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/SlideshowPresenter;->presentSlide(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/SlideModel;)V

    .line 197
    return-void
.end method

.method public present(Z)V
    .locals 0
    .parameter "firstSlide"

    .prologue
    .line 202
    return-void
.end method

.method protected presentAudio(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/AudioModel;Z)V
    .locals 3
    .parameter "view"
    .parameter "audio"
    .parameter "dataChanged"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 288
    if-eqz p3, :cond_0

    .line 289
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getUriWithDrmCheck()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->getExtras()Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/android/mms/ui/SlideViewInterface;->setAudio(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V

    .line 292
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/SlideshowPresenter;->doAudioAction(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/AudioModel;)V

    .line 293
    return-void
.end method

.method protected presentImage(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/ImageModel;Lcom/android/mms/model/RegionModel;Z)V
    .locals 6
    .parameter "view"
    .parameter "image"
    .parameter "r"
    .parameter "dataChanged"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 388
    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getTop()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/SlideshowPresenter;->transformMediaSize(I)I

    move-result v1

    .line 393
    .local v1, imageViewTop:I
    iget-boolean v2, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHasText:Z

    if-nez v2, :cond_0

    .line 394
    const/4 v1, 0x0

    .line 396
    :cond_0
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 397
    .local v0, contentType:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 398
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getDrmObject()Lcom/android/mms/drm/DrmWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/drm/DrmWrapper;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 400
    :cond_1
    if-eqz p4, :cond_2

    .line 403
    const-string v2, "image/gif"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 404
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/SlideshowPresenter;->loadAGIF(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/ImageModel;)V

    .line 410
    :cond_2
    :goto_0
    const-string v2, "image/gif"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowPresenter;->mMovie:Landroid/graphics/Movie;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowPresenter;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v2}, Landroid/graphics/Movie;->duration()I

    move-result v2

    if-lez v2, :cond_5

    .line 411
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/SlideshowPresenter;->doImageAction(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/ImageModel;)V

    .line 413
    instance-of v2, p1, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    if-eqz v2, :cond_3

    .line 414
    check-cast p1, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    .end local p1
    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getLeft()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/SlideshowPresenter;->transformMediaSize(I)I

    move-result v2

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/mms/ui/SlideshowPresenter;->transformMediaSize(I)I

    move-result v3

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/mms/ui/SlideshowPresenter;->transformMediaSize(I)I

    move-result v4

    invoke-interface {p1, v2, v1, v3, v4}, Lcom/android/mms/ui/AdaptableSlideViewInterface;->setMovieRegion(IIII)V

    .line 435
    :cond_3
    :goto_1
    return-void

    .line 406
    .restart local p1
    :cond_4
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/mms/model/ImageModel;->getBitmapWithDrmCheck()Landroid/graphics/Bitmap;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/mms/ui/SlideshowPresenter;->mTopText:Z

    invoke-interface {p1, v2, v3, v4}, Lcom/android/mms/ui/SlideViewInterface;->setImage(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    goto :goto_0

    .line 427
    :cond_5
    instance-of v2, p1, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    if-eqz v2, :cond_6

    move-object v2, p1

    .line 428
    check-cast v2, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getLeft()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/mms/ui/SlideshowPresenter;->transformMediaSize(I)I

    move-result v3

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/mms/ui/SlideshowPresenter;->transformMediaSize(I)I

    move-result v4

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/mms/ui/SlideshowPresenter;->transformMediaSize(I)I

    move-result v5

    invoke-interface {v2, v3, v1, v4, v5}, Lcom/android/mms/ui/AdaptableSlideViewInterface;->setImageRegion(IIII)V

    .line 432
    :cond_6
    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getFit()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/android/mms/ui/SlideViewInterface;->setImageRegionFit(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected presentRegionMedia(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/RegionMediaModel;Z)V
    .locals 2
    .parameter "view"
    .parameter "rMedia"
    .parameter "dataChanged"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 275
    invoke-virtual {p2}, Lcom/android/mms/model/RegionMediaModel;->getRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v0

    .line 276
    .local v0, r:Lcom/android/mms/model/RegionModel;
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 277
    check-cast p2, Lcom/android/mms/model/TextModel;

    .end local p2
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/mms/ui/SlideshowPresenter;->presentText(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/TextModel;Lcom/android/mms/model/RegionModel;Z)V

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 278
    .restart local p2
    :cond_1
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->isImage()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 279
    check-cast p2, Lcom/android/mms/model/ImageModel;

    .end local p2
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/mms/ui/SlideshowPresenter;->presentImage(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/ImageModel;Lcom/android/mms/model/RegionModel;Z)V

    goto :goto_0

    .line 280
    .restart local p2
    :cond_2
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 281
    check-cast p2, Lcom/android/mms/model/VideoModel;

    .end local p2
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/mms/ui/SlideshowPresenter;->presentVideo(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/VideoModel;Lcom/android/mms/model/RegionModel;Z)V

    goto :goto_0
.end method

.method protected presentSlide(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/SlideModel;)V
    .locals 7
    .parameter "view"
    .parameter "model"

    .prologue
    const/4 v6, 0x0

    .line 209
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->reset()V

    .line 210
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowPresenter;->initAttachmentListView_presenter()V

    .line 211
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 212
    :cond_0
    iput-boolean v6, p0, Lcom/android/mms/ui/SlideshowPresenter;->mFullScreenText:Z

    .line 217
    :goto_0
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHasText:Z

    .line 218
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHasAudio:Z

    .line 220
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowPresenter;->hasTopText()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/mms/ui/SlideshowPresenter;->mTopText:Z

    .line 223
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/SlideshowPresenter;->presentModel(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/SlideModel;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :goto_1
    iget v2, p0, Lcom/android/mms/ui/SlideshowPresenter;->mSlideNumber:I

    .line 235
    .local v2, totalSlide:I
    iget-object v3, p0, Lcom/android/mms/ui/SlideshowPresenter;->player:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v3}, Lcom/android/mms/dom/smil/SmilPlayer;->getCurrentPosition()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/mms/ui/SlideshowPresenter;->getCurrentSlideIndex(I)I

    move-result v0

    .line 236
    .local v0, currentSlide:I
    invoke-interface {p1, v0, v2}, Lcom/android/mms/ui/SlideViewInterface;->setPageNumber(II)V

    .line 238
    return-void

    .line 214
    .end local v0           #currentSlide:I
    .end local v2           #totalSlide:I
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/mms/ui/SlideshowPresenter;->mFullScreenText:Z

    goto :goto_0

    .line 224
    :catch_0
    move-exception v1

    .line 226
    .local v1, e:Ljava/io/IOException;
    const-string v3, "Mms/SlideshowPresenter"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 227
    iget-object v3, p0, Lcom/android/mms/ui/Presenter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/ui/Presenter;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0021

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method protected presentText(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/TextModel;Lcom/android/mms/model/RegionModel;Z)V
    .locals 12
    .parameter "view"
    .parameter "text"
    .parameter "r"
    .parameter "dataChanged"

    .prologue
    .line 314
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mFullScreenText:Z

    if-eqz v0, :cond_5

    .line 315
    const/4 v2, 0x0

    .line 316
    .local v2, textViewTop:I
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->getHeight()I

    move-result v4

    .line 333
    .local v4, textViewHeight:I
    :goto_0
    if-eqz p4, :cond_2

    .line 335
    const/4 v9, 0x0

    .line 337
    .local v9, showAttachment:Z
    invoke-virtual {p2}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v6

    .line 338
    .local v6, msgText:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/mms/ui/Presenter;->mContext:Landroid/content/Context;

    const v1, 0x7f0a017d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 339
    .local v8, notShownStrOne:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/mms/ui/Presenter;->mContext:Landroid/content/Context;

    const v1, 0x7f0a017e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 342
    .local v7, notShownStrMore:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 343
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v6, v0, v8, v1, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 344
    move-object v6, v8

    .line 346
    const/4 v9, 0x1

    .line 356
    :cond_0
    :goto_1
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHasAttachment:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->attachmentList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 357
    const/4 v9, 0x1

    .line 360
    :cond_1
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mTopText:Z

    invoke-interface {p1, v0, v6, v9, v1}, Lcom/android/mms/ui/SlideViewInterface;->setText(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 361
    const/4 v0, 0x1

    if-ne v9, v0, :cond_2

    .line 362
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->attachmentList:Ljava/util/ArrayList;

    iget-wide v10, p0, Lcom/android/mms/ui/SlideshowPresenter;->attachMsgId:J

    invoke-interface {p1, v0, v10, v11}, Lcom/android/mms/ui/SlideViewInterface;->addAttachmentListView(Ljava/util/ArrayList;J)V

    .line 368
    .end local v6           #msgText:Ljava/lang/String;
    .end local v7           #notShownStrMore:Ljava/lang/String;
    .end local v8           #notShownStrOne:Ljava/lang/String;
    .end local v9           #showAttachment:Z
    :cond_2
    instance-of v0, p1, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    if-eqz v0, :cond_3

    move-object v0, p1

    .line 369
    check-cast v0, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getLeft()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/mms/ui/SlideshowPresenter;->transformMediaSize(I)I

    move-result v1

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/mms/ui/SlideshowPresenter;->transformMediaSize(I)I

    move-result v3

    iget-boolean v5, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHasAudio:Z

    invoke-interface/range {v0 .. v5}, Lcom/android/mms/ui/AdaptableSlideViewInterface;->setTextRegion(IIIIZ)V

    .line 374
    :cond_3
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHasAttachment:Z

    if-eqz v0, :cond_4

    .line 375
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/android/mms/model/RegionMediaModel;->setVisible(Z)V

    .line 378
    :cond_4
    return-void

    .line 322
    .end local v2           #textViewTop:I
    .end local v4           #textViewHeight:I
    :cond_5
    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getTop()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideshowPresenter;->transformMediaSize(I)I

    move-result v2

    .line 323
    .restart local v2       #textViewTop:I
    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideshowPresenter;->transformMediaSize(I)I

    move-result v4

    .restart local v4       #textViewHeight:I
    goto :goto_0

    .line 347
    .restart local v6       #msgText:Ljava/lang/String;
    .restart local v7       #notShownStrMore:Ljava/lang/String;
    .restart local v8       #notShownStrOne:Ljava/lang/String;
    .restart local v9       #showAttachment:Z
    :cond_6
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v6, v0, v7, v1, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 348
    move-object v6, v7

    .line 350
    const/4 v9, 0x1

    goto :goto_1

    .line 352
    :cond_7
    const/4 v9, 0x0

    goto :goto_1
.end method

.method protected presentVideo(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/VideoModel;Lcom/android/mms/model/RegionModel;Z)V
    .locals 5
    .parameter "view"
    .parameter "video"
    .parameter "r"
    .parameter "dataChanged"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 527
    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getTop()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/mms/ui/SlideshowPresenter;->transformHeight(I)I

    move-result v0

    .line 532
    .local v0, videoViewTop:I
    iget-boolean v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHasText:Z

    if-nez v1, :cond_0

    .line 533
    const/4 v0, 0x0

    .line 536
    :cond_0
    if-eqz p4, :cond_1

    .line 537
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getUriWithDrmCheck()Landroid/net/Uri;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/mms/ui/SlideshowPresenter;->mTopText:Z

    invoke-interface {p1, v1, v2, v3}, Lcom/android/mms/ui/SlideViewInterface;->setVideo(Ljava/lang/String;Landroid/net/Uri;Z)V

    .line 543
    :cond_1
    instance-of v1, p1, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    if-eqz v1, :cond_2

    move-object v1, p1

    .line 544
    check-cast v1, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getLeft()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/SlideshowPresenter;->transformMediaSize(I)I

    move-result v2

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/mms/ui/SlideshowPresenter;->transformMediaSize(I)I

    move-result v3

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/mms/ui/SlideshowPresenter;->transformMediaSize(I)I

    move-result v4

    invoke-interface {v1, v2, v0, v3, v4}, Lcom/android/mms/ui/AdaptableSlideViewInterface;->setVideoRegion(IIII)V

    .line 558
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/SlideshowPresenter;->doVideoAction(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/VideoModel;)V

    .line 559
    return-void
.end method

.method public resetLocation()V
    .locals 1

    .prologue
    .line 592
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    .line 593
    return-void
.end method

.method public setLocation(I)V
    .locals 0
    .parameter "location"

    .prologue
    .line 583
    iput p1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    .line 584
    return-void
.end method

.method protected setPreviewState(Z)V
    .locals 0
    .parameter "isPreview"

    .prologue
    .line 709
    iput-boolean p1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mIsPreview:Z

    .line 710
    return-void
.end method

.method public setSmilPlayer(Lcom/android/mms/dom/smil/SmilPlayer;)V
    .locals 2
    .parameter "sPlayer"

    .prologue
    .line 713
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowPresenter;->player:Lcom/android/mms/dom/smil/SmilPlayer;

    .line 714
    invoke-virtual {p0}, Lcom/android/mms/ui/Presenter;->getView()Lcom/android/mms/ui/ViewInterface;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/SlideView;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->player:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideView;->setSmilPlayer(Lcom/android/mms/dom/smil/SmilPlayer;)V

    .line 715
    return-void
.end method

.method public setVideoPausedImage()V
    .locals 8

    .prologue
    .line 861
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowPresenter;->getVideoCurSlideModel()Lcom/android/mms/model/VideoModel;

    move-result-object v2

    .line 862
    .local v2, video:Lcom/android/mms/model/VideoModel;
    iget-object v3, p0, Lcom/android/mms/ui/Presenter;->mView:Lcom/android/mms/ui/ViewInterface;

    check-cast v3, Lcom/android/mms/ui/SlideViewInterface;

    .line 863
    .local v3, view:Lcom/android/mms/ui/SlideViewInterface;
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowPresenter;->player:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v4}, Lcom/android/mms/dom/smil/SmilPlayer;->getCurrentPosition()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/SlideshowPresenter;->getCurrentSlideTime(I)I

    move-result v1

    .line 865
    .local v1, mPausedPosition:I
    if-lez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowPresenter;->isVideoCurSlideModel()Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_1

    if-eqz v2, :cond_1

    .line 866
    iget-object v4, p0, Lcom/android/mms/ui/Presenter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v5

    mul-int/lit16 v6, v1, 0x3e8

    int-to-long v6, v6

    invoke-static {v4, v5, v6, v7}, Lcom/android/mms/ui/MessageUtils;->createVideoThumbnailAt(Landroid/content/Context;Landroid/net/Uri;J)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 867
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 868
    iget-object v4, p0, Lcom/android/mms/ui/Presenter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020273

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 871
    :cond_0
    invoke-interface {v3, v0}, Lcom/android/mms/ui/SlideViewInterface;->pauseVideo(Landroid/graphics/Bitmap;)V

    .line 873
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    return-void
.end method

.method public streamToBytes(Ljava/io/InputStream;I)[B
    .locals 3
    .parameter "is"
    .parameter "streamSize"

    .prologue
    .line 509
    new-array v0, p2, [B

    .line 511
    .local v0, buffer:[B
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1, v0, v2, p2}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 515
    :goto_0
    return-object v0

    .line 512
    :catch_0
    move-exception v1

    .line 513
    .local v1, e1:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
