.class Lcom/android/mms/data/WorkingMessage$8;
.super Ljava/lang/Object;
.source "WorkingMessage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/data/WorkingMessage;->saveSmsToPending(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/data/WorkingMessage;

.field final synthetic val$conv:Lcom/android/mms/data/Conversation;

.field final synthetic val$msgText:Ljava/lang/String;

.field final synthetic val$sendSimSlot:I


# direct methods
.method constructor <init>(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3906
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage$8;->this$0:Lcom/android/mms/data/WorkingMessage;

    iput-object p2, p0, Lcom/android/mms/data/WorkingMessage$8;->val$conv:Lcom/android/mms/data/Conversation;

    iput-object p3, p0, Lcom/android/mms/data/WorkingMessage$8;->val$msgText:Ljava/lang/String;

    iput p4, p0, Lcom/android/mms/data/WorkingMessage$8;->val$sendSimSlot:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 3908
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$8;->this$0:Lcom/android/mms/data/WorkingMessage;

    #getter for: Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;
    invoke-static {v0}, Lcom/android/mms/data/WorkingMessage;->access$1100(Lcom/android/mms/data/WorkingMessage;)Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onPreMessageSent()V

    .line 3912
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$8;->val$conv:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->ensureThreadId()J

    move-result-wide v3

    .line 3913
    .local v3, threadId:J
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$8;->val$conv:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->serialize()Ljava/lang/String;

    move-result-object v2

    .line 3915
    .local v2, semiSepRecipients:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$8;->this$0:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage$8;->val$msgText:Ljava/lang/String;

    iget v5, p0, Lcom/android/mms/data/WorkingMessage$8;->val$sendSimSlot:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/data/WorkingMessage;->createPendingSmsMessage(Ljava/lang/String;Ljava/lang/String;JI)V

    .line 3918
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$8;->this$0:Lcom/android/mms/data/WorkingMessage;

    #calls: Lcom/android/mms/data/WorkingMessage;->deleteDraftSmsMessage(J)V
    invoke-static {v0, v3, v4}, Lcom/android/mms/data/WorkingMessage;->access$1200(Lcom/android/mms/data/WorkingMessage;J)V

    .line 3919
    return-void
.end method
