.class public interface abstract Lcom/sec/android/allshare/iface/ISubscriber;
.super Ljava/lang/Object;
.source "ISubscriber.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/allshare/iface/ISubscriber$Stub;
    }
.end annotation


# virtual methods
.method public abstract getServiceVersion()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract requestCVAsync(Ljava/lang/String;Lcom/sec/android/allshare/iface/CVMessage;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract requestCVSync(Ljava/lang/String;Lcom/sec/android/allshare/iface/CVMessage;)Lcom/sec/android/allshare/iface/CVMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract subscribeEvent(Ljava/lang/String;Lcom/sec/android/allshare/iface/CVMessage;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unsubscribeEvent(Ljava/lang/String;Lcom/sec/android/allshare/iface/CVMessage;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
