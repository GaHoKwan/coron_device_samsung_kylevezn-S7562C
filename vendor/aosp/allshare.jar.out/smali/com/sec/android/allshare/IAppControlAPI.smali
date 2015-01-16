.class Lcom/sec/android/allshare/IAppControlAPI;
.super Ljava/lang/Object;
.source "IAppControlAPI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/allshare/IAppControlAPI$IControlEventListener;
    }
.end annotation


# static fields
.field private static final DTVSERVER_PORT:I = 0xd6d8

.field private static final TAG:Ljava/lang/String; = "IAppControlAPI"


# instance fields
.field private bIsRunningConnection:Z

.field private mDeviceId:Ljava/lang/String;

.field private mEventListener:Lcom/sec/android/allshare/IAppControlAPI$IControlEventListener;

.field public mExcutor:Ljava/util/concurrent/ExecutorService;

.field private mLock:Ljava/lang/Object;

.field private mServerIp:Ljava/lang/String;

.field private mSetIpaddress:I

.field mTvMsgListener:Lcom/sec/android/allshare/TVMessageListener;

.field mTvMsgSender:Lcom/sec/android/allshare/TVMessageSender;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/android/allshare/IAppControlAPI;->mServerIp:Ljava/lang/String;

    .line 51
    iput-object v1, p0, Lcom/sec/android/allshare/IAppControlAPI;->mTvMsgSender:Lcom/sec/android/allshare/TVMessageSender;

    .line 53
    iput-object v1, p0, Lcom/sec/android/allshare/IAppControlAPI;->mTvMsgListener:Lcom/sec/android/allshare/TVMessageListener;

    .line 55
    iput v2, p0, Lcom/sec/android/allshare/IAppControlAPI;->mSetIpaddress:I

    .line 59
    iput-boolean v2, p0, Lcom/sec/android/allshare/IAppControlAPI;->bIsRunningConnection:Z

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/allshare/IAppControlAPI;->mLock:Ljava/lang/Object;

    .line 63
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/allshare/IAppControlAPI;->mExcutor:Ljava/util/concurrent/ExecutorService;

    .line 74
    iput-object v1, p0, Lcom/sec/android/allshare/IAppControlAPI;->mEventListener:Lcom/sec/android/allshare/IAppControlAPI$IControlEventListener;

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/allshare/IAppControlAPI;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sec/android/allshare/IAppControlAPI;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/allshare/IAppControlAPI;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/sec/android/allshare/IAppControlAPI;->createControlReceiver()V

    return-void
.end method

.method static synthetic access$202(Lcom/sec/android/allshare/IAppControlAPI;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/sec/android/allshare/IAppControlAPI;->bIsRunningConnection:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/allshare/IAppControlAPI;)Lcom/sec/android/allshare/IAppControlAPI$IControlEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sec/android/allshare/IAppControlAPI;->mEventListener:Lcom/sec/android/allshare/IAppControlAPI$IControlEventListener;

    return-object v0
.end method

.method private createControlReceiver()V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/sec/android/allshare/IAppControlAPI;->mTvMsgListener:Lcom/sec/android/allshare/TVMessageListener;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/allshare/IAppControlAPI;->mTvMsgSender:Lcom/sec/android/allshare/TVMessageSender;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/sec/android/allshare/IAppControlAPI;->mTvMsgSender:Lcom/sec/android/allshare/TVMessageSender;

    invoke-direct {p0, v0}, Lcom/sec/android/allshare/IAppControlAPI;->initControlReceiver(Lcom/sec/android/allshare/TVMessageSender;)V

    .line 223
    :cond_0
    return-void
.end method

