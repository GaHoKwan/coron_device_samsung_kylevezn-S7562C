.class Lcom/android/phone/InVTCallScreen$MyOrientationListener;
.super Landroid/view/WindowOrientationListener;
.source "InVTCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InVTCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyOrientationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InVTCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InVTCallScreen;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 14407
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen$MyOrientationListener;->this$0:Lcom/android/phone/InVTCallScreen;

    .line 14408
    invoke-direct {p0, p2}, Landroid/view/WindowOrientationListener;-><init>(Landroid/content/Context;)V

    .line 14409
    return-void
.end method


# virtual methods
.method public onProposedRotationChanged(I)V
    .locals 5
    .parameter "rotation"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 14413
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$MyOrientationListener;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProposedRotationChanged: rotation changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v3}, Lcom/android/phone/InVTCallScreen;->access$400(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;Z)V

    .line 14414
    invoke-static {}, Lcom/android/phone/InVTCallScreen;->access$18700()I

    move-result v0

    if-eq v0, p1, :cond_0

    sget-boolean v0, Lcom/android/phone/PhoneApp;->mIsDockConnected:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$MyOrientationListener;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-boolean v0, v0, Lcom/android/phone/InVTCallScreen;->mIsTabletDevice:Z

    if-nez v0, :cond_1

    .line 14443
    :cond_0
    :goto_0
    return-void

    .line 14419
    :cond_1
    invoke-static {}, Lcom/android/phone/InVTCallScreen;->access$18700()I

    move-result v0

    add-int/2addr v0, p1

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 14420
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$MyOrientationListener;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProposedRotationChanged orientation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/phone/InVTCallScreen;->access$18700()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v3}, Lcom/android/phone/InVTCallScreen;->access$400(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;Z)V

    .line 14421
    invoke-static {p1}, Lcom/android/phone/InVTCallScreen;->access$18702(I)I

    .line 14422
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$MyOrientationListener;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTcalltype:I
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2300(Lcom/android/phone/InVTCallScreen;)I

    move-result v0

    if-eq v0, v4, :cond_2

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$MyOrientationListener;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTcalltype:I
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2300(Lcom/android/phone/InVTCallScreen;)I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$MyOrientationListener;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTcalltype:I
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2300(Lcom/android/phone/InVTCallScreen;)I

    move-result v0

    if-ne v0, v3, :cond_4

    .line 14423
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$MyOrientationListener;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2900(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$MyOrientationListener;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$700(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14424
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$MyOrientationListener;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v1, "onProposedRotationChanged, Camera stopped and started again"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v3}, Lcom/android/phone/InVTCallScreen;->access$400(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;Z)V

    .line 14425
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$MyOrientationListener;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mSurfaceHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$12000(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 14426
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$MyOrientationListener;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mSurfaceHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$12000(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 14428
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$MyOrientationListener;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$6300(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14429
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$MyOrientationListener;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen;->far_endsurhldr:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    .line 14430
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$MyOrientationListener;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mSurfaceHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$12000(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 14434
    :cond_3
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$MyOrientationListener;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen;->near_endsurhldr:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    .line 14435
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$MyOrientationListener;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mSurfaceHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$12000(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 14440
    :cond_4
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$18802(Z)Z

    goto/16 :goto_0
.end method
