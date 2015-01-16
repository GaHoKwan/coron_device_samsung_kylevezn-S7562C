.class final Lcom/sec/android/allshare/AudioItemImpl;
.super Lcom/sec/android/allshare/Item;
.source "AudioItemImpl.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/sec/android/allshare/iface/IBundleHolder;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/android/allshare/AudioItemImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mItemImpl:Lcom/sec/android/allshare/ItemImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 200
    new-instance v0, Lcom/sec/android/allshare/AudioItemImpl$1;

    invoke-direct {v0}, Lcom/sec/android/allshare/AudioItemImpl$1;-><init>()V

    sput-object v0, Lcom/sec/android/allshare/AudioItemImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/sec/android/allshare/Item;-><init>()V

    .line 43
    new-instance v0, Lcom/sec/android/allshare/ItemImpl;

    invoke-direct {v0, p1}, Lcom/sec/android/allshare/ItemImpl;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/sec/android/allshare/AudioItemImpl;->mItemImpl:Lcom/sec/android/allshare/ItemImpl;

    .line 44
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "src"

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/sec/android/allshare/Item;-><init>()V

    .line 193
    const-class v1, Landroid/os/Bundle;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    .line 194
    .local v0, bundle:Landroid/os/Bundle;
    new-instance v1, Lcom/sec/android/allshare/ItemImpl;

    invoke-direct {v1, v0}, Lcom/sec/android/allshare/ItemImpl;-><init>(Landroid/os/Bundle;)V

    iput-object v1, p0, Lcom/sec/android/allshare/AudioItemImpl;->mItemImpl:Lcom/sec/android/allshare/ItemImpl;

    .line 195
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/android/allshare/AudioItemImpl$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/sec/android/allshare/AudioItemImpl;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 151
    if-ne p0, p1, :cond_1

    .line 157
    :cond_0
    :goto_0
    return v0

    .line 153
    :cond_1
    if-eqz p1, :cond_2

    instance-of v2, p1, Lcom/sec/android/allshare/AudioItemImpl;

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    .line 154
    goto :goto_0

    .line 157
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/allshare/AudioItemImpl;->hashCode()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getAlbumArt()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sec/android/allshare/AudioItemImpl;->mItemImpl:Lcom/sec/android/allshare/ItemImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/ItemImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    check-cast v0, Landroid/net/Uri;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/AudioItemImpl;->mItemImpl:Lcom/sec/android/allshare/ItemImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/ItemImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "BUNDLE_PARCELABLE_AUDIO_ITEM_ALBUMART"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    goto :goto_0
.end method

