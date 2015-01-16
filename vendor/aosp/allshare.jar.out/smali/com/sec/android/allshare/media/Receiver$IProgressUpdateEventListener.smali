.class public interface abstract Lcom/sec/android/allshare/media/Receiver$IProgressUpdateEventListener;
.super Ljava/lang/Object;
.source "Receiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/media/Receiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IProgressUpdateEventListener"
.end annotation


# virtual methods
.method public abstract onCompleted(Lcom/sec/android/allshare/Item;Lcom/sec/android/allshare/ERROR;)V
.end method

.method public abstract onProgressUpdated(JJLcom/sec/android/allshare/Item;Lcom/sec/android/allshare/ERROR;)V
.end method
