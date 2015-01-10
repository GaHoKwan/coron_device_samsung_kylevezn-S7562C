.class Lcom/android/mms/ui/MessageListItem$1$1;
.super Ljava/lang/Object;
.source "MessageListItem.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageListItem$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/MessageListItem$1;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListItem$1;)V
    .locals 0
    .parameter

    .prologue
    .line 866
    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem$1$1;->this$1:Lcom/android/mms/ui/MessageListItem$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 869
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$1$1;->this$1:Lcom/android/mms/ui/MessageListItem$1;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListItem$1;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mDownloadingContainer:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/mms/ui/MessageListItem;->access$800(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 870
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$1$1;->this$1:Lcom/android/mms/ui/MessageListItem$1;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListItem$1;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/mms/ui/MessageListItem;->access$900(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/Button;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 871
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$1$1;->this$1:Lcom/android/mms/ui/MessageListItem$1;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListItem$1;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mDownloadButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/mms/ui/MessageListItem;->access$900(Lcom/android/mms/ui/MessageListItem;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setLinksClickable(Z)V

    .line 873
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v1

    iput-boolean v3, v1, Lcom/android/mms/MmsApp;->mDataSwitchDialog:Z

    .line 875
    const/4 v0, 0x0

    .line 878
    .local v0, mIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$1$1;->this$1:Lcom/android/mms/ui/MessageListItem$1;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListItem$1;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mMmsItemForDataSwitching:Lcom/android/mms/ui/MessageItem;
    invoke-static {v1}, Lcom/android/mms/ui/MessageListItem;->access$700(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v1

    iget v1, v1, Lcom/android/mms/ui/MessageItem;->mSimSlot:I

    if-ne v1, v3, :cond_0

    .line 879
    new-instance v0, Landroid/content/Intent;

    .end local v0           #mIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$1$1;->this$1:Lcom/android/mms/ui/MessageListItem$1;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListItem$1;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/MessageListItem;->access$1000(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/mms/transaction/TransactionService2;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 883
    .restart local v0       #mIntent:Landroid/content/Intent;
    :goto_0
    const-string v1, "uri"

    iget-object v2, p0, Lcom/android/mms/ui/MessageListItem$1$1;->this$1:Lcom/android/mms/ui/MessageListItem$1;

    iget-object v2, v2, Lcom/android/mms/ui/MessageListItem$1;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Lcom/android/mms/ui/MessageListItem;->mMmsItemForDataSwitching:Lcom/android/mms/ui/MessageItem;
    invoke-static {v2}, Lcom/android/mms/ui/MessageListItem;->access$700(Lcom/android/mms/ui/MessageListItem;)Lcom/android/mms/ui/MessageItem;

    move-result-object v2

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 884
    const-string v1, "type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 886
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$1$1;->this$1:Lcom/android/mms/ui/MessageListItem$1;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListItem$1;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/MessageListItem;->access$1200(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 888
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 889
    return-void

    .line 881
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .end local v0           #mIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/mms/ui/MessageListItem$1$1;->this$1:Lcom/android/mms/ui/MessageListItem$1;

    iget-object v1, v1, Lcom/android/mms/ui/MessageListItem$1;->this$0:Lcom/android/mms/ui/MessageListItem;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/mms/ui/MessageListItem;->access$1100(Lcom/android/mms/ui/MessageListItem;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v0       #mIntent:Landroid/content/Intent;
    goto :goto_0
.end method
