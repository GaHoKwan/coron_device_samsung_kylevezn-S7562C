.class public Lcom/sec/android/allshare/extension/impl/MediaGetterManager;
.super Ljava/lang/Object;
.source "MediaGetterManager.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static createMediaGetter(Lcom/sec/android/allshare/media/Provider;)Lcom/sec/android/allshare/extension/impl/IMediaGetter;
    .locals 2
    .parameter "provider"

    .prologue
    .line 22
    if-nez p0, :cond_0

    .line 23
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/allshare/media/Provider;->isSearchable()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 26
    invoke-static {p0}, Lcom/sec/android/allshare/extension/impl/MediaGetterManager;->isWM7Provider(Lcom/sec/android/allshare/media/Provider;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    new-instance v0, Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter;

    invoke-direct {v0}, Lcom/sec/android/allshare/extension/impl/WM7SearchMediaGetter;-><init>()V

    goto :goto_0

    .line 29
    :cond_1
    new-instance v0, Lcom/sec/android/allshare/extension/impl/SearchMediaGetter;

    invoke-direct {v0}, Lcom/sec/android/allshare/extension/impl/SearchMediaGetter;-><init>()V

    goto :goto_0

    .line 31
    :cond_2
    new-instance v0, Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter;

    invoke-direct {v0}, Lcom/sec/android/allshare/extension/impl/BrowseMediaGetter;-><init>()V

    goto :goto_0
.end method

.method private static isWM7Provider(Lcom/sec/android/allshare/media/Provider;)Z
    .locals 2
    .parameter "provider"

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/sec/android/allshare/Device;->getModelName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Windows Media"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
