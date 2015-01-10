.class public Lcom/android/contacts/list/ContactListFilterController;
.super Ljava/lang/Object;
.source "ContactListFilterController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field protected mFilter:Lcom/android/contacts/list/ContactListFilter;

.field private mIsInitialized:Z

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/list/ContactListFilterController;->mListeners:Ljava/util/List;

    .line 67
    iput-object p1, p0, Lcom/android/contacts/list/ContactListFilterController;->mContext:Landroid/content/Context;

    .line 68
    return-void
.end method

.method private notifyContactListFilterChanged()V
    .locals 3

    .prologue
    .line 148
    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilterController;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;

    .line 149
    .local v1, listener:Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;
    invoke-interface {v1}, Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;->onContactListFilterChanged()V

    goto :goto_0

    .line 151
    .end local v1           #listener:Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;
    :cond_0
    return-void
.end method


# virtual methods
.method public CheckValidAccount(Lcom/android/contacts/list/ContactListFilter;)Z
    .locals 10
    .parameter "filter"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 71
    iget-object v8, p0, Lcom/android/contacts/list/ContactListFilterController;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    iget v8, v8, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v9, -0x2

    if-eq v8, v9, :cond_1

    iget-object v8, p0, Lcom/android/contacts/list/ContactListFilterController;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    iget v8, v8, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    const/4 v9, -0x3

    if-eq v8, v9, :cond_1

    .line 73
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 74
    .local v1, accountFilters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/list/ContactListFilter;>;"
    iget-object v8, p0, Lcom/android/contacts/list/ContactListFilterController;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v3

    .line 75
    .local v3, accountTypes:Lcom/android/contacts/model/AccountTypeManager;
    invoke-virtual {v3, v7}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v4

    .line 76
    .local v4, accounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithDataSet;

    .line 77
    .local v0, account:Lcom/android/contacts/model/AccountWithDataSet;
    iget-object v8, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v9, v0, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v2

    .line 78
    .local v2, accountType:Lcom/android/contacts/model/AccountType;
    iget-object v8, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/contacts/list/ContactListFilterController;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    iget-object v9, v9, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 85
    .end local v0           #account:Lcom/android/contacts/model/AccountWithDataSet;
    .end local v1           #accountFilters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/list/ContactListFilter;>;"
    .end local v2           #accountType:Lcom/android/contacts/model/AccountType;
    .end local v3           #accountTypes:Lcom/android/contacts/model/AccountTypeManager;
    .end local v4           #accounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    return v6

    .restart local v1       #accountFilters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/list/ContactListFilter;>;"
    .restart local v3       #accountTypes:Lcom/android/contacts/model/AccountTypeManager;
    .restart local v4       #accounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_2
    move v6, v7

    .line 82
    goto :goto_0
.end method

