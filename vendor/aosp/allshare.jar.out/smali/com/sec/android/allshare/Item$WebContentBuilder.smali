.class public Lcom/sec/android/allshare/Item$WebContentBuilder;
.super Ljava/lang/Object;
.source "Item.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WebContentBuilder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/allshare/Item$WebContentBuilder$PlayMode;,
        Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;
    }
.end annotation


# instance fields
.field private mAlbumTitle:Ljava/lang/String;

.field private mArtist:Ljava/lang/String;

.field private mDate:Ljava/util/Date;

.field private mDeliveryMode:Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;

.field private mDuration:J

.field private mGenre:Ljava/lang/String;

.field private mMimetype:Ljava/lang/String;

.field private mSubtitlePath:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2
    .parameter "uri"
    .parameter "mimeType"

    .prologue
    const/4 v0, 0x0

    .line 1009
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 928
    iput-object v0, p0, Lcom/sec/android/allshare/Item$WebContentBuilder;->mUri:Landroid/net/Uri;

    .line 930
    iput-object v0, p0, Lcom/sec/android/allshare/Item$WebContentBuilder;->mMimetype:Ljava/lang/String;

    .line 932
    iput-object v0, p0, Lcom/sec/android/allshare/Item$WebContentBuilder;->mTitle:Ljava/lang/String;

    .line 934
    iput-object v0, p0, Lcom/sec/android/allshare/Item$WebContentBuilder;->mDeliveryMode:Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;

    .line 936
    iput-object v0, p0, Lcom/sec/android/allshare/Item$WebContentBuilder;->mSubtitlePath:Ljava/lang/String;

    .line 938
    iput-object v0, p0, Lcom/sec/android/allshare/Item$WebContentBuilder;->mArtist:Ljava/lang/String;

    .line 940
    iput-object v0, p0, Lcom/sec/android/allshare/Item$WebContentBuilder;->mAlbumTitle:Ljava/lang/String;

    .line 942
    iput-object v0, p0, Lcom/sec/android/allshare/Item$WebContentBuilder;->mGenre:Ljava/lang/String;

    .line 944
    iput-object v0, p0, Lcom/sec/android/allshare/Item$WebContentBuilder;->mDate:Ljava/util/Date;

    .line 946
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/allshare/Item$WebContentBuilder;->mDuration:J

    .line 1010
    iput-object p1, p0, Lcom/sec/android/allshare/Item$WebContentBuilder;->mUri:Landroid/net/Uri;

    .line 1011
    iput-object p2, p0, Lcom/sec/android/allshare/Item$WebContentBuilder;->mMimetype:Ljava/lang/String;

    .line 1012
    return-void
.end method

.method private checkSubtitlePathValid(Ljava/lang/String;)Z
    .locals 5
    .parameter "subtitleFilePath"

    .prologue
    const/4 v3, 0x0

    .line 1168
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 1188
    :cond_0
    :goto_0
    return v3

    .line 1171
    :cond_1
    const/4 v0, 0x0

    .line 1172
    .local v0, absoluteFilePath:Ljava/lang/String;
    const-string v2, "file://"

    .line 1174
    .local v2, headString:Ljava/lang/String;
    const-string v4, "file:"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1175
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1180
    :goto_1
    const-string v4, "/data/data"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1183
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1184
    .local v1, file:Ljava/io/File;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1185
    const/4 v3, 0x1

    goto :goto_0

    .line 1177
    .end local v1           #file:Ljava/io/File;
    :cond_2
    move-object v0, p1

    goto :goto_1
.end method


