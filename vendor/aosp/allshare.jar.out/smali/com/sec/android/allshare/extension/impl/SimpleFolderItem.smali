.class public Lcom/sec/android/allshare/extension/impl/SimpleFolderItem;
.super Lcom/sec/android/allshare/Item;
.source "SimpleFolderItem.java"

# interfaces
.implements Lcom/sec/android/allshare/iface/IBundleHolder;


# instance fields
.field private mBundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/sec/android/allshare/Item;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/allshare/extension/impl/SimpleFolderItem;->mBundle:Landroid/os/Bundle;

    .line 34
    iput-object p1, p0, Lcom/sec/android/allshare/extension/impl/SimpleFolderItem;->mBundle:Landroid/os/Bundle;

    .line 35
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public getAlbumTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 80
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleFolderItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleFolderItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBitrate()I
    .locals 2

    .prologue
    .line 161
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleFolderItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/allshare/extension/impl/SimpleFolderItem;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getContentBuildType()Lcom/sec/android/allshare/Item$ContentBuildType;
    .locals 2

    .prologue
    .line 135
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleFolderItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 2

    .prologue
    .line 39
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleFolderItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 44
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getExtension()Ljava/lang/String;
    .locals 2

    .prologue
    .line 120
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleFolderItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFileSize()J
    .locals 2

    .prologue
    .line 125
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleFolderItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getGenre()Ljava/lang/String;
    .locals 2

    .prologue
    .line 90
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleFolderItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 2

    .prologue
    .line 95
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleFolderItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMimetype()Ljava/lang/String;
    .locals 2

    .prologue
    .line 130
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleFolderItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getResolution()Ljava/lang/String;
    .locals 2

    .prologue
    .line 100
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleFolderItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getResourceList()Ljava/util/ArrayList;
    .locals 2
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
    .line 166
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleFolderItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSeekMode()Lcom/sec/android/allshare/Item$SeekMode;
    .locals 2

    .prologue
    .line 156
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleFolderItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSubtitle()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSubtitleList()Ljava/util/ArrayList;
    .locals 2
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
    .line 151
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleFolderItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getThumbnail()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 110
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleFolderItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/allshare/extension/impl/SimpleFolderItem;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/extension/impl/SimpleFolderItem;->mBundle:Landroid/os/Bundle;

    const-string v1, "BUNDLE_STRING_ITEM_TITLE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getType()Lcom/sec/android/allshare/Item$MediaType;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/sec/android/allshare/Item$MediaType;->ITEM_FOLDER:Lcom/sec/android/allshare/Item$MediaType;

    return-object v0
.end method

.method public getURI()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sec/android/allshare/extension/impl/SimpleFolderItem;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    check-cast v0, Landroid/net/Uri;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/extension/impl/SimpleFolderItem;->mBundle:Landroid/os/Bundle;

    const-string v1, "BUNDLE_PARCELABLE_ITEM_URI"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    goto :goto_0
.end method

.method public getWebContentDeliveryMode()Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;
    .locals 2

    .prologue
    .line 140
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleFolderItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getWebContentPlayMode()Lcom/sec/android/allshare/Item$WebContentBuilder$PlayMode;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 146
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleFolderItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isRootFolder()Z
    .locals 2

    .prologue
    .line 115
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "SimpleFolderItem doesn\'t support this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/allshare/extension/impl/SimpleFolderItem;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 71
    return-void
.end method