.method public addListener(Lcom/android/contacts/list/ContactListFilterController$ContactListFilterListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterController;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    return-void
.end method

.method public getFilter()Lcom/android/contacts/list/ContactListFilter;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterController;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    return-object v0
.end method

.method protected getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListFilterController;->mIsInitialized:Z

    return v0
.end method

.method public onStart(Z)V
    .locals 5
    .parameter "forceFilterReload"

    .prologue
    const/4 v4, 0x1

    .line 93
    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilterController;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_1

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListFilterController;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/list/ContactListFilter;->restoreDefaultPreferences(Landroid/content/SharedPreferences;)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/list/ContactListFilterController;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    .line 97
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilterController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v1

    .line 99
    .local v1, manageSim:Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilterController;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {p0, v2}, Lcom/android/contacts/list/ContactListFilterController;->CheckValidAccount(Lcom/android/contacts/list/ContactListFilter;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(I)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "vnd.sec.contact.sim"

    iget-object v3, p0, Lcom/android/contacts/list/ContactListFilterController;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    iget-object v3, v3, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    invoke-virtual {v1, v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(I)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "vnd.sec.contact.sim2"

    iget-object v3, p0, Lcom/android/contacts/list/ContactListFilterController;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    iget-object v3, v3, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 101
    :cond_3
    const/4 v2, -0x2

    invoke-static {v2}, Lcom/android/contacts/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v0

    .line 102
    .local v0, defaultfilter:Lcom/android/contacts/list/ContactListFilter;
    invoke-virtual {p0, v0, v4}, Lcom/android/contacts/list/ContactListFilterController;->setContactListFilter(Lcom/android/contacts/list/ContactListFilter;Z)V

    .line 105
    .end local v0           #defaultfilter:Lcom/android/contacts/list/ContactListFilter;
    :cond_4
    iput-boolean v4, p0, Lcom/android/contacts/list/ContactListFilterController;->mIsInitialized:Z

    .line 106
    return-void
.end method

.method public selectCustomFilter()V
    .locals 2

    .prologue
    .line 143
    const/4 v0, -0x3

    invoke-static {v0}, Lcom/android/contacts/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/list/ContactListFilterController;->setContactListFilter(Lcom/android/contacts/list/ContactListFilter;Z)V

    .line 145
    return-void
.end method

.method public setContactListFilter(Lcom/android/contacts/list/ContactListFilter;Z)V
    .locals 2
    .parameter "filter"
    .parameter "persistent"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterController;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {p1, v0}, Lcom/android/contacts/list/ContactListFilter;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 132
    iput-object p1, p0, Lcom/android/contacts/list/ContactListFilterController;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    .line 133
    if-eqz p2, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/android/contacts/list/ContactListFilterController;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilterController;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-static {v0, v1}, Lcom/android/contacts/list/ContactListFilter;->storeToPreferences(Landroid/content/SharedPreferences;Lcom/android/contacts/list/ContactListFilter;)V

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilterController;->mListeners:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 137
    invoke-direct {p0}, Lcom/android/contacts/list/ContactListFilterController;->notifyContactListFilterChanged()V

    .line 140
    :cond_1
    return-void
.end method

.method public setFilterType(I)V
    .locals 2
    .parameter "tab"

    .prologue
    const/4 v1, -0x2

    .line 155
    const/4 v0, 0x0

    .line 156
    .local v0, filter:Lcom/android/contacts/list/ContactListFilter;
    packed-switch p1, :pswitch_data_0

    .line 170
    new-instance v0, Lcom/android/contacts/list/ContactListFilter;

    .end local v0           #filter:Lcom/android/contacts/list/ContactListFilter;
    invoke-direct {v0, v1}, Lcom/android/contacts/list/ContactListFilter;-><init>(I)V

    .line 173
    .restart local v0       #filter:Lcom/android/contacts/list/ContactListFilter;
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/list/ContactListFilterController;->setContactListFilter(Lcom/android/contacts/list/ContactListFilter;Z)V

    .line 174
    return-void

    .line 158
    :pswitch_0
    new-instance v0, Lcom/android/contacts/list/ContactListFilter;

    .end local v0           #filter:Lcom/android/contacts/list/ContactListFilter;
    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/contacts/list/ContactListFilter;-><init>(I)V

    .line 159
    .restart local v0       #filter:Lcom/android/contacts/list/ContactListFilter;
    goto :goto_0

    .line 161
    :pswitch_1
    new-instance v0, Lcom/android/contacts/list/ContactListFilter;

    .end local v0           #filter:Lcom/android/contacts/list/ContactListFilter;
    const/4 v1, -0x4

    invoke-direct {v0, v1}, Lcom/android/contacts/list/ContactListFilter;-><init>(I)V

    .line 162
    .restart local v0       #filter:Lcom/android/contacts/list/ContactListFilter;
    goto :goto_0

    .line 164
    :pswitch_2
    new-instance v0, Lcom/android/contacts/list/ContactListFilter;

    .end local v0           #filter:Lcom/android/contacts/list/ContactListFilter;
    invoke-direct {v0, v1}, Lcom/android/contacts/list/ContactListFilter;-><init>(I)V

    .line 165
    .restart local v0       #filter:Lcom/android/contacts/list/ContactListFilter;
    goto :goto_0

    .line 167
    :pswitch_3
    new-instance v0, Lcom/android/contacts/list/ContactListFilter;

    .end local v0           #filter:Lcom/android/contacts/list/ContactListFilter;
    const/16 v1, -0xc

    invoke-direct {v0, v1}, Lcom/android/contacts/list/ContactListFilter;-><init>(I)V

    .line 168
    .restart local v0       #filter:Lcom/android/contacts/list/ContactListFilter;
    goto :goto_0

    .line 156
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
