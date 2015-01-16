.class Lcom/sec/android/allshare/EventMouse;
.super Ljava/lang/Object;
.source "IAppControlAPI.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/android/allshare/EventMouse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mButton:I

.field public mDX:I

.field public mDY:I

.field public mType:I

.field public mX:I

.field public mY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1604
    new-instance v0, Lcom/sec/android/allshare/EventMouse$1;

    invoke-direct {v0}, Lcom/sec/android/allshare/EventMouse$1;-><init>()V

    sput-object v0, Lcom/sec/android/allshare/EventMouse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 1576
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 1591
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 1596
    iget v0, p0, Lcom/sec/android/allshare/EventMouse;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1597
    iget v0, p0, Lcom/sec/android/allshare/EventMouse;->mX:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1598
    iget v0, p0, Lcom/sec/android/allshare/EventMouse;->mY:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1599
    iget v0, p0, Lcom/sec/android/allshare/EventMouse;->mDX:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1600
    iget v0, p0, Lcom/sec/android/allshare/EventMouse;->mDY:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1601
    iget v0, p0, Lcom/sec/android/allshare/EventMouse;->mButton:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1602
    return-void
.end method
