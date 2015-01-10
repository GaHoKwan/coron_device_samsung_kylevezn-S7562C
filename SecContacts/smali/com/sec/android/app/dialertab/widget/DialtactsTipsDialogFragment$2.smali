.class Lcom/sec/android/app/dialertab/widget/DialtactsTipsDialogFragment$2;
.super Ljava/lang/Object;
.source "DialtactsTipsDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/widget/DialtactsTipsDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/widget/DialtactsTipsDialogFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/widget/DialtactsTipsDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/sec/android/app/dialertab/widget/DialtactsTipsDialogFragment$2;->this$0:Lcom/sec/android/app/dialertab/widget/DialtactsTipsDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsTipsDialogFragment$2;->this$0:Lcom/sec/android/app/dialertab/widget/DialtactsTipsDialogFragment;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/widget/DialtactsTipsDialogFragment;->mCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/sec/android/app/dialertab/widget/DialtactsTipsDialogFragment$2;->this$0:Lcom/sec/android/app/dialertab/widget/DialtactsTipsDialogFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/widget/DialtactsTipsDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/dialertab/widget/DialtactsTipsDialogFragment;->neverShowContactTipsAgain(Landroid/content/Context;)V

    .line 96
    :cond_0
    return-void
.end method
