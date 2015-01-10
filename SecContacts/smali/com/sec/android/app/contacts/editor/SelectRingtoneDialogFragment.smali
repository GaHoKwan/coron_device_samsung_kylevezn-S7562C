.class public final Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment;
.super Landroid/app/DialogFragment;
.source "SelectRingtoneDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment$Listener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 47
    return-void
.end method

.method public static show(Landroid/app/FragmentManager;Landroid/app/Fragment;)V
    .locals 3
    .parameter "fragmentManager"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Landroid/app/Fragment;",
            ":",
            "Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment$Listener;",
            ">(",
            "Landroid/app/FragmentManager;",
            "TF;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, targetFragment:Landroid/app/Fragment;,"TF;"
    :try_start_0
    new-instance v1, Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment;

    invoke-direct {v1}, Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment;-><init>()V

    .line 67
    .local v1, instance:Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment;
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 68
    const/4 v2, 0x0

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, p0, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .end local v1           #instance:Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment;
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 144
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 145
    invoke-virtual {p0}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    .line 146
    .local v1, targetFragment:Landroid/app/Fragment;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment$Listener;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 147
    check-cast v0, Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment$Listener;

    .line 148
    .local v0, target:Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment$Listener;
    invoke-interface {v0}, Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment$Listener;->onRingtoneSelectorCancelled()V

    .line 150
    .end local v0           #target:Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment$Listener;
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const v8, 0x7f0d0276

    .line 76
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 77
    .local v5, res:Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 81
    .local v2, dialogInflater:Landroid/view/LayoutInflater;
    new-instance v0, Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment$1;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f040153

    invoke-direct {v0, p0, v6, v7, v2}, Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment$1;-><init>(Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment;Landroid/content/Context;ILandroid/view/LayoutInflater;)V

    .line 94
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/Integer;>;"
    const v6, 0x7f0d0277

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 95
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 96
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isUsmMode(Landroid/content/Context;)Z

    move-result v4

    .line 97
    .local v4, isUsmEnabled:Z
    if-nez v4, :cond_0

    .line 98
    const v6, 0x7f0d027a

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 100
    :cond_0
    new-instance v1, Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment$2;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment$2;-><init>(Lcom/sec/android/app/contacts/editor/SelectRingtoneDialogFragment;Landroid/widget/ArrayAdapter;)V

    .line 136
    .local v1, clickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const/4 v7, -0x1

    invoke-virtual {v6, v0, v7, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 138
    .local v3, editRingtoneDlg:Landroid/app/AlertDialog;
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 139
    return-object v3
.end method
