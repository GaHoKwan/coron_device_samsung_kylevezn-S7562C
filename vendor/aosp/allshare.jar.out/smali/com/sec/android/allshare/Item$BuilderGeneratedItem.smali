.class Lcom/sec/android/allshare/Item$BuilderGeneratedItem;
.super Lcom/sec/android/allshare/Item;
.source "Item.java"

# interfaces
.implements Lcom/sec/android/allshare/iface/IBundleHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BuilderGeneratedItem"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/android/allshare/Item$BuilderGeneratedItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAlbumTitle:Ljava/lang/String;

.field private mArtist:Ljava/lang/String;

.field private mConType:Lcom/sec/android/allshare/ItemCreator$ConstructorType;

.field private mDate:Ljava/util/Date;

.field private mDeliveryMode:Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;

.field private mDuration:J

.field private mGenre:Ljava/lang/String;

.field private mItemFilepath:Ljava/lang/String;

.field private mItemMimetype:Ljava/lang/String;

.field private mItemTitle:Ljava/lang/String;

.field private mSubtitlePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 807
    new-instance v0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem$1;

    invoke-direct {v0}, Lcom/sec/android/allshare/Item$BuilderGeneratedItem$1;-><init>()V

    sput-object v0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "src"

    .prologue
    const/4 v1, 0x0

    .line 819
    invoke-direct {p0}, Lcom/sec/android/allshare/Item;-><init>()V

    .line 585
    sget-object v0, Lcom/sec/android/allshare/ItemCreator$ConstructorType;->UNKNOWN:Lcom/sec/android/allshare/ItemCreator$ConstructorType;

    iput-object v0, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mConType:Lcom/sec/android/allshare/ItemCreator$ConstructorType;

    .line 587
    sget-object v0, Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;->UNKNOWN:Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;

    iput-object v0, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mDeliveryMode:Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;

    .line 591
    iput-object v1, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mArtist:Ljava/lang/String;

    .line 593
    iput-object v1, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mAlbumTitle:Ljava/lang/String;

    .line 595
    iput-object v1, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mGenre:Ljava/lang/String;

    .line 597
    iput-object v1, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mDate:Ljava/util/Date;

    .line 599
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mDuration:J

    .line 820
    invoke-direct {p0, p1}, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->readFromParcel(Landroid/os/Parcel;)V

    .line 821
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/android/allshare/Item$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 578
    invoke-direct {p0, p1}, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/sec/android/allshare/ItemCreator$ConstructorType;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;)V
    .locals 2
    .parameter "conType"
    .parameter "uri"
    .parameter "title"
    .parameter "mimeType"
    .parameter "subtitlePath"
    .parameter "deliveryMode"

    .prologue
    const/4 v1, 0x0

    .line 612
    invoke-direct {p0}, Lcom/sec/android/allshare/Item;-><init>()V

    .line 585
    sget-object v0, Lcom/sec/android/allshare/ItemCreator$ConstructorType;->UNKNOWN:Lcom/sec/android/allshare/ItemCreator$ConstructorType;

    iput-object v0, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mConType:Lcom/sec/android/allshare/ItemCreator$ConstructorType;

    .line 587
    sget-object v0, Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;->UNKNOWN:Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;

    iput-object v0, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mDeliveryMode:Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;

    .line 591
    iput-object v1, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mArtist:Ljava/lang/String;

    .line 593
    iput-object v1, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mAlbumTitle:Ljava/lang/String;

    .line 595
    iput-object v1, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mGenre:Ljava/lang/String;

    .line 597
    iput-object v1, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mDate:Ljava/util/Date;

    .line 599
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mDuration:J

    .line 613
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mItemFilepath:Ljava/lang/String;

    .line 614
    iput-object p4, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mItemMimetype:Ljava/lang/String;

    .line 615
    iput-object p3, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mItemTitle:Ljava/lang/String;

    .line 616
    iput-object p1, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mConType:Lcom/sec/android/allshare/ItemCreator$ConstructorType;

    .line 617
    iput-object p6, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mDeliveryMode:Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;

    .line 618
    iput-object p5, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mSubtitlePath:Ljava/lang/String;

    .line 619
    return-void
.end method

