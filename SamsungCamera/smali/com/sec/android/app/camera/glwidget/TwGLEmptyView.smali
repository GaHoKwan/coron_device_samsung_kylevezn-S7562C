.class public Lcom/sec/android/app/camera/glwidget/TwGLEmptyView;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLEmptyView.java"


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)V
    .locals 8
    .parameter "activityContext"
    .parameter "viewId"
    .parameter "glParentView"
    .parameter "menuResourceDepot"
    .parameter "zOrder"

    .prologue
    const/4 v7, 0x1

    .line 29
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 31
    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/MenuBase;->setCaptureEnabled(Z)V

    .line 32
    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/MenuBase;->setTouchHandled(Z)V

    .line 33
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 38
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    .line 39
    return-void
.end method

.method public onBack()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-nez v0, :cond_0

    .line 47
    :goto_0
    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 46
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onBack()V

    goto :goto_0
.end method
