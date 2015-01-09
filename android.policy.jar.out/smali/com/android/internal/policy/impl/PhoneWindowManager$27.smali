.class Lcom/android/internal/policy/impl/PhoneWindowManager$27;
.super Landroid/content/BroadcastReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .parameter

    .prologue
    .line 7320
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$27;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7322
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 7323
    .local v0, action:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$27;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput v3, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSweepDirection:I

    .line 7324
    const-string v1, "android.intent.action.SWEEP_LEFT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7325
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$27;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardOn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7326
    const-string v1, "WindowManager"

    const-string v2, "Sweep LEFT, but keyguard on"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7366
    :cond_0
    :goto_0
    return-void

    .line 7329
    :cond_1
    const-string v1, "WindowManager"

    const-string v2, "Sweep LEFT, so takeScreenshot"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7330
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$27;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$27;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotChordLongPress:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1400(Lcom/android/internal/policy/impl/PhoneWindowManager;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7331
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$27;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput v4, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSweepDirection:I

    goto :goto_0

    .line 7334
    :cond_2
    const-string v1, "android.intent.action.SWEEP_RIGHT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 7335
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$27;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->keyguardOn()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7336
    const-string v1, "WindowManager"

    const-string v2, "Sweep RIGHT, but keyguard on"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7339
    :cond_3
    const-string v1, "WindowManager"

    const-string v2, "Sweep RIGHT, so takeScreenshot"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7340
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$27;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$27;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotChordLongPress:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1400(Lcom/android/internal/policy/impl/PhoneWindowManager;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 7341
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$27;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v2, 0x2

    iput v2, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSweepDirection:I

    goto :goto_0

    .line 7344
    :cond_4
    const-string v1, "android.intent.action.SWEEP_DOWN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 7345
    const-string v1, "WindowManager"

    const-string v2, "SWEEP DOWN"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7349
    :cond_5
    const-string v1, "android.intent.action.TOUCH_CAPTURE_BTN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 7350
    const-string v1, "WindowManager"

    const-string v2, "takeScreenshot by capture button"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7351
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$27;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$27;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotChordLongPress:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1400(Lcom/android/internal/policy/impl/PhoneWindowManager;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 7353
    :cond_6
    const-string v1, "com.android.internal.policy.impl.sec.glanceview.eventinfo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 7354
    const-string v1, "WindowManager"

    const-string v2, "glanceview.eventinfo is received."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7355
    const-string v1, "isStart"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 7356
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$27;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-boolean v4, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStateGlance:Z

    goto/16 :goto_0

    .line 7357
    :cond_7
    const-string v1, "isEnd"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7358
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$27;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-boolean v3, v1, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStateGlance:Z

    goto/16 :goto_0

    .line 7360
    :cond_8
    const-string v1, "android.intent.action.SHOW_GLOBAL_ACTIONS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7361
    const-string v1, "WindowManager"

    const-string v2, "GlobalActions Show is received."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7362
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$27;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const-string v2, "globalactions"

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 7363
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$27;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->showGlobalActionsDialog()V

    goto/16 :goto_0
.end method
