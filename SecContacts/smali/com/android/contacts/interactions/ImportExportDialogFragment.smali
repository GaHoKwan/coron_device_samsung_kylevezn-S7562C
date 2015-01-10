.class public Lcom/android/contacts/interactions/ImportExportDialogFragment;
.super Landroid/app/DialogFragment;
.source "ImportExportDialogFragment.java"

# interfaces
.implements Lcom/android/contacts/editor/SelectAccountDialogFragment$Listener;
.implements Lcom/android/contacts/editor/SelectSimDialogFragment$Listener;


# static fields
.field public static mContactsCount:I

.field public static mExternalSdCardMounted:Z

.field public static mExternalSdCardStoragePath:Ljava/lang/String;

.field public static mSdCardMounted:Z

.field public static mSdCardStoragePath:Ljava/lang/String;

.field public static mStorageListener:Landroid/os/storage/StorageEventListener;

.field public static mStorageManager:Landroid/os/storage/StorageManager;


# instance fields
.field private final LOOKUP_PROJECTION:[Ljava/lang/String;

.field private isAirplaneMode:Z

.field public mImportPath:Ljava/lang/String;

.field private mPreferences:Lcom/android/contacts/preference/ContactsPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 101
    new-instance v0, Lcom/android/contacts/interactions/ImportExportDialogFragment$1;

    invoke-direct {v0}, Lcom/android/contacts/interactions/ImportExportDialogFragment$1;-><init>()V

    sput-object v0, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 105
    const/4 v0, 0x0

    sput-object v0, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 106
    const-string v0, ""

    sput-object v0, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mExternalSdCardStoragePath:Ljava/lang/String;

    .line 107
    sput-boolean v1, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mExternalSdCardMounted:Z

    .line 109
    const-string v0, ""

    sput-object v0, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mSdCardStoragePath:Ljava/lang/String;

    .line 110
    sput-boolean v1, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mSdCardMounted:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 81
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 89
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "lookup"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment;->LOOKUP_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/interactions/ImportExportDialogFragment;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->handleImportRequest(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/contacts/interactions/ImportExportDialogFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->getVcardName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/interactions/ImportExportDialogFragment;)Lcom/android/contacts/preference/ContactsPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

    return-object v0
.end method

.method private checkStorageState()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 671
    sget-object v7, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v7, :cond_0

    .line 672
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "storage"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/storage/StorageManager;

    sput-object v7, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 673
    sget-object v7, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mStorageManager:Landroid/os/storage/StorageManager;

    sget-object v8, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v7, v8}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 675
    :cond_0
    sget-object v7, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v7}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v5

    .line 676
    .local v5, storageVolumes:[Landroid/os/storage/StorageVolume;
    array-length v1, v5

    .line 677
    .local v1, length:I
    const-string v3, ""

    .line 678
    .local v3, storagePath:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_6

    .line 679
    aget-object v4, v5, v0

    .line 680
    .local v4, storageVolume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v6

    .line 681
    .local v6, subsystem:Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 682
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 683
    sget-object v7, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v7, v3}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 684
    .local v2, state:Ljava/lang/String;
    const-string v7, "fuse"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 685
    sput-object v3, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mSdCardStoragePath:Ljava/lang/String;

    .line 686
    const-string v7, "mounted"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 687
    sput-boolean v10, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mSdCardMounted:Z

    .line 678
    .end local v2           #state:Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 689
    .restart local v2       #state:Ljava/lang/String;
    :cond_2
    sput-boolean v9, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mSdCardMounted:Z

    goto :goto_1

    .line 691
    :cond_3
    const-string v7, "sd"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 692
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v7

    if-nez v7, :cond_5

    .line 694
    sput-object v3, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mSdCardStoragePath:Ljava/lang/String;

    .line 695
    const-string v7, "mounted"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 696
    sput-boolean v10, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mSdCardMounted:Z

    goto :goto_1

    .line 698
    :cond_4
    sput-boolean v9, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mSdCardMounted:Z

    goto :goto_1

    .line 701
    :cond_5
    sput-object v3, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mExternalSdCardStoragePath:Ljava/lang/String;

    .line 702
    const-string v7, "mounted"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 703
    sput-boolean v10, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mExternalSdCardMounted:Z

    .line 712
    .end local v2           #state:Ljava/lang/String;
    .end local v4           #storageVolume:Landroid/os/storage/StorageVolume;
    .end local v6           #subsystem:Ljava/lang/String;
    :cond_6
    return-void

    .line 706
    .restart local v2       #state:Ljava/lang/String;
    .restart local v4       #storageVolume:Landroid/os/storage/StorageVolume;
    .restart local v6       #subsystem:Ljava/lang/String;
    :cond_7
    sput-boolean v9, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mExternalSdCardMounted:Z

    goto :goto_1
