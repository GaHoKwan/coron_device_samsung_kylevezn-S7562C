.class Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter$2;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 10452
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter$2;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 10454
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 10455
    packed-switch p2, :pswitch_data_0

    :cond_0
    move v0, v1

    .line 10470
    :goto_0
    :pswitch_0
    return v0

    .line 10460
    :pswitch_1
    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter$2;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListAdapter:Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$9800(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter$2;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListAdapter:Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$9800(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    if-ne v2, v0, :cond_1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter$2;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter;

    iget-object v2, v2, Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$800(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/Button;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 10463
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter$2;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mSendButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$800(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :cond_1
    move v0, v1

    .line 10466
    goto :goto_0

    .line 10455
    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
