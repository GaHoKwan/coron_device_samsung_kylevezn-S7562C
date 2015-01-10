.class Lcom/android/mms/ui/ConversationComposer$6;
.super Ljava/lang/Object;
.source "ConversationComposer.java"

# interfaces
.implements Lcom/android/mms/ui/OnEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationComposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationComposer;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationComposer;)V
    .locals 0
    .parameter

    .prologue
    .line 1845
    iput-object p1, p0, Lcom/android/mms/ui/ConversationComposer$6;->this$0:Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1847
    const-string v1, "Mms/ConversationComposer"

    const-string v2, "onComposerClose"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1849
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer$6;->this$0:Lcom/android/mms/ui/ConversationComposer;

    #calls: Lcom/android/mms/ui/ConversationComposer;->composerRequestsClosing()V
    invoke-static {v1}, Lcom/android/mms/ui/ConversationComposer;->access$400(Lcom/android/mms/ui/ConversationComposer;)V

    .line 1850
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer$6;->this$0:Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationComposer;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1852
    .local v0, actionbar:Landroid/app/ActionBar;
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer$6;->this$0:Lcom/android/mms/ui/ConversationComposer;

    #getter for: Lcom/android/mms/ui/ConversationComposer;->mUseSplitView:Z
    invoke-static {v1}, Lcom/android/mms/ui/ConversationComposer;->access$500(Lcom/android/mms/ui/ConversationComposer;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1853
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 1854
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer$6;->this$0:Lcom/android/mms/ui/ConversationComposer;

    #getter for: Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationComposer;->access$600(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1855
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer$6;->this$0:Lcom/android/mms/ui/ConversationComposer;

    #getter for: Lcom/android/mms/ui/ConversationComposer;->mComposeMessage:Lcom/android/mms/ui/ComposeMessageFragment;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationComposer;->access$600(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/ComposeMessageFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->reInitComposerActionbar()V

    .line 1858
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer$6;->this$0:Lcom/android/mms/ui/ConversationComposer;

    #getter for: Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationComposer;->access$000(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/ConversationListFragment;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1859
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer$6;->this$0:Lcom/android/mms/ui/ConversationComposer;

    #calls: Lcom/android/mms/ui/ConversationComposer;->getComposeMessageStatus()I
    invoke-static {v1}, Lcom/android/mms/ui/ConversationComposer;->access$700(Lcom/android/mms/ui/ConversationComposer;)I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 1860
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer$6;->this$0:Lcom/android/mms/ui/ConversationComposer;

    #getter for: Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationComposer;->access$000(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/ConversationListFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListFragment;->getConversationListAdapter()Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->initListItemSelectedThreadId()V

    .line 1861
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1864
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ConversationComposer$6;->this$0:Lcom/android/mms/ui/ConversationComposer;

    #getter for: Lcom/android/mms/ui/ConversationComposer;->mConversationList:Lcom/android/mms/ui/ConversationListFragment;
    invoke-static {v1}, Lcom/android/mms/ui/ConversationComposer;->access$000(Lcom/android/mms/ui/ConversationComposer;)Lcom/android/mms/ui/ConversationListFragment;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/mms/ui/ConversationListFragment;->closeSearchView(Z)V

    .line 1866
    :cond_2
    return-void
.end method