.end method

.method private getVcardName()Ljava/lang/String;
    .locals 10

    .prologue
    const v9, 0x7f0d0238

    const/4 v1, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 482
    sget v0, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mContactsCount:I

    if-ne v0, v1, :cond_3

    .line 483
    new-array v2, v1, [Ljava/lang/String;

    const-string v0, "display_name"

    aput-object v0, v2, v8

    .line 486
    .local v2, display_name_projection:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 487
    .local v6, name:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 489
    .local v7, name_cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 490
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 491
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 492
    if-eqz v6, :cond_0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 493
    :cond_0
    invoke-virtual {p0, v9}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 496
    :cond_1
    if-eqz v7, :cond_2

    .line 497
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 501
    .end local v2           #display_name_projection:[Ljava/lang/String;
    .end local v6           #name:Ljava/lang/String;
    .end local v7           #name_cursor:Landroid/database/Cursor;
    :cond_2
    :goto_0
    return-object v6

    :cond_3
    invoke-virtual {p0, v9}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method private handleImportRequest(I)Z
    .locals 8
    .parameter "resId"

    .prologue
    const/4 v7, 0x1

    .line 611
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v1

    .line 613
    .local v1, accountTypes:Lcom/android/contacts/model/AccountTypeManager;
    invoke-virtual {v1}, Lcom/android/contacts/model/AccountTypeManager;->getWritableAccountsWithoutSim()Ljava/util/List;

    move-result-object v0

    .line 614
    .local v0, accountList:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 617
    .local v3, size:I
    packed-switch p1, :pswitch_data_0

    .line 628
    :goto_0
    if-le v3, v7, :cond_0

    .line 630
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 631
    .local v2, args:Landroid/os/Bundle;
    const-string v4, "resourceId"

    invoke-virtual {v2, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 632
    const-string v4, "importPath"

    invoke-virtual {p0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->getImportPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const v5, 0x7f0d02b6

    sget-object v6, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_WRITABLE_WITHOUT_SIM:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    invoke-static {v4, p0, v5, v6, v2}, Lcom/android/contacts/editor/SelectAccountDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;ILcom/android/contacts/util/AccountsListAdapter$AccountListFilter;Landroid/os/Bundle;)V

    .line 646
    .end local v2           #args:Landroid/os/Bundle;
    :goto_1
    return v7

    .line 619
    :pswitch_0
    sget-object v4, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mSdCardStoragePath:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->setImportPath(Ljava/lang/String;)V

    goto :goto_0

    .line 623
    :pswitch_1
    sget-object v4, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mExternalSdCardStoragePath:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->setImportPath(Ljava/lang/String;)V

    goto :goto_0

    .line 644
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    if-ne v3, v7, :cond_1

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/model/AccountWithDataSet;

    :goto_2
    invoke-static {v5, p1, v4}, Lcom/android/contacts/util/AccountSelectionUtil;->doImport(Landroid/content/Context;ILcom/android/contacts/model/AccountWithDataSet;)V

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    .line 617
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d02df
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static show(Landroid/app/FragmentManager;I)V
    .locals 3
    .parameter "fragmentManager"
    .parameter "contactsCount"

    .prologue
    .line 122
    sput p1, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mContactsCount:I

    .line 123
    new-instance v1, Lcom/android/contacts/interactions/ImportExportDialogFragment;

    invoke-direct {v1}, Lcom/android/contacts/interactions/ImportExportDialogFragment;-><init>()V

    .line 125
    .local v1, fragment:Lcom/android/contacts/interactions/ImportExportDialogFragment;
    :try_start_0
    const-string v2, "ImportExportDialogFragment"

    invoke-virtual {v1, p0, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 131
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 128
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 129
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getImportPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 718
    iget-object v0, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mImportPath:Ljava/lang/String;

    return-object v0
.end method

.method public onAccountChosen(Lcom/android/contacts/model/AccountWithDataSet;Landroid/os/Bundle;)V
    .locals 2
    .parameter "account"
    .parameter "extraArgs"

    .prologue
    .line 654
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "resourceId"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/android/contacts/util/AccountSelectionUtil;->doImport(Landroid/content/Context;ILcom/android/contacts/model/AccountWithDataSet;)V

    .line 658
    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismiss()V

    .line 659
    return-void
.end method

.method public onAccountSelectorCancelled()V
    .locals 0

    .prologue
    .line 664
    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismiss()V

    .line 665
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 116
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 117
    new-instance v0, Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

    .line 118
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    const v13, 0x7f0a0008

    const v12, 0x7f0a0005

    const/4 v11, 0x5

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 136
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 137
    .local v5, mContext:Landroid/content/Context;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 138
    .local v6, res:Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v10, "layout_inflater"

    invoke-virtual {v7, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 140
    .local v3, dialogInflater:Landroid/view/LayoutInflater;
    if-eqz p1, :cond_0

    .line 141
    const-string v7, "ContactsCount"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mContactsCount:I

    .line 144
    :cond_0
    new-instance v1, Lcom/android/contacts/interactions/ImportExportDialogFragment$2;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v10, 0x7f040153

    invoke-direct {v1, p0, v7, v10, v3}, Lcom/android/contacts/interactions/ImportExportDialogFragment$2;-><init>(Lcom/android/contacts/interactions/ImportExportDialogFragment;Landroid/content/Context;ILandroid/view/LayoutInflater;)V

    .line 199
    .local v1, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->checkStorageState()V

    .line 200
    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v10, "airplane_mode_on"

    invoke-static {v7, v10, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_7

    move v7, v8

    :goto_0
    iput-boolean v7, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment;->isAirplaneMode:Z

    .line 201
    sget-boolean v7, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mSdCardMounted:Z

    if-eqz v7, :cond_2

    .line 202
    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 203
    const v7, 0x7f0d02df

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 205
    :cond_1
    invoke-virtual {v6, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 206
    const v7, 0x7f0d02dd

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 209
    :cond_2
    sget-boolean v7, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mExternalSdCardMounted:Z

    if-eqz v7, :cond_4

    .line 210
    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 211
    const v7, 0x7f0d02e0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 213
    :cond_3
    invoke-virtual {v6, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 214
    const v7, 0x7f0d02de

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 219
    :cond_4
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v10, "CscFeature_Contact_EnableAAB"

    invoke-virtual {v7, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 222
    invoke-static {v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->hasIccCard()Z

    move-result v7

    if-eqz v7, :cond_8

    iget-boolean v7, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment;->isAirplaneMode:Z

    if-nez v7, :cond_8

    invoke-static {v9}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/MultiSimTelephonyManager;->getSimState()I

    move-result v7

    if-ne v7, v11, :cond_8

    .line 224
    const v7, 0x7f0d00e2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 225
    const v7, 0x7f0d02ea

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 283
    :cond_5
    :goto_1
    invoke-static {v5}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isUsmMode(Landroid/content/Context;)Z

    move-result v4

    .line 284
    .local v4, isUsmEnabled:Z
    const v7, 0x7f0a0009

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_6

    if-nez v4, :cond_6

    .line 285
    const v7, 0x7f0d024d

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 288
    :cond_6
    new-instance v2, Lcom/android/contacts/interactions/ImportExportDialogFragment$3;

    invoke-direct {v2, p0, v1}, Lcom/android/contacts/interactions/ImportExportDialogFragment$3;-><init>(Lcom/android/contacts/interactions/ImportExportDialogFragment;Landroid/widget/ArrayAdapter;)V

    .line 455
    .local v2, clickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v7, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f0d012b

    invoke-virtual {v7, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const/4 v9, -0x1

    invoke-virtual {v7, v1, v9, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v9, Lcom/android/contacts/interactions/ImportExportDialogFragment$4;

    invoke-direct {v9, p0}, Lcom/android/contacts/interactions/ImportExportDialogFragment$4;-><init>(Lcom/android/contacts/interactions/ImportExportDialogFragment;)V

    invoke-virtual {v7, v9}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 469
    .local v0, ImportExportDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0, v8}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 471
    return-object v0

    .end local v0           #ImportExportDialog:Landroid/app/AlertDialog;
    .end local v2           #clickListener:Landroid/content/DialogInterface$OnClickListener;
    .end local v4           #isUsmEnabled:Z
    :cond_7
    move v7, v9

    .line 200
    goto/16 :goto_0

    .line 226
    :cond_8
    invoke-static {v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->hasIccCard(I)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-boolean v7, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment;->isAirplaneMode:Z

    if-nez v7, :cond_5

    invoke-static {v8}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/MultiSimTelephonyManager;->getSimState()I

    move-result v7

    if-ne v7, v11, :cond_5

    .line 228
    const v7, 0x7f0d00e2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 229
    const v7, 0x7f0d02ea

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 477
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 478
    const-string v0, "ContactsCount"

    sget v1, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mContactsCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 479
    return-void
.end method

.method public onSimChosen(Lcom/android/contacts/model/AccountWithDataSet;Landroid/os/Bundle;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 800
    const-string v1, "resourceId"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const v2, 0x7f0d00e2

    if-ne v1, v2, :cond_3

    .line 801
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v1

    .line 802
    invoke-virtual {v1}, Lcom/android/contacts/model/AccountTypeManager;->getWritableAccountsWithoutSim()Ljava/util/List;

    move-result-object v1

    .line 804
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 806
    const-string v3, "vnd.sec.contact.sim2"

    iget-object v4, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 807
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "resourceId"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-ne v2, v6, :cond_0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithDataSet;

    :cond_0
    invoke-static {v3, v4, v0, v5}, Lcom/android/contacts/util/AccountSelectionUtil;->doImportSim(Landroid/content/Context;ILcom/android/contacts/model/AccountWithDataSet;Z)V

    .line 854
    :goto_0
    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismiss()V

    .line 855
    return-void

    .line 809
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "resourceId"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-ne v2, v6, :cond_2

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithDataSet;

    :cond_2
    invoke-static {v3, v4, v0, v6}, Lcom/android/contacts/util/AccountSelectionUtil;->doImportSim(Landroid/content/Context;ILcom/android/contacts/model/AccountWithDataSet;Z)V

    goto :goto_0

    .line 845
    :cond_3
    const-string v0, "vnd.sec.contact.sim2"

    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 846
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.action.EXPORT_SIM2_CONTACT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 850
    :goto_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 851
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 848
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.action.EXPORT_SIM_CONTACT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onSimSelectorCancelled()V
    .locals 0

    .prologue
    .line 860
    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismiss()V

    .line 861
    return-void
.end method

.method selectSimForDS(I)Z
    .locals 5
    .parameter "resId"

    .prologue
    const v3, 0x7f0d00e2

    const/4 v4, 0x1

    .line 768
    if-ne p1, v3, :cond_0

    .line 769
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 770
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "resourceId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 771
    const-string v1, "importPath"

    invoke-virtual {p0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->getImportPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_SIM1_SIM2:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    invoke-static {v1, p0, v3, v2, v0}, Lcom/android/contacts/editor/SelectSimDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;ILcom/android/contacts/util/AccountsListAdapter$AccountListFilter;Landroid/os/Bundle;)V

    .line 776
    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismiss()V

    .line 788
    :goto_0
    return v4

    .line 780
    .end local v0           #args:Landroid/os/Bundle;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 781
    .restart local v0       #args:Landroid/os/Bundle;
    const-string v1, "resourceId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 782
    const-string v1, "importPath"

    invoke-virtual {p0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->getImportPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0d02ea

    sget-object v3, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_SIM1_SIM2:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    invoke-static {v1, p0, v2, v3, v0}, Lcom/android/contacts/editor/SelectSimDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;ILcom/android/contacts/util/AccountsListAdapter$AccountListFilter;Landroid/os/Bundle;)V

    .line 787
    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismiss()V

    goto :goto_0
.end method

.method public setImportPath(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 722
    iput-object p1, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mImportPath:Ljava/lang/String;

    .line 723
    return-void
.end method
