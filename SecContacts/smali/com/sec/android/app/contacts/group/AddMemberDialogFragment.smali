.class public final Lcom/sec/android/app/contacts/group/AddMemberDialogFragment;
.super Landroid/app/DialogFragment;
.source "AddMemberDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/group/AddMemberDialogFragment$Listener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 45
    return-void
.end method

.method public static show(Landroid/app/FragmentManager;Landroid/app/Fragment;)V
    .locals 2
    .parameter "fragmentManager"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Landroid/app/Fragment;",
            ":",
            "Lcom/sec/android/app/contacts/group/AddMemberDialogFragment$Listener;",
            ">(",
            "Landroid/app/FragmentManager;",
            "TF;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, targetFragment:Landroid/app/Fragment;,"TF;"
    new-instance v0, Lcom/sec/android/app/contacts/group/AddMemberDialogFragment;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/group/AddMemberDialogFragment;-><init>()V

    .line 62
    .local v0, instance:Lcom/sec/android/app/contacts/group/AddMemberDialogFragment;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 63
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Fragment;->isDetached()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/app/Fragment;->isRemoving()Z

    move-result v1

    if-nez v1, :cond_0

    .line 64
    const/4 v1, 0x0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 65
    :cond_0
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 128
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 130
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 70
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 74
    .local v2, dialogInflater:Landroid/view/LayoutInflater;
    new-instance v0, Lcom/sec/android/app/contacts/group/AddMemberDialogFragment$1;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f040153

    invoke-direct {v0, p0, v3, v4, v2}, Lcom/sec/android/app/contacts/group/AddMemberDialogFragment$1;-><init>(Lcom/sec/android/app/contacts/group/AddMemberDialogFragment;Landroid/content/Context;ILandroid/view/LayoutInflater;)V

    .line 87
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/Integer;>;"
    const v3, 0x7f0d0343

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 88
    const v3, 0x7f0d028b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 90
    new-instance v1, Lcom/sec/android/app/contacts/group/AddMemberDialogFragment$2;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/contacts/group/AddMemberDialogFragment$2;-><init>(Lcom/sec/android/app/contacts/group/AddMemberDialogFragment;Landroid/widget/ArrayAdapter;)V

    .line 122
    .local v1, clickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0d0286

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method
