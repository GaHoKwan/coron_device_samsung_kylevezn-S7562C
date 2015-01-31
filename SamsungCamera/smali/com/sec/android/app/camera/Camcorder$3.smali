.class Lcom/sec/android/app/camera/Camcorder$3;
.super Landroid/content/BroadcastReceiver;
.source "Camcorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/Camcorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/Camcorder;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Camcorder;)V
    .locals 0
    .parameter

    .prologue
    .line 416
    iput-object p1, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v12, 0x67

    const/4 v11, 0x5

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 419
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 420
    .local v0, action:Ljava/lang/String;
    const-string v6, "Camcorder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onReceive ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mIsDestroying:Z
    invoke-static {v6}, Lcom/sec/android/app/camera/Camcorder;->access$1000(Lcom/sec/android/app/camera/Camcorder;)Z

    move-result v6

    if-ne v6, v10, :cond_1

    .line 422
    const-string v6, "Camcorder"

    const-string v7, "onReceive - camcorder is destroying"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    :cond_0
    :goto_0
    return-void

    .line 426
    :cond_1
    const-string v6, "android.intent.action.SIOP_LEVEL_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 427
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 428
    .local v4, myExtras:Landroid/os/Bundle;
    const-string v6, "flash_led_disable"

    invoke-virtual {v4, v6, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 430
    .local v1, bLimit:Z
    if-eqz v1, :cond_2

    .line 431
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;
    invoke-static {v6}, Lcom/sec/android/app/camera/Camcorder;->access$600(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;
    invoke-static {v6}, Lcom/sec/android/app/camera/Camcorder;->access$600(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v6

    invoke-virtual {v6, v11}, Lcom/sec/android/app/camera/CamcorderEngine;->isCurrentState(I)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderFlashMode()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_2

    .line 433
    const-string v6, "Camcorder"

    const-string v7, "onReceive - flash off"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderFlashMode(I)V

    .line 435
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v6

    invoke-virtual {v6, v12, v9}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    .line 436
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;
    invoke-static {v6}, Lcom/sec/android/app/camera/Camcorder;->access$600(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v6

    invoke-virtual {v6, v12, v9}, Lcom/sec/android/app/camera/CamcorderEngine;->doChangeParameterSync(II)V

    .line 437
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    const v7, 0x7f090183

    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 454
    .end local v1           #bLimit:Z
    .end local v4           #myExtras:Landroid/os/Bundle;
    :cond_2
    const-string v6, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 457
    :cond_3
    invoke-static {}, Landroid/media/MiniThumbFile;->reset()V

    .line 458
    const/4 v2, 0x0

    .line 459
    .local v2, mIsSettingsMMC:Z
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 460
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v6

    if-ne v6, v10, :cond_4

    .line 461
    const/4 v2, 0x1

    .line 470
    :cond_4
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v6, v6, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v6, v6, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v7, 0xbc9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/camera/MenuBase;

    .line 471
    .local v5, storageMenu:Lcom/sec/android/app/camera/MenuBase;
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/MenuBase;->isActive()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 472
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    .line 476
    :cond_5
    if-eqz v2, :cond_8

    .line 477
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camcorder;->finish()V

    .line 567
    .end local v2           #mIsSettingsMMC:Z
    .end local v5           #storageMenu:Lcom/sec/android/app/camera/MenuBase;
    :cond_6
    :goto_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Camera_EnableSmsNotiPopup"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 568
    const/4 v3, 0x0

    .line 569
    .local v3, messageDisplayData:Ljava/lang/String;
    const-string v6, "com.sec.mms.intent.action.SMS_RECEIVED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 570
    const-string v6, "DisplayName"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 572
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v7, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v6, v7, v10, v3}, Lcom/sec/android/app/camera/Camcorder;->makeToast(Landroid/app/Activity;ILjava/lang/String;)V

    .line 584
    .end local v3           #messageDisplayData:Ljava/lang/String;
    :cond_7
    :goto_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Camera_SecurityMdmService"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 585
    const-string v6, "com.sktelecom.dmc.intent.action.DCMO_SET"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "CAMERA_ON"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_0

    .line 586
    const-string v6, "Camcorder"

    const-string v7, "INTENT_MSG_DCMO"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camcorder;->finish()V

    goto/16 :goto_0

    .line 479
    .restart local v2       #mIsSettingsMMC:Z
    .restart local v5       #storageMenu:Lcom/sec/android/app/camera/MenuBase;
    :cond_8
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v6, v9, v10}, Lcom/sec/android/app/camera/Camcorder;->checkStorage(ZZ)V

    goto :goto_1

    .line 480
    .end local v2           #mIsSettingsMMC:Z
    .end local v5           #storageMenu:Lcom/sec/android/app/camera/MenuBase;
    :cond_9
    const-string v6, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 481
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;
    invoke-static {v6}, Lcom/sec/android/app/camera/Camcorder;->access$600(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;
    invoke-static {v6}, Lcom/sec/android/app/camera/Camcorder;->access$600(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CamcorderEngine;->isMediaRecorderRecording()Z

    move-result v6

    if-nez v6, :cond_a

    .line 482
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->isStorageMounted()Z

    move-result v7

    invoke-virtual {v6, v7, v9}, Lcom/sec/android/app/camera/Camcorder;->checkStorage(ZZ)V

    goto :goto_1

    .line 484
    :cond_a
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v6

    const/16 v7, 0x75

    invoke-virtual {v6, v7, v9}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)V

    goto/16 :goto_1

    .line 486
    :cond_b
    const-string v6, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 487
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;
    invoke-static {v6}, Lcom/sec/android/app/camera/Camcorder;->access$1400(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    move-result-object v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v6, v6, Lcom/sec/android/app/camera/Camcorder;->mChkKeyFromApp:Ljava/lang/String;

    if-nez v6, :cond_6

    .line 488
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;
    invoke-static {v6}, Lcom/sec/android/app/camera/Camcorder;->access$1400(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/glwidget/TwGLCamcorderSideMenu;->updateThumbnailButton()V

    goto/16 :goto_1

    .line 489
    :cond_c
    const-string v6, "com.android.camera.NEW_PICTURE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 490
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camcorder;->updateRemainTime()V

    goto/16 :goto_1

    .line 491
    :cond_d
    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 492
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #calls: Lcom/sec/android/app/camera/Camcorder;->handleBatteryChanged(Landroid/content/Intent;)V
    invoke-static {v6, p2}, Lcom/sec/android/app/camera/Camcorder;->access$1500(Lcom/sec/android/app/camera/Camcorder;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 493
    :cond_e
    const-string v6, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 494
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->battLevel:I
    invoke-static {v6}, Lcom/sec/android/app/camera/Camcorder;->access$1600(Lcom/sec/android/app/camera/Camcorder;)I

    move-result v6

    sget v7, Lcom/sec/android/app/camera/AbstractCameraActivity;->LOW_BATTERY_THRESHOLD_VALUE:I

    if-gt v6, v7, :cond_6

    .line 495
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camcorder;->finishTimerCount()V

    .line 496
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v6, v9}, Lcom/sec/android/app/camera/Camcorder;->handleLowBattery(Z)V

    goto/16 :goto_1

    .line 507
    :cond_f
    const-string v6, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 508
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->battLevel:I
    invoke-static {v6}, Lcom/sec/android/app/camera/Camcorder;->access$1600(Lcom/sec/android/app/camera/Camcorder;)I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget v7, v7, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryWarningLevel:I

    if-gt v6, v7, :cond_11

    .line 509
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->battLevel:I
    invoke-static {v6}, Lcom/sec/android/app/camera/Camcorder;->access$1600(Lcom/sec/android/app/camera/Camcorder;)I

    move-result v6

    sget v7, Lcom/sec/android/app/camera/AbstractCameraActivity;->LOW_BATTERY_THRESHOLD_VALUE:I

    if-gt v6, v7, :cond_6

    .line 510
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camcorder;->finishTimerCount()V

    .line 511
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v6, v6, Lcom/sec/android/app/camera/Camcorder;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    if-eqz v6, :cond_10

    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v6, v6, Lcom/sec/android/app/camera/Camcorder;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 512
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v6, v6, Lcom/sec/android/app/camera/Camcorder;->mPluggedLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    .line 514
    :cond_10
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v6, v9}, Lcom/sec/android/app/camera/Camcorder;->handleLowBattery(Z)V

    goto/16 :goto_1

    .line 528
    :cond_11
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v6, v6, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryPopup:Landroid/app/AlertDialog;

    if-eqz v6, :cond_12

    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v6, v6, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 529
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v6, v6, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    .line 531
    :cond_12
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryPopup:Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 533
    :cond_13
    const-string v6, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 534
    const-string v6, "Camcorder"

    const-string v7, "INTENT_MSG_SECURITY"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 545
    :cond_14
    const-string v6, "POWER_OFF_ANIMATION_START"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 546
    const-string v6, "Camcorder"

    const-string v7, "onReceive shutdown"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;
    invoke-static {v6}, Lcom/sec/android/app/camera/Camcorder;->access$600(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v6

    if-eqz v6, :cond_15

    .line 549
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;
    invoke-static {v6}, Lcom/sec/android/app/camera/Camcorder;->access$600(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CamcorderEngine;->isTimerCounting()Z

    move-result v6

    if-eqz v6, :cond_15

    .line 550
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;
    invoke-static {v6}, Lcom/sec/android/app/camera/Camcorder;->access$600(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CamcorderEngine;->doCancelShutterTimer()V

    .line 555
    :cond_15
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;
    invoke-static {v6}, Lcom/sec/android/app/camera/Camcorder;->access$600(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 556
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;
    invoke-static {v6}, Lcom/sec/android/app/camera/Camcorder;->access$600(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CamcorderEngine;->getCurrentStateHandler()Lcom/sec/android/app/camera/AbstractCeState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v6

    if-ne v6, v11, :cond_6

    .line 557
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;
    invoke-static {v6}, Lcom/sec/android/app/camera/Camcorder;->access$600(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CamcorderEngine;->getVideoRecordingTimeInSecond()I

    move-result v6

    if-ge v6, v10, :cond_16

    .line 558
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;
    invoke-static {v6}, Lcom/sec/android/app/camera/Camcorder;->access$600(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CamcorderEngine;->doCancelVideoRecordingSync()V

    goto/16 :goto_1

    .line 560
    :cond_16
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #setter for: Lcom/sec/android/app/camera/Camcorder;->mIsReocrdingStoppedForcely:Z
    invoke-static {v6, v10}, Lcom/sec/android/app/camera/Camcorder;->access$1702(Lcom/sec/android/app/camera/Camcorder;Z)Z

    .line 561
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;
    invoke-static {v6}, Lcom/sec/android/app/camera/Camcorder;->access$600(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CamcorderEngine;->doStopVideoRecordingSync()V

    goto/16 :goto_1

    .line 573
    .restart local v3       #messageDisplayData:Ljava/lang/String;
    :cond_17
    const-string v6, "com.sec.mms.intent.action.PUSHSMS_RECEIVED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 574
    const-string v6, "DisplayName"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 576
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v7, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8, v3}, Lcom/sec/android/app/camera/Camcorder;->makeToast(Landroid/app/Activity;ILjava/lang/String;)V

    goto/16 :goto_2

    .line 577
    :cond_18
    const-string v6, "com.sec.mms.intent.action.MMS_RECEIVED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 578
    const-string v6, "DisplayName"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 580
    iget-object v6, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v7, p0, Lcom/sec/android/app/camera/Camcorder$3;->this$0:Lcom/sec/android/app/camera/Camcorder;

    const/4 v8, 0x3

    invoke-virtual {v6, v7, v8, v3}, Lcom/sec/android/app/camera/Camcorder;->makeToast(Landroid/app/Activity;ILjava/lang/String;)V

    goto/16 :goto_2
.end method
