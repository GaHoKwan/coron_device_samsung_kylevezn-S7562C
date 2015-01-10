.class Lcom/android/mms/ui/ComposeMessageFragment$39;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->updateActionBarText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 4133
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$39;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 4137
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$39;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1000(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/Conversation;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$39;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mABNormalModeTitle:Lcom/android/mms/ui/ActionbarTitleTextView;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$4600(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/ActionbarTitleTextView;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    move v1, v2

    .line 4170
    :goto_0
    return v1

    .line 4140
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$39;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mConversation:Lcom/android/mms/data/Conversation;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1000(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/data/Conversation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4141
    .local v0, mCount:I
    if-le v0, v2, :cond_2

    .line 4142
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageFragment$39;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mABNormalModeTitle:Lcom/android/mms/ui/ActionbarTitleTextView;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->access$4600(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/ActionbarTitleTextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/HoverPopupWindow;->setEnabled(Z)V

    goto :goto_0

    .line 4144
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$39;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mABNormalModeTitle:Lcom/android/mms/ui/ActionbarTitleTextView;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$4600(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/ActionbarTitleTextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/HoverPopupWindow;->setEnabled(Z)V

    goto :goto_0
.end method
