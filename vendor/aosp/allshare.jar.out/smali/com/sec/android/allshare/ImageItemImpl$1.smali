.class final Lcom/sec/android/allshare/ImageItemImpl$1;
.super Ljava/lang/Object;
.source "ImageItemImpl.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/ImageItemImpl;
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
        "Lcom/sec/android/allshare/ImageItemImpl;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/android/allshare/ImageItemImpl;
    .locals 2
    .parameter "src"

    .prologue
    .line 205
    new-instance v0, Lcom/sec/android/allshare/ImageItemImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/sec/android/allshare/ImageItemImpl;-><init>(Landroid/os/Parcel;Lcom/sec/android/allshare/ImageItemImpl$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 203
    invoke-virtual {p0, p1}, Lcom/sec/android/allshare/ImageItemImpl$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/android/allshare/ImageItemImpl;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/sec/android/allshare/ImageItemImpl;
    .locals 1
    .parameter "size"

    .prologue
    .line 209
    new-array v0, p1, [Lcom/sec/android/allshare/ImageItemImpl;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 203
    invoke-virtual {p0, p1}, Lcom/sec/android/allshare/ImageItemImpl$1;->newArray(I)[Lcom/sec/android/allshare/ImageItemImpl;

    move-result-object v0

    return-object v0
.end method
