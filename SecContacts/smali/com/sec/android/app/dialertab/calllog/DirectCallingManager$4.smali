.class Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$4;
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
    .line 679
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$4;->this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 725
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 10
    .parameter "event"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 682
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$4;->this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    #getter for: Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$1600(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)Landroid/os/Handler;

    move-result-object v5

    if-nez v5, :cond_1

    .line 721
    :cond_0
    :goto_0
    return-void

    .line 684
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 685
    .local v0, currentTime:J
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$4;->this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    #getter for: Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mLastTime:J
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$1700(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)J

    move-result-wide v5

    sub-long v2, v0, v5

    .line 702
    .local v2, gabTime:J
    const-wide/16 v5, 0x12c

    cmp-long v5, v2, v5

    if-lez v5, :cond_0

    .line 703
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$4;->this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    #setter for: Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mLastTime:J
    invoke-static {v5, v0, v1}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$1702(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;J)J

    .line 704
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$4;->this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v7

    #setter for: Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->x:F
    invoke-static {v5, v6}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$1802(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;F)F

    .line 705
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$4;->this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v8

    #setter for: Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->y:F
    invoke-static {v5, v6}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$1902(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;F)F

    .line 706
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$4;->this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v9

    #setter for: Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->z:F
    invoke-static {v5, v6}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$2002(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;F)F

    .line 707
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$4;->this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    #getter for: Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->x:F
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$1800(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)F

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$4;->this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    #getter for: Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->y:F
    invoke-static {v6}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$1900(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)F

    move-result v6

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$4;->this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    #getter for: Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->z:F
    invoke-static {v6}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$2000(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)F

    move-result v6

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$4;->this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    #getter for: Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->lastX:F
    invoke-static {v6}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$2100(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)F

    move-result v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$4;->this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    #getter for: Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->lastY:F
    invoke-static {v6}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$2200(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)F

    move-result v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$4;->this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    #getter for: Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->lastZ:F
    invoke-static {v6}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$2300(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)F

    move-result v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    long-to-float v6, v2

    div-float/2addr v5, v6

    const v6, 0x461c4000

    mul-float v4, v5, v6

    .line 710
    .local v4, speed:F
    const/high16 v5, 0x4270

    cmpl-float v5, v4, v5

    if-lez v5, :cond_2

    .line 711
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$200()Z

    move-result v5

    if-nez v5, :cond_2

    .line 712
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$4;->this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    #getter for: Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$1600(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x60

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 717
    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$4;->this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v7

    #setter for: Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->lastX:F
    invoke-static {v5, v6}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$2102(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;F)F

    .line 718
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$4;->this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v8

    #setter for: Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->lastY:F
    invoke-static {v5, v6}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$2202(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;F)F

    .line 719
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$4;->this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v9

    #setter for: Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->lastZ:F
    invoke-static {v5, v6}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$2302(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;F)F

    goto/16 :goto_0
.end method
