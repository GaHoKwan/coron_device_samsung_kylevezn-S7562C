.class Lcom/android/mms/util/DirectCallingManager$3$1;
.super Ljava/lang/Object;
.source "DirectCallingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/util/DirectCallingManager$3;->onSensorChanged(Landroid/hardware/SensorEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/util/DirectCallingManager$3;


# direct methods
.method constructor <init>(Lcom/android/mms/util/DirectCallingManager$3;)V
    .locals 0
    .parameter

    .prologue
    .line 748
    iput-object p1, p0, Lcom/android/mms/util/DirectCallingManager$3$1;->this$1:Lcom/android/mms/util/DirectCallingManager$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 750
    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager$3$1;->this$1:Lcom/android/mms/util/DirectCallingManager$3;

    iget-object v0, v0, Lcom/android/mms/util/DirectCallingManager$3;->this$0:Lcom/android/mms/util/DirectCallingManager;

    iget-boolean v0, v0, Lcom/android/mms/util/DirectCallingManager;->mIsProximityCloseDistance:Z

    if-nez v0, :cond_1

    .line 751
    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager$3$1;->this$1:Lcom/android/mms/util/DirectCallingManager$3;

    iget-object v0, v0, Lcom/android/mms/util/DirectCallingManager$3;->this$0:Lcom/android/mms/util/DirectCallingManager;

    #calls: Lcom/android/mms/util/DirectCallingManager;->registerAccelerometer()V
    invoke-static {v0}, Lcom/android/mms/util/DirectCallingManager;->access$1300(Lcom/android/mms/util/DirectCallingManager;)V

    .line 752
    invoke-static {v1}, Lcom/android/mms/util/DirectCallingManager;->access$202(Z)Z

    .line 753
    sput-boolean v1, Lcom/android/mms/util/DirectCallingManager;->mCheckTwiceEvent:Z

    .line 766
    :cond_0
    :goto_0
    return-void

    .line 757
    :cond_1
    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager$3$1;->this$1:Lcom/android/mms/util/DirectCallingManager$3;

    iget-object v0, v0, Lcom/android/mms/util/DirectCallingManager$3;->this$0:Lcom/android/mms/util/DirectCallingManager;

    #calls: Lcom/android/mms/util/DirectCallingManager;->isCall()Z
    invoke-static {v0}, Lcom/android/mms/util/DirectCallingManager;->access$400(Lcom/android/mms/util/DirectCallingManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 760
    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager$3$1;->this$1:Lcom/android/mms/util/DirectCallingManager$3;

    iget-object v0, v0, Lcom/android/mms/util/DirectCallingManager$3;->this$0:Lcom/android/mms/util/DirectCallingManager;

    #calls: Lcom/android/mms/util/DirectCallingManager;->unregisterAccelerometer()V
    invoke-static {v0}, Lcom/android/mms/util/DirectCallingManager;->access$1400(Lcom/android/mms/util/DirectCallingManager;)V

    .line 765
    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager$3$1;->this$1:Lcom/android/mms/util/DirectCallingManager$3;

    iget-object v0, v0, Lcom/android/mms/util/DirectCallingManager$3;->this$0:Lcom/android/mms/util/DirectCallingManager;

    #calls: Lcom/android/mms/util/DirectCallingManager;->readyForCall()V
    invoke-static {v0}, Lcom/android/mms/util/DirectCallingManager;->access$500(Lcom/android/mms/util/DirectCallingManager;)V

    goto :goto_0
.end method
