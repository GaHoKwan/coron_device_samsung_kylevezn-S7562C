.class public Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment;
.super Landroid/app/DialogFragment;
.source "GroupDeletionMenuDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment$Listener;
    }
.end annotation


# static fields
.field private static dialog:Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment;


# instance fields
.field private mSelectedGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 145
    return-void
.end method

.method public static show(Landroid/app/Fragment;Ljava/util/ArrayList;)V
    .locals 3
    .parameter "fragment"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Fragment;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, selectedGroups:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment;-><init>()V

    sput-object v0, Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment;->dialog:Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment;

    .line 57
    sget-object v0, Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment;->dialog:Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 58
    sget-object v0, Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment;->dialog:Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment;

    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "deleteGroup"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 59
    sget-object v0, Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment;->dialog:Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment;->setSelectedGroup(Ljava/util/ArrayList;)V

    .line 60
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    .line 71
    if-eqz p1, :cond_0

    .line 72
    const-string v1, "extraSelectedItemDialog"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment;->mSelectedGroups:Ljava/util/ArrayList;

    .line 74
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 77
    .local v5, dialogInflater:Landroid/view/LayoutInflater;
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 78
    .local v4, menu:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const v1, 0x7f0d027d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    const v1, 0x7f0d027e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance v0, Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment$1;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f040153

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment$1;-><init>(Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment;Landroid/content/Context;ILjava/util/List;Landroid/view/LayoutInflater;)V

    .line 99
    .local v0, menuAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/Integer;>;"
    new-instance v6, Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment$2;

    invoke-direct {v6, p0, v0}, Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment$2;-><init>(Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment;Landroid/widget/ArrayAdapter;)V

    .line 125
    .local v6, clickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v7, Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment$3;

    invoke-direct {v7, p0}, Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment$3;-><init>(Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment;)V

    .line 135
    .local v7, keylistener:Landroid/content/DialogInterface$OnKeyListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0d01ed

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2, v6}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 51
    const-string v0, "extraSelectedItemDialog"

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment;->mSelectedGroups:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 52
    return-void
.end method

.method public setSelectedGroup(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 142
    .local p1, selectedGroups:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/GroupDeletionMenuDialogFragment;->mSelectedGroups:Ljava/util/ArrayList;

    .line 143
    return-void
.end method
