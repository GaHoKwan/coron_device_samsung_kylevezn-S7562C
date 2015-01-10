.class public Lcom/android/contacts/editor/ContactEditorUtils;
.super Ljava/lang/Object;
.source "ContactEditorUtils.java"


# static fields
.field private static final EMPTY_ACCOUNTS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/android/contacts/editor/ContactEditorUtils;


# instance fields
.field private final mAccountTypes:Lcom/android/contacts/model/AccountTypeManager;

.field private final mContext:Landroid/content/Context;

.field private final mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/editor/ContactEditorUtils;->EMPTY_ACCOUNTS:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 61
    invoke-static {p1}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/editor/ContactEditorUtils;-><init>(Landroid/content/Context;Lcom/android/contacts/model/AccountTypeManager;)V

    .line 62
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/contacts/model/AccountTypeManager;)V
    .locals 1
    .parameter "context"
    .parameter "accountTypes"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorUtils;->mContext:Landroid/content/Context;

    .line 67
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/editor/ContactEditorUtils;->mPrefs:Landroid/content/SharedPreferences;

    .line 68
    iput-object p2, p0, Lcom/android/contacts/editor/ContactEditorUtils;->mAccountTypes:Lcom/android/contacts/model/AccountTypeManager;

    .line 69
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/contacts/editor/ContactEditorUtils;
    .locals 2
    .parameter "context"

    .prologue
    .line 72
    const-class v1, Lcom/android/contacts/editor/ContactEditorUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/contacts/editor/ContactEditorUtils;->sInstance:Lcom/android/contacts/editor/ContactEditorUtils;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/android/contacts/editor/ContactEditorUtils;

    invoke-direct {v0, p0}, Lcom/android/contacts/editor/ContactEditorUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/contacts/editor/ContactEditorUtils;->sInstance:Lcom/android/contacts/editor/ContactEditorUtils;

    .line 75
    :cond_0
    sget-object v0, Lcom/android/contacts/editor/ContactEditorUtils;->sInstance:Lcom/android/contacts/editor/ContactEditorUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getWritableAccounts()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorUtils;->mAccountTypes:Lcom/android/contacts/model/AccountTypeManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private isFirstLaunch()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 106
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorUtils;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "ContactEditorUtils_anything_saved"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private resetPreferenceValues()V
    .locals 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorUtils;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ContactEditorUtils_known_accounts"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ContactEditorUtils_default_account"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 95
    return-void
.end method


# virtual methods
.method cleanupForTest()V
    .locals 2
    .annotation build Lcom/android/contacts/test/NeededForTesting;
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorUtils;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ContactEditorUtils_default_account"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ContactEditorUtils_known_accounts"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ContactEditorUtils_anything_saved"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 82
    return-void
.end method

