.class final Lcom/sec/android/allshare/iface/EventControl$1;
.super Ljava/lang/Object;
.source "EventControl.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/iface/EventControl;
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
        "Lcom/sec/android/allshare/iface/EventControl;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/android/allshare/iface/EventControl;
    .locals 2
    .parameter "source"

    .prologue
    .line 56
    new-instance v0, Lcom/sec/android/allshare/iface/EventControl;

    invoke-direct {v0}, Lcom/sec/android/allshare/iface/EventControl;-><init>()V

    .line 58
    .local v0, eventsync:Lcom/sec/android/allshare/iface/EventControl;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/sec/android/allshare/iface/EventControl;->mWhat:I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/sec/android/allshare/iface/EventControl;->mArg1:I

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/sec/android/allshare/iface/EventControl;->mArg2:I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/allshare/iface/EventControl;->mStr:Ljava/lang/String;

    .line 64
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/sec/android/allshare/iface/EventControl$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/android/allshare/iface/EventControl;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/sec/android/allshare/iface/EventControl;
    .locals 1
    .parameter "size"

    .prologue
    .line 68
    new-array v0, p1, [Lcom/sec/android/allshare/iface/EventControl;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/sec/android/allshare/iface/EventControl$1;->newArray(I)[Lcom/sec/android/allshare/iface/EventControl;

    move-result-object v0

    return-object v0
.end method
