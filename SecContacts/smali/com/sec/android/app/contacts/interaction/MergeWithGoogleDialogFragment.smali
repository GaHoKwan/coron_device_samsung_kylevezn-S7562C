.class public Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;
.super Landroid/app/DialogFragment;
.source "MergeWithGoogleDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment$SelectGoogleAccountListener;
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

    .line 52
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "isPhoneAccountAvailable"

    aput-object v1, v0, v2

    sput-object v0, Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;->IS_MERGE_AVAILABLE_PROJECTION:[Ljava/lang/String;

    .line 55
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;->PHONE_ACCOUNT_CONTACTS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 184
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;->createAccountSelectionDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;Lcom/android/contacts/model/AccountWithDataSet;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;->mergeWithGoogle(Lcom/android/contacts/model/AccountWithDataSet;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;->showResultToast(Ljava/lang/String;)V

    return-void
.end method

.method private createAccountSelectionDialog()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    .line 116
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    .line 117
    .local v0, accountTypes:Lcom/android/contacts/model/AccountTypeManager;
    invoke-virtual {v0}, Lcom/android/contacts/model/AccountTypeManager;->getGoogleAccountsWithDataSet()Ljava/util/List;

    move-result-object v2

    .line 118
    .local v2, googleAccountList:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 119
    .local v3, size:I
    if-ne v3, v5, :cond_0

    .line 120
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/model/AccountWithDataSet;

    invoke-direct {p0, v4}, Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;->mergeWithGoogle(Lcom/android/contacts/model/AccountWithDataSet;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;->showResultToast(Ljava/lang/String;)V

    .line 140
    :goto_0
    return-void

    .line 121
    :cond_0
    if-le v3, v5, :cond_1

    .line 122
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    new-instance v5, Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment$SelectGoogleAccountListener;

    invoke-direct {v5, p0}, Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment$SelectGoogleAccountListener;-><init>(Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;)V

    const v6, 0x7f0d0240

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Lcom/sec/android/app/contacts/interaction/SelectGoogleAccountDialogFragment;->show(Landroid/app/FragmentManager;Lcom/sec/android/app/contacts/interaction/SelectGoogleAccountDialogFragment$Listener;ILandroid/os/Bundle;)V

    goto :goto_0

    .line 128
    :cond_1
    new-instance v1, Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment$3;-><init>(Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;)V

    .line 137
    .local v1, callback:Landroid/accounts/AccountManagerCallback;,"Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;->mActivity:Landroid/app/Activity;

    check-cast v4, Lcom/android/contacts/activities/PeopleActivity;

    invoke-static {v4, v1}, Lcom/android/contacts/util/AccountPromptUtils;->launchAccountPrompt(Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;)V

    goto :goto_0
.end method

.method private mergeWithGoogle(Lcom/android/contacts/model/AccountWithDataSet;)Ljava/lang/String;
    .locals 12
    .parameter "account"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;->PHONE_ACCOUNT_CONTACTS_PROJECTION:[Ljava/lang/String;

    const-string v3, "account_type = \'vnd.sec.contact.phone\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 147
    .local v9, phoneContactsCursor:Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v6, 0x1

    .line 148
    .local v6, hasPhoneAccountContacts:Z
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 149
    if-nez v6, :cond_1

    .line 150
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0d023d

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 177
    :goto_1
    return-object v0

    .line 147
    .end local v6           #hasPhoneAccountContacts:Z
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 154
    .restart local v6       #hasPhoneAccountContacts:Z
    :cond_1
    const-string v0, "content://com.android.contacts/account_updates"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 155
    .local v1, mergeWithGoogleUri:Landroid/net/Uri;
    const/4 v7, 0x0

    .line 156
    .local v7, isMergeAvailable:Z
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;->IS_MERGE_AVAILABLE_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 158
    .local v8, mergeCursor:Landroid/database/Cursor;
    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 160
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

    .line 162
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 163
    if-nez v7, :cond_4

    .line 164
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0d023e

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 168
    :cond_4
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 169
    .local v11, values:Landroid/content/ContentValues;
    const-string v0, "account_name"

    iget-object v2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v11, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v0, "account_type"

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v11, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v11, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    .line 172
    .local v10, resultId:I
    const/4 v0, -0x1

    if-eq v10, v0, :cond_5

    .line 173
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0d023c

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 177
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0d023f

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static show(Landroid/app/FragmentManager;Landroid/content/Context;)V
    .locals 5
    .parameter "fragmentManager"
    .parameter "context"

    .prologue
    .line 103
    new-instance v1, Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;

    invoke-direct {v1}, Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;-><init>()V

    .local v1, fragment:Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;
    move-object v2, p1

    .line 104
    check-cast v2, Landroid/app/Activity;

    .line 105
    .local v2, lActivity:Landroid/app/Activity;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 107
    :try_start_0
    const-string v3, "MergeWithGoogleDialogFragment"

    invoke-virtual {v1, p0, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 110
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v3, "MergeWithGoogleDialogFragment"

    const-string v4, "Error occured : "

    invoke-static {v3, v4, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private showResultToast(Ljava/lang/String;)V
    .locals 2
    .parameter "toastMessage"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 182
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 67
    iput-object p1, p0, Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;->mActivity:Landroid/app/Activity;

    .line 68
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 72
    new-instance v2, Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment$1;-><init>(Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;)V

    .line 80
    .local v2, positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment$2;-><init>(Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;)V

    .line 88
    .local v1, negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Lcom/android/contacts/util/NoGlobalSearchAlertDialog;

    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v3}, Lcom/android/contacts/util/NoGlobalSearchAlertDialog;-><init>(Landroid/content/Context;)V

    .line 90
    .local v0, dialog:Lcom/android/contacts/util/NoGlobalSearchAlertDialog;
    const v3, 0x7f0d0251

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setTitle(I)V

    .line 92
    iget-object v3, p0, Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d023b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 94
    const/4 v3, -0x1

    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x104000a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 96
    const/4 v3, -0x2

    iget-object v4, p0, Lcom/sec/android/app/contacts/interaction/MergeWithGoogleDialogFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x104

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 98
    return-object v0
.end method
