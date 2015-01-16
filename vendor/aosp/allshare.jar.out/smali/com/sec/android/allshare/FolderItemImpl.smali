.class Lcom/sec/android/allshare/FolderItemImpl;
.super Lcom/sec/android/allshare/Item;
.source "FolderItemImpl.java"

# interfaces
.implements Lcom/sec/android/allshare/iface/IBundleHolder;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/android/allshare/FolderItemImpl;",
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
    .line 140
    new-instance v0, Lcom/sec/android/allshare/FolderItemImpl$1;

    invoke-direct {v0}, Lcom/sec/android/allshare/FolderItemImpl$1;-><init>()V

    sput-object v0, Lcom/sec/android/allshare/FolderItemImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/sec/android/allshare/Item;-><init>()V

    .line 42
    new-instance v0, Lcom/sec/android/allshare/ItemImpl;

    invoke-direct {v0, p1}, Lcom/sec/android/allshare/ItemImpl;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/sec/android/allshare/FolderItemImpl;->mItemImpl:Lcom/sec/android/allshare/ItemImpl;

    .line 43
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "src"

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/sec/android/allshare/Item;-><init>()V

    .line 133
    const-class v1, Landroid/os/Bundle;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    .line 134
    .local v0, bundle:Landroid/os/Bundle;
    new-instance v1, Lcom/sec/android/allshare/ItemImpl;

    invoke-direct {v1, v0}, Lcom/sec/android/allshare/ItemImpl;-><init>(Landroid/os/Bundle;)V

    iput-object v1, p0, Lcom/sec/android/allshare/FolderItemImpl;->mItemImpl:Lcom/sec/android/allshare/ItemImpl;

    .line 135
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/android/allshare/FolderItemImpl$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/sec/android/allshare/FolderItemImpl;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 89
    if-ne p0, p1, :cond_1

    .line 94
    :cond_0
    :goto_0
    return v0

    .line 91
    :cond_1
    if-eqz p1, :cond_2

    instance-of v2, p1, Lcom/sec/android/allshare/FolderItemImpl;

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    .line 92
    goto :goto_0

    .line 94
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/allshare/FolderItemImpl;->hashCode()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getAlbumTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    const-string v0, ""

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    const-string v0, ""

    return-object v0
.end method

.method public getBitrate()I
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/sec/android/allshare/FolderItemImpl;->mItemImpl:Lcom/sec/android/allshare/ItemImpl;

    if-nez v0, :cond_0

    .line 249
    const/4 v0, -0x1

    .line 251
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/FolderItemImpl;->mItemImpl:Lcom/sec/android/allshare/ItemImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/ItemImpl;->getBitrate()I

    move-result v0

    goto :goto_0
.end method

.method public getBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/sec/android/allshare/FolderItemImpl;->mItemImpl:Lcom/sec/android/allshare/ItemImpl;

    if-nez v0, :cond_0

    .line 113
    const/4 v0, 0x0

    .line 115
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/FolderItemImpl;->mItemImpl:Lcom/sec/android/allshare/ItemImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/ItemImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public getContentBuildType()Lcom/sec/android/allshare/Item$ContentBuildType;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/sec/android/allshare/FolderItemImpl;->mItemImpl:Lcom/sec/android/allshare/ItemImpl;

    if-nez v0, :cond_0

    .line 208
    sget-object v0, Lcom/sec/android/allshare/Item$ContentBuildType;->UNKNOWN:Lcom/sec/android/allshare/Item$ContentBuildType;

    .line 210
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/FolderItemImpl;->mItemImpl:Lcom/sec/android/allshare/ItemImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/ItemImpl;->getContentBuildType()Lcom/sec/android/allshare/Item$ContentBuildType;

    move-result-object v0

    goto :goto_0
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sec/android/allshare/FolderItemImpl;->mItemImpl:Lcom/sec/android/allshare/ItemImpl;

    if-nez v0, :cond_0

    .line 66
    const/4 v0, 0x0

    .line 68
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/FolderItemImpl;->mItemImpl:Lcom/sec/android/allshare/ItemImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/ItemImpl;->getDate()Ljava/util/Date;

    move-result-object v0

    goto :goto_0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 162
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getExtension()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    const-string v0, ""

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .prologue
    .line 172
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getGenre()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    const-string v0, ""

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMimetype()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    const-string v0, ""

    return-object v0
.end method

