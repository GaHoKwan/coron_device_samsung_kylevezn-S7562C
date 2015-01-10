.class public Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;
.super Landroid/app/DialogFragment;
.source "ContactEditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/ContactEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChangeAccountWarningDialogFragment"
.end annotation


# static fields
.field private static mCurrentAccount:Lcom/android/contacts/model/AccountWithDataSet;

.field private static mCurrentState:Lcom/android/contacts/model/EntityDelta;

.field private static mNewAccount:Lcom/android/contacts/model/AccountWithDataSet;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1880
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$1800()Lcom/android/contacts/model/AccountWithDataSet;
    .locals 1

    .prologue
    .line 1880
    sget-object v0, Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;->mCurrentAccount:Lcom/android/contacts/model/AccountWithDataSet;

    return-object v0
.end method

.method static synthetic access$1900()Lcom/android/contacts/model/AccountWithDataSet;
    .locals 1

    .prologue
    .line 1880
    sget-object v0, Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;->mNewAccount:Lcom/android/contacts/model/AccountWithDataSet;

    return-object v0
.end method

.method static synthetic access$2000()Lcom/android/contacts/model/EntityDelta;
    .locals 1

    .prologue
    .line 1880
    sget-object v0, Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;->mCurrentState:Lcom/android/contacts/model/EntityDelta;

    return-object v0
.end method

.method public static show(Lcom/android/contacts/editor/ContactEditorFragment;Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountWithDataSet;Lcom/android/contacts/model/AccountWithDataSet;)V
    .locals 3
    .parameter "fragment"
    .parameter "currentState"
    .parameter "currentAccount"
    .parameter "newAccount"

    .prologue
    .line 1890
    new-instance v0, Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;

    invoke-direct {v0}, Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;-><init>()V

    .line 1891
    .local v0, dialog:Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1893
    sput-object p1, Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;->mCurrentState:Lcom/android/contacts/model/EntityDelta;

    .line 1894
    sput-object p2, Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;->mCurrentAccount:Lcom/android/contacts/model/AccountWithDataSet;

    .line 1895
    sput-object p3, Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;->mNewAccount:Lcom/android/contacts/model/AccountWithDataSet;

    .line 1897
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "ChangeAccountWarning"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1898
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 1903
    if-eqz p1, :cond_0

    .line 1904
    const-string v1, "mCurrentState"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/EntityDelta;

    sput-object v1, Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;->mCurrentState:Lcom/android/contacts/model/EntityDelta;

    .line 1905
    const-string v1, "mCurrentAccount"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/AccountWithDataSet;

    sput-object v1, Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;->mCurrentAccount:Lcom/android/contacts/model/AccountWithDataSet;

    .line 1906
    const-string v1, "mNewAccount"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/AccountWithDataSet;

    sput-object v1, Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;->mNewAccount:Lcom/android/contacts/model/AccountWithDataSet;

    .line 1909
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d02b2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d02b3

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment$1;

    invoke-direct {v3, p0}, Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment$1;-><init>(Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1927
    .local v0, dialog:Landroid/app/AlertDialog;
    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 1932
    const-string v0, "mCurrentState"

    sget-object v1, Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;->mCurrentState:Lcom/android/contacts/model/EntityDelta;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1933
    const-string v0, "mCurrentAccount"

    sget-object v1, Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;->mCurrentAccount:Lcom/android/contacts/model/AccountWithDataSet;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1934
    const-string v0, "mNewAccount"

    sget-object v1, Lcom/android/contacts/editor/ContactEditorFragment$ChangeAccountWarningDialogFragment;->mNewAccount:Lcom/android/contacts/model/AccountWithDataSet;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1936
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1937
    return-void
.end method
