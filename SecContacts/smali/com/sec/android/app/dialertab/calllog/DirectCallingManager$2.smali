.class Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$2;
.super Ljava/lang/Object;
.source "DirectCallingManager.java"

# interfaces
.implements Landroid/hardware/motion/MRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->setMotionSensor(Landroid/content/Context;)V
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
    .line 192
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$2;->this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionListener(Landroid/hardware/motion/MREvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 196
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 198
    :pswitch_0
    const-string v1, "Logs/DirectCallingManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MREvent.DIRECT_CALL = 68, mCheckTwiceEvent : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$400()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mCheckTryToCall : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$500()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$2;->this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    #getter for: Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$600(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 201
    .local v0, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-eqz v1, :cond_1

    .line 202
    const-string v1, "Logs/DirectCallingManager"

    const-string v2, "User is calling..."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 206
    :cond_1
    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$400()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$500()Z

    move-result v1

    if-nez v1, :cond_0

    .line 209
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$402(Z)Z

    .line 210
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager$2;->this$0:Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;

    #calls: Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->readyForCall()V
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;->access$700(Lcom/sec/android/app/dialertab/calllog/DirectCallingManager;)V

    goto :goto_0

    .line 196
    :pswitch_data_0
    .packed-switch 0x44
        :pswitch_0
    .end packed-switch
.end method
