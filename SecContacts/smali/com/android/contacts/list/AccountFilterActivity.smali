.class public Lcom/android/contacts/list/AccountFilterActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "AccountFilterActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/AccountFilterActivity$1;,
        Lcom/android/contacts/list/AccountFilterActivity$FilterListAdapter;,
        Lcom/android/contacts/list/AccountFilterActivity$MyLoaderCallbacks;,
        Lcom/android/contacts/list/AccountFilterActivity$FilterLoader;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCurrentFilter:Lcom/android/contacts/list/ContactListFilter;

.field private mListView:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const-class v0, Lcom/android/contacts/list/AccountFilterActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/list/AccountFilterActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 276
    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-static {p0}, Lcom/android/contacts/list/AccountFilterActivity;->loadAccountFilters(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/contacts/list/AccountFilterActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/list/AccountFilterActivity;)Lcom/android/contacts/list/ContactListFilter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/contacts/list/AccountFilterActivity;->mCurrentFilter:Lcom/android/contacts/list/ContactListFilter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/list/AccountFilterActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/contacts/list/AccountFilterActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method private static loadAccountFilters(Landroid/content/Context;)Ljava/util/List;
    .locals 15
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/list/ContactListFilter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v10

    .line 143
    .local v10, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/list/ContactListFilter;>;"
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 144
    .local v1, accountFilters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/list/ContactListFilter;>;"
    invoke-static {p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v3

    .line 145
    .local v3, accountTypes:Lcom/android/contacts/model/AccountTypeManager;
    invoke-static {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v9

    .line 147
    .local v9, phoneBookManageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v4

    .line 148
    .local v4, accounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithDataSet;

    .line 149
    .local v0, account:Lcom/android/contacts/model/AccountWithDataSet;
    iget-object v11, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v12, v0, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v3, v11, v12}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v2

    .line 150
    .local v2, accountType:Lcom/android/contacts/model/AccountType;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/contacts/model/AccountType;->isExtension()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v0, p0}, Lcom/android/contacts/model/AccountWithDataSet;->hasData(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 155
    :cond_1
    iget-object v11, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v12, "vnd.sec.contact.sim"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v9}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->hasIccCard()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 159
    :cond_2
    iget-object v11, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v12, "vnd.sec.contact.sim"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const-string v11, "vnd.sec.contact.sim"

    invoke-virtual {v9, v11}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 163
    :cond_3
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 165
    iget-object v11, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v12, "vnd.sec.contact.sim2"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const-string v11, "vnd.sec.contact.sim2"

    invoke-virtual {v9, v11}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->hasIccCard(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 168
    :cond_4
    iget-object v11, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v12, "vnd.sec.contact.sim2"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    const-string v11, "vnd.sec.contact.sim2"

    invoke-virtual {v9, v11}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 174
    :cond_5
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v11

    const-string v12, "CscFeature_Common_MyPhonebookBrandName"

    invoke-virtual {v11, v12}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 176
    const-string v11, "com.android.tmo_myphonebook"

    iget-object v12, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 182
    :cond_6
    const-string v11, "DSDS"

    invoke-static {v11}, Landroid/plugin/PlugInServiceManager;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/plugin/dsds/PlugInDsdsService;

    .line 183
    .local v6, dsdsService:Landroid/plugin/dsds/PlugInDsdsService;
    iget-object v11, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v12, "vnd.sec.contact.sim2"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 184
    const/4 v11, 0x1

    invoke-virtual {v6, v11}, Landroid/plugin/dsds/PlugInDsdsService;->hasIccCard(I)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(I)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMasterSimEnabled()Z

    move-result v11

    if-nez v11, :cond_0

    .line 191
    :cond_7
    iget-object v11, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v12, "com.coolots.chaton"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 194
    if-eqz v2, :cond_8

    invoke-virtual {v2, p0}, Lcom/android/contacts/model/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 195
    .local v8, icon:Landroid/graphics/drawable/Drawable;
    :goto_1
    iget-object v11, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v12, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v13, v0, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    iget-object v14, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v11, v12, v13, v8, v14}, Lcom/android/contacts/list/ContactListFilter;->createAccountFilter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 194
    .end local v8           #icon:Landroid/graphics/drawable/Drawable;
    :cond_8
    const/4 v8, 0x0

    goto :goto_1

    .line 200
    .end local v0           #account:Lcom/android/contacts/model/AccountWithDataSet;
    .end local v2           #accountType:Lcom/android/contacts/model/AccountType;
    .end local v6           #dsdsService:Landroid/plugin/dsds/PlugInDsdsService;
    :cond_9
    const/4 v11, -0x2

    invoke-static {v11}, Lcom/android/contacts/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 204
    .local v5, count:I
    const/4 v11, 0x1

    if-lt v5, v11, :cond_b

    .line 206
    const/4 v11, 0x1

    if-le v5, v11, :cond_a

    .line 207
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 209
    :cond_a
    const/4 v11, -0x3

    invoke-static {v11}, Lcom/android/contacts/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    :cond_b
    return-object v10
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, -0x1

    .line 259
    if-eq p2, v3, :cond_0

    .line 274
    :goto_0
    return-void

    .line 263
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 265
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 266
    .local v1, intent:Landroid/content/Intent;
    const/4 v2, -0x3

    invoke-static {v2}, Lcom/android/contacts/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v0

    .line 268
    .local v0, filter:Lcom/android/contacts/list/ContactListFilter;
    const-string v2, "contactListFilter"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 269
    invoke-virtual {p0, v3, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 270
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 263
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 94
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    const v1, 0x7f040056

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 96
    invoke-virtual {p0, v2}, Lcom/android/contacts/list/AccountFilterActivity;->setFinishOnTouchOutside(Z)V

    .line 98
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/contacts/list/AccountFilterActivity;->mListView:Landroid/widget/ListView;

    .line 100
    iget-object v1, p0, Lcom/android/contacts/list/AccountFilterActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 102
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 103
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 107
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "currentFilter"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/list/ContactListFilter;

    iput-object v1, p0, Lcom/android/contacts/list/AccountFilterActivity;->mCurrentFilter:Lcom/android/contacts/list/ContactListFilter;

    .line 109
    invoke-virtual {p0}, Landroid/app/Activity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/android/contacts/list/AccountFilterActivity$MyLoaderCallbacks;

    invoke-direct {v3, p0, v4}, Lcom/android/contacts/list/AccountFilterActivity$MyLoaderCallbacks;-><init>(Lcom/android/contacts/list/AccountFilterActivity;Lcom/android/contacts/list/AccountFilterActivity$1;)V

    invoke-virtual {v1, v2, v4, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 110
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 242
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListFilter;

    .line 243
    if-nez v0, :cond_0

    .line 255
    :goto_0
    return-void

    .line 244
    :cond_0
    iget v1, v0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v2, -0x3

    if-ne v1, v2, :cond_1

    .line 245
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/list/CustomContactListFilterActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 247
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 249
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 250
    const-string v2, "contactListFilter"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 251
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 252
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 357
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 367
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 362
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 363
    const/4 v0, 0x1

    goto :goto_0

    .line 357
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public setFinishOnTouchOutside(Z)V
    .locals 0
    .parameter "finish"

    .prologue
    .line 372
    invoke-super {p0, p1}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    .line 373
    return-void
.end method