.method private constructor <init>(Lcom/sec/android/allshare/ItemCreator$ConstructorType;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;J)V
    .locals 2
    .parameter "conType"
    .parameter "uri"
    .parameter "title"
    .parameter "mimeType"
    .parameter "subtitlePath"
    .parameter "deliveryMode"
    .parameter "artist"
    .parameter "albumTitle"
    .parameter "genre"
    .parameter "date"
    .parameter "duration"

    .prologue
    const/4 v1, 0x0

    .line 623
    invoke-direct {p0}, Lcom/sec/android/allshare/Item;-><init>()V

    .line 585
    sget-object v0, Lcom/sec/android/allshare/ItemCreator$ConstructorType;->UNKNOWN:Lcom/sec/android/allshare/ItemCreator$ConstructorType;

    iput-object v0, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mConType:Lcom/sec/android/allshare/ItemCreator$ConstructorType;

    .line 587
    sget-object v0, Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;->UNKNOWN:Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;

    iput-object v0, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mDeliveryMode:Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;

    .line 591
    iput-object v1, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mArtist:Ljava/lang/String;

    .line 593
    iput-object v1, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mAlbumTitle:Ljava/lang/String;

    .line 595
    iput-object v1, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mGenre:Ljava/lang/String;

    .line 597
    iput-object v1, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mDate:Ljava/util/Date;

    .line 599
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mDuration:J

    .line 624
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mItemFilepath:Ljava/lang/String;

    .line 625
    iput-object p4, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mItemMimetype:Ljava/lang/String;

    .line 626
    iput-object p3, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mItemTitle:Ljava/lang/String;

    .line 627
    iput-object p1, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mConType:Lcom/sec/android/allshare/ItemCreator$ConstructorType;

    .line 628
    iput-object p6, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mDeliveryMode:Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;

    .line 629
    iput-object p5, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mSubtitlePath:Ljava/lang/String;

    .line 630
    iput-object p7, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mArtist:Ljava/lang/String;

    .line 631
    iput-object p8, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mAlbumTitle:Ljava/lang/String;

    .line 632
    iput-object p9, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mGenre:Ljava/lang/String;

    .line 633
    iput-object p10, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mDate:Ljava/util/Date;

    .line 634
    iput-wide p11, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mDuration:J

    .line 635
    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/allshare/ItemCreator$ConstructorType;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;JLcom/sec/android/allshare/Item$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"
    .parameter "x9"
    .parameter "x10"
    .parameter "x11"

    .prologue
    .line 578
    invoke-direct/range {p0 .. p12}, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;-><init>(Lcom/sec/android/allshare/ItemCreator$ConstructorType;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;J)V

    return-void
.end method

.method private constructor <init>(Lcom/sec/android/allshare/ItemCreator$ConstructorType;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/allshare/Item$WebContentBuilder$PlayMode;)V
    .locals 2
    .parameter "conType"
    .parameter "uri"
    .parameter "title"
    .parameter "mimeType"
    .parameter "subtitlePath"
    .parameter "playMode"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 639
    invoke-direct {p0}, Lcom/sec/android/allshare/Item;-><init>()V

    .line 585
    sget-object v0, Lcom/sec/android/allshare/ItemCreator$ConstructorType;->UNKNOWN:Lcom/sec/android/allshare/ItemCreator$ConstructorType;

    iput-object v0, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mConType:Lcom/sec/android/allshare/ItemCreator$ConstructorType;

    .line 587
    sget-object v0, Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;->UNKNOWN:Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;

    iput-object v0, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mDeliveryMode:Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;

    .line 591
    iput-object v1, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mArtist:Ljava/lang/String;

    .line 593
    iput-object v1, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mAlbumTitle:Ljava/lang/String;

    .line 595
    iput-object v1, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mGenre:Ljava/lang/String;

    .line 597
    iput-object v1, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mDate:Ljava/util/Date;

    .line 599
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mDuration:J

    .line 640
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mItemFilepath:Ljava/lang/String;

    .line 641
    iput-object p4, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mItemMimetype:Ljava/lang/String;

    .line 642
    iput-object p3, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mItemTitle:Ljava/lang/String;

    .line 643
    iput-object p1, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mConType:Lcom/sec/android/allshare/ItemCreator$ConstructorType;

    .line 644
    iput-object p5, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mSubtitlePath:Ljava/lang/String;

    .line 646
    sget-object v0, Lcom/sec/android/allshare/Item$WebContentBuilder$PlayMode;->REDIRECT:Lcom/sec/android/allshare/Item$WebContentBuilder$PlayMode;

    if-ne p6, v0, :cond_0

    .line 647
    sget-object v0, Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;->REDIRECT:Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;

    iput-object v0, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mDeliveryMode:Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;

    .line 652
    :goto_0
    return-void

    .line 648
    :cond_0
    sget-object v0, Lcom/sec/android/allshare/Item$WebContentBuilder$PlayMode;->RELAY:Lcom/sec/android/allshare/Item$WebContentBuilder$PlayMode;

    if-ne p6, v0, :cond_1

    .line 649
    sget-object v0, Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;->RELAY:Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;

    iput-object v0, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mDeliveryMode:Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;

    goto :goto_0

    .line 651
    :cond_1
    sget-object v0, Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;->UNKNOWN:Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;

    iput-object v0, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mDeliveryMode:Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;

    goto :goto_0
