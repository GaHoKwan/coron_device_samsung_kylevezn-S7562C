.class public Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;
.super Landroid/app/DialogFragment;
.source "SplitContactConfirmationDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment$Listener;
    }
.end annotation


# instance fields
.field private mContactId1:J

.field private mContactId2:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;->mContactId1:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;->mContactId2:J

    return-wide v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 77
    if-eqz p1, :cond_0

    .line 78
    const-string v0, "contactId1"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;->mContactId1:J

    .line 79
    const-string v0, "contactId2"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;->mContactId2:J

    .line 81
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 43
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 44
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0d003c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 45
    const v1, 0x7f0d029f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 46
    const v1, 0x104000a

    new-instance v2, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment$1;-><init>(Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 53
    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 54
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 55
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 70
    const-string v0, "contactId1"

    iget-wide v1, p0, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;->mContactId1:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 71
    const-string v0, "contactId2"

    iget-wide v1, p0, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;->mContactId2:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 72
    return-void
.end method

.method public setContactId(JJ)V
    .locals 0
    .parameter "contactId1"
    .parameter "contactId2"

    .prologue
    .line 63
    iput-wide p1, p0, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;->mContactId1:J

    .line 64
    iput-wide p3, p0, Lcom/android/contacts/editor/SplitContactConfirmationDialogFragment;->mContactId2:J

    .line 65
    return-void
.end method
