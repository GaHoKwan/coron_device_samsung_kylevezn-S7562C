.class public interface abstract Lcom/sec/android/allshare/extension/impl/IMediaGetter$IMediaGetterConnection;
.super Ljava/lang/Object;
.source "IMediaGetter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/extension/impl/IMediaGetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IMediaGetterConnection"
.end annotation


# virtual methods
.method public abstract onCancel()V
.end method

.method public abstract onError(Lcom/sec/android/allshare/ERROR;)V
.end method

.method public abstract onFinish()V
.end method

.method public abstract onProgress([Lcom/sec/android/allshare/Item;)V
.end method

.method public abstract onStart()V
.end method
