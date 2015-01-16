.class public abstract Lcom/sec/android/allshare/media/Provider;
.super Lcom/sec/android/allshare/Device;
.source "Provider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/allshare/media/Provider$IProviderSearchResponseListener;,
        Lcom/sec/android/allshare/media/Provider$IProviderBrowseResponseListener;,
        Lcom/sec/android/allshare/media/Provider$IProviderEventListener;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/sec/android/allshare/Device;-><init>()V

    .line 37
    return-void
.end method


# virtual methods
.method public abstract browse(Lcom/sec/android/allshare/Item;II)V
.end method

.method public abstract getReceiver()Lcom/sec/android/allshare/media/Receiver;
.end method

.method public abstract getRootFolder()Lcom/sec/android/allshare/Item;
.end method

.method public abstract isSearchable()Z
.end method

.method public abstract search(Lcom/sec/android/allshare/media/SearchCriteria;II)V
.end method

.method public abstract setBrowseItemsResponseListener(Lcom/sec/android/allshare/media/Provider$IProviderBrowseResponseListener;)V
.end method

.method public abstract setEventListener(Lcom/sec/android/allshare/media/Provider$IProviderEventListener;)V
.end method

.method public abstract setSearchResponseListener(Lcom/sec/android/allshare/media/Provider$IProviderSearchResponseListener;)V
.end method
