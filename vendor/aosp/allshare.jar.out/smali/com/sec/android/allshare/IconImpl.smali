.class Lcom/sec/android/allshare/IconImpl;
.super Lcom/sec/android/allshare/Icon;
.source "IconImpl.java"


# instance fields
.field private mIconBundle:Landroid/os/Bundle;


# direct methods
.method protected constructor <init>(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/sec/android/allshare/Icon;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/allshare/IconImpl;->mIconBundle:Landroid/os/Bundle;

    .line 22
    iput-object p1, p0, Lcom/sec/android/allshare/IconImpl;->mIconBundle:Landroid/os/Bundle;

    .line 23
    return-void
.end method


# virtual methods
.method public getDepth()I
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sec/android/allshare/IconImpl;->mIconBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/IconImpl;->mIconBundle:Landroid/os/Bundle;

    const-string v1, "ICON_DEPTH"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sec/android/allshare/IconImpl;->mIconBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/IconImpl;->mIconBundle:Landroid/os/Bundle;

    const-string v1, "ICON_HEIGHT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getMimetype()Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sec/android/allshare/IconImpl;->mIconBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/IconImpl;->mIconBundle:Landroid/os/Bundle;

    const-string v1, "ICON_MIMETYPE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/android/allshare/IconImpl;->mIconBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    check-cast v0, Landroid/net/Uri;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/IconImpl;->mIconBundle:Landroid/os/Bundle;

    const-string v1, "ICON_URI"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    goto :goto_0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sec/android/allshare/IconImpl;->mIconBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/IconImpl;->mIconBundle:Landroid/os/Bundle;

    const-string v1, "ICON_WIDTH"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
