.class public final Lcom/android/contacts/editor/SelectSimDialogFragment;
.super Landroid/app/DialogFragment;
.source "SelectSimDialogFragment.java"

# interfaces
.implements Lcom/android/contacts/editor/SelectAccountDialogFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/editor/SelectSimDialogFragment$Listener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/editor/SelectSimDialogFragment;Lcom/android/contacts/model/AccountWithDataSet;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/contacts/editor/SelectSimDialogFragment;->onSimSelected(Lcom/android/contacts/model/AccountWithDataSet;)V

    return-void
.end method

.method private onSimSelected(Lcom/android/contacts/model/AccountWithDataSet;)V
    .locals 5
    .parameter

    .prologue
    const v4, 0x7f0d02b6

    .line 142
    invoke-virtual {p0}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 143
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/contacts/editor/SelectSimDialogFragment$Listener;

    if-eqz v1, :cond_0

    .line 145
    check-cast v0, Lcom/android/contacts/editor/SelectSimDialogFragment$Listener;

    .line 146
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "extra_args"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/contacts/editor/SelectSimDialogFragment$Listener;->onSimChosen(Lcom/android/contacts/model/AccountWithDataSet;Landroid/os/Bundle;)V

    .line 197
    :goto_0
    return-void

    .line 148
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_args"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 152
    const-string v1, "resourceId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 153
    const-string v2, "importPath"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    const v2, 0x7f0d00e2

    if-ne v1, v2, :cond_2

    .line 156
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v2

    .line 157
    invoke-virtual {v2}, Lcom/android/contacts/model/AccountTypeManager;->getWritableAccountsWithoutSim()Ljava/util/List;

    move-result-object v2

    .line 159
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 160
    const-string v2, "vnd.sec.contact.sim2"

    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 163
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 164
    const-string v3, "resourceId"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 165
    const-string v1, "importSIMID"

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 166
    const-string v1, "importPath"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_WRITABLE_WITHOUT_SIM:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    invoke-static {v0, p0, v4, v1, v2}, Lcom/android/contacts/editor/SelectAccountDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;ILcom/android/contacts/util/AccountsListAdapter$AccountListFilter;Landroid/os/Bundle;)V

    .line 195
    :goto_1
    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismiss()V

    goto :goto_0

    .line 174
    :cond_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 175
    const-string v3, "resourceId"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 176
    const-string v1, "importSIMID"

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 177
    const-string v1, "importPath"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_WRITABLE_WITHOUT_SIM:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    invoke-static {v0, p0, v4, v1, v2}, Lcom/android/contacts/editor/SelectAccountDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;ILcom/android/contacts/util/AccountsListAdapter$AccountListFilter;Landroid/os/Bundle;)V

    goto :goto_1

    .line 186
    :cond_2
    const-string v0, "vnd.sec.contact.sim2"

    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 187
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.action.EXPORT_SIM2_CONTACT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 191
    :goto_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 192
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 189
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.action.EXPORT_SIM_CONTACT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static show(Landroid/app/FragmentManager;Landroid/app/Fragment;ILcom/android/contacts/util/AccountsListAdapter$AccountListFilter;Landroid/os/Bundle;)V
    .locals 5
    .parameter "fragmentManager"
    .parameter
    .parameter "titleResourceId"
    .parameter "accountListFilter"
    .parameter "extraArgs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Landroid/app/Fragment;",
            ":",
            "Lcom/android/contacts/editor/SelectSimDialogFragment$Listener;",
            ">(",
            "Landroid/app/FragmentManager;",
            "TF;I",
            "Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, targetFragment:Landroid/app/Fragment;,"TF;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 80
    .local v0, args:Landroid/os/Bundle;
    const-string v3, "title_res_id"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 81
    const-string v3, "list_filter"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 82
    const-string v3, "extra_args"

    if-nez p4, :cond_0

    sget-object p4, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .end local p4
    :cond_0
    invoke-virtual {v0, v3, p4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 84
    new-instance v2, Lcom/android/contacts/editor/SelectSimDialogFragment;

    invoke-direct {v2}, Lcom/android/contacts/editor/SelectSimDialogFragment;-><init>()V

    .line 86
    .local v2, instance:Lcom/android/contacts/editor/SelectSimDialogFragment;
    :try_start_0
    invoke-virtual {v2, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 88
    if-eqz p1, :cond_1

    const-string v3, "ImportExportDialogFragment"

    invoke-virtual {p1}, Landroid/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 89
    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/app/Fragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 91
    :cond_1
    const-string v3, "SelectSimDialogFragment"

    invoke-virtual {v2, p0, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v1

    .line 93
    .local v1, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onAccountChosen(Lcom/android/contacts/model/AccountWithDataSet;Landroid/os/Bundle;)V
    .locals 2
    .parameter "account"
    .parameter "extraArgs"

    .prologue
    .line 206
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "resourceId"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/android/contacts/util/AccountSelectionUtil;->doImport(Landroid/content/Context;ILcom/android/contacts/model/AccountWithDataSet;)V

    .line 207
    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismiss()V

    .line 208
    return-void
.end method

.method public onAccountSelectorCancelled()V
    .locals 0

    .prologue
    .line 212
    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismiss()V

    .line 213
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 128
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 129
    invoke-virtual {p0}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    .line 130
    .local v1, targetFragment:Landroid/app/Fragment;
    if-eqz v1, :cond_1

    instance-of v2, v1, Lcom/android/contacts/editor/SelectSimDialogFragment$Listener;

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 131
    check-cast v0, Lcom/android/contacts/editor/SelectSimDialogFragment$Listener;

    .line 132
    .local v0, target:Lcom/android/contacts/editor/SelectSimDialogFragment$Listener;
    invoke-interface {v0}, Lcom/android/contacts/editor/SelectSimDialogFragment$Listener;->onSimSelectorCancelled()V

    .line 136
    .end local v0           #target:Lcom/android/contacts/editor/SelectSimDialogFragment$Listener;
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    if-nez v1, :cond_0

    .line 134
    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismiss()V

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 99
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 100
    .local v2, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 102
    .local v1, args:Landroid/os/Bundle;
    const-string v6, "list_filter"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    .line 103
    .local v4, filter:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;
    new-instance v0, Lcom/android/contacts/util/AccountsListAdapter;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v6, v4}, Lcom/android/contacts/util/AccountsListAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;)V

    .line 106
    .local v0, accountAdapter:Lcom/android/contacts/util/AccountsListAdapter;
    new-instance v3, Lcom/android/contacts/editor/SelectSimDialogFragment$1;

    invoke-direct {v3, p0, v0}, Lcom/android/contacts/editor/SelectSimDialogFragment$1;-><init>(Lcom/android/contacts/editor/SelectSimDialogFragment;Lcom/android/contacts/util/AccountsListAdapter;)V

    .line 116
    .local v3, clickListener:Landroid/content/DialogInterface$OnClickListener;
    const-string v6, "title_res_id"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 117
    const/4 v6, 0x0

    invoke-virtual {v2, v0, v6, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 118
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 121
    .local v5, result:Landroid/app/AlertDialog;
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 123
    return-object v5
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 217
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 219
    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 220
    .local v0, CurrentDialog:Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v1

    .line 222
    .local v1, phoneBookManageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    if-eqz v1, :cond_0

    .line 223
    invoke-virtual {v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimIconChanged()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 224
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->setSimIconChanged(Z)V

    .line 225
    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismiss()V

    .line 229
    .end local v1           #phoneBookManageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    :cond_0
    return-void
.end method
