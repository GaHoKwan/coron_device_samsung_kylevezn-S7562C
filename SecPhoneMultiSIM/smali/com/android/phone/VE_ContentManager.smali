.class public Lcom/android/phone/VE_ContentManager;
.super Ljava/lang/Object;
.source "VE_ContentManager.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# static fields
.field public static DOWNLOAD_PATH:Ljava/lang/String;

.field private static MAX_MEMORY:J

.field private static _VE_ContentManager:Lcom/android/phone/VE_ContentManager;


# instance fields
.field private final CONTENT_HEIGHT:I

.field private final CONTENT_WIDTH:I

.field private ExitProgram:Z

.field private PROVIDE_MEMORY:J

.field private buffering_Thread:Ljava/lang/Runnable;

.field private download_Content_Runnable:Ljava/lang/Runnable;

.field private getDownloadContentSize_Runnable:Ljava/lang/Runnable;

.field private isBufferingThread_Run:Z

.field private isDownloadThread_Run:Z

.field private isEndBufferingThread_Run:Z

.field private isEndPlayThread_Run:Z

.field private isFileExists:Z

.field private isIncallscreenReady:Z

.field private isOnPause:Z

.field private isPlayThread_Run:Z

.field private isStopPlayContent:Z

.field private mAMF_Player:Lcom/android/phone/AMF_Player;

.field private mAmf_Viewer:Landroid/widget/ImageView;

.field private mAudioMgr:Landroid/media/AudioManager;

.field public mBitmapData:Landroid/graphics/Bitmap;

.field private mBuffering_lop_i:I

.field private mClass_State:I

.field private mContentFormat:Ljava/lang/String;

.field private mDownloadFile_Size:I

.field private mDownloadUrl:Ljava/lang/String;

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mHttpcon:Ljava/net/HttpURLConnection;

.field private mIsPlayerCompleted:Z

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mPhoneAppContext:Landroid/content/Context;

.field private mPhoneAppHandler:Landroid/os/Handler;

.field private mPlay_lop_i:I

.field private mSaveFileName:Ljava/lang/String;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mUsed_Memory:J

.field private mVideoView:Landroid/widget/VideoView;

.field private playing_Thread:Ljava/lang/Runnable;

.field private ve_Handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 72
    const-string v0, "/data/ve/"

    sput-object v0, Lcom/android/phone/VE_ContentManager;->DOWNLOAD_PATH:Ljava/lang/String;

    .line 93
    const-wide/32 v0, 0x4e2000

    sput-wide v0, Lcom/android/phone/VE_ContentManager;->MAX_MEMORY:J

    .line 143
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/VE_ContentManager;->_VE_ContentManager:Lcom/android/phone/VE_ContentManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/16 v0, 0xf0

    iput v0, p0, Lcom/android/phone/VE_ContentManager;->CONTENT_WIDTH:I

    .line 81
    const/16 v0, 0xb4

    iput v0, p0, Lcom/android/phone/VE_ContentManager;->CONTENT_HEIGHT:I

    .line 91
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/phone/VE_ContentManager;->PROVIDE_MEMORY:J

    .line 147
    iput-object v3, p0, Lcom/android/phone/VE_ContentManager;->mDownloadUrl:Ljava/lang/String;

    .line 179
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/VE_ContentManager;->isStopPlayContent:Z

    .line 193
    iput-object v3, p0, Lcom/android/phone/VE_ContentManager;->mVideoView:Landroid/widget/VideoView;

    .line 195
    iput-object v3, p0, Lcom/android/phone/VE_ContentManager;->mAudioMgr:Landroid/media/AudioManager;

    .line 199
    iput-boolean v2, p0, Lcom/android/phone/VE_ContentManager;->isEndBufferingThread_Run:Z

    .line 201
    iput-boolean v2, p0, Lcom/android/phone/VE_ContentManager;->isEndPlayThread_Run:Z

    .line 203
    iput-boolean v2, p0, Lcom/android/phone/VE_ContentManager;->mIsPlayerCompleted:Z

    .line 310
    new-instance v0, Lcom/android/phone/VE_ContentManager$1;

    invoke-direct {v0, p0}, Lcom/android/phone/VE_ContentManager$1;-><init>(Lcom/android/phone/VE_ContentManager;)V

    iput-object v0, p0, Lcom/android/phone/VE_ContentManager;->ve_Handler:Landroid/os/Handler;

    .line 571
    new-instance v0, Lcom/android/phone/VE_ContentManager$2;

    invoke-direct {v0, p0}, Lcom/android/phone/VE_ContentManager$2;-><init>(Lcom/android/phone/VE_ContentManager;)V

    iput-object v0, p0, Lcom/android/phone/VE_ContentManager;->getDownloadContentSize_Runnable:Ljava/lang/Runnable;

    .line 681
    new-instance v0, Lcom/android/phone/VE_ContentManager$3;

    invoke-direct {v0, p0}, Lcom/android/phone/VE_ContentManager$3;-><init>(Lcom/android/phone/VE_ContentManager;)V

    iput-object v0, p0, Lcom/android/phone/VE_ContentManager;->download_Content_Runnable:Ljava/lang/Runnable;

    .line 868
    new-instance v0, Lcom/android/phone/VE_ContentManager$4;

    invoke-direct {v0, p0}, Lcom/android/phone/VE_ContentManager$4;-><init>(Lcom/android/phone/VE_ContentManager;)V

    iput-object v0, p0, Lcom/android/phone/VE_ContentManager;->buffering_Thread:Ljava/lang/Runnable;

    .line 881
    new-instance v0, Lcom/android/phone/VE_ContentManager$5;

    invoke-direct {v0, p0}, Lcom/android/phone/VE_ContentManager$5;-><init>(Lcom/android/phone/VE_ContentManager;)V

    iput-object v0, p0, Lcom/android/phone/VE_ContentManager;->playing_Thread:Ljava/lang/Runnable;

    .line 262
    const-string v0, "VE:"

    invoke-static {v2, v0}, Lcom/android/phone/VE_Log;->set_LogEnable(ZLjava/lang/String;)V

    .line 263
    const/4 v0, 0x3

    const-string v1, "VE_ContentManager"

    const-string v2, "VE_ContentManager()"

    invoke-static {v0, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 264
    const/16 v0, 0x63

    invoke-direct {p0, v0}, Lcom/android/phone/VE_ContentManager;->set_Class_State(I)V

    .line 265
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/VE_ContentManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/phone/VE_ContentManager;->set_Class_State(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/VE_ContentManager;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager;->getDownloadContentSize_Runnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/phone/VE_ContentManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/phone/VE_ContentManager;->initBuffer()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/phone/VE_ContentManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/phone/VE_ContentManager;->sendMsgToIncallscreenReadyToPlay()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/phone/VE_ContentManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/phone/VE_ContentManager;->removeUnusualContent()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/phone/VE_ContentManager;)Landroid/widget/VideoView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager;->mVideoView:Landroid/widget/VideoView;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/phone/VE_ContentManager;Landroid/widget/VideoView;)Landroid/widget/VideoView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/phone/VE_ContentManager;->mVideoView:Landroid/widget/VideoView;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/phone/VE_ContentManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/phone/VE_ContentManager;->sendMsgToIncallscreenMediaError()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/phone/VE_ContentManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager;->mContentFormat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/phone/VE_ContentManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/phone/VE_ContentManager;->start_Play_SKM()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/phone/VE_ContentManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/phone/VE_ContentManager;->start_Play_AM3()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/phone/VE_ContentManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/phone/VE_ContentManager;->start_Play_JPG()V

    return-void
.end method

