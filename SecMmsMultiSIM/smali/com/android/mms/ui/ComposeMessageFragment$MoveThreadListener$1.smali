.class Lcom/android/mms/ui/ComposeMessageFragment$MoveThreadListener$1;
.super Ljava/lang/Thread;
.source "ComposeMessageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment$MoveThreadListener;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ComposeMessageFragment$MoveThreadListener;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment$MoveThreadListener;)V
    .locals 0
    .parameter

    .prologue
    .line 17513
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$MoveThreadListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$MoveThreadListener;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/16 v10, 0x3e8

    .line 17521
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$MoveThreadListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$MoveThreadListener;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment$MoveThreadListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mSelectedSMSMsgIds:Ljava/util/HashSet;
    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->access$14400(Lcom/android/mms/ui/ComposeMessageFragment;)Ljava/util/HashSet;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    .line 17522
    .local v3, moveSmsHashSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 17524
    .local v4, moveSmsIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 17526
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 17527
    .local v6, msgId:J
    invoke-static {v6, v7}, Lcom/android/mms/util/SecurityMailboxUtils;->moveConversationFromSMSTable(J)Z

    move-result v0

    .line 17529
    .local v0, mResults:Z
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    .line 17530
    .local v5, msg:Landroid/os/Message;
    iput v10, v5, Landroid/os/Message;->what:I

    .line 17531
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iput-object v8, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 17532
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$MoveThreadListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$MoveThreadListener;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment$MoveThreadListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->messageHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->access$14800(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 17540
    .end local v0           #mResults:Z
    .end local v5           #msg:Landroid/os/Message;
    .end local v6           #msgId:J
    :cond_0
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$MoveThreadListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$MoveThreadListener;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment$MoveThreadListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mSelectedMMSMsgIds:Ljava/util/HashSet;
    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->access$14500(Lcom/android/mms/ui/ComposeMessageFragment;)Ljava/util/HashSet;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    .line 17541
    .local v1, moveMmsHashSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 17542
    .local v2, moveMmsIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 17544
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 17545
    .restart local v6       #msgId:J
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$MoveThreadListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$MoveThreadListener;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment$MoveThreadListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mSelectedMMSThreadIds:Ljava/util/HashMap;
    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->access$14600(Lcom/android/mms/ui/ComposeMessageFragment;)Ljava/util/HashMap;

    move-result-object v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9, v6, v7}, Lcom/android/mms/util/SecurityMailboxUtils;->moveConversationFromMMSTable(JJ)Z

    move-result v0

    .line 17547
    .restart local v0       #mResults:Z
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    .line 17548
    .restart local v5       #msg:Landroid/os/Message;
    iput v10, v5, Landroid/os/Message;->what:I

    .line 17549
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iput-object v8, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 17550
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$MoveThreadListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$MoveThreadListener;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment$MoveThreadListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->messageHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->access$14800(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 17552
    .end local v0           #mResults:Z
    .end local v5           #msg:Landroid/os/Message;
    .end local v6           #msgId:J
    :cond_1
    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageFragment$MoveThreadListener$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$MoveThreadListener;

    iget-object v8, v8, Lcom/android/mms/ui/ComposeMessageFragment$MoveThreadListener;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageFragment;->access$200(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/Activity;

    move-result-object v8

    const/16 v9, 0x7b

    invoke-static {v8, v9}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 17554
    return-void
.end method
