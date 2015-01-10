.class public Lcom/sec/android/app/contacts/group/AccountPickerFragment;
.super Landroid/app/Fragment;
.source "AccountPickerFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/sec/android/app/contacts/list/OnActionBarClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/group/AccountPickerFragment$ListAdapter;,
        Lcom/sec/android/app/contacts/group/AccountPickerFragment$ViewCache;
    }
.end annotation


# instance fields
.field private mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

.field private mAdapter:Lcom/sec/android/app/contacts/group/AccountPickerFragment$ListAdapter;

.field private mContext:Landroid/content/Context;

.field private mHeaderView:Landroid/view/View;

.field private mList:Landroid/widget/ListView;

.field private mListener:Lcom/sec/android/app/contacts/group/OnAccountsPickerActionListener;

.field private mRootView:Landroid/view/View;

.field private mSelectedAccounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/group/AccountPickerFragment;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/group/AccountPickerFragment;)Lcom/android/contacts/model/AccountTypeManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/group/AccountPickerFragment;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mSelectedAccounts:Ljava/util/List;

    return-object v0
.end method

.method private addAccountWithDataSet(Lcom/android/contacts/model/AccountWithDataSet;)V
    .locals 1
    .parameter "accountWithDataSet"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mSelectedAccounts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    return-void
.end method

.method private addAllAccountWithDataSet()V
    .locals 4

    .prologue
    .line 160
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mSelectedAccounts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 161
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->getAllGoogleAccounts()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithDataSet;

    .line 162
    .local v0, accountWithDataSet:Lcom/android/contacts/model/AccountWithDataSet;
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mSelectedAccounts:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 165
    .end local v0           #accountWithDataSet:Lcom/android/contacts/model/AccountWithDataSet;
    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 166
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->getAllDocomoAccounts()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithDataSet;

    .line 167
    .restart local v0       #accountWithDataSet:Lcom/android/contacts/model/AccountWithDataSet;
    iget-object v2, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mSelectedAccounts:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 170
    .end local v0           #accountWithDataSet:Lcom/android/contacts/model/AccountWithDataSet;
    :cond_1
    return-void
.end method

.method private getAllDocomoAccounts()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 188
    .local v0, DocomoAccounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/AccountWithDataSet;>;"
    iget-object v4, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/model/AccountTypeManager;->getGroupWritableAccounts()Ljava/util/List;

    move-result-object v2

    .line 191
    .local v2, accounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/AccountWithDataSet;

    .line 192
    .local v1, account:Lcom/android/contacts/model/AccountWithDataSet;
    const-string v4, "com.android.nttdocomo"

    iget-object v5, v1, Lcom/android/contacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 193
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 196
    .end local v1           #account:Lcom/android/contacts/model/AccountWithDataSet;
    :cond_1
    return-object v0
.end method

.method private getAllGoogleAccounts()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .local v2, googleAccounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/AccountWithDataSet;>;"
    iget-object v4, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/model/AccountTypeManager;->getGroupWritableAccounts()Ljava/util/List;

    move-result-object v1

    .line 177
    .local v1, accounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithDataSet;

    .line 178
    .local v0, account:Lcom/android/contacts/model/AccountWithDataSet;
    const-string v4, "com.google"

    iget-object v5, v0, Lcom/android/contacts/model/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 179
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 182
    .end local v0           #account:Lcom/android/contacts/model/AccountWithDataSet;
    :cond_1
    return-object v2
.end method

.method private removeAccountWithDataSet(Lcom/android/contacts/model/AccountWithDataSet;)V
    .locals 1
    .parameter "accountWithDataSet"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mSelectedAccounts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 153
    return-void
.end method

.method private removeAllAccountWithDataSet()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mSelectedAccounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 157
    return-void
.end method