.end method

.method private constructor <init>(Lcom/sec/android/allshare/ItemCreator$ConstructorType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "conType"
    .parameter "filepath"
    .parameter "title"
    .parameter "subtitlePath"
    .parameter "mimeType"

    .prologue
    const/4 v1, 0x0

    .line 602
    invoke-direct {p0}, Lcom/sec/android/allshare/Item;-><init>()V

    .line 585
    sget-object v0, Lcom/sec/android/allshare/ItemCreator$ConstructorType;->UNKNOWN:Lcom/sec/android/allshare/ItemCreator$ConstructorType;

    iput-object v0, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mConType:Lcom/sec/android/allshare/ItemCreator$ConstructorType;

    .line 587
    sget-object v0, Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;->UNKNOWN:Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;

    iput-object v0, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mDeliveryMode:Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;

    .line 591
    iput-object v1, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mArtist:Ljava/lang/String;

    .line 593
    iput-object v1, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mAlbumTitle:Ljava/lang/String;

    .line 595
    iput-object v1, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mGenre:Ljava/lang/String;

    .line 597
    iput-object v1, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mDate:Ljava/util/Date;

    .line 599
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mDuration:J

    .line 603
    iput-object p2, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mItemFilepath:Ljava/lang/String;

    .line 604
    iput-object p5, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mItemMimetype:Ljava/lang/String;

    .line 605
    iput-object p3, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mItemTitle:Ljava/lang/String;

    .line 606
    iput-object p1, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mConType:Lcom/sec/android/allshare/ItemCreator$ConstructorType;

    .line 607
    sget-object v0, Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;->UNKNOWN:Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;

    iput-object v0, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mDeliveryMode:Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;

    .line 608
    iput-object p4, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mSubtitlePath:Ljava/lang/String;

    .line 609
    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/allshare/ItemCreator$ConstructorType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/allshare/Item$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 578
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;-><init>(Lcom/sec/android/allshare/ItemCreator$ConstructorType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .parameter "src"

    .prologue
    .line 787
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mItemFilepath:Ljava/lang/String;

    .line 788
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mItemMimetype:Ljava/lang/String;

    .line 789
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mItemTitle:Ljava/lang/String;

    .line 790
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 791
    .local v0, conType:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 792
    .local v1, deliveryMode:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mSubtitlePath:Ljava/lang/String;

    .line 795
    :try_start_0
    invoke-static {v0}, Lcom/sec/android/allshare/ItemCreator$ConstructorType;->valueOf(Ljava/lang/String;)Lcom/sec/android/allshare/ItemCreator$ConstructorType;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mConType:Lcom/sec/android/allshare/ItemCreator$ConstructorType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 801
    :goto_0
    :try_start_1
    invoke-static {v1}, Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;->valueOf(Ljava/lang/String;)Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mDeliveryMode:Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 805
    :goto_1
    return-void

    .line 796
    :catch_0
    move-exception v2

    .line 797
    .local v2, e:Ljava/lang/Exception;
    sget-object v3, Lcom/sec/android/allshare/ItemCreator$ConstructorType;->UNKNOWN:Lcom/sec/android/allshare/ItemCreator$ConstructorType;

    iput-object v3, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mConType:Lcom/sec/android/allshare/ItemCreator$ConstructorType;

    goto :goto_0

    .line 802
    .end local v2           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 803
    .restart local v2       #e:Ljava/lang/Exception;
    sget-object v3, Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;->UNKNOWN:Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;

    iput-object v3, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mDeliveryMode:Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;

    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 772
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    const/4 v1, 0x0

    .line 825
    if-ne p0, p1, :cond_1

    .line 826
    const/4 v1, 0x1

    .line 837
    :cond_0
    :goto_0
    return v1

    .line 827
    :cond_1
    if-eqz p1, :cond_0

    instance-of v2, p1, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 830
    check-cast v0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;

    .line 832
    .local v0, item:Lcom/sec/android/allshare/Item$BuilderGeneratedItem;
    invoke-virtual {p0}, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->getURI()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_2

    .line 833
    invoke-virtual {v0}, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->getURI()Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_0

    .line 837
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->getURI()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->getURI()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getAlbumTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 709
    iget-object v0, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mAlbumTitle:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mAlbumTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    .prologue
    .line 714
    iget-object v0, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mArtist:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mArtist:Ljava/lang/String;

    goto :goto_0
.end method

.method public getBitrate()I
    .locals 1

    .prologue
    .line 886
    const/4 v0, -0x1

    return v0
.end method

.method public getBundle()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 689
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 690
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "BUNDLE_STRING_ITEM_TYPE"

    invoke-virtual {p0}, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->getType()Lcom/sec/android/allshare/Item$MediaType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    const-string v1, "BUNDLE_STRING_ITEM_TITLE"

    iget-object v2, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mItemTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    const-string v1, "BUNDLE_STRING_FILEPATH"

    iget-object v2, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mItemFilepath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    const-string v1, "BUNDLE_PARCELABLE_ITEM_URI"

    invoke-virtual {p0}, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->getURI()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 694
    const-string v1, "BUNDLE_STRING_ITEM_MIMETYPE"

    iget-object v2, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mItemMimetype:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    const-string v1, "BUNDLE_STRING_ITEM_CONSTRUCTOR_KEY"

    iget-object v2, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mConType:Lcom/sec/android/allshare/ItemCreator$ConstructorType;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    const-string v1, "BUNDLE_STRING_WEB_PLAY_MODE"

    iget-object v2, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mDeliveryMode:Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    const-string v1, "BUNDLE_STRING_ITEM_SUBTITLE_PATH"

    iget-object v2, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mSubtitlePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    const-string v1, "BUNDLE_STRING_ITEM_ARTIST"

    iget-object v2, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mArtist:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    const-string v1, "BUNDLE_STRING_ITEM_ALBUM_TITLE"

    iget-object v2, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mAlbumTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    const-string v1, "BUNDLE_STRING_ITEM_GENRE"

    iget-object v2, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mGenre:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    const-string v3, "BUNDLE_DATE_ITEM_DATE"

    iget-object v1, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mDate:Ljava/util/Date;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    :goto_0
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 702
    const-string v1, "BUNDLE_LONG_ITEM_DURATION"

    iget-wide v2, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mDuration:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 704
    return-object v0

    .line 701
    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public getContentBuildType()Lcom/sec/android/allshare/Item$ContentBuildType;
    .locals 2

    .prologue
    .line 842
    sget-object v0, Lcom/sec/android/allshare/Item$1;->$SwitchMap$com$sec$android$allshare$ItemCreator$ConstructorType:[I

    iget-object v1, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mConType:Lcom/sec/android/allshare/ItemCreator$ConstructorType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 854
    sget-object v0, Lcom/sec/android/allshare/Item$ContentBuildType;->UNKNOWN:Lcom/sec/android/allshare/Item$ContentBuildType;

    :goto_0
    return-object v0

    .line 844
    :pswitch_0
    sget-object v0, Lcom/sec/android/allshare/Item$ContentBuildType;->LOCAL:Lcom/sec/android/allshare/Item$ContentBuildType;

    goto :goto_0

    .line 846
    :pswitch_1
    sget-object v0, Lcom/sec/android/allshare/Item$ContentBuildType;->PROVIDER:Lcom/sec/android/allshare/Item$ContentBuildType;

    goto :goto_0

    .line 848
    :pswitch_2
    sget-object v0, Lcom/sec/android/allshare/Item$ContentBuildType;->WEB:Lcom/sec/android/allshare/Item$ContentBuildType;

    goto :goto_0

    .line 850
    :pswitch_3
    sget-object v0, Lcom/sec/android/allshare/Item$ContentBuildType;->UNKNOWN:Lcom/sec/android/allshare/Item$ContentBuildType;

    goto :goto_0

    .line 842
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mDate:Ljava/util/Date;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 724
    iget-wide v0, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mDuration:J

    return-wide v0
.end method

.method public getExtension()Ljava/lang/String;
    .locals 1

    .prologue
    .line 767
    const-string v0, ""

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .prologue
    .line 757
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getGenre()Ljava/lang/String;
    .locals 1

    .prologue
    .line 719
    iget-object v0, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mGenre:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mGenre:Ljava/lang/String;

    goto :goto_0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 744
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMimetype()Ljava/lang/String;
    .locals 1

    .prologue
    .line 762
    iget-object v0, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mItemMimetype:Ljava/lang/String;

    return-object v0
.end method

.method public getResolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 739
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
    .line 892
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getSeekMode()Lcom/sec/android/allshare/Item$SeekMode;
    .locals 1

    .prologue
    .line 881
    sget-object v0, Lcom/sec/android/allshare/Item$SeekMode;->NONE:Lcom/sec/android/allshare/Item$SeekMode;

    return-object v0
.end method

.method public getSubtitle()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 749
    iget-object v0, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mSubtitlePath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 750
    const/4 v0, 0x0

    .line 752
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mSubtitlePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
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
    .line 876
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getThumbnail()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 734
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mItemTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/sec/android/allshare/Item$MediaType;
    .locals 1

    .prologue
    .line 666
    iget-object v0, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mItemMimetype:Ljava/lang/String;

    #calls: Lcom/sec/android/allshare/Item;->convertItemTypeFromMimeType(Ljava/lang/String;)Lcom/sec/android/allshare/Item$MediaType;
    invoke-static {v0}, Lcom/sec/android/allshare/Item;->access$100(Ljava/lang/String;)Lcom/sec/android/allshare/Item$MediaType;

    move-result-object v0

    return-object v0
.end method

.method public getURI()Landroid/net/Uri;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 671
    iget-object v4, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mItemFilepath:Ljava/lang/String;

    if-nez v4, :cond_1

    move-object v2, v3

    .line 683
    :cond_0
    :goto_0
    return-object v2

    .line 675
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mItemFilepath:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 676
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 678
    .local v1, scheme:Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 679
    :cond_2
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mItemFilepath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 682
    .end local v1           #scheme:Ljava/lang/String;
    .end local v2           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    move-object v2, v3

    .line 683
    goto :goto_0
.end method

.method public getWebContentDeliveryMode()Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;
    .locals 1

    .prologue
    .line 859
    iget-object v0, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mDeliveryMode:Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;

    return-object v0
.end method

.method public getWebContentPlayMode()Lcom/sec/android/allshare/Item$WebContentBuilder$PlayMode;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 865
    iget-object v0, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mDeliveryMode:Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;

    sget-object v1, Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;->REDIRECT:Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;

    if-ne v0, v1, :cond_0

    .line 866
    sget-object v0, Lcom/sec/android/allshare/Item$WebContentBuilder$PlayMode;->REDIRECT:Lcom/sec/android/allshare/Item$WebContentBuilder$PlayMode;

    .line 870
    :goto_0
    return-object v0

    .line 867
    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mDeliveryMode:Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;

    sget-object v1, Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;->RELAY:Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;

    if-ne v0, v1, :cond_1

    .line 868
    sget-object v0, Lcom/sec/android/allshare/Item$WebContentBuilder$PlayMode;->RELAY:Lcom/sec/android/allshare/Item$WebContentBuilder$PlayMode;

    goto :goto_0

    .line 870
    :cond_1
    sget-object v0, Lcom/sec/android/allshare/Item$WebContentBuilder$PlayMode;->UNKNOWN:Lcom/sec/android/allshare/Item$WebContentBuilder$PlayMode;

    goto :goto_0
.end method

.method public isRootFolder()Z
    .locals 1

    .prologue
    .line 729
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 777
    iget-object v0, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mItemFilepath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 778
    iget-object v0, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mItemMimetype:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 779
    iget-object v0, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mItemTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 780
    iget-object v0, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mConType:Lcom/sec/android/allshare/ItemCreator$ConstructorType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 781
    iget-object v0, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mDeliveryMode:Lcom/sec/android/allshare/Item$WebContentBuilder$DeliveryMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 782
    iget-object v0, p0, Lcom/sec/android/allshare/Item$BuilderGeneratedItem;->mSubtitlePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 783
    return-void
.end method
