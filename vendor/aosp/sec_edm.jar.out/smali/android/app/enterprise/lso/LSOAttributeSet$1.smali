.class final Landroid/app/enterprise/lso/LSOAttributeSet$1;
.super Ljava/lang/Object;
.source "LSOAttributeSet.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/lso/LSOAttributeSet;
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
        "Landroid/app/enterprise/lso/LSOAttributeSet;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 493
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/app/enterprise/lso/LSOAttributeSet;
    .locals 1
    .parameter "in"

    .prologue
    .line 495
    invoke-static {p1}, Landroid/app/enterprise/lso/LSOAttributeSet;->createFromParcel(Landroid/os/Parcel;)Landroid/app/enterprise/lso/LSOAttributeSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 493
    invoke-virtual {p0, p1}, Landroid/app/enterprise/lso/LSOAttributeSet$1;->createFromParcel(Landroid/os/Parcel;)Landroid/app/enterprise/lso/LSOAttributeSet;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/app/enterprise/lso/LSOAttributeSet;
    .locals 1
    .parameter "size"

    .prologue
    .line 499
    new-array v0, p1, [Landroid/app/enterprise/lso/LSOAttributeSet;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 493
    invoke-virtual {p0, p1}, Landroid/app/enterprise/lso/LSOAttributeSet$1;->newArray(I)[Landroid/app/enterprise/lso/LSOAttributeSet;

    move-result-object v0

    return-object v0
.end method
