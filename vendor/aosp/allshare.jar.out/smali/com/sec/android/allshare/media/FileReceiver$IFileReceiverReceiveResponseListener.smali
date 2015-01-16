.class public interface abstract Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverReceiveResponseListener;
.super Ljava/lang/Object;
.source "FileReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/media/FileReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IFileReceiverReceiveResponseListener"
.end annotation


# virtual methods
.method public abstract onCancelResponseReceived(Lcom/sec/android/allshare/media/FileReceiver;Ljava/lang/String;Lcom/sec/android/allshare/ERROR;)V
.end method

.method public abstract onReceiveResponseReceived(Lcom/sec/android/allshare/media/FileReceiver;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Lcom/sec/android/allshare/ERROR;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/allshare/media/FileReceiver;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/sec/android/allshare/ERROR;",
            ")V"
        }
    .end annotation
.end method
