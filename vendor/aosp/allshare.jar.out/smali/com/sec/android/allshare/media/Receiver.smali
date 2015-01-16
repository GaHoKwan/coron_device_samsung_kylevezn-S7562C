.class public abstract Lcom/sec/android/allshare/media/Receiver;
.super Ljava/lang/Object;
.source "Receiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/allshare/media/Receiver$IReceiverResponseListener;,
        Lcom/sec/android/allshare/media/Receiver$IProgressUpdateEventListener;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method


# virtual methods
.method public abstract cancel(Lcom/sec/android/allshare/Item;)V
.end method

.method public abstract receive(Lcom/sec/android/allshare/Item;)V
.end method

.method public abstract setProgressUpdateEventListener(Lcom/sec/android/allshare/media/Receiver$IProgressUpdateEventListener;)V
.end method

.method public abstract setReceiverResponseListener(Lcom/sec/android/allshare/media/Receiver$IReceiverResponseListener;)V
.end method
