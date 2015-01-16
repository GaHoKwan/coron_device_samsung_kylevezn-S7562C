.class public abstract Lcom/sec/android/allshare/Item;
.super Ljava/lang/Object;
.source "Item.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/allshare/Item$1;,
        Lcom/sec/android/allshare/Item$WebContentBuilder;,
        Lcom/sec/android/allshare/Item$BuilderGeneratedItem;,
        Lcom/sec/android/allshare/Item$LocalContentBuilder;,
        Lcom/sec/android/allshare/Item$Resource;,
        Lcom/sec/android/allshare/Item$SeekMode;,
        Lcom/sec/android/allshare/Item$ContentBuildType;,
        Lcom/sec/android/allshare/Item$MediaType;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)Lcom/sec/android/allshare/Item$MediaType;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-static {p0}, Lcom/sec/android/allshare/Item;->convertItemTypeFromMimeType(Ljava/lang/String;)Lcom/sec/android/allshare/Item$MediaType;

    move-result-object v0

    return-object v0
.end method

.method private static convertItemTypeFromMimeType(Ljava/lang/String;)Lcom/sec/android/allshare/Item$MediaType;
    .locals 3
    .parameter "type"

    .prologue
    .line 1194
    if-nez p0, :cond_0

    .line 1195
    sget-object v2, Lcom/sec/android/allshare/Item$MediaType;->ITEM_UNKNOWN:Lcom/sec/android/allshare/Item$MediaType;

    .line 1222
    :goto_0
    return-object v2

    .line 1197
    :cond_0
    move-object v0, p0

    .line 1198
    .local v0, originalType:Ljava/lang/String;
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, "/"

    invoke-direct {v1, p0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    .local v1, st:Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1200
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p0

    .line 1204
    if-nez p0, :cond_2

    .line 1205
    sget-object v2, Lcom/sec/android/allshare/Item$MediaType;->ITEM_UNKNOWN:Lcom/sec/android/allshare/Item$MediaType;

    goto :goto_0

    .line 1202
    :cond_1
    sget-object v2, Lcom/sec/android/allshare/Item$MediaType;->ITEM_UNKNOWN:Lcom/sec/android/allshare/Item$MediaType;

    goto :goto_0

    .line 1207
    :cond_2
    const-string v2, "video"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1208
    sget-object v2, Lcom/sec/android/allshare/Item$MediaType;->ITEM_VIDEO:Lcom/sec/android/allshare/Item$MediaType;

    goto :goto_0

    .line 1209
    :cond_3
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1210
    sget-object v2, Lcom/sec/android/allshare/Item$MediaType;->ITEM_AUDIO:Lcom/sec/android/allshare/Item$MediaType;

    goto :goto_0

    .line 1211
    :cond_4
    const-string v2, "image"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1212
    sget-object v2, Lcom/sec/android/allshare/Item$MediaType;->ITEM_IMAGE:Lcom/sec/android/allshare/Item$MediaType;

    goto :goto_0

    .line 1213
    :cond_5
    const-string v2, "application/x-dtcp1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1214
    const-string v2, "video/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1215
    sget-object v2, Lcom/sec/android/allshare/Item$MediaType;->ITEM_VIDEO:Lcom/sec/android/allshare/Item$MediaType;

    goto :goto_0

    .line 1216
    :cond_6
    const-string v2, "audio/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1217
    sget-object v2, Lcom/sec/android/allshare/Item$MediaType;->ITEM_AUDIO:Lcom/sec/android/allshare/Item$MediaType;

    goto :goto_0

    .line 1218
    :cond_7
    const-string v2, "image/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1219
    sget-object v2, Lcom/sec/android/allshare/Item$MediaType;->ITEM_IMAGE:Lcom/sec/android/allshare/Item$MediaType;

    goto :goto_0

    .line 1222
    :cond_8
    sget-object v2, Lcom/sec/android/allshare/Item$MediaType;->ITEM_UNKNOWN:Lcom/sec/android/allshare/Item$MediaType;

    goto :goto_0
.end method


# virtual methods
.method public abstract getAlbumTitle()Ljava/lang/String;
.end method

.method public abstract getArtist()Ljava/lang/String;
.end method

.method public abstract getBitrate()I
.end method

.method public abstract getContentBuildType()Lcom/sec/android/allshare/Item$ContentBuildType;
.end method

.method public abstract getDate()Ljava/util/Date;
.end method

.method public abstract getDuration()J
.end method

.method public abstract getExtension()Ljava/lang/String;
.end method

.method public abstract getFileSize()J
.end method

.method public abstract getGenre()Ljava/lang/String;
.end method

.method public abstract getLocation()Landroid/location/Location;
.end method

.method public abstract getMimetype()Ljava/lang/String;
.end method

.method public abstract getResolution()Ljava/lang/String;
.end method

.method public abstract getResourceList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/allshare/Item$Resource;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSeekMode()Lcom/sec/android/allshare/Item$SeekMode;
.end method

.method public abstract getSubtitle()Landroid/net/Uri;
.end method

.method public abstract getSubtitleList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/allshare/Subtitle;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getThumbnail()Landroid/net/Uri;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getType()Lcom/sec/android/allshare/Item$MediaType;
.end method

.method public abstract getURI()Landroid/net/Uri;
.end method

.method public abstract getWebContentDeliveryMode()Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;
.end method

.method public abstract getWebContentPlayMode()Lcom/sec/android/allshare/Item$WebContentBuilder$PlayMode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract isRootFolder()Z
.end method
