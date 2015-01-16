.class public abstract Lcom/sec/android/allshare/media/FileReceiver;
.super Lcom/sec/android/allshare/Device;
.source "FileReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverReceiveResponseListener;,
        Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverProgressUpdateEventListener;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/sec/android/allshare/Device;-><init>()V

    .line 42
    return-void
.end method


# virtual methods
.method public abstract cancel(Ljava/lang/String;)V
.end method

.method public abstract receive(Ljava/util/ArrayList;Ljava/lang/String;Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverReceiveResponseListener;Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverProgressUpdateEventListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverReceiveResponseListener;",
            "Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverProgressUpdateEventListener;",
            ")V"
        }
    .end annotation
.end method
