.class public abstract Lcom/sec/android/allshare/control/TVController;
.super Lcom/sec/android/allshare/Device;
.source "TVController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/allshare/control/TVController$IResponseListener;,
        Lcom/sec/android/allshare/control/TVController$IEventListener;,
        Lcom/sec/android/allshare/control/TVController$TVInformation;,
        Lcom/sec/android/allshare/control/TVController$BrowserMode;,
        Lcom/sec/android/allshare/control/TVController$RemoteKey;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/sec/android/allshare/Device;-><init>()V

    .line 331
    return-void
.end method


# virtual methods
.method public abstract browserScrollDown()V
.end method

.method public abstract browserScrollUp()V
.end method

.method public abstract browserZoomDefault()V
.end method

.method public abstract browserZoomIn()V
.end method

.method public abstract browserZoomOut()V
.end method

.method public abstract closeWebPage()V
.end method

.method public abstract connect()V
.end method

.method public abstract disconnect()V
.end method

.method public abstract getBrowserMode()V
.end method

.method public abstract getBrowserURL()V
.end method

.method public abstract getTVInformation()V
.end method

.method public abstract goHomePage()V
.end method

.method public abstract goNextWebPage()V
.end method

.method public abstract goPreviousWebPage()V
.end method

.method public abstract isConnected()Z
.end method

.method public abstract openWebPage(Ljava/lang/String;)V
.end method

.method public abstract refreshWebPage()V
.end method

.method public abstract sendKeyboardEnd()Lcom/sec/android/allshare/ERROR;
.end method

.method public abstract sendKeyboardString(Ljava/lang/String;)Lcom/sec/android/allshare/ERROR;
.end method

.method public abstract sendRemoteKey(Lcom/sec/android/allshare/control/TVController$RemoteKey;)Lcom/sec/android/allshare/ERROR;
.end method

.method public abstract sendTouchClick()Lcom/sec/android/allshare/ERROR;
.end method

.method public abstract sendTouchDown()Lcom/sec/android/allshare/ERROR;
.end method

.method public abstract sendTouchMove(II)Lcom/sec/android/allshare/ERROR;
.end method

.method public abstract sendTouchUp()Lcom/sec/android/allshare/ERROR;
.end method

.method public abstract setBrowserMode(Lcom/sec/android/allshare/control/TVController$BrowserMode;)V
.end method

.method public abstract setEventListener(Lcom/sec/android/allshare/control/TVController$IEventListener;)V
.end method

.method public abstract setResponseListener(Lcom/sec/android/allshare/control/TVController$IResponseListener;)V
.end method

.method public abstract stopWebPageLoading()V
.end method
