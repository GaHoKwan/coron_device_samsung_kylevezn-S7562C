.class Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;
.super Ljava/lang/Object;
.source "FileReceiverImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/FileReceiverImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SessionInfo"
.end annotation


# instance fields
.field private mCount:I

.field private mEventListener:Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverProgressUpdateEventListener;

.field private mResponseListener:Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverReceiveResponseListener;

.field private mState:I

.field final synthetic this$0:Lcom/sec/android/allshare/FileReceiverImpl;


# direct methods
.method public constructor <init>(Lcom/sec/android/allshare/FileReceiverImpl;ILcom/sec/android/allshare/media/FileReceiver$IFileReceiverReceiveResponseListener;Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverProgressUpdateEventListener;)V
    .locals 2
    .parameter
    .parameter "count"
    .parameter "responseListener"
    .parameter "eventListener"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 63
    iput-object p1, p0, Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;->this$0:Lcom/sec/android/allshare/FileReceiverImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput v0, p0, Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;->mCount:I

    .line 56
    iput-object v1, p0, Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;->mResponseListener:Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverReceiveResponseListener;

    .line 58
    iput-object v1, p0, Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;->mEventListener:Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverProgressUpdateEventListener;

    .line 60
    iput v0, p0, Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;->mState:I

    .line 64
    iput p2, p0, Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;->mCount:I

    .line 65
    iput-object p3, p0, Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;->mResponseListener:Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverReceiveResponseListener;

    .line 66
    iput-object p4, p0, Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;->mEventListener:Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverProgressUpdateEventListener;

    .line 67
    return-void
.end method


# virtual methods
.method public completed()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 82
    iget v1, p0, Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;->mCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;->mCount:I

    .line 83
    iget v1, p0, Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;->mCount:I

    if-gtz v1, :cond_0

    .line 84
    iput v0, p0, Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;->mCount:I

    .line 85
    const/4 v0, 0x1

    .line 88
    :cond_0
    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;->mCount:I

    return v0
.end method

.method public getEventListener()Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverProgressUpdateEventListener;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;->mEventListener:Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverProgressUpdateEventListener;

    return-object v0
.end method

.method public getResponseListener()Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverReceiveResponseListener;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;->mResponseListener:Lcom/sec/android/allshare/media/FileReceiver$IFileReceiverReceiveResponseListener;

    return-object v0
.end method

.method public removed()Z
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 92
    iget v0, p0, Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;->mState:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;->mState:I

    .line 93
    iget v0, p0, Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;->mState:I

    if-gt v0, v1, :cond_0

    .line 94
    iput v1, p0, Lcom/sec/android/allshare/FileReceiverImpl$SessionInfo;->mState:I

    .line 95
    const/4 v0, 0x1

    .line 98
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
