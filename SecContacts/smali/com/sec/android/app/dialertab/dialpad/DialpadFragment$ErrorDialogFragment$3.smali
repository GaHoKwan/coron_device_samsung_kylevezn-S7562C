.class Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment$3;
.super Ljava/lang/Object;
.source "DialpadFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment;

.field final synthetic val$mDialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment;Landroid/app/AlertDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 8694
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment$3;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment;

    iput-object p2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment$3;->val$mDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 4
    .parameter "dialog"

    .prologue
    .line 8698
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment$3;->this$0:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d030a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 8700
    .local v0, mLength:I
    const-string v2, "feature_wvga"

    invoke-static {v2}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xc

    if-le v0, v2, :cond_0

    .line 8701
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment$3;->val$mDialog:Landroid/app/AlertDialog;

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 8702
    .local v1, nagative:Landroid/widget/Button;
    const/4 v2, 0x1

    const/high16 v3, 0x4180

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 8704
    .end local v1           #nagative:Landroid/widget/Button;
    :cond_0
    return-void
.end method
