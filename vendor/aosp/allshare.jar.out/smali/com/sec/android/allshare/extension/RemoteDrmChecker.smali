.class public Lcom/sec/android/allshare/extension/RemoteDrmChecker;
.super Ljava/lang/Object;
.source "RemoteDrmChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/allshare/extension/RemoteDrmChecker$DrmCheckThread;
    }
.end annotation


# static fields
.field static final DRM_PROTECTED_ERROR:I = -0x1

.field static final DRM_PROTECTED_FALSE:I = 0x0

.field static final DRM_PROTECTED_TRUE:I = 0x1

.field static final OMA_PLUGIN_MIME:Ljava/lang/String; = "application/vnd.oma.drm.content"

.field static final PR_PLUGIN_MIME:Ljava/lang/String; = "audio/vnd.ms-playready.media.pya"

.field static final WMA_PLUGIN_MIME:Ljava/lang/String; = "audio/x-ms-wma"

.field static final WMV_PLUGIN_MIME:Ljava/lang/String; = "video/x-ms-wmv"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsDrmChecked:Z

.field private mIsDrmFile:I

.field private final mPath:Ljava/lang/String;

.field private final mTAG:Ljava/lang/String;

.field private final mTAG_CLASS:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, "Allshare"

    iput-object v0, p0, Lcom/sec/android/allshare/extension/RemoteDrmChecker;->mTAG:Ljava/lang/String;

    .line 35
    const-string v0, "DrmUtil"

    iput-object v0, p0, Lcom/sec/android/allshare/extension/RemoteDrmChecker;->mTAG_CLASS:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Android/data/com.sec.android.allshare/drmchecker/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/allshare/extension/RemoteDrmChecker;->mPath:Ljava/lang/String;

    .line 61
    iput-object p1, p0, Lcom/sec/android/allshare/extension/RemoteDrmChecker;->mContext:Landroid/content/Context;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/allshare/extension/RemoteDrmChecker;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/sec/android/allshare/extension/RemoteDrmChecker;->mIsDrmFile:I

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/allshare/extension/RemoteDrmChecker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput p1, p0, Lcom/sec/android/allshare/extension/RemoteDrmChecker;->mIsDrmFile:I

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/allshare/extension/RemoteDrmChecker;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sec/android/allshare/extension/RemoteDrmChecker;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/allshare/extension/RemoteDrmChecker;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sec/android/allshare/extension/RemoteDrmChecker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/android/allshare/extension/RemoteDrmChecker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/sec/android/allshare/extension/RemoteDrmChecker;->mIsDrmChecked:Z

    return p1
.end method


# virtual methods
.method public isDrmFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .parameter "selectedItemUri"
    .parameter "mExtension"
    .parameter "mimeType"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 65
    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 66
    const-string v3, "Allshare"

    const-string v4, "DrmUtilInvalid arg."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :goto_0
    return v2

    .line 70
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".wmv"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".wma"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    if-eqz p3, :cond_4

    const-string v4, "video/x-ms-wmv"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "audio/x-ms-wma"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "audio/wav"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "audio/x-wav"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 75
    :cond_2
    iput-boolean v3, p0, Lcom/sec/android/allshare/extension/RemoteDrmChecker;->mIsDrmChecked:Z

    .line 76
    new-instance v1, Lcom/sec/android/allshare/extension/RemoteDrmChecker$DrmCheckThread;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/sec/android/allshare/extension/RemoteDrmChecker$DrmCheckThread;-><init>(Lcom/sec/android/allshare/extension/RemoteDrmChecker;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .local v1, mDrmCheckThread:Lcom/sec/android/allshare/extension/RemoteDrmChecker$DrmCheckThread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 81
    const-wide/16 v3, 0x1388

    :try_start_0
    invoke-virtual {v1, v3, v4}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_1
    iget-boolean v3, p0, Lcom/sec/android/allshare/extension/RemoteDrmChecker;->mIsDrmChecked:Z

    if-nez v3, :cond_3

    .line 86
    const-string v3, "Allshare"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DrmUtilthread time out : isDrmFile = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/sec/android/allshare/extension/RemoteDrmChecker;->mIsDrmFile:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 89
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_3
    const-string v2, "Allshare"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DrmUtilreturning isDrmFile = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/allshare/extension/RemoteDrmChecker;->mIsDrmFile:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget v2, p0, Lcom/sec/android/allshare/extension/RemoteDrmChecker;->mIsDrmFile:I

    goto/16 :goto_0

    .line 92
    .end local v1           #mDrmCheckThread:Lcom/sec/android/allshare/extension/RemoteDrmChecker$DrmCheckThread;
    :cond_4
    const-string v2, "Allshare"

    const-string v4, "DrmUtilreturn FALSE, immediately."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 93
    goto/16 :goto_0
.end method
