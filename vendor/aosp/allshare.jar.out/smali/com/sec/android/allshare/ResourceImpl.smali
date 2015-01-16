.class final Lcom/sec/android/allshare/ResourceImpl;
.super Lcom/sec/android/allshare/Item$Resource;
.source "ResourceImpl.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/android/allshare/ResourceImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBundle:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 127
    new-instance v0, Lcom/sec/android/allshare/ResourceImpl$1;

    invoke-direct {v0}, Lcom/sec/android/allshare/ResourceImpl$1;-><init>()V

    sput-object v0, Lcom/sec/android/allshare/ResourceImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/sec/android/allshare/Item$Resource;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/allshare/ResourceImpl;->mBundle:Landroid/os/Bundle;

    .line 17
    iput-object p1, p0, Lcom/sec/android/allshare/ResourceImpl;->mBundle:Landroid/os/Bundle;

    .line 18
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "src"

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/sec/android/allshare/Item$Resource;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/allshare/ResourceImpl;->mBundle:Landroid/os/Bundle;

    .line 124
    invoke-direct {p0, p1}, Lcom/sec/android/allshare/ResourceImpl;->readFromParcel(Landroid/os/Parcel;)V

    .line 125
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/android/allshare/ResourceImpl$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/sec/android/allshare/ResourceImpl;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "src"

    .prologue
    .line 118
    const-class v1, Landroid/os/Bundle;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 120
    .local v0, bundle:Landroid/os/Bundle;
    iput-object v0, p0, Lcom/sec/android/allshare/ResourceImpl;->mBundle:Landroid/os/Bundle;

    .line 121
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public getBitrate()I
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/sec/android/allshare/ResourceImpl;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 102
    const/4 v0, -0x1

    .line 104
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/ResourceImpl;->mBundle:Landroid/os/Bundle;

    const-string v1, "BUNDLE_STRING_RESOURCE_ITEM_BITRATE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sec/android/allshare/ResourceImpl;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 70
    const-wide/16 v0, -0x1

    .line 72
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/ResourceImpl;->mBundle:Landroid/os/Bundle;

    const-string v1, "BUNDLE_LONG_RESOURCE_ITEM_DURATION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getFileSize()J
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sec/android/allshare/ResourceImpl;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 86
    const-wide/16 v0, -0x1

    .line 88
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/ResourceImpl;->mBundle:Landroid/os/Bundle;

    const-string v1, "BUNDLE_LONG_ITEM_FILE_SIZE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getMimetype()Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/allshare/ResourceImpl;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 94
    const-string v0, ""

    .line 96
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/ResourceImpl;->mBundle:Landroid/os/Bundle;

    const-string v1, "BUNDLE_STRING_ITEM_MIMETYPE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getResolution()Ljava/lang/String;
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/allshare/ResourceImpl;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 78
    const-string v0, ""

    .line 80
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/ResourceImpl;->mBundle:Landroid/os/Bundle;

    const-string v1, "BUNDLE_STRING_RESOURCE_ITEM_RESOLUTION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSeekMode()Lcom/sec/android/allshare/Item$SeekMode;
    .locals 5

    .prologue
    .line 41
    iget-object v3, p0, Lcom/sec/android/allshare/ResourceImpl;->mBundle:Landroid/os/Bundle;

    if-nez v3, :cond_0

    .line 42
    sget-object v1, Lcom/sec/android/allshare/Item$SeekMode;->UNKNOWN:Lcom/sec/android/allshare/Item$SeekMode;

    .line 56
    :goto_0
    return-object v1

    .line 44
    :cond_0
    iget-object v3, p0, Lcom/sec/android/allshare/ResourceImpl;->mBundle:Landroid/os/Bundle;

    const-string v4, "BUNDLE_STRING_RESOURCE_ITEM_SEEKMODE"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 45
    .local v2, seekModeStr:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 46
    sget-object v1, Lcom/sec/android/allshare/Item$SeekMode;->UNKNOWN:Lcom/sec/android/allshare/Item$SeekMode;

    goto :goto_0

    .line 48
    :cond_1
    sget-object v1, Lcom/sec/android/allshare/Item$SeekMode;->UNKNOWN:Lcom/sec/android/allshare/Item$SeekMode;

    .line 51
    .local v1, seekMode:Lcom/sec/android/allshare/Item$SeekMode;
    :try_start_0
    invoke-static {v2}, Lcom/sec/android/allshare/Item$SeekMode;->valueOf(Ljava/lang/String;)Lcom/sec/android/allshare/Item$SeekMode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/sec/android/allshare/Item$SeekMode;->UNKNOWN:Lcom/sec/android/allshare/Item$SeekMode;

    goto :goto_0
.end method

.method public getType()Lcom/sec/android/allshare/Item$MediaType;
    .locals 5

    .prologue
    .line 22
    iget-object v3, p0, Lcom/sec/android/allshare/ResourceImpl;->mBundle:Landroid/os/Bundle;

    if-nez v3, :cond_0

    .line 23
    sget-object v1, Lcom/sec/android/allshare/Item$MediaType;->ITEM_UNKNOWN:Lcom/sec/android/allshare/Item$MediaType;

    .line 36
    :goto_0
    return-object v1

    .line 25
    :cond_0
    iget-object v3, p0, Lcom/sec/android/allshare/ResourceImpl;->mBundle:Landroid/os/Bundle;

    const-string v4, "BUNDLE_STRING_ITEM_TYPE"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 26
    .local v2, typeStr:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 27
    sget-object v1, Lcom/sec/android/allshare/Item$MediaType;->ITEM_UNKNOWN:Lcom/sec/android/allshare/Item$MediaType;

    goto :goto_0

    .line 29
    :cond_1
    sget-object v1, Lcom/sec/android/allshare/Item$MediaType;->ITEM_UNKNOWN:Lcom/sec/android/allshare/Item$MediaType;

    .line 32
    .local v1, type:Lcom/sec/android/allshare/Item$MediaType;
    :try_start_0
    invoke-static {v2}, Lcom/sec/android/allshare/Item$MediaType;->valueOf(Ljava/lang/String;)Lcom/sec/android/allshare/Item$MediaType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/sec/android/allshare/Item$MediaType;->ITEM_UNKNOWN:Lcom/sec/android/allshare/Item$MediaType;

    goto :goto_0
.end method

.method public getURI()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/allshare/ResourceImpl;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 62
    const/4 v0, 0x0

    .line 64
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/ResourceImpl;->mBundle:Landroid/os/Bundle;

    const-string v1, "BUNDLE_PARCELABLE_ITEM_URI"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/sec/android/allshare/ResourceImpl;->mBundle:Landroid/os/Bundle;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 115
    return-void
.end method
