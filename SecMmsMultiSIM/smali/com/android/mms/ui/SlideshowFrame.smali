.class public Lcom/android/mms/ui/SlideshowFrame;
.super Landroid/widget/FrameLayout;
.source "SlideshowFrame.java"

# interfaces
.implements Lcom/android/mms/ui/MessageViewerInterface;
.implements Lorg/w3c/dom/events/EventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SlideshowFrame$BackgroundQueryHandler;,
        Lcom/android/mms/ui/SlideshowFrame$DeleteMessageListener;,
        Lcom/android/mms/ui/SlideshowFrame$DrmCancelListener;,
        Lcom/android/mms/ui/SlideshowFrame$DrmOkListener;,
        Lcom/android/mms/ui/SlideshowFrame$SmilPlayerController;
    }
.end annotation


# static fields
.field private static final CACHE_SIZE:I = 0x32

.field private static final DELETE_MESSAGE_TOKEN:I = 0x25e4

.field public static final MENU_OFFSET:I = 0xc8

.field private static final MENU_PLAY_MESSAGE:I = 0xfa

.field public static final MENU_PREFERENCES:I = 0xd3

.field public static final MENU_SEARCH:I = 0xd0

.field public static final MENU_SPAM_MESSAGE:I = 0xd4

.field public static final MENU_TIMEDSEND:I = 0xd1

.field public static final MENU_VIEW_CONV:I = 0xd2

.field private static final NONE_TYPE:I = 0x0

.field public static final REQUEST_CODE_ADD_CONTACT:I = 0x1d

.field private static final SIM_NUM1:I = 0x1

.field private static final SIM_NUM2:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Mms/SlideshowFrame"

.field public static bMultiTouch:Z

.field public static blockChildViewOnClick:Z

.field static displayDensity:F

.field static mBackgroundQueryHandler:Lcom/android/mms/ui/SlideshowFrame$BackgroundQueryHandler;

.field public static mLaunchMode:I


# instance fields
.field private final REFRESH_PROGRESSBAR_DELAY:I

.field private endX:I

.field private endY:I

.field private isAudioFocus:Z

.field private isOnCall:Z

.field private mActivity:Landroid/app/Activity;

.field private mAddContactIntent:Landroid/content/Intent;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mEndSlideAnim:I

.field private mFirstLaunched:Z

.field private mFlick:Z

.field private mHandler:Landroid/os/Handler;

.field private final mHandlerRefresh:Landroid/os/Handler;

.field private mHasDrmMedia:Z

.field private mIntent:Landroid/content/Intent;

.field private mIsPreview:Z

.field private mLCDWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mMediaController:Lcom/android/mms/ui/MmsPlayerController;

.field private mMsgItem:Lcom/android/mms/ui/MessageItem;

.field private mMsgOptions:Lcom/android/mms/ui/MessageOptions;

.field private mMsgUri:Landroid/net/Uri;

.field private mNoRightDrmMediaCount:I

.field private mOnCloseListener:Lcom/android/mms/ui/OnEventListener;

.field private mOptionItemSelected:Z

.field private mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

.field private mShowController:Z

.field private mSmilControllerStart:Ljava/lang/Runnable;

.field private mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

.field private mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

.field private mSmilPlayerStart:Ljava/lang/Runnable;

.field private mStartSlideAnim:I

.field private mStatusIcons:Lcom/android/mms/ui/MessageStatusIconsArea;

.field private mStopped:Z

.field private mVolumeLevel:I

.field private mWindowHasFocus:Z

.field private model:Lcom/android/mms/model/SlideshowModel;

.field public msgId:J

.field private startX:I

.field private startY:I

.field private final stateChangeObserver:Landroid/database/ContentObserver;

