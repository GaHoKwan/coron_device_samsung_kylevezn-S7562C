.class public abstract Lcom/sec/android/allshare/KiesDevice;
.super Lcom/sec/android/allshare/Device;
.source "KiesDevice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/allshare/KiesDevice$IKiesEventListener;,
        Lcom/sec/android/allshare/KiesDevice$IKiesActionResponseListner;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/sec/android/allshare/Device;-><init>()V

    .line 42
    return-void
.end method


# virtual methods
.method public getDeviceDomain()Lcom/sec/android/allshare/Device$DeviceDomain;
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceType()Lcom/sec/android/allshare/Device$DeviceType;
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    return-object v0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIPAdress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIcon()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    return-object v0
.end method

.method public getModelName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract optionalCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setActionListener(Lcom/sec/android/allshare/KiesDevice$IKiesActionResponseListner;)Lcom/sec/android/allshare/ERROR;
.end method

.method public abstract setAutoSyncConnectionInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setEventListener(Lcom/sec/android/allshare/KiesDevice$IKiesEventListener;)Lcom/sec/android/allshare/ERROR;
.end method

.method public abstract setSyncConnectionInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method
