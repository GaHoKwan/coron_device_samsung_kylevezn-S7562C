.class final Lcom/sec/android/allshare/SubtitleImpl;
.super Lcom/sec/android/allshare/Subtitle;
.source "SubtitleImpl.java"


# instance fields
.field private mBundle:Landroid/os/Bundle;


# direct methods
.method protected constructor <init>(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/sec/android/allshare/Subtitle;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/allshare/SubtitleImpl;->mBundle:Landroid/os/Bundle;

    .line 32
    iput-object p1, p0, Lcom/sec/android/allshare/SubtitleImpl;->mBundle:Landroid/os/Bundle;

    .line 33
    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sec/android/allshare/SubtitleImpl;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/SubtitleImpl;->mBundle:Landroid/os/Bundle;

    const-string v1, "SUBTITLE_TYPE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/allshare/SubtitleImpl;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    check-cast v0, Landroid/net/Uri;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/SubtitleImpl;->mBundle:Landroid/os/Bundle;

    const-string v1, "SUBTITLE_URI"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    goto :goto_0
.end method
