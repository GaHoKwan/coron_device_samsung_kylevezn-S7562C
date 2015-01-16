.class final Lcom/sec/android/allshare/EventMouse$1;
.super Ljava/lang/Object;
.source "IAppControlAPI.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/EventMouse;
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
        "Lcom/sec/android/allshare/EventMouse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/android/allshare/EventMouse;
    .locals 2
    .parameter "source"

    .prologue
    .line 1606
    new-instance v0, Lcom/sec/android/allshare/EventMouse;

    invoke-direct {v0}, Lcom/sec/android/allshare/EventMouse;-><init>()V

    .line 1608
    .local v0, eventsync:Lcom/sec/android/allshare/EventMouse;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/sec/android/allshare/EventMouse;->mType:I

    .line 1609
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/sec/android/allshare/EventMouse;->mX:I

    .line 1610
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/sec/android/allshare/EventMouse;->mY:I

    .line 1611
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/sec/android/allshare/EventMouse;->mDX:I

    .line 1612
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/sec/android/allshare/EventMouse;->mDY:I

    .line 1613
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/sec/android/allshare/EventMouse;->mButton:I

    .line 1614
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1604
    invoke-virtual {p0, p1}, Lcom/sec/android/allshare/EventMouse$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/android/allshare/EventMouse;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/sec/android/allshare/EventMouse;
    .locals 1
    .parameter "size"

    .prologue
    .line 1618
    new-array v0, p1, [Lcom/sec/android/allshare/EventMouse;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1604
    invoke-virtual {p0, p1}, Lcom/sec/android/allshare/EventMouse$1;->newArray(I)[Lcom/sec/android/allshare/EventMouse;

    move-result-object v0

    return-object v0
.end method
