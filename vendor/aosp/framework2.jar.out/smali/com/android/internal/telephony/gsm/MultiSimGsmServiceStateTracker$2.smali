.class Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;
.super Landroid/content/BroadcastReceiver;
.source "MultiSimGsmServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
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
    .line 188
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 191
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    const/4 v1, 0x1

    #setter for: Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mLocaleChanged:Z
    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->access$502(Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;Z)Z

    .line 198
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->updateSpnDisplay()V

    .line 199
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mLocaleChanged:Z
    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->access$502(Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;Z)Z

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CANCEL_POWER_ON_DELAY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 204
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    #getter for: Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mHasPostedRadioPowerOnTimer:Z
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->access$100(Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    const-string v0, "MultiSimGSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stop the timer and power on now in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->setRadioPowerOnNow()V

    goto :goto_0

    .line 208
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CANCEL_POWER_ON_TIMER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    #calls: Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->clearPowerOnTimer()V
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->access$600(Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;)V

    .line 210
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->phone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    goto :goto_0
.end method
