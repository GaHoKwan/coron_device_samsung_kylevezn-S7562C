.class final Lcom/sec/android/allshare/ItemImpl;
.super Lcom/sec/android/allshare/Item;
.source "ItemImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/allshare/ItemImpl$2;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/android/allshare/ItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static final DATETIME_FORMAT:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ss"

.field private static final DATE_FORMAT:Ljava/lang/String; = "yyyy-MM-dd"

.field private static final TAG:Ljava/lang/String; = "ItemImpl"


# instance fields
.field private mBundle:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 170
    new-instance v0, Lcom/sec/android/allshare/ItemImpl$1;

    invoke-direct {v0}, Lcom/sec/android/allshare/ItemImpl$1;-><init>()V

    sput-object v0, Lcom/sec/android/allshare/ItemImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/sec/android/allshare/Item;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    .line 48
    iput-object p1, p0, Lcom/sec/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    .line 49
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "src"

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/sec/android/allshare/Item;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    .line 164
    invoke-direct {p0, p1}, Lcom/sec/android/allshare/ItemImpl;->readFromParcel(Landroid/os/Parcel;)V

    .line 165
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/android/allshare/ItemImpl$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/sec/android/allshare/ItemImpl;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static getItem(Landroid/os/Bundle;)Lcom/sec/android/allshare/Item;
    .locals 5
    .parameter "b"

    .prologue
    const/4 v2, 0x0

    .line 121
    if-nez p0, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-object v2

    .line 123
    :cond_1
    const-string v3, "BUNDLE_STRING_ITEM_TYPE"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, typeStr:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 127
    invoke-static {v1}, Lcom/sec/android/allshare/Item$MediaType;->valueOf(Ljava/lang/String;)Lcom/sec/android/allshare/Item$MediaType;

    move-result-object v0

    .line 129
    .local v0, type:Lcom/sec/android/allshare/Item$MediaType;
    sget-object v3, Lcom/sec/android/allshare/ItemImpl$2;->$SwitchMap$com$sec$android$allshare$Item$MediaType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 131
    :pswitch_0
    new-instance v2, Lcom/sec/android/allshare/AudioItemImpl;

    invoke-direct {v2, p0}, Lcom/sec/android/allshare/AudioItemImpl;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    .line 133
    :pswitch_1
    new-instance v2, Lcom/sec/android/allshare/ImageItemImpl;

    invoke-direct {v2, p0}, Lcom/sec/android/allshare/ImageItemImpl;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    .line 135
    :pswitch_2
    new-instance v2, Lcom/sec/android/allshare/VideoItemImpl;

    invoke-direct {v2, p0}, Lcom/sec/android/allshare/VideoItemImpl;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    .line 129
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "src"

    .prologue
    .line 155
    const-class v1, Landroid/os/Bundle;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 156
    .local v0, bundle:Landroid/os/Bundle;
    iput-object v0, p0, Lcom/sec/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    .line 157
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public getAlbumTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x0

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBitrate()I
    .locals 1

    .prologue
    .line 329
    const/4 v0, -0x1

    return v0
.end method

