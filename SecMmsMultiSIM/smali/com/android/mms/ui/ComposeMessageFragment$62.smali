.class Lcom/android/mms/ui/ComposeMessageFragment$62;
.super Ljava/lang/Object;
.source "ComposeMessageFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageFragment;->showAddAttachmentDialog(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageFragment;

.field final synthetic val$attachmentTypeGridAdapter:Lcom/android/mms/ui/AttachmentTypeGridAdapter;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/ui/AttachmentTypeGridAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 7128
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageFragment$62;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageFragment$62;->val$attachmentTypeGridAdapter:Lcom/android/mms/ui/AttachmentTypeGridAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 7130
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$62;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    #getter for: Lcom/android/mms/ui/ComposeMessageFragment;->mAttachDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageFragment;->access$5800(Lcom/android/mms/ui/ComposeMessageFragment;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 7131
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageFragment$62;->this$0:Lcom/android/mms/ui/ComposeMessageFragment;

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageFragment$62;->val$attachmentTypeGridAdapter:Lcom/android/mms/ui/AttachmentTypeGridAdapter;

    invoke-virtual {v1, p3}, Lcom/android/mms/ui/AttachmentTypeGridAdapter;->buttonToCommand(I)I

    move-result v1

    #calls: Lcom/android/mms/ui/ComposeMessageFragment;->attachAppinfo(I)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageFragment;->access$6000(Lcom/android/mms/ui/ComposeMessageFragment;I)V

    .line 7132
    const/4 v0, 0x1

    return v0
.end method
