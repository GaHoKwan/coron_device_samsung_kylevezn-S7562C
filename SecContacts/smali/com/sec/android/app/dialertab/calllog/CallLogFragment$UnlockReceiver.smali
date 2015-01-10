.class Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UnlockReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CallLogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/CallLogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnlockReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 2365
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UnlockReceiver;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;Lcom/sec/android/app/dialertab/calllog/CallLogFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2365
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UnlockReceiver;-><init>(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2369
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2370
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2371
    const-string v1, "CallLogFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive - unlocked, mResetMissedCheck : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UnlockReceiver;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mResetMissedCheck:Z
    invoke-static {v3}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$1200(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2373
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UnlockReceiver;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mResetMissedCheck:Z
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$1200(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2374
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UnlockReceiver;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$1300(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/dialertab/calllog/CallLogQueryHandler;->markNewCallsAsOld()V

    .line 2375
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UnlockReceiver;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    #calls: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->removeMissedCallNotifications()V
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$1400(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V

    .line 2376
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UnlockReceiver;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    #calls: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->updateVoicemailNotifications()V
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$1500(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)V

    .line 2379
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UnlockReceiver;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    const/4 v2, 0x0

    #setter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mResetMissedCheck:Z
    invoke-static {v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$1202(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;Z)Z

    .line 2381
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UnlockReceiver;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->unlockReceiver:Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UnlockReceiver;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$1600(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UnlockReceiver;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2382
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UnlockReceiver;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$200(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UnlockReceiver;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    #getter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->unlockReceiver:Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UnlockReceiver;
    invoke-static {v2}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$1600(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;)Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UnlockReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2383
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UnlockReceiver;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogFragment;

    const/4 v2, 0x0

    #setter for: Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->unlockReceiver:Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UnlockReceiver;
    invoke-static {v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogFragment;->access$1602(Lcom/sec/android/app/dialertab/calllog/CallLogFragment;Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UnlockReceiver;)Lcom/sec/android/app/dialertab/calllog/CallLogFragment$UnlockReceiver;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2387
    :cond_1
    :goto_0
    return-void

    .line 2385
    :catch_0
    move-exception v1

    goto :goto_0
.end method
