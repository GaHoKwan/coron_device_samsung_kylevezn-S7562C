.class Lcom/sec/android/allshare/EventTouch;
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
            "Lcom/sec/android/allshare/EventTouch;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mAccelLevel:I

.field public mDX:I

.field public mDY:I

.field public mDegree:I

.field public mDistance:I

.field public mFingerId:I

.field public mStr:Ljava/lang/String;

.field public mType:I

.field public mX:I

.field public mY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1666
    new-instance v0, Lcom/sec/android/allshare/EventTouch$1;

    invoke-direct {v0}, Lcom/sec/android/allshare/EventTouch$1;-><init>()V

    sput-object v0, Lcom/sec/android/allshare/EventTouch;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 1623
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 1647
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 1653
    iget v0, p0, Lcom/sec/android/allshare/EventTouch;->mX:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1654
    iget v0, p0, Lcom/sec/android/allshare/EventTouch;->mY:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1655
    iget v0, p0, Lcom/sec/android/allshare/EventTouch;->mDX:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1656
    iget v0, p0, Lcom/sec/android/allshare/EventTouch;->mDY:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1657
    iget v0, p0, Lcom/sec/android/allshare/EventTouch;->mAccelLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1658
    iget v0, p0, Lcom/sec/android/allshare/EventTouch;->mFingerId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1659
    iget v0, p0, Lcom/sec/android/allshare/EventTouch;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1660
    iget v0, p0, Lcom/sec/android/allshare/EventTouch;->mDistance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1661
    iget v0, p0, Lcom/sec/android/allshare/EventTouch;->mDegree:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1663
    iget-object v0, p0, Lcom/sec/android/allshare/EventTouch;->mStr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1664
    return-void
.end method