.method public getAlbumTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/allshare/AudioItemImpl;->mItemImpl:Lcom/sec/android/allshare/ItemImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/ItemImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/AudioItemImpl;->mItemImpl:Lcom/sec/android/allshare/ItemImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/ItemImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "BUNDLE_STRING_AUDIO_ITEM_ALBUM_TITLE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sec/android/allshare/AudioItemImpl;->mItemImpl:Lcom/sec/android/allshare/ItemImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/ItemImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/AudioItemImpl;->mItemImpl:Lcom/sec/android/allshare/ItemImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/ItemImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "BUNDLE_STRING_AUDIO_ITEM_ARTIST"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getBitrate()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 297
    iget-object v2, p0, Lcom/sec/android/allshare/AudioItemImpl;->mItemImpl:Lcom/sec/android/allshare/ItemImpl;

    if-nez v2, :cond_1

    .line 305
    :cond_0
    :goto_0
    return v1

    .line 300
    :cond_1
    iget-object v2, p0, Lcom/sec/android/allshare/AudioItemImpl;->mItemImpl:Lcom/sec/android/allshare/ItemImpl;

    invoke-virtual {v2}, Lcom/sec/android/allshare/ItemImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 302
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 305
    const-string v1, "BUNDLE_STRING_AUDIO_ITEM_BITRATE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public getBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/sec/android/allshare/AudioItemImpl;->mItemImpl:Lcom/sec/android/allshare/ItemImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/ItemImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getContentBuildType()Lcom/sec/android/allshare/Item$ContentBuildType;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/sec/android/allshare/AudioItemImpl;->mItemImpl:Lcom/sec/android/allshare/ItemImpl;

    if-nez v0, :cond_0

    .line 240
    sget-object v0, Lcom/sec/android/allshare/Item$ContentBuildType;->UNKNOWN:Lcom/sec/android/allshare/Item$ContentBuildType;

    .line 242
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/AudioItemImpl;->mItemImpl:Lcom/sec/android/allshare/ItemImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/ItemImpl;->getContentBuildType()Lcom/sec/android/allshare/Item$ContentBuildType;

    move-result-object v0

    goto :goto_0
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sec/android/allshare/AudioItemImpl;->mItemImpl:Lcom/sec/android/allshare/ItemImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/ItemImpl;->getDate()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sec/android/allshare/AudioItemImpl;->mItemImpl:Lcom/sec/android/allshare/ItemImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/ItemImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/AudioItemImpl;->mItemImpl:Lcom/sec/android/allshare/ItemImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/ItemImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "BUNDLE_LONG_AUDIO_ITEM_DURATION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getExtension()Ljava/lang/String;
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/sec/android/allshare/AudioItemImpl;->mItemImpl:Lcom/sec/android/allshare/ItemImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/ItemImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/AudioItemImpl;->mItemImpl:Lcom/sec/android/allshare/ItemImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/ItemImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "BUNDLE_STRING_ITEM_EXTENSION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getFileSize()J
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/sec/android/allshare/AudioItemImpl;->mItemImpl:Lcom/sec/android/allshare/ItemImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/ItemImpl;->getFileSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public getGenre()Ljava/lang/String;
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/sec/android/allshare/AudioItemImpl;->mItemImpl:Lcom/sec/android/allshare/ItemImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/ItemImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/AudioItemImpl;->mItemImpl:Lcom/sec/android/allshare/ItemImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/ItemImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "BUNDLE_STRING_AUDIO_ITEM_GENRE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMimetype()Ljava/lang/String;
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/sec/android/allshare/AudioItemImpl;->mItemImpl:Lcom/sec/android/allshare/ItemImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/ItemImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/AudioItemImpl;->mItemImpl:Lcom/sec/android/allshare/ItemImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/ItemImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "BUNDLE_STRING_ITEM_MIMETYPE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getResolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    const-string v0, ""

    return-object v0
.end method

.method public getResourceList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/allshare/Item$Resource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 310
    iget-object v0, p0, Lcom/sec/android/allshare/AudioItemImpl;->mItemImpl:Lcom/sec/android/allshare/ItemImpl;

    if-nez v0, :cond_0

    .line 311
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 313
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/AudioItemImpl;->mItemImpl:Lcom/sec/android/allshare/ItemImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/ItemImpl;->getResourceList()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public getSeekMode()Lcom/sec/android/allshare/Item$SeekMode;
    .locals 5

    .prologue
    .line 272
    iget-object v4, p0, Lcom/sec/android/allshare/AudioItemImpl;->mItemImpl:Lcom/sec/android/allshare/ItemImpl;

    if-nez v4, :cond_0

    .line 273
    sget-object v2, Lcom/sec/android/allshare/Item$SeekMode;->UNKNOWN:Lcom/sec/android/allshare/Item$SeekMode;

    .line 292
    :goto_0
    return-object v2

    .line 275
    :cond_0
    iget-object v4, p0, Lcom/sec/android/allshare/AudioItemImpl;->mItemImpl:Lcom/sec/android/allshare/ItemImpl;

    invoke-virtual {v4}, Lcom/sec/android/allshare/ItemImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 277
    .local v0, bundle:Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 278
    sget-object v2, Lcom/sec/android/allshare/Item$SeekMode;->UNKNOWN:Lcom/sec/android/allshare/Item$SeekMode;

    goto :goto_0

    .line 280
    :cond_1
    const-string v4, "BUNDLE_STRING_AUDIO_ITEM_SEEKMODE"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 281
    .local v3, seekModeStr:Ljava/lang/String;
    if-nez v3, :cond_2

    .line 282
    sget-object v2, Lcom/sec/android/allshare/Item$SeekMode;->UNKNOWN:Lcom/sec/android/allshare/Item$SeekMode;

    goto :goto_0

    .line 284
    :cond_2
    sget-object v2, Lcom/sec/android/allshare/Item$SeekMode;->UNKNOWN:Lcom/sec/android/allshare/Item$SeekMode;

    .line 287
    .local v2, seekMode:Lcom/sec/android/allshare/Item$SeekMode;
    :try_start_0
    invoke-static {v3}, Lcom/sec/android/allshare/Item$SeekMode;->valueOf(Ljava/lang/String;)Lcom/sec/android/allshare/Item$SeekMode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 288
    :catch_0
    move-exception v1

    .line 289
    .local v1, e:Ljava/lang/Exception;
    sget-object v2, Lcom/sec/android/allshare/Item$SeekMode;->UNKNOWN:Lcom/sec/android/allshare/Item$SeekMode;

    goto :goto_0
