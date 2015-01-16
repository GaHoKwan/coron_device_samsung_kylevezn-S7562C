.class public interface abstract Lcom/sec/android/allshare/media/Provider$IProviderSearchResponseListener;
.super Ljava/lang/Object;
.source "Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/media/Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IProviderSearchResponseListener"
.end annotation


# virtual methods
.method public abstract onSearchResponseReceived(Ljava/util/ArrayList;IILcom/sec/android/allshare/media/SearchCriteria;ZLcom/sec/android/allshare/ERROR;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/allshare/Item;",
            ">;II",
            "Lcom/sec/android/allshare/media/SearchCriteria;",
            "Z",
            "Lcom/sec/android/allshare/ERROR;",
            ")V"
        }
    .end annotation
.end method
