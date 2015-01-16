.class Lcom/sec/android/allshare/extension/SECAVPlayer$State;
.super Ljava/lang/Object;
.source "SECAVPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/extension/SECAVPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "State"
.end annotation


# instance fields
.field private currentState:Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

.field private mItemDuration:J

.field private mLastPos:J

.field private mMediaInfo:Lcom/sec/android/allshare/media/MediaInfo;

.field private mPlayRequested:Z

.field final synthetic this$0:Lcom/sec/android/allshare/extension/SECAVPlayer;


# direct methods
.method private constructor <init>(Lcom/sec/android/allshare/extension/SECAVPlayer;)V
    .locals 2
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/sec/android/allshare/extension/SECAVPlayer$State;->this$0:Lcom/sec/android/allshare/extension/SECAVPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer$State;->mMediaInfo:Lcom/sec/android/allshare/media/MediaInfo;

    .line 95
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer$State;->mLastPos:J

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer$State;->mPlayRequested:Z

    .line 99
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer$State;->mItemDuration:J

    .line 101
    sget-object v0, Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->UNKNOWN:Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    iput-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer$State;->currentState:Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/allshare/extension/SECAVPlayer;Lcom/sec/android/allshare/extension/SECAVPlayer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/sec/android/allshare/extension/SECAVPlayer$State;-><init>(Lcom/sec/android/allshare/extension/SECAVPlayer;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/allshare/extension/SECAVPlayer$State;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/sec/android/allshare/extension/SECAVPlayer$State;->getLastPos()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1500(Lcom/sec/android/allshare/extension/SECAVPlayer$State;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/sec/android/allshare/extension/SECAVPlayer$State;->setItemDuration(J)V

    return-void
.end method

.method static synthetic access$1600(Lcom/sec/android/allshare/extension/SECAVPlayer$State;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/sec/android/allshare/extension/SECAVPlayer$State;->setNewPlayState(J)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/allshare/extension/SECAVPlayer$State;)Lcom/sec/android/allshare/media/MediaInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/sec/android/allshare/extension/SECAVPlayer$State;->getMediaInfo()Lcom/sec/android/allshare/media/MediaInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/allshare/extension/SECAVPlayer$State;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/sec/android/allshare/extension/SECAVPlayer$State;->isPlayRequested()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/allshare/extension/SECAVPlayer$State;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/sec/android/allshare/extension/SECAVPlayer$State;->getItemDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$500(Lcom/sec/android/allshare/extension/SECAVPlayer$State;)Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer$State;->currentState:Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sec/android/allshare/extension/SECAVPlayer$State;Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;)Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/sec/android/allshare/extension/SECAVPlayer$State;->currentState:Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    return-object p1
.end method

.method static synthetic access$600(Lcom/sec/android/allshare/extension/SECAVPlayer$State;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/sec/android/allshare/extension/SECAVPlayer$State;->setPlayRequested(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/allshare/extension/SECAVPlayer$State;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/sec/android/allshare/extension/SECAVPlayer$State;->setLastPos(J)V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/allshare/extension/SECAVPlayer$State;Lcom/sec/android/allshare/media/MediaInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/sec/android/allshare/extension/SECAVPlayer$State;->setMediaInfo(Lcom/sec/android/allshare/media/MediaInfo;)V

    return-void
.end method

.method private getItemDuration()J
    .locals 2

    .prologue
    .line 144
    iget-wide v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer$State;->mItemDuration:J

    return-wide v0
.end method

.method private getLastPos()J
    .locals 2

    .prologue
    .line 132
    iget-wide v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer$State;->mLastPos:J

    return-wide v0
.end method

.method private getMediaInfo()Lcom/sec/android/allshare/media/MediaInfo;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer$State;->mMediaInfo:Lcom/sec/android/allshare/media/MediaInfo;

    return-object v0
.end method

.method private isPlayRequested()Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer$State;->mPlayRequested:Z

    return v0
.end method

.method private setItemDuration(J)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 140
    iput-wide p1, p0, Lcom/sec/android/allshare/extension/SECAVPlayer$State;->mItemDuration:J

    .line 141
    return-void
.end method

.method private setLastPos(J)V
    .locals 2
    .parameter "pos"

    .prologue
    .line 126
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 127
    iput-wide p1, p0, Lcom/sec/android/allshare/extension/SECAVPlayer$State;->mLastPos:J

    .line 129
    :cond_0
    return-void
.end method

.method private setMediaInfo(Lcom/sec/android/allshare/media/MediaInfo;)V
    .locals 0
    .parameter "info"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/sec/android/allshare/extension/SECAVPlayer$State;->mMediaInfo:Lcom/sec/android/allshare/media/MediaInfo;

    .line 123
    return-void
.end method

.method private setNewPlayState(J)V
    .locals 3
    .parameter "pos"

    .prologue
    const-wide/16 v1, 0x0

    .line 106
    iput-wide v1, p0, Lcom/sec/android/allshare/extension/SECAVPlayer$State;->mLastPos:J

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer$State;->mMediaInfo:Lcom/sec/android/allshare/media/MediaInfo;

    .line 108
    iput-wide v1, p0, Lcom/sec/android/allshare/extension/SECAVPlayer$State;->mItemDuration:J

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer$State;->mPlayRequested:Z

    .line 110
    sget-object v0, Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;->UNKNOWN:Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    iput-object v0, p0, Lcom/sec/android/allshare/extension/SECAVPlayer$State;->currentState:Lcom/sec/android/allshare/extension/SECAVPlayer$SECAVPlayerState;

    .line 111
    return-void
.end method

.method private setPlayRequested(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/sec/android/allshare/extension/SECAVPlayer$State;->mPlayRequested:Z

    .line 115
    return-void
.end method
