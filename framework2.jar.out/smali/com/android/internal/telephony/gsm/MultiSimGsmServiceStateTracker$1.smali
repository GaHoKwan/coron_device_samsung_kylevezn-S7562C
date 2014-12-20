.class Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$1;
.super Landroid/telephony/PhoneStateListener;
.source "MultiSimGsmServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4
    .parameter "serviceState"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    #getter for: Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->access$000(Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 162
    :try_start_0
    const-string v0, "MultiSimGSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPhoneStateListener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mHasPostedRadioPowerOnTimer:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    #getter for: Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mHasPostedRadioPowerOnTimer:Z
    invoke-static {v3}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->access$100(Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    #getter for: Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mHasPostedRadioPowerOnTimer:Z
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->access$100(Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    #getter for: Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mLastRadioPowerOnTimer:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$RadioPowerTimer;
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->access$200(Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;)Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$RadioPowerTimer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 165
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    const/4 v2, 0x0

    #setter for: Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mHasPostedRadioPowerOnTimer:Z
    invoke-static {v0, v2}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->access$102(Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;Z)Z

    .line 166
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    #getter for: Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->access$300(Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 168
    :cond_0
    monitor-exit v1

    .line 169
    return-void

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
