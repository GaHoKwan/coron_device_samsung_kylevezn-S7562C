.class Lcom/android/mms/ui/ComposeMessageFragment$92;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    .line 9612
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$92;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    const/4 v1, 0x0

    .line 9614
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$92;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mBottomPanel:Landroid/view/View;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$9100(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setSelected(Z)V

    .line 9615
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$92;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$800(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 9616
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$92;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton2:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$9200(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 9617
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$92;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$600(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 9622
    return-void
.end method