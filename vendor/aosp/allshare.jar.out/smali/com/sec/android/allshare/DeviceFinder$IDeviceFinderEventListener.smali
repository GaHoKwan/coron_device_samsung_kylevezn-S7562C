.class public interface abstract Lcom/sec/android/allshare/DeviceFinder$IDeviceFinderEventListener;
.super Ljava/lang/Object;
.source "DeviceFinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/DeviceFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IDeviceFinderEventListener"
.end annotation


# virtual methods
.method public abstract onDeviceAdded(Lcom/sec/android/allshare/Device$DeviceType;Lcom/sec/android/allshare/Device;Lcom/sec/android/allshare/ERROR;)V
.end method

.method public abstract onDeviceRemoved(Lcom/sec/android/allshare/Device$DeviceType;Lcom/sec/android/allshare/Device;Lcom/sec/android/allshare/ERROR;)V
.end method
