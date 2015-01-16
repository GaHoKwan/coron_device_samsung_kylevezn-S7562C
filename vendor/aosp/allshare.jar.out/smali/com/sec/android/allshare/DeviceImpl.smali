.class final Lcom/sec/android/allshare/DeviceImpl;
.super Lcom/sec/android/allshare/Device;
.source "DeviceImpl.java"

# interfaces
.implements Lcom/sec/android/allshare/iface/IBundleHolder;


# static fields
.field private static final TAG:Ljava/lang/String; = "DeviceImpl"


# instance fields
.field private mDeviceBundle:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/sec/android/allshare/Device;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/allshare/DeviceImpl;->mDeviceBundle:Landroid/os/Bundle;

    .line 40
    iput-object p1, p0, Lcom/sec/android/allshare/DeviceImpl;->mDeviceBundle:Landroid/os/Bundle;

    .line 41
    return-void
.end method


# virtual methods
.method public getBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/sec/android/allshare/DeviceImpl;->mDeviceBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 131
    const/4 v0, 0x0

    .line 133
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/DeviceImpl;->mDeviceBundle:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public getDeviceDomain()Lcom/sec/android/allshare/Device$DeviceDomain;
    .locals 4

    .prologue
    .line 113
    sget-object v0, Lcom/sec/android/allshare/Device$DeviceDomain;->UNKNOWN:Lcom/sec/android/allshare/Device$DeviceDomain;

    .line 115
    .local v0, deviceDomain:Lcom/sec/android/allshare/Device$DeviceDomain;
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/allshare/DeviceImpl;->mDeviceBundle:Landroid/os/Bundle;

    const-string v3, "BUNDLE_ENUM_DEVICE_DOMAIN"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/allshare/Device$DeviceDomain;->valueOf(Ljava/lang/String;)Lcom/sec/android/allshare/Device$DeviceDomain;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 121
    :goto_0
    if-nez v0, :cond_0

    .line 122
    sget-object v0, Lcom/sec/android/allshare/Device$DeviceDomain;->UNKNOWN:Lcom/sec/android/allshare/Device$DeviceDomain;

    .line 125
    .end local v0           #deviceDomain:Lcom/sec/android/allshare/Device$DeviceDomain;
    :cond_0
    return-object v0

    .line 117
    .restart local v0       #deviceDomain:Lcom/sec/android/allshare/Device$DeviceDomain;
    :catch_0
    move-exception v1

    .line 118
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "DeviceImpl"

    const-string v3, "getDeviceDomain Exception"

    invoke-static {v2, v3, v1}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getDeviceType()Lcom/sec/android/allshare/Device$DeviceType;
    .locals 4

    .prologue
    .line 85
    sget-object v0, Lcom/sec/android/allshare/Device$DeviceType;->UNKNOWN:Lcom/sec/android/allshare/Device$DeviceType;

    .line 87
    .local v0, deviceType:Lcom/sec/android/allshare/Device$DeviceType;
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/allshare/DeviceImpl;->mDeviceBundle:Landroid/os/Bundle;

    const-string v3, "BUNDLE_ENUM_DEVICE_TYPE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/allshare/Device$DeviceType;->valueOf(Ljava/lang/String;)Lcom/sec/android/allshare/Device$DeviceType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 93
    :goto_0
    if-nez v0, :cond_0

    .line 94
    sget-object v0, Lcom/sec/android/allshare/Device$DeviceType;->UNKNOWN:Lcom/sec/android/allshare/Device$DeviceType;

    .line 96
    .end local v0           #deviceType:Lcom/sec/android/allshare/Device$DeviceType;
    :cond_0
    return-object v0

    .line 89
    .restart local v0       #deviceType:Lcom/sec/android/allshare/Device$DeviceType;
    :catch_0
    move-exception v1

    .line 90
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "DeviceImpl"

    const-string v3, "getDeviceType  Exception"

    invoke-static {v2, v3, v1}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sec/android/allshare/DeviceImpl;->mDeviceBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/DeviceImpl;->mDeviceBundle:Landroid/os/Bundle;

    const-string v1, "BUNDLE_STRING_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getIPAddress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sec/android/allshare/DeviceImpl;->mDeviceBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/DeviceImpl;->mDeviceBundle:Landroid/os/Bundle;

    const-string v1, "BUNDLE_STRING_DEVICE_IP_ADDRESS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getIPAdress()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/sec/android/allshare/DeviceImpl;->getIPAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIcon()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sec/android/allshare/DeviceImpl;->mDeviceBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    check-cast v0, Landroid/net/Uri;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/DeviceImpl;->mDeviceBundle:Landroid/os/Bundle;

    const-string v1, "BUNDLE_PARCELABLE_DEVICE_DEFAULT_ICON"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    goto :goto_0
.end method

.method public getIconList()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/allshare/Icon;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v4, p0, Lcom/sec/android/allshare/DeviceImpl;->mDeviceBundle:Landroid/os/Bundle;

    if-nez v4, :cond_1

    const/4 v1, 0x0

    .line 59
    .local v1, iconList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v3, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/allshare/Icon;>;"
    if-nez v1, :cond_2

    .line 69
    :cond_0
    return-object v3

    .line 57
    .end local v1           #iconList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    .end local v3           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/allshare/Icon;>;"
    :cond_1
    iget-object v4, p0, Lcom/sec/android/allshare/DeviceImpl;->mDeviceBundle:Landroid/os/Bundle;

    const-string v5, "BUNDLE_PARCELABLE_DEVICE_DEFAULT_ICONLIST"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0

    .line 65
    .restart local v1       #iconList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    .restart local v3       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/allshare/Icon;>;"
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    .line 66
    .local v2, parcel:Landroid/os/Parcelable;
    new-instance v4, Lcom/sec/android/allshare/IconImpl;

    check-cast v2, Landroid/os/Bundle;

    .end local v2           #parcel:Landroid/os/Parcelable;
    invoke-direct {v4, v2}, Lcom/sec/android/allshare/IconImpl;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public getModelName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sec/android/allshare/DeviceImpl;->mDeviceBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/DeviceImpl;->mDeviceBundle:Landroid/os/Bundle;

    const-string v1, "BUNDLE_STRING_DEVICE_MODELNAME"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNIC()Ljava/lang/String;
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/sec/android/allshare/DeviceImpl;->mDeviceBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/DeviceImpl;->mDeviceBundle:Landroid/os/Bundle;

    const-string v1, "BUNDLE_STRING_BOUND_INTERFACE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/allshare/DeviceImpl;->mDeviceBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/DeviceImpl;->mDeviceBundle:Landroid/os/Bundle;

    const-string v1, "BUNDLE_STRING_DEVICE_NAME"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
