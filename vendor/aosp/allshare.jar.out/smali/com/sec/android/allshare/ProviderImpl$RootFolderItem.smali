.class Lcom/sec/android/allshare/ProviderImpl$RootFolderItem;
.super Lcom/sec/android/allshare/FolderItemImpl;
.source "ProviderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/ProviderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RootFolderItem"
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Bundle;)V
    .locals 0
    .parameter "bundle"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/sec/android/allshare/FolderItemImpl;-><init>(Landroid/os/Bundle;)V

    .line 89
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/sec/android/allshare/FolderItemImpl;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 103
    invoke-super {p0}, Lcom/sec/android/allshare/FolderItemImpl;->hashCode()I

    move-result v0

    return v0
.end method

.method public isRootFolder()Z
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x1

    return v0
.end method
