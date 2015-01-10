.class public Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;
.super Landroid/app/Activity;
.source "ContactHistoryViewByActivity.java"

# interfaces
.implements Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment$OnViewByItemsCheckedListener;


# instance fields
.field private mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;

.field mOptionIsChanged:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->mOptionIsChanged:Z

    return-void
.end method

.method private setWindowBackground(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "config"

    .prologue
    const v3, 0x7f0900f7

    const/4 v2, 0x0

    .line 83
    const-string v0, "DEFAULT"

    const-string v1, "TABLET_BLACK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f020733

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 88
    :goto_0
    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 89
    return-void

    .line 86
    :cond_0
    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f020734

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private setupActionBar()V
    .locals 2

    .prologue
    .line 92
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 93
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 94
    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 96
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getSetTitleOnActionBar()Z

    move-result v1

    if-nez v1, :cond_1

    .line 97
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    const v1, 0x7f0d02db

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public doRevertActionMenu()V
    .locals 2

    .prologue
    .line 201
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 202
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 203
    return-void
.end method

.method public doSaveAction([Z)V
    .locals 2
    .parameter "mSortOptions"

    .prologue
    .line 194
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 195
    .local v0, i:Landroid/content/Intent;
    const-string v1, "options"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Z)Landroid/content/Intent;

    .line 196
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 197
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 198
    return-void
.end method

.method public onChangedOptionItems(Z)V
    .locals 1
    .parameter "optionIsChanged"

    .prologue
    .line 214
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->mOptionIsChanged:Z

    if-ne v0, p1, :cond_0

    .line 218
    :goto_0
    return-void

    .line 216
    :cond_0
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->mOptionIsChanged:Z

    .line 217
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 110
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 112
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->setWindowBackground(Landroid/content/res/Configuration;)V

    .line 114
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method public onContentChanged()V
    .locals 0

    .prologue
    .line 208
    invoke-super {p0}, Landroid/app/Activity;->onContentChanged()V

    .line 209
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const-string v1, "ContactHistoryViewByListActivity"

    const-string v2, "onCreate!!"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    if-eqz p1, :cond_0

    .line 61
    const-string v1, "optionsChanged"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->mOptionIsChanged:Z

    .line 63
    :cond_0
    const v1, 0x7f040053

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 65
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f09015b

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;

    .line 68
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 69
    .local v0, config:Landroid/content/res/Configuration;
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->setupActionBar()V

    .line 70
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->setWindowBackground(Landroid/content/res/Configuration;)V

    .line 74
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->setExtras(Landroid/os/Bundle;)V

    .line 75
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    .line 164
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 165
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 166
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f12000b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 167
    const v1, 0x7f0903b5

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->mOptionIsChanged:Z

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 168
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 174
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 190
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 176
    :sswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 180
    :sswitch_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->linkListItemToOption()V

    .line 181
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->getSortOptions()[Z

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->doSaveAction([Z)V

    goto :goto_0

    .line 184
    :sswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->doRevertActionMenu()V

    goto :goto_0

    .line 174
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0903a5 -> :sswitch_2
        0x7f0903b5 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter "menu"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 140
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 142
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 144
    .local v1, config:Landroid/content/res/Configuration;
    iget v3, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    const/16 v4, 0x258

    if-gt v3, v4, :cond_0

    .line 146
    const v3, 0x7f0903b5

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 147
    .local v2, doneMenuItem:Landroid/view/MenuItem;
    const v3, 0x7f0903a5

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 149
    .local v0, cancelMenuItem:Landroid/view/MenuItem;
    iget v3, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v5, :cond_1

    .line 150
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 151
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 158
    .end local v0           #cancelMenuItem:Landroid/view/MenuItem;
    .end local v2           #doneMenuItem:Landroid/view/MenuItem;
    :cond_0
    :goto_0
    return v5

    .line 152
    .restart local v0       #cancelMenuItem:Landroid/view/MenuItem;
    .restart local v2       #doneMenuItem:Landroid/view/MenuItem;
    :cond_1
    iget v3, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 153
    const v3, 0x7f0204cf

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 154
    const v3, 0x7f0204d0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 123
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;

    const-string v1, "selectAll"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->setSelectAllCheckBox(Z)V

    .line 125
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;

    const-string v1, "options"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->setSortOptions([Z)V

    .line 126
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 79
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 80
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 131
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 132
    const-string v0, "options"

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->getSortOptions()[Z

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 133
    const-string v0, "selectAll"

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryViewByListFragment;->getSelectAllCheckBox()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 134
    const-string v0, "optionsChanged"

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;->mOptionIsChanged:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 135
    return-void
.end method
