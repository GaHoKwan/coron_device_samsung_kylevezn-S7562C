.class public Lcom/android/mms/ui/SlideView;
.super Landroid/widget/LinearLayout;
.source "SlideView.java"

# interfaces
.implements Lcom/android/mms/ui/AdaptableSlideViewInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SlideView$MovieView;
    }
.end annotation


# static fields
.field private static final AUDIO_INFO_HEIGHT:I = 0x1e

.field private static final DEBUG:Z = false

.field private static final LOCAL_LOGV:Z = false

#the value of this static final field might be set in the static constructor
.field private static final MEDIA_MAXIMUM_LENGTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final MEDIA_MAXIMUM_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final MEDIA_MINIMUM_LENGTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final MEDIA_MINIMUM_WIDTH:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Mms/SlideView"

.field private static saveMode:Z

.field public static staticAttachment:Lcom/android/mms/model/AttachmentModel;

.field public static staticAudioModel:Lcom/android/mms/model/AudioModel;

.field public static staticClickUri:Landroid/net/Uri;

.field public static staticImageModel:Lcom/android/mms/model/ImageModel;

.field public static staticSlideIndex:I

.field public static staticVideoModel:Lcom/android/mms/model/VideoModel;


# instance fields
.field private final MAX_TEXT_COUNT:I

.field private final MEDIA_ERROR_CURRUPT:I

.field private final MEDIA_ERROR_NOTSUPPORT:I

.field private MMS_SUBJECT_HEIGHT:F

.field private SILDESHOW_VIEW_PADDING_BOTTOM:I

.field private VIDEO_MAXIMUM_HEIGHT:I

.field private VIDEO_MAXIMUM_HEIGHT_DIP:F

.field private VIDEO_WRAPPER_PADDING:F

.field public attachMsgId:J

.field private attachmentInfoArr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAgifBitmap:Landroid/graphics/Bitmap;

.field private mAleadyPasued:Z

.field private mAleadyResumed:Z

.field private mAttachViewHeight:I

.field private mAttachmentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/AttachmentModel;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioArea:Landroid/widget/LinearLayout;

.field private mAudioInfoView:Landroid/view/View;

.field private mAudioPlayer:Landroid/media/MediaPlayer;

.field private mAudioViewHeight:I

.field private mCanvas:Landroid/graphics/Canvas;

.field mContentResolver:Landroid/content/ContentResolver;

.field private mDiffTime:J

.field private mDispatchDrawCalled:Z

.field private mEditField:Landroid/widget/EditText;

.field private mEmptyNameToast:Landroid/widget/Toast;

.field private mHasSound:Z

.field private mImageHeight:I

.field private mImageTop:I

.field private mImageView:Landroid/widget/ImageView;

.field private mImageWidth:I

.field private mImageWrapper:Landroid/widget/LinearLayout;

.field private mIsPrepared:Z

.field private mIsTextTop:Z

.field private mMainLinearLayout:Landroid/widget/LinearLayout;

.field private mMainScrollView:Landroid/widget/ScrollView;

.field private mMediaViewPort:Landroid/widget/LinearLayout;

.field private mMovie:Landroid/graphics/Movie;

.field private mMovieHeight:I

.field private mMovieLeft:I

.field private mMoviePlay:Z

.field private mMovieStart:J

.field private mMovieTop:I

.field private mMovieView:Lcom/android/mms/ui/SlideView$MovieView;

.field private mMovieWidth:I

.field private mNegativeButton:Landroid/widget/Button;

.field private final mOnBodyTextClickListener:Landroid/view/View$OnClickListener;

.field private final mOnBodyTextTouchListener:Landroid/view/View$OnTouchListener;

.field mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mPageInfoView:Landroid/view/View;

.field private mPause:Z

.field private mPositiveButton:Landroid/widget/Button;

.field mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mRecentPausedTime:J

.field private mResume:Z

.field private mScale:F

.field private mSeekWhenPrepared:I

.field private mSelectedText:Ljava/lang/String;

.field private mSelectedUrl:Ljava/lang/String;

.field private mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;

.field private mSizeChangedListener:Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;

.field private mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

.field private mStartAgifImage:Z

.field private mStartWhenPrepared:Z

.field private mStopWhenPrepared:Z

.field private mSubject:Ljava/lang/String;

.field private mSubjectHeight:I

.field private mTextHeight:I

.field private mTextTop:I

.field private mTextView:Landroid/widget/TextView;

.field private mTextViewPort:Landroid/widget/LinearLayout;

.field private mTitle:Landroid/widget/TextView;

.field private mTitleIcon:Landroid/widget/ImageView;

.field private mVideoHeight:I

.field private mVideoLeft:I

.field private mVideoStartTime:J

.field private mVideoTop:I

.field private mVideoView:Lcom/android/mms/ui/TestVideoView;

.field private mVideoWidth:I

.field private mVideoWrapper:Landroid/widget/LinearLayout;

