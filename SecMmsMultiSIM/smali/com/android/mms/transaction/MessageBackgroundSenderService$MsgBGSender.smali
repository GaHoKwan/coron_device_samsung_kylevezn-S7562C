.class public Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;
.super Ljava/lang/Object;
.source "MessageBackgroundSenderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/MessageBackgroundSenderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MsgBGSender"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Mms/MsgBGSendReceiver"


# instance fields
.field private mContentType:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mMediaUri:Landroid/net/Uri;

.field private mMessage:Ljava/lang/String;

.field private mMessageUri:Landroid/net/Uri;

.field private mMsgID:I

.field private mPersister:Lcom/google/android/mms/pdu/PduPersister;

.field private mRecipients:[Ljava/lang/String;

.field private mRequestApp:I

.field private mResizable:Z

.field private mResizedata:[B

.field private mSendReq:Lcom/google/android/mms/pdu/SendReq;

.field private mSlideshow:Lcom/android/mms/model/SlideshowModel;

.field final synthetic this$0:Lcom/android/mms/transaction/MessageBackgroundSenderService;


# direct methods
.method public constructor <init>(Lcom/android/mms/transaction/MessageBackgroundSenderService;Landroid/content/Context;IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "appID"
    .parameter "msgID"
    .parameter "intent"

    .prologue
    .line 332
    iput-object p1, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->this$0:Lcom/android/mms/transaction/MessageBackgroundSenderService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mResizable:Z

    .line 333
    const-string v0, "recipients"

    invoke-virtual {p5, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->ContactRemoveInvalidChar([Ljava/lang/String;)V

    .line 334
    const-string v0, "message"

    invoke-virtual {p5, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mMessage:Ljava/lang/String;

    .line 335
    iput p3, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mRequestApp:I

    .line 336
    iput p4, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mMsgID:I

    .line 338
    invoke-virtual {p5}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mContentType:Ljava/lang/String;

    .line 339
    invoke-virtual {p5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mMediaUri:Landroid/net/Uri;

    .line 340
    iput-object p2, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mContext:Landroid/content/Context;

    .line 341
    return-void
.end method

.method private ContactRemoveInvalidChar([Ljava/lang/String;)V
    .locals 10
    .parameter "temp_recipient"

    .prologue
    .line 344
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 345
    .local v6, mTemp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 347
    .local v2, arrCount:I
    move-object v1, p1

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, v1, v4

    .line 348
    .local v0, address:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/data/Contact;->replaceInvalidPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 349
    .local v7, number:Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    add-int/lit8 v2, v2, 0x1

    .line 347
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 353
    .end local v0           #address:Ljava/lang/String;
    .end local v7           #number:Ljava/lang/String;
    :cond_0
    new-array v8, v2, [Ljava/lang/String;

    iput-object v8, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mRecipients:[Ljava/lang/String;

    .line 354
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_1

    .line 355
    iget-object v9, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mRecipients:[Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    aput-object v8, v9, v3

    .line 354
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 357
    :cond_1
    return-void
.end method

.method static synthetic access$1000(Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;)Lcom/google/android/mms/pdu/PduPersister;
    .locals 1
    .parameter "x0"

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mPersister:Lcom/google/android/mms/pdu/PduPersister;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;Lcom/google/android/mms/pdu/PduPersister;)Lcom/google/android/mms/pdu/PduPersister;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 307
    iput-object p1, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mPersister:Lcom/google/android/mms/pdu/PduPersister;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 307
    invoke-direct {p0}, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->initMmsComponents()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;)V
    .locals 0
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 307
    invoke-direct {p0}, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->sendMessage()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 307
    iget v0, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mRequestApp:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 307
    iget v0, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mMsgID:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mRecipients:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;Landroid/content/Context;[Ljava/lang/String;)J
    .locals 2
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 307
    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->getOrCreateThreadId(Landroid/content/Context;[Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1900(Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;Ljava/lang/String;[Ljava/lang/String;JII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 307
    invoke-direct/range {p0 .. p6}, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->sendSmsWorker(Ljava/lang/String;[Ljava/lang/String;JII)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 307
    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->sendMmsWorker(Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 307
    invoke-direct {p0}, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->sendBGMessage()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;)V
    .locals 0
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 307
    invoke-direct {p0}, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->sendSmsMessage()V

    return-void
.end method

.method private createNewSlideshow()Lcom/android/mms/model/SlideshowModel;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 486
    const/4 v2, 0x0

    .line 487
    .local v2, media:Lcom/android/mms/model/MediaModel;
    const/4 v5, 0x0

    .line 488
    .local v5, text:Lcom/android/mms/model/TextModel;
    iget-object v6, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/mms/model/SlideshowModel;->createNew(Landroid/content/Context;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v4

    .line 489
    .local v4, slideshow:Lcom/android/mms/model/SlideshowModel;
    new-instance v3, Lcom/android/mms/model/SlideModel;

    invoke-direct {v3, v4}, Lcom/android/mms/model/SlideModel;-><init>(Lcom/android/mms/model/SlideshowModel;)V

    .line 490
    .local v3, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v4, v3}, Lcom/android/mms/model/SlideshowModel;->add(Lcom/android/mms/model/SlideModel;)Z

    .line 494
    iget-object v6, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mContentType:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 495
    iget-object v6, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mContentType:Ljava/lang/String;

    const-string v7, "image/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 496
    new-instance v2, Lcom/android/mms/model/ImageModel;

    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    iget-object v6, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mMediaUri:Landroid/net/Uri;

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v8

    invoke-direct {v2, v6, v7, v8}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .line 505
    .restart local v2       #media:Lcom/android/mms/model/MediaModel;
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mMessage:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 506
    new-instance v5, Lcom/android/mms/model/TextModel;

    .end local v5           #text:Lcom/android/mms/model/TextModel;
    iget-object v6, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mContext:Landroid/content/Context;

    const-string v7, "text/plain"

    const-string v8, "cid:text_1.txt"

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/mms/model/LayoutModel;->getTextRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v9

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V

    .line 508
    .restart local v5       #text:Lcom/android/mms/model/TextModel;
    iget-object v6, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mMessage:Ljava/lang/String;

    invoke-virtual {v5, v6, v10}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;Z)V

    .line 520
    :cond_1
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v3

    .line 523
    if-eqz v5, :cond_2

    .line 524
    :try_start_0
    invoke-virtual {v3, v5}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 526
    :cond_2
    if-eqz v2, :cond_4

    .line 527
    iget-object v6, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mContentType:Ljava/lang/String;

    const-string v7, "image/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 528
    move-object v0, v2

    check-cast v0, Lcom/android/mms/model/ImageModel;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/mms/model/ImageModel;->checkCreationMode()V

    .line 529
    move-object v0, v2

    check-cast v0, Lcom/android/mms/model/ImageModel;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/mms/model/ImageModel;->checkResolution()V

    .line 531
    :cond_3
    invoke-virtual {v3, v2}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z
    :try_end_0
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/mms/RotationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/android/mms/ResolutionException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_0 .. :try_end_0} :catch_4

    .line 558
    .end local v4           #slideshow:Lcom/android/mms/model/SlideshowModel;
    :cond_4
    :goto_1
    return-object v4

    .line 497
    .restart local v4       #slideshow:Lcom/android/mms/model/SlideshowModel;
    :cond_5
    iget-object v6, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mContentType:Ljava/lang/String;

    const-string v7, "video/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 498
    new-instance v2, Lcom/android/mms/model/VideoModel;

    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    iget-object v6, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mMediaUri:Landroid/net/Uri;

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v8

    invoke-direct {v2, v6, v7, v8}, Lcom/android/mms/model/VideoModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .restart local v2       #media:Lcom/android/mms/model/MediaModel;
    goto :goto_0

    .line 499
    :cond_6
    iget-object v6, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mContentType:Ljava/lang/String;

    const-string v7, "audio/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 500
    new-instance v2, Lcom/android/mms/model/AudioModel;

    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    iget-object v6, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mMediaUri:Landroid/net/Uri;

    invoke-direct {v2, v6, v7}, Lcom/android/mms/model/AudioModel;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .restart local v2       #media:Lcom/android/mms/model/MediaModel;
    goto :goto_0

    .line 533
    :catch_0
    move-exception v1

    .line 534
    .local v1, e:Lcom/android/mms/ExceedMessageSizeException;
    iget-object v6, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mContentType:Ljava/lang/String;

    const-string v7, "image/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    move-object v6, v2

    .line 535
    check-cast v6, Lcom/android/mms/model/ImageModel;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->resizeMedia(Lcom/android/mms/model/ImageModel;I)V

    .line 536
    invoke-virtual {v3, v2}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 537
    iput-boolean v10, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mResizable:Z

    goto :goto_1

    .line 539
    :cond_7
    const/4 v4, 0x0

    goto :goto_1

    .line 541
    .end local v1           #e:Lcom/android/mms/ExceedMessageSizeException;
    :catch_1
    move-exception v1

    .line 542
    .local v1, e:Lcom/android/mms/RotationException;
    iget-object v6, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mContentType:Ljava/lang/String;

    const-string v7, "image/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v6, v2

    .line 543
    check-cast v6, Lcom/android/mms/model/ImageModel;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->resizeMedia(Lcom/android/mms/model/ImageModel;I)V

    .line 544
    invoke-virtual {v3, v2}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 545
    iput-boolean v10, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mResizable:Z

    goto :goto_1

    .line 547
    .end local v1           #e:Lcom/android/mms/RotationException;
    :catch_2
    move-exception v1

    .line 548
    .local v1, e:Lcom/android/mms/UnsupportContentTypeException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 549
    .end local v1           #e:Lcom/android/mms/UnsupportContentTypeException;
    :catch_3
    move-exception v1

    .line 550
    .local v1, e:Lcom/android/mms/ResolutionException;
    iget-object v6, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mContentType:Ljava/lang/String;

    const-string v7, "image/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v6, v2

    .line 551
    check-cast v6, Lcom/android/mms/model/ImageModel;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->resizeMedia(Lcom/android/mms/model/ImageModel;I)V

    .line 552
    invoke-virtual {v3, v2}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 553
    iput-boolean v10, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mResizable:Z

    goto/16 :goto_1

    .line 555
    .end local v1           #e:Lcom/android/mms/ResolutionException;
    :catch_4
    move-exception v1

    .line 556
    .local v1, e:Lcom/android/mms/ContentRestrictionException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1
.end method

.method private encodeStrings([Ljava/lang/String;)[Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 5
    .parameter "array"

    .prologue
    .line 600
    array-length v0, p1

    .line 601
    .local v0, count:I
    if-lez v0, :cond_0

    .line 602
    new-array v1, v0, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 603
    .local v1, encodedArray:[Lcom/google/android/mms/pdu/EncodedStringValue;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 604
    new-instance v3, Lcom/google/android/mms/pdu/EncodedStringValue;

    aget-object v4, p1, v2

    invoke-direct {v3, v4}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 603
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 608
    .end local v1           #encodedArray:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v2           #i:I
    :cond_0
    const/4 v1, 0x0

    :cond_1
    return-object v1
.end method

.method private fillMessageHeaders(Lcom/google/android/mms/pdu/SendReq;)V
    .locals 2
    .parameter "sendReq"

    .prologue
    .line 591
    iget-object v0, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mRecipients:[Ljava/lang/String;

    .line 593
    .local v0, dests:[Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->encodeStrings([Ljava/lang/String;)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v1

    .line 594
    .local v1, encodedNumbers:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v1, :cond_0

    .line 595
    invoke-virtual {p1, v1}, Lcom/google/android/mms/pdu/SendReq;->setTo([Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 597
    :cond_0
    return-void
.end method

.method private getOrCreateThreadId(Landroid/content/Context;[Ljava/lang/String;)J
    .locals 7
    .parameter "context"
    .parameter "dests"

    .prologue
    .line 612
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 613
    .local v3, recipients:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 614
    .local v4, s:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 615
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 613
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 617
    .end local v4           #s:Ljava/lang/String;
    :cond_1
    invoke-static {p1, v3}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v5

    return-wide v5
.end method

.method private initMmsComponents()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 473
    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->createNewSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 474
    iget-object v2, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-nez v2, :cond_0

    .line 482
    :goto_0
    return v1

    .line 477
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->makeSendReq()Lcom/google/android/mms/pdu/SendReq;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mSendReq:Lcom/google/android/mms/pdu/SendReq;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    const/4 v1, 0x1

    goto :goto_0

    .line 478
    :catch_0
    move-exception v0

    .line 479
    .local v0, e:Lcom/google/android/mms/MmsException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private isRequreMMS(Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 6
    .parameter "uri"
    .parameter "text"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 360
    const/4 v0, -0x1

    .line 361
    .local v0, mEncodingType:I
    const/4 v1, 0x0

    .line 363
    .local v1, params:[I
    if-ne v0, v3, :cond_1

    .line 364
    iget-object v4, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mMessage:Ljava/lang/String;

    invoke-static {v4, v2, v0}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)[I

    move-result-object v1

    .line 374
    :goto_0
    if-nez p1, :cond_0

    aget v4, v1, v2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsToMmsTextThreshold()I

    move-result v5

    if-lt v4, v5, :cond_4

    .line 375
    :cond_0
    const-string v2, "Mms/MsgBGSendReceiver"

    const-string v4, "try to send mms"

    invoke-static {v2, v4}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 379
    :goto_1
    return v2

    .line 365
    :cond_1
    if-nez v0, :cond_2

    .line 366
    iget-object v4, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mMessage:Ljava/lang/String;

    invoke-static {v4, v2, v0}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)[I

    move-result-object v1

    goto :goto_0

    .line 368
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableComposeTypeUI()Z

    move-result v4

    if-nez v4, :cond_3

    .line 369
    iget-object v4, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mMessage:Ljava/lang/String;

    invoke-static {v4, v2}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;Z)[I

    move-result-object v1

    goto :goto_0

    .line 371
    :cond_3
    iget-object v4, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mMessage:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->getStringByteSize(Ljava/lang/String;)[I

    move-result-object v1

    goto :goto_0

    .line 378
    :cond_4
    const-string v3, "Mms/MsgBGSendReceiver"

    const-string v4, "try to send sms"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private makeSendReq()Lcom/google/android/mms/pdu/SendReq;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 565
    new-instance v5, Lcom/google/android/mms/pdu/SendReq;

    invoke-direct {v5}, Lcom/google/android/mms/pdu/SendReq;-><init>()V

    .line 566
    .local v5, sendReq:Lcom/google/android/mms/pdu/SendReq;
    invoke-direct {p0, v5}, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->fillMessageHeaders(Lcom/google/android/mms/pdu/SendReq;)V

    .line 567
    iget-object v6, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v4

    .line 568
    .local v4, pb:Lcom/google/android/mms/pdu/PduBody;
    iget-boolean v6, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mResizable:Z

    if-eqz v6, :cond_1

    .line 569
    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v3

    .line 570
    .local v3, partCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 571
    invoke-virtual {v4, v1}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v2

    .line 572
    .local v2, p:Lcom/google/android/mms/pdu/PduPart;
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>([B)V

    .line 573
    .local v0, contentType:Ljava/lang/String;
    const-string v6, "image/"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 574
    iget-object v6, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mResizedata:[B

    invoke-virtual {v2, v6}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 570
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 580
    .end local v0           #contentType:Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #p:Lcom/google/android/mms/pdu/PduPart;
    .end local v3           #partCount:I
    :cond_1
    invoke-virtual {v5, v4}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setBody(Lcom/google/android/mms/pdu/PduBody;)V

    .line 584
    iget-object v6, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mPersister:Lcom/google/android/mms/pdu/PduPersister;

    sget-object v7, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    iget v8, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mRequestApp:I

    iget v9, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mMsgID:I

    invoke-virtual {v6, v5, v7, v8, v9}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;II)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mMessageUri:Landroid/net/Uri;

    .line 585
    iget-object v6, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6, v4}, Lcom/android/mms/model/SlideshowModel;->sync(Lcom/google/android/mms/pdu/PduBody;)V

    .line 586
    return-object v5
.end method

.method private resizeMedia(Lcom/android/mms/model/ImageModel;I)V
    .locals 5
    .parameter "media"
    .parameter "byteLimit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 622
    new-instance v0, Lcom/android/mms/ui/UriImage;

    iget-object v2, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mMediaUri:Landroid/net/Uri;

    invoke-direct {v0, v2, v3}, Lcom/android/mms/ui/UriImage;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 623
    .local v0, image:Lcom/android/mms/ui/UriImage;
    if-nez v0, :cond_0

    .line 624
    new-instance v2, Lcom/android/mms/ExceedMessageSizeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No room to resize picture: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mMediaUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/mms/ExceedMessageSizeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 626
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageWidth()I

    move-result v2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageHeight()I

    move-result v3

    invoke-virtual {v0, v2, v3, p2}, Lcom/android/mms/ui/UriImage;->getResizedImageAsPart(III)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    .line 630
    .local v1, part:Lcom/google/android/mms/pdu/PduPart;
    if-nez v1, :cond_1

    .line 631
    new-instance v2, Lcom/google/android/mms/MmsException;

    const-string v3, "part is null during resize media."

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 632
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mResizedata:[B

    .line 633
    invoke-virtual {v1}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {p1, v2}, Lcom/android/mms/model/ImageModel;->setResizeImageSize(I)V

    .line 634
    return-void
.end method

.method private sendBGMessage()V
    .locals 2

    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mMediaUri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mMessage:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->isRequreMMS(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 389
    new-instance v0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender$1;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender$1;-><init>(Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 419
    :goto_0
    return-void

    .line 399
    :cond_0
    new-instance v0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender$2;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender$2;-><init>(Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private sendMessage()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 445
    iget-object v0, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mMessageUri:Landroid/net/Uri;

    .line 446
    .local v0, mmsUri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 448
    .local v1, slideshow:Lcom/android/mms/model/SlideshowModel;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender$4;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender$4;-><init>(Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 453
    return-void
.end method

.method private sendMmsWorker(Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;)V
    .locals 5
    .parameter "mmsUri"
    .parameter "slideshow"

    .prologue
    .line 457
    if-nez p1, :cond_0

    .line 469
    :goto_0
    return-void

    .line 461
    :cond_0
    new-instance v1, Lcom/android/mms/transaction/MmsMessageSender;

    iget-object v2, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v3

    int-to-long v3, v3

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/android/mms/transaction/MmsMessageSender;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    .line 465
    .local v1, sender:Lcom/android/mms/transaction/MessageSender;
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mRecipients:[Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->getOrCreateThreadId(Landroid/content/Context;[Ljava/lang/String;)J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 466
    :catch_0
    move-exception v0

    .line 467
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v2, "Mms/MsgBGSendReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to send message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendSmsMessage()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 422
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender$3;

    invoke-direct {v1, p0}, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender$3;-><init>(Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 427
    return-void
.end method

.method private sendSmsWorker(Ljava/lang/String;[Ljava/lang/String;JII)V
    .locals 9
    .parameter "msgText"
    .parameter "semiSepRecipients"
    .parameter "threadId"
    .parameter "appID"
    .parameter "msgID"

    .prologue
    .line 431
    new-instance v0, Lcom/android/mms/transaction/SmsMessageSender;

    iget-object v1, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mContext:Landroid/content/Context;

    move-object v2, p2

    move-object v3, p1

    move-wide v4, p3

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;JII)V

    .line 433
    .local v0, sender:Lcom/android/mms/transaction/MessageSender;
    :try_start_0
    invoke-interface {v0, p3, p4}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z

    .line 436
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/MessageBackgroundSenderService$MsgBGSender;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p3, p4}, Lcom/android/mms/util/Recycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    :goto_0
    return-void

    .line 437
    :catch_0
    move-exception v8

    .line 438
    .local v8, e:Ljava/lang/Exception;
    const-string v1, "Mms/MsgBGSendReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to send SMS message, threadId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