.method public createAddWritableAccountIntent()Landroid/content/Intent;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 250
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorUtils;->getWritableAccountTypeStrings()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object v4, v0

    move-object v5, v0

    move-object v6, v0

    move-object v7, v0

    invoke-static/range {v0 .. v7}, Landroid/accounts/AccountManager;->newChooseAccountIntent(Landroid/accounts/Account;Ljava/util/ArrayList;[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getCreatedAccount(ILandroid/content/Intent;)Lcom/android/contacts/model/AccountWithDataSet;
    .locals 4
    .parameter "resultCode"
    .parameter "resultData"

    .prologue
    const/4 v2, 0x0

    .line 275
    if-nez p2, :cond_1

    .line 283
    :cond_0
    :goto_0
    return-object v2

    .line 277
    :cond_1
    const-string v3, "accountType"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 278
    .local v1, accountType:Ljava/lang/String;
    const-string v3, "authAccount"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, accountName:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 283
    new-instance v3, Lcom/android/contacts/model/AccountWithDataSet;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/contacts/model/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    goto :goto_0
.end method

.method public getDefaultAccount()Lcom/android/contacts/model/AccountWithDataSet;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 138
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorUtils;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "ContactEditorUtils_default_account"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, saved:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 149
    :goto_0
    return-object v2

    .line 143
    :cond_0
    :try_start_0
    invoke-static {v1}, Lcom/android/contacts/model/AccountWithDataSet;->unstringify(Ljava/lang/String;)Lcom/android/contacts/model/AccountWithDataSet;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, exception:Ljava/lang/IllegalArgumentException;
    const-string v3, "ContactEditorUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error with retrieving default account "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorUtils;->resetPreferenceValues()V

    goto :goto_0
.end method

.method getSavedAccounts()Ljava/util/List;
    .locals 5
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    iget-object v2, p0, Lcom/android/contacts/editor/ContactEditorUtils;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "ContactEditorUtils_known_accounts"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, saved:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    sget-object v2, Lcom/android/contacts/editor/ContactEditorUtils;->EMPTY_ACCOUNTS:Ljava/util/List;

    .line 181
    :goto_0
    return-object v2

    .line 175
    :cond_0
    :try_start_0
    invoke-static {v1}, Lcom/android/contacts/model/AccountWithDataSet;->unstringifyList(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, exception:Ljava/lang/IllegalArgumentException;
    const-string v2, "ContactEditorUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error with retrieving saved accounts "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorUtils;->resetPreferenceValues()V

    .line 181
    sget-object v2, Lcom/android/contacts/editor/ContactEditorUtils;->EMPTY_ACCOUNTS:Ljava/util/List;

    goto :goto_0
.end method

.method public getWritableAccountTypeStrings()[Ljava/lang/String;
    .locals 5
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 233
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    .line 234
    .local v2, types:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/contacts/editor/ContactEditorUtils;->mAccountTypes:Lcom/android/contacts/model/AccountTypeManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/contacts/model/AccountTypeManager;->getAccountTypes(Z)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/AccountType;

    .line 235
    .local v1, type:Lcom/android/contacts/model/AccountType;
    iget-object v3, v1, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 237
    .end local v1           #type:Lcom/android/contacts/model/AccountType;
    :cond_0
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method

.method isValidAccount(Lcom/android/contacts/model/AccountWithDataSet;)Z
    .locals 1
    .parameter "account"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 159
    if-nez p1, :cond_0

    .line 160
    const/4 v0, 0x1

    .line 162
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorUtils;->getWritableAccounts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method removeDefaultAccountForTest()V
    .locals 2
    .annotation build Lcom/android/contacts/test/NeededForTesting;
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/contacts/editor/ContactEditorUtils;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ContactEditorUtils_default_account"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 87
    return-void
.end method

.method public saveDefaultAndAllAccounts(Lcom/android/contacts/model/AccountWithDataSet;)V
    .locals 4
    .parameter "defaultAccount"

    .prologue
    .line 119
    iget-object v1, p0, Lcom/android/contacts/editor/ContactEditorUtils;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "ContactEditorUtils_anything_saved"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "ContactEditorUtils_known_accounts"

    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorUtils;->getWritableAccounts()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/android/contacts/model/AccountWithDataSet;->stringifyList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "ContactEditorUtils_default_account"

    if-nez p1, :cond_0

    const-string v1, ""

    :goto_0
    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 125
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 126
    return-void

    .line 119
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    invoke-virtual {p1}, Lcom/android/contacts/model/AccountWithDataSet;->stringify()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public shouldShowAccountChangedNotification()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    .line 197
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorUtils;->isFirstLaunch()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 228
    :cond_0
    :goto_0
    return v5

    .line 202
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorUtils;->getSavedAccounts()Ljava/util/List;

    move-result-object v4

    .line 203
    .local v4, savedAccounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    invoke-direct {p0}, Lcom/android/contacts/editor/ContactEditorUtils;->getWritableAccounts()Ljava/util/List;

    move-result-object v1

    .line 204
    .local v1, currentWritableAccounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithDataSet;

    .line 205
    .local v0, account:Lcom/android/contacts/model/AccountWithDataSet;
    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_0

    .line 210
    .end local v0           #account:Lcom/android/contacts/model/AccountWithDataSet;
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/editor/ContactEditorUtils;->getDefaultAccount()Lcom/android/contacts/model/AccountWithDataSet;

    move-result-object v2

    .line 213
    .local v2, defaultAccount:Lcom/android/contacts/model/AccountWithDataSet;
    invoke-virtual {p0, v2}, Lcom/android/contacts/editor/ContactEditorUtils;->isValidAccount(Lcom/android/contacts/model/AccountWithDataSet;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 221
    if-nez v2, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 222
    const-string v6, "ContactEditorUtils"

    const-string v7, "Preferences file in an inconsistent state, request that the default account and current writable accounts be saved again"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 228
    :cond_4
    const/4 v5, 0x0

    goto :goto_0
.end method
