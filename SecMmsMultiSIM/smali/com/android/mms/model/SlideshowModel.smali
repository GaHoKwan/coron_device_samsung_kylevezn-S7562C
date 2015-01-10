.class public Lcom/android/mms/model/SlideshowModel;
.super Lcom/android/mms/model/Model;
.source "SlideshowModel.java"

# interfaces
.implements Lcom/android/mms/model/IModelChangedObserver;
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/mms/model/Model;",
        "Ljava/util/List",
        "<",
        "Lcom/android/mms/model/SlideModel;",
        ">;",
        "Lcom/android/mms/model/IModelChangedObserver;"
    }
.end annotation


# static fields
.field private static final CID_COLON:Ljava/lang/String; = "cid:"

.field private static final DESCRIPTION_UNSUPPORTED_OPERATION:Ljava/lang/String; = "Operation not supported."

.field private static final EXT_VCF:Ljava/lang/String; = ".vcf"

.field private static final EXT_VCS:Ljava/lang/String; = ".vcs"

.field private static final EXT_VNT:Ljava/lang/String; = ".vnt"

.field private static final EXT_VTS:Ljava/lang/String; = ".vts"

.field public static final SLIDESHOW_SLOP:I = 0x400

.field private static final TAG:Ljava/lang/String; = "Mms/slideshow"

.field private static sCheckMessageSize:Z

.field private static sIsDrmContentsPresent:Z

.field private static sIsRawAttachmentsPresent:Z

.field private static sRawAttachmentAddSlideforCompose:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentMessageSize:I

.field private mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

.field private final mLayout:Lcom/android/mms/model/LayoutModel;

.field private mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

.field public final mRawAttachments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/AttachmentModel;",
            ">;"
        }
    .end annotation
.end field

.field public final mSlides:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalMessageSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 93
    sput-boolean v0, Lcom/android/mms/model/SlideshowModel;->sIsRawAttachmentsPresent:Z

    .line 95
    sput-boolean v0, Lcom/android/mms/model/SlideshowModel;->sRawAttachmentAddSlideforCompose:Z

    .line 97
    sput-boolean v0, Lcom/android/mms/model/SlideshowModel;->sIsDrmContentsPresent:Z

    .line 99
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/model/SlideshowModel;->sCheckMessageSize:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    .line 114
    new-instance v0, Lcom/android/mms/model/LayoutModel;

    invoke-direct {v0}, Lcom/android/mms/model/LayoutModel;-><init>()V

    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    .line 116
    iput-object p1, p0, Lcom/android/mms/model/SlideshowModel;->mContext:Landroid/content/Context;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    .line 118
    return-void
.end method

.method private constructor <init>(Lcom/android/mms/model/LayoutModel;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/w3c/dom/smil/SMILDocument;Lcom/google/android/mms/pdu/PduBody;Landroid/content/Context;)V
    .locals 4
    .parameter "layouts"
    .parameter
    .parameter
    .parameter "documentCache"
    .parameter "pbCache"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mms/model/LayoutModel;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/AttachmentModel;",
            ">;",
            "Lorg/w3c/dom/smil/SMILDocument;",
            "Lcom/google/android/mms/pdu/PduBody;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 122
    .local p2, slides:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/SlideModel;>;"
    .local p3, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/AttachmentModel;>;"
    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    .line 123
    iput-object p1, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    .line 124
    iput-object p2, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    .line 125
    iput-object p6, p0, Lcom/android/mms/model/SlideshowModel;->mContext:Landroid/content/Context;

    .line 126
    iput-object p3, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    .line 128
    iput-object p4, p0, Lcom/android/mms/model/SlideshowModel;->mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

    .line 129
    iput-object p5, p0, Lcom/android/mms/model/SlideshowModel;->mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

    .line 130
    iget-object v3, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/SlideModel;

    .line 131
    .local v2, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/mms/model/SlideshowModel;->increaseMessageSize(I)V

    .line 132
    invoke-virtual {v2, p0}, Lcom/android/mms/model/SlideModel;->setParent(Lcom/android/mms/model/SlideshowModel;)V

    goto :goto_0

    .line 135
    .end local v2           #slide:Lcom/android/mms/model/SlideModel;
    :cond_0
    iget-object v3, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/AttachmentModel;

    .line 136
    .local v0, attachment:Lcom/android/mms/model/AttachmentModel;
    invoke-virtual {v0}, Lcom/android/mms/model/AttachmentModel;->getMediaSize()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/mms/model/SlideshowModel;->increaseMessageSize(I)V

    goto :goto_1

    .line 138
    .end local v0           #attachment:Lcom/android/mms/model/AttachmentModel;
    :cond_1
    return-void
.end method

.method private static adjusDuration(Lorg/w3c/dom/smil/SMILParElement;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/android/mms/model/MediaModel;)V
    .locals 5
    .parameter "par"
    .parameter "sme"
    .parameter "media"

    .prologue
    const/high16 v4, 0x447a

    .line 541
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getDuration()I

    move-result v1

    .line 542
    .local v1, mediadur:I
    invoke-interface {p0}, Lorg/w3c/dom/smil/SMILParElement;->getDur()F

    move-result v0

    .line 544
    .local v0, dur:F
    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-nez v3, :cond_2

    .line 545
    invoke-virtual {p2, v1}, Lcom/android/mms/model/MediaModel;->setDuration(I)V

    .line 555
    div-int/lit16 v3, v1, 0x3e8

    int-to-float v3, v3

    cmpl-float v3, v3, v0

    if-lez v3, :cond_1

    .line 556
    invoke-interface {p1}, Lorg/w3c/dom/smil/SMILMediaElement;->getTagName()Ljava/lang/String;

    move-result-object v2

    .line 558
    .local v2, tag:Ljava/lang/String;
    iget-object v3, p2, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "video"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p2, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 567
    :cond_0
    int-to-float v3, v1

    div-float/2addr v3, v4

    invoke-interface {p0, v3}, Lorg/w3c/dom/smil/SMILParElement;->setDur(F)V

    .line 586
    .end local v2           #tag:Ljava/lang/String;
    :cond_1
    :goto_0
    const/4 v3, 0x1

    invoke-virtual {p2, v3}, Lcom/android/mms/model/MediaModel;->setFill(S)V

    .line 587
    :cond_2
    return-void

    .line 575
    .restart local v2       #tag:Ljava/lang/String;
    :cond_3
    div-int/lit16 v3, v1, 0x3e8

    int-to-float v3, v3

    cmpg-float v3, v3, v0

    if-gez v3, :cond_4

    .line 576
    float-to-int v3, v0

    mul-int/lit16 v3, v3, 0x3e8

    invoke-virtual {p2, v3}, Lcom/android/mms/model/MediaModel;->setDuration(I)V

    goto :goto_0

    .line 578
    :cond_4
    float-to-int v3, v0

    if-eqz v3, :cond_5

    .line 579
    float-to-int v3, v0

    mul-int/lit16 v3, v3, 0x3e8

    invoke-virtual {p2, v3}, Lcom/android/mms/model/MediaModel;->setDuration(I)V

    goto :goto_0

    .line 581
    :cond_5
    int-to-float v3, v1

    div-float/2addr v3, v4

    invoke-interface {p0, v3}, Lorg/w3c/dom/smil/SMILParElement;->setDur(F)V

    goto :goto_0
.end method

.method private static asSMILPartElement(Lorg/w3c/dom/smil/SMILDocument;Lorg/w3c/dom/Node;)Lorg/w3c/dom/smil/SMILParElement;
    .locals 4
    .parameter "document"
    .parameter "element"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 520
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 521
    .local v1, node:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/Node;>;"
    const-string v3, "par"

    invoke-interface {p0, v3}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/smil/SMILParElement;

    .line 523
    .local v2, par:Lorg/w3c/dom/smil/SMILParElement;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMediaDuration()Z

    move-result v3

    if-nez v3, :cond_0

    .line 524
    const/high16 v3, 0x4100

    invoke-interface {v2, v3}, Lorg/w3c/dom/smil/SMILParElement;->setDur(F)V

    .line 527
    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p1

    .line 529
    :goto_0
    if-eqz p1, :cond_1

    .line 530
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    goto :goto_0

    .line 534
    :cond_1
    const/4 v0, 0x0

    .local v0, j:I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 535
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Node;

    invoke-interface {v2, v3}, Lorg/w3c/dom/smil/SMILParElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 534
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 537
    :cond_2
    return-object v2
.end method

.method private static checkCRMode(ZZLcom/android/mms/model/MediaModel;)Z
    .locals 3
    .parameter "checkCRMode"
    .parameter "doNotAddMedia"
    .parameter "media"

    .prologue
    .line 316
    if-eqz p0, :cond_0

    .line 318
    :try_start_0
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->isImage()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 319
    move-object v0, p2

    check-cast v0, Lcom/android/mms/model/ImageModel;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/mms/model/ImageModel;->checkCreationMode()V

    .line 320
    check-cast p2, Lcom/android/mms/model/ImageModel;

    .end local p2
    invoke-virtual {p2}, Lcom/android/mms/model/ImageModel;->checkContentRestriction()V

    .line 338
    :cond_0
    :goto_0
    return p1

    .line 321
    .restart local p2
    :cond_1
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->isAudio()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 322
    move-object v0, p2

    check-cast v0, Lcom/android/mms/model/AudioModel;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/mms/model/AudioModel;->checkCreationMode()V

    .line 323
    check-cast p2, Lcom/android/mms/model/AudioModel;

    .end local p2
    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->checkContentRestriction()V

    goto :goto_0

    .line 328
    :catch_0
    move-exception v2

    goto :goto_0

    .line 324
    .restart local p2
    :cond_2
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 325
    move-object v0, p2

    check-cast v0, Lcom/android/mms/model/VideoModel;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/mms/model/VideoModel;->checkCreationMode()V

    .line 326
    check-cast p2, Lcom/android/mms/model/VideoModel;

    .end local p2
    invoke-virtual {p2}, Lcom/android/mms/model/VideoModel;->checkContentRestriction()V
    :try_end_0
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/mms/ResolutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 330
    :catch_1
    move-exception v2

    goto :goto_0

    .line 332
    :catch_2
    move-exception v1

    .line 333
    .local v1, e:Lcom/android/mms/ResolutionException;
    const/4 p1, 0x1

    .line 336
    goto :goto_0

    .line 334
    .end local v1           #e:Lcom/android/mms/ResolutionException;
    :catch_3
    move-exception v1

    .line 335
    .local v1, e:Lcom/android/mms/ContentRestrictionException;
    const/4 p1, 0x1

    goto :goto_0
.end method

