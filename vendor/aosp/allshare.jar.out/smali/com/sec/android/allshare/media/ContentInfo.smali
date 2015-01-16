.class public Lcom/sec/android/allshare/media/ContentInfo;
.super Ljava/lang/Object;
.source "ContentInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/allshare/media/ContentInfo$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/android/allshare/media/ContentInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mStartingPosition:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 134
    new-instance v0, Lcom/sec/android/allshare/media/ContentInfo$1;

    invoke-direct {v0}, Lcom/sec/android/allshare/media/ContentInfo$1;-><init>()V

    sput-object v0, Lcom/sec/android/allshare/media/ContentInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "src"

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    invoke-direct {p0, p1}, Lcom/sec/android/allshare/media/ContentInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 124
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/android/allshare/media/ContentInfo$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/sec/android/allshare/media/ContentInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/sec/android/allshare/media/ContentInfo$Builder;)V
    .locals 2
    .parameter "builder"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    #getter for: Lcom/sec/android/allshare/media/ContentInfo$Builder;->mStartingPosition:J
    invoke-static {p1}, Lcom/sec/android/allshare/media/ContentInfo$Builder;->access$000(Lcom/sec/android/allshare/media/ContentInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/allshare/media/ContentInfo;->mStartingPosition:J

    .line 43
    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/allshare/media/ContentInfo$Builder;Lcom/sec/android/allshare/media/ContentInfo$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/sec/android/allshare/media/ContentInfo;-><init>(Lcom/sec/android/allshare/media/ContentInfo$Builder;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "src"

    .prologue
    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/allshare/media/ContentInfo;->mStartingPosition:J

    .line 120
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public getStartingPosition()J
    .locals 2

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/sec/android/allshare/media/ContentInfo;->mStartingPosition:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 114
    iget-wide v0, p0, Lcom/sec/android/allshare/media/ContentInfo;->mStartingPosition:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 115
    return-void
.end method
