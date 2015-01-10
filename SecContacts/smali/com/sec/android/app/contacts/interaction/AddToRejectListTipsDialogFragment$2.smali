.class Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment$2;
.super Ljava/lang/Object;
.source "AddToRejectListTipsDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment$2;->this$0:Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment$2;->this$0:Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment;

    iget-object v0, v0, Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment$2;->this$0:Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment;->neverShowAddToRejectListTipsAgain(Landroid/content/Context;)V

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment$2;->this$0:Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment;

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment$2;->this$0:Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment;->addToRejectList(Landroid/app/Activity;Z)V

    .line 105
    return-void
.end method
