.class abstract Lcom/sec/android/allshare/AllShareEventHandler;
.super Landroid/os/Handler;
.source "AllShareEventHandler.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "AllShareEventHandler"


# direct methods
.method protected constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .parameter "looper"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 47
    return-void
.end method


# virtual methods
.method abstract handleEventMessage(Lcom/sec/android/allshare/iface/CVMessage;)V
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 56
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 57
    .local v0, bundle:Landroid/os/Bundle;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 58
    const-string v2, "EVT_MSG_KEY"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/sec/android/allshare/iface/CVMessage;

    .line 59
    .local v1, cvm:Lcom/sec/android/allshare/iface/CVMessage;
    invoke-virtual {p0, v1}, Lcom/sec/android/allshare/AllShareEventHandler;->handleEventMessage(Lcom/sec/android/allshare/iface/CVMessage;)V

    .line 61
    return-void
.end method
