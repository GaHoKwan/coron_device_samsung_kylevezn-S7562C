.class public interface abstract Lcom/sec/android/allshare/extension/FlatProvider$IFlatProviderConnection;
.super Ljava/lang/Object;
.source "FlatProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/extension/FlatProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IFlatProviderConnection"
.end annotation


# virtual methods
.method public abstract onCancel()V
.end method

.method public abstract onError(Lcom/sec/android/allshare/ERROR;)V
.end method

.method public abstract onFinish()V
.end method

.method public abstract onProgress(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/allshare/Item;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onStart()V
.end method
