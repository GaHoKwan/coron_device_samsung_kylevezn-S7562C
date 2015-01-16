.class final Lcom/sec/android/allshare/EventTouch$1;
.super Ljava/lang/Object;
.source "IAppControlAPI.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/EventTouch;
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
        "Lcom/sec/android/allshare/EventTouch;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1666
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/android/allshare/EventTouch;
    .locals 2
    .parameter "source"

    .prologue
    .line 1668
    new-instance v0, Lcom/sec/android/allshare/EventTouch;

    invoke-direct {v0}, Lcom/sec/android/allshare/EventTouch;-><init>()V

    .line 1670
    .local v0, eventsync:Lcom/sec/android/allshare/EventTouch;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/sec/android/allshare/EventTouch;->mX:I

    .line 1671
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/sec/android/allshare/EventTouch;->mY:I

    .line 1672
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/sec/android/allshare/EventTouch;->mDX:I

    .line 1673
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/sec/android/allshare/EventTouch;->mDY:I

    .line 1674
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/sec/android/allshare/EventTouch;->mAccelLevel:I

    .line 1675
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/sec/android/allshare/EventTouch;->mFingerId:I

    .line 1676
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/sec/android/allshare/EventTouch;->mType:I

    .line 1677
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/sec/android/allshare/EventTouch;->mDistance:I

    .line 1678
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/sec/android/allshare/EventTouch;->mDegree:I

    .line 1679
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/allshare/EventTouch;->mStr:Ljava/lang/String;

    .line 1680
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1666
    invoke-virtual {p0, p1}, Lcom/sec/android/allshare/EventTouch$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/android/allshare/EventTouch;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/sec/android/allshare/EventTouch;
    .locals 1
    .parameter "size"

    .prologue
    .line 1684
    new-array v0, p1, [Lcom/sec/android/allshare/EventTouch;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1666
    invoke-virtual {p0, p1}, Lcom/sec/android/allshare/EventTouch$1;->newArray(I)[Lcom/sec/android/allshare/EventTouch;

    move-result-object v0

    return-object v0
.end method
