.class public abstract Lcom/sec/android/allshare/Device;
.super Ljava/lang/Object;
.source "Device.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/allshare/Device$DeviceType;,
        Lcom/sec/android/allshare/Device$DeviceDomain;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method


# virtual methods
.method public abstract getDeviceDomain()Lcom/sec/android/allshare/Device$DeviceDomain;
.end method

.method public abstract getDeviceType()Lcom/sec/android/allshare/Device$DeviceType;
.end method

.method public abstract getID()Ljava/lang/String;
.end method

.method public abstract getIPAddress()Ljava/lang/String;
.end method

.method public abstract getIPAdress()Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getIcon()Landroid/net/Uri;
.end method

.method public abstract getIconList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/allshare/Icon;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getModelName()Ljava/lang/String;
.end method

.method public abstract getNIC()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method
