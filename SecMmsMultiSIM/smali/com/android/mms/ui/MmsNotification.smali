.class public Lcom/android/mms/ui/MmsNotification;
.super Ljava/lang/Object;
.source "MmsNotification.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/MmsNotification"

.field private static instance:Lcom/android/mms/ui/MmsNotification;


# instance fields
.field completionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field errorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field preparedListener:Landroid/media/MediaPlayer$OnPreparedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/android/mms/ui/MmsNotification;

    invoke-direct {v0}, Lcom/android/mms/ui/MmsNotification;-><init>()V

    sput-object v0, Lcom/android/mms/ui/MmsNotification;->instance:Lcom/android/mms/ui/MmsNotification;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/android/mms/ui/MmsNotification$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsNotification$1;-><init>(Lcom/android/mms/ui/MmsNotification;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsNotification;->completionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 69
    new-instance v0, Lcom/android/mms/ui/MmsNotification$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsNotification$2;-><init>(Lcom/android/mms/ui/MmsNotification;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsNotification;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 83
    new-instance v0, Lcom/android/mms/ui/MmsNotification$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsNotification$3;-><init>(Lcom/android/mms/ui/MmsNotification;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsNotification;->preparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 19
    return-void
.end method

.method public static getInstance()Lcom/android/mms/ui/MmsNotification;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/android/mms/ui/MmsNotification;->instance:Lcom/android/mms/ui/MmsNotification;

    return-object v0
.end method


# virtual methods
.method public playMmsNotice(Landroid/content/Context;I)Z
    .locals 9
    .parameter "context"
    .parameter "resourceID"

    .prologue
    const/4 v1, 0x0

    .line 28
    const/4 v8, 0x1

    .line 31
    .local v8, isSuccess:Z
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 32
    .local v6, afd:Landroid/content/res/AssetFileDescriptor;
    if-nez v6, :cond_0

    .line 52
    .end local v6           #afd:Landroid/content/res/AssetFileDescriptor;
    :goto_0
    return v1

    .line 34
    .restart local v6       #afd:Landroid/content/res/AssetFileDescriptor;
    :cond_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 35
    .local v0, mediaPlayer:Landroid/media/MediaPlayer;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 36
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 38
    iget-object v1, p0, Lcom/android/mms/ui/MmsNotification;->completionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 39
    iget-object v1, p0, Lcom/android/mms/ui/MmsNotification;->errorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 40
    iget-object v1, p0, Lcom/android/mms/ui/MmsNotification;->preparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 42
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 43
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 45
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #mediaPlayer:Landroid/media/MediaPlayer;
    .end local v6           #afd:Landroid/content/res/AssetFileDescriptor;
    :goto_1
    move v1, v8

    .line 52
    goto :goto_0

    .line 47
    :catch_0
    move-exception v7

    .line 48
    .local v7, e:Ljava/lang/Exception;
    const/4 v8, 0x0

    .line 49
    const-string v1, "Mms/MmsNotification"

    const-string v2, "playMmsNotice error"

    invoke-static {v1, v2, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
