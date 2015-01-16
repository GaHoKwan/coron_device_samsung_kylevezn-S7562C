.class public abstract Lcom/sec/android/allshare/Item$Resource;
.super Ljava/lang/Object;
.source "Item.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Resource"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    return-void
.end method


# virtual methods
.method public abstract getBitrate()I
.end method

.method public abstract getDuration()J
.end method

.method public abstract getFileSize()J
.end method

.method public abstract getMimetype()Ljava/lang/String;
.end method

.method public abstract getResolution()Ljava/lang/String;
.end method

.method public abstract getSeekMode()Lcom/sec/android/allshare/Item$SeekMode;
.end method

.method public abstract getType()Lcom/sec/android/allshare/Item$MediaType;
.end method

.method public abstract getURI()Landroid/net/Uri;
.end method
