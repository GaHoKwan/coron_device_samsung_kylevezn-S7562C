.class public Lcom/sec/android/app/contacts/sim/DualSIMManagementDialogFragment;
.super Landroid/app/DialogFragment;
.source "DualSIMManagementDialogFragment.java"

# interfaces
.implements Lcom/android/contacts/editor/SelectAccountDialogFragment$Listener;
.implements Lcom/android/contacts/editor/SelectSimDialogFragment$Listener;


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

    .line 79
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/contacts/sim/DualSIMManagementDialogFragment;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 80
    const-string v0, ""

    sput-object v0, Lcom/sec/android/app/contacts/sim/DualSIMManagementDialogFragment;->mExternalSdCardStoragePath:Ljava/lang/String;

    .line 81
    sput-boolean v1, Lcom/sec/android/app/contacts/sim/DualSIMManagementDialogFragment;->mExternalSdCardMounted:Z

    .line 83
    const-string v0, ""

    sput-object v0, Lcom/sec/android/app/contacts/sim/DualSIMManagementDialogFragment;->mSdCardStoragePath:Ljava/lang/String;

    .line 84
    sput-boolean v1, Lcom/sec/android/app/contacts/sim/DualSIMManagementDialogFragment;->mSdCardMounted:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Landroid/app/FragmentManager;)V
    .locals 2
    .parameter "fragmentManager"

    .prologue
    .line 94
    new-instance v0, Lcom/sec/android/app/contacts/sim/DualSIMManagementDialogFragment;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/sim/DualSIMManagementDialogFragment;-><init>()V

    .line 95
    .local v0, fragment:Lcom/sec/android/app/contacts/sim/DualSIMManagementDialogFragment;
    const-string v1, "DualSIMManagementDialogFragment"

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 96
    return-void
.end method


# virtual methods
.method public onAccountChosen(Lcom/android/contacts/model/AccountWithDataSet;Landroid/os/Bundle;)V
    .locals 2
    .parameter "account"
    .parameter "extraArgs"

    .prologue
    .line 207
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "resourceId"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/android/contacts/util/AccountSelectionUtil;->doImport(Landroid/content/Context;ILcom/android/contacts/model/AccountWithDataSet;)V

    .line 210
    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismiss()V

    .line 211
    return-void
.end method