.method private updateHeaderViewAndDoneButton()V
    .locals 5

    .prologue
    const v4, 0x7f0900f8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 200
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mAdapter:Lcom/sec/android/app/contacts/group/AccountPickerFragment$ListAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/group/AccountPickerFragment$ListAdapter;->getCount()I

    move-result v0

    .line 202
    .local v0, total:I
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mSelectedAccounts:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mSelectedAccounts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 203
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 208
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mSelectedAccounts:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mSelectedAccounts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 209
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mListener:Lcom/sec/android/app/contacts/group/OnAccountsPickerActionListener;

    invoke-interface {v1, v2}, Lcom/sec/android/app/contacts/group/OnAccountsPickerActionListener;->onDoneButtonStateUpdated(Z)V

    .line 214
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mSelectedAccounts:Ljava/util/List;

    if-nez v1, :cond_3

    .line 215
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mListener:Lcom/sec/android/app/contacts/group/OnAccountsPickerActionListener;

    invoke-interface {v1, v2}, Lcom/sec/android/app/contacts/group/OnAccountsPickerActionListener;->onTitleUpdated(I)V

    .line 218
    :goto_2
    return-void

    .line 205
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_0

    .line 211
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mListener:Lcom/sec/android/app/contacts/group/OnAccountsPickerActionListener;

    invoke-interface {v1, v3}, Lcom/sec/android/app/contacts/group/OnAccountsPickerActionListener;->onDoneButtonStateUpdated(Z)V

    goto :goto_1

    .line 217
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mListener:Lcom/sec/android/app/contacts/group/OnAccountsPickerActionListener;

    iget-object v2, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mSelectedAccounts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/android/app/contacts/group/OnAccountsPickerActionListener;->onTitleUpdated(I)V

    goto :goto_2
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 91
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mContext:Landroid/content/Context;

    .line 92
    iget-object v1, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    .line 93
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->getAllGoogleAccounts()Ljava/util/ArrayList;

    move-result-object v0

    .line 96
    .local v0, allGoogleAccounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/model/AccountWithDataSet;>;"
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableDocomoAccountAsDefault"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->getAllDocomoAccounts()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 99
    :cond_0
    new-instance v1, Lcom/sec/android/app/contacts/group/AccountPickerFragment$ListAdapter;

    const v2, 0x7f04002b

    invoke-direct {v1, p0, p1, v2, v0}, Lcom/sec/android/app/contacts/group/AccountPickerFragment$ListAdapter;-><init>(Lcom/sec/android/app/contacts/group/AccountPickerFragment;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v1, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mAdapter:Lcom/sec/android/app/contacts/group/AccountPickerFragment$ListAdapter;

    .line 101
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedState"

    .prologue
    const/4 v2, 0x0

    .line 111
    const v0, 0x7f040105

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mRootView:Landroid/view/View;

    .line 112
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mRootView:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mList:Landroid/widget/ListView;

    .line 113
    const v0, 0x7f04014f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mHeaderView:Landroid/view/View;

    .line 115
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 116
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 117
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mAdapter:Lcom/sec/android/app/contacts/group/AccountPickerFragment$ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 118
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->updateHeaderViewAndDoneButton()V

    .line 119
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mContext:Landroid/content/Context;

    .line 107
    return-void
.end method

.method public onDoneClicked()V
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mListener:Lcom/sec/android/app/contacts/group/OnAccountsPickerActionListener;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mListener:Lcom/sec/android/app/contacts/group/OnAccountsPickerActionListener;

    iget-object v1, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mSelectedAccounts:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/sec/android/app/contacts/group/OnAccountsPickerActionListener;->onSelectedAction(Ljava/util/List;)V

    .line 281
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
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
    .line 125
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    if-nez p3, :cond_1

    .line 126
    iget-object v3, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mHeaderView:Landroid/view/View;

    const v4, 0x7f0900f8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 127
    .local v2, checkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 128
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->removeAllAccountWithDataSet()V

    .line 143
    .end local v2           #checkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mAdapter:Lcom/sec/android/app/contacts/group/AccountPickerFragment$ListAdapter;

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/group/AccountPickerFragment$ListAdapter;->notifyDataSetChanged()V

    .line 144
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->updateHeaderViewAndDoneButton()V

    .line 145
    return-void

    .line 130
    .restart local v2       #checkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->addAllAccountWithDataSet()V

    goto :goto_0

    .line 134
    .end local v2           #checkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    sub-int v1, p3, v3

    .line 135
    .local v1, adjPosition:I
    iget-object v3, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mAdapter:Lcom/sec/android/app/contacts/group/AccountPickerFragment$ListAdapter;

    invoke-virtual {v3, v1}, Lcom/sec/android/app/contacts/group/AccountPickerFragment$ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountWithDataSet;

    .line 137
    .local v0, accountWithDataSet:Lcom/android/contacts/model/AccountWithDataSet;
    iget-object v3, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mSelectedAccounts:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 138
    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->removeAccountWithDataSet(Lcom/android/contacts/model/AccountWithDataSet;)V

    goto :goto_0

    .line 140
    :cond_2
    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->addAccountWithDataSet(Lcom/android/contacts/model/AccountWithDataSet;)V

    goto :goto_0
.end method

.method public onRevertAction()V
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mListener:Lcom/sec/android/app/contacts/group/OnAccountsPickerActionListener;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mListener:Lcom/sec/android/app/contacts/group/OnAccountsPickerActionListener;

    invoke-interface {v0}, Lcom/sec/android/app/contacts/group/OnAccountsPickerActionListener;->onRevertAction()V

    .line 288
    :cond_0
    return-void
.end method

.method public setAccountPickerActionListener(Lcom/sec/android/app/contacts/group/OnAccountsPickerActionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mListener:Lcom/sec/android/app/contacts/group/OnAccountsPickerActionListener;

    .line 77
    return-void
.end method

.method public setSelectedAccounts(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountWithDataSet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, selectedAccounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    if-nez p1, :cond_0

    .line 81
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mSelectedAccounts:Ljava/util/List;

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/contacts/group/AccountPickerFragment;->mSelectedAccounts:Ljava/util/List;

    goto :goto_0
.end method
