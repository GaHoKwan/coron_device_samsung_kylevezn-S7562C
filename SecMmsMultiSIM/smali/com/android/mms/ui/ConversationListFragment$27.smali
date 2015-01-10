.class Lcom/android/mms/ui/ConversationListFragment$27;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationListFragment;->confirmRegisterAsSpamNumber()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationListFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 3862
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment$27;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 3865
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment$27;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mContextMenuSelectedConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$2300(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/data/Conversation;

    move-result-object v1

    .line 3866
    .local v1, conv:Lcom/android/mms/data/Conversation;
    const/4 v0, 0x0

    .line 3867
    .local v0, blockContact:Lcom/android/mms/data/Contact;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/data/ContactList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 3868
    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #blockContact:Lcom/android/mms/data/Contact;
    check-cast v0, Lcom/android/mms/data/Contact;

    .line 3869
    .restart local v0       #blockContact:Lcom/android/mms/data/Contact;
    iget-object v2, p0, Lcom/android/mms/ui/ConversationListFragment$27;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/mms/ui/ConversationListFragment;->access$000(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/ui/MessageUtils;->registerAsSpamNumber(Landroid/content/Context;Ljava/lang/String;)Z

    .line 3872
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 3873
    return-void
.end method