.method getBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getContentBuildType()Lcom/sec/android/allshare/Item$ContentBuildType;
    .locals 5

    .prologue
    .line 242
    iget-object v3, p0, Lcom/sec/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    if-nez v3, :cond_0

    .line 243
    sget-object v3, Lcom/sec/android/allshare/Item$ContentBuildType;->UNKNOWN:Lcom/sec/android/allshare/Item$ContentBuildType;

    .line 269
    :goto_0
    return-object v3

    .line 245
    :cond_0
    iget-object v3, p0, Lcom/sec/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    const-string v4, "BUNDLE_STRING_ITEM_CONSTRUCTOR_KEY"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 247
    .local v2, itemConstructor:Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 248
    :cond_1
    sget-object v3, Lcom/sec/android/allshare/Item$ContentBuildType;->UNKNOWN:Lcom/sec/android/allshare/Item$ContentBuildType;

    goto :goto_0

    .line 250
    :cond_2
    sget-object v0, Lcom/sec/android/allshare/ItemCreator$ConstructorType;->UNKNOWN:Lcom/sec/android/allshare/ItemCreator$ConstructorType;

    .line 252
    .local v0, conType:Lcom/sec/android/allshare/ItemCreator$ConstructorType;
    :try_start_0
    invoke-static {v2}, Lcom/sec/android/allshare/ItemCreator$ConstructorType;->valueOf(Ljava/lang/String;)Lcom/sec/android/allshare/ItemCreator$ConstructorType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 257
    sget-object v3, Lcom/sec/android/allshare/ItemImpl$2;->$SwitchMap$com$sec$android$allshare$ItemCreator$ConstructorType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 269
    sget-object v3, Lcom/sec/android/allshare/Item$ContentBuildType;->UNKNOWN:Lcom/sec/android/allshare/Item$ContentBuildType;

    goto :goto_0

    .line 253
    :catch_0
    move-exception v1

    .line 254
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/sec/android/allshare/Item$ContentBuildType;->UNKNOWN:Lcom/sec/android/allshare/Item$ContentBuildType;

    goto :goto_0

    .line 259
    .end local v1           #e:Ljava/lang/Exception;
    :pswitch_0
    sget-object v3, Lcom/sec/android/allshare/Item$ContentBuildType;->LOCAL:Lcom/sec/android/allshare/Item$ContentBuildType;

    goto :goto_0

    .line 261
    :pswitch_1
    sget-object v3, Lcom/sec/android/allshare/Item$ContentBuildType;->PROVIDER:Lcom/sec/android/allshare/Item$ContentBuildType;

    goto :goto_0

    .line 263
    :pswitch_2
    sget-object v3, Lcom/sec/android/allshare/Item$ContentBuildType;->WEB:Lcom/sec/android/allshare/Item$ContentBuildType;

    goto :goto_0

    .line 265
    :pswitch_3
    sget-object v3, Lcom/sec/android/allshare/Item$ContentBuildType;->UNKNOWN:Lcom/sec/android/allshare/Item$ContentBuildType;

    goto :goto_0

    .line 257
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getDate()Ljava/util/Date;
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 68
    iget-object v6, p0, Lcom/sec/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    if-nez v6, :cond_1

    .line 91
    :cond_0
    :goto_0
    return-object v0

    .line 70
    :cond_1
    iget-object v6, p0, Lcom/sec/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    const-string v7, "BUNDLE_STRING_ITEM_DATE"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, dateStr:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 74
    const/4 v0, 0x0

    .line 76
    .local v0, date:Ljava/util/Date;
    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-direct {v2, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 77
    .local v2, dateTime_format:Ljava/text/SimpleDateFormat;
    const-string v6, "UTC"

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 78
    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 79
    .end local v2           #dateTime_format:Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v4

    .line 81
    .local v4, p1:Ljava/text/ParseException;
    :try_start_1
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd"

    invoke-direct {v3, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 82
    .local v3, date_format:Ljava/text/SimpleDateFormat;
    const-string v6, "UTC"

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 83
    invoke-virtual {v3, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .line 84
    .end local v3           #date_format:Ljava/text/SimpleDateFormat;
    :catch_1
    move-exception v5

    .line 85
    .local v5, pe2:Ljava/text/ParseException;
    const-string v6, "ItemImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getDate  ParseException: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    const-string v9, "BUNDLE_STRING_ITEM_TITLE"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 207
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getExtension()Ljava/lang/String;
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/sec/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    const-string v1, "BUNDLE_STRING_ITEM_EXTENSION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getFileSize()J
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/sec/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    const-string v1, "BUNDLE_LONG_ITEM_FILE_SIZE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getGenre()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMimetype()Ljava/lang/String;
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/sec/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    const-string v1, "BUNDLE_STRING_ITEM_MIMETYPE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected final getObjectID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/sec/android/allshare/ItemImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 101
    .local v0, bundle:Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 102
    const-string v1, ""

    .line 109
    :cond_0
    :goto_0
    return-object v1

    .line 104
    :cond_1
    const-string v2, "BUNDLE_STRING_OBJECT_ID"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, objID:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 107
    const-string v1, ""

    goto :goto_0
.end method

.method public getResolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x0

    return-object v0
.end method

.method public getResourceList()Ljava/util/ArrayList;
    .locals 6
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
    .line 334
    iget-object v4, p0, Lcom/sec/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    if-nez v4, :cond_1

    .line 335
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 348
    :cond_0
    return-object v3

    .line 337
    :cond_1
    iget-object v4, p0, Lcom/sec/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    const-string v5, "BUNDLE_PARCELABLE_ITEM_RESOURCE_LIST"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 339
    .local v2, resourceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 341
    .local v3, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/allshare/Item$Resource;>;"
    if-eqz v2, :cond_0

    .line 344
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    .line 345
    .local v1, parcel:Landroid/os/Parcelable;
    new-instance v4, Lcom/sec/android/allshare/ResourceImpl;

    check-cast v1, Landroid/os/Bundle;

    .end local v1           #parcel:Landroid/os/Parcelable;
    invoke-direct {v4, v1}, Lcom/sec/android/allshare/ResourceImpl;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getSeekMode()Lcom/sec/android/allshare/Item$SeekMode;
    .locals 1

    .prologue
    .line 324
    sget-object v0, Lcom/sec/android/allshare/Item$SeekMode;->NONE:Lcom/sec/android/allshare/Item$SeekMode;

    return-object v0
.end method

.method public getSubtitle()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 227
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
    .line 319
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getThumbnail()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    const-string v1, "BUNDLE_STRING_ITEM_TITLE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getType()Lcom/sec/android/allshare/Item$MediaType;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/sec/android/allshare/Item$MediaType;->ITEM_UNKNOWN:Lcom/sec/android/allshare/Item$MediaType;

    return-object v0
.end method

.method public getURI()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sec/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    check-cast v0, Landroid/net/Uri;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    const-string v1, "BUNDLE_PARCELABLE_ITEM_URI"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    goto :goto_0
.end method

.method public getWebContentDeliveryMode()Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;
    .locals 5

    .prologue
    .line 274
    iget-object v3, p0, Lcom/sec/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    if-nez v3, :cond_0

    .line 275
    sget-object v0, Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;->UNKNOWN:Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;

    .line 292
    :goto_0
    return-object v0

    .line 277
    :cond_0
    iget-object v3, p0, Lcom/sec/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    const-string v4, "BUNDLE_STRING_WEB_PLAY_MODE"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 279
    .local v1, deliveryModeStr:Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 280
    :cond_1
    const-string v3, "ItemImpl"

    const-string v4, " getWebContentDeliveryMode() : deliveryModeStr is null or empty! "

    invoke-static {v3, v4}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    sget-object v0, Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;->UNKNOWN:Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;

    goto :goto_0

    .line 284
    :cond_2
    sget-object v0, Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;->UNKNOWN:Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;

    .line 287
    .local v0, deliveryMode:Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;
    :try_start_0
    invoke-static {v1}, Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;->valueOf(Ljava/lang/String;)Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 288
    :catch_0
    move-exception v2

    .line 289
    .local v2, e:Ljava/lang/Exception;
    sget-object v0, Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;->UNKNOWN:Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;

    goto :goto_0
.end method

.method public getWebContentPlayMode()Lcom/sec/android/allshare/Item$WebContentBuilder$PlayMode;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 298
    iget-object v3, p0, Lcom/sec/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    if-nez v3, :cond_0

    .line 299
    sget-object v1, Lcom/sec/android/allshare/Item$WebContentBuilder$PlayMode;->UNKNOWN:Lcom/sec/android/allshare/Item$WebContentBuilder$PlayMode;

    .line 314
    :goto_0
    return-object v1

    .line 301
    :cond_0
    iget-object v3, p0, Lcom/sec/android/allshare/ItemImpl;->mBundle:Landroid/os/Bundle;

    const-string v4, "BUNDLE_STRING_WEB_PLAY_MODE"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 303
    .local v2, playModeStr:Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 304
    :cond_1
    sget-object v1, Lcom/sec/android/allshare/Item$WebContentBuilder$PlayMode;->UNKNOWN:Lcom/sec/android/allshare/Item$WebContentBuilder$PlayMode;

    goto :goto_0

    .line 306
    :cond_2
    sget-object v1, Lcom/sec/android/allshare/Item$WebContentBuilder$PlayMode;->UNKNOWN:Lcom/sec/android/allshare/Item$WebContentBuilder$PlayMode;

    .line 309
    .local v1, playMode:Lcom/sec/android/allshare/Item$WebContentBuilder$PlayMode;
    :try_start_0
    invoke-static {v2}, Lcom/sec/android/allshare/Item$WebContentBuilder$PlayMode;->valueOf(Ljava/lang/String;)Lcom/sec/android/allshare/Item$WebContentBuilder$PlayMode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 310
    :catch_0
    move-exception v0

    .line 311
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/sec/android/allshare/Item$WebContentBuilder$PlayMode;->UNKNOWN:Lcom/sec/android/allshare/Item$WebContentBuilder$PlayMode;

    goto :goto_0
.end method

.method public isRootFolder()Z
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/sec/android/allshare/ItemImpl;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 149
    return-void
.end method
