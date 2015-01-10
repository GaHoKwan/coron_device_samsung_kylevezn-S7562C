.class public final Lcom/android/contacts/preference/ContactsPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "ContactsPreferenceActivity.java"


# instance fields
.field private mIsRootScreen:Z

.field private mOnlyPhones:Z

.field private mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

.field private mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getIsRootScreen()Z
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/android/contacts/preference/ContactsPreferenceActivity;->mIsRootScreen:Z

    return v0
.end method

.method public onBackPressed()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 115
    invoke-virtual {p0}, Lcom/android/contacts/preference/ContactsPreferenceActivity;->getIsRootScreen()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v4

    if-nez v4, :cond_3

    .line 116
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 117
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "onlyContactWithPhonesChanged"

    iget-boolean v5, p0, Lcom/android/contacts/preference/ContactsPreferenceActivity;->mOnlyPhones:Z

    iget-object v6, p0, Lcom/android/contacts/preference/ContactsPreferenceActivity;->mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v6}, Lcom/android/contacts/preference/ContactsPreferences;->getOnlyPhones()Z

    move-result v6

    if-eq v5, v6, :cond_2

    :goto_0
    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 118
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 119
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 126
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    :goto_1
    return-void

    .restart local v1       #intent:Landroid/content/Intent;
    :cond_2
    move v2, v3

    .line 117
    goto :goto_0

    .line 122
    .end local v1           #intent:Landroid/content/Intent;
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/contacts/preference/ContactsPreferenceActivity;->setIsRootScreen(Z)V

    .line 123
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->onGetInitialHeader()Landroid/preference/PreferenceActivity$Header;

    move-result-object v0

    .line 124
    .local v0, header:Landroid/preference/PreferenceActivity$Header;
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0, v3}, Landroid/preference/PreferenceActivity;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    goto :goto_1
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, target:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const v0, 0x7f060002

    invoke-virtual {p0, v0, p1}, Landroid/preference/PreferenceActivity;->loadHeadersFromResource(ILjava/util/List;)V

    .line 81
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x4

    const/4 v4, 0x1

    .line 51
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    invoke-virtual {p0, v4}, Landroid/preference/PreferenceActivity;->setMultiPane(Z)V

    .line 54
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 55
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 60
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 61
    invoke-virtual {v0, v2, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 63
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, -0x2

    invoke-virtual {v1, v3, v2}, Landroid/view/Window;->setFeatureInt(II)V

    .line 64
    new-instance v1, Lcom/android/contacts/preference/ContactsPreferences;

    invoke-direct {v1, p0}, Lcom/android/contacts/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/contacts/preference/ContactsPreferenceActivity;->mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

    .line 65
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/preference/ContactsPreferenceActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 66
    iget-object v1, p0, Lcom/android/contacts/preference/ContactsPreferenceActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "only_phones"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/preference/ContactsPreferenceActivity;->mOnlyPhones:Z

    .line 67
    if-eqz p1, :cond_2

    .line 68
    const-string v1, "is_root_screen"

    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/preference/ContactsPreferenceActivity;->mIsRootScreen:Z

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_2
    iput-boolean v4, p0, Lcom/android/contacts/preference/ContactsPreferenceActivity;->mIsRootScreen:Z

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 99
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 109
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 105
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/contacts/preference/ContactsPreferenceActivity;->onBackPressed()V

    .line 106
    const/4 v0, 0x1

    goto :goto_0

    .line 99
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 89
    const-string v0, "is_root_screen"

    iget-boolean v1, p0, Lcom/android/contacts/preference/ContactsPreferenceActivity;->mIsRootScreen:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 90
    return-void
.end method

.method public setIsRootScreen(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/android/contacts/preference/ContactsPreferenceActivity;->mIsRootScreen:Z

    .line 131
    return-void
.end method
