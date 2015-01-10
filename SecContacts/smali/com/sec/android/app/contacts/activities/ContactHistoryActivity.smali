.class public Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "ContactHistoryActivity.java"

# interfaces
.implements Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment$OnDeletedItemCheckedListener;


# instance fields
.field public mEveryBodyIsOff:Z

.field private mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

.field public mIsDeleteMode:Z

.field public mIsExistItems:Z

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mSortOptions:[Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mEveryBodyIsOff:Z

    .line 74
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mIsExistItems:Z

    .line 76
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mIsDeleteMode:Z

    return-void
.end method

.method private setWindowBackground(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "config"

    .prologue
    const v3, 0x7f0900f7

    const/4 v2, 0x0

    .line 100
    const-string v0, "DEFAULT"

    const-string v1, "TABLET_BLACK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f020733

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 107
    :goto_0
    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 108
    return-void

    .line 104
    :cond_0
    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f020734

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private updateDeleteMode(Z)V
    .locals 4
    .parameter "isDeleteMode"

    .prologue
    .line 294
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mIsDeleteMode:Z

    .line 295
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->setMode(Z)V

    .line 296
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->setupActionBar()V

    .line 297
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity$1;-><init>(Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 304
    return-void
.end method


# virtual methods
.method protected doDeleteAction()V
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->doDeleteAction()V

    .line 312
    return-void
.end method

.method protected doRevertActionMenu()V
    .locals 1

    .prologue
    .line 307
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->updateDeleteMode(Z)V

    .line 308
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 208
    const/4 v3, -0x1

    if-eq p2, v3, :cond_0

    .line 247
    :goto_0
    return-void

    .line 211
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 213
    :pswitch_0
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v2

    .line 214
    .local v2, isPhone:Z
    invoke-static {p0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMMSAvailable(Landroid/content/Context;)Z

    move-result v1

    .line 215
    .local v1, isMMS:Z
    const-string v3, "options"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getBooleanArrayExtra(Ljava/lang/String;)[Z

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mSortOptions:[Z

    .line 216
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 218
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Contact_DisableMessageLog"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 220
    if-eqz v2, :cond_1

    .line 221
    const-string v3, "view_by_call"

    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mSortOptions:[Z

    aget-boolean v4, v4, v5

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 222
    const-string v3, "view_by_email"

    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mSortOptions:[Z

    aget-boolean v4, v4, v6

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 242
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 243
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->updateSharedPrefs()V

    goto :goto_0

    .line 224
    :cond_1
    const-string v3, "view_by_email"

    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mSortOptions:[Z

    aget-boolean v4, v4, v5

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 227
    :cond_2
    if-eqz v2, :cond_3

    .line 228
    const-string v3, "view_by_call"

    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mSortOptions:[Z

    aget-boolean v4, v4, v5

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 229
    const-string v3, "view_by_message"

    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mSortOptions:[Z

    aget-boolean v4, v4, v6

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 230
    const-string v3, "view_by_email"

    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mSortOptions:[Z

    aget-boolean v4, v4, v7

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 231
    const-string v3, "view_by_im"

    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mSortOptions:[Z

    const/4 v5, 0x3

    aget-boolean v4, v4, v5

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 232
    :cond_3
    if-eqz v1, :cond_4

    .line 233
    const-string v3, "view_by_message"

    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mSortOptions:[Z

    aget-boolean v4, v4, v5

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 234
    const-string v3, "view_by_email"

    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mSortOptions:[Z

    aget-boolean v4, v4, v6

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 235
    const-string v3, "view_by_im"

    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mSortOptions:[Z

    aget-boolean v4, v4, v7

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 237
    :cond_4
    const-string v3, "view_by_email"

    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mSortOptions:[Z

    aget-boolean v4, v4, v5

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 238
    const-string v3, "view_by_im"

    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mSortOptions:[Z

    aget-boolean v4, v4, v6

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 211
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getIsDeleteMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->updateDeleteMode(Z)V

    .line 162
    :goto_0
    return-void

    .line 160
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 137
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 140
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 141
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->setWindowBackground(Landroid/content/res/Configuration;)V

    .line 145
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedState"

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    const v1, 0x7f04004e

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 84
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f090149

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    .line 86
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->setDeleteMode(Z)V

    .line 87
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 88
    if-eqz p1, :cond_0

    .line 89
    const-string v1, "deleteMode"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mIsDeleteMode:Z

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->setupActionBar()V

    .line 92
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 94
    .local v0, config:Landroid/content/res/Configuration;
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->setWindowBackground(Landroid/content/res/Configuration;)V

    .line 97
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    .line 252
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 253
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getIsDeleteMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 254
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 255
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f120016

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 261
    :goto_0
    return v2

    .line 257
    .end local v0           #inflater:Landroid/view/MenuInflater;
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 258
    .restart local v0       #inflater:Landroid/view/MenuInflater;
    const v1, 0x7f120006

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 259
    const v1, 0x7f0903a6

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mEveryBodyIsOff:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getIsDeleteMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->updateDeleteMode(Z)V

    .line 152
    :cond_0
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onDestroy()V

    .line 153
    return-void
.end method

.method public onExistsDeletedItems(Z)V
    .locals 1
    .parameter "everyBodyIsOff"

    .prologue
    .line 316
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mEveryBodyIsOff:Z

    if-ne v0, p1, :cond_0

    .line 321
    :goto_0
    return-void

    .line 318
    :cond_0
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mEveryBodyIsOff:Z

    .line 320
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method public onFinishedDeletion(Z)V
    .locals 1
    .parameter "finished"

    .prologue
    .line 325
    if-eqz p1, :cond_0

    .line 326
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->updateDeleteMode(Z)V

    .line 327
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 174
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 203
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 176
    :sswitch_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getIsDeleteMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->updateDeleteMode(Z)V

    goto :goto_0

    .line 179
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 184
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->doRevertActionMenu()V

    goto :goto_0

    .line 188
    :sswitch_2
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getIsDeleteMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 189
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->doDeleteAction()V

    goto :goto_0

    .line 191
    :cond_1
    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->updateDeleteMode(Z)V

    goto :goto_0

    .line 196
    :sswitch_3
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sec/android/app/contacts/activities/ContactHistoryViewByActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 197
    const-string v2, "options"

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getSortOptions()[Z

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Z)Landroid/content/Intent;

    .line 198
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 174
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0903a5 -> :sswitch_1
        0x7f0903a6 -> :sswitch_2
        0x7f0903d1 -> :sswitch_3
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .parameter "menu"

    .prologue
    const/4 v7, 0x0

    const v6, 0x7f0903a6

    const/4 v4, 0x1

    .line 266
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 268
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 270
    .local v1, config:Landroid/content/res/Configuration;
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    invoke-virtual {v3}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getIsDeleteMode()Z

    move-result v3

    if-nez v3, :cond_0

    .line 271
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mFragment:Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    invoke-static {}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->getAdapter()Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v3

    if-lez v3, :cond_2

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mIsExistItems:Z

    .line 272
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-boolean v5, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mIsExistItems:Z

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 275
    :cond_0
    iget v3, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    const/16 v5, 0x258

    if-gt v3, v5, :cond_1

    iget-boolean v3, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mIsDeleteMode:Z

    if-eqz v3, :cond_1

    .line 277
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 278
    .local v2, deleteMenuItem:Landroid/view/MenuItem;
    const v3, 0x7f0903a5

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 279
    .local v0, cancelMenuItem:Landroid/view/MenuItem;
    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 280
    iget v3, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v4, :cond_3

    .line 281
    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 282
    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 290
    .end local v0           #cancelMenuItem:Landroid/view/MenuItem;
    .end local v2           #deleteMenuItem:Landroid/view/MenuItem;
    :cond_1
    :goto_1
    return v4

    .line 271
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 283
    .restart local v0       #cancelMenuItem:Landroid/view/MenuItem;
    .restart local v2       #deleteMenuItem:Landroid/view/MenuItem;
    :cond_3
    iget v3, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_1

    .line 284
    const v3, 0x7f0204cf

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 285
    const v3, 0x7f0204d0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public onQueryCompleted(Z)V
    .locals 1
    .parameter "hasItems"

    .prologue
    .line 332
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mIsDeleteMode:Z

    if-eqz v0, :cond_0

    .line 333
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->updateDeleteMode(Z)V

    .line 334
    invoke-static {}, Lcom/sec/android/app/contacts/detail/ContactHistoryDialogFragment;->dismissDialog()V

    .line 337
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mIsExistItems:Z

    if-eq v0, p1, :cond_1

    .line 338
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mIsExistItems:Z

    .line 339
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 341
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 167
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 168
    const-string v0, "deleteMode"

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mIsDeleteMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 169
    return-void
.end method

.method setupActionBar()V
    .locals 3

    .prologue
    const/16 v2, 0x1e

    .line 111
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 112
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 113
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/activities/ContactHistoryActivity;->mIsDeleteMode:Z

    if-nez v1, :cond_1

    .line 114
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 117
    const v1, 0x7f0d02b8

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 122
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getSetTitleOnActionBar()Z

    move-result v1

    if-nez v1, :cond_2

    .line 123
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 125
    :cond_2
    const v1, 0x7f0d0319

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