.field private mviewpadding:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-wide v4, 0x3feccccccccccccdL

    const-wide v2, 0x3fe883126e978d50L

    .line 253
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenHeight()I

    move-result v0

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenWidth()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenWidth()I

    move-result v0

    int-to-double v0, v0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    :goto_0
    sput v0, Lcom/android/mms/ui/SlideView;->MEDIA_MAXIMUM_LENGTH:I

    .line 255
    sget v0, Lcom/android/mms/ui/SlideView;->MEDIA_MAXIMUM_LENGTH:I

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/android/mms/ui/SlideView;->MEDIA_MINIMUM_LENGTH:I

    .line 256
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenHeight()I

    move-result v0

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenWidth()I

    move-result v1

    if-le v0, v1, :cond_1

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenWidth()I

    move-result v0

    int-to-double v0, v0

    mul-double/2addr v0, v4

    double-to-int v0, v0

    :goto_1
    sput v0, Lcom/android/mms/ui/SlideView;->MEDIA_MAXIMUM_WIDTH:I

    .line 258
    sget v0, Lcom/android/mms/ui/SlideView;->MEDIA_MAXIMUM_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/android/mms/ui/SlideView;->MEDIA_MINIMUM_WIDTH:I

    .line 263
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/ui/SlideView;->saveMode:Z

    return-void

    .line 253
    :cond_0
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenHeight()I

    move-result v0

    int-to-double v0, v0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    goto :goto_0

    .line 256
    :cond_1
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getScreenHeight()I

    move-result v0

    int-to-double v0, v0

    mul-double/2addr v0, v4

    double-to-int v0, v0

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 366
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 137
    const/4 v0, -0x4

    iput v0, p0, Lcom/android/mms/ui/SlideView;->MEDIA_ERROR_NOTSUPPORT:I

    .line 139
    const/16 v0, -0xa

    iput v0, p0, Lcom/android/mms/ui/SlideView;->MEDIA_ERROR_CURRUPT:I

    .line 141
    const/16 v0, 0x4e20

    iput v0, p0, Lcom/android/mms/ui/SlideView;->MAX_TEXT_COUNT:I

    .line 220
    const/high16 v0, 0x41c8

    iput v0, p0, Lcom/android/mms/ui/SlideView;->MMS_SUBJECT_HEIGHT:F

    .line 222
    const v0, 0x40533333

    iput v0, p0, Lcom/android/mms/ui/SlideView;->VIDEO_WRAPPER_PADDING:F

    .line 261
    const/high16 v0, 0x434d

    iput v0, p0, Lcom/android/mms/ui/SlideView;->VIDEO_MAXIMUM_HEIGHT_DIP:F

    .line 262
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mMainScrollView:Landroid/widget/ScrollView;

    .line 270
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;

    .line 297
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/mms/ui/SlideView;->SILDESHOW_VIEW_PADDING_BOTTOM:I

    .line 300
    new-instance v0, Lcom/android/mms/ui/SlideView$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideView$1;-><init>(Lcom/android/mms/ui/SlideView;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 324
    new-instance v0, Lcom/android/mms/ui/SlideView$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideView$2;-><init>(Lcom/android/mms/ui/SlideView;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 330
    new-instance v0, Lcom/android/mms/ui/SlideView$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideView$3;-><init>(Lcom/android/mms/ui/SlideView;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 1306
    new-instance v0, Lcom/android/mms/ui/SlideView$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideView$4;-><init>(Lcom/android/mms/ui/SlideView;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mOnBodyTextTouchListener:Landroid/view/View$OnTouchListener;

    .line 1397
    new-instance v0, Lcom/android/mms/ui/SlideView$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideView$5;-><init>(Lcom/android/mms/ui/SlideView;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mOnBodyTextClickListener:Landroid/view/View$OnClickListener;

    .line 1770
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mHasSound:Z

    .line 368
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->attachmentInfoArr:Ljava/util/ArrayList;

    .line 369
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mContentResolver:Landroid/content/ContentResolver;

    .line 370
    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/mms/ui/SlideView;->mAttachViewHeight:I

    .line 371
    invoke-static {}, Lcom/android/mms/MmsConfig;->isWhiteThemeATT()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const/high16 v1, -0x100

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;

    .line 373
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/high16 v2, 0x3f00

    .line 376
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 137
    const/4 v0, -0x4

    iput v0, p0, Lcom/android/mms/ui/SlideView;->MEDIA_ERROR_NOTSUPPORT:I

    .line 139
    const/16 v0, -0xa

    iput v0, p0, Lcom/android/mms/ui/SlideView;->MEDIA_ERROR_CURRUPT:I

    .line 141
    const/16 v0, 0x4e20

    iput v0, p0, Lcom/android/mms/ui/SlideView;->MAX_TEXT_COUNT:I

    .line 220
    const/high16 v0, 0x41c8

    iput v0, p0, Lcom/android/mms/ui/SlideView;->MMS_SUBJECT_HEIGHT:F

    .line 222
    const v0, 0x40533333

    iput v0, p0, Lcom/android/mms/ui/SlideView;->VIDEO_WRAPPER_PADDING:F

    .line 261
    const/high16 v0, 0x434d

    iput v0, p0, Lcom/android/mms/ui/SlideView;->VIDEO_MAXIMUM_HEIGHT_DIP:F

    .line 262
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mMainScrollView:Landroid/widget/ScrollView;

    .line 270
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;

    .line 297
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/mms/ui/SlideView;->SILDESHOW_VIEW_PADDING_BOTTOM:I

    .line 300
    new-instance v0, Lcom/android/mms/ui/SlideView$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideView$1;-><init>(Lcom/android/mms/ui/SlideView;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 324
    new-instance v0, Lcom/android/mms/ui/SlideView$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideView$2;-><init>(Lcom/android/mms/ui/SlideView;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 330
    new-instance v0, Lcom/android/mms/ui/SlideView$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideView$3;-><init>(Lcom/android/mms/ui/SlideView;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 1306
    new-instance v0, Lcom/android/mms/ui/SlideView$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideView$4;-><init>(Lcom/android/mms/ui/SlideView;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mOnBodyTextTouchListener:Landroid/view/View$OnTouchListener;

    .line 1397
    new-instance v0, Lcom/android/mms/ui/SlideView$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideView$5;-><init>(Lcom/android/mms/ui/SlideView;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mOnBodyTextClickListener:Landroid/view/View$OnClickListener;

    .line 1770
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mHasSound:Z

    .line 379
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->attachmentInfoArr:Ljava/util/ArrayList;

    .line 380
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mContentResolver:Landroid/content/ContentResolver;

    .line 381
    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/mms/ui/SlideView;->mAttachViewHeight:I

    .line 384
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/mms/ui/SlideView;->mScale:F

    .line 385
    iget v0, p0, Lcom/android/mms/ui/SlideView;->MMS_SUBJECT_HEIGHT:F

    iget v1, p0, Lcom/android/mms/ui/SlideView;->mScale:F

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/mms/ui/SlideView;->mSubjectHeight:I

    .line 386
    const/high16 v0, 0x41f0

    iget v1, p0, Lcom/android/mms/ui/SlideView;->mScale:F

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/mms/ui/SlideView;->mAudioViewHeight:I

    .line 387
    iget v0, p0, Lcom/android/mms/ui/SlideView;->VIDEO_MAXIMUM_HEIGHT_DIP:F

    iget v1, p0, Lcom/android/mms/ui/SlideView;->mScale:F

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/mms/ui/SlideView;->VIDEO_MAXIMUM_HEIGHT:I

    .line 388
    iget v0, p0, Lcom/android/mms/ui/SlideView;->SILDESHOW_VIEW_PADDING_BOTTOM:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/mms/ui/SlideView;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/mms/ui/SlideView;->mviewpadding:I

    .line 389
    invoke-static {}, Lcom/android/mms/MmsConfig;->isWhiteThemeATT()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    const/high16 v1, -0x100

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;

    .line 391
    :cond_0
    return-void
.end method

.method static synthetic access$002(Lcom/android/mms/ui/SlideView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/android/mms/ui/SlideView;->mIsPrepared:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/mms/ui/SlideView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget v0, p0, Lcom/android/mms/ui/SlideView;->mSeekWhenPrepared:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/mms/ui/SlideView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput p1, p0, Lcom/android/mms/ui/SlideView;->mSeekWhenPrepared:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/mms/ui/SlideView;Landroid/graphics/Canvas;)Landroid/graphics/Canvas;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/mms/ui/SlideView;->mCanvas:Landroid/graphics/Canvas;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/android/mms/ui/SlideView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/android/mms/ui/SlideView;->mDispatchDrawCalled:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/SlideView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mResume:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/mms/ui/SlideView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/android/mms/ui/SlideView;->mResume:Z

    return p1
.end method

.method static synthetic access$1502(Lcom/android/mms/ui/SlideView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/android/mms/ui/SlideView;->mAleadyResumed:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/SlideView;)Lcom/android/mms/dom/smil/SmilPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/mms/ui/SlideView;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 127
    iget-wide v0, p0, Lcom/android/mms/ui/SlideView;->mMovieStart:J

    return-wide v0
.end method

.method static synthetic access$1702(Lcom/android/mms/ui/SlideView;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-wide p1, p0, Lcom/android/mms/ui/SlideView;->mMovieStart:J

    return-wide p1
.end method

.method static synthetic access$1800(Lcom/android/mms/ui/SlideView;)Landroid/graphics/Movie;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMovie:Landroid/graphics/Movie;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/mms/ui/SlideView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/android/mms/ui/SlideView;->mPause:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/mms/ui/SlideView;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/mms/ui/SlideView;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 127
    iget-wide v0, p0, Lcom/android/mms/ui/SlideView;->mRecentPausedTime:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/android/mms/ui/SlideView;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/mms/ui/SlideView;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 127
    iget-wide v0, p0, Lcom/android/mms/ui/SlideView;->mDiffTime:J

    return-wide v0
.end method

.method static synthetic access$2200(Lcom/android/mms/ui/SlideView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mMoviePlay:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/android/mms/ui/SlideView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput p1, p0, Lcom/android/mms/ui/SlideView;->mMovieWidth:I

    return p1
.end method

.method static synthetic access$2402(Lcom/android/mms/ui/SlideView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput p1, p0, Lcom/android/mms/ui/SlideView;->mMovieLeft:I

    return p1
.end method

.method static synthetic access$2502(Lcom/android/mms/ui/SlideView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput p1, p0, Lcom/android/mms/ui/SlideView;->mMovieTop:I

    return p1
.end method

.method static synthetic access$2600(Lcom/android/mms/ui/SlideView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mSelectedText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/mms/ui/SlideView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/mms/ui/SlideView;->mSelectedText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/android/mms/ui/SlideView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mSelectedUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/mms/ui/SlideView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/mms/ui/SlideView;->mSelectedUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/android/mms/ui/SlideView;)Landroid/text/style/ForegroundColorSpan;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mSelectedUrlSpan:Landroid/text/style/ForegroundColorSpan;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/SlideView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mStartWhenPrepared:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/mms/ui/SlideView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAttachmentList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/mms/ui/SlideView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/android/mms/ui/SlideView;->mStartWhenPrepared:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/mms/ui/SlideView;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SlideView;->saveAttachFiles(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/mms/ui/SlideView;Lcom/android/mms/model/AttachmentModel;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SlideView;->saveAttachFile(Lcom/android/mms/model/AttachmentModel;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/ui/SlideView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/android/mms/ui/SlideView;->displayAudioInfo()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/mms/ui/SlideView;)Lcom/android/mms/ui/TestVideoView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/SlideView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mStopWhenPrepared:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/mms/ui/SlideView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/android/mms/ui/SlideView;->mStopWhenPrepared:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private displayAudioInfo()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 664
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 666
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 668
    :cond_0
    return-void
.end method

.method private hideAudioInfo()V
    .locals 2

    .prologue
    .line 671
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 672
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 673
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 674
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    .line 676
    :cond_0
    return-void
.end method

.method private initAudioInfoView(Ljava/lang/String;)V
    .locals 8
    .parameter "name"

    .prologue
    .line 617
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 618
    .local v2, factory:Landroid/view/LayoutInflater;
    const v6, 0x7f030067

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    .line 619
    iget-object v6, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 620
    .local v3, height:I
    iget-object v6, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    const v7, 0x7f0e0020

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 623
    .local v0, audioName:Landroid/widget/TextView;
    const/4 v1, 0x0

    .line 624
    .local v1, extension:Ljava/lang/String;
    const/16 v6, 0x2e

    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 625
    .local v4, index:I
    if-ltz v4, :cond_0

    .line 626
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 628
    :cond_0
    const-string v6, "dm"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 629
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {p1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".dcf"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 633
    :cond_1
    const-string v6, "cid:"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "Cid:"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 634
    :cond_2
    const/4 v6, 0x4

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 637
    :cond_3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 639
    invoke-static {}, Lcom/android/mms/MmsConfig;->isWhiteThemeATT()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 640
    const v6, -0x7d7d7e

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 644
    :goto_0
    iget-object v6, p0, Lcom/android/mms/ui/SlideView;->mAudioArea:Landroid/widget/LinearLayout;

    if-nez v6, :cond_4

    .line 645
    const v6, 0x7f0e0219

    invoke-virtual {p0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/android/mms/ui/SlideView;->mAudioArea:Landroid/widget/LinearLayout;

    .line 646
    :cond_4
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 647
    .local v5, lp:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v6, 0x10

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 648
    iget-object v6, p0, Lcom/android/mms/ui/SlideView;->mAudioArea:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    invoke-virtual {v6, v7, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 659
    invoke-direct {p0}, Lcom/android/mms/ui/SlideView;->displayAudioInfo()V

    .line 661
    return-void

    .line 642
    .end local v5           #lp:Landroid/widget/LinearLayout$LayoutParams;
    :cond_5
    const v6, -0x282829

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method private makeSmiley(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "text"

    .prologue
    .line 775
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 777
    .local v0, buf:Landroid/text/SpannableStringBuilder;
    invoke-static {}, Lcom/android/mms/util/SmileyParser;->getInstance()Lcom/android/mms/util/SmileyParser;

    move-result-object v1

    .line 779
    .local v1, parser:Lcom/android/mms/util/SmileyParser;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 780
    invoke-virtual {v1, p1}, Lcom/android/mms/util/SmileyParser;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 782
    :cond_0
    return-object v0
.end method

.method private saveAttachFile(Lcom/android/mms/model/AttachmentModel;)V
    .locals 4
    .parameter "attachment"

    .prologue
    .line 1672
    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/android/mms/ui/SlideView;->attachMsgId:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1673
    .local v0, msgUri:Landroid/net/Uri;
    invoke-virtual {p1}, Lcom/android/mms/model/AttachmentModel;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/mms/content/MmsPartExport;->savePart(Landroid/net/Uri;Landroid/net/Uri;)V

    .line 1674
    return-void
.end method

.method private saveAttachFiles(Ljava/util/ArrayList;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/AttachmentModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1677
    .local p1, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/AttachmentModel;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1678
    .local v3, partsUriList:Ljava/util/List;,"Ljava/util/List<Landroid/net/Uri;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/AttachmentModel;

    .line 1679
    .local v1, model:Lcom/android/mms/model/AttachmentModel;
    invoke-virtual {v1}, Lcom/android/mms/model/AttachmentModel;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1681
    .end local v1           #model:Lcom/android/mms/model/AttachmentModel;
    :cond_0
    sget-object v4, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v5, p0, Lcom/android/mms/ui/SlideView;->attachMsgId:J

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 1682
    .local v2, msgUri:Landroid/net/Uri;
    invoke-static {v2, v3}, Lcom/samsung/mms/content/MmsPartExport;->saveParts(Landroid/net/Uri;Ljava/util/List;)V

    .line 1683
    return-void
.end method

.method public static setAttachment(Lcom/android/mms/model/AttachmentModel;)V
    .locals 0
    .parameter "attachmentModel"

    .prologue
    .line 1423
    sput-object p0, Lcom/android/mms/ui/SlideView;->staticAttachment:Lcom/android/mms/model/AttachmentModel;

    .line 1424
    return-void
.end method

.method public static setAudioModel(Lcom/android/mms/model/AudioModel;)V
    .locals 2
    .parameter "audioModel"

    .prologue
    .line 1419
    const-string v0, "Mms/SlideView"

    const-string v1, "setAudioModel"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1420
    sput-object p0, Lcom/android/mms/ui/SlideView;->staticAudioModel:Lcom/android/mms/model/AudioModel;

    .line 1421
    return-void
.end method

.method public static setClickUri(Landroid/net/Uri;)V
    .locals 3
    .parameter "uri"

    .prologue
    .line 1404
    const-string v0, "Mms/SlideView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setClickUri:uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1405
    sput-object p0, Lcom/android/mms/ui/SlideView;->staticClickUri:Landroid/net/Uri;

    .line 1406
    return-void
.end method

.method public static setImageModel(Lcom/android/mms/model/ImageModel;)V
    .locals 0
    .parameter "imageModel"

    .prologue
    .line 1427
    sput-object p0, Lcom/android/mms/ui/SlideView;->staticImageModel:Lcom/android/mms/model/ImageModel;

    .line 1428
    return-void
.end method

.method public static setSlideIndex(I)V
    .locals 3
    .parameter "slideindex"

    .prologue
    .line 1409
    const-string v0, "Mms/SlideView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSlideIndex:slideindex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1410
    sput p0, Lcom/android/mms/ui/SlideView;->staticSlideIndex:I

    .line 1411
    return-void
.end method

.method public static setVideoModel(Lcom/android/mms/model/VideoModel;)V
    .locals 2
    .parameter "videoModel"

    .prologue
    .line 1414
    const-string v0, "Mms/SlideView"

    const-string v1, "setVideoModel"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1415
    sput-object p0, Lcom/android/mms/ui/SlideView;->staticVideoModel:Lcom/android/mms/model/VideoModel;

    .line 1416
    return-void
.end method

.method private setVideoView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 1687
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 1688
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1689
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 1690
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1691
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    .line 1694
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoWrapper:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 1695
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1697
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 1698
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    invoke-virtual {v0, v3}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 1701
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->isWhiteThemeATT()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1702
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/mms/ui/SlideView$11;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/SlideView$11;-><init>(Lcom/android/mms/ui/SlideView;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1710
    :cond_4
    return-void
.end method


# virtual methods
.method public addAttachmentListView(Ljava/util/ArrayList;J)V
    .locals 5
    .parameter
    .parameter "msgId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/AttachmentModel;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 1449
    .local p1, attachmentListSaved:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/AttachmentModel;>;"
    const-string v3, "Mms/SlideView"

    const-string v4, "addAttachmentListView"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1451
    if-nez p1, :cond_1

    .line 1474
    :cond_0
    return-void

    .line 1455
    :cond_1
    iput-wide p2, p0, Lcom/android/mms/ui/SlideView;->attachMsgId:J

    .line 1456
    move-object v0, p1

    .line 1457
    .local v0, attachmentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/AttachmentModel;>;"
    iput-object p1, p0, Lcom/android/mms/ui/SlideView;->mAttachmentList:Ljava/util/ArrayList;

    .line 1458
    const/4 v1, 0x0

    .line 1459
    .local v1, index:I
    const/4 v2, 0x0

    .line 1461
    .local v2, size:I
    if-eqz v0, :cond_2

    .line 1462
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1465
    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->attachmentInfoArr:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->attachmentInfoArr:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1467
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->addAttachmentTitleView()V

    .line 1468
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 1469
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/model/AttachmentModel;

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/SlideView;->addAttachmentOneView(Lcom/android/mms/model/AttachmentModel;)V

    .line 1468
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public addAttachmentOneView(Lcom/android/mms/model/AttachmentModel;)V
    .locals 19
    .parameter "attachmentSaved"

    .prologue
    .line 1535
    const-string v14, "Mms/SlideView"

    const-string v15, "addAttachmentOneView"

    invoke-static {v14, v15}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1536
    move-object/from16 v4, p1

    .line 1539
    .local v4, attachment:Lcom/android/mms/model/AttachmentModel;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 1540
    .local v8, factory:Landroid/view/LayoutInflater;
    new-instance v5, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v5, v14}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1541
    .local v5, attachmentInfo:Landroid/view/View;
    const v14, 0x7f03000d

    const/4 v15, 0x0

    invoke-virtual {v8, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 1545
    const v14, 0x7f0e0027

    invoke-virtual {v5, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1546
    .local v3, attachName:Landroid/widget/TextView;
    const v14, 0x7f0e0026

    invoke-virtual {v5, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1547
    .local v1, attachImage:Landroid/widget/ImageView;
    const v14, 0x7f0e0025

    invoke-virtual {v5, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 1548
    .local v2, attachList:Landroid/widget/LinearLayout;
    const v14, 0x7f0e0029

    invoke-virtual {v5, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageButton;

    .line 1550
    .local v13, saveButton:Landroid/widget/ImageButton;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/SlideView;->attachmentInfoArr:Ljava/util/ArrayList;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1551
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/SlideView;->attachmentInfoArr:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v11, v14, -0x1

    .line 1552
    .local v11, lastIndex_attachmentInfoArr:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/SlideView;->attachmentInfoArr:Ljava/util/ArrayList;

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v9

    .line 1555
    .local v9, height:I
    invoke-virtual {v4}, Lcom/android/mms/model/AttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v12

    .line 1558
    .local v12, name:Ljava/lang/String;
    const/4 v7, 0x0

    .line 1559
    .local v7, extension:Ljava/lang/String;
    const/16 v14, 0x2e

    invoke-virtual {v12, v14}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v10

    .line 1560
    .local v10, index:I
    if-ltz v10, :cond_0

    .line 1561
    add-int/lit8 v14, v10, 0x1

    invoke-virtual {v12, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 1563
    :cond_0
    const-string v14, "dm"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 1564
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x0

    invoke-virtual {v12, v15, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".dcf"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1568
    :cond_1
    const-string v14, "cid:"

    invoke-virtual {v12, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    const-string v14, "Cid:"

    invoke-virtual {v12, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 1569
    :cond_2
    const/4 v14, 0x4

    invoke-virtual {v12, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 1572
    :cond_3
    invoke-virtual {v3, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1575
    invoke-virtual {v4}, Lcom/android/mms/model/AttachmentModel;->getContentType()Ljava/lang/String;

    move-result-object v6

    .line 1576
    .local v6, contentType:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_5

    .line 1577
    const-string v14, "text/x-vCard"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_4

    const-string v14, "text/x-vcard"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 1578
    :cond_4
    const v14, 0x7f0200fe

    invoke-virtual {v1, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1591
    :cond_5
    :goto_0
    const v14, 0x7f0e01ad

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/mms/ui/SlideView;->mMainLinearLayout:Landroid/widget/LinearLayout;

    .line 1592
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/ui/SlideView;->mMainLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/SlideView;->attachmentInfoArr:Ljava/util/ArrayList;

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    new-instance v16, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v17, -0x1

    const/16 v18, -0x2

    invoke-direct/range {v16 .. v18}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v16

    invoke-virtual {v15, v14, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1598
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/SlideView;->attachmentInfoArr:Ljava/util/ArrayList;

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 1600
    invoke-static {v4}, Lcom/android/mms/ui/SlideView;->setAttachment(Lcom/android/mms/model/AttachmentModel;)V

    .line 1602
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/SlideView;->attachmentInfoArr:Ljava/util/ArrayList;

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    new-instance v15, Lcom/android/mms/ui/SlideView$8;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/mms/ui/SlideView$8;-><init>(Lcom/android/mms/ui/SlideView;)V

    invoke-virtual {v14, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1644
    new-instance v14, Lcom/android/mms/ui/SlideView$9;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/mms/ui/SlideView$9;-><init>(Lcom/android/mms/ui/SlideView;)V

    invoke-virtual {v2, v14}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1663
    new-instance v14, Lcom/android/mms/ui/SlideView$10;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/mms/ui/SlideView$10;-><init>(Lcom/android/mms/ui/SlideView;)V

    invoke-virtual {v13, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1669
    return-void

    .line 1579
    :cond_6
    const-string v14, "text/x-vCalendar"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 1580
    const v14, 0x7f0200fd

    invoke-virtual {v1, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1581
    :cond_7
    const-string v14, "text/x-vNote"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 1582
    const v14, 0x7f020107

    invoke-virtual {v1, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 1583
    :cond_8
    const-string v14, "text/x-vtodo"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 1584
    const v14, 0x7f020106

    invoke-virtual {v1, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 1586
    :cond_9
    const v14, 0x7f0200fc

    invoke-virtual {v1, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method

.method public addAttachmentTitleView()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 1477
    const-string v8, "Mms/SlideView"

    const-string v9, "addAttachmentTitleView"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1479
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 1480
    .local v5, factory:Landroid/view/LayoutInflater;
    new-instance v4, Landroid/view/View;

    iget-object v8, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v4, v8}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1481
    .local v4, attachmentInfo:Landroid/view/View;
    const v8, 0x7f03000d

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1483
    const v8, 0x7f0e0027

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1484
    .local v2, attachName:Landroid/widget/TextView;
    const v8, 0x7f0e0029

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    .line 1485
    .local v7, saveButton:Landroid/widget/ImageButton;
    const v8, 0x7f0e0026

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1486
    .local v0, attachImage:Landroid/widget/ImageView;
    const v8, 0x7f0e0024

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 1487
    .local v3, attachTopBorder:Landroid/widget/LinearLayout;
    const v8, 0x7f0e0025

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 1489
    .local v1, attachList:Landroid/widget/LinearLayout;
    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1490
    invoke-virtual {v3, v13}, Landroid/view/View;->setVisibility(I)V

    .line 1492
    iget-object v8, p0, Lcom/android/mms/ui/SlideView;->attachmentInfoArr:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1493
    iget-object v8, p0, Lcom/android/mms/ui/SlideView;->attachmentInfoArr:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v6, v8, -0x1

    .line 1495
    .local v6, lastIndex_attachmentInfoArr:I
    iget v8, p0, Lcom/android/mms/ui/SlideView;->mScale:F

    float-to-int v8, v8

    mul-int/lit8 v8, v8, 0x9

    invoke-virtual {v2, v8, v13, v13, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1499
    const v8, 0x7f0a0305

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(I)V

    .line 1500
    const v8, 0x7f0e01ad

    invoke-virtual {p0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/android/mms/ui/SlideView;->mMainLinearLayout:Landroid/widget/LinearLayout;

    .line 1501
    iget-object v9, p0, Lcom/android/mms/ui/SlideView;->mMainLinearLayout:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/android/mms/ui/SlideView;->attachmentInfoArr:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x2

    invoke-direct {v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v8, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1507
    iget-object v8, p0, Lcom/android/mms/ui/SlideView;->attachmentInfoArr:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8, v13}, Landroid/view/View;->setVisibility(I)V

    .line 1509
    new-instance v8, Lcom/android/mms/ui/SlideView$6;

    invoke-direct {v8, p0}, Lcom/android/mms/ui/SlideView$6;-><init>(Lcom/android/mms/ui/SlideView;)V

    invoke-virtual {v1, v8}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1527
    new-instance v8, Lcom/android/mms/ui/SlideView$7;

    invoke-direct {v8, p0}, Lcom/android/mms/ui/SlideView$7;-><init>(Lcom/android/mms/ui/SlideView;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1532
    return-void
.end method

.method public adjustSlideBodyDisplay()V
    .locals 3

    .prologue
    .line 1755
    const/4 v1, 0x4

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSizeIndex(Landroid/content/Context;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSize(II)F

    move-result v0

    .line 1756
    .local v0, nSize:F
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 1757
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1768
    :cond_0
    return-void
.end method

.method public calculate(II)Landroid/widget/LinearLayout$LayoutParams;
    .locals 4
    .parameter "width"
    .parameter "height"

    .prologue
    .line 395
    int-to-float v2, p1

    int-to-float v3, p2

    div-float v1, v2, v3

    .line 396
    .local v1, ratio:F
    if-ge p1, p2, :cond_4

    .line 397
    sget v2, Lcom/android/mms/ui/SlideView;->MEDIA_MINIMUM_LENGTH:I

    if-ge p2, v2, :cond_1

    .line 398
    sget p2, Lcom/android/mms/ui/SlideView;->MEDIA_MINIMUM_LENGTH:I

    .line 399
    int-to-float v2, p2

    mul-float/2addr v2, v1

    float-to-int p1, v2

    .line 436
    :cond_0
    :goto_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 437
    .local v0, mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    return-object v0

    .line 400
    .end local v0           #mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    sget v2, Lcom/android/mms/ui/SlideView;->MEDIA_MAXIMUM_LENGTH:I

    if-le p2, v2, :cond_2

    .line 401
    sget p2, Lcom/android/mms/ui/SlideView;->MEDIA_MAXIMUM_LENGTH:I

    .line 402
    int-to-float v2, p2

    mul-float/2addr v2, v1

    float-to-int p1, v2

    goto :goto_0

    .line 404
    :cond_2
    sget v2, Lcom/android/mms/ui/SlideView;->MEDIA_MINIMUM_WIDTH:I

    if-ge p1, v2, :cond_0

    .line 405
    sget v2, Lcom/android/mms/ui/SlideView;->MEDIA_MINIMUM_WIDTH:I

    int-to-float v2, v2

    div-float/2addr v2, v1

    float-to-int v2, v2

    sget v3, Lcom/android/mms/ui/SlideView;->MEDIA_MINIMUM_WIDTH:I

    if-ge v2, v3, :cond_3

    .line 406
    sget p1, Lcom/android/mms/ui/SlideView;->MEDIA_MINIMUM_WIDTH:I

    .line 407
    int-to-float v2, p1

    div-float/2addr v2, v1

    float-to-int p2, v2

    goto :goto_0

    .line 408
    :cond_3
    sget v2, Lcom/android/mms/ui/SlideView;->MEDIA_MAXIMUM_LENGTH:I

    if-le p2, v2, :cond_0

    .line 409
    sget p2, Lcom/android/mms/ui/SlideView;->MEDIA_MAXIMUM_LENGTH:I

    .line 410
    int-to-float v2, p2

    mul-float/2addr v2, v1

    float-to-int p1, v2

    goto :goto_0

    .line 415
    :cond_4
    sget v2, Lcom/android/mms/ui/SlideView;->MEDIA_MINIMUM_WIDTH:I

    if-ge p1, v2, :cond_5

    .line 416
    sget p1, Lcom/android/mms/ui/SlideView;->MEDIA_MINIMUM_WIDTH:I

    .line 417
    int-to-float v2, p1

    div-float/2addr v2, v1

    float-to-int p2, v2

    goto :goto_0

    .line 418
    :cond_5
    sget v2, Lcom/android/mms/ui/SlideView;->MEDIA_MAXIMUM_WIDTH:I

    if-le p1, v2, :cond_6

    .line 419
    sget p1, Lcom/android/mms/ui/SlideView;->MEDIA_MAXIMUM_WIDTH:I

    .line 420
    int-to-float v2, p1

    div-float/2addr v2, v1

    float-to-int p2, v2

    goto :goto_0

    .line 422
    :cond_6
    sget v2, Lcom/android/mms/ui/SlideView;->MEDIA_MINIMUM_LENGTH:I

    if-ge p2, v2, :cond_8

    .line 423
    sget v2, Lcom/android/mms/ui/SlideView;->MEDIA_MINIMUM_LENGTH:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    sget v3, Lcom/android/mms/ui/SlideView;->MEDIA_MINIMUM_LENGTH:I

    if-ge v2, v3, :cond_7

    .line 424
    sget p2, Lcom/android/mms/ui/SlideView;->MEDIA_MINIMUM_LENGTH:I

    .line 425
    int-to-float v2, p2

    mul-float/2addr v2, v1

    float-to-int p1, v2

    goto :goto_0

    .line 426
    :cond_7
    sget v2, Lcom/android/mms/ui/SlideView;->MEDIA_MAXIMUM_WIDTH:I

    if-le p1, v2, :cond_0

    .line 427
    sget p1, Lcom/android/mms/ui/SlideView;->MEDIA_MAXIMUM_WIDTH:I

    .line 428
    int-to-float v2, p1

    div-float/2addr v2, v1

    float-to-int p2, v2

    goto :goto_0

    .line 430
    :cond_8
    sget v2, Lcom/android/mms/ui/SlideView;->MEDIA_MAXIMUM_WIDTH:I

    if-le p1, v2, :cond_0

    .line 431
    sget p1, Lcom/android/mms/ui/SlideView;->MEDIA_MAXIMUM_WIDTH:I

    .line 432
    int-to-float v2, p1

    div-float/2addr v2, v1

    float-to-int p2, v2

    goto :goto_0
.end method

.method public hasSound()Z
    .locals 1

    .prologue
    .line 1773
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mHasSound:Z

    return v0
.end method

.method public initAttachmentListView()V
    .locals 5

    .prologue
    .line 1431
    const-string v2, "Mms/SlideView"

    const-string v3, "initAttachmentListView()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1432
    const v2, 0x7f0e01ad

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/mms/ui/SlideView;->mMainLinearLayout:Landroid/widget/LinearLayout;

    .line 1434
    const/4 v0, 0x0

    .line 1435
    .local v0, index:I
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->attachmentInfoArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1437
    .local v1, numOfAttach:I
    const-string v2, "Mms/SlideView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "numOfAttach="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1438
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 1439
    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mMainLinearLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->attachmentInfoArr:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1438
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1442
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->attachmentInfoArr:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1444
    return-void
.end method

.method public isSoundMediaPlaying()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1736
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    if-eqz v1, :cond_1

    .line 1737
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1745
    :cond_0
    :goto_0
    return v0

    .line 1740
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_2

    .line 1741
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1745
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 1013
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 1015
    const v0, 0x7f0e01ac

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mMainScrollView:Landroid/widget/ScrollView;

    .line 1017
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1021
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 1023
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mSizeChangedListener:Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;

    if-eqz v0, :cond_0

    .line 1027
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mSizeChangedListener:Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;

    iget v1, p0, Lcom/android/mms/ui/SlideView;->mAudioViewHeight:I

    sub-int v1, p2, v1

    invoke-interface {v0, p1, v1}, Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;->onSizeChanged(II)V

    .line 1029
    :cond_0
    return-void
.end method

.method public pauseAudio()V
    .locals 1

    .prologue
    .line 875
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mIsPrepared:Z

    if-eqz v0, :cond_0

    .line 876
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 877
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 880
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mStartWhenPrepared:Z

    .line 881
    return-void
.end method

.method public pauseMovie()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1121
    iput-boolean v4, p0, Lcom/android/mms/ui/SlideView;->mStartAgifImage:Z

    .line 1122
    iput-boolean v4, p0, Lcom/android/mms/ui/SlideView;->mAleadyResumed:Z

    .line 1123
    iget-boolean v2, p0, Lcom/android/mms/ui/SlideView;->mAleadyPasued:Z

    if-eqz v2, :cond_1

    .line 1143
    :cond_0
    :goto_0
    return-void

    .line 1127
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1128
    .local v0, pauseTime:J
    iget-wide v2, p0, Lcom/android/mms/ui/SlideView;->mDiffTime:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/android/mms/ui/SlideView;->mDiffTime:J

    .line 1129
    iput-boolean v5, p0, Lcom/android/mms/ui/SlideView;->mPause:Z

    .line 1130
    iput-boolean v4, p0, Lcom/android/mms/ui/SlideView;->mResume:Z

    .line 1132
    iput-boolean v5, p0, Lcom/android/mms/ui/SlideView;->mAleadyPasued:Z

    .line 1134
    iget-wide v2, p0, Lcom/android/mms/ui/SlideView;->mDiffTime:J

    iput-wide v2, p0, Lcom/android/mms/ui/SlideView;->mRecentPausedTime:J

    .line 1135
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v2, :cond_0

    .line 1139
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mMovieView:Lcom/android/mms/ui/SlideView$MovieView;

    if-eqz v2, :cond_0

    .line 1140
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mMovieView:Lcom/android/mms/ui/SlideView$MovieView;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method public pauseVideo()V
    .locals 1

    .prologue
    .line 925
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    if-eqz v0, :cond_0

    .line 929
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 931
    :cond_0
    return-void
.end method

.method public pauseVideo(Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "bitmap"

    .prologue
    const/16 v2, 0x8

    .line 1713
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    if-eqz v1, :cond_2

    .line 1715
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 1716
    .local v0, videoWidth:I
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->pause()V

    .line 1718
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mVideoWrapper:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 1719
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mVideoWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1721
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    if-eqz v1, :cond_1

    .line 1722
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 1724
    :cond_1
    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/mms/ui/SlideView;->mIsTextTop:Z

    invoke-virtual {p0, v1, p1, v2}, Lcom/android/mms/ui/SlideView;->setImage(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    .line 1725
    iget v1, p0, Lcom/android/mms/ui/SlideView;->mVideoLeft:I

    iget v2, p0, Lcom/android/mms/ui/SlideView;->mVideoTop:I

    iget v3, p0, Lcom/android/mms/ui/SlideView;->mVideoHeight:I

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/android/mms/ui/SlideView;->setImageRegionForVideostop(IIII)V

    .line 1727
    .end local v0           #videoWidth:I
    :cond_2
    return-void
.end method

.method public reset()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 947
    iput v4, p0, Lcom/android/mms/ui/SlideView;->mTextHeight:I

    .line 948
    iput v4, p0, Lcom/android/mms/ui/SlideView;->mImageHeight:I

    .line 949
    iput v4, p0, Lcom/android/mms/ui/SlideView;->mVideoHeight:I

    .line 951
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 952
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 953
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mTextViewPort:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 954
    iput-object v2, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    .line 957
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 958
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 959
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 960
    iput-object v2, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    .line 963
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageWrapper:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 964
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 965
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 966
    iput-object v2, p0, Lcom/android/mms/ui/SlideView;->mImageWrapper:Landroid/widget/LinearLayout;

    .line 967
    iput-object v2, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    .line 970
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_3

    .line 971
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->stopAudio()V

    .line 974
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoWrapper:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    .line 975
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 976
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 977
    iput-object v2, p0, Lcom/android/mms/ui/SlideView;->mVideoWrapper:Landroid/widget/LinearLayout;

    .line 978
    iput-object v2, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    .line 982
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMovie:Landroid/graphics/Movie;

    if-eqz v0, :cond_5

    .line 983
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAgifBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideView;->stopMovie(Landroid/graphics/Bitmap;)V

    .line 986
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMovieView:Lcom/android/mms/ui/SlideView$MovieView;

    if-eqz v0, :cond_6

    .line 987
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMovieView:Lcom/android/mms/ui/SlideView$MovieView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 988
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mMovieView:Lcom/android/mms/ui/SlideView$MovieView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 989
    iput-object v2, p0, Lcom/android/mms/ui/SlideView;->mMovieView:Lcom/android/mms/ui/SlideView$MovieView;

    .line 993
    :cond_6
    invoke-direct {p0}, Lcom/android/mms/ui/SlideView;->hideAudioInfo()V

    .line 995
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mPageInfoView:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 996
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mPageInfoView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 999
    :cond_7
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMainScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_8

    .line 1000
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMainScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v4, v4}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 1003
    :cond_8
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioArea:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_9

    .line 1004
    iput-object v2, p0, Lcom/android/mms/ui/SlideView;->mAudioArea:Landroid/widget/LinearLayout;

    .line 1005
    :cond_9
    return-void
.end method

.method public resetAgifState()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1160
    iput-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mResume:Z

    .line 1161
    iput-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mPause:Z

    .line 1162
    iput-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mAleadyPasued:Z

    .line 1163
    iput-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mAleadyResumed:Z

    .line 1165
    return-void
.end method

.method public seekAudio(I)V
    .locals 1
    .parameter "seekTo"

    .prologue
    .line 884
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mIsPrepared:Z

    if-eqz v0, :cond_0

    .line 885
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 889
    :goto_0
    return-void

    .line 887
    :cond_0
    iput p1, p0, Lcom/android/mms/ui/SlideView;->mSeekWhenPrepared:I

    goto :goto_0
.end method

.method public seekVideo(I)V
    .locals 1
    .parameter "seekTo"

    .prologue
    .line 934
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    if-eqz v0, :cond_0

    .line 935
    if-lez p1, :cond_0

    .line 939
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 942
    :cond_0
    return-void
.end method

.method public setAgifStopImage(Landroid/graphics/Bitmap;Z)V
    .locals 7
    .parameter "bitmap"
    .parameter "toptext"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, -0x2

    .line 504
    iput-boolean p2, p0, Lcom/android/mms/ui/SlideView;->mIsTextTop:Z

    .line 505
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageWrapper:Landroid/widget/LinearLayout;

    .line 506
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageWrapper:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 507
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageWrapper:Landroid/widget/LinearLayout;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 508
    if-eqz p2, :cond_2

    .line 509
    const v1, 0x7f0e0218

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    .line 513
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    .line 514
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mImageWrapper:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 519
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    .line 520
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageWrapper:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 522
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/android/mms/ui/SlideView;->mviewpadding:I

    iget v3, p0, Lcom/android/mms/ui/SlideView;->mviewpadding:I

    invoke-virtual {v1, v6, v2, v6, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 523
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    const v2, 0x7f030044

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 529
    :cond_0
    if-nez p1, :cond_1

    .line 530
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020272

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 533
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 537
    :goto_1
    return-void

    .line 511
    :cond_2
    const v1, 0x7f0e0217

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    goto :goto_0

    .line 534
    :catch_0
    move-exception v0

    .line 535
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const-string v1, "Mms/SlideView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OutOfMemoryError"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setAgifStopImageRegion(IIII)V
    .locals 2
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 541
    iput p4, p0, Lcom/android/mms/ui/SlideView;->mImageHeight:I

    .line 542
    iput p3, p0, Lcom/android/mms/ui/SlideView;->mImageWidth:I

    .line 543
    iget v0, p0, Lcom/android/mms/ui/SlideView;->mSubjectHeight:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/android/mms/ui/SlideView;->mImageTop:I

    .line 544
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageWrapper:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageWrapper:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, p3, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 547
    :cond_0
    return-void
.end method

.method public setAudio(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .parameter "audio"
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .local p3, extras:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 679
    if-nez p1, :cond_0

    .line 680
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Audio URI may not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 687
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    .line 688
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 689
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 690
    iput-object v3, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    .line 692
    :cond_1
    iput-boolean v4, p0, Lcom/android/mms/ui/SlideView;->mIsPrepared:Z

    .line 695
    :try_start_0
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    .line 696
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 697
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 698
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 699
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 700
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 711
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/mms/ui/SlideView;->initAudioInfoView(Ljava/lang/String;)V

    .line 712
    return-void

    .line 701
    :catch_0
    move-exception v0

    .line 702
    .local v0, e:Ljava/io/IOException;
    const-string v1, "Mms/SlideView"

    const-string v2, "Unexpected IOException."

    invoke-static {v1, v2, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 703
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 704
    iput-object v3, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    .line 707
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v3, 0x7f0a012c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public setHasSound(Z)V
    .locals 0
    .parameter "set"

    .prologue
    .line 1777
    iput-boolean p1, p0, Lcom/android/mms/ui/SlideView;->mHasSound:Z

    .line 1778
    return-void
.end method

.method public setImage(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 7
    .parameter "name"
    .parameter "bitmap"
    .parameter "toptext"

    .prologue
    const/4 v6, 0x0

    .line 442
    iput-boolean p3, p0, Lcom/android/mms/ui/SlideView;->mIsTextTop:Z

    .line 443
    if-eqz p3, :cond_2

    .line 444
    const v1, 0x7f0e0218

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    .line 450
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    .line 451
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    .line 452
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 454
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/android/mms/ui/SlideView;->mviewpadding:I

    iget v3, p0, Lcom/android/mms/ui/SlideView;->mviewpadding:I

    invoke-virtual {v1, v6, v2, v6, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 459
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    const v2, 0x7f030044

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 462
    :cond_0
    if-nez p2, :cond_1

    .line 463
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020272

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 466
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    :goto_1
    return-void

    .line 446
    :cond_2
    const v1, 0x7f0e0217

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    goto :goto_0

    .line 467
    :catch_0
    move-exception v0

    .line 468
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const-string v1, "Mms/SlideView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OutOfMemoryError"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setImageRegion(IIII)V
    .locals 2
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 474
    iput p4, p0, Lcom/android/mms/ui/SlideView;->mImageHeight:I

    .line 475
    iput p3, p0, Lcom/android/mms/ui/SlideView;->mImageWidth:I

    .line 476
    iget v0, p0, Lcom/android/mms/ui/SlideView;->mSubjectHeight:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/android/mms/ui/SlideView;->mImageTop:I

    .line 479
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p3

    .line 481
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p4

    .line 484
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, p3, p4}, Lcom/android/mms/ui/SlideView;->calculate(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 487
    :cond_0
    return-void
.end method

.method public setImageRegionFit(Ljava/lang/String;)V
    .locals 0
    .parameter "fit"

    .prologue
    .line 553
    return-void
.end method

.method public setImageRegionForVideostop(IIII)V
    .locals 2
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 491
    iput p4, p0, Lcom/android/mms/ui/SlideView;->mImageHeight:I

    .line 492
    iput p3, p0, Lcom/android/mms/ui/SlideView;->mImageWidth:I

    .line 493
    iget v0, p0, Lcom/android/mms/ui/SlideView;->mSubjectHeight:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/android/mms/ui/SlideView;->mImageTop:I

    .line 495
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 496
    iget p4, p0, Lcom/android/mms/ui/SlideView;->VIDEO_MAXIMUM_HEIGHT:I

    .line 497
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, p3, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 500
    :cond_0
    return-void
.end method

.method public setImageVisibility(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 825
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 826
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 828
    :cond_0
    return-void

    .line 826
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setLocation(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "location"
    .parameter "locationName"
    .parameter "locationAddr"
    .parameter "Phone"

    .prologue
    .line 1783
    return-void
.end method

.method public setMovie(Landroid/graphics/Movie;Landroid/graphics/Bitmap;Z)V
    .locals 8
    .parameter "movie"
    .parameter "bitmap"
    .parameter "toptext"

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1038
    iput-boolean p3, p0, Lcom/android/mms/ui/SlideView;->mIsTextTop:Z

    .line 1039
    if-eqz p3, :cond_2

    .line 1040
    const v0, 0x7f0e0218

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    .line 1046
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMovieView:Lcom/android/mms/ui/SlideView$MovieView;

    if-nez v0, :cond_0

    .line 1047
    new-instance v0, Lcom/android/mms/ui/SlideView$MovieView;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/SlideView$MovieView;-><init>(Lcom/android/mms/ui/SlideView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mMovieView:Lcom/android/mms/ui/SlideView$MovieView;

    .line 1050
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mMovieView:Lcom/android/mms/ui/SlideView$MovieView;

    invoke-virtual {p1}, Landroid/graphics/Movie;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Movie;->height()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/mms/ui/SlideView;->calculate(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1051
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/android/mms/ui/SlideView;->mviewpadding:I

    iget v2, p0, Lcom/android/mms/ui/SlideView;->mviewpadding:I

    invoke-virtual {v0, v4, v1, v4, v2}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 1052
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMovieView:Lcom/android/mms/ui/SlideView$MovieView;

    const v1, 0x7f030044

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1057
    :cond_0
    iput-object p1, p0, Lcom/android/mms/ui/SlideView;->mMovie:Landroid/graphics/Movie;

    .line 1058
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMovie:Landroid/graphics/Movie;

    if-eqz v0, :cond_1

    .line 1059
    iput-wide v6, p0, Lcom/android/mms/ui/SlideView;->mDiffTime:J

    .line 1060
    iput-wide v6, p0, Lcom/android/mms/ui/SlideView;->mMovieStart:J

    .line 1061
    iput-boolean v5, p0, Lcom/android/mms/ui/SlideView;->mMoviePlay:Z

    .line 1062
    iput-boolean v5, p0, Lcom/android/mms/ui/SlideView;->mStartAgifImage:Z

    .line 1063
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->resetAgifState()V

    .line 1065
    :cond_1
    return-void

    .line 1042
    :cond_2
    const v0, 0x7f0e0217

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    goto :goto_0
.end method

.method public setMovieRegion(IIII)V
    .locals 3
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1071
    iget v0, p0, Lcom/android/mms/ui/SlideView;->mSubjectHeight:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/android/mms/ui/SlideView;->mImageTop:I

    .line 1072
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v0}, Landroid/graphics/Movie;->height()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/SlideView;->mImageHeight:I

    .line 1073
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v0}, Landroid/graphics/Movie;->width()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/SlideView;->mImageWidth:I

    .line 1074
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMovieView:Lcom/android/mms/ui/SlideView$MovieView;

    if-eqz v0, :cond_0

    .line 1078
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMovieView:Lcom/android/mms/ui/SlideView$MovieView;

    iget v1, p0, Lcom/android/mms/ui/SlideView;->mImageWidth:I

    iget v2, p0, Lcom/android/mms/ui/SlideView;->mImageHeight:I

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/ui/SlideView;->calculate(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1080
    :cond_0
    return-void
.end method

.method public setOnSizeChangedListener(Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 1032
    iput-object p1, p0, Lcom/android/mms/ui/SlideView;->mSizeChangedListener:Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;

    .line 1033
    return-void
.end method

.method public setPageNumber(II)V
    .locals 6
    .parameter "current"
    .parameter "total"

    .prologue
    .line 1171
    const v4, 0x7f0e01a8

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/SlideView;->mPageInfoView:Landroid/view/View;

    .line 1172
    iget-object v4, p0, Lcom/android/mms/ui/SlideView;->mPageInfoView:Landroid/view/View;

    const v5, 0x7f0e01aa

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1173
    .local v0, pageNumber:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/android/mms/ui/SlideView;->mPageInfoView:Landroid/view/View;

    const v5, 0x7f0e01ab

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1174
    .local v1, subject:Landroid/widget/TextView;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1175
    .local v2, subjectSB:Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/android/mms/ui/SlideView;->mSubject:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1176
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1177
    .local v3, textToSpannify:Ljava/lang/StringBuilder;
    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1178
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1179
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1180
    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1181
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1186
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->formatMessage_smiley(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1189
    iget-object v4, p0, Lcom/android/mms/ui/SlideView;->mPageInfoView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1190
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1191
    return-void
.end method

.method public setSlideViewSubject(Ljava/lang/String;)V
    .locals 0
    .parameter "subject"

    .prologue
    .line 1194
    iput-object p1, p0, Lcom/android/mms/ui/SlideView;->mSubject:Ljava/lang/String;

    .line 1195
    return-void
.end method

.method public setSmilPlayer(Lcom/android/mms/dom/smil/SmilPlayer;)V
    .locals 0
    .parameter "sPlayer"

    .prologue
    .line 1198
    iput-object p1, p0, Lcom/android/mms/ui/SlideView;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    .line 1199
    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 11
    .parameter "name"
    .parameter "text"
    .parameter "isAttachment"
    .parameter "toptext"

    .prologue
    const/16 v7, 0x4e20

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 715
    iput-boolean p4, p0, Lcom/android/mms/ui/SlideView;->mIsTextTop:Z

    .line 716
    if-eqz p4, :cond_5

    .line 717
    const v4, 0x7f0e0217

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/mms/ui/SlideView;->mTextViewPort:Landroid/widget/LinearLayout;

    .line 723
    :goto_0
    iget-object v4, p0, Lcom/android/mms/ui/SlideView;->mTextViewPort:Landroid/widget/LinearLayout;

    iget v5, p0, Lcom/android/mms/ui/SlideView;->mviewpadding:I

    iget v6, p0, Lcom/android/mms/ui/SlideView;->mviewpadding:I

    invoke-virtual {v4, v8, v5, v8, v6}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 724
    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    .line 726
    const-string v4, "Direct"

    invoke-static {}, Lcom/android/mms/MmsConfig;->getLinkifyDAType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 728
    iget-object v4, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/mms/ui/SlideView;->mOnBodyTextTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 729
    iget-object v4, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/mms/ui/SlideView;->mOnBodyTextClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 730
    iget-object v4, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setLinksClickable(Z)V

    .line 733
    :cond_0
    iget-object v4, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 736
    iget-object v4, p0, Lcom/android/mms/ui/SlideView;->mTextViewPort:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-nez v4, :cond_1

    .line 737
    iget-object v4, p0, Lcom/android/mms/ui/SlideView;->mTextViewPort:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 739
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v7, :cond_6

    .line 741
    :goto_1
    if-nez p3, :cond_2

    .line 742
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 743
    iget-object v4, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    const/16 v5, 0xf

    invoke-static {v4, v5}, Lcom/android/mms/util/UIUtils;->addLinks(Landroid/widget/TextView;I)V

    .line 747
    :cond_2
    sget v0, Lcom/android/mms/ui/SlideshowActivity;->displayDensity:F

    .line 748
    .local v0, density:F
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "font_size"

    invoke-static {v4, v5, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 750
    .local v1, mainSettingFontSizeIndex:I
    iget-object v4, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08002e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 751
    iget-object v4, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    const/4 v5, 0x4

    iget-object v6, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSizeIndex(Landroid/content/Context;)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getFontSize(II)F

    move-result v5

    invoke-virtual {v4, v9, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 753
    iget-object v4, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    const/high16 v5, 0x4000

    mul-float/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f80

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 754
    iget-object v4, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    const-string v5, "#1586C3"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 756
    invoke-static {}, Lcom/android/mms/MmsConfig;->isWhiteThemeATT()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 757
    iget-object v4, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    const-string v5, "#164E76"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 760
    :cond_3
    iget-object v4, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    invoke-direct {p0, p2}, Lcom/android/mms/ui/SlideView;->makeSmiley(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 762
    iget-object v4, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 763
    iget-object v4, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 765
    const-string v4, "Extended"

    invoke-static {}, Lcom/android/mms/MmsConfig;->getLinkifyDAType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 766
    const-class v4, Landroid/widget/TextView;

    const-string v5, "setExtendedActionBar"

    new-array v6, v9, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Boolean;

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Lcom/android/mms/util/MethodReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 767
    .local v2, setExtendedActionBar:Ljava/lang/reflect/Method;
    iget-object v4, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v2, v5}, Lcom/android/mms/util/MethodReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 769
    const-class v4, Landroid/widget/TextView;

    const-string v5, "setExtendedActionBarSelection"

    new-array v6, v10, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Integer;

    aput-object v7, v6, v8

    const-class v7, Ljava/lang/Integer;

    aput-object v7, v6, v9

    invoke-static {v4, v5, v6}, Lcom/android/mms/util/MethodReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 770
    .local v3, setExtendedActionBarSelection:Ljava/lang/reflect/Method;
    iget-object v4, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    new-array v5, v10, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    iget-object v6, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->length()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v3, v5}, Lcom/android/mms/util/MethodReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    .end local v2           #setExtendedActionBar:Ljava/lang/reflect/Method;
    .end local v3           #setExtendedActionBarSelection:Ljava/lang/reflect/Method;
    :cond_4
    return-void

    .line 719
    .end local v0           #density:F
    .end local v1           #mainSettingFontSizeIndex:I
    :cond_5
    const v4, 0x7f0e0218

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/mms/ui/SlideView;->mTextViewPort:Landroid/widget/LinearLayout;

    goto/16 :goto_0

    .line 739
    :cond_6
    invoke-virtual {p2, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_1
.end method

.method public setTextRegion(IIIIZ)V
    .locals 4
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "hasaudio"

    .prologue
    .line 788
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 790
    iput p4, p0, Lcom/android/mms/ui/SlideView;->mTextHeight:I

    .line 791
    iget v0, p0, Lcom/android/mms/ui/SlideView;->mSubjectHeight:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/android/mms/ui/SlideView;->mTextTop:I

    .line 792
    iget v0, p0, Lcom/android/mms/ui/SlideView;->mSubjectHeight:I

    sub-int/2addr p4, v0

    .line 794
    iget v0, p0, Lcom/android/mms/ui/SlideView;->mImageHeight:I

    if-lez v0, :cond_3

    .line 795
    iget v0, p0, Lcom/android/mms/ui/SlideView;->mImageHeight:I

    add-int/2addr v0, p4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 796
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/mms/ui/SlideView;->mImageHeight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/mms/ui/SlideView;->mSubjectHeight:I

    sub-int p4, v0, v1

    .line 803
    :cond_0
    :goto_0
    if-eqz p5, :cond_1

    .line 804
    iget v0, p0, Lcom/android/mms/ui/SlideView;->mAudioViewHeight:I

    sub-int/2addr p4, v0

    .line 806
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mTextViewPort:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 809
    :cond_2
    return-void

    .line 798
    :cond_3
    iget v0, p0, Lcom/android/mms/ui/SlideView;->mVideoHeight:I

    if-lez v0, :cond_0

    .line 799
    iget v0, p0, Lcom/android/mms/ui/SlideView;->mVideoHeight:I

    add-int/2addr v0, p4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 800
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/mms/ui/SlideView;->mVideoHeight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/mms/ui/SlideView;->mSubjectHeight:I

    sub-int p4, v0, v1

    goto :goto_0
.end method

.method public setTextVisibility(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 831
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 832
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 834
    :cond_0
    return-void

    .line 832
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setVideo(Ljava/lang/String;Landroid/net/Uri;Z)V
    .locals 7
    .parameter "name"
    .parameter "video"
    .parameter "toptext"

    .prologue
    const/4 v6, -0x2

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 561
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mms/ui/SlideView;->mVideoWrapper:Landroid/widget/LinearLayout;

    .line 562
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mVideoWrapper:Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 563
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mVideoWrapper:Landroid/widget/LinearLayout;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 564
    iput-boolean p3, p0, Lcom/android/mms/ui/SlideView;->mIsTextTop:Z

    .line 565
    if-eqz p3, :cond_0

    .line 566
    const v1, 0x7f0e0218

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    .line 570
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mVideoWrapper:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 572
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/android/mms/ui/SlideView;->mviewpadding:I

    iget v3, p0, Lcom/android/mms/ui/SlideView;->mviewpadding:I

    invoke-virtual {v1, v4, v2, v4, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 577
    new-instance v1, Lcom/android/mms/ui/TestVideoView;

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/mms/ui/TestVideoView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    .line 591
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mVideoWrapper:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 594
    const/4 v0, 0x0

    .line 595
    .local v0, rPadding:I
    iget v1, p0, Lcom/android/mms/ui/SlideView;->VIDEO_WRAPPER_PADDING:F

    iget v2, p0, Lcom/android/mms/ui/SlideView;->mScale:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 596
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mVideoWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4, v4, v0, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 604
    invoke-static {}, Lcom/android/mms/MmsConfig;->isWhiteThemeATT()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 605
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 613
    :goto_1
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    invoke-virtual {v1, p2}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 614
    return-void

    .line 568
    .end local v0           #rPadding:I
    :cond_0
    const v1, 0x7f0e0217

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    goto :goto_0

    .line 608
    .restart local v0       #rPadding:I
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1
.end method

.method public setVideoRegion(IIII)V
    .locals 2
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 812
    iput p4, p0, Lcom/android/mms/ui/SlideView;->mVideoHeight:I

    .line 813
    iput p2, p0, Lcom/android/mms/ui/SlideView;->mVideoTop:I

    .line 814
    iput p1, p0, Lcom/android/mms/ui/SlideView;->mVideoLeft:I

    .line 815
    iput p3, p0, Lcom/android/mms/ui/SlideView;->mVideoWidth:I

    .line 816
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoWrapper:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 818
    iget p4, p0, Lcom/android/mms/ui/SlideView;->VIDEO_MAXIMUM_HEIGHT:I

    .line 819
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoWrapper:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, p3, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 820
    iput p4, p0, Lcom/android/mms/ui/SlideView;->mVideoHeight:I

    .line 822
    :cond_0
    return-void
.end method

.method public setVideoVisibility(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 838
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    if-eqz v0, :cond_0

    .line 839
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 841
    :cond_0
    return-void

    .line 839
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setVisibility(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 1009
    return-void
.end method

.method public startAudio()V
    .locals 1

    .prologue
    .line 844
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mIsPrepared:Z

    if-eqz v0, :cond_0

    .line 845
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 846
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mStartWhenPrepared:Z

    .line 847
    invoke-direct {p0}, Lcom/android/mms/ui/SlideView;->displayAudioInfo()V

    .line 851
    :goto_0
    return-void

    .line 849
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mStartWhenPrepared:Z

    goto :goto_0
.end method

.method public startMovie()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1084
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 1085
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1086
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1087
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    .line 1090
    :cond_0
    iput-boolean v5, p0, Lcom/android/mms/ui/SlideView;->mMoviePlay:Z

    .line 1091
    iput-boolean v4, p0, Lcom/android/mms/ui/SlideView;->mAleadyPasued:Z

    .line 1092
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/mms/ui/SlideView;->mRecentPausedTime:J

    .line 1093
    iget-boolean v2, p0, Lcom/android/mms/ui/SlideView;->mAleadyResumed:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/mms/ui/SlideView;->mStartAgifImage:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/mms/ui/SlideView;->mPause:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/mms/ui/SlideView;->mDispatchDrawCalled:Z

    if-eqz v2, :cond_1

    .line 1117
    :goto_0
    return-void

    .line 1097
    :cond_1
    iget-boolean v2, p0, Lcom/android/mms/ui/SlideView;->mPause:Z

    if-eqz v2, :cond_2

    .line 1099
    iput-boolean v4, p0, Lcom/android/mms/ui/SlideView;->mStartAgifImage:Z

    .line 1100
    iput-boolean v5, p0, Lcom/android/mms/ui/SlideView;->mResume:Z

    .line 1101
    iput-boolean v4, p0, Lcom/android/mms/ui/SlideView;->mPause:Z

    .line 1103
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1104
    .local v0, resumeTime:J
    iget-wide v2, p0, Lcom/android/mms/ui/SlideView;->mDiffTime:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/android/mms/ui/SlideView;->mDiffTime:J

    .line 1107
    .end local v0           #resumeTime:J
    :cond_2
    iget-boolean v2, p0, Lcom/android/mms/ui/SlideView;->mDispatchDrawCalled:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mMovieView:Lcom/android/mms/ui/SlideView$MovieView;

    if-eqz v2, :cond_4

    .line 1108
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v2, :cond_3

    .line 1111
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mMovieView:Lcom/android/mms/ui/SlideView$MovieView;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 1113
    :cond_3
    const-string v2, "Mms/SlideView"

    const-string v3, "mCanvas is null"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1116
    :cond_4
    const-string v2, "Mms/SlideView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMovieView = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/SlideView;->mMovieView:Lcom/android/mms/ui/SlideView$MovieView;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startVideo()V
    .locals 2

    .prologue
    .line 892
    invoke-direct {p0}, Lcom/android/mms/ui/SlideView;->setVideoView()V

    .line 893
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    if-eqz v0, :cond_0

    .line 898
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/ui/SlideView;->mVideoStartTime:J

    .line 900
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 902
    :cond_0
    return-void
.end method

.method public stopAudio()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 854
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mIsPrepared:Z

    if-eqz v0, :cond_1

    .line 855
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 856
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 857
    iput-object v2, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    .line 872
    :cond_0
    :goto_0
    return-void

    .line 861
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mIsPrepared:Z

    if-nez v0, :cond_2

    .line 862
    iput-boolean v1, p0, Lcom/android/mms/ui/SlideView;->mStopWhenPrepared:Z

    goto :goto_0

    .line 864
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 866
    iput-boolean v1, p0, Lcom/android/mms/ui/SlideView;->mStopWhenPrepared:Z

    .line 867
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 868
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 869
    iput-object v2, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    .line 870
    const-string v0, "Mms/SlideView"

    const-string v1, "Stop the audio player"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopMovie(Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "bitmap"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 1146
    iput-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mMoviePlay:Z

    .line 1147
    iput-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mStartAgifImage:Z

    .line 1148
    iput-object p1, p0, Lcom/android/mms/ui/SlideView;->mAgifBitmap:Landroid/graphics/Bitmap;

    .line 1150
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMovieView:Lcom/android/mms/ui/SlideView$MovieView;

    if-eqz v0, :cond_0

    .line 1151
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMovieView:Lcom/android/mms/ui/SlideView$MovieView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1152
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1153
    iput-object v2, p0, Lcom/android/mms/ui/SlideView;->mMovieView:Lcom/android/mms/ui/SlideView$MovieView;

    .line 1154
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mIsTextTop:Z

    invoke-virtual {p0, v2, p1, v0}, Lcom/android/mms/ui/SlideView;->setImage(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    .line 1155
    iget v0, p0, Lcom/android/mms/ui/SlideView;->mMovieLeft:I

    iget v1, p0, Lcom/android/mms/ui/SlideView;->mMovieTop:I

    iget v2, p0, Lcom/android/mms/ui/SlideView;->mMovieWidth:I

    iget v3, p0, Lcom/android/mms/ui/SlideView;->mMovieHeight:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/mms/ui/SlideView;->setImageRegion(IIII)V

    .line 1157
    :cond_0
    return-void
.end method

.method public stopVideo(Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "bitmap"

    .prologue
    const/4 v3, 0x0

    .line 905
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    if-eqz v1, :cond_0

    .line 909
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->stopPlayback()V

    .line 910
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 912
    .local v0, videoWidth:I
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mVideoWrapper:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 913
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mVideoWrapper:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 914
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 915
    iput-object v3, p0, Lcom/android/mms/ui/SlideView;->mVideoWrapper:Landroid/widget/LinearLayout;

    .line 916
    iput-object v3, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Lcom/android/mms/ui/TestVideoView;

    .line 917
    iget-boolean v1, p0, Lcom/android/mms/ui/SlideView;->mIsTextTop:Z

    invoke-virtual {p0, v3, p1, v1}, Lcom/android/mms/ui/SlideView;->setImage(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    .line 919
    iget v1, p0, Lcom/android/mms/ui/SlideView;->mVideoLeft:I

    iget v2, p0, Lcom/android/mms/ui/SlideView;->mVideoTop:I

    iget v3, p0, Lcom/android/mms/ui/SlideView;->mVideoHeight:I

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/android/mms/ui/SlideView;->setImageRegionForVideostop(IIII)V

    .line 922
    .end local v0           #videoWidth:I
    :cond_0
    return-void
.end method
