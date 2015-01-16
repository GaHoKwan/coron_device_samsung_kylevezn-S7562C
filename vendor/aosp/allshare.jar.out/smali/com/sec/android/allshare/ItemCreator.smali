.class Lcom/sec/android/allshare/ItemCreator;
.super Ljava/lang/Object;
.source "ItemCreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/allshare/ItemCreator$1;,
        Lcom/sec/android/allshare/ItemCreator$ConstructorType;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method private static createMediaServerItem(Landroid/os/Bundle;)Lcom/sec/android/allshare/Item;
    .locals 6
    .parameter "itemBundle"

    .prologue
    .line 111
    const/4 v3, 0x0

    .line 112
    .local v3, result:Lcom/sec/android/allshare/Item;
    const-string v4, "BUNDLE_STRING_ITEM_TYPE"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, itemType:Ljava/lang/String;
    sget-object v2, Lcom/sec/android/allshare/Item$MediaType;->ITEM_UNKNOWN:Lcom/sec/android/allshare/Item$MediaType;

    .line 115
    .local v2, mediaType:Lcom/sec/android/allshare/Item$MediaType;
    :try_start_0
    invoke-static {v1}, Lcom/sec/android/allshare/Item$MediaType;->valueOf(Ljava/lang/String;)Lcom/sec/android/allshare/Item$MediaType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 120
    sget-object v4, Lcom/sec/android/allshare/ItemCreator$1;->$SwitchMap$com$sec$android$allshare$Item$MediaType:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 136
    const/4 v3, 0x0

    :goto_0
    :pswitch_0
    move-object v4, v3

    .line 138
    :goto_1
    return-object v4

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, e:Ljava/lang/Exception;
    const/4 v4, 0x0

    goto :goto_1

    .line 122
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_1
    new-instance v3, Lcom/sec/android/allshare/AudioItemImpl;

    .end local v3           #result:Lcom/sec/android/allshare/Item;
    invoke-direct {v3, p0}, Lcom/sec/android/allshare/AudioItemImpl;-><init>(Landroid/os/Bundle;)V

    .line 123
    .restart local v3       #result:Lcom/sec/android/allshare/Item;
    goto :goto_0

    .line 125
    :pswitch_2
    new-instance v3, Lcom/sec/android/allshare/ImageItemImpl;

    .end local v3           #result:Lcom/sec/android/allshare/Item;
    invoke-direct {v3, p0}, Lcom/sec/android/allshare/ImageItemImpl;-><init>(Landroid/os/Bundle;)V

    .line 126
    .restart local v3       #result:Lcom/sec/android/allshare/Item;
    goto :goto_0

    .line 128
    :pswitch_3
    new-instance v3, Lcom/sec/android/allshare/VideoItemImpl;

    .end local v3           #result:Lcom/sec/android/allshare/Item;
    invoke-direct {v3, p0}, Lcom/sec/android/allshare/VideoItemImpl;-><init>(Landroid/os/Bundle;)V

    .line 129
    .restart local v3       #result:Lcom/sec/android/allshare/Item;
    goto :goto_0

    .line 131
    :pswitch_4
    new-instance v3, Lcom/sec/android/allshare/FolderItemImpl;

    .end local v3           #result:Lcom/sec/android/allshare/Item;
    invoke-direct {v3, p0}, Lcom/sec/android/allshare/FolderItemImpl;-><init>(Landroid/os/Bundle;)V

    .line 132
    .restart local v3       #result:Lcom/sec/android/allshare/Item;
    goto :goto_0

    .line 120
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method static fromBundle(Landroid/os/Bundle;)Lcom/sec/android/allshare/Item;
    .locals 14
    .parameter "itemBundle"

    .prologue
    const/4 v12, 0x0

    .line 31
    const/4 v10, 0x0

    .line 33
    .local v10, result:Lcom/sec/android/allshare/Item;
    if-nez p0, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-object v12

    .line 36
    :cond_1
    const-string v13, "BUNDLE_STRING_ITEM_CONSTRUCTOR_KEY"

    invoke-virtual {p0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 39
    .local v7, itemConstructor:Ljava/lang/String;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_0

    .line 42
    sget-object v1, Lcom/sec/android/allshare/ItemCreator$ConstructorType;->UNKNOWN:Lcom/sec/android/allshare/ItemCreator$ConstructorType;

    .line 44
    .local v1, conType:Lcom/sec/android/allshare/ItemCreator$ConstructorType;
    :try_start_0
    invoke-static {v7}, Lcom/sec/android/allshare/ItemCreator$ConstructorType;->valueOf(Ljava/lang/String;)Lcom/sec/android/allshare/ItemCreator$ConstructorType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 49
    sget-object v12, Lcom/sec/android/allshare/ItemCreator$1;->$SwitchMap$com$sec$android$allshare$ItemCreator$ConstructorType:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_0

    .line 104
    const/4 v10, 0x0

    :goto_1
    move-object v12, v10

    .line 107
    goto :goto_0

    .line 45
    :catch_0
    move-exception v6

    .line 46
    .local v6, e:Ljava/lang/Exception;
    goto :goto_0

    .line 51
    .end local v6           #e:Ljava/lang/Exception;
    :pswitch_0
    invoke-static {p0}, Lcom/sec/android/allshare/ItemCreator;->createMediaServerItem(Landroid/os/Bundle;)Lcom/sec/android/allshare/Item;

    move-result-object v10

    .line 52
    goto :goto_1

    .line 54
    :pswitch_1
    const-string v12, "BUNDLE_PARCELABLE_ITEM_URI"

    invoke-virtual {p0, v12}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/net/Uri;

    .line 55
    .local v11, uri:Landroid/net/Uri;
    const-string v12, "BUNDLE_STRING_ITEM_MIMETYPE"

    invoke-virtual {p0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 56
    .local v8, mimeType:Ljava/lang/String;
    new-instance v0, Lcom/sec/android/allshare/Item$WebContentBuilder;

    invoke-direct {v0, v11, v8}, Lcom/sec/android/allshare/Item$WebContentBuilder;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    .line 57
    .local v0, builder:Lcom/sec/android/allshare/Item$WebContentBuilder;
    const-string v12, "BUNDLE_STRING_ITEM_TITLE"

    invoke-virtual {p0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/sec/android/allshare/Item$WebContentBuilder;->setTitle(Ljava/lang/String;)Lcom/sec/android/allshare/Item$WebContentBuilder;

    move-result-object v0

    .line 59
    const-string v12, "BUNDLE_STRING_ITEM_SUBTITLE_PATH"

    invoke-virtual {p0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/sec/android/allshare/Item$WebContentBuilder;->setSubtitle(Ljava/lang/String;)Lcom/sec/android/allshare/Item$WebContentBuilder;

    move-result-object v0

    .line 61
    const-string v12, "BUNDLE_STRING_ITEM_ALBUM_TITLE"

    invoke-virtual {p0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/sec/android/allshare/Item$WebContentBuilder;->setAlbumTitle(Ljava/lang/String;)Lcom/sec/android/allshare/Item$WebContentBuilder;

    move-result-object v0

    .line 63
    const-string v12, "BUNDLE_STRING_ITEM_ARTIST"

    invoke-virtual {p0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/sec/android/allshare/Item$WebContentBuilder;->setArtist(Ljava/lang/String;)Lcom/sec/android/allshare/Item$WebContentBuilder;

    move-result-object v0

    .line 65
    const-string v12, "BUNDLE_STRING_ITEM_GENRE"

    invoke-virtual {p0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/sec/android/allshare/Item$WebContentBuilder;->setGenre(Ljava/lang/String;)Lcom/sec/android/allshare/Item$WebContentBuilder;

    move-result-object v0

    .line 67
    const-string v12, "BUNDLE_LONG_ITEM_DURATION"

    invoke-virtual {p0, v12}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-virtual {v0, v12, v13}, Lcom/sec/android/allshare/Item$WebContentBuilder;->setDuration(J)Lcom/sec/android/allshare/Item$WebContentBuilder;

    move-result-object v0

    .line 69
    const-string v12, "BUNDLE_DATE_ITEM_DATE"

    invoke-virtual {p0, v12}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 71
    .local v2, dateTime:J
    const-wide/16 v12, 0x0

    cmp-long v12, v2, v12

    if-lez v12, :cond_2

    .line 72
    new-instance v12, Ljava/util/Date;

    invoke-direct {v12, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v12}, Lcom/sec/android/allshare/Item$WebContentBuilder;->setDate(Ljava/util/Date;)Lcom/sec/android/allshare/Item$WebContentBuilder;

    move-result-object v0

    .line 75
    :cond_2
    const-string v12, "BUNDLE_STRING_WEB_PLAY_MODE"

    invoke-virtual {p0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 77
    .local v5, deliveryModeStr:Ljava/lang/String;
    sget-object v4, Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;->UNKNOWN:Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;

    .line 78
    .local v4, deliveryMode:Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 79
    :cond_3
    sget-object v4, Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;->UNKNOWN:Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;

    .line 88
    :goto_2
    invoke-virtual {v0, v4}, Lcom/sec/android/allshare/Item$WebContentBuilder;->setDeliveryMode(Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;)Lcom/sec/android/allshare/Item$WebContentBuilder;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lcom/sec/android/allshare/Item$WebContentBuilder;->build()Lcom/sec/android/allshare/Item;

    move-result-object v10

    .line 90
    goto/16 :goto_1

    .line 82
    :cond_4
    :try_start_1
    invoke-static {v5}, Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;->valueOf(Ljava/lang/String;)Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    goto :goto_2

    .line 83
    :catch_1
    move-exception v6

    .line 84
    .restart local v6       #e:Ljava/lang/Exception;
    sget-object v4, Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;->UNKNOWN:Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;

    goto :goto_2

    .line 93
    .end local v0           #builder:Lcom/sec/android/allshare/Item$WebContentBuilder;
    .end local v2           #dateTime:J
    .end local v4           #deliveryMode:Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;
    .end local v5           #deliveryModeStr:Ljava/lang/String;
    .end local v6           #e:Ljava/lang/Exception;
    .end local v8           #mimeType:Ljava/lang/String;
    .end local v11           #uri:Landroid/net/Uri;
    :pswitch_2
    const-string v12, "BUNDLE_STRING_FILEPATH"

    invoke-virtual {p0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 94
    .local v9, path:Ljava/lang/String;
    const-string v12, "BUNDLE_STRING_ITEM_MIMETYPE"

    invoke-virtual {p0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 95
    .restart local v8       #mimeType:Ljava/lang/String;
    new-instance v0, Lcom/sec/android/allshare/Item$LocalContentBuilder;

    invoke-direct {v0, v9, v8}, Lcom/sec/android/allshare/Item$LocalContentBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .local v0, builder:Lcom/sec/android/allshare/Item$LocalContentBuilder;
    const-string v12, "BUNDLE_STRING_ITEM_TITLE"

    invoke-virtual {p0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/sec/android/allshare/Item$LocalContentBuilder;->setTitle(Ljava/lang/String;)Lcom/sec/android/allshare/Item$LocalContentBuilder;

    move-result-object v0

    .line 98
    const-string v12, "BUNDLE_STRING_ITEM_SUBTITLE_PATH"

    invoke-virtual {p0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/sec/android/allshare/Item$LocalContentBuilder;->setSubtitle(Ljava/lang/String;)Lcom/sec/android/allshare/Item$LocalContentBuilder;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Lcom/sec/android/allshare/Item$LocalContentBuilder;->build()Lcom/sec/android/allshare/Item;

    move-result-object v10

    .line 101
    goto/16 :goto_1

    .line 49
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
