.class Lcom/sec/android/allshare/DeviceFinderImpl$1;
.super Lcom/sec/android/allshare/AllShareEventHandler;
.source "DeviceFinderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/DeviceFinderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/allshare/DeviceFinderImpl;


# direct methods
.method constructor <init>(Lcom/sec/android/allshare/DeviceFinderImpl;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 132
    iput-object p1, p0, Lcom/sec/android/allshare/DeviceFinderImpl$1;->this$0:Lcom/sec/android/allshare/DeviceFinderImpl;

    invoke-direct {p0, p2}, Lcom/sec/android/allshare/AllShareEventHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleEventMessage(Lcom/sec/android/allshare/iface/CVMessage;)V
    .locals 14
    .parameter "cvm"

    .prologue
    .line 137
    invoke-virtual {p1}, Lcom/sec/android/allshare/iface/CVMessage;->getEventID()Ljava/lang/String;

    move-result-object v8

    .line 139
    .local v8, evt_id:Ljava/lang/String;
    const/4 v9, 0x0

    .line 142
    .local v9, listener:Lcom/sec/android/allshare/DeviceFinder$IDeviceFinderEventListener;
    :try_start_0
    iget-object v11, p0, Lcom/sec/android/allshare/DeviceFinderImpl$1;->this$0:Lcom/sec/android/allshare/DeviceFinderImpl;

    #getter for: Lcom/sec/android/allshare/DeviceFinderImpl;->mDiscoveryListenerMap:Ljava/util/HashMap;
    invoke-static {v11}, Lcom/sec/android/allshare/DeviceFinderImpl;->access$000(Lcom/sec/android/allshare/DeviceFinderImpl;)Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Lcom/sec/android/allshare/DeviceFinder$IDeviceFinderEventListener;

    move-object v9, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_0
    invoke-static {}, Lcom/sec/android/allshare/DeviceFinderImpl;->access$100()Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/allshare/Device$DeviceType;

    .line 148
    .local v3, deviceType:Lcom/sec/android/allshare/Device$DeviceType;
    invoke-virtual {p1}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v10

    .line 149
    .local v10, msgBundle:Landroid/os/Bundle;
    const-string v11, "BUNDLE_STRING_TYPE"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 150
    .local v7, eventType:Ljava/lang/String;
    const-string v11, "BUNDLE_PARCELABLE_DEVICE"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 152
    .local v2, deviceBundle:Landroid/os/Bundle;
    if-nez v2, :cond_1

    .line 192
    :cond_0
    :goto_1
    return-void

    .line 143
    .end local v2           #deviceBundle:Landroid/os/Bundle;
    .end local v3           #deviceType:Lcom/sec/android/allshare/Device$DeviceType;
    .end local v7           #eventType:Ljava/lang/String;
    .end local v10           #msgBundle:Landroid/os/Bundle;
    :catch_0
    move-exception v4

    .line 144
    .local v4, e:Ljava/lang/Exception;
    const-string v11, "DeviceFinderImpl"

    const-string v12, "mEventHandler.handleEventMessage : Exception"

    invoke-static {v11, v12, v4}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 155
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v2       #deviceBundle:Landroid/os/Bundle;
    .restart local v3       #deviceType:Lcom/sec/android/allshare/Device$DeviceType;
    .restart local v7       #eventType:Ljava/lang/String;
    .restart local v10       #msgBundle:Landroid/os/Bundle;
    :cond_1
    iget-object v11, p0, Lcom/sec/android/allshare/DeviceFinderImpl$1;->this$0:Lcom/sec/android/allshare/DeviceFinderImpl;

    #calls: Lcom/sec/android/allshare/DeviceFinderImpl;->getDeviceFromMap(Landroid/os/Bundle;Lcom/sec/android/allshare/Device$DeviceType;)Lcom/sec/android/allshare/Device;
    invoke-static {v11, v2, v3}, Lcom/sec/android/allshare/DeviceFinderImpl;->access$200(Lcom/sec/android/allshare/DeviceFinderImpl;Landroid/os/Bundle;Lcom/sec/android/allshare/Device$DeviceType;)Lcom/sec/android/allshare/Device;

    move-result-object v1

    .line 156
    .local v1, device:Lcom/sec/android/allshare/Device;
    if-eqz v1, :cond_0

    .line 159
    const-string v11, "ADDED"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 161
    if-eqz v9, :cond_0

    .line 162
    :try_start_1
    sget-object v11, Lcom/sec/android/allshare/ERROR;->SUCCESS:Lcom/sec/android/allshare/ERROR;

    invoke-interface {v9, v3, v1, v11}, Lcom/sec/android/allshare/DeviceFinder$IDeviceFinderEventListener;->onDeviceAdded(Lcom/sec/android/allshare/Device$DeviceType;Lcom/sec/android/allshare/Device;Lcom/sec/android/allshare/ERROR;)V

    .line 163
    const-string v11, "DeviceFinderImpl"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[ADDED] "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Lcom/sec/android/allshare/Device;->getDeviceType()Lcom/sec/android/allshare/Device$DeviceType;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Lcom/sec/android/allshare/Device;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Lcom/sec/android/allshare/Device;->getDeviceDomain()Lcom/sec/android/allshare/Device$DeviceDomain;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/sec/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 167
    :catch_1
    move-exception v4

    .line 168
    .restart local v4       #e:Ljava/lang/Exception;
    const-string v11, "DeviceFinderImpl"

    const-string v12, ""

    invoke-static {v11, v12, v4}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 169
    .end local v4           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v5

    .line 170
    .local v5, err:Ljava/lang/Error;
    const-string v11, "DeviceFinderImpl"

    const-string v12, ""

    invoke-static {v11, v12, v5}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Error;)V

    goto :goto_1

    .line 173
    .end local v5           #err:Ljava/lang/Error;
    :cond_2
    const-string v11, "REMOVED"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 175
    :try_start_2
    iget-object v11, p0, Lcom/sec/android/allshare/DeviceFinderImpl$1;->this$0:Lcom/sec/android/allshare/DeviceFinderImpl;

    #calls: Lcom/sec/android/allshare/DeviceFinderImpl;->removeDeviceFromMap(Landroid/os/Bundle;Lcom/sec/android/allshare/Device$DeviceType;)V
    invoke-static {v11, v2, v3}, Lcom/sec/android/allshare/DeviceFinderImpl;->access$300(Lcom/sec/android/allshare/DeviceFinderImpl;Landroid/os/Bundle;Lcom/sec/android/allshare/Device$DeviceType;)V

    .line 176
    const-string v11, "BUNDLE_ENUM_ERROR"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/sec/android/allshare/ERROR;->valueOf(Ljava/lang/String;)Lcom/sec/android/allshare/ERROR;

    move-result-object v6

    .line 177
    .local v6, error:Lcom/sec/android/allshare/ERROR;
    if-eqz v9, :cond_0

    .line 178
    invoke-interface {v9, v3, v1, v6}, Lcom/sec/android/allshare/DeviceFinder$IDeviceFinderEventListener;->onDeviceRemoved(Lcom/sec/android/allshare/Device$DeviceType;Lcom/sec/android/allshare/Device;Lcom/sec/android/allshare/ERROR;)V

    .line 179
    const-string v11, "DeviceFinderImpl"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[REMOVED] "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Lcom/sec/android/allshare/Device;->getDeviceType()Lcom/sec/android/allshare/Device$DeviceType;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Lcom/sec/android/allshare/Device;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Lcom/sec/android/allshare/Device;->getDeviceDomain()Lcom/sec/android/allshare/Device$DeviceDomain;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/sec/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_1

    .line 183
    .end local v6           #error:Lcom/sec/android/allshare/ERROR;
    :catch_3
    move-exception v4

    .line 184
    .restart local v4       #e:Ljava/lang/Exception;
    const-string v11, "DeviceFinderImpl"

    const-string v12, ""

    invoke-static {v11, v12, v4}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_1

    .line 185
    .end local v4           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v5

    .line 186
    .restart local v5       #err:Ljava/lang/Error;
    const-string v11, "DeviceFinderImpl"

    const-string v12, ""

    invoke-static {v11, v12, v5}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Error;)V

    goto/16 :goto_1
.end method
