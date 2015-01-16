.class public interface abstract Lcom/sec/android/allshare/extension/impl/IMediaGetter;
.super Ljava/lang/Object;
.source "IMediaGetter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/allshare/extension/impl/IMediaGetter$IMediaGetterConnection;
    }
.end annotation


# virtual methods
.method public abstract cancel(Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;)V
.end method

.method public abstract start(Lcom/sec/android/allshare/media/Provider;Lcom/sec/android/allshare/Item$MediaType;Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;)V
.end method

.method public abstract start(Lcom/sec/android/allshare/media/Provider;Ljava/util/ArrayList;Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/allshare/media/Provider;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/allshare/Item$MediaType;",
            ">;",
            "Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;",
            ")V"
        }
    .end annotation
.end method
