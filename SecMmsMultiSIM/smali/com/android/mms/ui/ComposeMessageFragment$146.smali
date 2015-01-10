.class Lcom/android/mms/ui/ComposeMessageFragment$146;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->updateRecipientHeader(Lcom/android/mms/data/Conversation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;

.field final synthetic val$conv:Lcom/android/mms/data/Conversation;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/data/Conversation;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 16683
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$146;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$146;->val$conv:Lcom/android/mms/data/Conversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 16685
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$146;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    const/4 v1, 0x0

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->isHeaderUpdateNeeded:Z
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$14202(Lcom/android/mms/ui/ComposeMessageFragment;Z)Z

    .line 16686
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$146;->val$conv:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$146;->val$conv:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 16688
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$146;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$146;->val$conv:Lcom/android/mms/data/Conversation;

    #setter for: Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1002(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/data/Conversation;)Lcom/android/mms/data/Conversation;

    .line 16689
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$146;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$146;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1000(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/Conversation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->setConversation(Lcom/android/mms/data/Conversation;Z)V

    .line 16690
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$146;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$146;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1000(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/Conversation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setWorkingRecipients(Lcom/android/mms/data/ContactList;)V

    .line 16692
    :cond_0
    return-void
.end method
