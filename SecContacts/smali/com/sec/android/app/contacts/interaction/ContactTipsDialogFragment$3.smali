.class Lcom/sec/android/app/contacts/interaction/ContactTipsDialogFragment$3;
.super Ljava/lang/Object;
.source "ContactTipsDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/interaction/ContactTipsDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/interaction/ContactTipsDialogFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/interaction/ContactTipsDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/ContactTipsDialogFragment$3;->this$0:Lcom/sec/android/app/contacts/interaction/ContactTipsDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 108
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/ContactTipsDialogFragment$3;->this$0:Lcom/sec/android/app/contacts/interaction/ContactTipsDialogFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/interaction/ContactTipsDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 109
    .local v0, context:Landroid/content/Context;
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/ContactTipsDialogFragment$3;->this$0:Lcom/sec/android/app/contacts/interaction/ContactTipsDialogFragment;

    iget-object v1, v1, Lcom/sec/android/app/contacts/interaction/ContactTipsDialogFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    if-eqz v0, :cond_0

    .line 111
    invoke-static {v0}, Lcom/sec/android/app/contacts/interaction/ContactTipsDialogFragment;->neverShowContactTipsAgain(Landroid/content/Context;)V

    .line 114
    :cond_0
    if-eqz v0, :cond_1

    .line 115
    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/ContactTipsDialogFragment$3;->this$0:Lcom/sec/android/app/contacts/interaction/ContactTipsDialogFragment;

    iget-object v1, v1, Lcom/sec/android/app/contacts/interaction/ContactTipsDialogFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/interaction/ContactTipsDialogFragment;->storeCheckedState(Landroid/content/Context;Z)V

    .line 117
    :cond_1
    return-void
.end method
