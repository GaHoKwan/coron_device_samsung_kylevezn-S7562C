.class public Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment;
.super Landroid/app/DialogFragment;
.source "DialpadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorDialogFragment"
.end annotation


# instance fields
.field private mMessageResId:Ljava/lang/Integer;

.field private mTitleResId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8606
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(I)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment;
    .locals 1
    .parameter "titleResId"

    .prologue
    .line 8614
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment;->newInstanceInter(ILjava/lang/Integer;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(II)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment;
    .locals 1
    .parameter "titleResId"
    .parameter "messageResId"

    .prologue
    .line 8618
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment;->newInstanceInter(ILjava/lang/Integer;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment;

    move-result-object v0

    return-object v0
.end method

.method private static newInstanceInter(ILjava/lang/Integer;)Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment;
    .locals 4
    .parameter "titleResId"
    .parameter "messageResId"

    .prologue
    .line 8623
    new-instance v1, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment;

    invoke-direct {v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment;-><init>()V

    .line 8624
    .local v1, fragment:Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 8625
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "argTitleResId"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 8626
    if-eqz p1, :cond_0

    .line 8627
    const-string v2, "argMessageResId"

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 8629
    :cond_0
    invoke-virtual {v1, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 8630
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 8635
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 8636
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "argTitleResId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment;->mTitleResId:I

    .line 8637
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "argMessageResId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8638
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "argMessageResId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment;->mMessageResId:Ljava/lang/Integer;

    .line 8640
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 8644
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 8645
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment;->mTitleResId:I

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment$1;

    invoke-direct {v4, p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment$1;-><init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 8654
    invoke-static {}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment;->access$5100()Z

    move-result v2

    if-nez v2, :cond_0

    .line 8655
    const v2, 0x7f0d030a

    new-instance v3, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment$2;

    invoke-direct {v3, p0}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment$2;-><init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 8688
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment;->mMessageResId:Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 8689
    iget-object v2, p0, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment;->mMessageResId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 8692
    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 8694
    .local v1, mDialog:Landroid/app/AlertDialog;
    new-instance v2, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment$3;

    invoke-direct {v2, p0, v1}, Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment$3;-><init>(Lcom/sec/android/app/dialertab/dialpad/DialpadFragment$ErrorDialogFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 8707
    return-object v1
.end method
