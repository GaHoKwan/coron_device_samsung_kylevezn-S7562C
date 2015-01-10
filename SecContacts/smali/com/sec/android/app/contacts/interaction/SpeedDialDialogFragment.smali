.class public final Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;
.super Landroid/app/DialogFragment;
.source "SpeedDialDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment$Listener;
    }
.end annotation


# static fields
.field private static mChangedPosition:I

.field private static sListener:Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment$Listener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 185
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 53
    sget v0, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;->mChangedPosition:I

    return v0
.end method

.method public static show(Landroid/app/FragmentManager;Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment$Listener;I)V
    .locals 2
    .parameter "fragmentManager"
    .parameter "listener"
    .parameter "index"

    .prologue
    .line 70
    new-instance v0, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;-><init>()V

    .line 71
    .local v0, fragment:Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;
    sput-object p1, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;->sListener:Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment$Listener;

    .line 72
    sput p2, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;->mChangedPosition:I

    .line 74
    const-string v1, "SpeedDialDialogFragment"

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 76
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 172
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 174
    sget-object v0, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;->sListener:Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment$Listener;

    if-eqz v0, :cond_0

    .line 175
    sget-object v0, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;->sListener:Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment$Listener;

    invoke-interface {v0}, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment$Listener;->onItemSelectorCancelled()V

    .line 177
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 66
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 80
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 83
    .local v2, dialogInflater:Landroid/view/LayoutInflater;
    new-instance v0, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment$1;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f040153

    invoke-direct {v0, p0, v4, v5, v2}, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment$1;-><init>(Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;Landroid/content/Context;ILandroid/view/LayoutInflater;)V

    .line 97
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/Integer;>;"
    const v4, 0x7f0d0343

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 98
    const v4, 0x7f0d028b

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 99
    new-instance v1, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment$2;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment$2;-><init>(Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;Landroid/widget/ArrayAdapter;)V

    .line 141
    .local v1, clickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0d00c6

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4, v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment$3;

    invoke-direct {v5, p0}, Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment$3;-><init>(Lcom/sec/android/app/contacts/interaction/SpeedDialDialogFragment;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 155
    .local v3, result:Landroid/app/AlertDialog;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 157
    return-object v3
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 182
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 183
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 167
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 168
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 163
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 164
    return-void
.end method
