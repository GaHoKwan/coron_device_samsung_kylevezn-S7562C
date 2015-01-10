.class Lcom/android/contacts/interactions/GroupNameDialogFragment$2;
.super Ljava/lang/Object;
.source "GroupNameDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/interactions/GroupNameDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/interactions/GroupNameDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/contacts/interactions/GroupNameDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/contacts/interactions/GroupNameDialogFragment$2;->this$0:Lcom/android/contacts/interactions/GroupNameDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x0

    .line 93
    iget-object v0, p0, Lcom/android/contacts/interactions/GroupNameDialogFragment$2;->this$0:Lcom/android/contacts/interactions/GroupNameDialogFragment;

    iget-object v1, p0, Lcom/android/contacts/interactions/GroupNameDialogFragment$2;->this$0:Lcom/android/contacts/interactions/GroupNameDialogFragment;

    #getter for: Lcom/android/contacts/interactions/GroupNameDialogFragment;->mEdit:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/contacts/interactions/GroupNameDialogFragment;->access$000(Lcom/android/contacts/interactions/GroupNameDialogFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/interactions/GroupNameDialogFragment;->isTitleDuplicated(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/android/contacts/interactions/GroupNameDialogFragment$2;->this$0:Lcom/android/contacts/interactions/GroupNameDialogFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d0281

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 105
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/interactions/GroupNameDialogFragment$2;->this$0:Lcom/android/contacts/interactions/GroupNameDialogFragment;

    iget-object v1, p0, Lcom/android/contacts/interactions/GroupNameDialogFragment$2;->this$0:Lcom/android/contacts/interactions/GroupNameDialogFragment;

    #getter for: Lcom/android/contacts/interactions/GroupNameDialogFragment;->mEdit:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/contacts/interactions/GroupNameDialogFragment;->access$000(Lcom/android/contacts/interactions/GroupNameDialogFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/contacts/interactions/GroupNameDialogFragment;->checkEmpty(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/contacts/interactions/GroupNameDialogFragment;->access$100(Lcom/android/contacts/interactions/GroupNameDialogFragment;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/android/contacts/interactions/GroupNameDialogFragment$2;->this$0:Lcom/android/contacts/interactions/GroupNameDialogFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0d0280

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/interactions/GroupNameDialogFragment$2;->this$0:Lcom/android/contacts/interactions/GroupNameDialogFragment;

    iget-object v1, p0, Lcom/android/contacts/interactions/GroupNameDialogFragment$2;->this$0:Lcom/android/contacts/interactions/GroupNameDialogFragment;

    #getter for: Lcom/android/contacts/interactions/GroupNameDialogFragment;->mEdit:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/contacts/interactions/GroupNameDialogFragment;->access$000(Lcom/android/contacts/interactions/GroupNameDialogFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/interactions/GroupNameDialogFragment;->onCompleted(Ljava/lang/String;)V

    .line 104
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method
