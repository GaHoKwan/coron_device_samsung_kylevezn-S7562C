.class public Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment;
.super Landroid/app/DialogFragment;
.source "DeleteContactsConfirmDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment$Listener;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mDeleteUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment$Listener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, deleteUris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment;->mDeleteUris:Ljava/util/ArrayList;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment;)Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment;->mListener:Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment$Listener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment;->mDeleteUris:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static show(Landroid/app/FragmentManager;Ljava/util/ArrayList;Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment$Listener;)V
    .locals 2
    .parameter "fragmentManager"
    .parameter
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/FragmentManager;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment$Listener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 95
    .local p1, deleteUris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    new-instance v0, Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment;

    invoke-direct {v0, p1}, Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment;-><init>(Ljava/util/ArrayList;)V

    .line 97
    .local v0, fragment:Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment;
    :try_start_0
    invoke-virtual {v0, p2}, Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment;->setListener(Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment$Listener;)V

    .line 98
    const-string v1, "DeleteContactsConfirmDialogFragment"

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 60
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment;->mActivity:Landroid/app/Activity;

    .line 61
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 72
    if-eqz p1, :cond_0

    .line 73
    const-string v2, "deleteUris"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment;->mDeleteUris:Ljava/util/ArrayList;

    .line 76
    :cond_0
    const v2, 0x7f0d025e

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, message:Ljava/lang/String;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0d024a

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment$1;

    invoke-direct {v4, p0}, Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment$1;-><init>(Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 91
    .local v0, deleteContactsConfirmDialog:Landroid/app/AlertDialog;
    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 67
    const-string v0, "deleteUris"

    iget-object v1, p0, Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment;->mDeleteUris:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 68
    return-void
.end method

.method public setListener(Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment;->mListener:Lcom/sec/android/app/contacts/interaction/DeleteContactsConfirmDialogFragment$Listener;

    .line 105
    return-void
.end method