.method private initControl(Ljava/lang/String;)V
    .locals 1
    .parameter "Deviceid"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/sec/android/allshare/IAppControlAPI;->mDeviceId:Ljava/lang/String;

    .line 117
    new-instance v0, Lcom/sec/android/allshare/TVMessageSender;

    invoke-direct {v0, p0}, Lcom/sec/android/allshare/TVMessageSender;-><init>(Lcom/sec/android/allshare/IAppControlAPI;)V

    iput-object v0, p0, Lcom/sec/android/allshare/IAppControlAPI;->mTvMsgSender:Lcom/sec/android/allshare/TVMessageSender;

    .line 118
    iget-object v0, p0, Lcom/sec/android/allshare/IAppControlAPI;->mTvMsgSender:Lcom/sec/android/allshare/TVMessageSender;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 120
    return-void
.end method

.method private initControlReceiver(Lcom/sec/android/allshare/TVMessageSender;)V
    .locals 2
    .parameter "tl"

    .prologue
    .line 128
    new-instance v0, Lcom/sec/android/allshare/TVMessageListener;

    invoke-direct {v0, p1}, Lcom/sec/android/allshare/TVMessageListener;-><init>(Lcom/sec/android/allshare/TVMessageSender;)V

    iput-object v0, p0, Lcom/sec/android/allshare/IAppControlAPI;->mTvMsgListener:Lcom/sec/android/allshare/TVMessageListener;

    .line 129
    iget-object v0, p0, Lcom/sec/android/allshare/IAppControlAPI;->mTvMsgListener:Lcom/sec/android/allshare/TVMessageListener;

    iget-object v1, p0, Lcom/sec/android/allshare/IAppControlAPI;->mEventListener:Lcom/sec/android/allshare/IAppControlAPI$IControlEventListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/allshare/TVMessageListener;->setOnEventListener(Lcom/sec/android/allshare/IAppControlAPI$IControlEventListener;)V

    .line 130
    iget-object v0, p0, Lcom/sec/android/allshare/IAppControlAPI;->mTvMsgListener:Lcom/sec/android/allshare/TVMessageListener;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 131
    return-void
.end method