.field private threadId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 136
    sput v0, Lcom/android/mms/ui/SlideshowFrame;->mLaunchMode:I

    .line 750
    sput-boolean v0, Lcom/android/mms/ui/SlideshowFrame;->bMultiTouch:Z

    .line 751
    sput-boolean v0, Lcom/android/mms/ui/SlideshowFrame;->blockChildViewOnClick:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 227
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 159
    iput-boolean v1, p0, Lcom/android/mms/ui/SlideshowFrame;->isAudioFocus:Z

    .line 169
    iput-boolean v1, p0, Lcom/android/mms/ui/SlideshowFrame;->mFlick:Z

    .line 171
    iput-boolean v1, p0, Lcom/android/mms/ui/SlideshowFrame;->mShowController:Z

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mStopped:Z

    .line 175
    iput-boolean v1, p0, Lcom/android/mms/ui/SlideshowFrame;->mIsPreview:Z

    .line 177
    iput-boolean v1, p0, Lcom/android/mms/ui/SlideshowFrame;->mOptionItemSelected:Z

    .line 204
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/mms/ui/SlideshowFrame;->REFRESH_PROGRESSBAR_DELAY:I

    .line 205
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mHandlerRefresh:Landroid/os/Handler;

    .line 208
    iput-object v2, p0, Lcom/android/mms/ui/SlideshowFrame;->model:Lcom/android/mms/model/SlideshowModel;

    .line 209
    iput-boolean v1, p0, Lcom/android/mms/ui/SlideshowFrame;->mFirstLaunched:Z

    .line 210
    iput-boolean v1, p0, Lcom/android/mms/ui/SlideshowFrame;->mWindowHasFocus:Z

    .line 213
    new-instance v0, Lcom/android/mms/ui/SlideshowFrame$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/SlideshowFrame$1;-><init>(Lcom/android/mms/ui/SlideshowFrame;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowFrame;->stateChangeObserver:Landroid/database/ContentObserver;

    .line 224
    iput-object v2, p0, Lcom/android/mms/ui/SlideshowFrame;->mMsgUri:Landroid/net/Uri;

    .line 596
    new-instance v0, Lcom/android/mms/ui/SlideshowFrame$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideshowFrame$3;-><init>(Lcom/android/mms/ui/SlideshowFrame;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mSmilPlayerStart:Ljava/lang/Runnable;

    .line 708
    new-instance v0, Lcom/android/mms/ui/SlideshowFrame$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideshowFrame$5;-><init>(Lcom/android/mms/ui/SlideshowFrame;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mSmilControllerStart:Ljava/lang/Runnable;

    .line 1130
    iput-object v2, p0, Lcom/android/mms/ui/SlideshowFrame;->mOnCloseListener:Lcom/android/mms/ui/OnEventListener;

    .line 228
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 231
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 159
    iput-boolean v1, p0, Lcom/android/mms/ui/SlideshowFrame;->isAudioFocus:Z

    .line 169
    iput-boolean v1, p0, Lcom/android/mms/ui/SlideshowFrame;->mFlick:Z

    .line 171
    iput-boolean v1, p0, Lcom/android/mms/ui/SlideshowFrame;->mShowController:Z

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mStopped:Z

    .line 175
    iput-boolean v1, p0, Lcom/android/mms/ui/SlideshowFrame;->mIsPreview:Z

    .line 177
    iput-boolean v1, p0, Lcom/android/mms/ui/SlideshowFrame;->mOptionItemSelected:Z

    .line 204
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/mms/ui/SlideshowFrame;->REFRESH_PROGRESSBAR_DELAY:I

    .line 205
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mHandlerRefresh:Landroid/os/Handler;

    .line 208
    iput-object v2, p0, Lcom/android/mms/ui/SlideshowFrame;->model:Lcom/android/mms/model/SlideshowModel;

    .line 209
    iput-boolean v1, p0, Lcom/android/mms/ui/SlideshowFrame;->mFirstLaunched:Z

    .line 210
    iput-boolean v1, p0, Lcom/android/mms/ui/SlideshowFrame;->mWindowHasFocus:Z

    .line 213
    new-instance v0, Lcom/android/mms/ui/SlideshowFrame$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/SlideshowFrame$1;-><init>(Lcom/android/mms/ui/SlideshowFrame;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowFrame;->stateChangeObserver:Landroid/database/ContentObserver;

    .line 224
    iput-object v2, p0, Lcom/android/mms/ui/SlideshowFrame;->mMsgUri:Landroid/net/Uri;

    .line 596
    new-instance v0, Lcom/android/mms/ui/SlideshowFrame$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideshowFrame$3;-><init>(Lcom/android/mms/ui/SlideshowFrame;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mSmilPlayerStart:Ljava/lang/Runnable;

    .line 708
    new-instance v0, Lcom/android/mms/ui/SlideshowFrame$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideshowFrame$5;-><init>(Lcom/android/mms/ui/SlideshowFrame;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mSmilControllerStart:Ljava/lang/Runnable;

    .line 1130
    iput-object v2, p0, Lcom/android/mms/ui/SlideshowFrame;->mOnCloseListener:Lcom/android/mms/ui/OnEventListener;

    .line 232
    return-void
.end method

.method private SlideShowFrameRunnable(Lcom/android/mms/model/SlideshowModel;)V
    .locals 3
    .parameter "showModel"

    .prologue
    .line 603
    const-string v1, "Mms/SlideshowFrame"

    const-string v2, "SlideShowFrameRunnable"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    move-object v0, p1

    .line 606
    .local v0, model:Lcom/android/mms/model/SlideshowModel;
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowFrame;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/mms/ui/SlideshowFrame$4;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/mms/ui/SlideshowFrame$4;-><init>(Lcom/android/mms/ui/SlideshowFrame;Lcom/android/mms/model/SlideshowModel;Lcom/android/mms/model/SlideshowModel;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 706
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/SlideshowFrame;)Lcom/android/mms/ui/MessageItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/SlideshowFrame;)Lcom/android/mms/ui/MessageStatusIconsArea;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mStatusIcons:Lcom/android/mms/ui/MessageStatusIconsArea;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/SlideshowFrame;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mFirstLaunched:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/mms/ui/SlideshowFrame;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/mms/ui/SlideshowFrame;->mFirstLaunched:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/SlideshowFrame;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mSmilPlayerStart:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/SlideshowFrame;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/SlideshowFrame;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/SlideshowFrame;)Lcom/android/mms/model/SlideshowModel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame;->model:Lcom/android/mms/model/SlideshowModel;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/SlideshowFrame;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowFrame;->releaseWakeLock()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/SlideshowFrame;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowFrame;->isOnCall:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/mms/ui/SlideshowFrame;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/mms/ui/SlideshowFrame;->isOnCall:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/mms/ui/SlideshowFrame;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/mms/ui/SlideshowFrame;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mVolumeLevel:I

    return v0
.end method

.method static synthetic access$1802(Lcom/android/mms/ui/SlideshowFrame;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput p1, p0, Lcom/android/mms/ui/SlideshowFrame;->mVolumeLevel:I

    return p1
.end method

.method static synthetic access$1900(Lcom/android/mms/ui/SlideshowFrame;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mIsPreview:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/SlideshowFrame;Lcom/android/mms/model/SlideshowModel;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SlideshowFrame;->SlideShowFrameRunnable(Lcom/android/mms/model/SlideshowModel;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/mms/ui/SlideshowFrame;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/SlideshowFrame;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowFrame;->accquireWakeLock()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/ui/SlideshowFrame;)Lcom/android/mms/dom/smil/SmilPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/mms/ui/SlideshowFrame;Lcom/android/mms/dom/smil/SmilPlayer;)Lcom/android/mms/dom/smil/SmilPlayer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowFrame;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/mms/ui/SlideshowFrame;)Lcom/android/mms/ui/SlideshowPresenter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/SlideshowFrame;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowFrame;->initMediaController()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/ui/SlideshowFrame;)Lcom/android/mms/ui/MmsPlayerController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/SlideshowFrame;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowFrame;->updateControlButtons()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/mms/ui/SlideshowFrame;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 1
    .parameter "x0"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/mms/ui/SlideshowFrame;Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowFrame;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

    return-object p1
.end method

.method private accquireWakeLock()V
    .locals 2

    .prologue
    .line 1771
    const-string v0, "Mms/SlideshowFrame"

    const-string v1, "accquireWakeLock()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1772
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mLCDWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1773
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mLCDWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1775
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mLCDWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1776
    return-void
.end method

.method private static confirmDeleteDialog(Landroid/content/Context;Lcom/android/mms/ui/SlideshowFrame$DeleteMessageListener;Z)V
    .locals 7
    .parameter "context"
    .parameter "listener"
    .parameter "locked"

    .prologue
    const/4 v6, 0x0

    .line 1839
    const v4, 0x7f030029

    invoke-static {p0, v4, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1840
    .local v3, contents:Landroid/view/View;
    const v4, 0x7f0e00e3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 1841
    .local v2, checkbox:Landroid/widget/CheckBox;
    const v4, 0x7f0e00e2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1843
    .local v0, bodyMessage:Landroid/widget/TextView;
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1844
    if-eqz p2, :cond_0

    .line 1845
    const v4, 0x7f0a009d

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1849
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1850
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0a009a

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    invoke-virtual {v4, v5, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x104

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1857
    return-void

    .line 1847
    .end local v1           #builder:Landroid/app/AlertDialog$Builder;
    :cond_0
    const v4, 0x7f0a009c

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private drawTitle()V
    .locals 5

    .prologue
    .line 862
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mStatusIcons:Lcom/android/mms/ui/MessageStatusIconsArea;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v2, p0, Lcom/android/mms/ui/SlideshowFrame;->msgId:J

    const-string v4, "mms"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/mms/ui/MessageStatusIconsArea;->initForMessage(Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)V

    .line 863
    return-void
.end method

.method private exitSlideshowActivity()V
    .locals 4

    .prologue
    .line 1689
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPausedState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayingState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayedState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1690
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->stop()V

    .line 1692
    :cond_1
    iget-wide v0, p0, Lcom/android/mms/ui/SlideshowFrame;->msgId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 1693
    new-instance v0, Lcom/android/mms/ui/SlideshowFrame$9;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideshowFrame$9;-><init>(Lcom/android/mms/ui/SlideshowFrame;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideshowFrame;->markAsRead(Ljava/lang/Runnable;)V

    .line 1702
    :goto_0
    return-void

    .line 1700
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowFrame;->close()V

    goto :goto_0
.end method

.method private getCachedMessageItem(Landroid/net/Uri;JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;
    .locals 11
    .parameter "messageUri"
    .parameter "msgId"
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    .line 1729
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1730
    .local v3, cursor:Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 1732
    .local v0, item:Lcom/android/mms/ui/MessageItem;
    if-nez v3, :cond_1

    .line 1763
    if-eqz v3, :cond_0

    .line 1764
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1767
    :cond_0
    :goto_0
    return-object v2

    .line 1736
    :cond_1
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1740
    new-instance v10, Lcom/android/mms/ui/SlideshowFrame$11;

    const/16 v1, 0xa

    const/high16 v2, 0x3f80

    const/4 v5, 0x1

    invoke-direct {v10, p0, v1, v2, v5}, Lcom/android/mms/ui/SlideshowFrame$11;-><init>(Lcom/android/mms/ui/SlideshowFrame;IFZ)V

    .line 1746
    .local v10, messageItemCache:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/android/mms/ui/MessageItem;>;"
    new-instance v4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v4, v3}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>(Landroid/database/Cursor;)V

    .line 1747
    .local v4, columnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/mms/ui/MessageItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1749
    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .local v9, item:Lcom/android/mms/ui/MessageItem;
    if-nez v9, :cond_4

    .line 1752
    :try_start_1
    new-instance v0, Lcom/android/mms/ui/MessageItem;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowFrame;->mActivity:Landroid/app/Activity;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/MessageItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;Ljava/util/regex/Pattern;ZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1754
    .end local v9           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    :try_start_2
    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v10, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1763
    :goto_1
    if-eqz v3, :cond_2

    .line 1764
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v2, v0

    .line 1767
    goto :goto_0

    .line 1756
    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v9       #item:Lcom/android/mms/ui/MessageItem;
    :catch_0
    move-exception v8

    move-object v0, v9

    .line 1757
    .end local v9           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    .local v8, e:Landroid/database/CursorIndexOutOfBoundsException;
    :goto_2
    :try_start_3
    const-string v1, "Mms/SlideshowFrame"

    const-string v2, "CursorIndexOutOfBoundsException in getCachedMessageItem !"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1758
    const/4 v0, 0x0

    .line 1760
    goto :goto_1

    .line 1763
    .end local v4           #columnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;
    .end local v8           #e:Landroid/database/CursorIndexOutOfBoundsException;
    .end local v10           #messageItemCache:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/android/mms/ui/MessageItem;>;"
    :catchall_0
    move-exception v1

    :goto_3
    if-eqz v3, :cond_3

    .line 1764
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1

    .line 1763
    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v4       #columnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;
    .restart local v9       #item:Lcom/android/mms/ui/MessageItem;
    .restart local v10       #messageItemCache:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/Long;Lcom/android/mms/ui/MessageItem;>;"
    :catchall_1
    move-exception v1

    move-object v0, v9

    .end local v9           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    goto :goto_3

    .line 1760
    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v9       #item:Lcom/android/mms/ui/MessageItem;
    :catch_1
    move-exception v1

    move-object v0, v9

    .end local v9           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_1

    .line 1756
    :catch_3
    move-exception v8

    goto :goto_2

    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v9       #item:Lcom/android/mms/ui/MessageItem;
    :cond_4
    move-object v0, v9

    .end local v9           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    goto :goto_1
.end method

.method private getHasDRMMediaNRightInSlide(Lcom/android/mms/model/SlideshowModel;)Z
    .locals 8
    .parameter "slides"

    .prologue
    .line 1602
    const/4 v0, 0x0

    .line 1603
    .local v0, hasDRMMedia:Z
    const/4 v1, 0x1

    .line 1604
    .local v1, hasRight:Z
    const/4 v5, 0x0

    .line 1605
    .local v5, result:Z
    invoke-virtual {p1}, Lcom/android/mms/model/SlideshowModel;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/mms/model/SlideModel;

    .line 1606
    .local v6, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v6}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/model/MediaModel;

    .line 1607
    .local v4, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v4}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1608
    const/4 v0, 0x1

    .line 1609
    invoke-virtual {v4}, Lcom/android/mms/model/MediaModel;->hasDrmRight()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1610
    const/4 v1, 0x0

    .line 1611
    iget v7, p0, Lcom/android/mms/ui/SlideshowFrame;->mNoRightDrmMediaCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/mms/ui/SlideshowFrame;->mNoRightDrmMediaCount:I

    goto :goto_0

    .line 1616
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #media:Lcom/android/mms/model/MediaModel;
    .end local v6           #slide:Lcom/android/mms/model/SlideModel;
    :cond_2
    iput-boolean v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mHasDrmMedia:Z

    .line 1617
    if-eqz v0, :cond_3

    if-nez v1, :cond_3

    const/4 v5, 0x1

    .line 1618
    :goto_1
    return v5

    .line 1617
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private declared-synchronized getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 592
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mIntent:Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private initMediaController()V
    .locals 4

    .prologue
    .line 733
    const-string v1, "Mms/SlideshowFrame"

    const-string v2, "initMediaController()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowFrame;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    if-eqz v1, :cond_0

    .line 746
    :goto_0
    return-void

    .line 740
    :cond_0
    const/4 v0, 0x5

    .line 742
    .local v0, SPLIT_MODE:I
    new-instance v1, Lcom/android/mms/ui/MmsPlayerController;

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowFrame;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2, v0}, Lcom/android/mms/ui/MmsPlayerController;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/mms/ui/SlideshowFrame;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    .line 744
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowFrame;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    new-instance v2, Lcom/android/mms/ui/SlideshowFrame$SmilPlayerController;

    iget-object v3, p0, Lcom/android/mms/ui/SlideshowFrame;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-direct {v2, p0, v3}, Lcom/android/mms/ui/SlideshowFrame$SmilPlayerController;-><init>(Lcom/android/mms/ui/SlideshowFrame;Lcom/android/mms/dom/smil/SmilPlayer;)V

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MmsPlayerController;->setMediaPlayer(Lcom/android/mms/ui/MmsPlayerController$MediaPlayerControl;)V

    .line 745
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowFrame;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    const v2, 0x7f0e0216

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/MmsPlayerController;->setAnchorView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private isMessageExist(J)Z
    .locals 2
    .parameter "msgId"

    .prologue
    .line 979
    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 980
    .local v0, msgUri:Landroid/net/Uri;
    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideshowFrame;->isMessageExist(Landroid/net/Uri;)Z

    move-result v1

    return v1
.end method

.method private isMessageExist(Landroid/net/Uri;)Z
    .locals 9
    .parameter "msgUri"

    .prologue
    const/4 v2, 0x0

    .line 985
    const/4 v7, 0x0

    .line 986
    .local v7, result:Z
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 988
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    move v8, v7

    .line 997
    .end local v7           #result:Z
    .local v8, result:I
    :goto_0
    return v8

    .line 991
    .end local v8           #result:I
    .restart local v7       #result:Z
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 993
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 996
    const-string v0, "Mms/SlideshowFrame"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isMessageExist(),return="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v7

    .line 997
    .restart local v8       #result:I
    goto :goto_0

    .line 993
    .end local v8           #result:I
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private makeOutgoingCall(Ljava/lang/String;)V
    .locals 4
    .parameter "num"

    .prologue
    .line 1112
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1126
    .local v0, intentTocall:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1127
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/mms/util/PackageInfo;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 1128
    return-void
.end method

.method private releaseWakeLock()V
    .locals 2

    .prologue
    .line 1779
    const-string v0, "Mms/SlideshowFrame"

    const-string v1, "releaseWakeLock()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1780
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mLCDWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1781
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mLCDWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1782
    :cond_0
    return-void
.end method

.method private declared-synchronized setIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 587
    monitor-enter p0

    :try_start_0
    const-string v0, "Mms/SlideshowFrame"

    const-string v1, "setIntent()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowFrame;->mIntent:Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 589
    monitor-exit p0

    return-void

    .line 587
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private showDrmGetRightsPopup(Lcom/android/mms/model/SlideshowModel;Ljava/lang/Runnable;)V
    .locals 12
    .parameter "slides"
    .parameter "callback"

    .prologue
    .line 1622
    const/4 v3, 0x0

    .line 1623
    .local v3, hasDrmMedia:Z
    const/4 v4, 0x1

    .line 1624
    .local v4, hasRight:Z
    const/4 v5, 0x0

    .line 1625
    .local v5, i:I
    iget v10, p0, Lcom/android/mms/ui/SlideshowFrame;->mNoRightDrmMediaCount:I

    new-array v2, v10, [Ljava/lang/String;

    .line 1626
    .local v2, filePaths:[Ljava/lang/String;
    iget v10, p0, Lcom/android/mms/ui/SlideshowFrame;->mNoRightDrmMediaCount:I

    new-array v1, v10, [Ljava/lang/String;

    .line 1627
    .local v1, fileNames:[Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/mms/model/SlideshowModel;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/mms/model/SlideModel;

    .line 1628
    .local v9, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v9}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/mms/model/MediaModel;

    .line 1629
    .local v8, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v8}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1630
    const/4 v3, 0x1

    .line 1631
    invoke-virtual {v8}, Lcom/android/mms/model/MediaModel;->hasDrmRight()Z

    move-result v10

    if-nez v10, :cond_1

    .line 1632
    const/4 v4, 0x0

    .line 1633
    invoke-virtual {v8}, Lcom/android/mms/model/MediaModel;->getDrmFilePath()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v5

    .line 1634
    invoke-virtual {v8}, Lcom/android/mms/model/MediaModel;->getDrmFileName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v1, v5

    .line 1635
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1640
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #media:Lcom/android/mms/model/MediaModel;
    .end local v9           #slide:Lcom/android/mms/model/SlideModel;
    :cond_2
    if-eqz v3, :cond_3

    if-nez v4, :cond_3

    .line 1643
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v10, p0, Lcom/android/mms/ui/SlideshowFrame;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1644
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const v10, 0x7f0a017b

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1645
    const v10, 0x104000a

    new-instance v11, Lcom/android/mms/ui/SlideshowFrame$DrmOkListener;

    invoke-direct {v11, p0, v2, v1, p2}, Lcom/android/mms/ui/SlideshowFrame$DrmOkListener;-><init>(Lcom/android/mms/ui/SlideshowFrame;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1646
    const v10, 0x1040009

    new-instance v11, Lcom/android/mms/ui/SlideshowFrame$DrmCancelListener;

    invoke-direct {v11, p0, p2}, Lcom/android/mms/ui/SlideshowFrame$DrmCancelListener;-><init>(Lcom/android/mms/ui/SlideshowFrame;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1647
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1649
    .end local v0           #b:Landroid/app/AlertDialog$Builder;
    :cond_3
    return-void
.end method

.method private startActivity(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 241
    const-string v0, "Mms/SlideshowFrame"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startActivity(),intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 243
    return-void
.end method

.method private stopSmilPlayer()V
    .locals 1

    .prologue
    .line 956
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_0

    .line 957
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 961
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mFlick:Z

    if-eqz v0, :cond_1

    .line 962
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mFlick:Z

    .line 973
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    if-eqz v0, :cond_0

    .line 974
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsPlayerController;->hide()V

    .line 976
    :cond_0
    return-void

    .line 964
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->stop()V

    goto :goto_0

    .line 969
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->stop()V

    goto :goto_0
.end method

.method private touchListener(IIII)V
    .locals 6
    .parameter "startTouchX"
    .parameter "endTouchX"
    .parameter "startTouchY"
    .parameter "endTouchY"

    .prologue
    const/16 v5, 0x14

    .line 1439
    const/4 v0, 0x0

    .line 1440
    .local v0, bFlicktoNext:Z
    sub-int v1, p1, p2

    .line 1441
    .local v1, movedX:I
    sub-int v2, p3, p4

    .line 1443
    .local v2, movedY:I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0x96

    if-le v3, v4, :cond_2

    sget-boolean v3, Lcom/android/mms/ui/SlideshowFrame;->bMultiTouch:Z

    if-nez v3, :cond_2

    .line 1448
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/mms/ui/SlideshowFrame;->mFlick:Z

    .line 1449
    if-gez v1, :cond_1

    .line 1450
    const/4 v0, 0x1

    .line 1594
    :cond_0
    :goto_0
    return-void

    .line 1452
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1454
    :cond_2
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v3, v5, :cond_3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v3, v5, :cond_3

    .line 1455
    iget-object v3, p0, Lcom/android/mms/ui/SlideshowFrame;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/SlideshowFrame;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    if-eqz v3, :cond_0

    .line 1457
    iget-object v3, p0, Lcom/android/mms/ui/SlideshowFrame;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    invoke-virtual {v3}, Lcom/android/mms/ui/MmsPlayerController;->show()V

    goto :goto_0

    .line 1461
    :cond_3
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/mms/ui/SlideshowFrame;->bMultiTouch:Z

    goto :goto_0
.end method

.method private updateControlButtons()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1785
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowFrame;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowFrame;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideshowPresenter;->getTotSlideNumber()I

    move-result v1

    if-le v1, v3, :cond_1

    .line 1787
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowFrame;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideshowPresenter;->getCurSlideIndex()I

    move-result v1

    if-ne v1, v3, :cond_3

    .line 1788
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowFrame;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideshowPresenter;->getCurSlideIndex()I

    move-result v1

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowFrame;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-virtual {v2}, Lcom/android/mms/ui/SlideshowPresenter;->getTotSlideNumber()I

    move-result v2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowFrame;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v1}, Lcom/android/mms/dom/smil/SmilPlayer;->isStoppedState()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1789
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowFrame;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    if-eqz v1, :cond_0

    .line 1790
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowFrame;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsPlayerController;->getPrevPageButton()Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 1801
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowFrame;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-virtual {v1}, Lcom/android/mms/ui/SlideshowPresenter;->getCurSlideIndex()I

    move-result v1

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowFrame;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-virtual {v2}, Lcom/android/mms/ui/SlideshowPresenter;->getTotSlideNumber()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 1802
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowFrame;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    if-eqz v1, :cond_1

    .line 1803
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowFrame;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsPlayerController;->getNextPageButton()Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 1814
    :cond_1
    :goto_1
    new-instance v0, Lcom/android/mms/ui/SlideshowFrame$12;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideshowFrame$12;-><init>(Lcom/android/mms/ui/SlideshowFrame;)V

    .line 1820
    .local v0, notification:Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowFrame;->mHandlerRefresh:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1821
    return-void

    .line 1793
    .end local v0           #notification:Ljava/lang/Runnable;
    :cond_2
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowFrame;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    if-eqz v1, :cond_0

    .line 1794
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowFrame;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsPlayerController;->getPrevPageButton()Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 1797
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowFrame;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    if-eqz v1, :cond_0

    .line 1798
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowFrame;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsPlayerController;->getPrevPageButton()Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 1805
    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowFrame;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    if-eqz v1, :cond_1

    .line 1806
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowFrame;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v1}, Lcom/android/mms/dom/smil/SmilPlayer;->isStoppedState()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowFrame;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v1}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayedState()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1807
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowFrame;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsPlayerController;->getNextPageButton()Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    .line 1809
    :cond_5
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowFrame;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsPlayerController;->getNextPageButton()Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 1136
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mOnCloseListener:Lcom/android/mms/ui/OnEventListener;

    if-eqz v0, :cond_0

    .line 1137
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mOnCloseListener:Lcom/android/mms/ui/OnEventListener;

    invoke-interface {v0}, Lcom/android/mms/ui/OnEventListener;->onEvent()V

    .line 1138
    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "ev"

    .prologue
    const/4 v1, 0x1

    .line 756
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 757
    .local v0, action:I
    const-string v2, "Mms/SlideshowFrame"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchTouchEvent(),action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    iget-boolean v2, p0, Lcom/android/mms/ui/SlideshowFrame;->mWindowHasFocus:Z

    if-nez v2, :cond_1

    .line 825
    :cond_0
    :goto_0
    return v1

    .line 764
    :cond_1
    and-int/lit16 v2, v0, 0xff

    packed-switch v2, :pswitch_data_0

    .line 820
    :goto_1
    sget-boolean v2, Lcom/android/mms/ui/SlideshowFrame;->bMultiTouch:Z

    if-eq v2, v1, :cond_0

    .line 825
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 766
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/mms/ui/SlideshowFrame;->startX:I

    .line 767
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/mms/ui/SlideshowFrame;->startY:I

    goto :goto_1

    .line 791
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/mms/ui/SlideshowFrame;->endX:I

    .line 792
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/mms/ui/SlideshowFrame;->endY:I

    .line 801
    iget v2, p0, Lcom/android/mms/ui/SlideshowFrame;->startX:I

    iget v3, p0, Lcom/android/mms/ui/SlideshowFrame;->endX:I

    iget v4, p0, Lcom/android/mms/ui/SlideshowFrame;->startY:I

    iget v5, p0, Lcom/android/mms/ui/SlideshowFrame;->endY:I

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/mms/ui/SlideshowFrame;->touchListener(IIII)V

    goto :goto_1

    .line 764
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public handleEvent(Lorg/w3c/dom/events/Event;)V
    .locals 3
    .parameter "evt"

    .prologue
    .line 1262
    move-object v0, p1

    .line 1263
    .local v0, event:Lorg/w3c/dom/events/Event;
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowFrame;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/mms/ui/SlideshowFrame$8;

    invoke-direct {v2, p0, v0}, Lcom/android/mms/ui/SlideshowFrame$8;-><init>(Lcom/android/mms/ui/SlideshowFrame;Lorg/w3c/dom/events/Event;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1292
    return-void
.end method

.method public declared-synchronized markAsRead(Ljava/lang/Runnable;)V
    .locals 7
    .parameter "callback"

    .prologue
    .line 1706
    monitor-enter p0

    :try_start_0
    const-string v2, "Mms/SlideshowFrame"

    const-string v3, "markAsRead()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1707
    iget-wide v2, p0, Lcom/android/mms/ui/SlideshowFrame;->msgId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isInboxMessage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1708
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/android/mms/ui/SlideshowFrame;->msgId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1709
    .local v0, msgUri:Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 1710
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "read"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1711
    const-string v2, "seen"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1713
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowFrame;->mActivity:Landroid/app/Activity;

    iget-wide v3, p0, Lcom/android/mms/ui/SlideshowFrame;->msgId:J

    const/16 v5, 0x80

    new-instance v6, Lcom/android/mms/ui/SlideshowFrame$10;

    invoke-direct {v6, p0, v0, v1, p1}, Lcom/android/mms/ui/SlideshowFrame$10;-><init>(Lcom/android/mms/ui/SlideshowFrame;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/Runnable;)V

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/mms/ui/MessageUtils;->handleReadReportOne(Landroid/content/Context;JILjava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1724
    .end local v0           #msgUri:Landroid/net/Uri;
    .end local v1           #values:Landroid/content/ContentValues;
    :goto_0
    monitor-exit p0

    return-void

    .line 1723
    :cond_0
    :try_start_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1706
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1413
    const-string v2, "Mms/SlideshowFrame"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onActivityResult(),resultCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",resultCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1416
    const/16 v2, 0x1d

    if-ne p1, v2, :cond_1

    .line 1422
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowFrame;->mAddContactIntent:Landroid/content/Intent;

    if-eqz v2, :cond_1

    .line 1423
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowFrame;->mAddContactIntent:Landroid/content/Intent;

    const-string v3, "email"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1425
    .local v0, address:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1426
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowFrame;->mAddContactIntent:Landroid/content/Intent;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1429
    :cond_0
    if-eqz v0, :cond_1

    .line 1430
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    .line 1431
    .local v1, contact:Lcom/android/mms/data/Contact;
    if-eqz v1, :cond_1

    .line 1432
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->reload()V

    .line 1436
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #contact:Lcom/android/mms/data/Contact;
    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 1826
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1827
    const-string v0, "Mms/SlideshowFrame"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-> SlideShowActivity -- OnConfiguration Changed to LANDSCAPE : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1832
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    if-eqz v0, :cond_1

    .line 1833
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsPlayerController;->hide()V

    .line 1835
    :cond_1
    return-void

    .line 1828
    :cond_2
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1829
    const-string v0, "Mms/SlideshowFrame"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-> SlideShowActivity -- OnConfiguration Changed to PORTRAIT : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/content/Intent;)V
    .locals 21
    .parameter "icicle"
    .parameter "intent"

    .prologue
    .line 246
    const-string v2, "Mms/SlideshowFrame"

    const-string v3, "onCreate()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/mms/ui/SlideshowFrame;->mFirstLaunched:Z

    .line 253
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/mms/ui/SlideshowFrame;->setIntent(Landroid/content/Intent;)V

    .line 254
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/ui/SlideshowFrame;->mHandler:Landroid/os/Handler;

    .line 256
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/SlideshowFrame;->mActivity:Landroid/app/Activity;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/ui/SlideshowFrame;->mAudioManager:Landroid/media/AudioManager;

    .line 257
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/SlideshowFrame;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/mms/ui/SlideshowFrame;->mVolumeLevel:I

    .line 259
    const-string v2, "Mms/SlideshowFrame"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mVolumeLevel "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/mms/ui/SlideshowFrame;->mVolumeLevel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    new-instance v10, Landroid/util/DisplayMetrics;

    invoke-direct {v10}, Landroid/util/DisplayMetrics;-><init>()V

    .line 262
    .local v10, displayMetrics:Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/SlideshowFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 263
    iget v2, v10, Landroid/util/DisplayMetrics;->density:F

    sput v2, Lcom/android/mms/ui/SlideshowFrame;->displayDensity:F

    .line 265
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/SlideshowFrame;->mActivity:Landroid/app/Activity;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/PowerManager;

    .line 266
    .local v13, pm:Landroid/os/PowerManager;
    const v2, 0x2000000a

    const-string v3, "MMS viewer LCD on wakelock"

    invoke-virtual {v13, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/ui/SlideshowFrame;->mLCDWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 267
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/SlideshowFrame;->mLCDWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 269
    new-instance v2, Lcom/android/mms/ui/SlideshowFrame$BackgroundQueryHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SlideshowFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Lcom/android/mms/ui/SlideshowFrame$BackgroundQueryHandler;-><init>(Lcom/android/mms/ui/SlideshowFrame;Landroid/content/ContentResolver;)V

    sput-object v2, Lcom/android/mms/ui/SlideshowFrame;->mBackgroundQueryHandler:Lcom/android/mms/ui/SlideshowFrame$BackgroundQueryHandler;

    .line 272
    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->isCallOffhook()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/mms/ui/SlideshowFrame;->isOnCall:Z

    .line 273
    const-string v2, "Mms/SlideshowFrame"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isOnCall="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/mms/ui/SlideshowFrame;->isOnCall:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/SlideshowFrame;->isOnCall:Z

    if-eqz v2, :cond_0

    .line 276
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/SlideshowFrame;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 291
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/SlideshowFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, -0x3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setFormat(I)V

    .line 295
    const-string v2, "msgId"

    const-wide/16 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/mms/ui/SlideshowFrame;->msgId:J

    .line 296
    const-string v2, "thread_id"

    const-wide/16 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/mms/ui/SlideshowFrame;->threadId:J

    .line 297
    const-string v2, "preview"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 298
    const-string v2, "preview"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .line 299
    .local v15, previewing:Ljava/lang/String;
    if-eqz v15, :cond_3

    const-string v2, "previewLaunch"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 300
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/mms/ui/SlideshowFrame;->mIsPreview:Z

    .line 307
    .end local v15           #previewing:Ljava/lang/String;
    :cond_1
    :goto_0
    const-string v2, "fromContactHistory"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 308
    const/4 v2, 0x1

    sput v2, Lcom/android/mms/ui/SlideshowFrame;->mLaunchMode:I

    .line 317
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/mms/ui/SlideshowFrame;->msgId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_5

    .line 318
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/mms/ui/SlideshowFrame;->msgId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/ui/SlideshowFrame;->mMsgUri:Landroid/net/Uri;

    .line 323
    :goto_2
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/mms/model/SlideshowModel;->setCheckMessageSizeforSlide(Z)V

    .line 324
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/mms/ui/SlideshowFrame;->msgId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_7

    .line 325
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/SlideshowFrame;->mMsgUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/mms/ui/SlideshowFrame;->msgId:J

    const-string v5, "mms"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/mms/ui/SlideshowFrame;->getCachedMessageItem(Landroid/net/Uri;JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/ui/SlideshowFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    .line 326
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/SlideshowFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-nez v2, :cond_6

    .line 472
    :goto_3
    return-void

    .line 302
    .restart local v15       #previewing:Ljava/lang/String;
    :cond_3
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/mms/ui/SlideshowFrame;->mIsPreview:Z

    goto :goto_0

    .line 310
    .end local v15           #previewing:Ljava/lang/String;
    :cond_4
    const-string v2, "fromFolderView"

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 311
    const/4 v2, 0x2

    sput v2, Lcom/android/mms/ui/SlideshowFrame;->mLaunchMode:I

    goto :goto_1

    .line 320
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/ui/SlideshowFrame;->mMsgUri:Landroid/net/Uri;

    goto :goto_2

    .line 332
    :cond_6
    new-instance v2, Lcom/android/mms/ui/MessageOptions;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SlideshowFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/SlideshowFrame;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/SlideshowFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/mms/ui/SlideshowFrame;->msgId:J

    const-string v8, "mms"

    sget v9, Lcom/android/mms/ui/SlideshowFrame;->mLaunchMode:I

    invoke-direct/range {v2 .. v9}, Lcom/android/mms/ui/MessageOptions;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/ui/SlideshowFrame;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    .line 333
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/SlideshowFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->updateFailedFlag()V

    .line 350
    :cond_7
    :try_start_0
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/mms/ui/SlideshowFrame;->msgId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/SlideshowFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v2, :cond_c

    .line 351
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/SlideshowFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/ui/SlideshowFrame;->model:Lcom/android/mms/model/SlideshowModel;

    .line 356
    :goto_4
    const/16 v18, 0x0

    .line 357
    .local v18, slideCount:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/SlideshowFrame;->model:Lcom/android/mms/model/SlideshowModel;

    if-eqz v2, :cond_8

    .line 358
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/SlideshowFrame;->model:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v18

    .line 362
    :cond_8
    const/4 v12, 0x0

    .local v12, i:I
    :goto_5
    move/from16 v0, v18

    if-ge v12, v0, :cond_d

    .line 363
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/SlideshowFrame;->model:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2, v12}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getDuration()I

    move-result v2

    const/16 v3, 0x1388

    if-ge v2, v3, :cond_9

    .line 364
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/SlideshowFrame;->model:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2, v12}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    const/16 v3, 0x1388

    invoke-virtual {v2, v3}, Lcom/android/mms/model/SlideModel;->setDuration(I)V

    .line 367
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/SlideshowFrame;->model:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2, v12}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v2

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/SlideshowFrame;->model:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2, v12}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 368
    :cond_a
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/mms/ui/SlideshowFrame;->isAudioFocus:Z

    .line 362
    :cond_b
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 353
    .end local v12           #i:I
    .end local v18           #slideCount:I
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/SlideshowFrame;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SlideshowFrame;->mMsgUri:Landroid/net/Uri;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/ui/SlideshowFrame;->model:Lcom/android/mms/model/SlideshowModel;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 372
    :catch_0
    move-exception v11

    .line 373
    .local v11, e:Lcom/google/android/mms/MmsException;
    const-string v2, "Mms/SlideshowFrame"

    const-string v3, "Cannot present the slide show."

    invoke-static {v2, v3, v11}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 379
    .end local v11           #e:Lcom/google/android/mms/MmsException;
    .restart local v12       #i:I
    .restart local v18       #slideCount:I
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/SlideshowFrame;->isAudioFocus:Z

    if-eqz v2, :cond_e

    .line 380
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/SlideshowFrame;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 382
    const-string v2, "Mms/SlideshowFrame"

    const-string v3, "requestAudioFocus"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    :cond_e
    const v2, 0x7f0e017e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/MessageStatusIconsArea;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/ui/SlideshowFrame;->mStatusIcons:Lcom/android/mms/ui/MessageStatusIconsArea;

    .line 405
    const v2, 0x7f0e0216

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/android/mms/ui/SlideView;

    .line 407
    .local v20, view:Lcom/android/mms/ui/SlideView;
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/mms/ui/SlideshowFrame;->msgId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/SlideshowFrame;->model:Lcom/android/mms/model/SlideshowModel;

    if-eqz v2, :cond_f

    .line 408
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/SlideshowFrame;->model:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->isRawAttachmentPresent()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 409
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/SlideshowFrame;->model:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v16

    .line 411
    .local v16, size:I
    const/4 v2, 0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_11

    .line 412
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/SlideshowFrame;->model:Lcom/android/mms/model/SlideshowModel;

    add-int/lit8 v3, v16, -0x1

    invoke-virtual {v2, v3}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    .line 413
    new-instance v17, Lcom/android/mms/model/SlideModel;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/SlideshowFrame;->model:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Lcom/android/mms/model/SlideModel;-><init>(Lcom/android/mms/model/SlideshowModel;)V

    .line 414
    .local v17, slide:Lcom/android/mms/model/SlideModel;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/SlideshowFrame;->model:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/android/mms/model/SlideshowModel;->add(Lcom/android/mms/model/SlideModel;)Z

    .line 421
    .end local v16           #size:I
    .end local v17           #slide:Lcom/android/mms/model/SlideModel;
    :cond_f
    :goto_6
    const/16 v19, 0x0

    .line 424
    .local v19, subject:Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/SlideshowFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a01b4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 425
    .local v14, preSubject:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/SlideshowFrame;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SlideshowFrame;->mMsgUri:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/android/mms/model/SlideshowModel;->getSubject(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v19

    .line 426
    if-nez v19, :cond_12

    .line 427
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00ee

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 428
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideView;->setSlideViewSubject(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 438
    .end local v14           #preSubject:Ljava/lang/String;
    :goto_7
    const-class v2, Lcom/android/mms/ui/SlideshowPresenter;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SlideshowFrame;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/SlideshowFrame;->model:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0, v4}, Lcom/android/mms/ui/PresenterFactory;->getPresenter(Ljava/lang/String;Landroid/content/Context;Lcom/android/mms/ui/ViewInterface;Lcom/android/mms/model/Model;)Lcom/android/mms/ui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/SlideshowPresenter;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/ui/SlideshowFrame;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    .line 454
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/SlideshowFrame;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    if-eqz v2, :cond_10

    .line 455
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/SlideshowFrame;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/mms/ui/SlideshowFrame;->mIsPreview:Z

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/SlideshowPresenter;->setPreviewState(Z)V

    .line 471
    :cond_10
    const-string v2, "Mms/SlideshowFrame"

    const-string v3, "onCreate()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 416
    .end local v19           #subject:Ljava/lang/String;
    .restart local v16       #size:I
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/SlideshowFrame;->model:Lcom/android/mms/model/SlideshowModel;

    add-int/lit8 v3, v16, -0x1

    invoke-virtual {v2, v3}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    goto :goto_6

    .line 430
    .end local v16           #size:I
    .restart local v14       #preSubject:Ljava/lang/String;
    .restart local v19       #subject:Ljava/lang/String;
    :cond_12
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/SlideView;->setSlideViewSubject(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_7

    .line 433
    .end local v14           #preSubject:Ljava/lang/String;
    :catch_1
    move-exception v11

    .line 434
    .restart local v11       #e:Lcom/google/android/mms/MmsException;
    const-string v2, "Mms/SlideshowFrame"

    const-string v3, "Cannot display the slide title."

    invoke-static {v2, v3, v11}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 1025
    const-string v0, "Mms/SlideshowFrame"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    .line 1027
    const-string v0, "Mms/SlideshowFrame"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1036
    const-string v0, "Mms/SlideshowFrame"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyDown(),keyCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    sparse-switch p1, :sswitch_data_0

    .line 1075
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    if-eqz v0, :cond_0

    .line 1077
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsPlayerController;->show()V

    .line 1080
    :cond_0
    :goto_0
    :sswitch_0
    const/4 v0, 0x0

    return v0

    .line 1042
    :sswitch_1
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowFrame;->isOnCall:Z

    if-nez v0, :cond_0

    .line 1043
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mVolumeLevel:I

    goto :goto_0

    .line 1055
    :sswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    if-eqz v0, :cond_0

    .line 1056
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MmsPlayerController;->SetIsPressDown(Z)V

    goto :goto_0

    .line 1069
    :sswitch_3
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mIsPreview:Z

    if-nez v0, :cond_0

    .line 1070
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->pause()V

    goto :goto_0

    .line 1038
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x18 -> :sswitch_1
        0x19 -> :sswitch_1
        0x52 -> :sswitch_3
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1084
    const-string v3, "Mms/SlideshowFrame"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onKeyUp(),keyCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    packed-switch p1, :pswitch_data_0

    :cond_0
    move v1, v2

    .line 1107
    :cond_1
    :goto_0
    return v1

    .line 1087
    :pswitch_0
    iget-object v3, p0, Lcom/android/mms/ui/SlideshowFrame;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/mms/ui/SlideshowFrame;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    invoke-virtual {v3}, Lcom/android/mms/ui/MmsPlayerController;->isPressDown()Z

    move-result v3

    if-ne v3, v1, :cond_1

    .line 1088
    iget-object v3, p0, Lcom/android/mms/ui/SlideshowFrame;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    invoke-virtual {v3, v2}, Lcom/android/mms/ui/MmsPlayerController;->SetIsPressDown(Z)V

    .line 1089
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowFrame;->exitSlideshowActivity()V

    .line 1090
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowFrame;->onStop()V

    .line 1091
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/mms/ui/SlideshowFrame;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    goto :goto_0

    .line 1097
    :pswitch_1
    iget-object v3, p0, Lcom/android/mms/ui/SlideshowFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v0, v3, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    .line 1098
    .local v0, callNum:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1099
    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideshowFrame;->makeOutgoingCall(Ljava/lang/String;)V

    goto :goto_0

    .line 1085
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 20
    .parameter "intent"

    .prologue
    .line 476
    const-string v2, "Mms/SlideshowFrame"

    const-string v3, "onNewIntent()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    invoke-direct/range {p0 .. p1}, Lcom/android/mms/ui/SlideshowFrame;->setIntent(Landroid/content/Intent;)V

    .line 479
    const-string v2, "msgId"

    const-wide/16 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/mms/ui/SlideshowFrame;->msgId:J

    .line 480
    const-string v2, "thread_id"

    const-wide/16 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/mms/ui/SlideshowFrame;->threadId:J

    .line 481
    const-string v2, "preview"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 482
    const-string v2, "preview"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    .line 483
    .local v14, previewing:Ljava/lang/String;
    if-eqz v14, :cond_2

    const-string v2, "previewLaunch"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 484
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/mms/ui/SlideshowFrame;->mIsPreview:Z

    .line 491
    .end local v14           #previewing:Ljava/lang/String;
    :cond_0
    :goto_0
    const-string v2, "fromContactHistory"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 492
    const/4 v2, 0x1

    sput v2, Lcom/android/mms/ui/SlideshowFrame;->mLaunchMode:I

    .line 500
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/mms/ui/SlideshowFrame;->msgId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    .line 501
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/mms/ui/SlideshowFrame;->msgId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/ui/SlideshowFrame;->mMsgUri:Landroid/net/Uri;

    .line 506
    :goto_2
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/mms/model/SlideshowModel;->setCheckMessageSizeforSlide(Z)V

    .line 507
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/mms/ui/SlideshowFrame;->msgId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_6

    .line 508
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/SlideshowFrame;->mMsgUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/mms/ui/SlideshowFrame;->msgId:J

    const-string v5, "mms"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/mms/ui/SlideshowFrame;->getCachedMessageItem(Landroid/net/Uri;JLjava/lang/String;)Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/ui/SlideshowFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    .line 509
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/SlideshowFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-nez v2, :cond_5

    .line 584
    :goto_3
    return-void

    .line 486
    .restart local v14       #previewing:Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/mms/ui/SlideshowFrame;->mIsPreview:Z

    goto :goto_0

    .line 494
    .end local v14           #previewing:Ljava/lang/String;
    :cond_3
    const-string v2, "fromFolderView"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 495
    const/4 v2, 0x2

    sput v2, Lcom/android/mms/ui/SlideshowFrame;->mLaunchMode:I

    goto :goto_1

    .line 503
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/ui/SlideshowFrame;->mMsgUri:Landroid/net/Uri;

    goto :goto_2

    .line 513
    :cond_5
    new-instance v2, Lcom/android/mms/ui/MessageOptions;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SlideshowFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/SlideshowFrame;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/SlideshowFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/mms/ui/SlideshowFrame;->msgId:J

    const-string v8, "mms"

    sget v9, Lcom/android/mms/ui/SlideshowFrame;->mLaunchMode:I

    invoke-direct/range {v2 .. v9}, Lcom/android/mms/ui/MessageOptions;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/ui/SlideshowFrame;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    .line 514
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/SlideshowFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->updateFailedFlag()V

    .line 518
    :cond_6
    :try_start_0
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/mms/ui/SlideshowFrame;->msgId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/SlideshowFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v2, :cond_9

    .line 519
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/SlideshowFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v12, v2, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 524
    .local v12, model:Lcom/android/mms/model/SlideshowModel;
    :goto_4
    const/16 v17, 0x0

    .line 525
    .local v17, slideCount:I
    if-eqz v12, :cond_7

    .line 526
    invoke-virtual {v12}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v17

    .line 529
    :cond_7
    const/4 v11, 0x0

    .local v11, i:I
    :goto_5
    move/from16 v0, v17

    if-ge v11, v0, :cond_a

    .line 530
    invoke-virtual {v12, v11}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getDuration()I

    move-result v2

    const/16 v3, 0x1388

    if-ge v2, v3, :cond_8

    .line 531
    invoke-virtual {v12, v11}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    const/16 v3, 0x1388

    invoke-virtual {v2, v3}, Lcom/android/mms/model/SlideModel;->setDuration(I)V

    .line 529
    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 521
    .end local v11           #i:I
    .end local v12           #model:Lcom/android/mms/model/SlideshowModel;
    .end local v17           #slideCount:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/SlideshowFrame;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SlideshowFrame;->mMsgUri:Landroid/net/Uri;

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/mms/model/SlideshowModel;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .restart local v12       #model:Lcom/android/mms/model/SlideshowModel;
    goto :goto_4

    .line 534
    .end local v12           #model:Lcom/android/mms/model/SlideshowModel;
    :catch_0
    move-exception v10

    .line 535
    .local v10, e:Lcom/google/android/mms/MmsException;
    const-string v2, "Mms/SlideshowFrame"

    const-string v3, "Cannot present the slide show."

    invoke-static {v2, v3, v10}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 541
    .end local v10           #e:Lcom/google/android/mms/MmsException;
    .restart local v11       #i:I
    .restart local v12       #model:Lcom/android/mms/model/SlideshowModel;
    .restart local v17       #slideCount:I
    :cond_a
    const v2, 0x7f0e017e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/MessageStatusIconsArea;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/ui/SlideshowFrame;->mStatusIcons:Lcom/android/mms/ui/MessageStatusIconsArea;

    .line 543
    const v2, 0x7f0e0216

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Lcom/android/mms/ui/SlideView;

    .line 544
    .local v19, view:Lcom/android/mms/ui/SlideView;
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/mms/ui/SlideshowFrame;->msgId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_b

    if-eqz v12, :cond_b

    .line 545
    invoke-virtual {v12}, Lcom/android/mms/model/SlideshowModel;->isRawAttachmentPresent()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 546
    invoke-virtual {v12}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v15

    .line 547
    .local v15, size:I
    const/4 v2, 0x1

    if-ne v15, v2, :cond_d

    .line 548
    add-int/lit8 v2, v15, -0x1

    invoke-virtual {v12, v2}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    .line 549
    new-instance v16, Lcom/android/mms/model/SlideModel;

    move-object/from16 v0, v16

    invoke-direct {v0, v12}, Lcom/android/mms/model/SlideModel;-><init>(Lcom/android/mms/model/SlideshowModel;)V

    .line 550
    .local v16, slide:Lcom/android/mms/model/SlideModel;
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/mms/model/SlideshowModel;->add(Lcom/android/mms/model/SlideModel;)Z

    .line 557
    .end local v15           #size:I
    .end local v16           #slide:Lcom/android/mms/model/SlideModel;
    :cond_b
    :goto_6
    const/16 v18, 0x0

    .line 559
    .local v18, subject:Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/SlideshowFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a01b4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 560
    .local v13, preSubject:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/SlideshowFrame;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SlideshowFrame;->mMsgUri:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcom/android/mms/model/SlideshowModel;->getSubject(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v18

    .line 561
    if-nez v18, :cond_e

    .line 562
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00ee

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 563
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideView;->setSlideViewSubject(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 571
    .end local v13           #preSubject:Ljava/lang/String;
    :goto_7
    const-class v2, Lcom/android/mms/ui/SlideshowPresenter;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/SlideshowFrame;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, v19

    invoke-static {v2, v3, v0, v12}, Lcom/android/mms/ui/PresenterFactory;->getPresenter(Ljava/lang/String;Landroid/content/Context;Lcom/android/mms/ui/ViewInterface;Lcom/android/mms/model/Model;)Lcom/android/mms/ui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/SlideshowPresenter;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/ui/SlideshowFrame;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    .line 572
    if-eqz v12, :cond_c

    .line 573
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/mms/ui/SlideshowFrame;->getHasDRMMediaNRightInSlide(Lcom/android/mms/model/SlideshowModel;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 574
    new-instance v2, Lcom/android/mms/ui/SlideshowFrame$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v12}, Lcom/android/mms/ui/SlideshowFrame$2;-><init>(Lcom/android/mms/ui/SlideshowFrame;Lcom/android/mms/model/SlideshowModel;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2}, Lcom/android/mms/ui/SlideshowFrame;->showDrmGetRightsPopup(Lcom/android/mms/model/SlideshowModel;Ljava/lang/Runnable;)V

    .line 583
    :cond_c
    :goto_8
    const-string v2, "Mms/SlideshowFrame"

    const-string v3, "onNewIntent()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 552
    .end local v18           #subject:Ljava/lang/String;
    .restart local v15       #size:I
    :cond_d
    add-int/lit8 v2, v15, -0x1

    invoke-virtual {v12, v2}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    goto :goto_6

    .line 565
    .end local v15           #size:I
    .restart local v13       #preSubject:Ljava/lang/String;
    .restart local v18       #subject:Ljava/lang/String;
    :cond_e
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/SlideView;->setSlideViewSubject(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_7

    .line 567
    .end local v13           #preSubject:Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 568
    .restart local v10       #e:Lcom/google/android/mms/MmsException;
    const-string v2, "Mms/SlideshowFrame"

    const-string v3, "Cannot display the slide title."

    invoke-static {v2, v3, v10}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    .line 580
    .end local v10           #e:Lcom/google/android/mms/MmsException;
    :cond_f
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/mms/ui/SlideshowFrame;->SlideShowFrameRunnable(Lcom/android/mms/model/SlideshowModel;)V

    goto :goto_8
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 1328
    const-string v4, "Mms/SlideshowFrame"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onOptionsItemSelected(),item="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1333
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowFrame;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    if-eqz v4, :cond_5

    .line 1334
    iput-boolean v3, p0, Lcom/android/mms/ui/SlideshowFrame;->mOptionItemSelected:Z

    .line 1336
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowFrame;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    invoke-virtual {v4, p1}, Lcom/android/mms/ui/MessageOptions;->isPlayerStop(Landroid/view/MenuItem;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1337
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowFrame;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/mms/ui/SlideshowFrame;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v4}, Lcom/android/mms/dom/smil/SmilPlayer;->isPausedState()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/SlideshowFrame;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v4}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayingState()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/SlideshowFrame;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v4}, Lcom/android/mms/dom/smil/SmilPlayer;->isPlayedState()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1338
    :cond_0
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowFrame;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v4}, Lcom/android/mms/dom/smil/SmilPlayer;->stop()V

    .line 1341
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    const/16 v5, 0x1b

    if-ne v4, v5, :cond_2

    .line 1342
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/SlideshowFrame;->mAddContactIntent:Landroid/content/Intent;

    .line 1343
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowFrame;->mActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/android/mms/ui/SlideshowFrame;->mAddContactIntent:Landroid/content/Intent;

    const/16 v6, 0x1d

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1400
    :goto_0
    :pswitch_0
    return v3

    .line 1347
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    const/16 v5, 0x12

    if-ne v4, v5, :cond_4

    .line 1348
    const-string v4, "mms"

    iget-wide v5, p0, Lcom/android/mms/ui/SlideshowFrame;->msgId:J

    iget-object v7, p0, Lcom/android/mms/ui/SlideshowFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/ui/SlideshowFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v8}, Lcom/android/mms/ui/MessageItem;->isSpam()Z

    move-result v8

    invoke-static {v4, v5, v6, v7, v8}, Lcom/android/mms/ui/MessageUtils;->isLockmessage(Ljava/lang/String;JLandroid/content/ContentResolver;Z)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    move v1, v3

    .line 1350
    .local v1, islocked:Z
    :cond_3
    new-instance v2, Lcom/android/mms/ui/SlideshowFrame$DeleteMessageListener;

    iget-object v4, p0, Lcom/android/mms/ui/SlideshowFrame;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v4, v4, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-direct {v2, p0, v4, v1}, Lcom/android/mms/ui/SlideshowFrame$DeleteMessageListener;-><init>(Lcom/android/mms/ui/SlideshowFrame;Landroid/net/Uri;Z)V

    .line 1351
    .local v2, l:Lcom/android/mms/ui/SlideshowFrame$DeleteMessageListener;
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v4, v2, v1}, Lcom/android/mms/ui/SlideshowFrame;->confirmDeleteDialog(Landroid/content/Context;Lcom/android/mms/ui/SlideshowFrame$DeleteMessageListener;Z)V

    goto :goto_0

    .line 1355
    .end local v1           #islocked:Z
    .end local v2           #l:Lcom/android/mms/ui/SlideshowFrame$DeleteMessageListener;
    :cond_4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    const/16 v5, 0xc8

    if-le v4, v5, :cond_6

    .line 1356
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_5
    :goto_1
    move v3, v1

    .line 1400
    goto :goto_0

    .line 1358
    :pswitch_1
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->onSearchRequested()Z

    goto :goto_0

    .line 1369
    :pswitch_2
    iget-object v4, p0, Lcom/android/mms/ui/SlideshowFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v4, v1}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setMmsViewMode(Landroid/content/Context;I)V

    .line 1370
    new-instance v0, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/mms/ui/SlideshowFrame;->mActivity:Landroid/app/Activity;

    const-class v5, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1371
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "conversationList"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1372
    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideshowFrame;->startActivity(Landroid/content/Intent;)V

    .line 1373
    iget-object v3, p0, Lcom/android/mms/ui/SlideshowFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 1377
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/mms/ui/SlideshowFrame;->mActivity:Landroid/app/Activity;

    const-class v5, Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1378
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideshowFrame;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1397
    .end local v0           #intent:Landroid/content/Intent;
    :cond_6
    iget-object v3, p0, Lcom/android/mms/ui/SlideshowFrame;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    invoke-virtual {v3, p1}, Lcom/android/mms/ui/MessageOptions;->optionItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    goto :goto_0

    .line 1356
    :pswitch_data_0
    .packed-switch 0xd0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 1405
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mOptionItemSelected:Z

    if-nez v0, :cond_0

    .line 1407
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    invoke-virtual {v0}, Lcom/android/mms/ui/MmsPlayerController;->show()V

    .line 1409
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mOptionItemSelected:Z

    .line 1410
    return-void
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 903
    const-string v0, "Mms/SlideshowFrame"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

    if-eqz v0, :cond_0

    .line 907
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

    check-cast v0, Lorg/w3c/dom/events/EventTarget;

    const-string v1, "SimlDocumentEnd"

    const/4 v2, 0x0

    invoke-interface {v0, v1, p0, v2}, Lorg/w3c/dom/events/EventTarget;->removeEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 910
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowFrame;->stateChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 911
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowFrame;->stopSmilPlayer()V

    .line 912
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mStopped:Z

    .line 913
    const-string v0, "Mms/SlideshowFrame"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 1298
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 1299
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    if-eqz v0, :cond_0

    .line 1300
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mMsgOptions:Lcom/android/mms/ui/MessageOptions;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MessageOptions;->createOptionsMenu(Landroid/view/Menu;)V

    .line 1302
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/BoxListViewActivity;->getSplitMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1303
    const/16 v0, 0xd0

    const v1, 0x104000c

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2020169

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x73

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 1313
    const/16 v0, 0xd2

    const v1, 0x7f0a0311

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200e6

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1315
    const/16 v0, 0xd3

    const v1, 0x7f0a0006

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2020162

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1324
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 866
    const-string v0, "Mms/SlideshowFrame"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/mms/ui/SlideshowFrame;->stateChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 871
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

    if-eqz v0, :cond_0

    .line 872
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

    check-cast v0, Lorg/w3c/dom/events/EventTarget;

    const-string v1, "SimlDocumentEnd"

    invoke-interface {v0, v1, p0, v4}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 876
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mStopped:Z

    if-ne v0, v5, :cond_1

    .line 877
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideshowPresenter;->resetLocation()V

    .line 878
    iput-boolean v4, p0, Lcom/android/mms/ui/SlideshowFrame;->mStopped:Z

    .line 881
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    if-eqz v0, :cond_2

    .line 882
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowFrame;->updateControlButtons()V

    .line 885
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowFrame;->mMsgUri:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 887
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_4

    .line 888
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/BoxListViewActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/BoxListViewActivity;->getSplitMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 889
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/BoxListViewActivity;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/BoxListViewActivity;->removeViewer(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 896
    :cond_4
    :goto_0
    if-eqz v6, :cond_5

    .line 897
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 899
    :cond_5
    const-string v0, "Mms/SlideshowFrame"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    return-void

    .line 892
    :cond_6
    :try_start_1
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideshowFrame;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 896
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_7

    .line 897
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 1032
    const/4 v0, 0x0

    return v0
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 917
    const-string v0, "Mms/SlideshowFrame"

    const-string v1, "onStart()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mFirstLaunched:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame;->model:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideshowFrame;->getHasDRMMediaNRightInSlide(Lcom/android/mms/model/SlideshowModel;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 922
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame;->model:Lcom/android/mms/model/SlideshowModel;

    new-instance v1, Lcom/android/mms/ui/SlideshowFrame$6;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/SlideshowFrame$6;-><init>(Lcom/android/mms/ui/SlideshowFrame;)V

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/SlideshowFrame;->showDrmGetRightsPopup(Lcom/android/mms/model/SlideshowModel;Ljava/lang/Runnable;)V

    .line 933
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mMsgUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mMsgUri:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideshowFrame;->isMessageExist(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 934
    :cond_0
    const-string v0, "Mms/SlideshowFrame"

    const-string v1, "mMsgUri not exist!"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    :goto_1
    return-void

    .line 929
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame;->model:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideshowFrame;->SlideShowFrameRunnable(Lcom/android/mms/model/SlideshowModel;)V

    goto :goto_0

    .line 939
    :cond_2
    iget-wide v0, p0, Lcom/android/mms/ui/SlideshowFrame;->msgId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    iget-wide v0, p0, Lcom/android/mms/ui/SlideshowFrame;->msgId:J

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/SlideshowFrame;->isMessageExist(J)Z

    move-result v0

    if-nez v0, :cond_3

    .line 941
    const-string v0, "Mms/SlideshowFrame"

    const-string v1, "mMsgId not exist!"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 946
    :cond_3
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowFrame;->drawTitle()V

    .line 948
    new-instance v0, Lcom/android/mms/ui/SlideshowFrame$7;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideshowFrame$7;-><init>(Lcom/android/mms/ui/SlideshowFrame;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideshowFrame;->markAsRead(Ljava/lang/Runnable;)V

    .line 952
    const-string v0, "Mms/SlideshowFrame"

    const-string v1, "onStart()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onStop()V
    .locals 4

    .prologue
    .line 1001
    const-string v0, "Mms/SlideshowFrame"

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowFrame;->isAudioFocus:Z

    if-eqz v0, :cond_0

    .line 1005
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1006
    const-string v0, "Mms/SlideshowFrame"

    const-string v1, "abandonAudioFocus"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    :cond_0
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowFrame;->isOnCall:Z

    if-eqz v0, :cond_1

    .line 1011
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    iget v2, p0, Lcom/android/mms/ui/SlideshowFrame;->mVolumeLevel:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1013
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mStopped:Z

    .line 1015
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mHasDrmMedia:Z

    if-eqz v0, :cond_2

    .line 1016
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/mms/drm/DrmUtils;->cleanupStorage(Landroid/content/Context;)V

    .line 1018
    :cond_2
    invoke-direct {p0}, Lcom/android/mms/ui/SlideshowFrame;->releaseWakeLock()V

    .line 1020
    const-string v0, "Mms/SlideshowFrame"

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .parameter "hasFocus"

    .prologue
    .line 722
    const-string v0, "Mms/SlideshowFrame"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged(),hasFocus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    iput-boolean p1, p0, Lcom/android/mms/ui/SlideshowFrame;->mWindowHasFocus:Z

    .line 726
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mMediaController:Lcom/android/mms/ui/MmsPlayerController;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mShowController:Z

    if-nez v0, :cond_0

    .line 727
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowFrame;->mSmilControllerStart:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 728
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mShowController:Z

    .line 730
    :cond_0
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 235
    const-string v0, "Mms/SlideshowFrame"

    const-string v1, "setActivity()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowFrame;->mActivity:Landroid/app/Activity;

    .line 238
    return-void
.end method

.method public setOnCloseListener(Lcom/android/mms/ui/OnEventListener;)V
    .locals 0
    .parameter "onEventListener"

    .prologue
    .line 1132
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowFrame;->mOnCloseListener:Lcom/android/mms/ui/OnEventListener;

    .line 1133
    return-void
.end method

.method public splitListChanged()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1860
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowFrame;->mMsgUri:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1863
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 1864
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/BoxListViewActivity;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/BoxListViewActivity;->removeViewer(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1867
    :cond_1
    if-eqz v6, :cond_2

    .line 1868
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1870
    :cond_2
    return-void

    .line 1867
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 1868
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public updateMessageLockIcon(Z)V
    .locals 1
    .parameter "isLocked"

    .prologue
    .line 1598
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowFrame;->mStatusIcons:Lcom/android/mms/ui/MessageStatusIconsArea;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MessageStatusIconsArea;->setLockIcon(Z)V

    .line 1599
    return-void
.end method
