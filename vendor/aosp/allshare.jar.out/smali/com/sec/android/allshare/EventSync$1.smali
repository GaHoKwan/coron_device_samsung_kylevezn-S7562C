.class final Lcom/sec/android/allshare/EventSync$1;
.super Ljava/lang/Object;
.source "IAppControlAPI.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/EventSync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/sec/android/allshare/EventSync;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/android/allshare/EventSync;
    .locals 2
    .parameter "source"

    .prologue
    .line 1545
    new-instance v0, Lcom/sec/android/allshare/EventSync;

    invoke-direct {v0}, Lcom/sec/android/allshare/EventSync;-><init>()V

    .line 1547
    .local v0, eventsync:Lcom/sec/android/allshare/EventSync;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/sec/android/allshare/EventSync;->mWhat:I

    .line 1548
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/sec/android/allshare/EventSync;->mArg1:I

    .line 1549
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/sec/android/allshare/EventSync;->mArg2:I

    .line 1550
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/allshare/EventSync;->mStr:Ljava/lang/String;

    .line 1553
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1543
    invoke-virtual {p0, p1}, Lcom/sec/android/allshare/EventSync$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/android/allshare/EventSync;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/sec/android/allshare/EventSync;
    .locals 1
    .parameter "size"

    .prologue
    .line 1557
    new-array v0, p1, [Lcom/sec/android/allshare/EventSync;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1543
    invoke-virtual {p0, p1}, Lcom/sec/android/allshare/EventSync$1;->newArray(I)[Lcom/sec/android/allshare/EventSync;

    move-result-object v0

    return-object v0
.end method
