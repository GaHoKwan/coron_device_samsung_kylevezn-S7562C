.class Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DirectCallingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/DirectCallingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnlockReceiver"
.end annotation


# instance fields
.field private mIsRegistered:Z

.field final synthetic this$0:Lcom/android/mms/util/DirectCallingManager;


# direct methods
.method private constructor <init>(Lcom/android/mms/util/DirectCallingManager;)V
    .locals 1
    .parameter

    .prologue
    .line 275
    iput-object p1, p0, Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;->this$0:Lcom/android/mms/util/DirectCallingManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 276
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;->mIsRegistered:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/util/DirectCallingManager;Lcom/android/mms/util/DirectCallingManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 275
    invoke-direct {p0, p1}, Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;-><init>(Lcom/android/mms/util/DirectCallingManager;)V

    return-void
.end method


# virtual methods
.method public getRegistered()Z
    .locals 1

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;->mIsRegistered:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 288
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 290
    const-string v1, "Mms/DirectCallingManager"

    const-string v2, "onReceive - unlocked"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;->this$0:Lcom/android/mms/util/DirectCallingManager;

    #getter for: Lcom/android/mms/util/DirectCallingManager;->mPaused:Z
    invoke-static {v1}, Lcom/android/mms/util/DirectCallingManager;->access$600(Lcom/android/mms/util/DirectCallingManager;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 293
    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;->this$0:Lcom/android/mms/util/DirectCallingManager;

    #calls: Lcom/android/mms/util/DirectCallingManager;->registerMotionRecognition()V
    invoke-static {v1}, Lcom/android/mms/util/DirectCallingManager;->access$700(Lcom/android/mms/util/DirectCallingManager;)V

    .line 297
    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;->this$0:Lcom/android/mms/util/DirectCallingManager;

    #calls: Lcom/android/mms/util/DirectCallingManager;->setTextToSpeech(Landroid/content/Context;)V
    invoke-static {v1, p1}, Lcom/android/mms/util/DirectCallingManager;->access$800(Lcom/android/mms/util/DirectCallingManager;Landroid/content/Context;)V

    .line 300
    :cond_0
    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;->this$0:Lcom/android/mms/util/DirectCallingManager;

    #getter for: Lcom/android/mms/util/DirectCallingManager;->mUnlockReceiver:Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;
    invoke-static {v1}, Lcom/android/mms/util/DirectCallingManager;->access$900(Lcom/android/mms/util/DirectCallingManager;)Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;->this$0:Lcom/android/mms/util/DirectCallingManager;

    #getter for: Lcom/android/mms/util/DirectCallingManager;->mUnlockReceiver:Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;
    invoke-static {v1}, Lcom/android/mms/util/DirectCallingManager;->access$900(Lcom/android/mms/util/DirectCallingManager;)Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;->getRegistered()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 301
    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;->this$0:Lcom/android/mms/util/DirectCallingManager;

    #getter for: Lcom/android/mms/util/DirectCallingManager;->mUnlockReceiver:Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;
    invoke-static {v1}, Lcom/android/mms/util/DirectCallingManager;->access$900(Lcom/android/mms/util/DirectCallingManager;)Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;->setRegistered(Z)V

    .line 302
    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;->this$0:Lcom/android/mms/util/DirectCallingManager;

    #getter for: Lcom/android/mms/util/DirectCallingManager;->mUnlockReceiver:Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;
    invoke-static {v1}, Lcom/android/mms/util/DirectCallingManager;->access$900(Lcom/android/mms/util/DirectCallingManager;)Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 303
    iget-object v1, p0, Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;->this$0:Lcom/android/mms/util/DirectCallingManager;

    const/4 v2, 0x0

    #setter for: Lcom/android/mms/util/DirectCallingManager;->mUnlockReceiver:Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;
    invoke-static {v1, v2}, Lcom/android/mms/util/DirectCallingManager;->access$902(Lcom/android/mms/util/DirectCallingManager;Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;)Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;

    .line 306
    :cond_1
    return-void
.end method

.method public setRegistered(Z)V
    .locals 0
    .parameter "isRegistered"

    .prologue
    .line 283
    iput-boolean p1, p0, Lcom/android/mms/util/DirectCallingManager$UnlockReceiver;->mIsRegistered:Z

    .line 284
    return-void
.end method
