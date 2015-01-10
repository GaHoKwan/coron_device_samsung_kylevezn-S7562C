.class Lcom/android/contacts/editor/ContactEditorFragment$CancelEditDialogFragment$1;
.super Ljava/lang/Object;
.source "ContactEditorFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/editor/ContactEditorFragment$CancelEditDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/ContactEditorFragment$CancelEditDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/editor/ContactEditorFragment$CancelEditDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 2391
    iput-object p1, p0, Lcom/android/contacts/editor/ContactEditorFragment$CancelEditDialogFragment$1;->this$0:Lcom/android/contacts/editor/ContactEditorFragment$CancelEditDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialogInterface"
    .parameter "whichButton"

    .prologue
    .line 2394
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$CancelEditDialogFragment$1;->this$0:Lcom/android/contacts/editor/ContactEditorFragment$CancelEditDialogFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/ContactEditorFragment;

    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorFragment$CancelEditDialogFragment$1;->this$0:Lcom/android/contacts/editor/ContactEditorFragment$CancelEditDialogFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    #calls: Lcom/android/contacts/editor/ContactEditorFragment;->hideInputMethod(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/android/contacts/editor/ContactEditorFragment;->access$1500(Lcom/android/contacts/editor/ContactEditorFragment;Landroid/view/View;)V

    .line 2395
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorFragment$CancelEditDialogFragment$1;->this$0:Lcom/android/contacts/editor/ContactEditorFragment$CancelEditDialogFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/editor/ContactEditorFragment;

    #calls: Lcom/android/contacts/editor/ContactEditorFragment;->doRevertAction()V
    invoke-static {v0}, Lcom/android/contacts/editor/ContactEditorFragment;->access$2100(Lcom/android/contacts/editor/ContactEditorFragment;)V

    .line 2396
    return-void
.end method
