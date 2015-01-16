.class Lcom/sec/android/allshare/FileReceiverImpl$3;
.super Lcom/sec/android/allshare/AllShareEventHandler;
.source "FileReceiverImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/FileReceiverImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/allshare/FileReceiverImpl$3$NotifyFailed;,
        Lcom/sec/android/allshare/FileReceiverImpl$3$NotifyComplected;,
        Lcom/sec/android/allshare/FileReceiverImpl$3$NotifyProgress;
    }
.end annotation


# instance fields
.field private mEventNotiMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/allshare/FileReceiverImpl$INotifyProgressEvent;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sec/android/allshare/FileReceiverImpl;


# direct methods
.method constructor <init>(Lcom/sec/android/allshare/FileReceiverImpl;Landroid/os/Looper;)V
    .locals 3
    .parameter
    .parameter "x0"

    .prologue
    .line 488
    iput-object p1, p0, Lcom/sec/android/allshare/FileReceiverImpl$3;->this$0:Lcom/sec/android/allshare/FileReceiverImpl;

    invoke-direct {p0, p2}, Lcom/sec/android/allshare/AllShareEventHandler;-><init>(Landroid/os/Looper;)V

    .line 490
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/allshare/FileReceiverImpl$3;->mEventNotiMap:Ljava/util/HashMap;

    .line 492
    iget-object v0, p0, Lcom/sec/android/allshare/FileReceiverImpl$3;->mEventNotiMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.allshare.event.EVENT_FILE_RECEIVER_PROGRESS"

    new-instance v2, Lcom/sec/android/allshare/FileReceiverImpl$3$NotifyProgress;

    invoke-direct {v2, p0}, Lcom/sec/android/allshare/FileReceiverImpl$3$NotifyProgress;-><init>(Lcom/sec/android/allshare/FileReceiverImpl$3;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    iget-object v0, p0, Lcom/sec/android/allshare/FileReceiverImpl$3;->mEventNotiMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.allshare.event.EVENT_FILE_RECEIVER_COMPLECTED"

    new-instance v2, Lcom/sec/android/allshare/FileReceiverImpl$3$NotifyComplected;

    invoke-direct {v2, p0}, Lcom/sec/android/allshare/FileReceiverImpl$3$NotifyComplected;-><init>(Lcom/sec/android/allshare/FileReceiverImpl$3;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    iget-object v0, p0, Lcom/sec/android/allshare/FileReceiverImpl$3;->mEventNotiMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.allshare.event.EVENT_FILE_RECEIVER_FAILED"

    new-instance v2, Lcom/sec/android/allshare/FileReceiverImpl$3$NotifyFailed;

    invoke-direct {v2, p0}, Lcom/sec/android/allshare/FileReceiverImpl$3$NotifyFailed;-><init>(Lcom/sec/android/allshare/FileReceiverImpl$3;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    return-void
.end method


# virtual methods
.method handleEventMessage(Lcom/sec/android/allshare/iface/CVMessage;)V
    .locals 4
    .parameter "cvm"

    .prologue
    .line 502
    iget-object v3, p0, Lcom/sec/android/allshare/FileReceiverImpl$3;->this$0:Lcom/sec/android/allshare/FileReceiverImpl;

    #getter for: Lcom/sec/android/allshare/FileReceiverImpl;->mProgressEventListener:Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverProgressUpdateEventListener;
    invoke-static {v3}, Lcom/sec/android/allshare/FileReceiverImpl;->access$800(Lcom/sec/android/allshare/FileReceiverImpl;)Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverProgressUpdateEventListener;

    move-result-object v1

    .line 503
    .local v1, listener:Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverProgressUpdateEventListener;
    if-nez v1, :cond_1

    .line 511
    :cond_0
    :goto_0
    return-void

    .line 506
    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/allshare/iface/CVMessage;->getEventID()Ljava/lang/String;

    move-result-object v0

    .line 508
    .local v0, event:Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/allshare/FileReceiverImpl$3;->mEventNotiMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/allshare/FileReceiverImpl$INotifyProgressEvent;

    .line 509
    .local v2, notifier:Lcom/sec/android/allshare/FileReceiverImpl$INotifyProgressEvent;
    if-eqz v2, :cond_0

    .line 510
    invoke-virtual {p1}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/sec/android/allshare/FileReceiverImpl$INotifyProgressEvent;->onNotifyEvent(Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverProgressUpdateEventListener;Landroid/os/Bundle;)V

    goto :goto_0
.end method
