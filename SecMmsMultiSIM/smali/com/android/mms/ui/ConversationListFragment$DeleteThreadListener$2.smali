.class Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->deleteRun()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)V
    .locals 0
    .parameter

    .prologue
    .line 2453
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/16 v12, 0x70a

    const/16 v11, 0xc8

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2455
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadId:J
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$3100(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v4, v7, v9

    if-nez v4, :cond_8

    .line 2456
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadIdList:[Ljava/lang/Long;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$3200(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)[Ljava/lang/Long;

    move-result-object v4

    if-nez v4, :cond_5

    .line 2458
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    iget-object v4, v4, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mIsAnimationEnable:Z
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment;->access$2900(Lcom/android/mms/ui/ConversationListFragment;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mHasLockedMessages:Z
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$3300(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteLockedMessages:Z
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$3400(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteStartHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$3500(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 2459
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteStartHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$3500(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2462
    :cond_1
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mHandler:Landroid/content/AsyncQueryHandler;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$3600(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Landroid/content/AsyncQueryHandler;

    move-result-object v4

    const/16 v5, 0x709

    iget-object v7, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteLockedMessages:Z
    invoke-static {v7}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$3400(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Z

    move-result v7

    invoke-static {v4, v5, v7}, Lcom/android/mms/data/Conversation;->startDeleteAll(Landroid/content/AsyncQueryHandler;IZ)V

    .line 2490
    :cond_2
    :goto_0
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2491
    const-string v4, "GATE"

    const-string v5, "<GATE-M>MSG_DELETED</GATE-M>"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2496
    :cond_3
    const-string v4, "ril.sms.gcf-mode"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2499
    .local v0, GcfMode:Ljava/lang/String;
    const-string v4, "On"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2500
    const-string v4, "Mms/ConversationList.DeleteThreadListener"

    const-string v5, "GCF Mode On"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2501
    sput v6, Lcom/android/mms/MmsConfig;->SMS_DB_COUNT:I

    .line 2502
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.GCF_DEVICE_STORAGE_OK"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2503
    .local v2, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$3800(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2506
    .end local v2           #intent:Landroid/content/Intent;
    :cond_4
    return-void

    .line 2466
    .end local v0           #GcfMode:Ljava/lang/String;
    :cond_5
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    iget-object v4, v4, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mIsAnimationEnable:Z
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment;->access$2900(Lcom/android/mms/ui/ConversationListFragment;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteStartHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$3500(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Landroid/os/Handler;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadIdList:[Ljava/lang/Long;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$3200(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)[Ljava/lang/Long;

    move-result-object v4

    array-length v4, v4

    if-le v4, v5, :cond_6

    .line 2467
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteStartHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$3500(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2470
    :cond_6
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadIdList:[Ljava/lang/Long;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$3200(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)[Ljava/lang/Long;

    move-result-object v4

    array-length v3, v4

    .line 2472
    .local v3, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 2473
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mHandler:Landroid/content/AsyncQueryHandler;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$3600(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Landroid/content/AsyncQueryHandler;

    move-result-object v7

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteLockedMessages:Z
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$3400(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Z

    move-result v8

    new-instance v9, Lcom/android/mms/ui/DeleteInfo;

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadIdList:[Ljava/lang/Long;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$3200(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)[Ljava/lang/Long;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    add-int/lit8 v4, v3, -0x1

    if-ne v4, v1, :cond_7

    move v4, v5

    :goto_2
    invoke-direct {v9, v10, v11, v4}, Lcom/android/mms/ui/DeleteInfo;-><init>(JZ)V

    invoke-static {v7, v12, v8, v5, v9}, Lcom/android/mms/data/Conversation;->startDelete(Landroid/content/AsyncQueryHandler;IZZLcom/android/mms/ui/DeleteInfo;)V

    .line 2472
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    move v4, v6

    .line 2473
    goto :goto_2

    .line 2479
    .end local v1           #i:I
    .end local v3           #length:I
    :cond_8
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mHasLockedMessages:Z
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$3300(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteLockedMessages:Z
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$3400(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 2480
    :cond_9
    sput-boolean v5, Lcom/android/mms/ui/ConversationListFragment;->mIsEmptyThread:Z

    .line 2484
    :cond_a
    iget-object v4, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mHandler:Landroid/content/AsyncQueryHandler;
    invoke-static {v4}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$3600(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Landroid/content/AsyncQueryHandler;

    move-result-object v4

    iget-object v7, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteLockedMessages:Z
    invoke-static {v7}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$3400(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Z

    move-result v7

    iget-object v8, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mDeleteDraftMessages:Z
    invoke-static {v8}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$3700(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)Z

    move-result v8

    new-instance v9, Lcom/android/mms/ui/DeleteInfo;

    iget-object v10, p0, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener$2;->this$1:Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;

    #getter for: Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->mThreadId:J
    invoke-static {v10}, Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;->access$3100(Lcom/android/mms/ui/ConversationListFragment$DeleteThreadListener;)J

    move-result-wide v10

    invoke-direct {v9, v10, v11, v5}, Lcom/android/mms/ui/DeleteInfo;-><init>(JZ)V

    invoke-static {v4, v12, v7, v8, v9}, Lcom/android/mms/data/Conversation;->startDelete(Landroid/content/AsyncQueryHandler;IZZLcom/android/mms/ui/DeleteInfo;)V

    goto/16 :goto_0
.end method
