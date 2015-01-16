.class final Lcom/sec/android/allshare/MediaInfoImpl;
.super Lcom/sec/android/allshare/media/MediaInfo;
.source "MediaInfoImpl.java"


# instance fields
.field private mBundle:Landroid/os/Bundle;

.field private mMediaDuration:J


# direct methods
.method constructor <init>(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/sec/android/allshare/media/MediaInfo;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/allshare/MediaInfoImpl;->mBundle:Landroid/os/Bundle;

    .line 23
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/allshare/MediaInfoImpl;->mMediaDuration:J

    .line 26
    iput-object p1, p0, Lcom/sec/android/allshare/MediaInfoImpl;->mBundle:Landroid/os/Bundle;

    .line 27
    return-void
.end method


# virtual methods
.method public getDuration()J
    .locals 4

    .prologue
    const-wide/16 v0, -0x1

    .line 31
    iget-wide v2, p0, Lcom/sec/android/allshare/MediaInfoImpl;->mMediaDuration:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    .line 32
    iget-object v2, p0, Lcom/sec/android/allshare/MediaInfoImpl;->mBundle:Landroid/os/Bundle;

    if-nez v2, :cond_1

    :goto_0
    iput-wide v0, p0, Lcom/sec/android/allshare/MediaInfoImpl;->mMediaDuration:J

    .line 36
    :cond_0
    iget-wide v0, p0, Lcom/sec/android/allshare/MediaInfoImpl;->mMediaDuration:J

    return-wide v0

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/sec/android/allshare/MediaInfoImpl;->mBundle:Landroid/os/Bundle;

    const-string v1, "BUNDLE_LONG_DURATION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method
