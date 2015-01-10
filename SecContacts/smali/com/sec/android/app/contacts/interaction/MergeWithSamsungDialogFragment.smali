.class public Lcom/sec/android/app/contacts/interaction/MergeWithSamsungDialogFragment;
.super Landroid/app/DialogFragment;
.source "MergeWithSamsungDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/interaction/MergeWithSamsungDialogFragment$SelectSamsungAccountListener;
    }
.end annotation


# static fields
.field public static final IS_MERGE_AVAILABLE_PROJECTION:[Ljava/lang/String;

.field public static final PHONE_ACCOUNT_CONTACTS_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "isPhoneAccountAvailable"

    aput-object v1, v0, v2

    sput-object v0, Lcom/sec/android/app/contacts/interaction/MergeWithSamsungDialogFragment;->IS_MERGE_AVAILABLE_PROJECTION:[Ljava/lang/String;

    .line 56
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/sec/android/app/contacts/interaction/MergeWithSamsungDialogFragment;->PHONE_ACCOUNT_CONTACTS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 188
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/interaction/MergeWithSamsungDialogFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/MergeWithSamsungDialogFragment;->createAccountSelectionDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/interaction/MergeWithSamsungDialogFragment;Lcom/android/contacts/model/AccountWithDataSet;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/MergeWithSamsungDialogFragment;->mergeWithSamsung(Lcom/android/contacts/model/AccountWithDataSet;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/interaction/MergeWithSamsungDialogFragment;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/MergeWithSamsungDialogFragment;->showResultToast(Ljava/lang/String;)V

    return-void
.end method

.method private createAccountSelectionDialog()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    .line 114
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/MergeWithSamsungDialogFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    .line 115
    .local v0, accountTypes:Lcom/android/contacts/model/AccountTypeManager;
    invoke-virtual {v0}, Lcom/android/contacts/model/AccountTypeManager;->getSamsungAccountsWithDataSet()Ljava/util/List;

    move-result-object v2

    .line 116
    .local v2, samsungAccountList:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 117
    .local v3, size:I
    if-ne v3, v5, :cond_0

    .line 118
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/model/AccountWithDataSet;

    invoke-direct {p0, v4}, Lcom/sec/android/app/contacts/interaction/MergeWithSamsungDialogFragment;->mergeWithSamsung(Lcom/android/contacts/model/AccountWithDataSet;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/app/contacts/interaction/MergeWithSamsungDialogFragment;->showResultToast(Ljava/lang/String;)V

    .line 138
    :goto_0
    return-void

    .line 119
    :cond_0
    if-le v3, v5, :cond_1

    .line 120
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    new-instance v5, Lcom/sec/android/app/contacts/interaction/MergeWithSamsungDialogFragment$SelectSamsungAccountListener;

    invoke-direct {v5, p0}, Lcom/sec/android/app/contacts/interaction/MergeWithSamsungDialogFragment$SelectSamsungAccountListener;-><init>(Lcom/sec/android/app/contacts/interaction/MergeWithSamsungDialogFragment;)V

    const v6, 0x7f0d0240

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Lcom/sec/android/app/contacts/interaction/SelectSamsungAccountDialogFragment;->show(Landroid/app/FragmentManager;Lcom/sec/android/app/contacts/interaction/SelectSamsungAccountDialogFragment$Listener;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 126
    :cond_1
    new-instance v1, Lcom/sec/android/app/contacts/interaction/MergeWithSamsungDialogFragment$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/interaction/MergeWithSamsungDialogFragment$3;-><init>(Lcom/sec/android/app/contacts/interaction/MergeWithSamsungDialogFragment;)V

    .line 135
    .local v1, callback:Landroid/accounts/AccountManagerCallback;,"Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/MergeWithSamsungDialogFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v4, v1}, Lcom/sec/android/app/contacts/interaction/MergeWithSamsungDialogFragment;->launchSamsungAccountPrompt(Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;)V

    goto :goto_0
.end method

.method private launchSamsungAccountPrompt(Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;)V
    .locals 8
    .parameter "activity"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, callback:Landroid/accounts/AccountManagerCallback;,"Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    const/4 v2, 0x0

    .line 184
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.osp.app.signin"

    move-object v3, v2

    move-object v4, v2

    move-object v5, p1

    move-object v6, p2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    .line 186
    return-void
.end method

.method private mergeWithSamsung(Lcom/android/contacts/model/AccountWithDataSet;)Ljava/lang/String;
    .locals 12
    .parameter "account"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/MergeWithSamsungDialogFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/app/contacts/interaction/MergeWithSamsungDialogFragment;->PHONE_ACCOUNT_CONTACTS_PROJECTION:[Ljava/lang/String;

    const-string v3, "account_type = \'vnd.sec.contact.phone\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 145
    .local v9, phoneContactsCursor:Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v6, 0x1

    .line 146
    .local v6, hasPhoneAccountContacts:Z
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 147
    if-nez v6, :cond_1

    .line 148
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/MergeWithSamsungDialogFragment;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0d0243

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 175
    :goto_1
    return-object v0

    .line 145
    .end local v6           #hasPhoneAccountContacts:Z
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 152
    .restart local v6       #hasPhoneAccountContacts:Z
    :cond_1
    const-string v0, "content://com.android.contacts/account_updates"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 153
    .local v1, mergeWithSamsungUri:Landroid/net/Uri;
    const/4 v7, 0x0

    .line 154
    .local v7, isMergeAvailable:Z
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/MergeWithSamsungDialogFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/contacts/interaction/MergeWithSamsungDialogFragment;->IS_MERGE_AVAILABLE_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 156
    .local v8, mergeCursor:Landroid/database/Cursor;
    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 158
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    const/4 v7, 0x1

    :goto_3
    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    goto :goto_3

    .line 160
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 161
    if-nez v7, :cond_4

    .line 162
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/MergeWithSamsungDialogFragment;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0d0244

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 166
    :cond_4
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 167
    .local v11, values:Landroid/content/ContentValues;
    const-string v0, "account_name"

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v11, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v0, "account_type"

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v11, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/MergeWithSamsungDialogFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v11, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    .line 170
    .local v10, resultId:I
    const/4 v0, -0x1

    if-eq v10, v0, :cond_5

    .line 171
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/MergeWithSamsungDialogFragment;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0d0242

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 175
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/MergeWithSamsungDialogFragment;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0d0245

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static show(Landroid/app/FragmentManager;)V
    .locals 4
    .parameter "fragmentManager"

    .prologue
    .line 104
    new-instance v1, Lcom/sec/android/app/contacts/interaction/MergeWithSamsungDialogFragment;

    invoke-direct {v1}, Lcom/sec/android/app/contacts/interaction/MergeWithSamsungDialogFragment;-><init>()V

    .line 106
    .local v1, fragment:Lcom/sec/android/app/contacts/interaction/MergeWithSamsungDialogFragment;
    :try_start_0
    const-string v2, "MergeWithSamsungDialogFragment"

    invoke-virtual {v1, p0, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 109
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v2, "MergeWithSamsungDialogFragment"

    const-string v3, "Error occured : "

    invoke-static {v2, v3, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private showResultToast(Ljava/lang/String;)V
    .locals 2
    .parameter "toastMessage"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/MergeWithSamsungDialogFragment;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 180
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 68
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/MergeWithSamsungDialogFragment;->mActivity:Landroid/app/Activity;

    .line 69
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 73
    new-instance v2, Lcom/sec/android/app/contacts/interaction/MergeWithSamsungDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/contacts/interaction/MergeWithSamsungDialogFragment$1;-><init>(Lcom/sec/android/app/contacts/interaction/MergeWithSamsungDialogFragment;)V

    .line 81
    .local v2, positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Lcom/sec/android/app/contacts/interaction/MergeWithSamsungDialogFragment$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/interaction/MergeWithSamsungDialogFragment$2;-><init>(Lcom/sec/android/app/contacts/interaction/MergeWithSamsungDialogFragment;)V

    .line 89
    .local v1, negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Lcom/android/contacts/util/NoGlobalSearchAlertDialog;

    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/MergeWithSamsungDialogFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v3}, Lcom/android/contacts/util/NoGlobalSearchAlertDialog;-><init>(Landroid/content/Context;)V

    .line 91
    .local v0, dialog:Lcom/android/contacts/util/NoGlobalSearchAlertDialog;
    const v3, 0x7f0d0252

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setTitle(I)V

    .line 93
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/MergeWithSamsungDialogFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0241

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 95
    const/4 v3, -0x1

    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/MergeWithSamsungDialogFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x104000a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 97
    const/4 v3, -0x2

    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/MergeWithSamsungDialogFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x104

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 99
    return-object v0
.end method
