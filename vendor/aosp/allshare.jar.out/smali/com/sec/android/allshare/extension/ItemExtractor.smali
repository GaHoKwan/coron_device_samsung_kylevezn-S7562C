.class public Lcom/sec/android/allshare/extension/ItemExtractor;
.super Ljava/lang/Object;
.source "ItemExtractor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/allshare/extension/ItemExtractor$1;,
        Lcom/sec/android/allshare/extension/ItemExtractor$Seed;
    }
.end annotation


# static fields
.field private static final CLASS_TAG:Ljava/lang/String; = "ItemExtractor"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/sec/android/allshare/Item;
    .locals 9
    .parameter "seedString"

    .prologue
    const/4 v5, 0x0

    .line 227
    invoke-static {p0}, Lcom/sec/android/allshare/extension/ItemExtractor$Seed;->parseSeedStringUsingSplit(Ljava/lang/String;)Lcom/sec/android/allshare/extension/ItemExtractor$Seed;

    move-result-object v2

    .line 229
    .local v2, seed:Lcom/sec/android/allshare/extension/ItemExtractor$Seed;
    if-nez v2, :cond_0

    .line 230
    const-string v6, "ItemExtractor"

    const-string v7, "create : return seed is null"

    invoke-static {v6, v7}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    :goto_0
    return-object v5

    .line 235
    :cond_0
    invoke-virtual {v2}, Lcom/sec/android/allshare/extension/ItemExtractor$Seed;->getItemType()Ljava/lang/String;

    move-result-object v4

    .line 237
    .local v4, typeString:Ljava/lang/String;
    sget-object v3, Lcom/sec/android/allshare/Item$MediaType;->ITEM_UNKNOWN:Lcom/sec/android/allshare/Item$MediaType;

    .line 239
    .local v3, type:Lcom/sec/android/allshare/Item$MediaType;
    :try_start_0
    invoke-static {v4}, Lcom/sec/android/allshare/Item$MediaType;->valueOf(Ljava/lang/String;)Lcom/sec/android/allshare/Item$MediaType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 245
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 246
    .local v0, bundle:Landroid/os/Bundle;
    const-string v6, "BUNDLE_STRING_ITEM_TYPE"

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string v6, "BUNDLE_STRING_OBJECT_ID"

    invoke-virtual {v2}, Lcom/sec/android/allshare/extension/ItemExtractor$Seed;->getObjectID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v6, "BUNDLE_STRING_ID"

    invoke-virtual {v2}, Lcom/sec/android/allshare/extension/ItemExtractor$Seed;->getProviderID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string v6, "BUNDLE_STRING_ITEM_CONSTRUCTOR_KEY"

    const-string v7, "MEDIA_SERVER"

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string v6, "BUNDLE_STRING_ITEM_TITLE"

    invoke-virtual {v2}, Lcom/sec/android/allshare/extension/ItemExtractor$Seed;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const-string v6, "BUNDLE_PARCELABLE_ITEM_URI"

    invoke-virtual {v2}, Lcom/sec/android/allshare/extension/ItemExtractor$Seed;->getItemUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 255
    sget-object v6, Lcom/sec/android/allshare/extension/ItemExtractor$1;->$SwitchMap$com$sec$android$allshare$Item$MediaType:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 269
    const-string v6, "ItemExtractor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "create : type is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 240
    .end local v0           #bundle:Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 241
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "ItemExtractor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "create : return type is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 257
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #bundle:Landroid/os/Bundle;
    :pswitch_0
    const-string v5, "BUNDLE_LONG_AUDIO_ITEM_DURATION"

    invoke-virtual {v2}, Lcom/sec/android/allshare/extension/ItemExtractor$Seed;->getDuration()J

    move-result-wide v6

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 258
    new-instance v5, Lcom/sec/android/allshare/extension/impl/SimpleAudioItem;

    invoke-direct {v5, v0}, Lcom/sec/android/allshare/extension/impl/SimpleAudioItem;-><init>(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 260
    :pswitch_1
    new-instance v5, Lcom/sec/android/allshare/extension/impl/SimpleImageItem;

    invoke-direct {v5, v0}, Lcom/sec/android/allshare/extension/impl/SimpleImageItem;-><init>(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 262
    :pswitch_2
    const-string v5, "BUNDLE_PARCELABLE_VIDEO_ITEM_SUBTITLE"

    invoke-virtual {v2}, Lcom/sec/android/allshare/extension/ItemExtractor$Seed;->getSubtitle()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 264
    const-string v5, "BUNDLE_LONG_VIDEO_ITEM_DURATION"

    invoke-virtual {v2}, Lcom/sec/android/allshare/extension/ItemExtractor$Seed;->getDuration()J

    move-result-wide v6

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 265
    new-instance v5, Lcom/sec/android/allshare/extension/impl/SimpleVideoItem;

    invoke-direct {v5, v0}, Lcom/sec/android/allshare/extension/impl/SimpleVideoItem;-><init>(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 267
    :pswitch_3
    new-instance v5, Lcom/sec/android/allshare/extension/impl/SimpleFolderItem;

    invoke-direct {v5, v0}, Lcom/sec/android/allshare/extension/impl/SimpleFolderItem;-><init>(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 255
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static extract(Lcom/sec/android/allshare/Item;)Lcom/sec/android/allshare/extension/ItemExtractor$Seed;
    .locals 17
    .parameter "item"

    .prologue
    .line 283
    if-nez p0, :cond_0

    .line 284
    const-string v15, "ItemExtractor"

    const-string v16, "extract : return item is null"

    invoke-static/range {v15 .. v16}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const/4 v9, 0x0

    .line 356
    :goto_0
    return-object v9

    .line 289
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v7

    .line 290
    .local v7, p:Landroid/os/Parcel;
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v15}, Lcom/sec/android/allshare/Item;->writeToParcel(Landroid/os/Parcel;I)V

    .line 292
    const/4 v15, 0x0

    invoke-virtual {v7, v15}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 293
    invoke-virtual {v7}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 295
    .local v1, bundle:Landroid/os/Bundle;
    const-string v15, "BUNDLE_STRING_ITEM_TYPE"

    invoke-virtual {v1, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 296
    .local v13, typeString:Ljava/lang/String;
    sget-object v12, Lcom/sec/android/allshare/Item$MediaType;->ITEM_UNKNOWN:Lcom/sec/android/allshare/Item$MediaType;

    .line 299
    .local v12, type:Lcom/sec/android/allshare/Item$MediaType;
    :try_start_0
    invoke-static {v13}, Lcom/sec/android/allshare/Item$MediaType;->valueOf(Ljava/lang/String;)Lcom/sec/android/allshare/Item$MediaType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 304
    const-string v15, "BUNDLE_STRING_OBJECT_ID"

    invoke-virtual {v1, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 305
    .local v6, objId:Ljava/lang/String;
    const-string v15, "BUNDLE_STRING_ID"

    invoke-virtual {v1, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 306
    .local v8, providerId:Ljava/lang/String;
    const-string v15, "BUNDLE_STRING_ITEM_CONSTRUCTOR_KEY"

    invoke-virtual {v1, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 307
    .local v2, constructorKey:Ljava/lang/String;
    const-string v15, "BUNDLE_STRING_ITEM_TITLE"

    invoke-virtual {v1, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 308
    .local v11, title:Ljava/lang/String;
    const-string v15, "BUNDLE_PARCELABLE_ITEM_URI"

    invoke-virtual {v1, v15}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v14

    check-cast v14, Landroid/net/Uri;

    .line 309
    .local v14, uri:Landroid/net/Uri;
    const/4 v10, 0x0

    .line 310
    .local v10, subtitle:Landroid/net/Uri;
    const-wide/16 v3, -0x1

    .line 312
    .local v3, duration:J
    sget-object v15, Lcom/sec/android/allshare/extension/ItemExtractor$1;->$SwitchMap$com$sec$android$allshare$Item$MediaType:[I

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v16

    aget v15, v15, v16

    packed-switch v15, :pswitch_data_0

    .line 327
    :goto_1
    :pswitch_0
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_1

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 328
    :cond_1
    const-string v15, "ItemExtractor"

    const-string v16, "extract : return something is empty"

    invoke-static/range {v15 .. v16}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const/4 v9, 0x0

    goto :goto_0

    .line 300
    .end local v2           #constructorKey:Ljava/lang/String;
    .end local v3           #duration:J
    .end local v6           #objId:Ljava/lang/String;
    .end local v8           #providerId:Ljava/lang/String;
    .end local v10           #subtitle:Landroid/net/Uri;
    .end local v11           #title:Ljava/lang/String;
    .end local v14           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v5

    .line 301
    .local v5, e:Ljava/lang/Exception;
    const/4 v9, 0x0

    goto :goto_0

    .line 314
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v2       #constructorKey:Ljava/lang/String;
    .restart local v3       #duration:J
    .restart local v6       #objId:Ljava/lang/String;
    .restart local v8       #providerId:Ljava/lang/String;
    .restart local v10       #subtitle:Landroid/net/Uri;
    .restart local v11       #title:Ljava/lang/String;
    .restart local v14       #uri:Landroid/net/Uri;
    :pswitch_1
    const-string v15, "BUNDLE_PARCELABLE_VIDEO_ITEM_SUBTITLE"

    invoke-virtual {v1, v15}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    .end local v10           #subtitle:Landroid/net/Uri;
    check-cast v10, Landroid/net/Uri;

    .line 315
    .restart local v10       #subtitle:Landroid/net/Uri;
    const-string v15, "BUNDLE_LONG_VIDEO_ITEM_DURATION"

    invoke-virtual {v1, v15}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 316
    goto :goto_1

    .line 319
    :pswitch_2
    const-string v15, "BUNDLE_LONG_AUDIO_ITEM_DURATION"

    invoke-virtual {v1, v15}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 320
    goto :goto_1

    .line 333
    :cond_2
    const-string v15, "MEDIA_SERVER"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_3

    .line 334
    const-string v15, "ItemExtractor"

    const-string v16, "ItemExtractor support only MEDIA_SERVER Item"

    invoke-static/range {v15 .. v16}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string v16, "ItemExtractor support only MEDIA_SERVER Item"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 338
    :cond_3
    const-string v15, ",@,#,"

    invoke-virtual {v6, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_4

    const-string v15, ",@,#,"

    invoke-virtual {v8, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_4

    const-string v15, ",@,#,"

    invoke-virtual {v11, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 340
    :cond_4
    const-string v15, "ItemExtractor"

    const-string v16, "ItemExtractor doesn\'t suppport object id or provider id that contains DELIMITER"

    invoke-static/range {v15 .. v16}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 347
    :cond_5
    new-instance v9, Lcom/sec/android/allshare/extension/ItemExtractor$Seed;

    const/4 v15, 0x0

    invoke-direct {v9, v15}, Lcom/sec/android/allshare/extension/ItemExtractor$Seed;-><init>(Lcom/sec/android/allshare/extension/ItemExtractor$1;)V

    .line 348
    .local v9, seed:Lcom/sec/android/allshare/extension/ItemExtractor$Seed;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/allshare/Item;->getType()Lcom/sec/android/allshare/Item$MediaType;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v15

    #setter for: Lcom/sec/android/allshare/extension/ItemExtractor$Seed;->mItemType:Ljava/lang/String;
    invoke-static {v9, v15}, Lcom/sec/android/allshare/extension/ItemExtractor$Seed;->access$102(Lcom/sec/android/allshare/extension/ItemExtractor$Seed;Ljava/lang/String;)Ljava/lang/String;

    .line 349
    #setter for: Lcom/sec/android/allshare/extension/ItemExtractor$Seed;->mObjectId:Ljava/lang/String;
    invoke-static {v9, v6}, Lcom/sec/android/allshare/extension/ItemExtractor$Seed;->access$202(Lcom/sec/android/allshare/extension/ItemExtractor$Seed;Ljava/lang/String;)Ljava/lang/String;

    .line 350
    #setter for: Lcom/sec/android/allshare/extension/ItemExtractor$Seed;->mProviderId:Ljava/lang/String;
    invoke-static {v9, v8}, Lcom/sec/android/allshare/extension/ItemExtractor$Seed;->access$302(Lcom/sec/android/allshare/extension/ItemExtractor$Seed;Ljava/lang/String;)Ljava/lang/String;

    .line 351
    #setter for: Lcom/sec/android/allshare/extension/ItemExtractor$Seed;->mTitle:Ljava/lang/String;
    invoke-static {v9, v11}, Lcom/sec/android/allshare/extension/ItemExtractor$Seed;->access$402(Lcom/sec/android/allshare/extension/ItemExtractor$Seed;Ljava/lang/String;)Ljava/lang/String;

    .line 352
    #setter for: Lcom/sec/android/allshare/extension/ItemExtractor$Seed;->mSubtitle:Landroid/net/Uri;
    invoke-static {v9, v10}, Lcom/sec/android/allshare/extension/ItemExtractor$Seed;->access$502(Lcom/sec/android/allshare/extension/ItemExtractor$Seed;Landroid/net/Uri;)Landroid/net/Uri;

    .line 353
    #setter for: Lcom/sec/android/allshare/extension/ItemExtractor$Seed;->mDuration:J
    invoke-static {v9, v3, v4}, Lcom/sec/android/allshare/extension/ItemExtractor$Seed;->access$602(Lcom/sec/android/allshare/extension/ItemExtractor$Seed;J)J

    .line 354
    #setter for: Lcom/sec/android/allshare/extension/ItemExtractor$Seed;->mItemUri:Landroid/net/Uri;
    invoke-static {v9, v14}, Lcom/sec/android/allshare/extension/ItemExtractor$Seed;->access$702(Lcom/sec/android/allshare/extension/ItemExtractor$Seed;Landroid/net/Uri;)Landroid/net/Uri;

    goto/16 :goto_0

    .line 312
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
