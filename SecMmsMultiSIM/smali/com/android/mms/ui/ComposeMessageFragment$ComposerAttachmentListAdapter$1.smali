.class Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter$1;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$attachment:Lcom/android/mms/model/AttachmentModel;

.field final synthetic val$selectPosition:I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter;Lcom/android/mms/model/AttachmentModel;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 10441
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter$1;->val$attachment:Lcom/android/mms/model/AttachmentModel;

    iput p3, p0, Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter$1;->val$selectPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 10443
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter$1;->val$attachment:Lcom/android/mms/model/AttachmentModel;

    iget v2, p0, Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter$1;->val$selectPosition:I

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->attachmentListRemoveClick(Lcom/android/mms/model/AttachmentModel;I)V
    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->access$9900(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/model/AttachmentModel;I)V

    .line 10444
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter;

    iget-object v1, v1, Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mMmsRichContainer:Lcom/android/mms/ui/MmsRichContainer;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$100(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/MmsRichContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsRichContainer;->getFocusedEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->showSizeString(Ljava/lang/CharSequence;)V

    .line 10445
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$200(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 10446
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$9700(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListAdapter:Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$9800(Lcom/android/mms/ui/ComposeMessageFragment;)Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 10447
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter$1;->this$1:Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageFragment$ComposerAttachmentListAdapter;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$9700(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 10448
    :cond_0
    return-void
.end method
