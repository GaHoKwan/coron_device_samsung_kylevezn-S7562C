.class public Lcom/sec/android/app/contacts/group/PhoneNumberBrowseDialogFragment;
.super Landroid/app/DialogFragment;
.source "PhoneNumberBrowseDialogFragment.java"


# static fields
.field private static mPhoneNumberBrowseDialogFragment:Lcom/sec/android/app/contacts/group/PhoneNumberBrowseDialogFragment;


# instance fields
.field private mAdapter:Lcom/sec/android/app/contacts/group/PhoneNumberBrowseListAdapter;

.field private mName:Ljava/lang/String;

.field private mPhonNumberInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/model/PhoneNumberInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/contacts/group/PhoneNumberBrowseDialogFragment;->mPhoneNumberBrowseDialogFragment:Lcom/sec/android/app/contacts/group/PhoneNumberBrowseDialogFragment;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/group/PhoneNumberBrowseDialogFragment;)Lcom/sec/android/app/contacts/group/PhoneNumberBrowseListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/PhoneNumberBrowseDialogFragment;->mAdapter:Lcom/sec/android/app/contacts/group/PhoneNumberBrowseListAdapter;

    return-object v0
.end method

.method public static getInstance()Lcom/sec/android/app/contacts/group/PhoneNumberBrowseDialogFragment;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/sec/android/app/contacts/group/PhoneNumberBrowseDialogFragment;->mPhoneNumberBrowseDialogFragment:Lcom/sec/android/app/contacts/group/PhoneNumberBrowseDialogFragment;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/sec/android/app/contacts/group/PhoneNumberBrowseDialogFragment;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/group/PhoneNumberBrowseDialogFragment;-><init>()V

    sput-object v0, Lcom/sec/android/app/contacts/group/PhoneNumberBrowseDialogFragment;->mPhoneNumberBrowseDialogFragment:Lcom/sec/android/app/contacts/group/PhoneNumberBrowseDialogFragment;

    .line 56
    :cond_0
    sget-object v0, Lcom/sec/android/app/contacts/group/PhoneNumberBrowseDialogFragment;->mPhoneNumberBrowseDialogFragment:Lcom/sec/android/app/contacts/group/PhoneNumberBrowseDialogFragment;

    return-object v0
.end method

.method public static show(Landroid/app/FragmentManager;Landroid/app/Fragment;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 5
    .parameter "fragmentManager"
    .parameter "targetFragment"
    .parameter
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/FragmentManager;",
            "Landroid/app/Fragment;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/model/PhoneNumberInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 62
    .local p2, phonNumberInfoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/contacts/model/PhoneNumberInfo;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 63
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "phoneNumberDataList"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 64
    const-string v2, "name"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :try_start_0
    invoke-static {}, Lcom/sec/android/app/contacts/group/PhoneNumberBrowseDialogFragment;->getInstance()Lcom/sec/android/app/contacts/group/PhoneNumberBrowseDialogFragment;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 70
    invoke-static {}, Lcom/sec/android/app/contacts/group/PhoneNumberBrowseDialogFragment;->getInstance()Lcom/sec/android/app/contacts/group/PhoneNumberBrowseDialogFragment;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 71
    invoke-static {}, Lcom/sec/android/app/contacts/group/PhoneNumberBrowseDialogFragment;->getInstance()Lcom/sec/android/app/contacts/group/PhoneNumberBrowseDialogFragment;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v1

    .line 73
    .local v1, e:Ljava/lang/IllegalStateException;
    const-string v2, "EmergencyServiceCreationDialogFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot create group"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    .line 79
    const-string v4, "PhoneNumberBrowseDialogFragment"

    const-string v5, "onCreateDialog"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 81
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 82
    .local v0, args:Landroid/os/Bundle;
    const-string v4, "phoneNumberDataList"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/contacts/group/PhoneNumberBrowseDialogFragment;->mPhonNumberInfoList:Ljava/util/ArrayList;

    .line 83
    const-string v4, "name"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/contacts/group/PhoneNumberBrowseDialogFragment;->mName:Ljava/lang/String;

    .line 84
    new-instance v4, Lcom/sec/android/app/contacts/group/PhoneNumberBrowseListAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f040153

    iget-object v7, p0, Lcom/sec/android/app/contacts/group/PhoneNumberBrowseDialogFragment;->mPhonNumberInfoList:Ljava/util/ArrayList;

    invoke-direct {v4, v5, v6, v7}, Lcom/sec/android/app/contacts/group/PhoneNumberBrowseListAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v4, p0, Lcom/sec/android/app/contacts/group/PhoneNumberBrowseDialogFragment;->mAdapter:Lcom/sec/android/app/contacts/group/PhoneNumberBrowseListAdapter;

    .line 87
    new-instance v2, Lcom/sec/android/app/contacts/group/PhoneNumberBrowseDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/contacts/group/PhoneNumberBrowseDialogFragment$1;-><init>(Lcom/sec/android/app/contacts/group/PhoneNumberBrowseDialogFragment;)V

    .line 97
    .local v2, clickListener:Landroid/content/DialogInterface$OnClickListener;
    iget-object v4, p0, Lcom/sec/android/app/contacts/group/PhoneNumberBrowseDialogFragment;->mName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 98
    iget-object v4, p0, Lcom/sec/android/app/contacts/group/PhoneNumberBrowseDialogFragment;->mAdapter:Lcom/sec/android/app/contacts/group/PhoneNumberBrowseListAdapter;

    const/4 v5, -0x1

    invoke-virtual {v1, v4, v5, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 99
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 100
    .local v3, result:Landroid/app/AlertDialog;
    return-object v3
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 106
    const-string v0, "phoneNumberDataList"

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/PhoneNumberBrowseDialogFragment;->mPhonNumberInfoList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 107
    const-string v0, "name"

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/PhoneNumberBrowseDialogFragment;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void
.end method