.method static synthetic access$1902(Lcom/android/phone/VE_ContentManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/android/phone/VE_ContentManager;->ExitProgram:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/phone/VE_ContentManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/android/phone/VE_ContentManager;->mDownloadFile_Size:I

    return v0
.end method

.method static synthetic access$2002(Lcom/android/phone/VE_ContentManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/android/phone/VE_ContentManager;->isIncallscreenReady:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/phone/VE_ContentManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput p1, p0, Lcom/android/phone/VE_ContentManager;->mDownloadFile_Size:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/phone/VE_ContentManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/phone/VE_ContentManager;->mIsPlayerCompleted:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/phone/VE_ContentManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/android/phone/VE_ContentManager;->mIsPlayerCompleted:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/phone/VE_ContentManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/phone/VE_ContentManager;->isPlayThread_Run:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/android/phone/VE_ContentManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/android/phone/VE_ContentManager;->isPlayThread_Run:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/phone/VE_ContentManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/phone/VE_ContentManager;->isBufferingThread_Run:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/android/phone/VE_ContentManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/android/phone/VE_ContentManager;->isBufferingThread_Run:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/phone/VE_ContentManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager;->mDownloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/phone/VE_ContentManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/phone/VE_ContentManager;->mDownloadUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2502(Lcom/android/phone/VE_ContentManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/android/phone/VE_ContentManager;->isStopPlayContent:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/phone/VE_ContentManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/phone/VE_ContentManager;->isDownloadThread_Run:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/android/phone/VE_ContentManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/android/phone/VE_ContentManager;->isDownloadThread_Run:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/phone/VE_ContentManager;)Lcom/android/phone/AMF_Player;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager;->mAMF_Player:Lcom/android/phone/AMF_Player;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/phone/VE_ContentManager;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager;->mAmf_Viewer:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/phone/VE_ContentManager;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/VE_ContentManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/phone/VE_ContentManager;->check_FreeMemory()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/phone/VE_ContentManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/phone/VE_ContentManager;->isOnPause:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/android/phone/VE_ContentManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/android/phone/VE_ContentManager;->isOnPause:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/phone/VE_ContentManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/phone/VE_ContentManager;->doCheck()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/phone/VE_ContentManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/phone/VE_ContentManager;->getDownloadContentSize()I

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/phone/VE_ContentManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/phone/VE_ContentManager;->isFileExists:Z

    return v0
.end method

.method static synthetic access$3400(Lcom/android/phone/VE_ContentManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager;->ve_Handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/phone/VE_ContentManager;)V
    .locals 0
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/phone/VE_ContentManager;->download_Content()V

    return-void
.end method

.method static synthetic access$3602(Lcom/android/phone/VE_ContentManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/android/phone/VE_ContentManager;->isEndBufferingThread_Run:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/android/phone/VE_ContentManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/android/phone/VE_ContentManager;->mBuffering_lop_i:I

    return v0
.end method

.method static synthetic access$3702(Lcom/android/phone/VE_ContentManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput p1, p0, Lcom/android/phone/VE_ContentManager;->mBuffering_lop_i:I

    return p1
.end method

.method static synthetic access$3800(Lcom/android/phone/VE_ContentManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/phone/VE_ContentManager;->sleep(I)V

    return-void
.end method

.method static synthetic access$3902(Lcom/android/phone/VE_ContentManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/android/phone/VE_ContentManager;->isEndPlayThread_Run:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/phone/VE_ContentManager;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager;->download_Content_Runnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/phone/VE_ContentManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/android/phone/VE_ContentManager;->mPlay_lop_i:I

    return v0
.end method

.method static synthetic access$4002(Lcom/android/phone/VE_ContentManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput p1, p0, Lcom/android/phone/VE_ContentManager;->mPlay_lop_i:I

    return p1
.end method

.method static synthetic access$4008(Lcom/android/phone/VE_ContentManager;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/android/phone/VE_ContentManager;->mPlay_lop_i:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/phone/VE_ContentManager;->mPlay_lop_i:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/phone/VE_ContentManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/phone/VE_ContentManager;->removeContent(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/VE_ContentManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager;->mSaveFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/VE_ContentManager;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/phone/VE_ContentManager;->deleteContentFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/phone/VE_ContentManager;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/phone/VE_ContentManager;->insertContentDB(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/VE_ContentManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/phone/VE_ContentManager;->initAmfPlayer()V

    return-void
.end method

.method private check_FreeMemory()V
    .locals 4

    .prologue
    .line 699
    const/4 v0, 0x3

    const-string v1, "VE_ContentManager"

    const-string v2, "check_FreeMemory()"

    invoke-static {v0, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 701
    iget-wide v0, p0, Lcom/android/phone/VE_ContentManager;->mUsed_Memory:J

    iget v2, p0, Lcom/android/phone/VE_ContentManager;->mDownloadFile_Size:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/32 v2, 0x7d000

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/phone/VE_ContentManager;->PROVIDE_MEMORY:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 702
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager;->ve_Handler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 706
    :goto_0
    return-void

    .line 704
    :cond_0
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager;->ve_Handler:Landroid/os/Handler;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private deleteContentFile(Ljava/lang/String;)Z
    .locals 6
    .parameter "filepath"

    .prologue
    .line 832
    const/4 v2, 0x3

    const-string v3, "VE_ContentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteContentFile("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 835
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 836
    .local v1, fp:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 840
    .end local v1           #fp:Ljava/io/File;
    :goto_0
    return v2

    .line 837
    :catch_0
    move-exception v0

    .line 838
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 840
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private doCheck()V
    .locals 6

    .prologue
    const/4 v3, 0x3

    const/16 v5, 0x63

    const/4 v4, 0x5

    .line 268
    const-string v1, "VE_ContentManager"

    const-string v2, "doCheck()"

    invoke-static {v3, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 270
    const/16 v1, 0x6f

    invoke-direct {p0, v1}, Lcom/android/phone/VE_ContentManager;->set_Class_State(I)V

    .line 272
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager;->mDownloadUrl:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 273
    const-string v1, "VE_ContentManager"

    const-string v2, "download url is null"

    invoke-static {v3, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 308
    :goto_0
    return-void

    .line 276
    :cond_0
    const-string v1, "feature_skt"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 277
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager;->mDownloadUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/VE_ContentManager;->mDownloadUrl:Ljava/lang/String;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, format:Ljava/lang/String;
    const-string v1, "amf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "am3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "skm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "jpg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "jpeg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 279
    :cond_1
    const-string v1, "VE_ContentManager"

    const-string v2, "supported format"

    invoke-static {v4, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 301
    :goto_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/VE_ContentManager;->ExitProgram:Z

    .line 303
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager;->mDownloadUrl:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/phone/VE_ContentManager;->isContentExist(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    .line 304
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager;->ve_Handler:Landroid/os/Handler;

    const/16 v2, 0x6c

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 281
    :cond_2
    const-string v1, "VE_ContentManager"

    const-string v2, "unsupported format"

    invoke-static {v4, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-direct {p0, v5}, Lcom/android/phone/VE_ContentManager;->set_Class_State(I)V

    goto :goto_0

    .line 285
    .end local v0           #format:Ljava/lang/String;
    :cond_3
    const-string v1, "feature_ktt"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 286
    const-string v0, "amf"

    .line 287
    .restart local v0       #format:Ljava/lang/String;
    const-string v1, "amf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "am3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 288
    :cond_4
    const-string v1, "VE_ContentManager"

    const-string v2, "supported format"

    invoke-static {v4, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 290
    :cond_5
    const-string v1, "VE_ContentManager"

    const-string v2, "unsupported format"

    invoke-static {v4, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-direct {p0, v5}, Lcom/android/phone/VE_ContentManager;->set_Class_State(I)V

    goto/16 :goto_0

    .line 295
    .end local v0           #format:Ljava/lang/String;
    :cond_6
    const-string v1, "VE_ContentManager"

    const-string v2, "unknown feature"

    invoke-static {v4, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-direct {p0, v5}, Lcom/android/phone/VE_ContentManager;->set_Class_State(I)V

    goto/16 :goto_0

    .line 306
    .restart local v0       #format:Ljava/lang/String;
    :cond_7
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager;->ve_Handler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method

.method private download_Content()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 601
    const/4 v9, 0x3

    const-string v10, "VE_ContentManager"

    const-string v11, "download_Content()"

    invoke-static {v9, v10, v11}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 603
    const/16 v9, 0x1f4

    invoke-direct {p0, v9}, Lcom/android/phone/VE_ContentManager;->sleep(I)V

    .line 605
    const/4 v3, 0x0

    .line 606
    .local v3, is:Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 607
    .local v6, os:Ljava/io/FileOutputStream;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/android/phone/VE_ContentManager;->DOWNLOAD_PATH:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/VE_ContentManager;->mSaveFileName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 608
    .local v8, savename:Ljava/lang/String;
    const/4 v0, 0x0

    .line 611
    .local v0, TotalReadLen:I
    :try_start_0
    iget-object v9, p0, Lcom/android/phone/VE_ContentManager;->mHttpcon:Ljava/net/HttpURLConnection;

    invoke-virtual {v9}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 612
    new-instance v7, Ljava/io/FileOutputStream;

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9

    .line 614
    .end local v6           #os:Ljava/io/FileOutputStream;
    .local v7, os:Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 615
    .local v4, nReadLen:I
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v5

    .line 617
    .local v5, navailable:I
    if-lez v5, :cond_1

    .line 618
    new-array v1, v5, [B

    .line 620
    .local v1, buff:[B
    :goto_0
    iget-boolean v9, p0, Lcom/android/phone/VE_ContentManager;->isDownloadThread_Run:Z

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    .line 621
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 623
    if-lez v4, :cond_0

    .line 624
    const/4 v9, 0x0

    invoke-virtual {v7, v1, v9, v4}, Ljava/io/FileOutputStream;->write([BII)V

    .line 625
    add-int/2addr v0, v4

    goto :goto_0

    .line 627
    :cond_0
    const/4 v9, 0x3

    const-string v10, "VE_ContentManager"

    const-string v11, "End Download"

    invoke-static {v9, v10, v11}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_c

    .line 644
    .end local v1           #buff:[B
    :cond_1
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/phone/VE_ContentManager;->isDownloadThread_Run:Z

    .line 647
    if-eqz v7, :cond_2

    .line 648
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 650
    :cond_2
    if-eqz v3, :cond_3

    .line 651
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 657
    :cond_3
    :goto_1
    iget-object v9, p0, Lcom/android/phone/VE_ContentManager;->mHttpcon:Ljava/net/HttpURLConnection;

    if-eqz v9, :cond_15

    .line 658
    iget-object v9, p0, Lcom/android/phone/VE_ContentManager;->mHttpcon:Ljava/net/HttpURLConnection;

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 659
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/phone/VE_ContentManager;->mHttpcon:Ljava/net/HttpURLConnection;

    move-object v6, v7

    .line 663
    .end local v4           #nReadLen:I
    .end local v5           #navailable:I
    .end local v7           #os:Ljava/io/FileOutputStream;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    :cond_4
    :goto_2
    iget-boolean v9, p0, Lcom/android/phone/VE_ContentManager;->isStopPlayContent:Z

    const/4 v10, 0x1

    if-ne v9, v10, :cond_13

    .line 664
    iget v9, p0, Lcom/android/phone/VE_ContentManager;->mDownloadFile_Size:I

    if-ge v0, v9, :cond_12

    .line 665
    const/4 v9, 0x5

    const-string v10, "VE_ContentManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "TotalReadLen("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ") < mDownloadFile_Size("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/phone/VE_ContentManager;->mDownloadFile_Size:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 666
    iget-object v9, p0, Lcom/android/phone/VE_ContentManager;->ve_Handler:Landroid/os/Handler;

    const/16 v10, 0x72

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 670
    :goto_3
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/phone/VE_ContentManager;->isStopPlayContent:Z

    .line 679
    :goto_4
    return-void

    .line 653
    .end local v6           #os:Ljava/io/FileOutputStream;
    .restart local v4       #nReadLen:I
    .restart local v5       #navailable:I
    .restart local v7       #os:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 654
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 633
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #nReadLen:I
    .end local v5           #navailable:I
    .end local v7           #os:Ljava/io/FileOutputStream;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    .line 634
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_5
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 644
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/phone/VE_ContentManager;->isDownloadThread_Run:Z

    .line 647
    if-eqz v6, :cond_5

    .line 648
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 650
    :cond_5
    if-eqz v3, :cond_6

    .line 651
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 657
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :cond_6
    :goto_6
    iget-object v9, p0, Lcom/android/phone/VE_ContentManager;->mHttpcon:Ljava/net/HttpURLConnection;

    if-eqz v9, :cond_4

    .line 658
    iget-object v9, p0, Lcom/android/phone/VE_ContentManager;->mHttpcon:Ljava/net/HttpURLConnection;

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 659
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/phone/VE_ContentManager;->mHttpcon:Ljava/net/HttpURLConnection;

    goto :goto_2

    .line 653
    .restart local v2       #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v2

    .line 654
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    .line 635
    .end local v2           #e:Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 636
    .local v2, e:Ljava/net/SocketTimeoutException;
    :goto_7
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 644
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/phone/VE_ContentManager;->isDownloadThread_Run:Z

    .line 647
    if-eqz v6, :cond_7

    .line 648
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 650
    :cond_7
    if-eqz v3, :cond_8

    .line 651
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 657
    .end local v2           #e:Ljava/net/SocketTimeoutException;
    :cond_8
    :goto_8
    iget-object v9, p0, Lcom/android/phone/VE_ContentManager;->mHttpcon:Ljava/net/HttpURLConnection;

    if-eqz v9, :cond_4

    .line 658
    iget-object v9, p0, Lcom/android/phone/VE_ContentManager;->mHttpcon:Ljava/net/HttpURLConnection;

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 659
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/phone/VE_ContentManager;->mHttpcon:Ljava/net/HttpURLConnection;

    goto/16 :goto_2

    .line 653
    .restart local v2       #e:Ljava/net/SocketTimeoutException;
    :catch_4
    move-exception v2

    .line 654
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8

    .line 637
    .end local v2           #e:Ljava/io/IOException;
    :catch_5
    move-exception v2

    .line 638
    .local v2, e:Ljava/net/MalformedURLException;
    :goto_9
    :try_start_7
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 644
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/phone/VE_ContentManager;->isDownloadThread_Run:Z

    .line 647
    if-eqz v6, :cond_9

    .line 648
    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 650
    :cond_9
    if-eqz v3, :cond_a

    .line 651
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 657
    .end local v2           #e:Ljava/net/MalformedURLException;
    :cond_a
    :goto_a
    iget-object v9, p0, Lcom/android/phone/VE_ContentManager;->mHttpcon:Ljava/net/HttpURLConnection;

    if-eqz v9, :cond_4

    .line 658
    iget-object v9, p0, Lcom/android/phone/VE_ContentManager;->mHttpcon:Ljava/net/HttpURLConnection;

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 659
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/phone/VE_ContentManager;->mHttpcon:Ljava/net/HttpURLConnection;

    goto/16 :goto_2

    .line 653
    .restart local v2       #e:Ljava/net/MalformedURLException;
    :catch_6
    move-exception v2

    .line 654
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_a

    .line 639
    .end local v2           #e:Ljava/io/IOException;
    :catch_7
    move-exception v2

    .line 640
    .restart local v2       #e:Ljava/io/IOException;
    :goto_b
    :try_start_9
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 644
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/phone/VE_ContentManager;->isDownloadThread_Run:Z

    .line 647
    if-eqz v6, :cond_b

    .line 648
    :try_start_a
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 650
    :cond_b
    if-eqz v3, :cond_c

    .line 651
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 657
    :cond_c
    :goto_c
    iget-object v9, p0, Lcom/android/phone/VE_ContentManager;->mHttpcon:Ljava/net/HttpURLConnection;

    if-eqz v9, :cond_4

    .line 658
    iget-object v9, p0, Lcom/android/phone/VE_ContentManager;->mHttpcon:Ljava/net/HttpURLConnection;

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 659
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/phone/VE_ContentManager;->mHttpcon:Ljava/net/HttpURLConnection;

    goto/16 :goto_2

    .line 653
    :catch_8
    move-exception v2

    .line 654
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_c

    .line 641
    .end local v2           #e:Ljava/io/IOException;
    :catch_9
    move-exception v2

    .line 642
    .local v2, e:Ljava/lang/Exception;
    :goto_d
    :try_start_b
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 644
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/phone/VE_ContentManager;->isDownloadThread_Run:Z

    .line 647
    if-eqz v6, :cond_d

    .line 648
    :try_start_c
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 650
    :cond_d
    if-eqz v3, :cond_e

    .line 651
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    .line 657
    .end local v2           #e:Ljava/lang/Exception;
    :cond_e
    :goto_e
    iget-object v9, p0, Lcom/android/phone/VE_ContentManager;->mHttpcon:Ljava/net/HttpURLConnection;

    if-eqz v9, :cond_4

    .line 658
    iget-object v9, p0, Lcom/android/phone/VE_ContentManager;->mHttpcon:Ljava/net/HttpURLConnection;

    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 659
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/phone/VE_ContentManager;->mHttpcon:Ljava/net/HttpURLConnection;

    goto/16 :goto_2

    .line 653
    .restart local v2       #e:Ljava/lang/Exception;
    :catch_a
    move-exception v2

    .line 654
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_e

    .line 644
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_f
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/phone/VE_ContentManager;->isDownloadThread_Run:Z

    .line 647
    if-eqz v6, :cond_f

    .line 648
    :try_start_d
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 650
    :cond_f
    if-eqz v3, :cond_10

    .line 651
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_b

    .line 657
    :cond_10
    :goto_10
    iget-object v10, p0, Lcom/android/phone/VE_ContentManager;->mHttpcon:Ljava/net/HttpURLConnection;

    if-eqz v10, :cond_11

    .line 658
    iget-object v10, p0, Lcom/android/phone/VE_ContentManager;->mHttpcon:Ljava/net/HttpURLConnection;

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 659
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/phone/VE_ContentManager;->mHttpcon:Ljava/net/HttpURLConnection;

    :cond_11
    throw v9

    .line 653
    :catch_b
    move-exception v2

    .line 654
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_10

    .line 668
    .end local v2           #e:Ljava/io/IOException;
    :cond_12
    iget-object v9, p0, Lcom/android/phone/VE_ContentManager;->ve_Handler:Landroid/os/Handler;

    const/16 v10, 0x73

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_3

    .line 672
    :cond_13
    iget v9, p0, Lcom/android/phone/VE_ContentManager;->mDownloadFile_Size:I

    if-ge v0, v9, :cond_14

    .line 673
    const/4 v9, 0x5

    const-string v10, "VE_ContentManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "TotalReadLen("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ") < mDownloadFile_Size("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/phone/VE_ContentManager;->mDownloadFile_Size:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 674
    iget-object v9, p0, Lcom/android/phone/VE_ContentManager;->ve_Handler:Landroid/os/Handler;

    const/16 v10, 0x6b

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_4

    .line 676
    :cond_14
    iget-object v9, p0, Lcom/android/phone/VE_ContentManager;->ve_Handler:Landroid/os/Handler;

    const/16 v10, 0x6a

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_4

    .line 644
    .end local v6           #os:Ljava/io/FileOutputStream;
    .restart local v4       #nReadLen:I
    .restart local v7       #os:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v9

    move-object v6, v7

    .end local v7           #os:Ljava/io/FileOutputStream;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    goto :goto_f

    .line 641
    .end local v6           #os:Ljava/io/FileOutputStream;
    .restart local v7       #os:Ljava/io/FileOutputStream;
    :catch_c
    move-exception v2

    move-object v6, v7

    .end local v7           #os:Ljava/io/FileOutputStream;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    goto/16 :goto_d

    .line 639
    .end local v6           #os:Ljava/io/FileOutputStream;
    .restart local v7       #os:Ljava/io/FileOutputStream;
    :catch_d
    move-exception v2

    move-object v6, v7

    .end local v7           #os:Ljava/io/FileOutputStream;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    goto/16 :goto_b

    .line 637
    .end local v6           #os:Ljava/io/FileOutputStream;
    .restart local v7       #os:Ljava/io/FileOutputStream;
    :catch_e
    move-exception v2

    move-object v6, v7

    .end local v7           #os:Ljava/io/FileOutputStream;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    goto/16 :goto_9

    .line 635
    .end local v6           #os:Ljava/io/FileOutputStream;
    .restart local v7       #os:Ljava/io/FileOutputStream;
    :catch_f
    move-exception v2

    move-object v6, v7

    .end local v7           #os:Ljava/io/FileOutputStream;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    goto/16 :goto_7

    .line 633
    .end local v6           #os:Ljava/io/FileOutputStream;
    .restart local v7       #os:Ljava/io/FileOutputStream;
    :catch_10
    move-exception v2

    move-object v6, v7

    .end local v7           #os:Ljava/io/FileOutputStream;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    goto/16 :goto_5

    .end local v6           #os:Ljava/io/FileOutputStream;
    .restart local v5       #navailable:I
    .restart local v7       #os:Ljava/io/FileOutputStream;
    :cond_15
    move-object v6, v7

    .end local v7           #os:Ljava/io/FileOutputStream;
    .restart local v6       #os:Ljava/io/FileOutputStream;
    goto/16 :goto_2
.end method

.method private getDownloadContentSize()I
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 548
    const/4 v1, 0x3

    const-string v3, "VE_ContentManager"

    const-string v4, "getDownloadContentSize()"

    invoke-static {v1, v3, v4}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 551
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v3, p0, Lcom/android/phone/VE_ContentManager;->mDownloadUrl:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    iput-object v1, p0, Lcom/android/phone/VE_ContentManager;->mHttpcon:Ljava/net/HttpURLConnection;

    .line 552
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager;->mHttpcon:Ljava/net/HttpURLConnection;

    const/16 v3, 0x2710

    invoke-virtual {v1, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 553
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager;->mHttpcon:Ljava/net/HttpURLConnection;

    const/16 v3, 0x2710

    invoke-virtual {v1, v3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 555
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager;->mHttpcon:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v3, 0xc8

    if-ne v1, v3, :cond_0

    .line 556
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager;->mHttpcon:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/URLConnection;->getContentLength()I
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v1

    .line 568
    :goto_0
    return v1

    .line 558
    :catch_0
    move-exception v0

    .line 559
    .local v0, e:Ljava/net/SocketTimeoutException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 567
    .end local v0           #e:Ljava/net/SocketTimeoutException;
    :cond_0
    :goto_1
    iput-boolean v2, p0, Lcom/android/phone/VE_ContentManager;->isStopPlayContent:Z

    move v1, v2

    .line 568
    goto :goto_0

    .line 560
    :catch_1
    move-exception v0

    .line 561
    .local v0, e:Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 562
    .end local v0           #e:Ljava/net/MalformedURLException;
    :catch_2
    move-exception v0

    .line 563
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 564
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 565
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public static getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 921
    sget-object v0, Lcom/android/phone/VE_ContentManager;->_VE_ContentManager:Lcom/android/phone/VE_ContentManager;

    if-nez v0, :cond_0

    .line 922
    new-instance v0, Lcom/android/phone/VE_ContentManager;

    invoke-direct {v0}, Lcom/android/phone/VE_ContentManager;-><init>()V

    sput-object v0, Lcom/android/phone/VE_ContentManager;->_VE_ContentManager:Lcom/android/phone/VE_ContentManager;

    .line 924
    :cond_0
    sget-object v0, Lcom/android/phone/VE_ContentManager;->_VE_ContentManager:Lcom/android/phone/VE_ContentManager;

    iget-object v0, v0, Lcom/android/phone/VE_ContentManager;->ve_Handler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getInstance()Lcom/android/phone/VE_ContentManager;
    .locals 1

    .prologue
    .line 928
    sget-object v0, Lcom/android/phone/VE_ContentManager;->_VE_ContentManager:Lcom/android/phone/VE_ContentManager;

    if-nez v0, :cond_0

    .line 929
    new-instance v0, Lcom/android/phone/VE_ContentManager;

    invoke-direct {v0}, Lcom/android/phone/VE_ContentManager;-><init>()V

    sput-object v0, Lcom/android/phone/VE_ContentManager;->_VE_ContentManager:Lcom/android/phone/VE_ContentManager;

    .line 931
    :cond_0
    sget-object v0, Lcom/android/phone/VE_ContentManager;->_VE_ContentManager:Lcom/android/phone/VE_ContentManager;

    return-object v0
.end method

.method private initAmfPlayer()V
    .locals 12

    .prologue
    const/16 v11, 0x71

    const/16 v10, 0x6e

    const/4 v9, 0x3

    .line 759
    const-string v5, "VE_ContentManager"

    const-string v6, "initAmfPlayer()"

    invoke-static {v9, v5, v6}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 761
    iget-object v5, p0, Lcom/android/phone/VE_ContentManager;->mContentFormat:Ljava/lang/String;

    const-string v6, "skm"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 762
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/phone/VE_ContentManager;->DOWNLOAD_PATH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/VE_ContentManager;->mSaveFileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "chmod 666 "

    invoke-static {v5, v6}, Lcom/android/phone/VE_File;->set_FileAuthority(Ljava/lang/String;Ljava/lang/String;)Z

    .line 763
    iget-object v5, p0, Lcom/android/phone/VE_ContentManager;->ve_Handler:Landroid/os/Handler;

    invoke-virtual {v5, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 811
    :goto_0
    return-void

    .line 764
    :cond_0
    iget-object v5, p0, Lcom/android/phone/VE_ContentManager;->mContentFormat:Ljava/lang/String;

    const-string v6, "jpg"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/phone/VE_ContentManager;->mContentFormat:Ljava/lang/String;

    const-string v6, "jpeg"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 765
    :cond_1
    iget-object v5, p0, Lcom/android/phone/VE_ContentManager;->ve_Handler:Landroid/os/Handler;

    const/16 v6, 0x75

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 767
    :cond_2
    iget-object v5, p0, Lcom/android/phone/VE_ContentManager;->mAMF_Player:Lcom/android/phone/AMF_Player;

    if-nez v5, :cond_3

    .line 768
    new-instance v5, Lcom/android/phone/AMF_Player;

    invoke-direct {v5}, Lcom/android/phone/AMF_Player;-><init>()V

    iput-object v5, p0, Lcom/android/phone/VE_ContentManager;->mAMF_Player:Lcom/android/phone/AMF_Player;

    .line 771
    :cond_3
    const/4 v2, 0x0

    .line 773
    .local v2, error:I
    iget-boolean v5, p0, Lcom/android/phone/VE_ContentManager;->isEndPlayThread_Run:Z

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Lcom/android/phone/VE_ContentManager;->isEndBufferingThread_Run:Z

    if-eqz v5, :cond_4

    .line 774
    iget-object v5, p0, Lcom/android/phone/VE_ContentManager;->mAMF_Player:Lcom/android/phone/AMF_Player;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/phone/VE_ContentManager;->DOWNLOAD_PATH:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/VE_ContentManager;->mSaveFileName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xf0

    const/16 v8, 0xb4

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/phone/AMF_Player;->init_player(Ljava/lang/String;II)I

    move-result v2

    .line 779
    :goto_1
    if-gez v2, :cond_5

    .line 780
    iget-object v5, p0, Lcom/android/phone/VE_ContentManager;->ve_Handler:Landroid/os/Handler;

    invoke-virtual {v5, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 776
    :cond_4
    const/4 v2, -0x1

    goto :goto_1

    .line 782
    :cond_5
    iget-object v5, p0, Lcom/android/phone/VE_ContentManager;->mAMF_Player:Lcom/android/phone/AMF_Player;

    invoke-virtual {v5}, Lcom/android/phone/AMF_Player;->get_AmfHandle()I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/mtelo/amf/AmfCodec;->AMFGetClipHandle(II)I

    move-result v0

    .line 783
    .local v0, clipHandle:I
    iget-object v5, p0, Lcom/android/phone/VE_ContentManager;->mAMF_Player:Lcom/android/phone/AMF_Player;

    invoke-virtual {v5}, Lcom/android/phone/AMF_Player;->get_AmfHandle()I

    move-result v5

    invoke-static {v5, v0}, Lcom/mtelo/amf/AmfCodec;->AMFGetClipMimeType(II)I

    move-result v3

    .line 785
    .local v3, mimeType:I
    if-ne v3, v9, :cond_7

    .line 786
    sget-object v4, Lcom/android/phone/VE_ContentManager;->DOWNLOAD_PATH:Ljava/lang/String;

    .line 787
    .local v4, path:Ljava/lang/String;
    const-string v5, "temp"

    iput-object v5, p0, Lcom/android/phone/VE_ContentManager;->mSaveFileName:Ljava/lang/String;

    .line 788
    const-string v5, "media"

    iput-object v5, p0, Lcom/android/phone/VE_ContentManager;->mContentFormat:Ljava/lang/String;

    .line 790
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/VE_ContentManager;->mSaveFileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 792
    :try_start_0
    iget-object v5, p0, Lcom/android/phone/VE_ContentManager;->mAMF_Player:Lcom/android/phone/AMF_Player;

    invoke-virtual {v5}, Lcom/android/phone/AMF_Player;->get_AmfHandle()I

    move-result v5

    const-string v6, "EUC-KR"

    invoke-virtual {v4, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-static {v5, v0, v6}, Lcom/mtelo/amf/AmfCodec;->AMFGetClipMedia(II[B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 799
    :goto_2
    if-gez v2, :cond_6

    .line 800
    iget-object v5, p0, Lcom/android/phone/VE_ContentManager;->ve_Handler:Landroid/os/Handler;

    invoke-virtual {v5, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 794
    :catch_0
    move-exception v1

    .line 795
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 796
    const/4 v2, -0x1

    goto :goto_2

    .line 802
    .end local v1           #e:Ljava/lang/Exception;
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/phone/VE_ContentManager;->DOWNLOAD_PATH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/VE_ContentManager;->mSaveFileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "chmod 666 "

    invoke-static {v5, v6}, Lcom/android/phone/VE_File;->set_FileAuthority(Ljava/lang/String;Ljava/lang/String;)Z

    .line 804
    iget-object v5, p0, Lcom/android/phone/VE_ContentManager;->ve_Handler:Landroid/os/Handler;

    invoke-virtual {v5, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 807
    .end local v4           #path:Ljava/lang/String;
    :cond_7
    iget-object v5, p0, Lcom/android/phone/VE_ContentManager;->ve_Handler:Landroid/os/Handler;

    const/16 v6, 0x6d

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method

.method private initBuffer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 860
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager;->mAMF_Player:Lcom/android/phone/AMF_Player;

    if-eqz v0, :cond_0

    .line 861
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager;->mAMF_Player:Lcom/android/phone/AMF_Player;

    const/16 v1, 0xa

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/AMF_Player;->Put_FrameToBuffer(II)I

    .line 863
    iput v2, p0, Lcom/android/phone/VE_ContentManager;->mBuffering_lop_i:I

    .line 864
    iput v2, p0, Lcom/android/phone/VE_ContentManager;->mPlay_lop_i:I

    .line 866
    :cond_0
    return-void
.end method

.method private insertContentDB(Ljava/lang/String;I)V
    .locals 5
    .parameter "contentname"
    .parameter "contentsize"

    .prologue
    const/4 v4, 0x3

    .line 709
    const-string v0, "VE_ContentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateContentDB("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 711
    iget-wide v0, p0, Lcom/android/phone/VE_ContentManager;->mUsed_Memory:J

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/phone/VE_ContentManager;->mUsed_Memory:J

    .line 712
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 713
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "key_used_memory"

    iget-wide v2, p0, Lcom/android/phone/VE_ContentManager;->mUsed_Memory:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 714
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 716
    const-string v0, "VE_ContentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update used memory = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/phone/VE_ContentManager;->mUsed_Memory:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 717
    return-void
.end method

.method private isContentExist(Ljava/lang/String;)Z
    .locals 8
    .parameter "downloadurl"

    .prologue
    const/4 v7, 0x3

    .line 502
    const-string v3, "VE_ContentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isContentExist("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v3, v4}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 504
    const/4 v0, 0x0

    .line 505
    .local v0, filesize:I
    const/4 v2, 0x0

    .line 507
    .local v2, isExists:Z
    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/VE_ContentManager;->mSaveFileName:Ljava/lang/String;

    .line 509
    const-string v3, "feature_skt"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 510
    iget-object v3, p0, Lcom/android/phone/VE_ContentManager;->mSaveFileName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/VE_ContentManager;->mSaveFileName:Ljava/lang/String;

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/VE_ContentManager;->mContentFormat:Ljava/lang/String;

    .line 514
    :goto_0
    iget-object v3, p0, Lcom/android/phone/VE_ContentManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v4, p0, Lcom/android/phone/VE_ContentManager;->mSaveFileName:Ljava/lang/String;

    const-string v5, "0"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 515
    iget-object v3, p0, Lcom/android/phone/VE_ContentManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "key_used_memory"

    const-wide/16 v5, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/phone/VE_ContentManager;->mUsed_Memory:J

    .line 517
    const-string v3, "VE_ContentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " mUsed_Memory = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/phone/VE_ContentManager;->mUsed_Memory:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v3, v4}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 519
    if-lez v0, :cond_3

    .line 521
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/phone/VE_ContentManager;->DOWNLOAD_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/VE_ContentManager;->mSaveFileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 523
    .local v1, fp:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    int-to-long v5, v0

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 524
    const/4 v2, 0x1

    .line 544
    .end local v1           #fp:Ljava/io/File;
    :cond_0
    :goto_1
    return v2

    .line 512
    :cond_1
    const-string v3, "amf"

    iput-object v3, p0, Lcom/android/phone/VE_ContentManager;->mContentFormat:Ljava/lang/String;

    goto :goto_0

    .line 528
    .restart local v1       #fp:Ljava/io/File;
    :cond_2
    iget-wide v3, p0, Lcom/android/phone/VE_ContentManager;->mUsed_Memory:J

    int-to-long v5, v0

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/phone/VE_ContentManager;->mUsed_Memory:J

    .line 530
    iget-object v3, p0, Lcom/android/phone/VE_ContentManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    iget-object v4, p0, Lcom/android/phone/VE_ContentManager;->mSaveFileName:Ljava/lang/String;

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 531
    iget-object v3, p0, Lcom/android/phone/VE_ContentManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v4, "key_used_memory"

    iget-wide v5, p0, Lcom/android/phone/VE_ContentManager;->mUsed_Memory:J

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 532
    iget-object v3, p0, Lcom/android/phone/VE_ContentManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 534
    const-string v3, "VE_ContentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DB have data, but file not in the DIR. update mUsed_Memory = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/phone/VE_ContentManager;->mUsed_Memory:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v3, v4}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 537
    .end local v1           #fp:Ljava/io/File;
    :cond_3
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/phone/VE_ContentManager;->DOWNLOAD_PATH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/VE_ContentManager;->mSaveFileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    .line 539
    if-eqz v2, :cond_0

    .line 540
    const/4 v2, 0x0

    .line 541
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/phone/VE_ContentManager;->isFileExists:Z

    goto :goto_1
.end method

.method private playRingtone()V
    .locals 4

    .prologue
    .line 844
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager;->mAudioMgr:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/VE_ContentManager;->mAudioMgr:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 845
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager;->mAMF_Player:Lcom/android/phone/AMF_Player;

    invoke-virtual {v0}, Lcom/android/phone/AMF_Player;->isHaveBGM()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 846
    const/4 v0, 0x3

    const-string v1, "VE_ContentManager"

    const-string v2, "have sound content"

    invoke-static {v0, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 848
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getRinger()Lcom/android/phone/Ringer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/Ringer;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 849
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getRinger()Lcom/android/phone/Ringer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/Ringer;->stopRing()V

    .line 850
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getRinger()Lcom/android/phone/Ringer;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/phone/VE_ContentManager;->DOWNLOAD_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/VE_ContentManager;->mAMF_Player:Lcom/android/phone/AMF_Player;

    invoke-virtual {v3}, Lcom/android/phone/AMF_Player;->get_BgmName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/Ringer;->setCustomRingtoneUri(Landroid/net/Uri;)V

    .line 851
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getRinger()Lcom/android/phone/Ringer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/Ringer;->ring()V

    .line 857
    :cond_0
    :goto_0
    return-void

    .line 853
    :cond_1
    const/4 v0, 0x5

    const-string v1, "VE_ContentManager"

    const-string v2, "ringer is not ringing"

    invoke-static {v0, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private removeContent(I)V
    .locals 9
    .parameter "needsize"

    .prologue
    const/4 v8, 0x3

    .line 720
    const-string v5, "VE_ContentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removeContent("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v5, v6}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 722
    const/4 v3, 0x0

    .local v3, nremoved_size:I
    const/4 v2, 0x0

    .line 724
    .local v2, nfilesize:I
    iget-object v5, p0, Lcom/android/phone/VE_ContentManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v4

    .line 726
    .local v4, ve_map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 727
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 728
    .local v0, filename:Ljava/lang/String;
    const-string v5, "key_used_memory"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 729
    iget-object v5, p0, Lcom/android/phone/VE_ContentManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v6, "0"

    invoke-interface {v5, v0, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 731
    if-lez v2, :cond_0

    .line 732
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/phone/VE_ContentManager;->DOWNLOAD_PATH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/VE_ContentManager;->deleteContentFile(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 733
    const-string v5, "VE_ContentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " file delete faild "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v5, v6}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 735
    :cond_1
    iget-object v5, p0, Lcom/android/phone/VE_ContentManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v5, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 737
    add-int/2addr v3, v2

    .line 738
    if-le v3, p1, :cond_0

    .line 749
    .end local v0           #filename:Ljava/lang/String;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    if-lez v3, :cond_3

    .line 750
    iget-wide v5, p0, Lcom/android/phone/VE_ContentManager;->mUsed_Memory:J

    int-to-long v7, v3

    sub-long/2addr v5, v7

    iput-wide v5, p0, Lcom/android/phone/VE_ContentManager;->mUsed_Memory:J

    .line 751
    iget-object v5, p0, Lcom/android/phone/VE_ContentManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v6, "key_used_memory"

    iget-wide v7, p0, Lcom/android/phone/VE_ContentManager;->mUsed_Memory:J

    invoke-interface {v5, v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 754
    :cond_3
    iget-object v5, p0, Lcom/android/phone/VE_ContentManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 755
    iget-object v5, p0, Lcom/android/phone/VE_ContentManager;->ve_Handler:Landroid/os/Handler;

    const/16 v6, 0x68

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 756
    return-void

    .line 746
    :cond_4
    const-string v5, "VE_ContentManager"

    const-string v6, "ve_map.isEmpty()"

    invoke-static {v8, v5, v6}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private removeUnusualContent()V
    .locals 5

    .prologue
    const/4 v2, 0x5

    .line 1006
    const-string v0, "VE_ContentManager"

    const-string v1, "removeUnusualContent()"

    invoke-static {v2, v0, v1}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 1010
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/phone/VE_ContentManager;->DOWNLOAD_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/VE_ContentManager;->mSaveFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1011
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/phone/VE_ContentManager;->mSaveFileName:Ljava/lang/String;

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1013
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/phone/VE_ContentManager;->DOWNLOAD_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/VE_ContentManager;->mSaveFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/VE_ContentManager;->deleteContentFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1014
    iget-wide v1, p0, Lcom/android/phone/VE_ContentManager;->mUsed_Memory:J

    int-to-long v3, v0

    sub-long v0, v1, v3

    iput-wide v0, p0, Lcom/android/phone/VE_ContentManager;->mUsed_Memory:J

    .line 1015
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/android/phone/VE_ContentManager;->mSaveFileName:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1016
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "key_used_memory"

    iget-wide v2, p0, Lcom/android/phone/VE_ContentManager;->mUsed_Memory:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1017
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1027
    :goto_0
    return-void

    .line 1019
    :cond_0
    const/4 v0, 0x5

    const-string v1, "VE_ContentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/VE_ContentManager;->mSaveFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1024
    :catch_0
    move-exception v0

    .line 1025
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1022
    :cond_1
    const/4 v0, 0x5

    :try_start_1
    const-string v1, "VE_ContentManager"

    const-string v2, "there is no file to delete"

    invoke-static {v0, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private sendMsgToIncallscreenMediaError()V
    .locals 3

    .prologue
    .line 827
    const/4 v0, 0x3

    const-string v1, "VE_ContentManager"

    const-string v2, "sendMsgToIncallscreenMediaError()"

    invoke-static {v0, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 828
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager;->mPhoneAppHandler:Landroid/os/Handler;

    const/16 v1, 0x11f1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 829
    return-void
.end method

.method private sendMsgToIncallscreenReadyToPlay()V
    .locals 3

    .prologue
    .line 814
    const/4 v0, 0x3

    const-string v1, "VE_ContentManager"

    const-string v2, "sendMsgToIncallscreenReadyToPlay()"

    invoke-static {v0, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 816
    iget-boolean v0, p0, Lcom/android/phone/VE_ContentManager;->ExitProgram:Z

    if-nez v0, :cond_0

    .line 817
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager;->mPhoneAppHandler:Landroid/os/Handler;

    const/16 v1, 0x11ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 824
    :goto_0
    return-void

    .line 819
    :cond_0
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 820
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 822
    :cond_1
    const/16 v0, 0x63

    invoke-direct {p0, v0}, Lcom/android/phone/VE_ContentManager;->set_Class_State(I)V

    goto :goto_0
.end method

.method private set_Class_State(I)V
    .locals 0
    .parameter "s"

    .prologue
    .line 939
    iput p1, p0, Lcom/android/phone/VE_ContentManager;->mClass_State:I

    .line 940
    return-void
.end method

.method private sleep(I)V
    .locals 3
    .parameter "ms"

    .prologue
    .line 914
    int-to-long v1, p1

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 918
    :goto_0
    return-void

    .line 915
    :catch_0
    move-exception v0

    .line 916
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private start_Play_AM3()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 960
    const-string v1, "VE_ContentManager"

    const-string v2, "start_Play_AM3()"

    invoke-static {v4, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 961
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getCallCardInCallScreen()Lcom/android/phone/CallCard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/CallCard;->getVisualExpressionView()Landroid/view/View;

    move-result-object v0

    .line 962
    .local v0, parentView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 963
    const v1, 0x7f090011

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/VE_ContentManager;->mAmf_Viewer:Landroid/widget/ImageView;

    .line 965
    :cond_0
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager;->mAmf_Viewer:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 966
    const-string v1, "VE_ContentManager"

    const-string v2, "AMF_Viewer is Finish Inflate"

    invoke-static {v4, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 967
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager;->mAmf_Viewer:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 968
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager;->mAmf_Viewer:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 970
    iput-boolean v3, p0, Lcom/android/phone/VE_ContentManager;->isPlayThread_Run:Z

    .line 971
    iput-boolean v3, p0, Lcom/android/phone/VE_ContentManager;->isBufferingThread_Run:Z

    .line 972
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/android/phone/VE_ContentManager;->playing_Thread:Ljava/lang/Runnable;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 973
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/android/phone/VE_ContentManager;->buffering_Thread:Ljava/lang/Runnable;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 974
    invoke-direct {p0}, Lcom/android/phone/VE_ContentManager;->playRingtone()V

    .line 979
    :goto_0
    return-void

    .line 976
    :cond_1
    const/4 v1, 0x5

    const-string v2, "VE_ContentManager"

    const-string v3, "AMF_Viewer is Not Finish Inflate"

    invoke-static {v1, v2, v3}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 977
    const/16 v1, 0x63

    invoke-direct {p0, v1}, Lcom/android/phone/VE_ContentManager;->set_Class_State(I)V

    goto :goto_0
.end method

.method private start_Play_JPG()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 943
    const-string v1, "VE_ContentManager"

    const-string v2, "start_Play_JPG()"

    invoke-static {v3, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 944
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getCallCardInCallScreen()Lcom/android/phone/CallCard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/CallCard;->getVisualExpressionView()Landroid/view/View;

    move-result-object v0

    .line 945
    .local v0, parentView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 946
    const v1, 0x7f090011

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/VE_ContentManager;->mAmf_Viewer:Landroid/widget/ImageView;

    .line 948
    :cond_0
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager;->mAmf_Viewer:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 949
    const-string v1, "VE_ContentManager"

    const-string v2, "JPG_Viewer is Finish Inflate"

    invoke-static {v3, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 950
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager;->mAmf_Viewer:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 951
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager;->mAmf_Viewer:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 952
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager;->mAmf_Viewer:Landroid/widget/ImageView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/phone/VE_ContentManager;->DOWNLOAD_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/VE_ContentManager;->mSaveFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 957
    :goto_0
    return-void

    .line 954
    :cond_1
    const/4 v1, 0x5

    const-string v2, "VE_ContentManager"

    const-string v3, "JPG_Viewer is Not Finish Inflate"

    invoke-static {v1, v2, v3}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 955
    const/16 v1, 0x63

    invoke-direct {p0, v1}, Lcom/android/phone/VE_ContentManager;->set_Class_State(I)V

    goto :goto_0
.end method

.method private start_Play_SKM()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 982
    const/4 v1, 0x4

    const-string v2, "VE_ContentManager"

    const-string v3, "start_Play_SKM()"

    invoke-static {v1, v2, v3}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 983
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getCallCardInCallScreen()Lcom/android/phone/CallCard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/CallCard;->getVisualExpressionView()Landroid/view/View;

    move-result-object v0

    .line 984
    .local v0, parentView:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 985
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager;->mVideoView:Landroid/widget/VideoView;

    if-nez v1, :cond_0

    .line 986
    const v1, 0x7f090012

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/VideoView;

    iput-object v1, p0, Lcom/android/phone/VE_ContentManager;->mVideoView:Landroid/widget/VideoView;

    .line 987
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1, v4}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 988
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager;->mVideoView:Landroid/widget/VideoView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/phone/VE_ContentManager;->DOWNLOAD_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/VE_ContentManager;->mSaveFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 989
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 990
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 997
    :goto_0
    iput-boolean v4, p0, Lcom/android/phone/VE_ContentManager;->mIsPlayerCompleted:Z

    .line 998
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager;->ve_Handler:Landroid/os/Handler;

    const/16 v2, 0x12c

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1003
    :goto_1
    return-void

    .line 992
    :cond_0
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager;->mVideoView:Landroid/widget/VideoView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/phone/VE_ContentManager;->DOWNLOAD_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/VE_ContentManager;->mSaveFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 993
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1, v4}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 994
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 995
    iget-object v1, p0, Lcom/android/phone/VE_ContentManager;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    goto :goto_0

    .line 1000
    :cond_1
    const/4 v1, 0x5

    const-string v2, "VE_ContentManager"

    const-string v3, "parentView is null"

    invoke-static {v1, v2, v3}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 1001
    const/16 v1, 0x63

    invoke-direct {p0, v1}, Lcom/android/phone/VE_ContentManager;->set_Class_State(I)V

    goto :goto_1
.end method


# virtual methods
.method public get_Class_State()I
    .locals 1

    .prologue
    .line 935
    iget v0, p0, Lcom/android/phone/VE_ContentManager;->mClass_State:I

    return v0
.end method

.method public init(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 9
    .parameter "context"
    .parameter "msghandle"
    .parameter "downloadurl"

    .prologue
    const/16 v8, 0x63

    const/4 v7, 0x5

    const/4 v6, 0x0

    .line 206
    invoke-virtual {p0}, Lcom/android/phone/VE_ContentManager;->get_Class_State()I

    move-result v2

    .line 207
    .local v2, nState:I
    const/16 v3, 0x66

    if-eq v2, v3, :cond_0

    const/16 v3, 0x6b

    if-eq v2, v3, :cond_0

    const/16 v3, 0x6e

    if-eq v2, v3, :cond_0

    const/16 v3, 0x72

    if-eq v2, v3, :cond_0

    if-eq v2, v8, :cond_0

    const/16 v3, 0x74

    if-eq v2, v3, :cond_0

    const/16 v3, 0x12c

    if-eq v2, v3, :cond_0

    const/16 v3, 0x75

    if-eq v2, v3, :cond_0

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_3

    .line 222
    :cond_0
    const-string v3, "VE_ContentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "init("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v3, v4}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-boolean v3, p0, Lcom/android/phone/VE_ContentManager;->isStopPlayContent:Z

    if-nez v3, :cond_5

    .line 224
    iput-object p1, p0, Lcom/android/phone/VE_ContentManager;->mPhoneAppContext:Landroid/content/Context;

    .line 225
    iput-object p2, p0, Lcom/android/phone/VE_ContentManager;->mPhoneAppHandler:Landroid/os/Handler;

    .line 226
    iput-object p3, p0, Lcom/android/phone/VE_ContentManager;->mDownloadUrl:Ljava/lang/String;

    .line 228
    iput-boolean v6, p0, Lcom/android/phone/VE_ContentManager;->isDownloadThread_Run:Z

    .line 229
    iput-boolean v6, p0, Lcom/android/phone/VE_ContentManager;->isBufferingThread_Run:Z

    .line 230
    iput-boolean v6, p0, Lcom/android/phone/VE_ContentManager;->isPlayThread_Run:Z

    .line 231
    iput-boolean v6, p0, Lcom/android/phone/VE_ContentManager;->isOnPause:Z

    .line 232
    iput-boolean v6, p0, Lcom/android/phone/VE_ContentManager;->isIncallscreenReady:Z

    .line 233
    iput-boolean v6, p0, Lcom/android/phone/VE_ContentManager;->isFileExists:Z

    .line 235
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/phone/VE_ContentManager;->mPhoneAppContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/phone/VE_ContentManager;->DOWNLOAD_PATH:Ljava/lang/String;

    .line 237
    invoke-static {}, Lcom/android/phone/VE_File;->get_InternalFreeMemory()J

    move-result-wide v0

    .line 239
    .local v0, InternalFreeMemory:J
    sget-wide v3, Lcom/android/phone/VE_ContentManager;->MAX_MEMORY:J

    cmp-long v3, v0, v3

    if-gez v3, :cond_4

    .line 240
    iput-wide v0, p0, Lcom/android/phone/VE_ContentManager;->PROVIDE_MEMORY:J

    .line 245
    :goto_0
    iget-object v3, p0, Lcom/android/phone/VE_ContentManager;->mPhoneAppContext:Landroid/content/Context;

    const-string v4, "ve_preferences"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/VE_ContentManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 246
    iget-object v3, p0, Lcom/android/phone/VE_ContentManager;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/VE_ContentManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 248
    iget-object v3, p0, Lcom/android/phone/VE_ContentManager;->mAudioMgr:Landroid/media/AudioManager;

    if-nez v3, :cond_1

    .line 249
    const-string v3, "audio"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/android/phone/VE_ContentManager;->mAudioMgr:Landroid/media/AudioManager;

    .line 252
    :cond_1
    iget-boolean v3, p0, Lcom/android/phone/VE_ContentManager;->isIncallscreenReady:Z

    if-eqz v3, :cond_2

    .line 253
    invoke-direct {p0}, Lcom/android/phone/VE_ContentManager;->doCheck()V

    .line 259
    .end local v0           #InternalFreeMemory:J
    :cond_2
    :goto_1
    return-void

    .line 218
    :cond_3
    const/4 v3, 0x3

    const-string v4, "VE_ContentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "init("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") - it is duplicate function call - return!!!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " nState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 242
    .restart local v0       #InternalFreeMemory:J
    :cond_4
    sget-wide v3, Lcom/android/phone/VE_ContentManager;->MAX_MEMORY:J

    iput-wide v3, p0, Lcom/android/phone/VE_ContentManager;->PROVIDE_MEMORY:J

    goto :goto_0

    .line 256
    .end local v0           #InternalFreeMemory:J
    :cond_5
    const-string v3, "VE_ContentManager"

    const-string v4, "befor content download was not done !!! return "

    invoke-static {v7, v3, v4}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-direct {p0, v8}, Lcom/android/phone/VE_ContentManager;->set_Class_State(I)V

    goto :goto_1
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 4
    .parameter

    .prologue
    .line 1043
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/VE_ContentManager;->mIsPlayerCompleted:Z

    .line 1044
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager;->ve_Handler:Landroid/os/Handler;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1045
    const/4 v0, 0x4

    const-string v1, "VE_ContentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " onCompletion("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 1046
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 1047
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 1049
    :cond_0
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1052
    const/4 v0, 0x6

    const-string v1, "VE_ContentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onError("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 1053
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager;->ve_Handler:Landroid/os/Handler;

    const/16 v1, 0x74

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1054
    const/4 v0, 0x1

    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1030
    iput-boolean v2, p0, Lcom/android/phone/VE_ContentManager;->mIsPlayerCompleted:Z

    .line 1031
    iput-object p1, p0, Lcom/android/phone/VE_ContentManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 1032
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 1033
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 1034
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager;->ve_Handler:Landroid/os/Handler;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1036
    const/4 v0, 0x4

    const-string v1, "VE_ContentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " onPrepared("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/VE_ContentManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/phone/VE_Log;->write(ILjava/lang/String;Ljava/lang/String;)V

    .line 1037
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 1038
    iget-object v0, p0, Lcom/android/phone/VE_ContentManager;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 1040
    :cond_0
    return-void
.end method