.method private sendMsgToDevice(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/sec/android/allshare/IAppControlAPI;->mTvMsgSender:Lcom/sec/android/allshare/TVMessageSender;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/allshare/IAppControlAPI;->mTvMsgSender:Lcom/sec/android/allshare/TVMessageSender;

    iget-object v0, v0, Lcom/sec/android/allshare/TVMessageSender;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/sec/android/allshare/IAppControlAPI;->mTvMsgSender:Lcom/sec/android/allshare/TVMessageSender;

    iget-object v0, v0, Lcom/sec/android/allshare/TVMessageSender;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 141
    :cond_0
    return-void
.end method

.method private setIpaddress(Ljava/lang/String;I)V
    .locals 1
    .parameter "ipaddress"
    .parameter "port"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/sec/android/allshare/IAppControlAPI;->mServerIp:Ljava/lang/String;

    .line 104
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/allshare/IAppControlAPI;->mSetIpaddress:I

    .line 105
    return-void
.end method


# virtual methods
.method public addControlEventListener(Lcom/sec/android/allshare/IAppControlAPI$IControlEventListener;)Z
    .locals 2
    .parameter "listener"

    .prologue
    .line 252
    iget-object v0, p0, Lcom/sec/android/allshare/IAppControlAPI;->mTvMsgListener:Lcom/sec/android/allshare/TVMessageListener;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/sec/android/allshare/IAppControlAPI;->mTvMsgListener:Lcom/sec/android/allshare/TVMessageListener;

    iget-object v1, p0, Lcom/sec/android/allshare/IAppControlAPI;->mEventListener:Lcom/sec/android/allshare/IAppControlAPI$IControlEventListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/allshare/TVMessageListener;->setOnEventListener(Lcom/sec/android/allshare/IAppControlAPI$IControlEventListener;)V

    .line 255
    const/4 v0, 0x1

    .line 257
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeControl()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 279
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 280
    .local v0, msg:Landroid/os/Message;
    if-eqz v0, :cond_0

    .line 281
    iput v2, v0, Landroid/os/Message;->what:I

    .line 284
    :cond_0
    invoke-direct {p0, v0}, Lcom/sec/android/allshare/IAppControlAPI;->sendMsgToDevice(Landroid/os/Message;)V

    .line 285
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/allshare/IAppControlAPI;->mTvMsgListener:Lcom/sec/android/allshare/TVMessageListener;

    .line 287
    iput v2, p0, Lcom/sec/android/allshare/IAppControlAPI;->mSetIpaddress:I

    .line 288
    return-void
.end method

.method public removeControlEventListener(Lcom/sec/android/allshare/IAppControlAPI$IControlEventListener;)Z
    .locals 1
    .parameter "listener"

    .prologue
    .line 271
    const/4 v0, 0x1

    return v0
.end method

.method public sendAuthentication()V
    .locals 2

    .prologue
    .line 340
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 341
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x34

    iput v1, v0, Landroid/os/Message;->what:I

    .line 342
    invoke-direct {p0, v0}, Lcom/sec/android/allshare/IAppControlAPI;->sendMsgToDevice(Landroid/os/Message;)V

    .line 343
    return-void
.end method

.method public sendIntCommand(II)V
    .locals 1
    .parameter "command_type"
    .parameter "keybutton_cmd"

    .prologue
    .line 395
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 396
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 397
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 399
    invoke-direct {p0, v0}, Lcom/sec/android/allshare/IAppControlAPI;->sendMsgToDevice(Landroid/os/Message;)V

    .line 400
    return-void
.end method

.method public sendKeyEvent(I)V
    .locals 2
    .parameter "keycode"

    .prologue
    .line 350
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 351
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 352
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 354
    invoke-direct {p0, v0}, Lcom/sec/android/allshare/IAppControlAPI;->sendMsgToDevice(Landroid/os/Message;)V

    .line 355
    return-void
.end method

.method public sendKeyboardEnd()V
    .locals 2

    .prologue
    .line 443
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 444
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x8

    iput v1, v0, Landroid/os/Message;->what:I

    .line 446
    invoke-direct {p0, v0}, Lcom/sec/android/allshare/IAppControlAPI;->sendMsgToDevice(Landroid/os/Message;)V

    .line 447
    return-void
.end method

.method public sendKeyboardEvent(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 362
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 363
    .local v0, m_msg:Landroid/os/Message;
    move-object v0, p1

    .line 364
    invoke-direct {p0, v0}, Lcom/sec/android/allshare/IAppControlAPI;->sendMsgToDevice(Landroid/os/Message;)V

    .line 365
    return-void
.end method

.method public sendKeyboardStringCommand(Ljava/lang/String;I)V
    .locals 2
    .parameter "keycode"
    .parameter "encoding"

    .prologue
    .line 373
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 374
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 375
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 376
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 378
    invoke-direct {p0, v0}, Lcom/sec/android/allshare/IAppControlAPI;->sendMsgToDevice(Landroid/os/Message;)V

    .line 379
    return-void
.end method

.method public sendMouseCreate()V
    .locals 2

    .prologue
    .line 450
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 451
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0xf

    iput v1, v0, Landroid/os/Message;->what:I

    .line 453
    invoke-direct {p0, v0}, Lcom/sec/android/allshare/IAppControlAPI;->sendMsgToDevice(Landroid/os/Message;)V

    .line 454
    return-void
.end method

.method public sendMouseDestroy()V
    .locals 2

    .prologue
    .line 457
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 458
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x10

    iput v1, v0, Landroid/os/Message;->what:I

    .line 460
    invoke-direct {p0, v0}, Lcom/sec/android/allshare/IAppControlAPI;->sendMsgToDevice(Landroid/os/Message;)V

    .line 461
    return-void
.end method

.method public sendMouseProcess(IIIIII)V
    .locals 3
    .parameter "eventType"
    .parameter "x"
    .parameter "y"
    .parameter "dx"
    .parameter "dy"
    .parameter "button"

    .prologue
    .line 464
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 466
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 468
    new-instance v0, Lcom/sec/android/allshare/EventMouse;

    invoke-direct {v0}, Lcom/sec/android/allshare/EventMouse;-><init>()V

    .line 469
    .local v0, ieventMouse:Lcom/sec/android/allshare/EventMouse;
    iput p1, v0, Lcom/sec/android/allshare/EventMouse;->mType:I

    .line 470
    iput p2, v0, Lcom/sec/android/allshare/EventMouse;->mX:I

    .line 471
    iput p3, v0, Lcom/sec/android/allshare/EventMouse;->mY:I

    .line 472
    iput p4, v0, Lcom/sec/android/allshare/EventMouse;->mDX:I

    .line 473
    iput p5, v0, Lcom/sec/android/allshare/EventMouse;->mDY:I

    .line 474
    iput p6, v0, Lcom/sec/android/allshare/EventMouse;->mButton:I

    .line 475
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 477
    invoke-direct {p0, v1}, Lcom/sec/android/allshare/IAppControlAPI;->sendMsgToDevice(Landroid/os/Message;)V

    .line 478
    return-void
.end method

.method public sendMultiTouchEvent(IDIII)V
    .locals 3
    .parameter "eventType"
    .parameter "zoomRate"
    .parameter "angle"
    .parameter "cx"
    .parameter "cy"

    .prologue
    .line 424
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 426
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x6

    iput v2, v1, Landroid/os/Message;->what:I

    .line 428
    new-instance v0, Lcom/sec/android/allshare/EventTouch;

    invoke-direct {v0}, Lcom/sec/android/allshare/EventTouch;-><init>()V

    .line 429
    .local v0, ieventTouch:Lcom/sec/android/allshare/EventTouch;
    iput p1, v0, Lcom/sec/android/allshare/EventTouch;->mType:I

    .line 430
    double-to-int v2, p2

    iput v2, v0, Lcom/sec/android/allshare/EventTouch;->mDistance:I

    .line 431
    iput p4, v0, Lcom/sec/android/allshare/EventTouch;->mDegree:I

    .line 432
    iput p5, v0, Lcom/sec/android/allshare/EventTouch;->mX:I

    .line 433
    iput p6, v0, Lcom/sec/android/allshare/EventTouch;->mY:I

    .line 435
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 437
    invoke-direct {p0, v1}, Lcom/sec/android/allshare/IAppControlAPI;->sendMsgToDevice(Landroid/os/Message;)V

    .line 439
    return-void
.end method

.method public sendRemoteControlKey(Ljava/lang/String;I)V
    .locals 2
    .parameter "keycode"
    .parameter "mode"

    .prologue
    .line 382
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 383
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0xe

    iput v1, v0, Landroid/os/Message;->what:I

    .line 384
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 385
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 387
    invoke-direct {p0, v0}, Lcom/sec/android/allshare/IAppControlAPI;->sendMsgToDevice(Landroid/os/Message;)V

    .line 388
    return-void
.end method

.method public sendSocketIsNotConnectedEvent()V
    .locals 2

    .prologue
    .line 77
    new-instance v0, Lcom/sec/android/allshare/EventSync;

    invoke-direct {v0}, Lcom/sec/android/allshare/EventSync;-><init>()V

    .line 78
    .local v0, event:Lcom/sec/android/allshare/EventSync;
    const/16 v1, 0x270f

    iput v1, v0, Lcom/sec/android/allshare/EventSync;->mWhat:I

    .line 80
    iget-object v1, p0, Lcom/sec/android/allshare/IAppControlAPI;->mEventListener:Lcom/sec/android/allshare/IAppControlAPI$IControlEventListener;

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/sec/android/allshare/IAppControlAPI;->mEventListener:Lcom/sec/android/allshare/IAppControlAPI$IControlEventListener;

    invoke-interface {v1, v0}, Lcom/sec/android/allshare/IAppControlAPI$IControlEventListener;->controlEvent(Lcom/sec/android/allshare/EventSync;)V

    .line 83
    :cond_0
    return-void
.end method

.method public sendTouchGestureEvent(IIIII)V
    .locals 3
    .parameter "nType"
    .parameter "x"
    .parameter "y"
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 403
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 405
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x5

    iput v2, v1, Landroid/os/Message;->what:I

    .line 407
    new-instance v0, Lcom/sec/android/allshare/EventTouch;

    invoke-direct {v0}, Lcom/sec/android/allshare/EventTouch;-><init>()V

    .line 408
    .local v0, ieventTouch:Lcom/sec/android/allshare/EventTouch;
    iput p1, v0, Lcom/sec/android/allshare/EventTouch;->mType:I

    .line 409
    iput p2, v0, Lcom/sec/android/allshare/EventTouch;->mX:I

    .line 410
    iput p3, v0, Lcom/sec/android/allshare/EventTouch;->mY:I

    .line 411
    iput p4, v0, Lcom/sec/android/allshare/EventTouch;->mDX:I

    .line 412
    iput p5, v0, Lcom/sec/android/allshare/EventTouch;->mDY:I

    .line 413
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 415
    invoke-direct {p0, v1}, Lcom/sec/android/allshare/IAppControlAPI;->sendMsgToDevice(Landroid/os/Message;)V

    .line 416
    return-void
.end method

.method public setOnEventListener(Lcom/sec/android/allshare/IAppControlAPI$IControlEventListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/sec/android/allshare/IAppControlAPI;->mEventListener:Lcom/sec/android/allshare/IAppControlAPI$IControlEventListener;

    .line 87
    return-void
.end method

.method public setTouchGestureTouchMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 328
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 329
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x9

    iput v1, v0, Landroid/os/Message;->what:I

    .line 330
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 331
    invoke-direct {p0, v0}, Lcom/sec/android/allshare/IAppControlAPI;->sendMsgToDevice(Landroid/os/Message;)V

    .line 332
    return-void
.end method

.method public startControl(Lcom/sec/android/allshare/NetworkSocketInfo;Ljava/lang/String;)V
    .locals 2
    .parameter "netinfo"
    .parameter "devicdid"

    .prologue
    .line 150
    iget-object v0, p1, Lcom/sec/android/allshare/NetworkSocketInfo;->mIpAddress:Ljava/lang/String;

    iget v1, p1, Lcom/sec/android/allshare/NetworkSocketInfo;->mPort:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/allshare/IAppControlAPI;->setIpaddress(Ljava/lang/String;I)V

    .line 152
    invoke-direct {p0, p2}, Lcom/sec/android/allshare/IAppControlAPI;->initControl(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/sec/android/allshare/IAppControlAPI;->mTvMsgSender:Lcom/sec/android/allshare/TVMessageSender;

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/sec/android/allshare/IAppControlAPI;->mTvMsgListener:Lcom/sec/android/allshare/TVMessageListener;

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/sec/android/allshare/IAppControlAPI;->mTvMsgSender:Lcom/sec/android/allshare/TVMessageSender;

    invoke-direct {p0, v0}, Lcom/sec/android/allshare/IAppControlAPI;->initControlReceiver(Lcom/sec/android/allshare/TVMessageSender;)V

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/sec/android/allshare/IAppControlAPI;->mExcutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sec/android/allshare/IAppControlAPI$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/allshare/IAppControlAPI$1;-><init>(Lcom/sec/android/allshare/IAppControlAPI;Lcom/sec/android/allshare/NetworkSocketInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 167
    :cond_1
    return-void
.end method

.method public startControl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "mac"
    .parameter "ipaddress"
    .parameter "deviceid"

    .prologue
    const v2, 0xd6d8

    const/4 v1, 0x1

    .line 177
    iput-boolean v1, p0, Lcom/sec/android/allshare/IAppControlAPI;->bIsRunningConnection:Z

    .line 179
    new-instance v0, Lcom/sec/android/allshare/NetworkSocketInfo;

    invoke-direct {v0}, Lcom/sec/android/allshare/NetworkSocketInfo;-><init>()V

    .line 182
    .local v0, inet:Lcom/sec/android/allshare/NetworkSocketInfo;
    invoke-direct {p0, p2, v2}, Lcom/sec/android/allshare/IAppControlAPI;->setIpaddress(Ljava/lang/String;I)V

    .line 183
    iput-object p1, v0, Lcom/sec/android/allshare/NetworkSocketInfo;->mMacAddr:Ljava/lang/String;

    .line 185
    iput-object p2, v0, Lcom/sec/android/allshare/NetworkSocketInfo;->mIpAddress:Ljava/lang/String;

    .line 186
    iput v2, v0, Lcom/sec/android/allshare/NetworkSocketInfo;->mPort:I

    .line 187
    iput v1, v0, Lcom/sec/android/allshare/NetworkSocketInfo;->mProtocol:I

    .line 189
    invoke-direct {p0, p3}, Lcom/sec/android/allshare/IAppControlAPI;->initControl(Ljava/lang/String;)V

    .line 191
    iget-object v2, p0, Lcom/sec/android/allshare/IAppControlAPI;->mTvMsgSender:Lcom/sec/android/allshare/TVMessageSender;

    if-eqz v2, :cond_0

    .line 193
    iget-object v2, p0, Lcom/sec/android/allshare/IAppControlAPI;->mExcutor:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/sec/android/allshare/IAppControlAPI$2;

    invoke-direct {v3, p0, v0}, Lcom/sec/android/allshare/IAppControlAPI$2;-><init>(Lcom/sec/android/allshare/IAppControlAPI;Lcom/sec/android/allshare/NetworkSocketInfo;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 211
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startControlClient(Lcom/sec/android/allshare/NetworkSocketInfo;)I
    .locals 3
    .parameter "netinfo"

    .prologue
    const/4 v0, 0x1

    .line 296
    iget-object v1, p1, Lcom/sec/android/allshare/NetworkSocketInfo;->mIpAddress:Ljava/lang/String;

    iget v2, p1, Lcom/sec/android/allshare/NetworkSocketInfo;->mPort:I

    invoke-direct {p0, v1, v2}, Lcom/sec/android/allshare/IAppControlAPI;->setIpaddress(Ljava/lang/String;I)V

    .line 297
    iget v1, p0, Lcom/sec/android/allshare/IAppControlAPI;->mSetIpaddress:I

    if-ne v1, v0, :cond_0

    .line 302
    :cond_0
    iget v1, p1, Lcom/sec/android/allshare/NetworkSocketInfo;->mProtocol:I

    if-ne v1, v0, :cond_1

    .line 303
    iget-object v1, p0, Lcom/sec/android/allshare/IAppControlAPI;->mDeviceId:Ljava/lang/String;

    const-string v2, "D0000000001"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/allshare/IAppControlAPI;->mTvMsgSender:Lcom/sec/android/allshare/TVMessageSender;

    if-eqz v1, :cond_1

    .line 304
    iget-object v1, p0, Lcom/sec/android/allshare/IAppControlAPI;->mExcutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/sec/android/allshare/IAppControlAPI$3;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/allshare/IAppControlAPI$3;-><init>(Lcom/sec/android/allshare/IAppControlAPI;Lcom/sec/android/allshare/NetworkSocketInfo;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 321
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public stopControl()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 229
    iget-boolean v1, p0, Lcom/sec/android/allshare/IAppControlAPI;->bIsRunningConnection:Z

    if-ne v1, v0, :cond_0

    .line 230
    const/4 v0, 0x0

    .line 240
    :goto_0
    return v0

    .line 233
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/allshare/IAppControlAPI;->removeControl()V

    .line 235
    iget-object v1, p0, Lcom/sec/android/allshare/IAppControlAPI;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 236
    const/4 v2, 0x0

    :try_start_0
    iput-object v2, p0, Lcom/sec/android/allshare/IAppControlAPI;->mTvMsgSender:Lcom/sec/android/allshare/TVMessageSender;

    .line 237
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/allshare/IAppControlAPI;->mTvMsgListener:Lcom/sec/android/allshare/TVMessageListener;

    .line 238
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
