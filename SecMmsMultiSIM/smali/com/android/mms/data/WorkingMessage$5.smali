.class Lcom/android/mms/data/WorkingMessage$5;
.super Ljava/lang/Object;
.source "WorkingMessage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/data/WorkingMessage;->asyncUpdateDraftSmsMessage(Lcom/android/mms/data/Conversation;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/data/WorkingMessage;

.field final synthetic val$contents:Ljava/lang/String;

.field final synthetic val$conv:Lcom/android/mms/data/Conversation;

.field final synthetic val$priority:I


# direct methods
.method constructor <init>(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3083
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage$5;->this$0:Lcom/android/mms/data/WorkingMessage;

    iput-object p2, p0, Lcom/android/mms/data/WorkingMessage$5;->val$conv:Lcom/android/mms/data/Conversation;

    iput-object p3, p0, Lcom/android/mms/data/WorkingMessage$5;->val$contents:Ljava/lang/String;

    iput p4, p0, Lcom/android/mms/data/WorkingMessage$5;->val$priority:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 3085
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage$5;->val$conv:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->ensureThreadId()J

    move-result-wide v0

    .line 3086
    .local v0, threadId:J
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage$5;->val$conv:Lcom/android/mms/data/Conversation;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/mms/data/Conversation;->setDraftState(Z)V

    .line 3087
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage$5;->this$0:Lcom/android/mms/data/WorkingMessage;

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage$5;->val$contents:Ljava/lang/String;

    iget v4, p0, Lcom/android/mms/data/WorkingMessage$5;->val$priority:I

    #calls: Lcom/android/mms/data/WorkingMessage;->updateDraftSmsMessage(JLjava/lang/String;I)V
    invoke-static {v2, v0, v1, v3, v4}, Lcom/android/mms/data/WorkingMessage;->access$1000(Lcom/android/mms/data/WorkingMessage;JLjava/lang/String;I)V

    .line 3089
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableGroupMessage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3091
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage$5;->this$0:Lcom/android/mms/data/WorkingMessage;

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage$5;->val$conv:Lcom/android/mms/data/Conversation;

    #calls: Lcom/android/mms/data/WorkingMessage;->updateReplyAllStatus(Lcom/android/mms/data/Conversation;)V
    invoke-static {v2, v3}, Lcom/android/mms/data/WorkingMessage;->access$800(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;)V

    .line 3094
    :cond_0
    return-void
.end method
