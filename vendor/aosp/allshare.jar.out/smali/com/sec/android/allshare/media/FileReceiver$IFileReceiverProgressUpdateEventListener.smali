.class public interface abstract Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverProgressUpdateEventListener;
.super Ljava/lang/Object;
.source "FileReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/media/FileReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IFileReceiverProgressUpdateEventListener"
.end annotation


# virtual methods
.method public abstract onCompleted(Lcom/sec/android/allshare/media/FileReceiver;Ljava/lang/String;Ljava/io/File;Lcom/sec/android/allshare/ERROR;)V
.end method

.method public abstract onFailed(Lcom/sec/android/allshare/media/FileReceiver;Ljava/lang/String;Ljava/io/File;Lcom/sec/android/allshare/ERROR;)V
.end method

.method public abstract onProgressUpdated(Lcom/sec/android/allshare/media/FileReceiver;Ljava/lang/String;JJLjava/io/File;Lcom/sec/android/allshare/ERROR;)V
.end method