.method public onAccountSelectorCancelled()V
    .locals 0

    .prologue
    .line 217
    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismiss()V

    .line 218
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 90
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 101
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 102
    .local v3, mContext:Landroid/content/Context;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 103
    .local v4, res:Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 107
    .local v2, dialogInflater:Landroid/view/LayoutInflater;
    new-instance v0, Lcom/sec/android/app/contacts/sim/DualSIMManagementDialogFragment$1;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f040153

    invoke-direct {v0, p0, v6, v7, v2}, Lcom/sec/android/app/contacts/sim/DualSIMManagementDialogFragment$1;-><init>(Lcom/sec/android/app/contacts/sim/DualSIMManagementDialogFragment;Landroid/content/Context;ILandroid/view/LayoutInflater;)V

    .line 119
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/Integer;>;"
    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x1

    :cond_0
    iput-boolean v5, p0, Lcom/sec/android/app/contacts/sim/DualSIMManagementDialogFragment;->isAirplaneMode:Z

    .line 123
    invoke-static {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->hasIccCard()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/sec/android/app/contacts/sim/DualSIMManagementDialogFragment;->isAirplaneMode:Z

    if-nez v5, :cond_1

    .line 124
    const v5, 0x7f0d03cb

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 125
    const v5, 0x7f0d03cc

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 126
    const v5, 0x7f0d03cd

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 129
    :cond_1
    new-instance v1, Lcom/sec/android/app/contacts/sim/DualSIMManagementDialogFragment$2;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/contacts/sim/DualSIMManagementDialogFragment$2;-><init>(Lcom/sec/android/app/contacts/sim/DualSIMManagementDialogFragment;Landroid/widget/ArrayAdapter;)V

    .line 161
    .local v1, clickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0d03d3

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v5, v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5
.end method

.method public onSimChosen(Lcom/android/contacts/model/AccountWithDataSet;Landroid/os/Bundle;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const v4, 0x7f0d03cd

    const v3, 0x7f0d03cc

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 267
    const-string v1, "resourceId"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const v2, 0x7f0d03cb

    if-ne v1, v2, :cond_3

    .line 269
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v1

    .line 270
    invoke-virtual {v1}, Lcom/android/contacts/model/AccountTypeManager;->getWritableAccountsWithoutSim()Ljava/util/List;

    move-result-object v1

    .line 271
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 272
    const-string v3, "vnd.sec.contact.sim2"

    iget-object v4, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 273
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "resourceId"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-ne v2, v5, :cond_0

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithDataSet;

    :cond_0
    invoke-static {v3, v4, v0, v6}, Lcom/android/contacts/util/AccountSelectionUtil;->doImportSim(Landroid/content/Context;ILcom/android/contacts/model/AccountWithDataSet;Z)V

    .line 318
    :goto_0
    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismiss()V

    .line 319
    return-void

    .line 275
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "resourceId"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-ne v2, v5, :cond_2

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithDataSet;

    :cond_2
    invoke-static {v3, v4, v0, v5}, Lcom/android/contacts/util/AccountSelectionUtil;->doImportSim(Landroid/content/Context;ILcom/android/contacts/model/AccountWithDataSet;Z)V

    goto :goto_0

    .line 277
    :cond_3
    const-string v0, "resourceId"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_5

    .line 280
    const-string v0, "vnd.sec.contact.sim2"

    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 282
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.action.EXPORT_SIM2_CONTACT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 289
    :goto_1
    const-string v1, "SELECT_ALL_CONTACT_ON_LOAD"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 290
    const-string v1, "SHOW_CONFIRMATION_DIALOG"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 291
    const-string v1, "CONTACT_SELECTION_TITLE"

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 292
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 293
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 286
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.action.EXPORT_SIM_CONTACT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 296
    :cond_5
    const-string v0, "resourceId"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v4, :cond_7

    .line 300
    const-string v0, "vnd.sec.contact.sim2"

    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 302
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.action.DELETE_SIM2_CONTACT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 308
    :goto_2
    const-string v1, "SELECT_ALL_CONTACT_ON_LOAD"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 309
    const-string v1, "SHOW_CONFIRMATION_DIALOG"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 310
    const-string v1, "CONTACT_SELECTION_TITLE"

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 312
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 306
    :cond_6
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.action.DELETE_SIM_CONTACT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 316
    :cond_7
    const-string v0, "DualSIMManagementDialogFragment"

    const-string v1, "selectSimForDS No matching case "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onSimSelectorCancelled()V
    .locals 0

    .prologue
    .line 324
    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismiss()V

    .line 325
    return-void
.end method

.method selectSimForDS(I)Z
    .locals 7
    .parameter "resId"

    .prologue
    const v6, 0x7f0d03cd

    const v5, 0x7f0d03cc

    const v4, 0x7f0d03cb

    const/4 v1, 0x1

    .line 222
    if-ne p1, v4, :cond_0

    .line 223
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 224
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "resourceId"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 225
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    sget-object v3, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_SIM1_SIM2:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    invoke-static {v2, p0, v4, v3, v0}, Lcom/android/contacts/editor/SelectSimDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;ILcom/android/contacts/util/AccountsListAdapter$AccountListFilter;Landroid/os/Bundle;)V

    .line 255
    .end local v0           #args:Landroid/os/Bundle;
    :goto_0
    return v1

    .line 232
    :cond_0
    if-ne p1, v5, :cond_1

    .line 233
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 234
    .restart local v0       #args:Landroid/os/Bundle;
    const-string v2, "resourceId"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 235
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    sget-object v3, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_SIM1_SIM2:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    invoke-static {v2, p0, v5, v3, v0}, Lcom/android/contacts/editor/SelectSimDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;ILcom/android/contacts/util/AccountsListAdapter$AccountListFilter;Landroid/os/Bundle;)V

    goto :goto_0

    .line 242
    .end local v0           #args:Landroid/os/Bundle;
    :cond_1
    if-ne p1, v6, :cond_2

    .line 243
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 244
    .restart local v0       #args:Landroid/os/Bundle;
    const-string v2, "resourceId"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 245
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    sget-object v3, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_SIM1_SIM2:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    invoke-static {v2, p0, v6, v3, v0}, Lcom/android/contacts/editor/SelectSimDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;ILcom/android/contacts/util/AccountsListAdapter$AccountListFilter;Landroid/os/Bundle;)V

    goto :goto_0

    .line 253
    .end local v0           #args:Landroid/os/Bundle;
    :cond_2
    const-string v1, "DualSIMManagementDialogFragment"

    const-string v2, "selectSimForDS No matching case "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const/4 v1, 0x0

    goto :goto_0
.end method
