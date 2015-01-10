.class Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment$1;
.super Ljava/lang/Object;
.source "AddToRejectListTipsDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 88
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment;

    iget-object v1, v0, Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment;

    iget-object v0, v0, Lcom/sec/android/app/contacts/interaction/AddToRejectListTipsDialogFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 92
    return-void

    .line 91
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
