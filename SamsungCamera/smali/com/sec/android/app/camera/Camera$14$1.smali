.class Lcom/sec/android/app/camera/Camera$14$1;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/Camera$14;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/camera/Camera$14;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Camera$14;)V
    .locals 0
    .parameter

    .prologue
    .line 6401
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$14$1;->this$1:Lcom/sec/android/app/camera/Camera$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 6404
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$14$1;->this$1:Lcom/sec/android/app/camera/Camera$14;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera$14;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$700(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->showMenu()V

    .line 6405
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$14$1;->this$1:Lcom/sec/android/app/camera/Camera$14;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera$14;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v0, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v1, 0x29

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$14$1;->this$1:Lcom/sec/android/app/camera/Camera$14;

    iget-object v2, v2, Lcom/sec/android/app/camera/Camera$14;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$700(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6406
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$14$1;->this$1:Lcom/sec/android/app/camera/Camera$14;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera$14;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v0, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v0, v0, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v1, 0x31

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$14$1;->this$1:Lcom/sec/android/app/camera/Camera$14;

    iget-object v2, v2, Lcom/sec/android/app/camera/Camera$14;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mGLCameraBaseIndicators:Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraBaseIndicators;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6407
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$14$1;->this$1:Lcom/sec/android/app/camera/Camera$14;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera$14;->this$0:Lcom/sec/android/app/camera/Camera;

    const/4 v1, 0x0

    #calls: Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/Camera;->access$2100(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/MenuBase;)V

    .line 6408
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$14$1;->this$1:Lcom/sec/android/app/camera/Camera$14;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera$14;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v0, v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mChkKeyFromApp:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$14$1;->this$1:Lcom/sec/android/app/camera/Camera$14;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera$14;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$700(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6409
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$14$1;->this$1:Lcom/sec/android/app/camera/Camera$14;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera$14;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$700(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLCameraSideMenu;->setModeButtonDimmed(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6414
    :cond_0
    :goto_0
    const-string v0, "AXLOG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SideMenu-loading**EndU["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]**"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6416
    const-string v0, "AXLOG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Total-CameraUILoading(TSP)**EndU["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]**"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6418
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$14$1;->this$1:Lcom/sec/android/app/camera/Camera$14;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera$14;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mIsDestroying:Z
    invoke-static {v0}, Lcom/sec/android/app/camera/Camera;->access$600(Lcom/sec/android/app/camera/Camera;)Z

    move-result v0

    if-eq v0, v4, :cond_1

    .line 6419
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$14$1;->this$1:Lcom/sec/android/app/camera/Camera$14;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera$14;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->initCameraSound()V

    .line 6422
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera$14$1;->this$1:Lcom/sec/android/app/camera/Camera$14;

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera$14;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->wakeupToSnSMod()V

    .line 6423
    return-void

    .line 6411
    :catch_0
    move-exception v0

    goto :goto_0
.end method
