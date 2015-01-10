.class Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$3;
.super Ljava/lang/Object;
.source "DirectCallingManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)V
    .locals 0
    .parameter

    .prologue
    .line 639
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$3;->this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 676
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 641
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v3, v1

    .line 644
    .local v0, distance:F
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$400()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 645
    const-string v1, "Logs/DirectCallingManager"

    const-string v2, "Proximity event is over twice"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    :cond_0
    :goto_0
    return-void

    .line 649
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$3;->this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    const/4 v4, 0x0

    cmpl-float v4, v0, v4

    if-nez v4, :cond_2

    move v1, v2

    :cond_2
    iput-boolean v1, v3, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mIsProximityCloseDistance:Z

    .line 651
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$3;->this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    iget-boolean v1, v1, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mIsProximityCloseDistance:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$3;->this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    #getter for: Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mIsSpeechRecorgnizing:Z
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$1300(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$200()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 652
    const-string v1, "Logs/DirectCallingManager"

    const-string v3, "mProximityListener, mCheckTwiceEvent is true"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$402(Z)Z

    .line 654
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$3;->this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    #getter for: Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$1600(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$3$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$3$1;-><init>(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$3;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