.method public getResolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
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
    .line 256
    iget-object v0, p0, Lcom/sec/android/allshare/FolderItemImpl;->mItemImpl:Lcom/sec/android/allshare/ItemImpl;

    if-nez v0, :cond_0

    .line 257
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 259
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/FolderItemImpl;->mItemImpl:Lcom/sec/android/allshare/ItemImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/ItemImpl;->getResourceList()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public getSeekMode()Lcom/sec/android/allshare/Item$SeekMode;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/sec/android/allshare/FolderItemImpl;->mItemImpl:Lcom/sec/android/allshare/ItemImpl;

    if-nez v0, :cond_0

    .line 241
    sget-object v0, Lcom/sec/android/allshare/Item$SeekMode;->UNKNOWN:Lcom/sec/android/allshare/Item$SeekMode;

    .line 243
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/FolderItemImpl;->mItemImpl:Lcom/sec/android/allshare/ItemImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/ItemImpl;->getSeekMode()Lcom/sec/android/allshare/Item$SeekMode;

    move-result-object v0

    goto :goto_0
.end method

.method public getSubtitle()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 197
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
    .line 232
    iget-object v0, p0, Lcom/sec/android/allshare/FolderItemImpl;->mItemImpl:Lcom/sec/android/allshare/ItemImpl;

    if-nez v0, :cond_0

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 235
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/FolderItemImpl;->mItemImpl:Lcom/sec/android/allshare/ItemImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/ItemImpl;->getSubtitleList()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public getThumbnail()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/allshare/FolderItemImpl;->mItemImpl:Lcom/sec/android/allshare/ItemImpl;

    if-nez v0, :cond_0

    .line 74
    const-string v0, ""

    .line 76
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/FolderItemImpl;->mItemImpl:Lcom/sec/android/allshare/ItemImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/ItemImpl;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getType()Lcom/sec/android/allshare/Item$MediaType;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/sec/android/allshare/Item$MediaType;->ITEM_FOLDER:Lcom/sec/android/allshare/Item$MediaType;

    return-object v0
.end method

.method public getURI()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/sec/android/allshare/FolderItemImpl;->mItemImpl:Lcom/sec/android/allshare/ItemImpl;

    if-nez v0, :cond_0

    .line 82
    const/4 v0, 0x0

    .line 84
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/FolderItemImpl;->mItemImpl:Lcom/sec/android/allshare/ItemImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/ItemImpl;->getURI()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public getWebContentDeliveryMode()Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/sec/android/allshare/FolderItemImpl;->mItemImpl:Lcom/sec/android/allshare/ItemImpl;

    if-nez v0, :cond_0

    .line 216
    sget-object v0, Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;->UNKNOWN:Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;

    .line 218
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/FolderItemImpl;->mItemImpl:Lcom/sec/android/allshare/ItemImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/ItemImpl;->getWebContentDeliveryMode()Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;

    move-result-object v0

    goto :goto_0
.end method

.method public getWebContentPlayMode()Lcom/sec/android/allshare/Item$WebContentBuilder$PlayMode;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 224
    iget-object v0, p0, Lcom/sec/android/allshare/FolderItemImpl;->mItemImpl:Lcom/sec/android/allshare/ItemImpl;

    if-nez v0, :cond_0

    .line 225
    sget-object v0, Lcom/sec/android/allshare/Item$WebContentBuilder$PlayMode;->UNKNOWN:Lcom/sec/android/allshare/Item$WebContentBuilder$PlayMode;

    .line 227
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/FolderItemImpl;->mItemImpl:Lcom/sec/android/allshare/ItemImpl;

    invoke-virtual {v0}, Lcom/sec/android/allshare/ItemImpl;->getWebContentPlayMode()Lcom/sec/android/allshare/Item$WebContentBuilder$PlayMode;

    move-result-object v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 99
    iget-object v2, p0, Lcom/sec/android/allshare/FolderItemImpl;->mItemImpl:Lcom/sec/android/allshare/ItemImpl;

    if-nez v2, :cond_1

    .line 107
    :cond_0
    :goto_0
    return v1

    .line 102
    :cond_1
    iget-object v2, p0, Lcom/sec/android/allshare/FolderItemImpl;->mItemImpl:Lcom/sec/android/allshare/ItemImpl;

    invoke-virtual {v2}, Lcom/sec/android/allshare/ItemImpl;->getObjectID()Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, objID:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public isRootFolder()Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/sec/android/allshare/FolderItemImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 126
    return-void
.end method