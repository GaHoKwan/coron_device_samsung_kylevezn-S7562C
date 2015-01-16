.class Lcom/sec/android/allshare/TVMessageSender$1;
.super Landroid/os/Handler;
.source "IAppControlAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/allshare/TVMessageSender;->createHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/allshare/TVMessageSender;


# direct methods
.method constructor <init>(Lcom/sec/android/allshare/TVMessageSender;)V
    .locals 0
    .parameter

    .prologue
    .line 1335
    iput-object p1, p0, Lcom/sec/android/allshare/TVMessageSender$1;->this$0:Lcom/sec/android/allshare/TVMessageSender;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    .line 1339
    const/4 v9, 0x0

    .line 1340
    .local v9, mEvent:Lcom/sec/android/allshare/EventTouch;
    const/4 v10, 0x0

    .line 1341
    .local v10, mEventMouse:Lcom/sec/android/allshare/EventMouse;
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 1467
    :cond_0
    :goto_0
    return-void

    .line 1344
    :sswitch_0
    iget-object v0, p0, Lcom/sec/android/allshare/TVMessageSender$1;->this$0:Lcom/sec/android/allshare/TVMessageSender;

    iget-object v0, v0, Lcom/sec/android/allshare/TVMessageSender;->mSocket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/allshare/TVMessageSender$1;->this$0:Lcom/sec/android/allshare/TVMessageSender;

    iget-object v0, v0, Lcom/sec/android/allshare/TVMessageSender;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1345
    const-string v0, "TVMessageSender"

    const-string v1, "sendDTVKeyboardEnd"

    invoke-static {v0, v1}, Lcom/sec/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 1346
    iget-object v0, p0, Lcom/sec/android/allshare/TVMessageSender$1;->this$0:Lcom/sec/android/allshare/TVMessageSender;

    invoke-virtual {v0}, Lcom/sec/android/allshare/TVMessageSender;->sendKeyboardEnd()V

    goto :goto_0

    .line 1351
    :sswitch_1
    iget-object v0, p0, Lcom/sec/android/allshare/TVMessageSender$1;->this$0:Lcom/sec/android/allshare/TVMessageSender;

    iget-object v0, v0, Lcom/sec/android/allshare/TVMessageSender;->mSocket:Ljava/net/Socket;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/allshare/TVMessageSender$1;->this$0:Lcom/sec/android/allshare/TVMessageSender;

    iget-object v0, v0, Lcom/sec/android/allshare/TVMessageSender;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1352
    iget-object v0, p0, Lcom/sec/android/allshare/TVMessageSender$1;->this$0:Lcom/sec/android/allshare/TVMessageSender;

    invoke-virtual {v0}, Lcom/sec/android/allshare/TVMessageSender;->sendAuthentication()V

    goto :goto_0

    .line 1354
    :cond_1
    const-string v0, "TVMessageSender"

    const-string v1, "CONTROLLER_EVENT_DEVICE_AUTHENTICATION : socket is not connected"

    invoke-static {v0, v1}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 1356
    iget-object v0, p0, Lcom/sec/android/allshare/TVMessageSender$1;->this$0:Lcom/sec/android/allshare/TVMessageSender;

    iget-object v0, v0, Lcom/sec/android/allshare/TVMessageSender;->mControlAPI:Lcom/sec/android/allshare/IAppControlAPI;

    invoke-virtual {v0}, Lcom/sec/android/allshare/IAppControlAPI;->sendSocketIsNotConnectedEvent()V

    goto :goto_0

    .line 1361
    :sswitch_2
    iget-object v0, p0, Lcom/sec/android/allshare/TVMessageSender$1;->this$0:Lcom/sec/android/allshare/TVMessageSender;

    iget v0, v0, Lcom/sec/android/allshare/TVMessageSender;->mProtocol:I

    if-ne v0, v1, :cond_0

    .line 1362
    iget-object v0, p0, Lcom/sec/android/allshare/TVMessageSender$1;->this$0:Lcom/sec/android/allshare/TVMessageSender;

    iget-object v0, v0, Lcom/sec/android/allshare/TVMessageSender;->mSocket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 1364
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/allshare/TVMessageSender$1;->this$0:Lcom/sec/android/allshare/TVMessageSender;

    iget-object v0, v0, Lcom/sec/android/allshare/TVMessageSender;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1369
    :goto_1
    iget-object v0, p0, Lcom/sec/android/allshare/TVMessageSender$1;->this$0:Lcom/sec/android/allshare/TVMessageSender;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sec/android/allshare/TVMessageSender;->mSocket:Ljava/net/Socket;

    goto :goto_0

    .line 1365
    :catch_0
    move-exception v8

    .line 1367
    .local v8, e:Ljava/io/IOException;
    const-string v0, "TVMessageSender"

    const-string v1, ""

    invoke-static {v0, v1, v8}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 1374
    .end local v8           #e:Ljava/io/IOException;
    :sswitch_3
    iget-object v0, p0, Lcom/sec/android/allshare/TVMessageSender$1;->this$0:Lcom/sec/android/allshare/TVMessageSender;

    iget v0, v0, Lcom/sec/android/allshare/TVMessageSender;->mProtocol:I

    if-ne v0, v1, :cond_0

    .line 1375
    iget-object v0, p0, Lcom/sec/android/allshare/TVMessageSender$1;->this$0:Lcom/sec/android/allshare/TVMessageSender;

    iget-object v0, v0, Lcom/sec/android/allshare/TVMessageSender;->mSocket:Ljava/net/Socket;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/allshare/TVMessageSender$1;->this$0:Lcom/sec/android/allshare/TVMessageSender;

    iget-object v0, v0, Lcom/sec/android/allshare/TVMessageSender;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1376
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_0

    .line 1377
    iget-object v1, p0, Lcom/sec/android/allshare/TVMessageSender$1;->this$0:Lcom/sec/android/allshare/TVMessageSender;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/allshare/TVMessageSender;->sendRemoteControlKey(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1380
    :cond_2
    const-string v0, "TVMessageSender"

    const-string v1, "CONTROLLER_EVENT_REMOTECONTROL_KEY : socket is not connected"

    invoke-static {v0, v1}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1389
    :sswitch_4
    iget-object v0, p0, Lcom/sec/android/allshare/TVMessageSender$1;->this$0:Lcom/sec/android/allshare/TVMessageSender;

    iget v0, v0, Lcom/sec/android/allshare/TVMessageSender;->mProtocol:I

    if-ne v0, v1, :cond_0

    .line 1391
    iget-object v0, p0, Lcom/sec/android/allshare/TVMessageSender$1;->this$0:Lcom/sec/android/allshare/TVMessageSender;

    iget-object v0, v0, Lcom/sec/android/allshare/TVMessageSender;->mSocket:Ljava/net/Socket;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/allshare/TVMessageSender$1;->this$0:Lcom/sec/android/allshare/TVMessageSender;

    iget-object v0, v0, Lcom/sec/android/allshare/TVMessageSender;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1392
    iget-object v1, p0, Lcom/sec/android/allshare/TVMessageSender$1;->this$0:Lcom/sec/android/allshare/TVMessageSender;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/allshare/TVMessageSender;->sendKeyboardString(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1394
    :cond_3
    const-string v0, "TVMessageSender"

    const-string v1, "CONTROLLER_EVENT_KEYBOARD_INPUT : socket is not connected"

    invoke-static {v0, v1}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1401
    :sswitch_5
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v9           #mEvent:Lcom/sec/android/allshare/EventTouch;
    check-cast v9, Lcom/sec/android/allshare/EventTouch;

    .line 1403
    .restart local v9       #mEvent:Lcom/sec/android/allshare/EventTouch;
    iget-object v0, p0, Lcom/sec/android/allshare/TVMessageSender$1;->this$0:Lcom/sec/android/allshare/TVMessageSender;

    iget v0, v0, Lcom/sec/android/allshare/TVMessageSender;->mProtocol:I

    if-ne v0, v1, :cond_0

    .line 1404
    iget-object v0, p0, Lcom/sec/android/allshare/TVMessageSender$1;->this$0:Lcom/sec/android/allshare/TVMessageSender;

    iget-object v0, v0, Lcom/sec/android/allshare/TVMessageSender;->mSocket:Ljava/net/Socket;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/allshare/TVMessageSender$1;->this$0:Lcom/sec/android/allshare/TVMessageSender;

    iget-object v0, v0, Lcom/sec/android/allshare/TVMessageSender;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1405
    iget-object v0, p0, Lcom/sec/android/allshare/TVMessageSender$1;->this$0:Lcom/sec/android/allshare/TVMessageSender;

    iget v1, v9, Lcom/sec/android/allshare/EventTouch;->mType:I

    iget v2, v9, Lcom/sec/android/allshare/EventTouch;->mDistance:I

    iget v3, v9, Lcom/sec/android/allshare/EventTouch;->mDegree:I

    iget v4, v9, Lcom/sec/android/allshare/EventTouch;->mX:I

    iget v5, v9, Lcom/sec/android/allshare/EventTouch;->mY:I

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/allshare/TVMessageSender;->sendTouchGestureSemanticEvent(IIIII)V

    goto/16 :goto_0

    .line 1408
    :cond_4
    const-string v0, "TVMessageSender"

    const-string v1, "CONTROLLER_EVENT_SEMANTIC : socket is not connected"

    invoke-static {v0, v1}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1414
    :sswitch_6
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v9           #mEvent:Lcom/sec/android/allshare/EventTouch;
    check-cast v9, Lcom/sec/android/allshare/EventTouch;

    .line 1416
    .restart local v9       #mEvent:Lcom/sec/android/allshare/EventTouch;
    iget-object v0, p0, Lcom/sec/android/allshare/TVMessageSender$1;->this$0:Lcom/sec/android/allshare/TVMessageSender;

    iget v0, v0, Lcom/sec/android/allshare/TVMessageSender;->mProtocol:I

    if-ne v0, v1, :cond_0

    .line 1417
    iget-object v0, p0, Lcom/sec/android/allshare/TVMessageSender$1;->this$0:Lcom/sec/android/allshare/TVMessageSender;

    iget-object v0, v0, Lcom/sec/android/allshare/TVMessageSender;->mSocket:Ljava/net/Socket;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/allshare/TVMessageSender$1;->this$0:Lcom/sec/android/allshare/TVMessageSender;

    iget-object v0, v0, Lcom/sec/android/allshare/TVMessageSender;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1418
    iget-object v0, p0, Lcom/sec/android/allshare/TVMessageSender$1;->this$0:Lcom/sec/android/allshare/TVMessageSender;

    iget v1, v9, Lcom/sec/android/allshare/EventTouch;->mType:I

    const/16 v2, 0xa

    const/4 v3, 0x0

    iget v4, v9, Lcom/sec/android/allshare/EventTouch;->mX:I

    iget v5, v9, Lcom/sec/android/allshare/EventTouch;->mY:I

    iget v6, v9, Lcom/sec/android/allshare/EventTouch;->mDX:I

    iget v7, v9, Lcom/sec/android/allshare/EventTouch;->mDY:I

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/allshare/TVMessageSender;->sendTouchGuestureEvent2012(IIIIIII)V

    goto/16 :goto_0

    .line 1421
    :cond_5
    const-string v0, "TVMessageSender"

    const-string v1, "CONTROLLER_EVENT_GESTURE : socket is not connected"

    invoke-static {v0, v1}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1429
    :sswitch_7
    iget-object v10, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v10           #mEventMouse:Lcom/sec/android/allshare/EventMouse;
    check-cast v10, Lcom/sec/android/allshare/EventMouse;

    .line 1430
    .restart local v10       #mEventMouse:Lcom/sec/android/allshare/EventMouse;
    iget-object v0, p0, Lcom/sec/android/allshare/TVMessageSender$1;->this$0:Lcom/sec/android/allshare/TVMessageSender;

    iget v0, v0, Lcom/sec/android/allshare/TVMessageSender;->mProtocol:I

    if-ne v0, v1, :cond_0

    .line 1431
    iget-object v0, p0, Lcom/sec/android/allshare/TVMessageSender$1;->this$0:Lcom/sec/android/allshare/TVMessageSender;

    iget-object v0, v0, Lcom/sec/android/allshare/TVMessageSender;->mSocket:Ljava/net/Socket;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/allshare/TVMessageSender$1;->this$0:Lcom/sec/android/allshare/TVMessageSender;

    iget-object v0, v0, Lcom/sec/android/allshare/TVMessageSender;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1432
    iget-object v0, p0, Lcom/sec/android/allshare/TVMessageSender$1;->this$0:Lcom/sec/android/allshare/TVMessageSender;

    iget v1, v10, Lcom/sec/android/allshare/EventMouse;->mType:I

    iget v2, v10, Lcom/sec/android/allshare/EventMouse;->mX:I

    iget v3, v10, Lcom/sec/android/allshare/EventMouse;->mY:I

    iget v4, v10, Lcom/sec/android/allshare/EventMouse;->mDX:I

    iget v5, v10, Lcom/sec/android/allshare/EventMouse;->mDY:I

    iget v6, v10, Lcom/sec/android/allshare/EventMouse;->mButton:I

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/allshare/TVMessageSender;->sendMouseProcess(IIIIII)V

    goto/16 :goto_0

    .line 1435
    :cond_6
    const-string v0, "TVMessageSender"

    const-string v1, "CONTROLLER_EVENT_MOUSE : socket is not connected"

    invoke-static {v0, v1}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1442
    :sswitch_8
    iget-object v0, p0, Lcom/sec/android/allshare/TVMessageSender$1;->this$0:Lcom/sec/android/allshare/TVMessageSender;

    iget-object v0, v0, Lcom/sec/android/allshare/TVMessageSender;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1443
    iget-object v0, p0, Lcom/sec/android/allshare/TVMessageSender$1;->this$0:Lcom/sec/android/allshare/TVMessageSender;

    invoke-virtual {v0}, Lcom/sec/android/allshare/TVMessageSender;->sendMouseCreate()V

    goto/16 :goto_0

    .line 1445
    :cond_7
    const-string v0, "TVMessageSender"

    const-string v1, "CONTROLLER_EVENT_MOUSE_CREATE : socket is not connected"

    invoke-static {v0, v1}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1451
    :sswitch_9
    iget-object v0, p0, Lcom/sec/android/allshare/TVMessageSender$1;->this$0:Lcom/sec/android/allshare/TVMessageSender;

    iget-object v0, v0, Lcom/sec/android/allshare/TVMessageSender;->mSocket:Ljava/net/Socket;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/allshare/TVMessageSender$1;->this$0:Lcom/sec/android/allshare/TVMessageSender;

    iget-object v0, v0, Lcom/sec/android/allshare/TVMessageSender;->mSocket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1452
    iget-object v0, p0, Lcom/sec/android/allshare/TVMessageSender$1;->this$0:Lcom/sec/android/allshare/TVMessageSender;

    invoke-virtual {v0}, Lcom/sec/android/allshare/TVMessageSender;->sendMouseDestroy()V

    goto/16 :goto_0

    .line 1454
    :cond_8
    const-string v0, "TVMessageSender"

    const-string v1, "CONTROLLER_EVENT_MOUSE_DESTROY : socket is not connected"

    invoke-static {v0, v1}, Lcom/sec/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1461
    :sswitch_a
    iget-object v0, p0, Lcom/sec/android/allshare/TVMessageSender$1;->this$0:Lcom/sec/android/allshare/TVMessageSender;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/sec/android/allshare/TVMessageSender;->setTouchGestureTouchMode(I)V

    goto/16 :goto_0

    .line 1341
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_4
        0x2 -> :sswitch_7
        0x5 -> :sswitch_6
        0x6 -> :sswitch_5
        0x8 -> :sswitch_0
        0x9 -> :sswitch_a
        0xe -> :sswitch_3
        0xf -> :sswitch_8
        0x10 -> :sswitch_9
        0x34 -> :sswitch_1
    .end sparse-switch
.end method
