.class public abstract Lcom/sec/android/allshare/DeviceFinder;
.super Ljava/lang/Object;
.source "DeviceFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/allshare/DeviceFinder$IDeviceFinderEventListener;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method


# virtual methods
.method public abstract getDevice(Ljava/lang/String;Lcom/sec/android/allshare/Device$DeviceType;)Lcom/sec/android/allshare/Device;
.end method

.method public abstract getDevices(Lcom/sec/android/allshare/Device$DeviceDomain;Lcom/sec/android/allshare/Device$DeviceType;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/allshare/Device$DeviceDomain;",
            "Lcom/sec/android/allshare/Device$DeviceType;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/allshare/Device;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDevices(Lcom/sec/android/allshare/Device$DeviceType;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/allshare/Device$DeviceType;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/allshare/Device;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDevices(Lcom/sec/android/allshare/Device$DeviceType;Ljava/lang/String;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/allshare/Device$DeviceType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/allshare/Device;",
            ">;"
        }
    .end annotation
.end method

.method public abstract refresh()V
.end method

.method public abstract refresh(Lcom/sec/android/allshare/Device$DeviceType;)V
.end method

.method public abstract registerSearchTarget(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/allshare/Device$DeviceType;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setDeviceFinderEventListener(Lcom/sec/android/allshare/Device$DeviceType;Lcom/sec/android/allshare/DeviceFinder$IDeviceFinderEventListener;)V
.end method

.method public abstract unregisterSearchTarget(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/allshare/Device$DeviceType;",
            ">;)V"
        }
    .end annotation
.end method
