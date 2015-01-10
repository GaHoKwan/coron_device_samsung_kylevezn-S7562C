.class Lcom/sec/android/app/contacts/util/MotionCallManager$UnlockReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MotionCallManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/util/MotionCallManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnlockReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/util/MotionCallManager;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/contacts/util/MotionCallManager;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/sec/android/app/contacts/util/MotionCallManager$UnlockReceiver;->this$0:Lcom/sec/android/app/contacts/util/MotionCallManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/contacts/util/MotionCallManager;Lcom/sec/android/app/contacts/util/MotionCallManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/util/MotionCallManager$UnlockReceiver;-><init>(Lcom/sec/android/app/contacts/util/MotionCallManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 74
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/sec/android/app/contacts/util/MotionCallManager$UnlockReceiver;->this$0:Lcom/sec/android/app/contacts/util/MotionCallManager;

    #getter for: Lcom/sec/android/app/contacts/util/MotionCallManager;->unlockReceiver:Lcom/sec/android/app/contacts/util/MotionCallManager$UnlockReceiver;
    invoke-static {v1}, Lcom/sec/android/app/contacts/util/MotionCallManager;->access$100(Lcom/sec/android/app/contacts/util/MotionCallManager;)Lcom/sec/android/app/contacts/util/MotionCallManager$UnlockReceiver;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/sec/android/app/contacts/util/MotionCallManager$UnlockReceiver;->this$0:Lcom/sec/android/app/contacts/util/MotionCallManager;

    #getter for: Lcom/sec/android/app/contacts/util/MotionCallManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/contacts/util/MotionCallManager;->access$200(Lcom/sec/android/app/contacts/util/MotionCallManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/util/MotionCallManager$UnlockReceiver;->this$0:Lcom/sec/android/app/contacts/util/MotionCallManager;

    #getter for: Lcom/sec/android/app/contacts/util/MotionCallManager;->unlockReceiver:Lcom/sec/android/app/contacts/util/MotionCallManager$UnlockReceiver;
    invoke-static {v2}, Lcom/sec/android/app/contacts/util/MotionCallManager;->access$100(Lcom/sec/android/app/contacts/util/MotionCallManager;)Lcom/sec/android/app/contacts/util/MotionCallManager$UnlockReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 78
    iget-object v1, p0, Lcom/sec/android/app/contacts/util/MotionCallManager$UnlockReceiver;->this$0:Lcom/sec/android/app/contacts/util/MotionCallManager;

    const/4 v2, 0x0

    #setter for: Lcom/sec/android/app/contacts/util/MotionCallManager;->unlockReceiver:Lcom/sec/android/app/contacts/util/MotionCallManager$UnlockReceiver;
    invoke-static {v1, v2}, Lcom/sec/android/app/contacts/util/MotionCallManager;->access$102(Lcom/sec/android/app/contacts/util/MotionCallManager;Lcom/sec/android/app/contacts/util/MotionCallManager$UnlockReceiver;)Lcom/sec/android/app/contacts/util/MotionCallManager$UnlockReceiver;

    .line 79
    iget-object v1, p0, Lcom/sec/android/app/contacts/util/MotionCallManager$UnlockReceiver;->this$0:Lcom/sec/android/app/contacts/util/MotionCallManager;

    #getter for: Lcom/sec/android/app/contacts/util/MotionCallManager;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;
    invoke-static {v1}, Lcom/sec/android/app/contacts/util/MotionCallManager;->access$300(Lcom/sec/android/app/contacts/util/MotionCallManager;)Landroid/hardware/motion/MotionRecognitionManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/sec/android/app/contacts/util/MotionCallManager$UnlockReceiver;->this$0:Lcom/sec/android/app/contacts/util/MotionCallManager;

    #getter for: Lcom/sec/android/app/contacts/util/MotionCallManager;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;
    invoke-static {v1}, Lcom/sec/android/app/contacts/util/MotionCallManager;->access$300(Lcom/sec/android/app/contacts/util/MotionCallManager;)Landroid/hardware/motion/MotionRecognitionManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/util/MotionCallManager$UnlockReceiver;->this$0:Lcom/sec/android/app/contacts/util/MotionCallManager;

    #getter for: Lcom/sec/android/app/contacts/util/MotionCallManager;->mMotionListener:Landroid/hardware/motion/MRListener;
    invoke-static {v2}, Lcom/sec/android/app/contacts/util/MotionCallManager;->access$400(Lcom/sec/android/app/contacts/util/MotionCallManager;)Landroid/hardware/motion/MRListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 81
    iget-object v1, p0, Lcom/sec/android/app/contacts/util/MotionCallManager$UnlockReceiver;->this$0:Lcom/sec/android/app/contacts/util/MotionCallManager;

    #getter for: Lcom/sec/android/app/contacts/util/MotionCallManager;->mMotionRecognitionManager:Landroid/hardware/motion/MotionRecognitionManager;
    invoke-static {v1}, Lcom/sec/android/app/contacts/util/MotionCallManager;->access$300(Lcom/sec/android/app/contacts/util/MotionCallManager;)Landroid/hardware/motion/MotionRecognitionManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/util/MotionCallManager$UnlockReceiver;->this$0:Lcom/sec/android/app/contacts/util/MotionCallManager;

    #getter for: Lcom/sec/android/app/contacts/util/MotionCallManager;->mMotionListener:Landroid/hardware/motion/MRListener;
    invoke-static {v2}, Lcom/sec/android/app/contacts/util/MotionCallManager;->access$400(Lcom/sec/android/app/contacts/util/MotionCallManager;)Landroid/hardware/motion/MRListener;

    move-result-object v2

    const/16 v3, 0x400

    invoke-virtual {v1, v2, v3}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    .line 86
    :cond_0
    return-void
.end method
