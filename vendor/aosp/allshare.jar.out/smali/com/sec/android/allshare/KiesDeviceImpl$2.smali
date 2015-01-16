.class Lcom/sec/android/allshare/KiesDeviceImpl$2;
.super Lcom/sec/android/allshare/AllShareResponseHandler;
.source "KiesDeviceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/KiesDeviceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/allshare/KiesDeviceImpl;


# direct methods
.method constructor <init>(Lcom/sec/android/allshare/KiesDeviceImpl;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 273
    iput-object p1, p0, Lcom/sec/android/allshare/KiesDeviceImpl$2;->this$0:Lcom/sec/android/allshare/KiesDeviceImpl;

    invoke-direct {p0, p2}, Lcom/sec/android/allshare/AllShareResponseHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleResponseMessage(Lcom/sec/android/allshare/iface/CVMessage;)V
    .locals 25
    .parameter "cvm"

    .prologue
    .line 276
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/allshare/iface/CVMessage;->getActionID()Ljava/lang/String;

    move-result-object v22

    .line 277
    .local v22, actionID:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v24

    .line 278
    .local v24, resBundle:Landroid/os/Bundle;
    if-eqz v22, :cond_0

    if-nez v24, :cond_1

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    const-string v1, "BUNDLE_STRING_KIES_DEVICE_IPADDRESS"

    move-object/from16 v0, v24

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 281
    .local v3, ipAddress:Ljava/lang/String;
    const-string v1, "BUNDLE_ENUM_ERROR"

    move-object/from16 v0, v24

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/allshare/ERROR;->valueOf(Ljava/lang/String;)Lcom/sec/android/allshare/ERROR;

    move-result-object v7

    .line 283
    .local v7, err:Lcom/sec/android/allshare/ERROR;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/allshare/KiesDeviceImpl$2;->this$0:Lcom/sec/android/allshare/KiesDeviceImpl;

    #getter for: Lcom/sec/android/allshare/KiesDeviceImpl;->mActionResponseListener:Lcom/sec/android/allshare/KiesDevice$IKiesActionResponseListner;
    invoke-static {v1}, Lcom/sec/android/allshare/KiesDeviceImpl;->access$100(Lcom/sec/android/allshare/KiesDeviceImpl;)Lcom/sec/android/allshare/KiesDevice$IKiesActionResponseListner;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 284
    const-string v1, "com.sec.android.allshare.action.ACTION_KIES_DEVICE_OPTIONAL_COMMAND"

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 285
    const-string v1, "BUNDLE_STRING_KIES_DEVICE_COMMANDNAME"

    move-object/from16 v0, v24

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 287
    .local v4, commandName:Ljava/lang/String;
    const-string v1, "BUNDLE_STRING_KIES_DEVICE_ARG1"

    move-object/from16 v0, v24

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 289
    .local v5, arg1:Ljava/lang/String;
    const-string v1, "BUNDLE_STRING_KIES_DEVICE_ARG2"

    move-object/from16 v0, v24

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 291
    .local v6, arg2:Ljava/lang/String;
    const-string v1, "BUNDLE_STRING_KIES_DEVICE_RESULT"

    move-object/from16 v0, v24

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 293
    .local v2, result:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/allshare/KiesDeviceImpl$2;->this$0:Lcom/sec/android/allshare/KiesDeviceImpl;

    #getter for: Lcom/sec/android/allshare/KiesDeviceImpl;->mActionResponseListener:Lcom/sec/android/allshare/KiesDevice$IKiesActionResponseListner;
    invoke-static {v1}, Lcom/sec/android/allshare/KiesDeviceImpl;->access$100(Lcom/sec/android/allshare/KiesDeviceImpl;)Lcom/sec/android/allshare/KiesDevice$IKiesActionResponseListner;

    move-result-object v1

    invoke-interface/range {v1 .. v7}, Lcom/sec/android/allshare/KiesDevice$IKiesActionResponseListner;->onOptionalCommandResponseReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/allshare/ERROR;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 317
    .end local v2           #result:Ljava/lang/String;
    .end local v4           #commandName:Ljava/lang/String;
    .end local v5           #arg1:Ljava/lang/String;
    .end local v6           #arg2:Ljava/lang/String;
    :catch_0
    move-exception v23

    .line 318
    .local v23, e:Ljava/lang/Exception;
    const-string v1, "AllShareResponseHandler"

    const-string v8, "mAllShareRespHandler.handleResponseMessage Exception"

    move-object/from16 v0, v23

    invoke-static {v1, v8, v0}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 296
    .end local v23           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_1
    const-string v1, "BUNDLE_STRING_KIES_DEVICE_PORTNUMBER"

    move-object/from16 v0, v24

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 298
    .local v11, portNumber:Ljava/lang/String;
    const-string v1, "BUNDLE_STRING_KIES_DEVICE_MODEL"

    move-object/from16 v0, v24

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 300
    .local v12, deviceModel:Ljava/lang/String;
    const-string v1, "BUNDLE_STRING_KIES_DEVICE_CONNECTIONTYPE"

    move-object/from16 v0, v24

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 302
    .local v13, connectionType:Ljava/lang/String;
    const-string v1, "BUNDLE_STRING_KIES_DEVICE_RESULT"

    move-object/from16 v0, v24

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 304
    .restart local v2       #result:Ljava/lang/String;
    const-string v1, "com.sec.android.allshare.action.ACTION_KIES_DEVICE_SET_SYNC_CONNECTION"

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 305
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/allshare/KiesDeviceImpl$2;->this$0:Lcom/sec/android/allshare/KiesDeviceImpl;

    #getter for: Lcom/sec/android/allshare/KiesDeviceImpl;->mActionResponseListener:Lcom/sec/android/allshare/KiesDevice$IKiesActionResponseListner;
    invoke-static {v1}, Lcom/sec/android/allshare/KiesDeviceImpl;->access$100(Lcom/sec/android/allshare/KiesDeviceImpl;)Lcom/sec/android/allshare/KiesDevice$IKiesActionResponseListner;

    move-result-object v8

    move-object v9, v2

    move-object v10, v3

    move-object v14, v7

    invoke-interface/range {v8 .. v14}, Lcom/sec/android/allshare/KiesDevice$IKiesActionResponseListner;->onSetSyncConnectionResponseReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/allshare/ERROR;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 319
    .end local v2           #result:Ljava/lang/String;
    .end local v11           #portNumber:Ljava/lang/String;
    .end local v12           #deviceModel:Ljava/lang/String;
    .end local v13           #connectionType:Ljava/lang/String;
    :catch_1
    move-exception v23

    .line 320
    .local v23, e:Ljava/lang/Error;
    const-string v1, "AllShareResponseHandler"

    const-string v8, "mAllShareRespHandler.handleResponseMessage Error"

    move-object/from16 v0, v23

    invoke-static {v1, v8, v0}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Error;)V

    goto/16 :goto_0

    .line 307
    .end local v23           #e:Ljava/lang/Error;
    .restart local v2       #result:Ljava/lang/String;
    .restart local v11       #portNumber:Ljava/lang/String;
    .restart local v12       #deviceModel:Ljava/lang/String;
    .restart local v13       #connectionType:Ljava/lang/String;
    :cond_3
    :try_start_2
    const-string v1, "com.sec.android.allshare.action.ACTION_KIES_DEVICE_SET_AUTO_SYNC_CONNECTION"

    move-object/from16 v0, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 309
    const-string v1, "BUNDLE_STRING_KIES_DEVICE_UNIQUEID"

    move-object/from16 v0, v24

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 311
    .local v16, uniqueDeviceID:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/allshare/KiesDeviceImpl$2;->this$0:Lcom/sec/android/allshare/KiesDeviceImpl;

    #getter for: Lcom/sec/android/allshare/KiesDeviceImpl;->mActionResponseListener:Lcom/sec/android/allshare/KiesDevice$IKiesActionResponseListner;
    invoke-static {v1}, Lcom/sec/android/allshare/KiesDeviceImpl;->access$100(Lcom/sec/android/allshare/KiesDeviceImpl;)Lcom/sec/android/allshare/KiesDevice$IKiesActionResponseListner;

    move-result-object v14

    sget-object v21, Lcom/sec/android/allshare/ERROR;->SERVICE_NOT_CONNECTED:Lcom/sec/android/allshare/ERROR;

    move-object v15, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v11

    move-object/from16 v19, v12

    move-object/from16 v20, v13

    invoke-interface/range {v14 .. v21}, Lcom/sec/android/allshare/KiesDevice$IKiesActionResponseListner;->onSetAutoSyncConnectionResponseReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/allshare/ERROR;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method
