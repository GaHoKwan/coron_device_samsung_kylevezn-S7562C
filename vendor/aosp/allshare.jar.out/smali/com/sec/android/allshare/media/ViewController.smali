.class public abstract Lcom/sec/android/allshare/media/ViewController;
.super Ljava/lang/Object;
.source "ViewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/allshare/media/ViewController$IResponseListener;,
        Lcom/sec/android/allshare/media/ViewController$IEventListener;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method


# virtual methods
.method public abstract connect()V
.end method

.method public abstract disconnect()V
.end method

.method public abstract getViewHeight()I
.end method

.method public abstract getViewWidth()I
.end method

.method public abstract isConnected()Z
.end method

.method public abstract move(IIZ)V
.end method

.method public abstract setEventListener(Lcom/sec/android/allshare/media/ViewController$IEventListener;)V
.end method

.method public abstract setResponseListener(Lcom/sec/android/allshare/media/ViewController$IResponseListener;)V
.end method

.method public abstract setViewAngle(I)V
.end method

.method public abstract zoom(IIII)V
.end method

.method public abstract zoom(IIIIII)V
.end method
