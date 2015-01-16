.class public interface abstract Lcom/sec/android/allshare/media/Provider$IProviderBrowseResponseListener;
.super Ljava/lang/Object;
.source "Provider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/media/Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IProviderBrowseResponseListener"
.end annotation


# virtual methods
.method public abstract onBrowseResponseReceived(Ljava/util/ArrayList;IILcom/sec/android/allshare/Item;ZLcom/sec/android/allshare/ERROR;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/allshare/Item;",
            ">;II",
            "Lcom/sec/android/allshare/Item;",
            "Z",
            "Lcom/sec/android/allshare/ERROR;",
            ")V"
        }
    .end annotation
.end method
