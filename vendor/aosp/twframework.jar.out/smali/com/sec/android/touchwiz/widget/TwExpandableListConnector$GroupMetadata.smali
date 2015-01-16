.class Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;
.super Ljava/lang/Object;
.source "TwExpandableListConnector.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwExpandableListConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GroupMetadata"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;",
            ">;"
        }
    .end annotation
.end field

.field static final REFRESH:I = -0x1


# instance fields
.field flPos:I

.field gId:J

.field gPos:I

.field lastChildFlPos:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1844
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata$1;

    invoke-direct {v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata$1;-><init>()V

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1813
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1814
    return-void
.end method

.method static obtain(IIIJ)Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;
    .locals 1
    .parameter "flPos"
    .parameter "lastChildFlPos"
    .parameter "gPos"
    .parameter "gId"

    .prologue
    .line 1817
    new-instance v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;

    invoke-direct {v0}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;-><init>()V

    .line 1818
    .local v0, gm:Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;
    iput p0, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->flPos:I

    .line 1819
    iput p1, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    .line 1820
    iput p2, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->gPos:I

    .line 1821
    iput-wide p3, v0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->gId:J

    .line 1822
    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;)I
    .locals 2
    .parameter "another"

    .prologue
    .line 1826
    if-nez p1, :cond_0

    .line 1827
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1830
    :cond_0
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->gPos:I

    iget v1, p1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->gPos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1789
    check-cast p1, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->compareTo(Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 1834
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 1838
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->flPos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1839
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1840
    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->gPos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1841
    iget-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwExpandableListConnector$GroupMetadata;->gId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1842
    return-void
.end method
