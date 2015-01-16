.class Lcom/sec/android/seccamera/SecCamera$EventHandler;
.super Landroid/os/Handler;
.source "SecCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/seccamera/SecCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field private mCamera:Lcom/sec/android/seccamera/SecCamera;

.field final synthetic this$0:Lcom/sec/android/seccamera/SecCamera;


# direct methods
.method public constructor <init>(Lcom/sec/android/seccamera/SecCamera;Lcom/sec/android/seccamera/SecCamera;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "c"
    .parameter "looper"

    .prologue
    .line 1344
    iput-object p1, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    .line 1345
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1346
    iput-object p2, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->mCamera:Lcom/sec/android/seccamera/SecCamera;

    .line 1347
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1351
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    .line 1760
    const-string v3, "SecCamera-JNI-Java"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown message type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1763
    :cond_0
    :goto_0
    return-void

    .line 1353
    :sswitch_0
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mShutterCallback:Lcom/sec/android/seccamera/SecCamera$ShutterCallback;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$000(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$ShutterCallback;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1354
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mShutterCallback:Lcom/sec/android/seccamera/SecCamera$ShutterCallback;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$000(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$ShutterCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/seccamera/SecCamera$ShutterCallback;->onShutter()V

    goto :goto_0

    .line 1359
    :sswitch_1
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mRawImageCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$100(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$PictureCallback;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1360
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mRawImageCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$100(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$PictureCallback;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    iget-object v5, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->mCamera:Lcom/sec/android/seccamera/SecCamera;

    invoke-interface {v4, v3, v5}, Lcom/sec/android/seccamera/SecCamera$PictureCallback;->onPictureTaken([BLcom/sec/android/seccamera/SecCamera;)V

    goto :goto_0

    .line 1365
    :sswitch_2
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mJpegCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$200(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$PictureCallback;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1366
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mJpegCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$200(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$PictureCallback;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    iget-object v5, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->mCamera:Lcom/sec/android/seccamera/SecCamera;

    invoke-interface {v4, v3, v5}, Lcom/sec/android/seccamera/SecCamera$PictureCallback;->onPictureTaken([BLcom/sec/android/seccamera/SecCamera;)V

    goto :goto_0

    .line 1371
    :sswitch_3
    iget-object v5, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mPreviewCallback:Lcom/sec/android/seccamera/SecCamera$PreviewCallback;
    invoke-static {v5}, Lcom/sec/android/seccamera/SecCamera;->access$300(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$PreviewCallback;

    move-result-object v2

    .line 1372
    .local v2, pCb:Lcom/sec/android/seccamera/SecCamera$PreviewCallback;
    if-eqz v2, :cond_0

    .line 1373
    iget-object v5, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOneShot:Z
    invoke-static {v5}, Lcom/sec/android/seccamera/SecCamera;->access$400(Lcom/sec/android/seccamera/SecCamera;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1377
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    const/4 v4, 0x0

    #setter for: Lcom/sec/android/seccamera/SecCamera;->mPreviewCallback:Lcom/sec/android/seccamera/SecCamera$PreviewCallback;
    invoke-static {v3, v4}, Lcom/sec/android/seccamera/SecCamera;->access$302(Lcom/sec/android/seccamera/SecCamera;Lcom/sec/android/seccamera/SecCamera$PreviewCallback;)Lcom/sec/android/seccamera/SecCamera$PreviewCallback;

    .line 1384
    :cond_1
    :goto_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->mCamera:Lcom/sec/android/seccamera/SecCamera;

    invoke-interface {v2, v3, v4}, Lcom/sec/android/seccamera/SecCamera$PreviewCallback;->onPreviewFrame([BLcom/sec/android/seccamera/SecCamera;)V

    goto :goto_0

    .line 1378
    :cond_2
    iget-object v5, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mWithBuffer:Z
    invoke-static {v5}, Lcom/sec/android/seccamera/SecCamera;->access$500(Lcom/sec/android/seccamera/SecCamera;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1382
    iget-object v5, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #calls: Lcom/sec/android/seccamera/SecCamera;->setHasPreviewCallback(ZZZ)V
    invoke-static {v5, v3, v4, v4}, Lcom/sec/android/seccamera/SecCamera;->access$600(Lcom/sec/android/seccamera/SecCamera;ZZZ)V

    goto :goto_1

    .line 1389
    .end local v2           #pCb:Lcom/sec/android/seccamera/SecCamera$PreviewCallback;
    :sswitch_4
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mPostviewCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$700(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$PictureCallback;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1390
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mPostviewCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$700(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$PictureCallback;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    iget-object v5, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->mCamera:Lcom/sec/android/seccamera/SecCamera;

    invoke-interface {v4, v3, v5}, Lcom/sec/android/seccamera/SecCamera$PictureCallback;->onPictureTaken([BLcom/sec/android/seccamera/SecCamera;)V

    goto/16 :goto_0

    .line 1395
    :sswitch_5
    const/4 v0, 0x0

    .line 1396
    .local v0, cb:Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mAutoFocusCallbackLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$800(Lcom/sec/android/seccamera/SecCamera;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 1397
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mAutoFocusCallback:Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$900(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;

    move-result-object v0

    .line 1398
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1399
    if-eqz v0, :cond_0

    .line 1401
    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->mCamera:Lcom/sec/android/seccamera/SecCamera;

    invoke-interface {v0, v3, v4}, Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;->onAutoFocus(ILcom/sec/android/seccamera/SecCamera;)V

    goto/16 :goto_0

    .line 1398
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 1406
    .end local v0           #cb:Lcom/sec/android/seccamera/SecCamera$AutoFocusCallback;
    :sswitch_6
    iget-object v5, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mZoomListener:Lcom/sec/android/seccamera/SecCamera$OnZoomChangeListener;
    invoke-static {v5}, Lcom/sec/android/seccamera/SecCamera;->access$1000(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnZoomChangeListener;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1407
    iget-object v5, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mZoomListener:Lcom/sec/android/seccamera/SecCamera$OnZoomChangeListener;
    invoke-static {v5}, Lcom/sec/android/seccamera/SecCamera;->access$1000(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnZoomChangeListener;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    iget v7, p1, Landroid/os/Message;->arg2:I

    if-eqz v7, :cond_3

    :goto_2
    iget-object v4, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->mCamera:Lcom/sec/android/seccamera/SecCamera;

    invoke-interface {v5, v6, v3, v4}, Lcom/sec/android/seccamera/SecCamera$OnZoomChangeListener;->onZoomChange(IZLcom/sec/android/seccamera/SecCamera;)V

    goto/16 :goto_0

    :cond_3
    move v3, v4

    goto :goto_2

    .line 1412
    :sswitch_7
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mFaceListener:Lcom/sec/android/seccamera/SecCamera$FaceDetectionListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$1100(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$FaceDetectionListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1413
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mFaceListener:Lcom/sec/android/seccamera/SecCamera$FaceDetectionListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$1100(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$FaceDetectionListener;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [Lcom/sec/android/seccamera/SecCamera$Face;

    check-cast v3, [Lcom/sec/android/seccamera/SecCamera$Face;

    iget-object v5, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->mCamera:Lcom/sec/android/seccamera/SecCamera;

    invoke-interface {v4, v3, v5}, Lcom/sec/android/seccamera/SecCamera$FaceDetectionListener;->onFaceDetection([Lcom/sec/android/seccamera/SecCamera$Face;Lcom/sec/android/seccamera/SecCamera;)V

    goto/16 :goto_0

    .line 1418
    :sswitch_8
    const-string v3, "SecCamera-JNI-Java"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mErrorCallback:Lcom/sec/android/seccamera/SecCamera$ErrorCallback;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$1200(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$ErrorCallback;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1420
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mErrorCallback:Lcom/sec/android/seccamera/SecCamera$ErrorCallback;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$1200(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$ErrorCallback;

    move-result-object v3

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget-object v6, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->mCamera:Lcom/sec/android/seccamera/SecCamera;

    invoke-interface {v3, v5, v6}, Lcom/sec/android/seccamera/SecCamera$ErrorCallback;->onError(ILcom/sec/android/seccamera/SecCamera;)V

    .line 1423
    :cond_4
    iget v3, p1, Landroid/os/Message;->arg1:I

    const/16 v5, 0xc8

    if-ne v3, v5, :cond_0

    .line 1425
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #calls: Lcom/sec/android/seccamera/SecCamera;->native_release()V
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$1300(Lcom/sec/android/seccamera/SecCamera;)V

    .line 1426
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #setter for: Lcom/sec/android/seccamera/SecCamera;->mFaceDetectionRunning:Z
    invoke-static {v3, v4}, Lcom/sec/android/seccamera/SecCamera;->access$1402(Lcom/sec/android/seccamera/SecCamera;Z)Z

    goto/16 :goto_0

    .line 1431
    :sswitch_9
    iget-object v5, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mAutoFocusMoveCallback:Lcom/sec/android/seccamera/SecCamera$AutoFocusMoveCallback;
    invoke-static {v5}, Lcom/sec/android/seccamera/SecCamera;->access$1500(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$AutoFocusMoveCallback;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1432
    iget-object v5, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mAutoFocusMoveCallback:Lcom/sec/android/seccamera/SecCamera$AutoFocusMoveCallback;
    invoke-static {v5}, Lcom/sec/android/seccamera/SecCamera;->access$1500(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$AutoFocusMoveCallback;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-nez v6, :cond_5

    :goto_3
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->mCamera:Lcom/sec/android/seccamera/SecCamera;

    invoke-interface {v5, v4, v3}, Lcom/sec/android/seccamera/SecCamera$AutoFocusMoveCallback;->onAutoFocusMoving(ZLcom/sec/android/seccamera/SecCamera;)V

    goto/16 :goto_0

    :cond_5
    move v4, v3

    goto :goto_3

    .line 1439
    :sswitch_a
    const-string v3, "SecCamera-JNI-Java"

    const-string v4, "SAMSUNG_SHOT_COMPRESSED_IMAGE"

    invoke-static {v3, v4}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mJpegCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$200(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$PictureCallback;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1441
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mJpegCallback:Lcom/sec/android/seccamera/SecCamera$PictureCallback;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$200(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$PictureCallback;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    iget-object v5, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->mCamera:Lcom/sec/android/seccamera/SecCamera;

    invoke-interface {v4, v3, v5}, Lcom/sec/android/seccamera/SecCamera$PictureCallback;->onPictureTaken([BLcom/sec/android/seccamera/SecCamera;)V

    goto/16 :goto_0

    .line 1446
    :sswitch_b
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$1600(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1447
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$1600(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;

    move-result-object v3

    invoke-interface {v3, v4}, Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;->onPanoramaError(I)V

    goto/16 :goto_0

    .line 1451
    :sswitch_c
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$1600(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1452
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$1600(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v3, v4}, Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;->onPanoramaDirectionChanged(I)V

    goto/16 :goto_0

    .line 1456
    :sswitch_d
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$1600(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1457
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$1600(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;->onPanoramaRectChanged(II)V

    goto/16 :goto_0

    .line 1461
    :sswitch_e
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$1600(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1462
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$1600(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;->onPanoramaCapturedNew()V

    goto/16 :goto_0

    .line 1466
    :sswitch_f
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$1600(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1467
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$1600(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v3, v4}, Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;->onPanoramaProgressStitching(I)V

    goto/16 :goto_0

    .line 1471
    :sswitch_10
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$1600(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1472
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$1600(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;->onPanoramaCaptured()V

    goto/16 :goto_0

    .line 1476
    :sswitch_11
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$1600(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1477
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$1600(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    invoke-interface {v4, v3}, Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;->onPanoramaLowResolutionData([B)V

    goto/16 :goto_0

    .line 1481
    :sswitch_12
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$1600(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1482
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$1600(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    invoke-interface {v4, v3}, Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;->onPanoramaLivePreviewData([B)V

    goto/16 :goto_0

    .line 1486
    :sswitch_13
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$1600(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1487
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$1600(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;->onPanoramaCapturedMaxFrames()V

    goto/16 :goto_0

    .line 1491
    :sswitch_14
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOn3DPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$1700(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1492
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOn3DPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$1700(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v3, v4}, Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;->on3DPanoramaError(I)V

    goto/16 :goto_0

    .line 1496
    :sswitch_15
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOn3DPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$1700(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1497
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOn3DPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$1700(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v3, v4}, Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;->on3DPanoramaDirectionChanged(I)V

    goto/16 :goto_0

    .line 1501
    :sswitch_16
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOn3DPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$1700(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1502
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOn3DPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$1700(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;->on3DPanoramaRectChanged(II)V

    goto/16 :goto_0

    .line 1506
    :sswitch_17
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOn3DPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$1700(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1507
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOn3DPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$1700(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;->on3DPanoramaCapturedNew()V

    goto/16 :goto_0

    .line 1511
    :sswitch_18
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOn3DPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$1700(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1512
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOn3DPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$1700(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v3, v4}, Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;->on3DPanoramaProgressStitching(I)V

    goto/16 :goto_0

    .line 1516
    :sswitch_19
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOn3DPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$1700(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1517
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOn3DPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$1700(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;->on3DPanoramaCaptured()V

    goto/16 :goto_0

    .line 1521
    :sswitch_1a
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOn3DPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$1700(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1522
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOn3DPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$1700(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    invoke-interface {v4, v3}, Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;->on3DPanoramaLowResolutionData([B)V

    goto/16 :goto_0

    .line 1526
    :sswitch_1b
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOn3DPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$1700(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1527
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOn3DPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$1700(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    invoke-interface {v4, v3}, Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;->on3DPanoramaLivePreviewData([B)V

    goto/16 :goto_0

    .line 1531
    :sswitch_1c
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOn3DPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$1700(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1532
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOn3DPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$1700(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;->on3DPanoramaCapturedMaxFrames()V

    goto/16 :goto_0

    .line 1536
    :sswitch_1d
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOn3DPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$1700(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1537
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOn3DPanoramaEventListener:Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$1700(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    invoke-interface {v4, v3}, Lcom/sec/android/seccamera/SecCamera$On3DPanoramaEventListener;->on3DPanoramaMpoData([B)V

    goto/16 :goto_0

    .line 1541
    :sswitch_1e
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnContinuousShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnContinuousShotEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$1800(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnContinuousShotEventListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1542
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnContinuousShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnContinuousShotEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$1800(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnContinuousShotEventListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$OnContinuousShotEventListener;->onContinuousShotCapturingProgressed(II)V

    goto/16 :goto_0

    .line 1546
    :sswitch_1f
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnContinuousShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnContinuousShotEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$1800(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnContinuousShotEventListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1547
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnContinuousShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnContinuousShotEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$1800(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnContinuousShotEventListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v3, v4}, Lcom/sec/android/seccamera/SecCamera$OnContinuousShotEventListener;->onContinuousShotCapturingStopped(I)V

    goto/16 :goto_0

    .line 1551
    :sswitch_20
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnContinuousShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnContinuousShotEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$1800(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnContinuousShotEventListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1552
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnContinuousShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnContinuousShotEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$1800(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnContinuousShotEventListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/seccamera/SecCamera$OnContinuousShotEventListener;->onContinuousShotSavingCompleted()V

    goto/16 :goto_0

    .line 1556
    :sswitch_21
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnActionShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$1900(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1557
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnActionShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$1900(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;->onActionShotCreatingResultStarted()V

    goto/16 :goto_0

    .line 1561
    :sswitch_22
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnActionShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$1900(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1562
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnActionShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$1900(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v3, v4}, Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;->onActionShotCreatingResultProgress(I)V

    goto/16 :goto_0

    .line 1566
    :sswitch_23
    iget-object v5, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnActionShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;
    invoke-static {v5}, Lcom/sec/android/seccamera/SecCamera;->access$1900(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1567
    iget-object v5, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnActionShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;
    invoke-static {v5}, Lcom/sec/android/seccamera/SecCamera;->access$1900(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v3, :cond_6

    :goto_4
    invoke-interface {v5, v3}, Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;->onActionShotCreatingResultCompleted(Z)V

    goto/16 :goto_0

    :cond_6
    move v3, v4

    goto :goto_4

    .line 1571
    :sswitch_24
    const-string v3, "SecCamera-JNI-Java"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onActionShotAcquisitionProgress "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1572
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnActionShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$1900(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1573
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnActionShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$1900(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v3, v4}, Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;->onActionShotAcquisitionProgress(I)V

    goto/16 :goto_0

    .line 1577
    :sswitch_25
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnActionShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$1900(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1578
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnActionShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$1900(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    invoke-interface {v4, v3}, Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;->onActionShotRectChanged([B)V

    goto/16 :goto_0

    .line 1582
    :sswitch_26
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnActionShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$1900(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1583
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnActionShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$1900(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;->onActionShotCaptured()V

    goto/16 :goto_0

    .line 1587
    :sswitch_27
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnCartoonShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnCartoonShotEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$2000(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnCartoonShotEventListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1588
    const-string v3, "SecCamera-JNI-Java"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CARTOON_SHOT_PROGRESS_RENDERING :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnCartoonShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnCartoonShotEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$2000(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnCartoonShotEventListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v3, v4}, Lcom/sec/android/seccamera/SecCamera$OnCartoonShotEventListener;->onCartoonShotProgressRendering(I)V

    goto/16 :goto_0

    .line 1593
    :sswitch_28
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnSmileShotDetectionSuccessListener:Lcom/sec/android/seccamera/SecCamera$OnSmileShotDetectionSuccessListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$2100(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnSmileShotDetectionSuccessListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1594
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnSmileShotDetectionSuccessListener:Lcom/sec/android/seccamera/SecCamera$OnSmileShotDetectionSuccessListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$2100(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnSmileShotDetectionSuccessListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/seccamera/SecCamera$OnSmileShotDetectionSuccessListener;->onSmileShotDetectionSuccess()V

    goto/16 :goto_0

    .line 1598
    :sswitch_29
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnSmileShotDetectionSuccessListener:Lcom/sec/android/seccamera/SecCamera$OnSmileShotDetectionSuccessListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$2100(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnSmileShotDetectionSuccessListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1599
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnSmileShotDetectionSuccessListener:Lcom/sec/android/seccamera/SecCamera$OnSmileShotDetectionSuccessListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$2100(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnSmileShotDetectionSuccessListener;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    invoke-interface {v4, v3}, Lcom/sec/android/seccamera/SecCamera$OnSmileShotDetectionSuccessListener;->onSmileShotFaceRectChanged([B)V

    goto/16 :goto_0

    .line 1603
    :sswitch_2a
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnSmileShotDetectionSuccessListener:Lcom/sec/android/seccamera/SecCamera$OnSmileShotDetectionSuccessListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$2100(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnSmileShotDetectionSuccessListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1604
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnSmileShotDetectionSuccessListener:Lcom/sec/android/seccamera/SecCamera$OnSmileShotDetectionSuccessListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$2100(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnSmileShotDetectionSuccessListener;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    invoke-interface {v4, v3}, Lcom/sec/android/seccamera/SecCamera$OnSmileShotDetectionSuccessListener;->onSmileShotSmileRectChanged([B)V

    goto/16 :goto_0

    .line 1609
    :sswitch_2b
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnHDRShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$2200(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1610
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnHDRShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$2200(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;->onHDRShotResultStarted()V

    goto/16 :goto_0

    .line 1615
    :sswitch_2c
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnHDRShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$2200(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1616
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnHDRShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$2200(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v3, v4}, Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;->onHDRShotResultProgress(I)V

    goto/16 :goto_0

    .line 1621
    :sswitch_2d
    iget-object v5, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnHDRShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;
    invoke-static {v5}, Lcom/sec/android/seccamera/SecCamera;->access$2200(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1622
    iget-object v5, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnHDRShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;
    invoke-static {v5}, Lcom/sec/android/seccamera/SecCamera;->access$2200(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v3, :cond_7

    :goto_5
    invoke-interface {v5, v3}, Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;->onHDRShotResultCompleted(Z)V

    goto/16 :goto_0

    :cond_7
    move v3, v4

    goto :goto_5

    .line 1627
    :sswitch_2e
    iget-object v5, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnHDRShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;
    invoke-static {v5}, Lcom/sec/android/seccamera/SecCamera;->access$2200(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1628
    iget-object v5, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnHDRShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;
    invoke-static {v5}, Lcom/sec/android/seccamera/SecCamera;->access$2200(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v3, :cond_8

    :goto_6
    invoke-interface {v5, v3}, Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;->onHDRShotAllProgressCompleted(Z)V

    goto/16 :goto_0

    :cond_8
    move v3, v4

    goto :goto_6

    .line 1633
    :sswitch_2f
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnHDRShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$2200(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1634
    new-instance v1, Ljava/lang/String;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    .line 1635
    .local v1, filename:Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnHDRShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$2200(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/sec/android/seccamera/SecCamera$OnHDRShotEventListener;->onHDRShotYUVFileString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1640
    .end local v1           #filename:Ljava/lang/String;
    :sswitch_30
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnObjectTrackingMsgListener:Lcom/sec/android/seccamera/SecCamera$OnObjectTrackingMsgListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$2300(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnObjectTrackingMsgListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1641
    const-string v3, "SecCamera-JNI-Java"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HAL_MSG_OBJ_TRACKING :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1642
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnObjectTrackingMsgListener:Lcom/sec/android/seccamera/SecCamera$OnObjectTrackingMsgListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$2300(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnObjectTrackingMsgListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v3, v4}, Lcom/sec/android/seccamera/SecCamera$OnObjectTrackingMsgListener;->onObjectTrackingStatus(I)V

    goto/16 :goto_0

    .line 1647
    :sswitch_31
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnChkDataLineListener:Lcom/sec/android/seccamera/SecCamera$OnChkDataLineListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$2400(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnChkDataLineListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1648
    const-string v3, "SecCamera-JNI-Java"

    const-string v4, "HAL_DONE_CHK_DATALINE"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnChkDataLineListener:Lcom/sec/android/seccamera/SecCamera$OnChkDataLineListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$2400(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnChkDataLineListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/seccamera/SecCamera$OnChkDataLineListener;->onChkDataLineDone()V

    goto/16 :goto_0

    .line 1654
    :sswitch_32
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnBurstShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnBurstShotEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$2500(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnBurstShotEventListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1655
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnBurstShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnBurstShotEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$2500(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnBurstShotEventListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$OnBurstShotEventListener;->onBurstShotCapturingProgressed(II)V

    goto/16 :goto_0

    .line 1660
    :sswitch_33
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnBurstShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnBurstShotEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$2500(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnBurstShotEventListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1661
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnBurstShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnBurstShotEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$2500(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnBurstShotEventListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v3, v4}, Lcom/sec/android/seccamera/SecCamera$OnBurstShotEventListener;->onBurstShotCapturingStopped(I)V

    goto/16 :goto_0

    .line 1666
    :sswitch_34
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnBurstShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnBurstShotEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$2500(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnBurstShotEventListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1667
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnBurstShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnBurstShotEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$2500(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnBurstShotEventListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v3, v4}, Lcom/sec/android/seccamera/SecCamera$OnBurstShotEventListener;->onBurstShotSavingCompleted(I)V

    goto/16 :goto_0

    .line 1672
    :sswitch_35
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnBurstShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnBurstShotEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$2500(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnBurstShotEventListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1673
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnBurstShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnBurstShotEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$2500(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnBurstShotEventListener;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    invoke-interface {v4, v3}, Lcom/sec/android/seccamera/SecCamera$OnBurstShotEventListener;->onBurstShotStringProgressed([B)V

    goto/16 :goto_0

    .line 1678
    :sswitch_36
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnSIM3DPhotoShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnSIM3DPhotoShotEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$2600(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnSIM3DPhotoShotEventListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1679
    const-string v3, "SecCamera-JNI-Java"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIM3DPHOTO_SHOT_PROGRESS_RENDERING :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnSIM3DPhotoShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnSIM3DPhotoShotEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$2600(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnSIM3DPhotoShotEventListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v3, v4}, Lcom/sec/android/seccamera/SecCamera$OnSIM3DPhotoShotEventListener;->onSIM3DPhotoShotProgressRendering(I)V

    goto/16 :goto_0

    .line 1684
    :sswitch_37
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnSIM3DPhotoShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnSIM3DPhotoShotEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$2600(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnSIM3DPhotoShotEventListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1685
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnSIM3DPhotoShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnSIM3DPhotoShotEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$2600(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnSIM3DPhotoShotEventListener;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    invoke-interface {v4, v3}, Lcom/sec/android/seccamera/SecCamera$OnSIM3DPhotoShotEventListener;->onSIM3DPhotoShotMpoData([B)V

    goto/16 :goto_0

    .line 1689
    :sswitch_38
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnMagicFrameShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnMagicFrameShotEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$2700(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnMagicFrameShotEventListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1690
    const-string v3, "SecCamera-JNI-Java"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MAGICFRAME_SHOT_PROGRESS_RENDERING : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1691
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnMagicFrameShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnMagicFrameShotEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$2700(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnMagicFrameShotEventListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v3, v4}, Lcom/sec/android/seccamera/SecCamera$OnMagicFrameShotEventListener;->onMagicFrameShotProgressRendering(I)V

    goto/16 :goto_0

    .line 1695
    :sswitch_39
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnPIPShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnPIPShotEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$2800(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnPIPShotEventListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1696
    const-string v3, "SecCamera-JNI-Java"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PIP_SHOT_PROGRESS_RENDERING : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1697
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnPIPShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnPIPShotEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$2800(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnPIPShotEventListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v3, v4}, Lcom/sec/android/seccamera/SecCamera$OnPIPShotEventListener;->onPIPShotProgressRendering(I)V

    goto/16 :goto_0

    .line 1701
    :sswitch_3a
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnMultiFrameShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnMultiFrameShotEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$2900(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnMultiFrameShotEventListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1702
    const-string v3, "SecCamera-JNI-Java"

    const-string v4, "seccamera MULTI_FRAME_SHOT_PROGRESS_POSTPROCESSING "

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnMultiFrameShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnMultiFrameShotEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$2900(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnMultiFrameShotEventListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v3, v4, v5}, Lcom/sec/android/seccamera/SecCamera$OnMultiFrameShotEventListener;->onMultiFrameShotCapturingProgressed(II)V

    goto/16 :goto_0

    .line 1707
    :sswitch_3b
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnNotifyFirstPreviewFrameEventListener:Lcom/sec/android/seccamera/SecCamera$OnNotifyFirstPreviewFrameEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$3000(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnNotifyFirstPreviewFrameEventListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1708
    const-string v3, "SecCamera-JNI-Java"

    const-string v4, "Notify to get the first preview frame "

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnNotifyFirstPreviewFrameEventListener:Lcom/sec/android/seccamera/SecCamera$OnNotifyFirstPreviewFrameEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$3000(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnNotifyFirstPreviewFrameEventListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/seccamera/SecCamera$OnNotifyFirstPreviewFrameEventListener;->OnNotifyFirstPreviewFrame()V

    goto/16 :goto_0

    .line 1713
    :sswitch_3c
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnPetDetectionListener:Lcom/sec/android/seccamera/SecCamera$OnPetDetectionListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$3100(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnPetDetectionListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1714
    const-string v3, "SecCamera-JNI-Java"

    const-string v4, "Pet Detection success"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1715
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnPetDetectionListener:Lcom/sec/android/seccamera/SecCamera$OnPetDetectionListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$3100(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnPetDetectionListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/seccamera/SecCamera$OnPetDetectionListener;->onPetDetectionSuccess()V

    goto/16 :goto_0

    .line 1719
    :sswitch_3d
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnPetDetectionListener:Lcom/sec/android/seccamera/SecCamera$OnPetDetectionListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$3100(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnPetDetectionListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1720
    const-string v3, "SecCamera-JNI-Java"

    const-string v4, "Pet Detection Rect"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnPetDetectionListener:Lcom/sec/android/seccamera/SecCamera$OnPetDetectionListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$3100(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnPetDetectionListener;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [Landroid/graphics/Rect;

    check-cast v3, [Landroid/graphics/Rect;

    invoke-interface {v4, v3}, Lcom/sec/android/seccamera/SecCamera$OnPetDetectionListener;->onPetFaceRectChanged([Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 1725
    :sswitch_3e
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnPhotoGrapherDetectionListener:Lcom/sec/android/seccamera/SecCamera$OnPhotoGrapherDetectionListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$3200(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnPhotoGrapherDetectionListener;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 1726
    const-string v3, "SecCamera-JNI-Java"

    const-string v4, "PhotoGrapher Detection changed"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1727
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnPhotoGrapherDetectionListener:Lcom/sec/android/seccamera/SecCamera$OnPhotoGrapherDetectionListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$3200(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnPhotoGrapherDetectionListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v3, v4}, Lcom/sec/android/seccamera/SecCamera$OnPhotoGrapherDetectionListener;->onPhotoGrapherDetectionChanged(I)V

    .line 1730
    :cond_9
    :sswitch_3f
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnGolfShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnGolfShotEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$3300(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnGolfShotEventListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1731
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnGolfShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnGolfShotEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$3300(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnGolfShotEventListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/seccamera/SecCamera$OnGolfShotEventListener;->onGolfShotCaptuered()V

    goto/16 :goto_0

    .line 1735
    :sswitch_40
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnGolfShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnGolfShotEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$3300(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnGolfShotEventListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1736
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnGolfShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnGolfShotEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$3300(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnGolfShotEventListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/seccamera/SecCamera$OnGolfShotEventListener;->onGolfShotCreatingStarted()V

    goto/16 :goto_0

    .line 1740
    :sswitch_41
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnGolfShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnGolfShotEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$3300(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnGolfShotEventListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1741
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnGolfShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnGolfShotEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$3300(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnGolfShotEventListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v3, v4}, Lcom/sec/android/seccamera/SecCamera$OnGolfShotEventListener;->onGolfShotCreatingProgress(I)V

    goto/16 :goto_0

    .line 1745
    :sswitch_42
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnGolfShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnGolfShotEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$3300(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnGolfShotEventListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1746
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnGolfShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnGolfShotEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$3300(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnGolfShotEventListener;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    invoke-interface {v4, v3}, Lcom/sec/android/seccamera/SecCamera$OnGolfShotEventListener;->onGolfShotCreatingCompleted([B)V

    goto/16 :goto_0

    .line 1750
    :sswitch_43
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnGolfShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnGolfShotEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$3300(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnGolfShotEventListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1751
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnGolfShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnGolfShotEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$3300(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnGolfShotEventListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v3, v4}, Lcom/sec/android/seccamera/SecCamera$OnGolfShotEventListener;->onGolfShotSavingProgress(I)V

    goto/16 :goto_0

    .line 1755
    :sswitch_44
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnGolfShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnGolfShotEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$3300(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnGolfShotEventListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1756
    iget-object v3, p0, Lcom/sec/android/seccamera/SecCamera$EventHandler;->this$0:Lcom/sec/android/seccamera/SecCamera;

    #getter for: Lcom/sec/android/seccamera/SecCamera;->mOnGolfShotEventListener:Lcom/sec/android/seccamera/SecCamera$OnGolfShotEventListener;
    invoke-static {v3}, Lcom/sec/android/seccamera/SecCamera;->access$3300(Lcom/sec/android/seccamera/SecCamera;)Lcom/sec/android/seccamera/SecCamera$OnGolfShotEventListener;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v3, v4}, Lcom/sec/android/seccamera/SecCamera$OnGolfShotEventListener;->onGolfShotError(I)V

    goto/16 :goto_0

    .line 1351
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_8
        0x2 -> :sswitch_0
        0x4 -> :sswitch_5
        0x8 -> :sswitch_6
        0x10 -> :sswitch_3
        0x40 -> :sswitch_4
        0x80 -> :sswitch_1
        0x100 -> :sswitch_2
        0x400 -> :sswitch_7
        0x800 -> :sswitch_9
        0xf001 -> :sswitch_30
        0xf002 -> :sswitch_31
        0xf021 -> :sswitch_b
        0xf022 -> :sswitch_d
        0xf023 -> :sswitch_e
        0xf024 -> :sswitch_f
        0xf025 -> :sswitch_10
        0xf026 -> :sswitch_c
        0xf027 -> :sswitch_11
        0xf028 -> :sswitch_12
        0xf029 -> :sswitch_13
        0xf031 -> :sswitch_1e
        0xf032 -> :sswitch_1f
        0xf033 -> :sswitch_20
        0xf041 -> :sswitch_21
        0xf042 -> :sswitch_22
        0xf043 -> :sswitch_23
        0xf044 -> :sswitch_24
        0xf045 -> :sswitch_26
        0xf046 -> :sswitch_25
        0xf061 -> :sswitch_28
        0xf062 -> :sswitch_29
        0xf063 -> :sswitch_2a
        0xf071 -> :sswitch_27
        0xf081 -> :sswitch_2b
        0xf082 -> :sswitch_2c
        0xf083 -> :sswitch_2d
        0xf084 -> :sswitch_2e
        0xf085 -> :sswitch_2f
        0xf091 -> :sswitch_32
        0xf092 -> :sswitch_33
        0xf093 -> :sswitch_34
        0xf094 -> :sswitch_35
        0xf101 -> :sswitch_36
        0xf102 -> :sswitch_37
        0xf111 -> :sswitch_14
        0xf112 -> :sswitch_16
        0xf113 -> :sswitch_17
        0xf114 -> :sswitch_18
        0xf115 -> :sswitch_19
        0xf116 -> :sswitch_15
        0xf117 -> :sswitch_1a
        0xf118 -> :sswitch_1b
        0xf119 -> :sswitch_1c
        0xf120 -> :sswitch_1d
        0xf123 -> :sswitch_3a
        0xf131 -> :sswitch_38
        0xf141 -> :sswitch_39
        0xf171 -> :sswitch_3b
        0xf181 -> :sswitch_3c
        0xf182 -> :sswitch_3d
        0xf191 -> :sswitch_40
        0xf192 -> :sswitch_41
        0xf193 -> :sswitch_42
        0xf194 -> :sswitch_43
        0xf195 -> :sswitch_3f
        0xf196 -> :sswitch_44
        0xf201 -> :sswitch_a
        0xf211 -> :sswitch_3e
    .end sparse-switch
.end method
