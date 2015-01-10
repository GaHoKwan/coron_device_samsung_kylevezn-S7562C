.class Lcom/sec/android/app/contacts/interaction/ContactTipsDialogFragment$1;
.super Ljava/lang/Object;
.source "ContactTipsDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 95
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/ContactTipsDialogFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/ContactTipsDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    const/4 v1, 0x1

    .line 98
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/ContactTipsDialogFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/ContactTipsDialogFragment;

    iget-object v2, v0, Lcom/sec/android/app/contacts/interaction/ContactTipsDialogFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/ContactTipsDialogFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/ContactTipsDialogFragment;

    iget-object v0, v0, Lcom/sec/android/app/contacts/interaction/ContactTipsDialogFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 99
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/ContactTipsDialogFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/ContactTipsDialogFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/interaction/ContactTipsDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/contacts/interaction/ContactTipsDialogFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/ContactTipsDialogFragment;

    iget-object v2, v2, Lcom/sec/android/app/contacts/interaction/ContactTipsDialogFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/sec/android/app/contacts/interaction/ContactTipsDialogFragment;->storeCheckedState(Landroid/content/Context;Z)V

    .line 100
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/ContactTipsDialogFragment$1;->this$0:Lcom/sec/android/app/contacts/interaction/ContactTipsDialogFragment;

    iget-object v0, v0, Lcom/sec/android/app/contacts/interaction/ContactTipsDialogFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->sendAccessibilityEvent(I)V

    .line 101
    return-void

    .line 98
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
