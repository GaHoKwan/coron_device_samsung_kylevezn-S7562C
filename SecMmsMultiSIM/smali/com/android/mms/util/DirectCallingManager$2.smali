.class Lcom/android/mms/util/DirectCallingManager$2;
.super Ljava/lang/Object;
.source "DirectCallingManager.java"

# interfaces
.implements Landroid/hardware/motion/MRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/util/DirectCallingManager;->setMotionSensor(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/util/DirectCallingManager;


# direct methods
.method constructor <init>(Lcom/android/mms/util/DirectCallingManager;)V
    .locals 0
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/android/mms/util/DirectCallingManager$2;->this$0:Lcom/android/mms/util/DirectCallingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionListener(Landroid/hardware/motion/MREvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 231
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 251
    :goto_0
    return-void

    .line 233
    :pswitch_0
    const-string v0, "Mms/DirectCallingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMotionListener() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    sget-boolean v0, Lcom/android/mms/util/DirectCallingManager;->mCheckTwiceEvent:Z

    if-eqz v0, :cond_0

    .line 236
    const-string v0, "Mms/DirectCallingManager"

    const-string v1, "onMotionListener() twice"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager$2;->this$0:Lcom/android/mms/util/DirectCallingManager;

    #calls: Lcom/android/mms/util/DirectCallingManager;->isCall()Z
    invoke-static {v0}, Lcom/android/mms/util/DirectCallingManager;->access$400(Lcom/android/mms/util/DirectCallingManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    const-string v0, "Mms/DirectCallingManager"

    const-string v1, "onMotionListener() isCall"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 245
    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/util/DirectCallingManager;->mCheckTwiceEvent:Z

    .line 246
    iget-object v0, p0, Lcom/android/mms/util/DirectCallingManager$2;->this$0:Lcom/android/mms/util/DirectCallingManager;

    #calls: Lcom/android/mms/util/DirectCallingManager;->readyForCall()V
    invoke-static {v0}, Lcom/android/mms/util/DirectCallingManager;->access$500(Lcom/android/mms/util/DirectCallingManager;)V

    goto :goto_0

    .line 231
    nop

    :pswitch_data_0
    .packed-switch 0x44
        :pswitch_0
    .end packed-switch
.end method
