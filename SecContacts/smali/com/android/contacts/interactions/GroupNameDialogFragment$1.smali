.class Lcom/android/contacts/interactions/GroupNameDialogFragment$1;
.super Ljava/lang/Object;
.source "GroupNameDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 69
    iput-object p1, p0, Lcom/android/contacts/interactions/GroupNameDialogFragment$1;->this$0:Lcom/android/contacts/interactions/GroupNameDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 71
    iget-object v1, p0, Lcom/android/contacts/interactions/GroupNameDialogFragment$1;->this$0:Lcom/android/contacts/interactions/GroupNameDialogFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/android/contacts/interactions/GroupNameDialogFragment$1;->this$0:Lcom/android/contacts/interactions/GroupNameDialogFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 73
    .local v0, mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/contacts/interactions/GroupNameDialogFragment$1;->this$0:Lcom/android/contacts/interactions/GroupNameDialogFragment;

    #getter for: Lcom/android/contacts/interactions/GroupNameDialogFragment;->mEdit:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/contacts/interactions/GroupNameDialogFragment;->access$000(Lcom/android/contacts/interactions/GroupNameDialogFragment;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 75
    .end local v0           #mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method
