.class public Lcom/android/contacts/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;
.super Landroid/content/AsyncTaskLoader;
.source "CustomContactListFilterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/CustomContactListFilterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomFilterConfigurationLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccountSet:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 179
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 180
    return-void
.end method


# virtual methods
.method public deliverResult(Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 263
    invoke-virtual {p0}, Landroid/content/Loader;->isReset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    iput-object p1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;->mAccountSet:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    .line 269
    invoke-virtual {p0}, Landroid/content/Loader;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    invoke-super {p0, p1}, Landroid/content/Loader;->deliverResult(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 174
    check-cast p1, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;->deliverResult(Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;)V

    return-void
.end method

.method public loadInBackground()Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;
    .locals 20

    .prologue
    .line 184
    invoke-virtual/range {p0 .. p0}, Landroid/content/Loader;->getContext()Landroid/content/Context;

    move-result-object v11

    .line 185
    .local v11, context:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v9

    .line 186
    .local v9, accountTypes:Lcom/android/contacts/model/AccountTypeManager;
    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 188
    .local v0, resolver:Landroid/content/ContentResolver;
    new-instance v10, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    invoke-direct {v10}, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;-><init>()V

    .line 189
    .local v10, accounts:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/model/AccountWithDataSet;

    .line 190
    .local v6, account:Lcom/android/contacts/model/AccountWithDataSet;
    invoke-virtual {v9, v6}, Lcom/android/contacts/model/AccountTypeManager;->getAccountTypeForAccount(Lcom/android/contacts/model/AccountWithDataSet;)Lcom/android/contacts/model/AccountType;

    move-result-object v8

    .line 191
    .local v8, accountType:Lcom/android/contacts/model/AccountType;
    invoke-virtual {v8}, Lcom/android/contacts/model/AccountType;->isExtension()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v6, v11}, Lcom/android/contacts/model/AccountWithDataSet;->hasData(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    :cond_1
    iget-object v1, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v2, "vnd.sec.contact.sim"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v11}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->hasIccCard()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v11}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    :cond_2
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 200
    iget-object v1, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v2, "vnd.sec.contact.sim2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v11}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v1

    const-string v2, "vnd.sec.contact.sim2"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->hasIccCard(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v11}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v1

    const-string v2, "vnd.sec.contact.sim2"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    :cond_3
    iget-object v1, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v2, "vnd.sec.contact.sim2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 207
    const-string v1, "DSDS"

    invoke-static {v1}, Landroid/plugin/PlugInServiceManager;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/plugin/dsds/PlugInDsdsService;

    .line 208
    .local v12, dsdsService:Landroid/plugin/dsds/PlugInDsdsService;
    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Landroid/plugin/dsds/PlugInDsdsService;->hasIccCard(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v11}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMasterSimEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 215
    .end local v12           #dsdsService:Landroid/plugin/dsds/PlugInDsdsService;
    :cond_4
    iget-object v1, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v2, "com.coolots.chaton"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 218
    new-instance v7, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;

    iget-object v1, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v2, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v3, v6, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-direct {v7, v0, v1, v2, v3}, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    .local v7, accountDisplay:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;
    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "account_name"

    iget-object v3, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "account_type"

    iget-object v3, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v14

    .line 224
    .local v14, groupsUri:Landroid/net/Uri$Builder;
    iget-object v1, v6, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 225
    const-string v1, "data_set"

    iget-object v2, v6, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v14, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 227
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "title"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " != \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ICE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 229
    .local v18, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v14}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v11}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/ContactsContract$Groups;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;

    move-result-object v17

    .line 233
    .local v17, iterator:Landroid/content/EntityIterator;
    const/4 v15, 0x0

    .line 236
    .local v15, hasGroups:Z
    :goto_2
    :try_start_0
    invoke-interface/range {v17 .. v17}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 237
    invoke-interface/range {v17 .. v17}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Entity;

    invoke-virtual {v1}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v19

    .line 238
    .local v19, values:Landroid/content/ContentValues;
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->fromBefore(Landroid/content/ContentValues;)Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    move-result-object v13

    .line 241
    .local v13, group:Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;
    iget-object v1, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    #calls: Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->addGroup(Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;Ljava/lang/String;)V
    invoke-static {v7, v13, v1}, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->access$000(Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;Ljava/lang/String;)V

    .line 242
    const/4 v15, 0x1

    .line 243
    goto :goto_2

    .line 229
    .end local v13           #group:Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;
    .end local v15           #hasGroups:Z
    .end local v17           #iterator:Landroid/content/EntityIterator;
    .end local v19           #values:Landroid/content/ContentValues;
    :cond_6
    const/4 v3, 0x0

    goto :goto_1

    .line 245
    .restart local v15       #hasGroups:Z
    .restart local v17       #iterator:Landroid/content/EntityIterator;
    :cond_7
    iget-object v1, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v2, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v3, v6, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v15}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->fromSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    move-result-object v1

    iput-object v1, v7, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mUngrouped:Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    .line 250
    iget-object v1, v7, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mUngrouped:Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    iget-object v2, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    #calls: Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->addGroup(Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;Ljava/lang/String;)V
    invoke-static {v7, v1, v2}, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->access$000(Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    invoke-interface/range {v17 .. v17}, Landroid/content/EntityIterator;->close()V

    .line 255
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 252
    :catchall_0
    move-exception v1

    invoke-interface/range {v17 .. v17}, Landroid/content/EntityIterator;->close()V

    throw v1

    .line 258
    .end local v6           #account:Lcom/android/contacts/model/AccountWithDataSet;
    .end local v7           #accountDisplay:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;
    .end local v8           #accountType:Lcom/android/contacts/model/AccountType;
    .end local v14           #groupsUri:Landroid/net/Uri$Builder;
    .end local v15           #hasGroups:Z
    .end local v17           #iterator:Landroid/content/EntityIterator;
    .end local v18           #sb:Ljava/lang/StringBuilder;
    :cond_8
    return-object v10
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/android/contacts/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;->loadInBackground()Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    move-result-object v0

    return-object v0
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 310
    invoke-super {p0}, Landroid/content/Loader;->onReset()V

    .line 311
    invoke-virtual {p0}, Lcom/android/contacts/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;->onStopLoading()V

    .line 312
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;->mAccountSet:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    .line 313
    return-void
.end method

.method protected onStartLoading()V
    .locals 4

    .prologue
    .line 277
    const/4 v2, 0x2

    new-array v0, v2, [Z

    fill-array-data v0, :array_0

    .line 280
    .local v0, changed:[Z
    invoke-virtual {p0}, Landroid/content/Loader;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v1

    .line 281
    .local v1, phoneBookManageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    invoke-virtual {v1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimInfo()[Z

    move-result-object v0

    .line 284
    const/4 v2, 0x0

    aget-boolean v2, v0, v2

    if-eqz v2, :cond_1

    .line 285
    invoke-virtual {p0}, Landroid/content/Loader;->forceLoad()V

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;->mAccountSet:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    if-eqz v2, :cond_2

    .line 288
    iget-object v2, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;->mAccountSet:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    invoke-virtual {p0, v2}, Lcom/android/contacts/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;->deliverResult(Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;)V

    .line 290
    :cond_2
    invoke-virtual {p0}, Landroid/content/Loader;->takeContentChanged()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;->mAccountSet:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    if-nez v2, :cond_4

    .line 291
    :cond_3
    invoke-virtual {p0}, Landroid/content/Loader;->forceLoad()V

    goto :goto_0

    .line 293
    :cond_4
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 294
    invoke-virtual {p0}, Landroid/content/Loader;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v2

    const-string v3, "vnd.sec.contact.sim"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/contacts/list/CustomContactListFilterActivity;->access$100()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Landroid/content/Loader;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v2

    const-string v3, "vnd.sec.contact.sim2"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/contacts/list/CustomContactListFilterActivity;->access$200()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 296
    :cond_5
    invoke-virtual {p0}, Landroid/content/Loader;->forceLoad()V

    goto :goto_0

    .line 277
    :array_0
    .array-data 0x1
        0x0t
        0x0t
    .end array-data
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 305
    invoke-virtual {p0}, Landroid/content/Loader;->cancelLoad()Z

    .line 306
    return-void
.end method
