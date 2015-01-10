.class Lcom/android/mms/ui/ConversationListFragment$25;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationListFragment;->moveSelectedConversations()V
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
    .line 3508
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListFragment$25;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v12, 0x0

    .line 3512
    iget-object v7, p0, Lcom/android/mms/ui/ConversationListFragment$25;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-static {v7}, Lcom/android/mms/ui/ConversationListFragment;->access$200(Lcom/android/mms/ui/ConversationListFragment;)Lcom/android/mms/ui/ConversationListAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/ui/ConversationListAdapter;->getCheckedList()[Ljava/lang/Long;

    move-result-object v1

    .line 3513
    .local v1, checkedthreadList:[Ljava/lang/Long;
    iget-object v7, p0, Lcom/android/mms/ui/ConversationListFragment$25;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mSelectedThreadIds:Ljava/util/HashSet;
    invoke-static {v7}, Lcom/android/mms/ui/ConversationListFragment;->access$5100(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/HashSet;

    move-result-object v7

    if-nez v7, :cond_1

    .line 3514
    iget-object v7, p0, Lcom/android/mms/ui/ConversationListFragment$25;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    #setter for: Lcom/android/mms/ui/ConversationListFragment;->mSelectedThreadIds:Ljava/util/HashSet;
    invoke-static {v7, v8}, Lcom/android/mms/ui/ConversationListFragment;->access$5102(Lcom/android/mms/ui/ConversationListFragment;Ljava/util/HashSet;)Ljava/util/HashSet;

    .line 3519
    :goto_0
    move-object v0, v1

    .local v0, arr$:[Ljava/lang/Long;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v7, v0, v2

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 3520
    .local v5, threadId:J
    iget-object v7, p0, Lcom/android/mms/ui/ConversationListFragment$25;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #calls: Lcom/android/mms/ui/ConversationListFragment;->threadHasUnmoveableMessages(J)Z
    invoke-static {v7, v5, v6}, Lcom/android/mms/ui/ConversationListFragment;->access$5200(Lcom/android/mms/ui/ConversationListFragment;J)Z

    move-result v7

    if-nez v7, :cond_0

    .line 3521
    iget-object v7, p0, Lcom/android/mms/ui/ConversationListFragment$25;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mSelectedThreadIds:Ljava/util/HashSet;
    invoke-static {v7}, Lcom/android/mms/ui/ConversationListFragment;->access$5100(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/HashSet;

    move-result-object v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3519
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3516
    .end local v0           #arr$:[Ljava/lang/Long;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v5           #threadId:J
    :cond_1
    iget-object v7, p0, Lcom/android/mms/ui/ConversationListFragment$25;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mSelectedThreadIds:Ljava/util/HashSet;
    invoke-static {v7}, Lcom/android/mms/ui/ConversationListFragment;->access$5100(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/HashSet;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashSet;->clear()V

    goto :goto_0

    .line 3524
    .restart local v0       #arr$:[Ljava/lang/Long;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    :cond_2
    iget-object v7, p0, Lcom/android/mms/ui/ConversationListFragment$25;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mSelectedThreadIds:Ljava/util/HashSet;
    invoke-static {v7}, Lcom/android/mms/ui/ConversationListFragment;->access$5100(Lcom/android/mms/ui/ConversationListFragment;)Ljava/util/HashSet;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashSet;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 3526
    iget-object v7, p0, Lcom/android/mms/ui/ConversationListFragment$25;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v7}, Lcom/android/mms/ui/ConversationListFragment;->access$000(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0a0443

    invoke-static {v7, v8, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 3620
    :goto_2
    return-void

    .line 3529
    :cond_3
    iget-object v7, p0, Lcom/android/mms/ui/ConversationListFragment$25;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #setter for: Lcom/android/mms/ui/ConversationListFragment;->moveMsgCount:I
    invoke-static {v7, v12}, Lcom/android/mms/ui/ConversationListFragment;->access$5302(Lcom/android/mms/ui/ConversationListFragment;I)I

    .line 3532
    new-instance v4, Lcom/android/mms/ui/ConversationListFragment$25$1;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/ConversationListFragment$25$1;-><init>(Lcom/android/mms/ui/ConversationListFragment$25;)V

    .line 3615
    .local v4, moveMsgsThread:Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 3617
    iget-object v7, p0, Lcom/android/mms/ui/ConversationListFragment$25;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    iget-object v8, p0, Lcom/android/mms/ui/ConversationListFragment$25;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v8}, Lcom/android/mms/ui/ConversationListFragment;->access$000(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v8

    const-string v9, ""

    iget-object v10, p0, Lcom/android/mms/ui/ConversationListFragment$25;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v10}, Lcom/android/mms/ui/ConversationListFragment;->access$000(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f0a0440

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v8, v9, v10, v11}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v8

    #setter for: Lcom/android/mms/ui/ConversationListFragment;->moveProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v7, v8}, Lcom/android/mms/ui/ConversationListFragment;->access$5502(Lcom/android/mms/ui/ConversationListFragment;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 3619
    iget-object v7, p0, Lcom/android/mms/ui/ConversationListFragment$25;->this$0:Lcom/android/mms/ui/ConversationListFragment;

    #getter for: Lcom/android/mms/ui/ConversationListFragment;->moveProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lcom/android/mms/ui/ConversationListFragment;->access$5500(Lcom/android/mms/ui/ConversationListFragment;)Landroid/app/ProgressDialog;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_2
.end method
