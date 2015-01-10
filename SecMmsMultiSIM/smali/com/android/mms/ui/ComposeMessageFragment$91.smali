.class Lcom/android/mms/ui/ComposeMessageFragment$91;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->initResourceRefs()V
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
    .line 9487
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$91;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "arg0"
    .parameter "Keycode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 9491
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_6

    .line 9492
    const/16 v2, 0x13

    if-ne p2, v2, :cond_5

    .line 9494
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$91;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListPanel:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$400(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$91;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListPanel:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$400(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 9495
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$91;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListPanel:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$400(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 9517
    :goto_0
    return v0

    .line 9498
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$91;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1600(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/EditText;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$91;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1600(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 9499
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$91;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1600(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 9501
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$91;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->isReplyAllBannerVisible()Z
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1300(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$91;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mReplyAllInfoButton:Landroid/widget/ImageButton;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3200(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/ImageButton;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 9502
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$91;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->setFocusReplyAllBanner(Z)V
    invoke-static {v1, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1500(Lcom/android/mms/ui/ComposeMessageFragment;Z)V

    goto :goto_0

    .line 9505
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$91;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientButton:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3100(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$91;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1600(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/EditText;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$91;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mSubjectTextEditor:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$1600(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$91;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->isReplyAllBannerGone()Z
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3300(Lcom/android/mms/ui/ComposeMessageFragment;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 9507
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$91;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mRecipientButton:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$3100(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :cond_4
    move v0, v1

    .line 9512
    goto :goto_0

    :cond_5
    move v0, v1

    .line 9515
    goto :goto_0

    :cond_6
    move v0, v1

    .line 9517
    goto :goto_0
.end method