.end method

.method public getSubtitle()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSubtitleList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/allshare/Subtitle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 264
    iget-object v0, p0, Lcom/sec/android/allshare/AudioItemImpl;->mItemImpl:Lcom/sec/android/allshare/ItemImpl;

    if-nez v0, :cond_0

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 267
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/AudioItemImpl;->mItemImpl:Lcom/sec/android/allshare/ItemImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/ItemImpl;->getSubtitleList()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public getThumbnail()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/sec/android/allshare/AudioItemImpl;->mItemImpl:Lcom/sec/android/allshare/ItemImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/ItemImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    check-cast v0, Landroid/net/Uri;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/AudioItemImpl;->mItemImpl:Lcom/sec/android/allshare/ItemImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/ItemImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "BUNDLE_PARCELABLE_AUDIO_ITEM_ALBUMART"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/sec/android/allshare/AudioItemImpl;->mItemImpl:Lcom/sec/android/allshare/ItemImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/ItemImpl;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/sec/android/allshare/Item$MediaType;
    .locals 1

    .prologue
    .line 120
    sget-object v0, Lcom/sec/android/allshare/Item$MediaType;->ITEM_AUDIO:Lcom/sec/android/allshare/Item$MediaType;

    return-object v0
.end method

.method public getURI()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sec/android/allshare/AudioItemImpl;->mItemImpl:Lcom/sec/android/allshare/ItemImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/ItemImpl;->getURI()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getWebContentDeliveryMode()Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/sec/android/allshare/AudioItemImpl;->mItemImpl:Lcom/sec/android/allshare/ItemImpl;

    if-nez v0, :cond_0

    .line 248
    sget-object v0, Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;->UNKNOWN:Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;

    .line 250
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/AudioItemImpl;->mItemImpl:Lcom/sec/android/allshare/ItemImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/ItemImpl;->getWebContentDeliveryMode()Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;

    move-result-object v0

    goto :goto_0
.end method

.method public getWebContentPlayMode()Lcom/sec/android/allshare/Item$WebContentBuilder$PlayMode;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 256
    iget-object v0, p0, Lcom/sec/android/allshare/AudioItemImpl;->mItemImpl:Lcom/sec/android/allshare/ItemImpl;

    if-nez v0, :cond_0

    .line 257
    sget-object v0, Lcom/sec/android/allshare/Item$WebContentBuilder$PlayMode;->UNKNOWN:Lcom/sec/android/allshare/Item$WebContentBuilder$PlayMode;

    .line 259
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/AudioItemImpl;->mItemImpl:Lcom/sec/android/allshare/ItemImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/ItemImpl;->getWebContentPlayMode()Lcom/sec/android/allshare/Item$WebContentBuilder$PlayMode;

    move-result-object v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 162
    iget-object v2, p0, Lcom/sec/android/allshare/AudioItemImpl;->mItemImpl:Lcom/sec/android/allshare/ItemImpl;

    if-nez v2, :cond_1

    .line 170
    :cond_0
    :goto_0
    return v1

    .line 165
    :cond_1
    iget-object v2, p0, Lcom/sec/android/allshare/AudioItemImpl;->mItemImpl:Lcom/sec/android/allshare/ItemImpl;

    invoke-virtual {v2}, Lcom/sec/android/allshare/ItemImpl;->getObjectID()Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, objID:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public isRootFolder()Z
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/sec/android/allshare/AudioItemImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 186
    return-void
.end method