.method private static checkContentId(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;
    .locals 3
    .parameter "p"

    .prologue
    .line 836
    const/4 v0, 0x0

    .line 837
    .local v0, contentId:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v1

    if-eqz v1, :cond_0

    .line 838
    new-instance v0, Ljava/lang/String;

    .end local v0           #contentId:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 840
    .restart local v0       #contentId:Ljava/lang/String;
    :cond_0
    if-eqz v0, :cond_1

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 841
    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 843
    :cond_1
    return-object v0
.end method

.method private static checkContentLocation(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;
    .locals 2
    .parameter "p"

    .prologue
    .line 848
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v1

    if-eqz v1, :cond_0

    .line 849
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 853
    .local v0, contentLoc:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 851
    .end local v0           #contentLoc:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->generateLocation()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #contentLoc:Ljava/lang/String;
    goto :goto_0
.end method

.method private static checkContentType(Lcom/google/android/mms/pdu/PduPart;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "p"
    .parameter "contentType"
    .parameter "mediaName"

    .prologue
    .line 857
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 859
    .local v0, tempName:Ljava/lang/String;
    const-string v1, ".vcf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 860
    const-string v1, "text/x-vCard"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 861
    new-instance p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>([B)V

    .line 872
    .restart local p1
    :cond_0
    :goto_0
    return-object p1

    .line 862
    :cond_1
    const-string v1, ".vcs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 863
    const-string v1, "text/x-vCalendar"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 864
    new-instance p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>([B)V

    .restart local p1
    goto :goto_0

    .line 865
    :cond_2
    const-string v1, ".vnt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 866
    const-string v1, "text/x-vNote"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 867
    new-instance p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>([B)V

    .restart local p1
    goto :goto_0

    .line 868
    :cond_3
    const-string v1, ".vts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 869
    const-string v1, "text/x-vtodo"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 870
    new-instance p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>([B)V

    .restart local p1
    goto :goto_0
.end method

.method private checkDRMExtension(Lcom/google/android/mms/pdu/PduPart;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "part"
    .parameter "src"
    .parameter "contentType"

    .prologue
    .line 1085
    const/16 v4, 0x2e

    invoke-virtual {p2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 1086
    .local v1, dotPos:I
    const/4 v2, 0x0

    .line 1087
    .local v2, extension:Ljava/lang/String;
    if-ltz v1, :cond_0

    .line 1088
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1091
    :cond_0
    const-string v4, "dcf"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1092
    invoke-static {}, Lcom/android/mms/util/MessageMimeTypeMap;->getSingleton()Lcom/android/mms/util/MessageMimeTypeMap;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/android/mms/util/MessageMimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1094
    .local v0, changeExtension:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1095
    const-string v0, "dcf"

    .line 1096
    :cond_1
    new-instance v4, Ljava/lang/StringBuffer;

    const/4 v5, 0x0

    invoke-virtual {p2, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1097
    .local v3, fileName:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/google/android/mms/pdu/PduPart;->setFilename([B)V

    .line 1098
    const-string p3, "application/vnd.oma.drm.content"

    .line 1100
    .end local v0           #changeExtension:Ljava/lang/String;
    .end local v3           #fileName:Ljava/lang/String;
    :cond_2
    return-object p3
.end method

.method private checkMediaFileName(IILcom/android/mms/model/MediaModel;Lcom/google/android/mms/pdu/PduPart;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "i"
    .parameter "j"
    .parameter "media"
    .parameter "part"
    .parameter "src"

    .prologue
    .line 1104
    add-int/lit8 v1, p1, 0x1

    .local v1, m:I
    :goto_0
    iget-object v4, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 1105
    iget-object v4, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/model/SlideModel;

    .line 1106
    .local v3, slide2:Lcom/android/mms/model/SlideModel;
    if-eqz v3, :cond_2

    .line 1107
    const/4 v2, 0x0

    .local v2, n:I
    :goto_1
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 1108
    if-eq p1, v1, :cond_0

    invoke-virtual {v3, v2}, Lcom/android/mms/model/SlideModel;->get(I)Lcom/android/mms/model/MediaModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1109
    const/16 v4, 0x2e

    invoke-virtual {p5, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1110
    .local v0, index:I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    .line 1111
    new-instance v4, Ljava/lang/StringBuffer;

    const/4 v5, 0x0

    invoke-virtual {p5, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {p5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p5

    .line 1114
    :goto_2
    const-string v4, "Mms/slideshow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "changed file name changed, len = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    .end local v0           #index:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1113
    .restart local v0       #index:I
    :cond_1
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, p5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p5

    goto :goto_2

    .line 1104
    .end local v0           #index:I
    .end local v2           #n:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1119
    .end local v3           #slide2:Lcom/android/mms/model/SlideModel;
    :cond_3
    return-object p5
.end method

.method private static checkSlideMedia(Ljava/lang/String;)Z
    .locals 3
    .parameter "slideMediaName"

    .prologue
    .line 877
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 878
    .local v1, tempName:Ljava/lang/String;
    const-string v2, ".vcf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ".vcs"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ".vnt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ".vts"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 882
    :cond_0
    const/4 v0, 0x0

    .line 886
    .local v0, isSlideMedia:Z
    :goto_0
    return v0

    .line 884
    .end local v0           #isSlideMedia:Z
    :cond_1
    const/4 v0, 0x1

    .restart local v0       #isSlideMedia:Z
    goto :goto_0
.end method

.method public static createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/model/SlideshowModel;
    .locals 1
    .parameter "context"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 145
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    return-object v0
.end method

.method public static createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/mms/model/SlideshowModel;
    .locals 1
    .parameter "context"
    .parameter "uri"
    .parameter "addAttachmentSlide"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 149
    invoke-static {p0, p1}, Lcom/android/mms/model/SlideshowModel;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/android/mms/model/SlideshowModel;->createFromPduBody(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;Z)Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    return-object v0
.end method

.method public static createFromPduBody(Landroid/content/Context;Landroid/net/Uri;ZZ)Lcom/android/mms/model/SlideshowModel;
    .locals 37
    .parameter "context"
    .parameter "uri"
    .parameter "IsSlideshow"
    .parameter "checkCRMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 155
    const-string v3, "Mms/slideshow"

    const-string v10, "createFromPduBody(Uri)"

    invoke-static {v3, v10}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-static/range {p0 .. p1}, Lcom/android/mms/model/SlideshowModel;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v4

    .line 157
    .local v4, pb:Lcom/google/android/mms/pdu/PduBody;
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/mms/model/SlideshowModel;->sIsRawAttachmentsPresent:Z

    .line 158
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/mms/model/SlideshowModel;->sIsDrmContentsPresent:Z

    .line 159
    move-object/from16 v0, p0

    invoke-static {v4, v0}, Lcom/android/mms/model/SmilHelper;->getDocument(Lcom/google/android/mms/pdu/PduBody;Landroid/content/Context;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v5

    .line 162
    .local v5, document:Lorg/w3c/dom/smil/SMILDocument;
    invoke-interface {v5}, Lorg/w3c/dom/smil/SMILDocument;->getLayout()Lorg/w3c/dom/smil/SMILLayoutElement;

    move-result-object v29

    .line 163
    .local v29, sle:Lorg/w3c/dom/smil/SMILLayoutElement;
    invoke-interface/range {v29 .. v29}, Lorg/w3c/dom/smil/SMILLayoutElement;->getRootLayout()Lorg/w3c/dom/smil/SMILRootLayoutElement;

    move-result-object v34

    .line 164
    .local v34, srle:Lorg/w3c/dom/smil/SMILRootLayoutElement;
    invoke-static/range {v34 .. v34}, Lcom/android/mms/model/SlideshowModel;->createRegionModel(Lorg/w3c/dom/smil/SMILRootLayoutElement;)Lcom/android/mms/model/RegionModel;

    move-result-object v27

    .line 167
    .local v27, rootLayout:Lcom/android/mms/model/RegionModel;
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .local v26, regions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/RegionModel;>;"
    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/android/mms/model/SlideshowModel;->makeRegionModelList(Lorg/w3c/dom/smil/SMILLayoutElement;Ljava/util/ArrayList;)I

    move-result v35

    .line 170
    .local v35, sumOfRegionHeight:I
    invoke-virtual/range {v27 .. v27}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v3

    if-lez v3, :cond_0

    if-lez v35, :cond_0

    invoke-virtual/range {v27 .. v27}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v3

    move/from16 v0, v35

    if-le v0, v3, :cond_0

    .line 171
    move-object/from16 v0, v27

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/mms/model/RegionModel;->setHeight(I)V

    .line 177
    :cond_0
    new-instance v6, Lcom/android/mms/model/LayoutModel;

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-direct {v6, v0, v1, v5}, Lcom/android/mms/model/LayoutModel;-><init>(Lcom/android/mms/model/RegionModel;Ljava/util/ArrayList;Lorg/w3c/dom/smil/SMILDocument;)V

    .line 180
    .local v6, layouts:Lcom/android/mms/model/LayoutModel;
    invoke-interface {v5}, Lorg/w3c/dom/smil/SMILDocument;->getBody()Lorg/w3c/dom/smil/SMILElement;

    move-result-object v14

    .line 181
    .local v14, docBody:Lorg/w3c/dom/smil/SMILElement;
    invoke-interface {v14}, Lorg/w3c/dom/smil/SMILElement;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v31

    .line 182
    .local v31, slideNodes:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v31 .. v31}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v32

    .line 183
    .local v32, slidesNum:I
    new-instance v7, Ljava/util/ArrayList;

    move/from16 v0, v32

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 185
    .local v7, slides:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/SlideModel;>;"
    const/4 v8, 0x0

    .line 187
    .local v8, mediaCount:I
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-static {v0, v4, v1}, Lcom/android/mms/model/SlideshowModel;->getAttachmentList(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;Lorg/w3c/dom/NodeList;)Ljava/util/ArrayList;

    move-result-object v9

    .line 189
    .local v9, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/AttachmentModel;>;"
    const/16 v16, 0x0

    .local v16, i:I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, v32

    if-ge v0, v1, :cond_14

    .line 192
    const/4 v13, 0x0

    .line 193
    .local v13, doNotAddSlide:Z
    const/16 v24, 0x0

    .line 194
    .local v24, par:Lorg/w3c/dom/smil/SMILParElement;
    move-object/from16 v0, v31

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    instance-of v3, v3, Lorg/w3c/dom/smil/SMILParElement;

    if-eqz v3, :cond_3

    .line 195
    move-object/from16 v0, v31

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v24

    .end local v24           #par:Lorg/w3c/dom/smil/SMILParElement;
    check-cast v24, Lorg/w3c/dom/smil/SMILParElement;

    .line 202
    .restart local v24       #par:Lorg/w3c/dom/smil/SMILParElement;
    :cond_1
    :goto_1
    if-nez v24, :cond_4

    .line 189
    .end local v24           #par:Lorg/w3c/dom/smil/SMILParElement;
    :cond_2
    :goto_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 197
    .restart local v24       #par:Lorg/w3c/dom/smil/SMILParElement;
    :cond_3
    move-object/from16 v0, v31

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v23

    .line 199
    .local v23, nodeName:Ljava/lang/String;
    const-string v3, "seq"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 200
    move-object/from16 v0, v31

    move/from16 v1, v16

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/android/mms/model/SlideshowModel;->asSMILPartElement(Lorg/w3c/dom/smil/SMILDocument;Lorg/w3c/dom/Node;)Lorg/w3c/dom/smil/SMILParElement;

    move-result-object v24

    goto :goto_1

    .line 204
    .end local v23           #nodeName:Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMinimumSlideElementDuration()I

    move-result v3

    mul-int/lit16 v0, v3, 0x3e8

    move/from16 v25, v0

    .line 205
    .local v25, parDuration:I
    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/smil/SMILParElement;->getDur()F

    move-result v3

    const/high16 v10, 0x447a

    mul-float/2addr v3, v10

    float-to-int v3, v3

    move/from16 v0, v25

    if-le v3, v0, :cond_5

    .line 206
    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/smil/SMILParElement;->getDur()F

    move-result v3

    const/high16 v10, 0x447a

    mul-float/2addr v3, v10

    float-to-int v0, v3

    move/from16 v25, v0

    .line 208
    :cond_5
    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/smil/SMILParElement;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v20

    .line 209
    .local v20, mediaNodes:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v21

    .line 210
    .local v21, mediaNum:I
    new-instance v22, Ljava/util/ArrayList;

    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 211
    .local v22, mediaSet:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    move/from16 v8, v21

    .line 212
    const/16 v18, 0x0

    .local v18, j:I
    :goto_3
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_13

    .line 213
    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v33

    check-cast v33, Lorg/w3c/dom/smil/SMILMediaElement;

    .line 214
    .local v33, sme:Lorg/w3c/dom/smil/SMILMediaElement;
    const/4 v12, 0x0

    .line 216
    .local v12, doNotAddMedia:Z
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move/from16 v2, v25

    invoke-static {v0, v1, v6, v4, v2}, Lcom/android/mms/model/MediaModelFactory;->getMediaModel(Landroid/content/Context;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/android/mms/model/LayoutModel;Lcom/google/android/mms/pdu/PduBody;I)Lcom/android/mms/model/MediaModel;

    move-result-object v19

    .line 221
    .local v19, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 222
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/mms/model/SlideshowModel;->sIsDrmContentsPresent:Z

    .line 224
    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLocationMessage()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 225
    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/MediaModel;->isLocation()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/model/MediaModel;->isVAttachment(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 226
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/mms/model/SlideshowModel;->sIsRawAttachmentsPresent:Z

    .line 212
    .end local v19           #media:Lcom/android/mms/model/MediaModel;
    .end local v33           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    :cond_7
    :goto_4
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    .line 229
    .restart local v19       #media:Lcom/android/mms/model/MediaModel;
    .restart local v33       #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    :cond_8
    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/MediaModel;->isLocation()Z

    move-result v3

    const/4 v10, 0x1

    if-ne v3, v10, :cond_c

    .line 233
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v28

    .line 234
    .local v28, size:I
    const-string v3, "NGM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Raw Attachment Size"

    move-object/from16 v0, v36

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v28

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v36, " "

    move-object/from16 v0, v36

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :cond_9
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/mms/model/AttachmentModel;

    .line 238
    .local v11, a:Lcom/android/mms/model/AttachmentModel;
    const-string v3, "NGM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Raw Attachment URI"

    move-object/from16 v0, v36

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v11}, Lcom/android/mms/model/AttachmentModel;->getUri()Landroid/net/Uri;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-virtual {v11}, Lcom/android/mms/model/AttachmentModel;->getUri()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {v11}, Lcom/android/mms/model/AttachmentModel;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result v3

    if-nez v3, :cond_9

    .line 241
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 245
    .end local v11           #a:Lcom/android/mms/model/AttachmentModel;
    :cond_a
    const-string v3, "NGM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Raw Attachment Size"

    move-object/from16 v0, v36

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v36

    move/from16 v0, v36

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_b

    .line 247
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/mms/model/SlideshowModel;->sIsRawAttachmentsPresent:Z

    .line 289
    .end local v17           #i$:Ljava/util/Iterator;
    .end local v28           #size:I
    :cond_b
    :goto_5
    move/from16 v0, p3

    move-object/from16 v1, v19

    invoke-static {v0, v12, v1}, Lcom/android/mms/model/SlideshowModel;->checkCRMode(ZZLcom/android/mms/model/MediaModel;)Z

    move-result v12

    .line 290
    if-nez v12, :cond_7

    .line 291
    check-cast v33, Lorg/w3c/dom/events/EventTarget;

    .end local v33           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    move-object/from16 v0, v33

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/mms/model/SmilHelper;->addMediaElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/MediaModel;)V

    .line 292
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_4

    .line 294
    .end local v19           #media:Lcom/android/mms/model/MediaModel;
    :catch_0
    move-exception v15

    .line 295
    .local v15, e:Ljava/io/IOException;
    const-string v3, "Mms/slideshow"

    invoke-virtual {v15}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10, v15}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 251
    .end local v15           #e:Ljava/io/IOException;
    .restart local v19       #media:Lcom/android/mms/model/MediaModel;
    .restart local v33       #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    :cond_c
    const/4 v3, 0x1

    if-ne v8, v3, :cond_d

    :try_start_1
    sget-boolean v3, Lcom/android/mms/model/SlideshowModel;->sIsRawAttachmentsPresent:Z

    if-eqz v3, :cond_d

    .line 252
    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v3

    if-eqz v3, :cond_d

    add-int/lit8 v3, v32, -0x1

    move/from16 v0, v16

    if-ne v0, v3, :cond_d

    invoke-static/range {p2 .. p2}, Lcom/android/mms/model/SlideshowModel;->getAddAttachmentSlideForCompose(Z)Z

    move-result v3

    if-nez v3, :cond_d

    .line 254
    const/4 v12, 0x1

    .line 255
    const/4 v3, 0x1

    move/from16 v0, v32

    if-ne v0, v3, :cond_e

    .line 256
    const/4 v13, 0x0

    .line 263
    :cond_d
    :goto_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMediaDuration()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 264
    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/android/mms/model/SlideshowModel;->adjusDuration(Lorg/w3c/dom/smil/SMILParElement;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/android/mms/model/MediaModel;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    .line 296
    .end local v19           #media:Lcom/android/mms/model/MediaModel;
    .end local v33           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    :catch_1
    move-exception v15

    .line 297
    .local v15, e:Ljava/lang/IllegalArgumentException;
    const-string v3, "Mms/slideshow"

    invoke-virtual {v15}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10, v15}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 259
    .end local v15           #e:Ljava/lang/IllegalArgumentException;
    .restart local v19       #media:Lcom/android/mms/model/MediaModel;
    .restart local v33       #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    :cond_e
    const/4 v13, 0x1

    goto :goto_6

    .line 268
    :cond_f
    :try_start_2
    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/model/MediaModel;->isVAttachment(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 269
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/mms/model/SlideshowModel;->sIsRawAttachmentsPresent:Z

    goto/16 :goto_4

    .line 273
    :cond_10
    const/4 v3, 0x1

    if-ne v8, v3, :cond_11

    sget-boolean v3, Lcom/android/mms/model/SlideshowModel;->sIsRawAttachmentsPresent:Z

    if-eqz v3, :cond_11

    .line 274
    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v3

    if-eqz v3, :cond_11

    add-int/lit8 v3, v32, -0x1

    move/from16 v0, v16

    if-ne v0, v3, :cond_11

    invoke-static/range {p2 .. p2}, Lcom/android/mms/model/SlideshowModel;->getAddAttachmentSlideForCompose(Z)Z

    move-result v3

    if-nez v3, :cond_11

    .line 276
    const/4 v12, 0x1

    .line 277
    const/4 v3, 0x1

    move/from16 v0, v32

    if-ne v0, v3, :cond_12

    .line 278
    const/4 v13, 0x0

    .line 285
    :cond_11
    :goto_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMediaDuration()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 286
    move-object/from16 v0, v24

    move-object/from16 v1, v33

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/android/mms/model/SlideshowModel;->adjusDuration(Lorg/w3c/dom/smil/SMILParElement;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/android/mms/model/MediaModel;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_5

    .line 281
    :cond_12
    const/4 v13, 0x1

    goto :goto_7

    .line 301
    .end local v12           #doNotAddMedia:Z
    .end local v19           #media:Lcom/android/mms/model/MediaModel;
    .end local v33           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    :cond_13
    new-instance v30, Lcom/android/mms/model/SlideModel;

    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/smil/SMILParElement;->getDur()F

    move-result v3

    const/high16 v10, 0x447a

    mul-float/2addr v3, v10

    float-to-int v3, v3

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-direct {v0, v3, v1}, Lcom/android/mms/model/SlideModel;-><init>(ILjava/util/ArrayList;)V

    .line 302
    .local v30, slide:Lcom/android/mms/model/SlideModel;
    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/smil/SMILParElement;->getFill()S

    move-result v3

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Lcom/android/mms/model/SlideModel;->setFill(S)V

    .line 303
    check-cast v24, Lorg/w3c/dom/events/EventTarget;

    .end local v24           #par:Lorg/w3c/dom/smil/SMILParElement;
    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/android/mms/model/SmilHelper;->addParElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/SlideModel;)V

    .line 304
    if-nez v13, :cond_2

    .line 305
    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 309
    .end local v13           #doNotAddSlide:Z
    .end local v18           #j:I
    .end local v20           #mediaNodes:Lorg/w3c/dom/NodeList;
    .end local v21           #mediaNum:I
    .end local v22           #mediaSet:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    .end local v25           #parDuration:I
    .end local v30           #slide:Lcom/android/mms/model/SlideModel;
    :cond_14
    invoke-virtual {v9}, Ljava/util/ArrayList;->trimToSize()V

    .line 310
    const/4 v10, 0x0

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v10}, Lcom/android/mms/model/SlideshowModel;->createSlideshowModel(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;Lorg/w3c/dom/smil/SMILDocument;Lcom/android/mms/model/LayoutModel;Ljava/util/ArrayList;ILjava/util/ArrayList;Z)Lcom/android/mms/model/SlideshowModel;

    move-result-object v3

    return-object v3
.end method

.method public static createFromPduBody(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;)Lcom/android/mms/model/SlideshowModel;
    .locals 1
    .parameter "context"
    .parameter "pb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 364
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/mms/model/SlideshowModel;->createFromPduBody(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;Z)Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    return-object v0
.end method

.method public static createFromPduBody(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;Z)Lcom/android/mms/model/SlideshowModel;
    .locals 36
    .parameter "context"
    .parameter "pb"
    .parameter "addAttachmentSlide"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 368
    const-string v4, "Mms/slideshow"

    const-string v5, "createFromPduBody(PduBody)"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/mms/model/SlideshowModel;->sIsRawAttachmentsPresent:Z

    .line 370
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/mms/model/SlideshowModel;->sIsDrmContentsPresent:Z

    .line 371
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/android/mms/model/SmilHelper;->getDocument(Lcom/google/android/mms/pdu/PduBody;Landroid/content/Context;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v6

    .line 374
    .local v6, document:Lorg/w3c/dom/smil/SMILDocument;
    invoke-interface {v6}, Lorg/w3c/dom/smil/SMILDocument;->getLayout()Lorg/w3c/dom/smil/SMILLayoutElement;

    move-result-object v28

    .line 375
    .local v28, sle:Lorg/w3c/dom/smil/SMILLayoutElement;
    invoke-interface/range {v28 .. v28}, Lorg/w3c/dom/smil/SMILLayoutElement;->getRootLayout()Lorg/w3c/dom/smil/SMILRootLayoutElement;

    move-result-object v34

    .line 376
    .local v34, srle:Lorg/w3c/dom/smil/SMILRootLayoutElement;
    invoke-static/range {v34 .. v34}, Lcom/android/mms/model/SlideshowModel;->createRegionModel(Lorg/w3c/dom/smil/SMILRootLayoutElement;)Lcom/android/mms/model/RegionModel;

    move-result-object v26

    .line 379
    .local v26, rootLayout:Lcom/android/mms/model/RegionModel;
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 380
    .local v25, regions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/RegionModel;>;"
    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/android/mms/model/SlideshowModel;->makeRegionModelList(Lorg/w3c/dom/smil/SMILLayoutElement;Ljava/util/ArrayList;)I

    .line 381
    new-instance v7, Lcom/android/mms/model/LayoutModel;

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-direct {v7, v0, v1, v6}, Lcom/android/mms/model/LayoutModel;-><init>(Lcom/android/mms/model/RegionModel;Ljava/util/ArrayList;Lorg/w3c/dom/smil/SMILDocument;)V

    .line 384
    .local v7, layouts:Lcom/android/mms/model/LayoutModel;
    invoke-interface {v6}, Lorg/w3c/dom/smil/SMILDocument;->getBody()Lorg/w3c/dom/smil/SMILElement;

    move-result-object v13

    .line 385
    .local v13, docBody:Lorg/w3c/dom/smil/SMILElement;
    invoke-interface {v13}, Lorg/w3c/dom/smil/SMILElement;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v30

    .line 386
    .local v30, slideNodes:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v30 .. v30}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v31

    .line 387
    .local v31, slidesNum:I
    new-instance v8, Ljava/util/ArrayList;

    move/from16 v0, v31

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 388
    .local v8, slides:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/SlideModel;>;"
    const/16 v35, 0x0

    .line 390
    .local v35, totalMessageSize:I
    const/4 v9, 0x0

    .line 392
    .local v9, mediaCount:I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/android/mms/model/SlideshowModel;->getAttachmentList(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;Lorg/w3c/dom/NodeList;)Ljava/util/ArrayList;

    move-result-object v10

    .line 394
    .local v10, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/AttachmentModel;>;"
    const/4 v15, 0x0

    .local v15, i:I
    :goto_0
    move/from16 v0, v31

    if-ge v15, v0, :cond_f

    .line 397
    const/16 v23, 0x0

    .line 398
    .local v23, par:Lorg/w3c/dom/smil/SMILParElement;
    move-object/from16 v0, v30

    invoke-interface {v0, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    instance-of v4, v4, Lorg/w3c/dom/smil/SMILParElement;

    if-eqz v4, :cond_1

    .line 399
    move-object/from16 v0, v30

    invoke-interface {v0, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v23

    .end local v23           #par:Lorg/w3c/dom/smil/SMILParElement;
    check-cast v23, Lorg/w3c/dom/smil/SMILParElement;

    .line 406
    .restart local v23       #par:Lorg/w3c/dom/smil/SMILParElement;
    :cond_0
    :goto_1
    if-nez v23, :cond_2

    .line 394
    .end local v23           #par:Lorg/w3c/dom/smil/SMILParElement;
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 401
    .restart local v23       #par:Lorg/w3c/dom/smil/SMILParElement;
    :cond_1
    move-object/from16 v0, v30

    invoke-interface {v0, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v22

    .line 403
    .local v22, nodeName:Ljava/lang/String;
    const-string v4, "seq"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 404
    move-object/from16 v0, v30

    invoke-interface {v0, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/android/mms/model/SlideshowModel;->asSMILPartElement(Lorg/w3c/dom/smil/SMILDocument;Lorg/w3c/dom/Node;)Lorg/w3c/dom/smil/SMILParElement;

    move-result-object v23

    goto :goto_1

    .line 408
    .end local v22           #nodeName:Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMinimumSlideElementDuration()I

    move-result v4

    mul-int/lit16 v0, v4, 0x3e8

    move/from16 v24, v0

    .line 409
    .local v24, parDuration:I
    invoke-interface/range {v23 .. v23}, Lorg/w3c/dom/smil/SMILParElement;->getDur()F

    move-result v4

    const/high16 v5, 0x447a

    mul-float/2addr v4, v5

    float-to-int v4, v4

    move/from16 v0, v24

    if-le v4, v0, :cond_3

    .line 410
    invoke-interface/range {v23 .. v23}, Lorg/w3c/dom/smil/SMILParElement;->getDur()F

    move-result v4

    const/high16 v5, 0x447a

    mul-float/2addr v4, v5

    float-to-int v0, v4

    move/from16 v24, v0

    .line 414
    :cond_3
    invoke-interface/range {v23 .. v23}, Lorg/w3c/dom/smil/SMILParElement;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v19

    .line 415
    .local v19, mediaNodes:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v20

    .line 416
    .local v20, mediaNum:I
    new-instance v21, Ljava/util/ArrayList;

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 417
    .local v21, mediaSet:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    move/from16 v9, v20

    .line 419
    const/16 v17, 0x0

    .local v17, j:I
    :goto_3
    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_e

    .line 421
    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/model/SlideshowModel;->getSmilMediaElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v33

    .line 423
    .local v33, sme:Lorg/w3c/dom/smil/SMILMediaElement;
    if-nez v33, :cond_5

    .line 419
    .end local v33           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    :cond_4
    :goto_4
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 426
    .restart local v33       #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    :cond_5
    const/16 v18, 0x0

    .line 428
    .local v18, media:Lcom/android/mms/model/MediaModel;
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, p1

    move/from16 v3, v24

    invoke-static {v0, v1, v7, v2, v3}, Lcom/android/mms/model/MediaModelFactory;->getMediaModel(Landroid/content/Context;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/android/mms/model/LayoutModel;Lcom/google/android/mms/pdu/PduBody;I)Lcom/android/mms/model/MediaModel;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v18

    .line 441
    :goto_5
    if-eqz v18, :cond_4

    .line 448
    :try_start_1
    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 449
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/mms/model/SlideshowModel;->sIsDrmContentsPresent:Z

    .line 452
    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLocationMessage()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 453
    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/model/MediaModel;->isLocation()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/model/MediaModel;->isVAttachment(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 454
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/mms/model/SlideshowModel;->sIsRawAttachmentsPresent:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_4

    .line 492
    .end local v33           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    :catch_0
    move-exception v14

    .line 493
    .local v14, e:Ljava/io/IOException;
    const-string v4, "Mms/slideshow"

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v14}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 438
    .end local v14           #e:Ljava/io/IOException;
    .restart local v33       #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    :catch_1
    move-exception v14

    .line 439
    .local v14, e:Ljava/lang/NullPointerException;
    :try_start_2
    const-string v4, "Mms/slideshow"

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v14}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_5

    .line 494
    .end local v14           #e:Ljava/lang/NullPointerException;
    .end local v33           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    :catch_2
    move-exception v14

    .line 495
    .local v14, e:Ljava/lang/IllegalArgumentException;
    const-string v4, "Mms/slideshow"

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v14}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 456
    .end local v14           #e:Ljava/lang/IllegalArgumentException;
    .restart local v33       #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    :cond_7
    :try_start_3
    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/model/MediaModel;->isLocation()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_a

    .line 459
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v27

    .line 460
    .local v27, size:I
    const-string v4, "NGM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Raw Attachment Size"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :cond_8
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/mms/model/AttachmentModel;

    .line 463
    .local v12, a:Lcom/android/mms/model/AttachmentModel;
    const-string v4, "NGM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Raw Attachment URI"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v12}, Lcom/android/mms/model/AttachmentModel;->getUri()Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    invoke-virtual {v12}, Lcom/android/mms/model/AttachmentModel;->getUri()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {v12}, Lcom/android/mms/model/AttachmentModel;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result v4

    if-nez v4, :cond_8

    .line 465
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 470
    .end local v12           #a:Lcom/android/mms/model/AttachmentModel;
    :cond_9
    const-string v4, "NGM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Raw Attachment Size"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_a

    .line 472
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/mms/model/SlideshowModel;->sIsRawAttachmentsPresent:Z

    .line 476
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v27           #size:I
    :cond_a
    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/model/MediaModel;->isLocation()Z

    move-result v4

    if-nez v4, :cond_b

    .line 477
    move-object/from16 v0, v23

    move-object/from16 v1, v33

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/mms/model/SlideshowModel;->adjusDuration(Lorg/w3c/dom/smil/SMILParElement;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/android/mms/model/MediaModel;)V

    .line 489
    :cond_b
    :goto_6
    check-cast v33, Lorg/w3c/dom/events/EventTarget;

    .end local v33           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    move-object/from16 v0, v33

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/mms/model/SmilHelper;->addMediaElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/MediaModel;)V

    .line 490
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/model/MediaModel;->getMediaSize()I

    move-result v4

    add-int v35, v35, v4

    goto/16 :goto_4

    .line 480
    .restart local v33       #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    :cond_c
    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/mms/model/MediaModel;->isVAttachment(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 481
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/mms/model/SlideshowModel;->sIsRawAttachmentsPresent:Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_4

    .line 496
    .end local v33           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    :catch_3
    move-exception v14

    .line 497
    .local v14, e:Lcom/android/mms/UnsupportContentTypeException;
    const-string v4, "Mms/slideshow"

    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v14}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 485
    .end local v14           #e:Lcom/android/mms/UnsupportContentTypeException;
    .restart local v33       #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    :cond_d
    :try_start_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMediaDuration()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 486
    move-object/from16 v0, v23

    move-object/from16 v1, v33

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/mms/model/SlideshowModel;->adjusDuration(Lorg/w3c/dom/smil/SMILParElement;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/android/mms/model/MediaModel;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_6

    .line 501
    .end local v18           #media:Lcom/android/mms/model/MediaModel;
    .end local v33           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    :cond_e
    new-instance v29, Lcom/android/mms/model/SlideModel;

    invoke-interface/range {v23 .. v23}, Lorg/w3c/dom/smil/SMILParElement;->getDur()F

    move-result v4

    const/high16 v5, 0x447a

    mul-float/2addr v4, v5

    float-to-int v4, v4

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-direct {v0, v4, v1}, Lcom/android/mms/model/SlideModel;-><init>(ILjava/util/ArrayList;)V

    .line 502
    .local v29, slide:Lcom/android/mms/model/SlideModel;
    invoke-interface/range {v23 .. v23}, Lorg/w3c/dom/smil/SMILParElement;->getFill()S

    move-result v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lcom/android/mms/model/SlideModel;->setFill(S)V

    .line 503
    check-cast v23, Lorg/w3c/dom/events/EventTarget;

    .end local v23           #par:Lorg/w3c/dom/smil/SMILParElement;
    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/mms/model/SmilHelper;->addParElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/SlideModel;)V

    .line 504
    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 507
    .end local v17           #j:I
    .end local v19           #mediaNodes:Lorg/w3c/dom/NodeList;
    .end local v20           #mediaNum:I
    .end local v21           #mediaSet:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    .end local v24           #parDuration:I
    .end local v29           #slide:Lcom/android/mms/model/SlideModel;
    :cond_f
    invoke-virtual {v10}, Ljava/util/ArrayList;->trimToSize()V

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v11, p2

    .line 509
    invoke-static/range {v4 .. v11}, Lcom/android/mms/model/SlideshowModel;->createSlideshowModel(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;Lorg/w3c/dom/smil/SMILDocument;Lcom/android/mms/model/LayoutModel;Ljava/util/ArrayList;ILjava/util/ArrayList;Z)Lcom/android/mms/model/SlideshowModel;

    move-result-object v32

    .line 510
    .local v32, slideshow:Lcom/android/mms/model/SlideshowModel;
    move/from16 v0, v35

    move-object/from16 v1, v32

    iput v0, v1, Lcom/android/mms/model/SlideshowModel;->mTotalMessageSize:I

    .line 511
    return-object v32
.end method

.method public static createName(JI)Ljava/lang/String;
    .locals 2
    .parameter "dateTaken"
    .parameter "sequenceNumber"

    .prologue
    .line 1081
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "yyyyMMdd_kkmmss"

    invoke-static {v1, p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static createNew(Landroid/content/Context;)Lcom/android/mms/model/SlideshowModel;
    .locals 1
    .parameter "context"

    .prologue
    .line 141
    new-instance v0, Lcom/android/mms/model/SlideshowModel;

    invoke-direct {v0, p0}, Lcom/android/mms/model/SlideshowModel;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private static createRegionModel(Lorg/w3c/dom/smil/SMILRootLayoutElement;)Lcom/android/mms/model/RegionModel;
    .locals 6
    .parameter "srle"

    .prologue
    const/4 v2, 0x0

    .line 641
    invoke-interface {p0}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->getWidth()I

    move-result v4

    .line 642
    .local v4, w:I
    invoke-interface {p0}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->getHeight()I

    move-result v5

    .line 643
    .local v5, h:I
    if-eqz v4, :cond_0

    if-nez v5, :cond_1

    .line 644
    :cond_0
    invoke-static {}, Lcom/android/mms/layout/LayoutManager;->getInstance()Lcom/android/mms/layout/LayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/layout/LayoutManager;->getLayoutParameters()Lcom/android/mms/layout/LayoutParameters;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/mms/layout/LayoutParameters;->getWidth()I

    move-result v4

    .line 645
    invoke-static {}, Lcom/android/mms/layout/LayoutManager;->getInstance()Lcom/android/mms/layout/LayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/layout/LayoutManager;->getLayoutParameters()Lcom/android/mms/layout/LayoutParameters;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/mms/layout/LayoutParameters;->getHeight()I

    move-result v5

    .line 646
    invoke-interface {p0, v4}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->setWidth(I)V

    .line 647
    invoke-interface {p0, v5}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->setHeight(I)V

    .line 649
    :cond_1
    new-instance v0, Lcom/android/mms/model/RegionModel;

    const/4 v1, 0x0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/model/RegionModel;-><init>(Ljava/lang/String;IIII)V

    .line 650
    .local v0, rootLayout:Lcom/android/mms/model/RegionModel;
    return-object v0
.end method

.method private static createSlideshowModel(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;Lorg/w3c/dom/smil/SMILDocument;Lcom/android/mms/model/LayoutModel;Ljava/util/ArrayList;ILjava/util/ArrayList;Z)Lcom/android/mms/model/SlideshowModel;
    .locals 15
    .parameter "context"
    .parameter "pb"
    .parameter "document"
    .parameter "layouts"
    .parameter
    .parameter "mediaCount"
    .parameter
    .parameter "addAttachmentSlide"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/mms/pdu/PduBody;",
            "Lorg/w3c/dom/smil/SMILDocument;",
            "Lcom/android/mms/model/LayoutModel;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/AttachmentModel;",
            ">;Z)",
            "Lcom/android/mms/model/SlideshowModel;"
        }
    .end annotation

    .prologue
    .line 592
    .local p4, slides:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/SlideModel;>;"
    .local p6, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/AttachmentModel;>;"
    new-instance v0, Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p6

    move-object/from16 v4, p2

    move-object/from16 v5, p1

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/model/SlideshowModel;-><init>(Lcom/android/mms/model/LayoutModel;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/w3c/dom/smil/SMILDocument;Lcom/google/android/mms/pdu/PduBody;Landroid/content/Context;)V

    .line 594
    .local v0, slideshow:Lcom/android/mms/model/SlideshowModel;
    move/from16 v7, p7

    .line 595
    .local v7, addAttachSlide:Z
    const-string v1, "Mms/slideshow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRaw:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/mms/model/SlideshowModel;->sIsRawAttachmentsPresent:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",addAttach:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    sget-boolean v1, Lcom/android/mms/model/SlideshowModel;->sIsRawAttachmentsPresent:Z

    if-eqz v1, :cond_0

    if-eqz v7, :cond_0

    .line 597
    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v12

    .line 600
    .local v12, size:I
    new-instance v13, Lcom/android/mms/model/SlideModel;

    invoke-direct {v13, v0}, Lcom/android/mms/model/SlideModel;-><init>(Lcom/android/mms/model/SlideshowModel;)V

    .line 602
    .local v13, slide:Lcom/android/mms/model/SlideModel;
    new-instance v14, Lcom/android/mms/model/TextModel;

    const-string v1, "text/plain"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cid:text_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".txt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/model/LayoutModel;->getTextRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v3

    invoke-direct {v14, p0, v1, v2, v3}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V

    .line 604
    .local v14, text:Lcom/android/mms/model/TextModel;
    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsSize()I

    move-result v9

    .line 606
    .local v9, fileCount:I
    const/4 v1, 0x1

    if-ne v9, v1, :cond_2

    .line 607
    const v1, 0x7f0a017d

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 611
    .local v8, detail:Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getAttachmentList()Ljava/lang/String;

    move-result-object v10

    .line 612
    .local v10, name:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    .line 613
    .local v11, shown:Ljava/lang/String;
    invoke-virtual {v14, v11}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;)V

    .line 614
    invoke-virtual {v13, v14}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 616
    const/4 v1, 0x1

    if-ne v12, v1, :cond_3

    if-nez p5, :cond_3

    .line 617
    add-int/lit8 v1, v12, -0x1

    invoke-virtual {v0, v1, v13}, Lcom/android/mms/model/SlideshowModel;->add(ILcom/android/mms/model/SlideModel;)V

    .line 618
    invoke-virtual {v0, v12}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    .line 623
    :goto_1
    invoke-static {}, Lcom/android/mms/model/SlideshowModel;->getCheckMessageSizeforSlide()Z

    move-result v1

    if-nez v1, :cond_0

    .line 624
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/mms/model/SlideshowModel;->setCheckMessageSizeforSlide(Z)V

    .line 631
    .end local v8           #detail:Ljava/lang/String;
    .end local v9           #fileCount:I
    .end local v10           #name:Ljava/lang/String;
    .end local v11           #shown:Ljava/lang/String;
    .end local v12           #size:I
    .end local v13           #slide:Lcom/android/mms/model/SlideModel;
    .end local v14           #text:Lcom/android/mms/model/TextModel;
    :cond_0
    invoke-static {}, Lcom/android/mms/model/SlideshowModel;->getCheckMessageSizeforSlide()Z

    move-result v1

    if-nez v1, :cond_1

    .line 632
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/mms/model/SlideshowModel;->setCheckMessageSizeforSlide(Z)V

    .line 636
    :cond_1
    invoke-virtual {v0, v0}, Lcom/android/mms/model/Model;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 637
    return-object v0

    .line 609
    .restart local v9       #fileCount:I
    .restart local v12       #size:I
    .restart local v13       #slide:Lcom/android/mms/model/SlideModel;
    .restart local v14       #text:Lcom/android/mms/model/TextModel;
    :cond_2
    const v1, 0x7f0a017e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .restart local v8       #detail:Ljava/lang/String;
    goto :goto_0

    .line 620
    .restart local v10       #name:Ljava/lang/String;
    .restart local v11       #shown:Ljava/lang/String;
    :cond_3
    invoke-virtual {v0, v12, v13}, Lcom/android/mms/model/SlideshowModel;->add(ILcom/android/mms/model/SlideModel;)V

    goto :goto_1
.end method

.method private static extractCID(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "slideMediaName"

    .prologue
    .line 829
    const-string v0, "cid:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 830
    const-string v0, "cid:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 832
    :cond_0
    return-object p0
.end method

.method private static extractLocation(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "compareContentLoc"

    .prologue
    .line 821
    const-string v1, "\""

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\""

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 822
    const/16 v1, 0x22

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 823
    .local v0, endIndex:I
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 825
    .end local v0           #endIndex:I
    :cond_0
    return-object p0
.end method

.method public static getAddAttachmentSlideForCompose(Z)Z
    .locals 3
    .parameter "IsSlideshow"

    .prologue
    const/4 v1, 0x0

    .line 903
    const/4 v0, 0x0

    .line 904
    .local v0, resultValue:Z
    sget-boolean v2, Lcom/android/mms/model/SlideshowModel;->sRawAttachmentAddSlideforCompose:Z

    if-eqz v2, :cond_0

    .line 905
    if-eqz p0, :cond_2

    .line 906
    sget-boolean v2, Lcom/android/mms/model/SlideshowModel;->sRawAttachmentAddSlideforCompose:Z

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 911
    :cond_0
    :goto_0
    sput-boolean v1, Lcom/android/mms/model/SlideshowModel;->sRawAttachmentAddSlideforCompose:Z

    .line 912
    return v0

    :cond_1
    move v0, v1

    .line 906
    goto :goto_0

    .line 908
    :cond_2
    sget-boolean v0, Lcom/android/mms/model/SlideshowModel;->sRawAttachmentAddSlideforCompose:Z

    goto :goto_0
.end method

.method private static getAttachmentList(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;Lorg/w3c/dom/NodeList;)Ljava/util/ArrayList;
    .locals 10
    .parameter "context"
    .parameter "pb"
    .parameter "slideNodes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/mms/pdu/PduBody;",
            "Lorg/w3c/dom/NodeList;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/AttachmentModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 676
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v7

    .line 677
    .local v7, partNum:I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 679
    .local v0, attachmentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/AttachmentModel;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v7, :cond_2

    .line 680
    invoke-virtual {p1, v3}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v6

    .line 681
    .local v6, part:Lcom/google/android/mms/pdu/PduPart;
    new-instance v8, Ljava/lang/String;

    invoke-virtual {v6}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    .line 684
    .local v8, type:Ljava/lang/String;
    const-string v9, "text/x-vCard"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "text/x-vcard"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "text/x-vCalendar"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "text/x-vNote"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "text/x-vtodo"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 691
    :cond_0
    invoke-static {v6}, Lcom/android/mms/model/SlideshowModel;->checkContentLocation(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;

    move-result-object v1

    .line 692
    .local v1, contentLoc:Ljava/lang/String;
    const/4 v4, 0x0

    .line 695
    .local v4, object:Lcom/android/mms/model/AttachmentModel;
    :try_start_0
    new-instance v5, Lcom/android/mms/model/AttachmentModel;

    invoke-virtual {v6}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v5, p0, v8, v1, v9}, Lcom/android/mms/model/AttachmentModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4           #object:Lcom/android/mms/model/AttachmentModel;
    .local v5, object:Lcom/android/mms/model/AttachmentModel;
    move-object v4, v5

    .line 700
    .end local v5           #object:Lcom/android/mms/model/AttachmentModel;
    .restart local v4       #object:Lcom/android/mms/model/AttachmentModel;
    :goto_1
    if-eqz v4, :cond_1

    const-string v9, "text/plain"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-static {v8}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 702
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v0, v9, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 703
    const/4 v9, 0x1

    sput-boolean v9, Lcom/android/mms/model/SlideshowModel;->sIsRawAttachmentsPresent:Z

    .line 679
    .end local v1           #contentLoc:Ljava/lang/String;
    .end local v4           #object:Lcom/android/mms/model/AttachmentModel;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 696
    .restart local v1       #contentLoc:Ljava/lang/String;
    .restart local v4       #object:Lcom/android/mms/model/AttachmentModel;
    :catch_0
    move-exception v2

    .line 698
    .local v2, e:Lcom/google/android/mms/MmsException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 707
    .end local v1           #contentLoc:Ljava/lang/String;
    .end local v2           #e:Lcom/google/android/mms/MmsException;
    .end local v4           #object:Lcom/android/mms/model/AttachmentModel;
    .end local v6           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v8           #type:Ljava/lang/String;
    :cond_2
    return-object v0
.end method

.method public static getCheckMessageSizeforSlide()Z
    .locals 1

    .prologue
    .line 895
    sget-boolean v0, Lcom/android/mms/model/SlideshowModel;->sCheckMessageSize:Z

    .line 896
    .local v0, resultValue:Z
    return v0
.end method

.method public static getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;
    .locals 4
    .parameter "context"
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 1212
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v1

    .line 1213
    .local v1, p:Lcom/google/android/mms/pdu/PduPersister;
    invoke-virtual {v1, p1}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v2

    .line 1215
    .local v2, pdu:Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v0

    .line 1216
    .local v0, msgType:I
    const/16 v3, 0x80

    if-eq v0, v3, :cond_0

    const/16 v3, 0x84

    if-ne v0, v3, :cond_1

    .line 1218
    :cond_0
    check-cast v2, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    .end local v2           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v3

    return-object v3

    .line 1220
    .restart local v2       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    :cond_1
    new-instance v3, Lcom/google/android/mms/MmsException;

    invoke-direct {v3}, Lcom/google/android/mms/MmsException;-><init>()V

    throw v3
.end method

.method public static getSmilMediaElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/smil/SMILMediaElement;
    .locals 6
    .parameter "node"

    .prologue
    .line 656
    move-object v2, p0

    .line 660
    .local v2, mNode:Lorg/w3c/dom/Node;
    const/4 v4, 0x0

    .line 662
    .local v4, mSME:Lorg/w3c/dom/smil/SMILMediaElement;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 663
    .local v3, mNodeList:Lorg/w3c/dom/NodeList;
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    .line 665
    .local v1, mChildCount:I
    instance-of v5, v2, Lorg/w3c/dom/smil/SMILMediaElement;

    if-eqz v5, :cond_1

    move-object v4, v2

    .line 666
    check-cast v4, Lorg/w3c/dom/smil/SMILMediaElement;

    .line 672
    :cond_0
    return-object v4

    .line 668
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 669
    invoke-interface {v3, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-static {v5}, Lcom/android/mms/model/SlideshowModel;->getSmilMediaElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v4

    .line 668
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getSubject(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1227
    const/4 v1, 0x0

    .line 1229
    .local v1, subStr:Ljava/lang/String;
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v0

    check-cast v0, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    .line 1231
    .local v0, pdu:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    if-eqz v0, :cond_0

    .line 1232
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v2

    .line 1233
    .local v2, subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v2, :cond_0

    .line 1234
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    .line 1240
    .end local v2           #subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_0
    return-object v3
.end method

.method private makePduBody(Landroid/content/Context;Lorg/w3c/dom/smil/SMILDocument;Z)Lcom/google/android/mms/pdu/PduBody;
    .locals 22
    .parameter "context"
    .parameter "document"
    .parameter "isMakingCopy"

    .prologue
    .line 933
    new-instance v15, Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v15}, Lcom/google/android/mms/pdu/PduBody;-><init>()V

    .line 935
    .local v15, pb:Lcom/google/android/mms/pdu/PduBody;
    const/4 v11, 0x0

    .line 936
    .local v11, hasForwardLock:Z
    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    .line 937
    .local v16, s:Ljava/lang/StringBuffer;
    const/4 v14, 0x1

    .line 939
    .local v14, nSeqNumber:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_11

    .line 940
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/mms/model/SlideModel;

    .line 941
    .local v17, slide:Lcom/android/mms/model/SlideModel;
    if-eqz v17, :cond_10

    .line 942
    const/4 v4, 0x0

    .local v4, j:I
    :goto_1
    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/model/SlideModel;->size()I

    move-result v2

    if-ge v4, v2, :cond_10

    .line 943
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/android/mms/model/SlideModel;->get(I)Lcom/android/mms/model/MediaModel;

    move-result-object v5

    .line 945
    .local v5, media:Lcom/android/mms/model/MediaModel;
    if-eqz v5, :cond_1

    if-eqz p3, :cond_1

    .line 947
    :try_start_0
    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->isAllowedToForward()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_1

    .line 948
    const/4 v11, 0x1

    .line 942
    .end local v5           #media:Lcom/android/mms/model/MediaModel;
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 951
    .restart local v5       #media:Lcom/android/mms/model/MediaModel;
    :catch_0
    move-exception v10

    .line 953
    .local v10, e:Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    .line 957
    .end local v10           #e:Ljava/io/IOException;
    :cond_1
    new-instance v6, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v6}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 958
    .local v6, part:Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v7

    .line 960
    .local v7, src:Ljava/lang/String;
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v19, v5

    .line 961
    check-cast v19, Lcom/android/mms/model/TextModel;

    .line 964
    .local v19, text:Lcom/android/mms/model/TextModel;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLocationMessage()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 965
    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->isLocation()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/model/MediaModel;->isVAttachment(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 975
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableKoreanSpecialCharacter()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 976
    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->convertCharaterforKOR(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;)V

    .line 979
    :cond_3
    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/TextModel;->getCharset()I

    move-result v2

    invoke-virtual {v6, v2}, Lcom/google/android/mms/pdu/PduPart;->setCharset(I)V

    .line 988
    .end local v19           #text:Lcom/android/mms/model/TextModel;
    :cond_4
    :goto_3
    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v9

    .line 990
    .local v9, contentType:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v9}, Lcom/android/mms/model/SlideshowModel;->checkDRMExtension(Lcom/google/android/mms/pdu/PduPart;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 993
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 996
    const-string v2, "cid:"

    invoke-virtual {v7, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    .line 997
    .local v18, startWithContentId:Z
    if-eqz v18, :cond_8

    .line 998
    const-string v2, "cid:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v7, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 1003
    .local v13, location:Ljava/lang/String;
    :goto_4
    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 1006
    if-eqz v18, :cond_9

    .line 1008
    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 1015
    :goto_5
    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1016
    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->getDrmObject()Lcom/android/mms/drm/DrmWrapper;

    move-result-object v20

    .line 1017
    .local v20, wrapper:Lcom/android/mms/drm/DrmWrapper;
    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/drm/DrmWrapper;->getOriginalUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/google/android/mms/pdu/PduPart;->setDataUri(Landroid/net/Uri;)V

    .line 1018
    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/drm/DrmWrapper;->getOriginalData()[B

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 1032
    .end local v5           #media:Lcom/android/mms/model/MediaModel;
    .end local v20           #wrapper:Lcom/android/mms/drm/DrmWrapper;
    :cond_5
    :goto_6
    invoke-virtual {v15, v6}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    goto/16 :goto_2

    .line 970
    .end local v9           #contentType:Ljava/lang/String;
    .end local v13           #location:Ljava/lang/String;
    .end local v18           #startWithContentId:Z
    .restart local v5       #media:Lcom/android/mms/model/MediaModel;
    .restart local v19       #text:Lcom/android/mms/model/TextModel;
    :cond_6
    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/model/MediaModel;->isVAttachment(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_2

    .line 981
    .end local v19           #text:Lcom/android/mms/model/TextModel;
    :cond_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAttachmentFilenameEncoding()Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v2, p0

    .line 982
    invoke-direct/range {v2 .. v7}, Lcom/android/mms/model/SlideshowModel;->checkMediaFileName(IILcom/android/mms/model/MediaModel;Lcom/google/android/mms/pdu/PduPart;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 983
    invoke-virtual {v5, v7}, Lcom/android/mms/model/MediaModel;->setSrc(Ljava/lang/String;)V

    goto :goto_3

    .line 1000
    .restart local v9       #contentType:Ljava/lang/String;
    .restart local v18       #startWithContentId:Z
    :cond_8
    move-object v13, v7

    .restart local v13       #location:Ljava/lang/String;
    goto :goto_4

    .line 1010
    :cond_9
    const/16 v2, 0x2e

    invoke-virtual {v13, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v12

    .line 1011
    .local v12, index:I
    const/4 v2, -0x1

    if-eq v12, v2, :cond_a

    if-nez v12, :cond_b

    :cond_a
    move-object v8, v13

    .line 1012
    .local v8, contentId:Ljava/lang/String;
    :goto_7
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    goto :goto_5

    .line 1011
    .end local v8           #contentId:Ljava/lang/String;
    :cond_b
    const/4 v2, 0x0

    invoke-virtual {v13, v2, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    goto :goto_7

    .line 1019
    .end local v12           #index:I
    :cond_c
    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1020
    check-cast v5, Lcom/android/mms/model/TextModel;

    .end local v5           #media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v5}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    goto :goto_6

    .line 1021
    .restart local v5       #media:Lcom/android/mms/model/MediaModel;
    :cond_d
    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->isImage()Z

    move-result v2

    if-nez v2, :cond_e

    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->isVideo()Z

    move-result v2

    if-nez v2, :cond_e

    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->isAudio()Z

    move-result v2

    if-nez v2, :cond_e

    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->isLocation()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1022
    :cond_e
    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/google/android/mms/pdu/PduPart;->setDataUri(Landroid/net/Uri;)V

    .line 1024
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAttachmentFilenameEncoding()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1025
    invoke-static {v14, v6, v13}, Lcom/android/mms/model/SlideshowModel;->setEncodedFilename(ILcom/google/android/mms/pdu/PduPart;Ljava/lang/String;)I

    move-result v14

    goto/16 :goto_6

    .line 1028
    :cond_f
    const-string v2, "Mms/slideshow"

    const-string v21, "Unsupport media: "

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v2, v0}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    goto/16 :goto_6

    .line 939
    .end local v4           #j:I
    .end local v5           #media:Lcom/android/mms/model/MediaModel;
    .end local v6           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v7           #src:Ljava/lang/String;
    .end local v9           #contentType:Ljava/lang/String;
    .end local v13           #location:Ljava/lang/String;
    .end local v18           #startWithContentId:Z
    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 1037
    .end local v17           #slide:Lcom/android/mms/model/SlideModel;
    :cond_11
    if-eqz v11, :cond_12

    if-eqz p3, :cond_12

    if-eqz p1, :cond_12

    .line 1038
    const v2, 0x7f0a0052

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v21, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1040
    move-object/from16 v0, p1

    invoke-static {v15, v0}, Lcom/android/mms/model/SmilHelper;->getDocument(Lcom/google/android/mms/pdu/PduBody;Landroid/content/Context;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object p2

    .line 1043
    :cond_12
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/mms/model/SlideshowModel;->makeVItemPart(Lcom/google/android/mms/pdu/PduBody;)V

    .line 1045
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v15}, Lcom/android/mms/model/SlideshowModel;->makeSmilPart(Lorg/w3c/dom/smil/SMILDocument;Lcom/google/android/mms/pdu/PduBody;)V

    .line 1047
    return-object v15
.end method

.method private makePduBody(Lorg/w3c/dom/smil/SMILDocument;)Lcom/google/android/mms/pdu/PduBody;
    .locals 2
    .parameter "document"

    .prologue
    .line 929
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/mms/model/SlideshowModel;->makePduBody(Landroid/content/Context;Lorg/w3c/dom/smil/SMILDocument;Z)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    return-object v0
.end method

.method private static makeRegionModelList(Lorg/w3c/dom/smil/SMILLayoutElement;Ljava/util/ArrayList;)I
    .locals 13
    .parameter "sle"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/smil/SMILLayoutElement;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/RegionModel;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 342
    .local p1, regions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/RegionModel;>;"
    invoke-interface {p0}, Lorg/w3c/dom/smil/SMILLayoutElement;->getRegions()Lorg/w3c/dom/NodeList;

    move-result-object v9

    .line 343
    .local v9, nlRegions:Lorg/w3c/dom/NodeList;
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    .line 345
    .local v10, regionsNum:I
    const/4 v12, 0x0

    .line 348
    .local v12, sumOfRegionHeight:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v10, :cond_0

    .line 349
    invoke-interface {v9, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    check-cast v11, Lorg/w3c/dom/smil/SMILRegionElement;

    .line 350
    .local v11, sre:Lorg/w3c/dom/smil/SMILRegionElement;
    new-instance v0, Lcom/android/mms/model/RegionModel;

    invoke-interface {v11}, Lorg/w3c/dom/smil/SMILRegionElement;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11}, Lorg/w3c/dom/smil/SMILRegionElement;->getFit()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11}, Lorg/w3c/dom/smil/SMILRegionElement;->getLeft()I

    move-result v3

    invoke-interface {v11}, Lorg/w3c/dom/smil/SMILRegionElement;->getTop()I

    move-result v4

    invoke-interface {v11}, Lorg/w3c/dom/smil/SMILRegionElement;->getWidth()I

    move-result v5

    invoke-interface {v11}, Lorg/w3c/dom/smil/SMILRegionElement;->getHeight()I

    move-result v6

    invoke-interface {v11}, Lorg/w3c/dom/smil/SMILRegionElement;->getBackgroundColor()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/model/RegionModel;-><init>(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)V

    .line 353
    .local v0, r:Lcom/android/mms/model/RegionModel;
    invoke-interface {v11}, Lorg/w3c/dom/smil/SMILRegionElement;->getHeight()I

    move-result v1

    add-int/2addr v12, v1

    .line 357
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 359
    .end local v0           #r:Lcom/android/mms/model/RegionModel;
    .end local v11           #sre:Lorg/w3c/dom/smil/SMILRegionElement;
    :cond_0
    return v12
.end method

.method private makeSmilPart(Lorg/w3c/dom/smil/SMILDocument;Lcom/google/android/mms/pdu/PduBody;)V
    .locals 7
    .parameter "document"
    .parameter "pb"

    .prologue
    .line 1150
    const/4 v1, 0x0

    .line 1152
    .local v1, out:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1153
    .end local v1           #out:Ljava/io/ByteArrayOutputStream;
    .local v2, out:Ljava/io/ByteArrayOutputStream;
    :try_start_1
    invoke-static {p1, v2}, Lcom/android/mms/dom/smil/parser/SmilXmlSerializer;->serialize(Lorg/w3c/dom/smil/SMILDocument;Ljava/io/OutputStream;)V

    .line 1154
    new-instance v3, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v3}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 1155
    .local v3, smilPart:Lcom/google/android/mms/pdu/PduPart;
    const-string v4, "smil"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 1156
    const-string v4, "smil.xml"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 1157
    const-string v4, "application/smil"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 1158
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 1161
    invoke-virtual {p2, v3}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1163
    if-eqz v2, :cond_0

    .line 1165
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1171
    :cond_0
    :goto_0
    return-void

    .line 1163
    .end local v2           #out:Ljava/io/ByteArrayOutputStream;
    .end local v3           #smilPart:Lcom/google/android/mms/pdu/PduPart;
    .restart local v1       #out:Ljava/io/ByteArrayOutputStream;
    :catchall_0
    move-exception v4

    :goto_1
    if-eqz v1, :cond_1

    .line 1165
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1163
    :cond_1
    :goto_2
    throw v4

    .line 1166
    :catch_0
    move-exception v0

    .line 1167
    .local v0, e:Ljava/io/IOException;
    const-string v5, "Mms/slideshow"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 1166
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #out:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #smilPart:Lcom/google/android/mms/pdu/PduPart;
    :catch_1
    move-exception v0

    .line 1167
    .restart local v0       #e:Ljava/io/IOException;
    const-string v4, "Mms/slideshow"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1163
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #smilPart:Lcom/google/android/mms/pdu/PduPart;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2           #out:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #out:Ljava/io/ByteArrayOutputStream;
    goto :goto_1
.end method

.method private declared-synchronized makeVItemPart(Lcom/google/android/mms/pdu/PduBody;)V
    .locals 8
    .parameter "pb"

    .prologue
    .line 1124
    monitor-enter p0

    const/4 v4, 0x0

    .local v4, j:I
    :goto_0
    :try_start_0
    iget-object v6, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_4

    .line 1125
    iget-object v6, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/AttachmentModel;

    .line 1126
    .local v1, attachment:Lcom/android/mms/model/AttachmentModel;
    new-instance v0, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v0}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 1127
    .local v0, attachPart:Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual {v1}, Lcom/android/mms/model/AttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v5

    .line 1128
    .local v5, src:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v6, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_2

    .line 1129
    if-eq v2, v4, :cond_0

    iget-object v6, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/mms/model/AttachmentModel;

    invoke-virtual {v6}, Lcom/android/mms/model/AttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1130
    const/16 v6, 0x2e

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 1131
    .local v3, index:I
    const/4 v6, -0x1

    if-eq v3, v6, :cond_1

    .line 1132
    new-instance v6, Ljava/lang/StringBuffer;

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1128
    .end local v3           #index:I
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1134
    .restart local v3       #index:I
    :cond_1
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 1137
    .end local v3           #index:I
    :cond_2
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 1138
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 1139
    iget-object v6, v1, Lcom/android/mms/model/AttachmentModel;->mContentType:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 1140
    invoke-virtual {v1}, Lcom/android/mms/model/AttachmentModel;->getData()[B

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 1141
    invoke-virtual {v1}, Lcom/android/mms/model/AttachmentModel;->getUri()Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 1142
    invoke-virtual {v1}, Lcom/android/mms/model/AttachmentModel;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/android/mms/pdu/PduPart;->setDataUri(Landroid/net/Uri;)V

    .line 1143
    :cond_3
    invoke-virtual {p1, v0}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1124
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 1145
    .end local v0           #attachPart:Lcom/google/android/mms/pdu/PduPart;
    .end local v1           #attachment:Lcom/android/mms/model/AttachmentModel;
    .end local v2           #i:I
    .end local v5           #src:Ljava/lang/String;
    :cond_4
    monitor-exit p0

    return-void

    .line 1124
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method private registerObserver(Lcom/android/mms/model/Model;)V
    .locals 3
    .parameter "object"

    .prologue
    .line 1635
    invoke-virtual {p1, p0}, Lcom/android/mms/model/Model;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 1636
    iget-object v2, p0, Lcom/android/mms/model/Model;->mModelChangedObservers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/IModelChangedObserver;

    .line 1637
    .local v1, observer:Lcom/android/mms/model/IModelChangedObserver;
    invoke-virtual {p1, v1}, Lcom/android/mms/model/Model;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_0

    .line 1639
    .end local v1           #observer:Lcom/android/mms/model/IModelChangedObserver;
    :cond_0
    return-void
.end method

.method public static setAddAttachmentSlideForCompose(Z)V
    .locals 0
    .parameter "addSlide"

    .prologue
    .line 916
    sput-boolean p0, Lcom/android/mms/model/SlideshowModel;->sRawAttachmentAddSlideforCompose:Z

    .line 917
    return-void
.end method

.method public static setCheckMessageSizeforSlide(Z)V
    .locals 0
    .parameter "checkSize"

    .prologue
    .line 891
    sput-boolean p0, Lcom/android/mms/model/SlideshowModel;->sCheckMessageSize:Z

    .line 892
    return-void
.end method

.method private static setEncodedFilename(ILcom/google/android/mms/pdu/PduPart;Ljava/lang/String;)I
    .locals 8
    .parameter "nSeqNumber"
    .parameter "part"
    .parameter "location"

    .prologue
    .line 1051
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1052
    .local v1, new_name:Ljava/lang/StringBuffer;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    if-ne v5, v6, :cond_1

    .line 1053
    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1077
    :cond_0
    :goto_0
    return p0

    .line 1055
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAttachmentFilenameEncodingType()Ljava/lang/String;

    move-result-object v4

    .line 1056
    .local v4, typeEncoding:Ljava/lang/String;
    const-string v5, "ASCII"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1058
    :try_start_0
    const-string v3, "FILE"

    .line 1059
    .local v3, szPrefix:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v6

    add-int/lit8 v0, p0, 0x1

    .end local p0
    .local v0, nSeqNumber:I
    :try_start_1
    invoke-static {v6, v7, p0}, Lcom/android/mms/model/SlideshowModel;->createName(JI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1060
    .local v2, szFileName:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/google/android/mms/pdu/PduPart;->setName([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move p0, v0

    .line 1063
    .end local v0           #nSeqNumber:I
    .restart local p0
    goto :goto_0

    .line 1064
    .end local v2           #szFileName:Ljava/lang/String;
    .end local v3           #szPrefix:Ljava/lang/String;
    :cond_2
    const-string v5, "BASE64"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1066
    :try_start_2
    const-string v5, "=?UTF-8?B?"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1067
    new-instance v5, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v6}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1068
    const-string v5, "?="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1069
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/google/android/mms/pdu/PduPart;->setName([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1070
    :catch_0
    move-exception v5

    goto :goto_0

    .line 1061
    :catch_1
    move-exception v5

    goto :goto_0

    .end local p0
    .restart local v0       #nSeqNumber:I
    .restart local v3       #szPrefix:Ljava/lang/String;
    :catch_2
    move-exception v5

    move p0, v0

    .end local v0           #nSeqNumber:I
    .restart local p0
    goto :goto_0
.end method


# virtual methods
.method public MmsResizeForRetry(Landroid/net/Uri;)V
    .locals 17
    .parameter "messageUri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;,
            Lcom/android/mms/ExceedMessageSizeException;
        }
    .end annotation

    .prologue
    .line 1821
    const-string v14, "Mms/slideshow"

    const-string v15, "MmsResizeForRetry() started"

    invoke-static {v14, v15}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1823
    const/4 v11, 0x0

    .line 1824
    .local v11, resizableCnt:I
    const/4 v3, 0x0

    .line 1826
    .local v3, fixedSizeTotal:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/mms/model/SlideModel;

    .line 1827
    .local v12, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v12}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/mms/model/MediaModel;

    .line 1829
    .local v6, media:Lcom/android/mms/model/MediaModel;
    const-string v14, "Mms/slideshow"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "media.getMediaSize() : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v6}, Lcom/android/mms/model/MediaModel;->getMediaSize()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1832
    invoke-virtual {v6}, Lcom/android/mms/model/MediaModel;->getMediaResizableForRetry()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 1833
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1835
    :cond_1
    invoke-virtual {v6}, Lcom/android/mms/model/MediaModel;->getMediaSize()I

    move-result v14

    add-int/2addr v3, v14

    goto :goto_0

    .line 1841
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #media:Lcom/android/mms/model/MediaModel;
    .end local v12           #slide:Lcom/android/mms/model/SlideModel;
    :cond_2
    const-string v14, "Mms/slideshow"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "fixedSizeTotal : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1842
    const-string v14, "Mms/slideshow"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "resizableCnt : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1843
    const-string v14, "Mms/slideshow"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mSlides : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1845
    if-lez v11, :cond_a

    .line 1846
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSizeForResizing()I

    move-result v14

    sub-int/2addr v14, v3

    add-int/lit16 v10, v14, -0x400

    .line 1849
    .local v10, remainingSize:I
    const-string v14, "Mms/slideshow"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "remainingSize : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1852
    if-gtz v10, :cond_3

    .line 1853
    new-instance v14, Lcom/android/mms/ExceedMessageSizeException;

    const-string v15, "No need to resize"

    invoke-direct {v14, v15}, Lcom/android/mms/ExceedMessageSizeException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 1855
    :cond_3
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    .line 1856
    .local v7, messageId:J
    div-int v2, v10, v11

    .line 1859
    .local v2, bytesPerMediaItem:I
    const-string v14, "Mms/slideshow"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "messageId : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1860
    const-string v14, "Mms/slideshow"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "bytesPerMediaItem : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1863
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/mms/model/SlideModel;

    .line 1864
    .restart local v12       #slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v12}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/mms/model/MediaModel;

    .line 1865
    .restart local v6       #media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v6}, Lcom/android/mms/model/MediaModel;->getMediaResizableForRetry()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 1866
    invoke-virtual {v6, v2, v7, v8}, Lcom/android/mms/model/MediaModel;->resizeMedia(IJ)V

    goto :goto_1

    .line 1871
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #media:Lcom/android/mms/model/MediaModel;
    .end local v12           #slide:Lcom/android/mms/model/SlideModel;
    :cond_6
    const/4 v13, 0x0

    .line 1872
    .local v13, totalSize:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/mms/model/SlideModel;

    .line 1873
    .restart local v12       #slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v12}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/mms/model/MediaModel;

    .line 1874
    .restart local v6       #media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v6}, Lcom/android/mms/model/MediaModel;->getMediaSize()I

    move-result v14

    add-int/2addr v13, v14

    goto :goto_2

    .line 1878
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #media:Lcom/android/mms/model/MediaModel;
    .end local v12           #slide:Lcom/android/mms/model/SlideModel;
    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v14

    if-le v13, v14, :cond_9

    .line 1879
    new-instance v14, Lcom/android/mms/ExceedMessageSizeException;

    const-string v15, "After compressing pictures, message too big"

    invoke-direct {v14, v15}, Lcom/android/mms/ExceedMessageSizeException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 1883
    :cond_9
    const-string v14, "Mms/slideshow"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "totalSize : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1885
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/mms/model/SlideshowModel;->setCurrentMessageSize(I)V

    .line 1887
    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v14}, Lcom/android/mms/model/SlideshowModel;->onModelChanged(Lcom/android/mms/model/Model;Z)V

    .line 1888
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v9

    .line 1892
    .local v9, pb:Lcom/google/android/mms/pdu/PduBody;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/model/SlideshowModel;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v9}, Lcom/google/android/mms/pdu/PduPersister;->updateParts(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduBody;)V

    .line 1894
    .end local v2           #bytesPerMediaItem:I
    .end local v7           #messageId:J
    .end local v9           #pb:Lcom/google/android/mms/pdu/PduBody;
    .end local v10           #remainingSize:I
    .end local v13           #totalSize:I
    :cond_a
    return-void
.end method

.method public declared-synchronized add(ILcom/android/mms/model/SlideModel;)V
    .locals 4
    .parameter "location"
    .parameter "object"

    .prologue
    .line 1380
    monitor-enter p0

    if-eqz p2, :cond_1

    .line 1381
    :try_start_0
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v0

    .line 1382
    .local v0, increaseSize:I
    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideshowModel;->checkMessageSize(I)V

    .line 1383
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le p1, v1, :cond_2

    .line 1384
    :cond_0
    const-string v1, "Mms/slideshow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "location size OutOfBoundsException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1392
    .end local v0           #increaseSize:I
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 1387
    .restart local v0       #increaseSize:I
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1388
    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideshowModel;->increaseMessageSize(I)V

    .line 1389
    invoke-direct {p0, p2}, Lcom/android/mms/model/SlideshowModel;->registerObserver(Lcom/android/mms/model/Model;)V

    .line 1390
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/mms/model/Model;->notifyModelChanged(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1380
    .end local v0           #increaseSize:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    check-cast p2, Lcom/android/mms/model/SlideModel;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/model/SlideshowModel;->add(ILcom/android/mms/model/SlideModel;)V

    return-void
.end method

.method public declared-synchronized add(Lcom/android/mms/model/SlideModel;)Z
    .locals 3
    .parameter "object"

    .prologue
    const/4 v1, 0x1

    .line 1297
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 1298
    :try_start_0
    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v0

    .line 1299
    .local v0, increaseSize:I
    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideshowModel;->checkMessageSize(I)V

    .line 1301
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1302
    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideshowModel;->increaseMessageSize(I)V

    .line 1303
    invoke-direct {p0, p1}, Lcom/android/mms/model/SlideshowModel;->registerObserver(Lcom/android/mms/model/Model;)V

    .line 1304
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/mms/model/Model;->notifyModelChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1308
    .end local v0           #increaseSize:I
    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1297
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    check-cast p1, Lcom/android/mms/model/SlideModel;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/model/SlideshowModel;->add(Lcom/android/mms/model/SlideModel;)Z

    move-result v0

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 2
    .parameter "location"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+",
            "Lcom/android/mms/model/SlideModel;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1395
    .local p2, collection:Ljava/util/Collection;,"Ljava/util/Collection<+Lcom/android/mms/model/SlideModel;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/android/mms/model/SlideModel;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1312
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<+Lcom/android/mms/model/SlideModel;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized addAttachment(ILcom/android/mms/model/AttachmentModel;)V
    .locals 2
    .parameter "location"
    .parameter "object"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 1623
    monitor-enter p0

    if-eqz p2, :cond_0

    .line 1624
    :try_start_0
    invoke-virtual {p2}, Lcom/android/mms/model/AttachmentModel;->getMediaSize()I

    move-result v0

    .line 1626
    .local v0, increaseSize:I
    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideshowModel;->checkMessageSize(I)V

    .line 1627
    iget-object v1, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1628
    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideshowModel;->increaseMessageSize(I)V

    .line 1629
    invoke-direct {p0, p2}, Lcom/android/mms/model/SlideshowModel;->registerObserver(Lcom/android/mms/model/Model;)V

    .line 1630
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/mms/model/Model;->notifyModelChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1632
    .end local v0           #increaseSize:I
    :cond_0
    monitor-exit p0

    return-void

    .line 1623
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public addAttachment(Lcom/android/mms/model/AttachmentModel;)V
    .locals 1
    .parameter "object"

    .prologue
    .line 1618
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/mms/model/SlideshowModel;->addAttachment(ILcom/android/mms/model/AttachmentModel;)V

    .line 1619
    return-void
.end method

.method public checkMessageSize(I)V
    .locals 9
    .parameter "increaseSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 1532
    invoke-static {}, Lcom/android/mms/model/SlideshowModel;->getCheckMessageSizeforSlide()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1550
    :goto_0
    return-void

    .line 1537
    :cond_0
    iget v6, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    if-gez v6, :cond_3

    .line 1538
    const-string v6, "Mms/slideshow"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mCurrentMessageSize ERROR : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1540
    const/4 v5, 0x0

    .line 1541
    .local v5, totalSize:I
    iget-object v6, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/model/SlideModel;

    .line 1542
    .local v4, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/model/MediaModel;

    .line 1543
    .local v3, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v3}, Lcom/android/mms/model/MediaModel;->getMediaSize()I

    move-result v6

    add-int/2addr v5, v6

    goto :goto_1

    .line 1546
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #media:Lcom/android/mms/model/MediaModel;
    .end local v4           #slide:Lcom/android/mms/model/SlideModel;
    :cond_2
    iput v5, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    .line 1548
    .end local v5           #totalSize:I
    :cond_3
    invoke-static {}, Lcom/android/mms/model/ContentRestrictionFactory;->getContentRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v0

    .line 1549
    .local v0, cr:Lcom/android/mms/model/ContentRestriction;
    iget v6, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    iget-object v7, p0, Lcom/android/mms/model/SlideshowModel;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-interface {v0, v6, p1, v7}, Lcom/android/mms/model/ContentRestriction;->checkMessageSize(IILandroid/content/ContentResolver;)V

    goto :goto_0
.end method

.method public declared-synchronized clear()V
    .locals 5

    .prologue
    .line 1317
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1318
    iget-object v4, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/model/SlideModel;

    .line 1319
    .local v3, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v3, p0}, Lcom/android/mms/model/Model;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 1320
    iget-object v4, p0, Lcom/android/mms/model/Model;->mModelChangedObservers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/IModelChangedObserver;

    .line 1321
    .local v2, observer:Lcom/android/mms/model/IModelChangedObserver;
    invoke-virtual {v3, v2}, Lcom/android/mms/model/Model;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1317
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #observer:Lcom/android/mms/model/IModelChangedObserver;
    .end local v3           #slide:Lcom/android/mms/model/SlideModel;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 1324
    :cond_1
    const/4 v4, 0x0

    :try_start_1
    iput v4, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    .line 1325
    iget-object v4, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1326
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/mms/model/Model;->notifyModelChanged(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1328
    :cond_2
    monitor-exit p0

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"

    .prologue
    .line 1331
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1335
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public decreaseMessageSize(I)V
    .locals 1
    .parameter "decreaseSize"

    .prologue
    .line 1275
    if-lez p1, :cond_0

    .line 1276
    iget v0, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    .line 1278
    :cond_0
    return-void
.end method

.method public finalResize(Landroid/net/Uri;)V
    .locals 14
    .parameter "messageUri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;,
            Lcom/android/mms/ExceedMessageSizeException;
        }
    .end annotation

    .prologue
    .line 1732
    const/4 v9, 0x0

    .line 1733
    .local v9, resizableCnt:I
    const/4 v1, 0x0

    .line 1734
    .local v1, fixedSizeTotal:I
    iget-object v12, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/mms/model/SlideModel;

    .line 1735
    .local v10, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v10}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/model/MediaModel;

    .line 1736
    .local v4, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v4}, Lcom/android/mms/model/MediaModel;->getMediaResizable()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1737
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1739
    :cond_1
    invoke-virtual {v4}, Lcom/android/mms/model/MediaModel;->getMediaSize()I

    move-result v12

    add-int/2addr v1, v12

    goto :goto_0

    .line 1743
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #media:Lcom/android/mms/model/MediaModel;
    .end local v10           #slide:Lcom/android/mms/model/SlideModel;
    :cond_2
    if-lez v9, :cond_a

    .line 1744
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v12

    sub-int/2addr v12, v1

    add-int/lit16 v8, v12, -0x400

    .line 1745
    .local v8, remainingSize:I
    if-gtz v8, :cond_3

    .line 1746
    new-instance v12, Lcom/android/mms/ExceedMessageSizeException;

    const-string v13, "No room for pictures"

    invoke-direct {v12, v13}, Lcom/android/mms/ExceedMessageSizeException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1748
    :cond_3
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    .line 1749
    .local v5, messageId:J
    div-int v0, v8, v9

    .line 1751
    .local v0, bytesPerMediaItem:I
    iget-object v12, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/mms/model/SlideModel;

    .line 1752
    .restart local v10       #slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v10}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/model/MediaModel;

    .line 1753
    .restart local v4       #media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v4}, Lcom/android/mms/model/MediaModel;->getMediaResizable()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1754
    invoke-virtual {v4, v0, v5, v6}, Lcom/android/mms/model/MediaModel;->resizeMedia(IJ)V

    goto :goto_1

    .line 1759
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #media:Lcom/android/mms/model/MediaModel;
    .end local v10           #slide:Lcom/android/mms/model/SlideModel;
    :cond_6
    const/4 v11, 0x0

    .line 1760
    .local v11, totalSize:I
    iget-object v12, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/mms/model/SlideModel;

    .line 1761
    .restart local v10       #slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v10}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/model/MediaModel;

    .line 1762
    .restart local v4       #media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v4}, Lcom/android/mms/model/MediaModel;->getMediaSize()I

    move-result v12

    add-int/2addr v11, v12

    goto :goto_2

    .line 1768
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #media:Lcom/android/mms/model/MediaModel;
    .end local v10           #slide:Lcom/android/mms/model/SlideModel;
    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v12

    if-le v11, v12, :cond_9

    .line 1769
    new-instance v12, Lcom/android/mms/ExceedMessageSizeException;

    const-string v13, "After compressing pictures, message too big"

    invoke-direct {v12, v13}, Lcom/android/mms/ExceedMessageSizeException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1771
    :cond_9
    invoke-virtual {p0, v11}, Lcom/android/mms/model/SlideshowModel;->setCurrentMessageSize(I)V

    .line 1773
    const/4 v12, 0x1

    invoke-virtual {p0, p0, v12}, Lcom/android/mms/model/SlideshowModel;->onModelChanged(Lcom/android/mms/model/Model;Z)V

    .line 1774
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v7

    .line 1778
    .local v7, pb:Lcom/google/android/mms/pdu/PduBody;
    iget-object v12, p0, Lcom/android/mms/model/SlideshowModel;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v12

    invoke-virtual {v12, p1, v7}, Lcom/google/android/mms/pdu/PduPersister;->updateParts(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduBody;)V

    .line 1780
    .end local v0           #bytesPerMediaItem:I
    .end local v5           #messageId:J
    .end local v7           #pb:Lcom/google/android/mms/pdu/PduBody;
    .end local v8           #remainingSize:I
    .end local v11           #totalSize:I
    :cond_a
    return-void
.end method

.method public get(I)Lcom/android/mms/model/SlideModel;
    .locals 2
    .parameter "location"

    .prologue
    .line 1399
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1401
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 1402
    :cond_0
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/SlideModel;

    .line 1407
    :goto_0
    return-object v0

    .line 1404
    :cond_1
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/SlideModel;

    goto :goto_0

    .line 1407
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getAttachmentList()Ljava/lang/String;
    .locals 7

    .prologue
    .line 1677
    monitor-enter p0

    :try_start_0
    const-string v4, ""

    .line 1678
    .local v4, str:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1679
    iget-object v5, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/AttachmentModel;

    .line 1680
    .local v0, attach:Lcom/android/mms/model/AttachmentModel;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1681
    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1683
    :cond_0
    invoke-virtual {v0}, Lcom/android/mms/model/AttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v2

    .line 1684
    .local v2, fileName:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/mms/model/AttachmentModel;->getContentType()Ljava/lang/String;

    move-result-object v1

    .line 1685
    .local v1, contentType:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1686
    const-string v5, "text/x-vCard"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, ".vcf"

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1687
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".vcf"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1691
    :cond_1
    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 1692
    goto :goto_0

    .line 1694
    .end local v0           #attach:Lcom/android/mms/model/AttachmentModel;
    .end local v1           #contentType:Ljava/lang/String;
    .end local v2           #fileName:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_2
    monitor-exit p0

    return-object v4

    .line 1677
    .end local v4           #str:Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public getCurrentMessageSize()I
    .locals 1

    .prologue
    .line 1257
    iget v0, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    return v0
.end method

.method public getLayout()Lcom/android/mms/model/LayoutModel;
    .locals 1

    .prologue
    .line 1289
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    return-object v0
.end method

.method public getLocationModel()Lcom/samsung/mms/model/LocationVcardModel;
    .locals 6

    .prologue
    .line 1784
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLocationMessage()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1786
    iget-object v4, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/model/SlideModel;

    .line 1787
    .local v3, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/MediaModel;

    .line 1788
    .local v2, media:Lcom/android/mms/model/MediaModel;
    instance-of v4, v2, Lcom/samsung/mms/model/LocationVcardModel;

    if-eqz v4, :cond_1

    .line 1790
    const-string v4, "NGM"

    const-string v5, "Location Model Found. SlideShow has location"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1791
    check-cast v2, Lcom/samsung/mms/model/LocationVcardModel;

    .line 1797
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    .end local v3           #slide:Lcom/android/mms/model/SlideModel;
    :goto_0
    return-object v2

    .line 1795
    :cond_2
    const-string v4, "NGM"

    const-string v5, "Location Model not Found. SlideShow does not have location"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1797
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getRawAttachmentsList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/AttachmentModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1711
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRawAttachmentsSize()I
    .locals 1

    .prologue
    .line 1707
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getRemainContentsSize()I
    .locals 2

    .prologue
    .line 1285
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v0

    iget v1, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getRemainMessageSize()I
    .locals 2

    .prologue
    .line 1281
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v0

    iget v1, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getSlides()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1717
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTotalMessageSize()I
    .locals 1

    .prologue
    .line 1264
    iget v0, p0, Lcom/android/mms/model/SlideshowModel;->mTotalMessageSize:I

    return v0
.end method

.method public hasGifImage()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1591
    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 1592
    .local v0, slide:Lcom/android/mms/model/SlideModel;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1593
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "image/gif"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1594
    const/4 v1, 0x1

    .line 1598
    :cond_0
    return v1
.end method

.method public hasLocation()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 1802
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLocationMessage()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1804
    iget-object v5, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/model/SlideModel;

    .line 1805
    .local v3, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/MediaModel;

    .line 1806
    .local v2, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->isLocation()Z

    move-result v5

    if-ne v5, v4, :cond_1

    .line 1811
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    .end local v3           #slide:Lcom/android/mms/model/SlideModel;
    :goto_0
    return v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public increaseMessageSize(I)V
    .locals 1
    .parameter "increaseSize"

    .prologue
    .line 1269
    if-lez p1, :cond_0

    .line 1270
    iget v0, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    .line 1272
    :cond_0
    return-void
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .parameter "object"

    .prologue
    .line 1412
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isDrmContentsPresent()Z
    .locals 1

    .prologue
    .line 1703
    sget-boolean v0, Lcom/android/mms/model/SlideshowModel;->sIsDrmContentsPresent:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1339
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isRawAttachmentPresent()Z
    .locals 1

    .prologue
    .line 1698
    sget-boolean v0, Lcom/android/mms/model/SlideshowModel;->sIsRawAttachmentsPresent:Z

    return v0
.end method

.method public isSimple()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1559
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v3

    if-eq v3, v2, :cond_1

    .line 1586
    :cond_0
    :goto_0
    return v1

    .line 1562
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 1564
    .local v0, slide:Lcom/android/mms/model/SlideModel;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v3

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v4

    xor-int/2addr v3, v4

    if-nez v3, :cond_2

    .line 1565
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->isCanAddVideo()Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 1568
    goto :goto_0

    .line 1571
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1573
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->isCanAddVideo()Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 1576
    goto :goto_0

    .line 1579
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLocationMessage()Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    .line 1581
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasLocation()Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    .line 1586
    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1343
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .parameter "object"

    .prologue
    .line 1416
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1420
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .parameter "location"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1424
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public makeCopy(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduBody;
    .locals 2
    .parameter "context"

    .prologue
    .line 1201
    invoke-static {p0}, Lcom/android/mms/model/SmilHelper;->getDocument(Lcom/android/mms/model/SlideshowModel;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/mms/model/SlideshowModel;->makePduBody(Landroid/content/Context;Lorg/w3c/dom/smil/SMILDocument;Z)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    return-object v0
.end method

.method public onModelChanged(Lcom/android/mms/model/Model;Z)V
    .locals 1
    .parameter "model"
    .parameter "dataChanged"

    .prologue
    const/4 v0, 0x0

    .line 1499
    if-eqz p2, :cond_0

    .line 1500
    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

    .line 1501
    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

    .line 1503
    :cond_0
    return-void
.end method

.method public openPartFiles(Landroid/content/ContentResolver;)Ljava/util/HashMap;
    .locals 12
    .parameter "cr"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1175
    const/4 v5, 0x0

    .line 1177
    .local v5, openedFiles:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    iget-object v9, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/mms/model/SlideModel;

    .line 1178
    .local v7, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v7}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/model/MediaModel;

    .line 1179
    .local v4, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v4}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v9

    if-nez v9, :cond_1

    .line 1182
    invoke-virtual {v4}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v8

    .line 1185
    .local v8, uri:Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p1, v8}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 1186
    .local v3, is:Ljava/io/InputStream;
    if-eqz v3, :cond_1

    .line 1187
    if-nez v5, :cond_2

    .line 1188
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .end local v5           #openedFiles:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    .local v6, openedFiles:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    move-object v5, v6

    .line 1190
    .end local v6           #openedFiles:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    .restart local v5       #openedFiles:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    :cond_2
    invoke-virtual {v5, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1192
    .end local v3           #is:Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 1193
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v9, "Mms/slideshow"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "openPartFiles couldn\'t open: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1197
    .end local v0           #e:Ljava/io/FileNotFoundException;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #media:Lcom/android/mms/model/MediaModel;
    .end local v7           #slide:Lcom/android/mms/model/SlideModel;
    .end local v8           #uri:Landroid/net/Uri;
    :cond_3
    return-object v5
.end method

.method public prepareForSend()V
    .locals 3

    .prologue
    .line 1608
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1609
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v0

    .line 1610
    .local v0, text:Lcom/android/mms/model/TextModel;
    if-eqz v0, :cond_0

    .line 1611
    invoke-virtual {v0}, Lcom/android/mms/model/TextModel;->cloneText()V

    .line 1614
    .end local v0           #text:Lcom/android/mms/model/TextModel;
    :cond_0
    return-void
.end method

.method protected registerModelChangedObserverInDescendants(Lcom/android/mms/model/IModelChangedObserver;)V
    .locals 3
    .parameter "observer"

    .prologue
    .line 1473
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    invoke-virtual {v2, p1}, Lcom/android/mms/model/Model;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 1475
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/SlideModel;

    .line 1476
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1, p1}, Lcom/android/mms/model/Model;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_0

    .line 1478
    .end local v1           #slide:Lcom/android/mms/model/SlideModel;
    :cond_0
    return-void
.end method

.method public declared-synchronized remove(I)Lcom/android/mms/model/SlideModel;
    .locals 2
    .parameter "location"

    .prologue
    .line 1429
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/SlideModel;

    .line 1430
    .local v0, slide:Lcom/android/mms/model/SlideModel;
    if-eqz v0, :cond_0

    .line 1431
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->decreaseMessageSize(I)V

    .line 1432
    invoke-virtual {v0}, Lcom/android/mms/model/Model;->unregisterAllModelChangedObservers()V

    .line 1433
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/mms/model/Model;->notifyModelChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1435
    :cond_0
    monitor-exit p0

    return-object v0

    .line 1429
    .end local v0           #slide:Lcom/android/mms/model/SlideModel;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized remove(Ljava/lang/Object;)Z
    .locals 4
    .parameter "object"

    .prologue
    const/4 v2, 0x1

    .line 1348
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1349
    move-object v0, p1

    check-cast v0, Lcom/android/mms/model/SlideModel;

    move-object v1, v0

    .line 1350
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/mms/model/SlideshowModel;->decreaseMessageSize(I)V

    .line 1351
    invoke-virtual {v1}, Lcom/android/mms/model/Model;->unregisterAllModelChangedObservers()V

    .line 1352
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/mms/model/Model;->notifyModelChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1355
    .end local v1           #slide:Lcom/android/mms/model/SlideModel;
    :goto_0
    monitor-exit p0

    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1348
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1359
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeAllRawAttachment()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1666
    :goto_0
    iget-object v1, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1668
    iget-object v1, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/AttachmentModel;

    .line 1669
    .local v0, attach:Lcom/android/mms/model/AttachmentModel;
    iget v1, v0, Lcom/android/mms/model/AttachmentModel;->mSize:I

    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->decreaseMessageSize(I)V

    .line 1670
    invoke-virtual {v0}, Lcom/android/mms/model/Model;->unregisterAllModelChangedObservers()V

    goto :goto_0

    .line 1672
    .end local v0           #attach:Lcom/android/mms/model/AttachmentModel;
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/mms/model/Model;->notifyModelChanged(Z)V

    .line 1673
    return v3
.end method

.method public declared-synchronized removeAttachment(Ljava/lang/Object;)Z
    .locals 4
    .parameter "object"

    .prologue
    const/4 v2, 0x1

    .line 1642
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1643
    move-object v0, p1

    check-cast v0, Lcom/android/mms/model/AttachmentModel;

    move-object v1, v0

    .line 1644
    .local v1, attach:Lcom/android/mms/model/AttachmentModel;
    iget v3, v1, Lcom/android/mms/model/AttachmentModel;->mSize:I

    invoke-virtual {p0, v3}, Lcom/android/mms/model/SlideshowModel;->decreaseMessageSize(I)V

    .line 1645
    invoke-virtual {v1}, Lcom/android/mms/model/Model;->unregisterAllModelChangedObservers()V

    .line 1646
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/mms/model/Model;->notifyModelChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1649
    .end local v1           #attach:Lcom/android/mms/model/AttachmentModel;
    :goto_0
    monitor-exit p0

    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1642
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized removeAttachment(Ljava/lang/Object;I)Z
    .locals 4
    .parameter "object"
    .parameter "position"

    .prologue
    const/4 v2, 0x1

    .line 1654
    monitor-enter p0

    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p2, v3, :cond_0

    .line 1655
    iget-object v3, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1656
    move-object v0, p1

    check-cast v0, Lcom/android/mms/model/AttachmentModel;

    move-object v1, v0

    .line 1657
    .local v1, attach:Lcom/android/mms/model/AttachmentModel;
    iget v3, v1, Lcom/android/mms/model/AttachmentModel;->mSize:I

    invoke-virtual {p0, v3}, Lcom/android/mms/model/SlideshowModel;->decreaseMessageSize(I)V

    .line 1658
    invoke-virtual {v1}, Lcom/android/mms/model/Model;->unregisterAllModelChangedObservers()V

    .line 1659
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/mms/model/Model;->notifyModelChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1662
    .end local v1           #attach:Lcom/android/mms/model/AttachmentModel;
    :goto_0
    monitor-exit p0

    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1654
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1363
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(ILcom/android/mms/model/SlideModel;)Lcom/android/mms/model/SlideModel;
    .locals 4
    .parameter "location"
    .parameter "object"

    .prologue
    .line 1439
    iget-object v3, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/SlideModel;

    .line 1440
    .local v2, slide:Lcom/android/mms/model/SlideModel;
    if-eqz p2, :cond_1

    .line 1441
    const/4 v1, 0x0

    .line 1442
    .local v1, removeSize:I
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v0

    .line 1443
    .local v0, addSize:I
    if-eqz v2, :cond_0

    .line 1444
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v1

    .line 1446
    :cond_0
    if-le v0, v1, :cond_4

    .line 1447
    sub-int v3, v0, v1

    invoke-virtual {p0, v3}, Lcom/android/mms/model/SlideshowModel;->checkMessageSize(I)V

    .line 1448
    sub-int v3, v0, v1

    invoke-virtual {p0, v3}, Lcom/android/mms/model/SlideshowModel;->increaseMessageSize(I)V

    .line 1454
    .end local v0           #addSize:I
    .end local v1           #removeSize:I
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v3, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #slide:Lcom/android/mms/model/SlideModel;
    check-cast v2, Lcom/android/mms/model/SlideModel;

    .line 1455
    .restart local v2       #slide:Lcom/android/mms/model/SlideModel;
    if-eqz v2, :cond_2

    .line 1456
    invoke-virtual {v2}, Lcom/android/mms/model/Model;->unregisterAllModelChangedObservers()V

    .line 1459
    :cond_2
    if-eqz p2, :cond_3

    .line 1460
    invoke-direct {p0, p2}, Lcom/android/mms/model/SlideshowModel;->registerObserver(Lcom/android/mms/model/Model;)V

    .line 1463
    :cond_3
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/mms/model/Model;->notifyModelChanged(Z)V

    .line 1464
    return-object v2

    .line 1450
    .restart local v0       #addSize:I
    .restart local v1       #removeSize:I
    :cond_4
    sub-int v3, v1, v0

    invoke-virtual {p0, v3}, Lcom/android/mms/model/SlideshowModel;->decreaseMessageSize(I)V

    goto :goto_0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    check-cast p2, Lcom/android/mms/model/SlideModel;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/model/SlideshowModel;->set(ILcom/android/mms/model/SlideModel;)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    return-object v0
.end method

.method public setCurrentMessageSize(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 1245
    iput p1, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    .line 1246
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1367
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .parameter "start"
    .parameter "end"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1468
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/AbstractList;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized sync(Lcom/google/android/mms/pdu/PduBody;)V
    .locals 11
    .parameter "pb"

    .prologue
    .line 1506
    monitor-enter p0

    :try_start_0
    iget-object v9, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/mms/model/SlideModel;

    .line 1507
    .local v8, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v8}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/mms/model/MediaModel;

    .line 1508
    .local v6, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v6}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentLocation(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v7

    .line 1509
    .local v7, part:Lcom/google/android/mms/pdu/PduPart;
    if-eqz v7, :cond_3

    .line 1510
    invoke-virtual {v7}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v1

    .line 1511
    .local v1, bytes:[B
    if-nez v1, :cond_2

    .line 1512
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Content-Type of the part may not be null."

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1506
    .end local v1           #bytes:[B
    .end local v6           #media:Lcom/android/mms/model/MediaModel;
    .end local v7           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v8           #slide:Lcom/android/mms/model/SlideModel;
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 1513
    .restart local v1       #bytes:[B
    .restart local v6       #media:Lcom/android/mms/model/MediaModel;
    .restart local v7       #part:Lcom/google/android/mms/pdu/PduPart;
    .restart local v8       #slide:Lcom/android/mms/model/SlideModel;
    :cond_2
    :try_start_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .line 1514
    .local v2, contentType:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 1515
    invoke-virtual {v7}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/android/mms/model/MediaModel;->setUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 1517
    .end local v1           #bytes:[B
    .end local v2           #contentType:Ljava/lang/String;
    :cond_3
    iget-object v9, v8, Lcom/android/mms/model/SlideModel;->mParent:Lcom/android/mms/model/SlideshowModel;

    iget-object v9, v9, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_1

    .line 1518
    iget-object v9, v8, Lcom/android/mms/model/SlideModel;->mParent:Lcom/android/mms/model/SlideshowModel;

    iget-object v9, v9, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/AttachmentModel;

    .line 1519
    .local v0, attachment:Lcom/android/mms/model/AttachmentModel;
    invoke-virtual {v0}, Lcom/android/mms/model/AttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentLocation(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v7

    .line 1520
    if-eqz v7, :cond_4

    .line 1521
    invoke-virtual {v7}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/android/mms/model/AttachmentModel;->setUri(Landroid/net/Uri;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1528
    .end local v0           #attachment:Lcom/android/mms/model/AttachmentModel;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #media:Lcom/android/mms/model/MediaModel;
    .end local v7           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v8           #slide:Lcom/android/mms/model/SlideModel;
    :cond_5
    monitor-exit p0

    return-void
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1371
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 1375
    .local p1, array:[Ljava/lang/Object;,"[TT;"
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toPduBody()Lcom/google/android/mms/pdu/PduBody;
    .locals 1

    .prologue
    .line 921
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 922
    :cond_0
    invoke-static {p0}, Lcom/android/mms/model/SmilHelper;->getDocument(Lcom/android/mms/model/SlideshowModel;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

    .line 923
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

    invoke-direct {p0, v0}, Lcom/android/mms/model/SlideshowModel;->makePduBody(Lorg/w3c/dom/smil/SMILDocument;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

    .line 925
    :cond_1
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

    return-object v0
.end method

.method public toSmilDocument()Lorg/w3c/dom/smil/SMILDocument;
    .locals 1

    .prologue
    .line 1205
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

    if-nez v0, :cond_0

    .line 1206
    invoke-static {p0}, Lcom/android/mms/model/SmilHelper;->getDocument(Lcom/android/mms/model/SlideshowModel;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

    .line 1208
    :cond_0
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

    return-object v0
.end method

.method protected unregisterAllModelChangedObserversInDescendants()V
    .locals 3

    .prologue
    .line 1491
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    invoke-virtual {v2}, Lcom/android/mms/model/Model;->unregisterAllModelChangedObservers()V

    .line 1493
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/SlideModel;

    .line 1494
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1}, Lcom/android/mms/model/Model;->unregisterAllModelChangedObservers()V

    goto :goto_0

    .line 1496
    .end local v1           #slide:Lcom/android/mms/model/SlideModel;
    :cond_0
    return-void
.end method

.method protected unregisterModelChangedObserverInDescendants(Lcom/android/mms/model/IModelChangedObserver;)V
    .locals 3
    .parameter "observer"

    .prologue
    .line 1482
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    invoke-virtual {v2, p1}, Lcom/android/mms/model/Model;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 1484
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/SlideModel;

    .line 1485
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1, p1}, Lcom/android/mms/model/Model;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_0

    .line 1487
    .end local v1           #slide:Lcom/android/mms/model/SlideModel;
    :cond_0
    return-void
.end method
