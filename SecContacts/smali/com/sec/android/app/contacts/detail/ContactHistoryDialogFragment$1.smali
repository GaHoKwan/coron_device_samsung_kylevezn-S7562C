.class Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment$1;
.super Ljava/lang/Object;
.source "ContactHistoryDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    const/4 v1, 0x1

    .line 73
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;

    #getter for: Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;->mDialogCheckbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;->access$000(Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 74
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;

    #setter for: Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;->mShowNeverAgain:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;->access$102(Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;Z)Z

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment$1;->this$0:Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;->mShowNeverAgain:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;->access$102(Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;Z)Z

    goto :goto_0
.end method
