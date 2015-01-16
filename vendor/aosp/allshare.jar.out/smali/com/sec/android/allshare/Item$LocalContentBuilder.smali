.class public Lcom/sec/android/allshare/Item$LocalContentBuilder;
.super Ljava/lang/Object;
.source "Item.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalContentBuilder"
.end annotation


# instance fields
.field private mFilepath:Ljava/lang/String;

.field private mMimetype:Ljava/lang/String;

.field private mSubtitlePath:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "filepath"
    .parameter "mimeType"

    .prologue
    const/4 v0, 0x0

    .line 464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 449
    iput-object v0, p0, Lcom/sec/android/allshare/Item$LocalContentBuilder;->mFilepath:Ljava/lang/String;

    .line 451
    iput-object v0, p0, Lcom/sec/android/allshare/Item$LocalContentBuilder;->mMimetype:Ljava/lang/String;

    .line 453
    iput-object v0, p0, Lcom/sec/android/allshare/Item$LocalContentBuilder;->mTitle:Ljava/lang/String;

    .line 455
    iput-object v0, p0, Lcom/sec/android/allshare/Item$LocalContentBuilder;->mSubtitlePath:Ljava/lang/String;

    .line 465
    iput-object p1, p0, Lcom/sec/android/allshare/Item$LocalContentBuilder;->mFilepath:Ljava/lang/String;

    .line 466
    iput-object p2, p0, Lcom/sec/android/allshare/Item$LocalContentBuilder;->mMimetype:Ljava/lang/String;

    .line 467
    return-void
.end method

.method private checkFilePathValid(Ljava/lang/String;)Z
    .locals 13
    .parameter "filePath"

    .prologue
    const/4 v12, 0x1

    const/4 v2, 0x0

    const/4 v11, 0x0

    .line 528
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v11

    .line 574
    :goto_0
    return v0

    .line 532
    :cond_1
    const-string v0, "content:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 533
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 534
    .local v1, uri:Landroid/net/Uri;
    if-nez v1, :cond_2

    move v0, v11

    .line 535
    goto :goto_0

    .line 538
    :cond_2
    invoke-static {}, Lcom/sec/android/allshare/ServiceConnector;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 539
    .local v8, context:Landroid/content/Context;
    if-nez v8, :cond_3

    move v0, v11

    .line 540
    goto :goto_0

    .line 543
    :cond_3
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 545
    .local v7, contentCursor:Landroid/database/Cursor;
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v12, :cond_4

    .line 546
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v0, v12

    .line 547
    goto :goto_0

    .line 550
    :cond_4
    if-eqz v7, :cond_5

    .line 551
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    move v0, v11

    .line 554
    goto :goto_0

    .line 556
    .end local v1           #uri:Landroid/net/Uri;
    .end local v7           #contentCursor:Landroid/database/Cursor;
    .end local v8           #context:Landroid/content/Context;
    :cond_6
    const/4 v6, 0x0

    .line 557
    .local v6, absoluteFilePath:Ljava/lang/String;
    const-string v10, "file://"

    .line 559
    .local v10, headString:Ljava/lang/String;
    const-string v0, "file:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 560
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 565
    :goto_1
    const-string v0, "/data/data"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v11

    .line 566
    goto :goto_0

    .line 562
    :cond_7
    move-object v6, p1

    goto :goto_1

    .line 568
    :cond_8
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 569
    .local v9, file:Ljava/io/File;
    if-eqz v9, :cond_9

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v12

    .line 570
    goto :goto_0

    :cond_9
    move v0, v11

    .line 574
    goto :goto_0
.end method


# virtual methods
.method public build()Lcom/sec/android/allshare/Item;
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 504
    iget-object v0, p0, Lcom/sec/android/allshare/Item$LocalContentBuilder;->mFilepath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/android/allshare/Item$LocalContentBuilder;->checkFilePathValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 524
    :goto_0
    return-object v6

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/Item$LocalContentBuilder;->mFilepath:Ljava/lang/String;

    const-string v1, "content:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 510
    new-instance v0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;

    sget-object v1, Lcom/sec/android/allshare/ItemCreator$ConstructorType;->LOCAL_CONTENT:Lcom/sec/android/allshare/ItemCreator$ConstructorType;

    iget-object v2, p0, Lcom/sec/android/allshare/Item$LocalContentBuilder;->mFilepath:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/allshare/Item$LocalContentBuilder;->mTitle:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/allshare/Item$LocalContentBuilder;->mSubtitlePath:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/android/allshare/Item$LocalContentBuilder;->mMimetype:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;-><init>(Lcom/sec/android/allshare/ItemCreator$ConstructorType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/allshare/Item$1;)V

    move-object v6, v0

    goto :goto_0

    .line 514
    :cond_1
    iget-object v0, p0, Lcom/sec/android/allshare/Item$LocalContentBuilder;->mMimetype:Ljava/lang/String;

    #calls: Lcom/sec/android/allshare/Item;->convertItemTypeFromMimeType(Ljava/lang/String;)Lcom/sec/android/allshare/Item$MediaType;
    invoke-static {v0}, Lcom/sec/android/allshare/Item;->access$100(Ljava/lang/String;)Lcom/sec/android/allshare/Item$MediaType;

    move-result-object v7

    .line 515
    .local v7, type:Lcom/sec/android/allshare/Item$MediaType;
    sget-object v0, Lcom/sec/android/allshare/Item$1;->$SwitchMap$com$sec$android$allshare$Item$MediaType:[I

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 521
    :pswitch_0
    new-instance v0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;

    sget-object v1, Lcom/sec/android/allshare/ItemCreator$ConstructorType;->LOCAL_CONTENT:Lcom/sec/android/allshare/ItemCreator$ConstructorType;

    iget-object v2, p0, Lcom/sec/android/allshare/Item$LocalContentBuilder;->mFilepath:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/allshare/Item$LocalContentBuilder;->mTitle:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/allshare/Item$LocalContentBuilder;->mSubtitlePath:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/android/allshare/Item$LocalContentBuilder;->mMimetype:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;-><init>(Lcom/sec/android/allshare/ItemCreator$ConstructorType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/allshare/Item$1;)V

    move-object v6, v0

    goto :goto_0

    .line 515
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setSubtitle(Ljava/lang/String;)Lcom/sec/android/allshare/Item$LocalContentBuilder;
    .locals 0
    .parameter "filePath"

    .prologue
    .line 491
    iput-object p1, p0, Lcom/sec/android/allshare/Item$LocalContentBuilder;->mSubtitlePath:Ljava/lang/String;

    .line 492
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/sec/android/allshare/Item$LocalContentBuilder;
    .locals 0
    .parameter "title"

    .prologue
    .line 477
    iput-object p1, p0, Lcom/sec/android/allshare/Item$LocalContentBuilder;->mTitle:Ljava/lang/String;

    .line 478
    return-object p0
.end method
