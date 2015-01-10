.class public final Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment;
.super Landroid/app/DialogFragment;
.source "SelectDetailDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment$Listener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment;IILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment;->onItemSelected(IILjava/lang/String;)V

    return-void
.end method

.method private onItemSelected(IILjava/lang/String;)V
    .locals 3
    .parameter "type"
    .parameter "which"
    .parameter "data"

    .prologue
    .line 110
    invoke-virtual {p0}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    .line 111
    .local v1, targetFragment:Landroid/app/Fragment;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment$Listener;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 112
    check-cast v0, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment$Listener;

    .line 113
    .local v0, target:Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment$Listener;
    invoke-interface {v0, p1, p2, p3}, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment$Listener;->onItemChosen(IILjava/lang/String;)V

    .line 115
    .end local v0           #target:Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment$Listener;
    :cond_0
    return-void
.end method

.method public static show(Landroid/app/FragmentManager;Landroid/app/Fragment;IILjava/util/ArrayList;Ljava/lang/String;)V
    .locals 4
    .parameter "fragmentManager"
    .parameter
    .parameter "type"
    .parameter "title"
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Landroid/app/Fragment;",
            ":",
            "Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment$Listener;",
            ">(",
            "Landroid/app/FragmentManager;",
            "TF;II",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, targetFragment:Landroid/app/Fragment;,"TF;"
    .local p4, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 52
    .local v0, args:Landroid/os/Bundle;
    const-string v3, "type"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 53
    const-string v3, "title"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 54
    const-string v3, "items"

    invoke-virtual {v0, v3, p4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 55
    const-string v3, "data"

    invoke-virtual {v0, v3, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    new-instance v2, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment;

    invoke-direct {v2}, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment;-><init>()V

    .line 62
    .local v2, instance:Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment;
    :try_start_0
    invoke-virtual {v2, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 63
    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 64
    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v1

    .line 66
    .local v1, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 101
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 102
    invoke-virtual {p0}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    .line 103
    .local v1, targetFragment:Landroid/app/Fragment;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment$Listener;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 104
    check-cast v0, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment$Listener;

    .line 105
    .local v0, target:Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment$Listener;
    invoke-interface {v0}, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment$Listener;->onItemSelectorCancelled()V

    .line 107
    .end local v0           #target:Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment$Listener;
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    .line 72
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v2, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 73
    .local v2, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 74
    .local v1, args:Landroid/os/Bundle;
    const-string v9, "type"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 75
    .local v8, type:I
    const-string v9, "title"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 76
    .local v7, title:I
    const-string v9, "data"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 77
    .local v4, data:Ljava/lang/String;
    const-string v9, "items"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 79
    .local v5, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f040153

    invoke-direct {v0, v9, v10, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 81
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    new-instance v3, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment$1;

    invoke-direct {v3, p0, v4, v0, v8}, Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment$1;-><init>(Lcom/sec/android/app/contacts/detail/SelectDetailDialogFragment;Ljava/lang/String;Landroid/widget/ArrayAdapter;I)V

    .line 92
    .local v3, clickListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 93
    const/4 v9, -0x1

    invoke-virtual {v2, v0, v9, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 94
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 95
    .local v6, result:Landroid/app/AlertDialog;
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 96
    return-object v6
.end method