# virtual methods
.method public build()Lcom/sec/android/allshare/Item;
    .locals 17

    .prologue
    .line 1080
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/allshare/Item$WebContentBuilder;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/allshare/Item$WebContentBuilder;->mMimetype:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 1081
    :cond_0
    const/4 v1, 0x0

    .line 1109
    :goto_0
    return-object v1

    .line 1083
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/allshare/Item$WebContentBuilder;->mSubtitlePath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/sec/android/allshare/Item$WebContentBuilder;->checkSubtitlePathValid(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1084
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/allshare/Item$WebContentBuilder;->mSubtitlePath:Ljava/lang/String;

    .line 1086
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/allshare/Item$WebContentBuilder;->mMimetype:Ljava/lang/String;

    const-string v2, "video/*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1087
    const-string v1, "video/mp4"

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/allshare/Item$WebContentBuilder;->mMimetype:Ljava/lang/String;

    .line 1089
    :cond_3
    const-string v1, "Item"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "item build mime"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/allshare/Item$WebContentBuilder;->mMimetype:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    const-string v1, "Item"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "item build uri"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/allshare/Item$WebContentBuilder;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/allshare/Item$WebContentBuilder;->mDeliveryMode:Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;

    if-nez v1, :cond_4

    .line 1092
    sget-object v1, Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;->UNKNOWN:Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/sec/android/allshare/Item$WebContentBuilder;->mDeliveryMode:Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;

    .line 1094
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/allshare/Item$WebContentBuilder;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v15

    .line 1095
    .local v15, scheme:Ljava/lang/String;
    if-eqz v15, :cond_5

    const-string v1, "content"

    invoke-virtual {v15, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "file"

    invoke-virtual {v15, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1096
    :cond_5
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1098
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/allshare/Item$WebContentBuilder;->mMimetype:Ljava/lang/String;

    #calls: Lcom/sec/android/allshare/Item;->convertItemTypeFromMimeType(Ljava/lang/String;)Lcom/sec/android/allshare/Item$MediaType;
    invoke-static {v1}, Lcom/sec/android/allshare/Item;->access$100(Ljava/lang/String;)Lcom/sec/android/allshare/Item$MediaType;

    move-result-object v16

    .line 1099
    .local v16, type:Lcom/sec/android/allshare/Item$MediaType;
    sget-object v1, Lcom/sec/android/allshare/Item$1;->$SwitchMap$com$sec$android$allshare$Item$MediaType:[I

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1109
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 1105
    :pswitch_0
    new-instance v1, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;

    sget-object v2, Lcom/sec/android/allshare/ItemCreator$ConstructorType;->WEB_CONTENT:Lcom/sec/android/allshare/ItemCreator$ConstructorType;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/allshare/Item$WebContentBuilder;->mUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/allshare/Item$WebContentBuilder;->mTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/allshare/Item$WebContentBuilder;->mMimetype:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/allshare/Item$WebContentBuilder;->mSubtitlePath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/allshare/Item$WebContentBuilder;->mDeliveryMode:Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/allshare/Item$WebContentBuilder;->mArtist:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/allshare/Item$WebContentBuilder;->mAlbumTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/allshare/Item$WebContentBuilder;->mGenre:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/allshare/Item$WebContentBuilder;->mDate:Ljava/util/Date;

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/sec/android/allshare/Item$WebContentBuilder;->mDuration:J

    const/4 v14, 0x0

    invoke-direct/range {v1 .. v14}, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;-><init>(Lcom/sec/android/allshare/ItemCreator$ConstructorType;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;JLcom/sec/android/allshare/Item$1;)V

    goto/16 :goto_0

    .line 1099
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setAlbumTitle(Ljava/lang/String;)Lcom/sec/android/allshare/Item$WebContentBuilder;
    .locals 0
    .parameter "albumTitle"

    .prologue
    .line 1130
    iput-object p1, p0, Lcom/sec/android/allshare/Item$WebContentBuilder;->mAlbumTitle:Ljava/lang/String;

    .line 1131
    return-object p0
.end method

.method public setArtist(Ljava/lang/String;)Lcom/sec/android/allshare/Item$WebContentBuilder;
    .locals 0
    .parameter "artist"

    .prologue
    .line 1119
    iput-object p1, p0, Lcom/sec/android/allshare/Item$WebContentBuilder;->mArtist:Ljava/lang/String;

    .line 1120
    return-object p0
.end method

.method public setDate(Ljava/util/Date;)Lcom/sec/android/allshare/Item$WebContentBuilder;
    .locals 0
    .parameter "date"

    .prologue
    .line 1152
    iput-object p1, p0, Lcom/sec/android/allshare/Item$WebContentBuilder;->mDate:Ljava/util/Date;

    .line 1153
    return-object p0
.end method

.method public setDeliveryMode(Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;)Lcom/sec/android/allshare/Item$WebContentBuilder;
    .locals 0
    .parameter "deliverymode"

    .prologue
    .line 1046
    iput-object p1, p0, Lcom/sec/android/allshare/Item$WebContentBuilder;->mDeliveryMode:Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;

    .line 1047
    return-object p0
.end method

.method public setDuration(J)Lcom/sec/android/allshare/Item$WebContentBuilder;
    .locals 0
    .parameter "duration"

    .prologue
    .line 1163
    iput-wide p1, p0, Lcom/sec/android/allshare/Item$WebContentBuilder;->mDuration:J

    .line 1164
    return-object p0
.end method

.method public setGenre(Ljava/lang/String;)Lcom/sec/android/allshare/Item$WebContentBuilder;
    .locals 0
    .parameter "genre"

    .prologue
    .line 1141
    iput-object p1, p0, Lcom/sec/android/allshare/Item$WebContentBuilder;->mGenre:Ljava/lang/String;

    .line 1142
    return-object p0
.end method

.method public setPlayMode(Lcom/sec/android/allshare/Item$WebContentBuilder$PlayMode;)Lcom/sec/android/allshare/Item$WebContentBuilder;
    .locals 1
    .parameter "playmode"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1062
    sget-object v0, Lcom/sec/android/allshare/Item$WebContentBuilder$PlayMode;->REDIRECT:Lcom/sec/android/allshare/Item$WebContentBuilder$PlayMode;

    if-ne p1, v0, :cond_0

    .line 1063
    sget-object v0, Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;->REDIRECT:Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;

    iput-object v0, p0, Lcom/sec/android/allshare/Item$WebContentBuilder;->mDeliveryMode:Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;

    .line 1069
    :goto_0
    return-object p0

    .line 1064
    :cond_0
    sget-object v0, Lcom/sec/android/allshare/Item$WebContentBuilder$PlayMode;->RELAY:Lcom/sec/android/allshare/Item$WebContentBuilder$PlayMode;

    if-ne p1, v0, :cond_1

    .line 1065
    sget-object v0, Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;->RELAY:Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;

    iput-object v0, p0, Lcom/sec/android/allshare/Item$WebContentBuilder;->mDeliveryMode:Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;

    goto :goto_0

    .line 1067
    :cond_1
    sget-object v0, Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;->UNKNOWN:Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;

    iput-object v0, p0, Lcom/sec/android/allshare/Item$WebContentBuilder;->mDeliveryMode:Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;

    goto :goto_0
.end method

.method public setSubtitle(Ljava/lang/String;)Lcom/sec/android/allshare/Item$WebContentBuilder;
    .locals 0
    .parameter "filePath"

    .prologue
    .line 1030
    iput-object p1, p0, Lcom/sec/android/allshare/Item$WebContentBuilder;->mSubtitlePath:Ljava/lang/String;

    .line 1031
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/sec/android/allshare/Item$WebContentBuilder;
    .locals 0
    .parameter "title"

    .prologue
    .line 1025
    iput-object p1, p0, Lcom/sec/android/allshare/Item$WebContentBuilder;->mTitle:Ljava/lang/String;

    .line 1026
    return-object p0
.end method
