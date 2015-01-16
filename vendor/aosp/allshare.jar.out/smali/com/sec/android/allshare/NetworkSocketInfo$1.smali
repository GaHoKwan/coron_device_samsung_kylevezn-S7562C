.class final Lcom/sec/android/allshare/NetworkSocketInfo$1;
.super Ljava/lang/Object;
.source "IAppControlAPI.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/NetworkSocketInfo;
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
        "Lcom/sec/android/allshare/NetworkSocketInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1498
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/android/allshare/NetworkSocketInfo;
    .locals 2
    .parameter "source"

    .prologue
    .line 1500
    new-instance v0, Lcom/sec/android/allshare/NetworkSocketInfo;

    invoke-direct {v0}, Lcom/sec/android/allshare/NetworkSocketInfo;-><init>()V

    .line 1501
    .local v0, netinfo:Lcom/sec/android/allshare/NetworkSocketInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/sec/android/allshare/NetworkSocketInfo;->mProtocol:I

    .line 1502
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/allshare/NetworkSocketInfo;->mIpAddress:Ljava/lang/String;

    .line 1503
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/sec/android/allshare/NetworkSocketInfo;->mPort:I

    .line 1504
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/allshare/NetworkSocketInfo;->mDeviceClass:Ljava/lang/String;

    .line 1505
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/allshare/NetworkSocketInfo;->mMacAddr:Ljava/lang/String;

    .line 1506
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1498
    invoke-virtual {p0, p1}, Lcom/sec/android/allshare/NetworkSocketInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/android/allshare/NetworkSocketInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/sec/android/allshare/NetworkSocketInfo;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 1511
    new-array v0, p1, [Lcom/sec/android/allshare/NetworkSocketInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1498
    invoke-virtual {p0, p1}, Lcom/sec/android/allshare/NetworkSocketInfo$1;->newArray(I)[Lcom/sec/android/allshare/NetworkSocketInfo;

    move-result-object v0

    return-object v0
.end method
