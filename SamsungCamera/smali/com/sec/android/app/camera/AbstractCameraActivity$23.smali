.class Lcom/sec/android/app/camera/AbstractCameraActivity$23;
.super Ljava/lang/Object;
.source "AbstractCameraActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/AbstractCameraActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1874
    iput-object p1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$23;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v5, 0x4

    const/4 v0, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x17

    .line 1876
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_2

    if-eq p2, v5, :cond_0

    const/16 v1, 0x52

    if-eq p2, v1, :cond_0

    if-ne p2, v3, :cond_2

    .line 1878
    :cond_0
    if-eq p2, v3, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$23;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_1

    .line 1879
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$23;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$23;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    iget v2, v2, Lcom/sec/android/app/camera/CameraSettings;->mPreviousShootingMode:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->setShootingMode(I)V

    .line 1880
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$23;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v5}, Landroid/app/Activity;->removeDialog(I)V

    .line 1881
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$23;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iput-boolean v4, v1, Lcom/sec/android/app/camera/AbstractCameraActivity;->mShowWifiDialog:Z

    .line 1882
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$23;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iput-boolean v4, v1, Lcom/sec/android/app/camera/AbstractCameraActivity;->mIsFromSNS:Z

    .line 1883
    if-eq p2, v3, :cond_2

    .line 1886
    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity$23;->this$0:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method