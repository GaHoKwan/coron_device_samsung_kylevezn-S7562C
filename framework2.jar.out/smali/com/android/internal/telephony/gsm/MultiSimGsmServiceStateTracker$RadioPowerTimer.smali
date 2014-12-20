.class Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$RadioPowerTimer;
.super Ljava/lang/Object;
.source "MultiSimGsmServiceStateTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RadioPowerTimer"
.end annotation


# static fields
.field private static final BCM_DUALSIM_RADIO_POWERON_DELAY:I = 0x2710


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$RadioPowerTimer;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 172
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$RadioPowerTimer;-><init>(Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$RadioPowerTimer;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    #getter for: Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->access$000(Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 178
    :try_start_0
    const-string v0, "MultiSimGSM"

    const-string v2, "RadioPowerTimer.run() setRadioPower(true, null)"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$RadioPowerTimer;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    #getter for: Lcom/android/internal/telephony/ServiceStateTracker;->cm:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->access$400(Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 180
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$RadioPowerTimer;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    const/4 v2, 0x0

    #setter for: Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mHasPostedRadioPowerOnTimer:Z
    invoke-static {v0, v2}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->access$102(Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;Z)Z

    .line 181
    monitor-exit v1

    .line 182
    return-void

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
