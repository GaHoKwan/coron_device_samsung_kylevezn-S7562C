.class final Lcom/sec/android/allshare/FolderItemImpl$1;
.super Ljava/lang/Object;
.source "FolderItemImpl.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/FolderItemImpl;
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
        "Lcom/sec/android/allshare/FolderItemImpl;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/android/allshare/FolderItemImpl;
    .locals 2
    .parameter "src"

    .prologue
    .line 142
    new-instance v0, Lcom/sec/android/allshare/FolderItemImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/sec/android/allshare/FolderItemImpl;-><init>(Landroid/os/Parcel;Lcom/sec/android/allshare/FolderItemImpl$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lcom/sec/android/allshare/FolderItemImpl$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/android/allshare/FolderItemImpl;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/sec/android/allshare/FolderItemImpl;
    .locals 1
    .parameter "size"

    .prologue
    .line 146
    new-array v0, p1, [Lcom/sec/android/allshare/FolderItemImpl;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lcom/sec/android/allshare/FolderItemImpl$1;->newArray(I)[Lcom/sec/android/allshare/FolderItemImpl;

    move-result-object v0

    return-object v0
.end method
