.class Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$3$1;
.super Ljava/lang/Object;
.source "DirectCallingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$3;->onSensorChanged(Landroid/hardware/SensorEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$3;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$3;)V
    .locals 0
    .parameter

    .prologue
    .line 654
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$3$1;->this$1:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 656
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$3$1;->this$1:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$3;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$3;->this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    iget-boolean v0, v0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mIsProximityCloseDistance:Z

    if-nez v0, :cond_0

    .line 657
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$3$1;->this$1:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$3;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$3;->this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    #calls: Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->registerAccelerometer()V
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$1400(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)V

    .line 658
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$202(Z)Z

    .line 659
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$402(Z)Z

    .line 660
    const-string v0, "Logs/DirectCallingManager"

    const-string v1, "mProximityListener, mCheckTwiceEvent is false"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    :goto_0
    return-void

    .line 664
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$3$1;->this$1:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$3;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$3;->this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    #calls: Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->unregisterAccelerometer()V
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$1500(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)V

    .line 669
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$3$1;->this$1:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$3;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$3;->this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    #calls: Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->readyForCall()V
    invoke-static {v0}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$700(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)V

    goto :goto_0
.end method
