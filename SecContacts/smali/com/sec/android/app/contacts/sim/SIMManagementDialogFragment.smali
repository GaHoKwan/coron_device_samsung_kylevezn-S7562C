.class public Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment;
.super Landroid/app/DialogFragment;
.source "SIMManagementDialogFragment.java"

# interfaces
.implements Lcom/android/contacts/editor/SelectAccountDialogFragment$Listener;


# static fields
.field public static mExternalSdCardMounted:Z

.field public static mExternalSdCardStoragePath:Ljava/lang/String;

.field public static mSdCardMounted:Z

.field public static mSdCardStoragePath:Ljava/lang/String;

.field public static mStorageManager:Landroid/os/storage/StorageManager;


# instance fields
.field private isAirplaneMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 71
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 72
    const-string v0, ""

    sput-object v0, Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment;->mExternalSdCardStoragePath:Ljava/lang/String;

    .line 73
    sput-boolean v1, Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment;->mExternalSdCardMounted:Z

    .line 75
    const-string v0, ""

    sput-object v0, Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment;->mSdCardStoragePath:Ljava/lang/String;

    .line 76
    sput-boolean v1, Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment;->mSdCardMounted:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment;->handleImportRequest(I)Z

    move-result v0

    return v0
.end method

.method private handleImportRequest(I)Z
    .locals 8
    .parameter "resId"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 189
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v1

    .line 191
    .local v1, accountTypes:Lcom/android/contacts/model/AccountTypeManager;
    invoke-virtual {v1}, Lcom/android/contacts/model/AccountTypeManager;->getWritableAccountsWithoutSim()Ljava/util/List;

    move-result-object v0

    .line 192
    .local v0, accountList:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 194
    .local v3, size:I
    if-le v3, v5, :cond_0

    .line 196
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 197
    .local v2, args:Landroid/os/Bundle;
    const-string v5, "resourceId"

    invoke-virtual {v2, v5, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 198
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const v6, 0x7f0d0143

    sget-object v7, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_WRITABLE_WITHOUT_SIM:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    invoke-static {v5, p0, v6, v7, v2}, Lcom/android/contacts/editor/SelectAccountDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;ILcom/android/contacts/util/AccountsListAdapter$AccountListFilter;Landroid/os/Bundle;)V

    .line 211
    .end local v2           #args:Landroid/os/Bundle;
    :goto_0
    return v4

    .line 209
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    if-ne v3, v5, :cond_1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/model/AccountWithDataSet;

    :goto_1
    invoke-static {v6, p1, v4}, Lcom/android/contacts/util/AccountSelectionUtil;->doImport(Landroid/content/Context;ILcom/android/contacts/model/AccountWithDataSet;)V

    move v4, v5

    .line 211
    goto :goto_0

    .line 209
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static show(Landroid/app/FragmentManager;)V
    .locals 2
    .parameter "fragmentManager"

    .prologue
    .line 86
    new-instance v0, Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment;-><init>()V

    .line 87
    .local v0, fragment:Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment;
    const-string v1, "SIMManagementDialogFragment"

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 88
    return-void
.end method


# virtual methods
.method public onAccountChosen(Lcom/android/contacts/model/AccountWithDataSet;Landroid/os/Bundle;)V
    .locals 2
    .parameter "account"
    .parameter "extraArgs"

    .prologue
    .line 219
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "resourceId"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/android/contacts/util/AccountSelectionUtil;->doImport(Landroid/content/Context;ILcom/android/contacts/model/AccountWithDataSet;)V

    .line 222
    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismiss()V

    .line 223
    return-void
.end method

.method public onAccountSelectorCancelled()V
    .locals 0

    .prologue
    .line 229
    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismiss()V

    .line 230
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 82
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 93
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 94
    .local v4, mContext:Landroid/content/Context;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 95
    .local v5, res:Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string v9, "layout_inflater"

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 99
    .local v3, dialogInflater:Landroid/view/LayoutInflater;
    new-instance v1, Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment$1;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f040153

    invoke-direct {v1, p0, v8, v9, v3}, Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment$1;-><init>(Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment;Landroid/content/Context;ILandroid/view/LayoutInflater;)V

    .line 111
    .local v1, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/Integer;>;"
    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "airplane_mode_on"

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_0

    move v6, v7

    :cond_0
    iput-boolean v6, p0, Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment;->isAirplaneMode:Z

    .line 115
    invoke-static {v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->hasIccCard()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-boolean v6, p0, Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment;->isAirplaneMode:Z

    if-nez v6, :cond_1

    .line 116
    const v6, 0x7f0d03cb

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 117
    const v6, 0x7f0d03cc

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 118
    const v6, 0x7f0d03cd

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 121
    :cond_1
    new-instance v2, Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment$2;

    invoke-direct {v2, p0, v1}, Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment$2;-><init>(Lcom/sec/android/app/contacts/sim/SIMManagementDialogFragment;Landroid/widget/ArrayAdapter;)V

    .line 168
    .local v2, clickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f0d03d3

    invoke-virtual {v6, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const/4 v8, -0x1

    invoke-virtual {v6, v1, v8, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 173
    .local v0, SimMgmtDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0, v7}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 175
    return-object v0
.end method
