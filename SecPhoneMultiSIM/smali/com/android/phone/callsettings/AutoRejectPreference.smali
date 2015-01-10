.class public Lcom/android/phone/callsettings/AutoRejectPreference;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "AutoRejectPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;
    }
.end annotation


# instance fields
.field private mAutoRejectMaxCount:I

.field private mAutoRejectModeInfo:[Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

.field private mListIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    .line 55
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectMaxCount:I

    .line 61
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/callsettings/AutoRejectPreference;)[Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectModeInfo:[Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/callsettings/AutoRejectPreference;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mListIndex:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/callsettings/AutoRejectPreference;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/AutoRejectPreference;->getValueFromIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/phone/callsettings/AutoRejectPreference;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/phone/callsettings/AutoRejectPreference;->setAutoRejectMode(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/callsettings/AutoRejectPreference;Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/AutoRejectPreference;->updateSummary(Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;)V

    return-void
.end method

.method private getAutoRejectMode(Ljava/lang/String;)I
    .locals 2
    .parameter "modeName"

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getAutoRejectModeInfo(I)Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;
    .locals 2
    .parameter "mode"

    .prologue
    .line 98
    new-instance v0, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;-><init>(Lcom/android/phone/callsettings/AutoRejectPreference;Lcom/android/phone/callsettings/AutoRejectPreference$1;)V

    .line 99
    .local v0, modeInfo:Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;
    packed-switch p1, :pswitch_data_0

    .line 117
    :goto_0
    return-object v0

    .line 101
    :pswitch_0
    const-string v1, "autoreject_mode_preference"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/callsettings/SwitchDialogPreference;

    iput-object v1, v0, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->mPreference:Lcom/android/phone/callsettings/SwitchDialogPreference;

    .line 102
    const-string v1, "autoreject_mode"

    iput-object v1, v0, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->mModeSettingName:Ljava/lang/String;

    .line 103
    const-string v1, "autoreject_mode_enable_sharedpref"

    iput-object v1, v0, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->mEnablePrefName:Ljava/lang/String;

    .line 104
    iget-object v1, v0, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->mPreference:Lcom/android/phone/callsettings/SwitchDialogPreference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0

    .line 108
    :pswitch_1
    const-string v1, "autoreject_mode_preference_outgoing"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/callsettings/SwitchDialogPreference;

    iput-object v1, v0, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->mPreference:Lcom/android/phone/callsettings/SwitchDialogPreference;

    .line 109
    const-string v1, "autoreject_outgoingcall_mode"

    iput-object v1, v0, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->mModeSettingName:Ljava/lang/String;

    .line 110
    const-string v1, "autoreject_outgoingcall_mode_enable_sharedpref"

    iput-object v1, v0, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->mEnablePrefName:Ljava/lang/String;

    .line 111
    iget-object v1, v0, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->mPreference:Lcom/android/phone/callsettings/SwitchDialogPreference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getIndexFromValue(Ljava/lang/String;)I
    .locals 3
    .parameter "modeName"

    .prologue
    .line 181
    const/4 v1, 0x0

    .line 182
    .local v1, index:I
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/AutoRejectPreference;->getAutoRejectMode(Ljava/lang/String;)I

    move-result v0

    .line 183
    .local v0, current:I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 184
    const/4 v1, 0x0

    .line 188
    :cond_0
    :goto_0
    return v1

    .line 185
    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 186
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private getValueFromIndex(I)I
    .locals 2
    .parameter "index"

    .prologue
    .line 192
    const/4 v0, 0x2

    .line 193
    .local v0, value:I
    if-nez p1, :cond_1

    .line 194
    const/4 v0, 0x1

    .line 198
    :cond_0
    :goto_0
    return v0

    .line 195
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 196
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 269
    const-string v0, "AutoRejectPreference"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    return-void
.end method

.method private makeAutoRejectDialog()Landroid/app/Dialog;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 202
    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectModeInfo:[Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

    iget v3, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mListIndex:I

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->mModeSettingName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/AutoRejectPreference;->getIndexFromValue(Ljava/lang/String;)I

    move-result v1

    .line 203
    .local v1, currentIndex:I
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0e02e7

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0e002e

    new-instance v4, Lcom/android/phone/callsettings/AutoRejectPreference$2;

    invoke-direct {v4, p0}, Lcom/android/phone/callsettings/AutoRejectPreference$2;-><init>(Lcom/android/phone/callsettings/AutoRejectPreference;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f080007

    new-instance v4, Lcom/android/phone/callsettings/AutoRejectPreference$1;

    invoke-direct {v4, p0}, Lcom/android/phone/callsettings/AutoRejectPreference$1;-><init>(Lcom/android/phone/callsettings/AutoRejectPreference;)V

    invoke-virtual {v2, v3, v1, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 221
    .local v0, autorejectDialog:Landroid/app/Dialog;
    return-object v0
.end method

.method private setAutoRejectMode(Ljava/lang/String;I)V
    .locals 1
    .parameter "rejectMode"
    .parameter "mode"

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 157
    return-void
.end method

.method private updateSummary(Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;)V
    .locals 6
    .parameter "rejectModeInfo"

    .prologue
    const/4 v5, 0x1

    .line 160
    const v3, 0x7f0e02de

    .line 161
    .local v3, res_id:I
    iget-object v4, p1, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->mModeSettingName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/phone/callsettings/AutoRejectPreference;->getAutoRejectMode(Ljava/lang/String;)I

    move-result v0

    .line 163
    .local v0, autorejectMode:I
    if-ne v0, v5, :cond_2

    .line 164
    const v3, 0x7f0e02dd

    .line 169
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 170
    .local v2, prefs:Landroid/content/SharedPreferences;
    iget-object v4, p1, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->mEnablePrefName:Ljava/lang/String;

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 172
    .local v1, isOn:Z
    if-nez v1, :cond_1

    .line 173
    const v3, 0x7f0e02cb

    .line 176
    :cond_1
    iget-object v4, p1, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->mPreference:Lcom/android/phone/callsettings/SwitchDialogPreference;

    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setSummary(I)V

    .line 177
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/callsettings/AutoRejectBootReceiver;->updateAutoRejectNotification(Landroid/content/Context;)V

    .line 178
    return-void

    .line 165
    .end local v1           #isOn:Z
    .end local v2           #prefs:Landroid/content/SharedPreferences;
    :cond_2
    const/4 v4, 0x2

    if-ne v0, v4, :cond_0

    .line 166
    const v3, 0x7f0e02de

    goto :goto_0
.end method

.method private updateSwitchWidget(Lcom/android/phone/callsettings/SwitchDialogPreference;Ljava/lang/Boolean;)V
    .locals 9
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 131
    iget-object v7, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectModeInfo:[Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

    const/4 v8, 0x0

    aget-object v3, v7, v8

    .line 132
    .local v3, info:Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectModeInfo:[Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

    .local v0, arr$:[Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v0, v2

    .line 133
    .local v5, modeInfo:Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;
    iget-object v7, v5, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->mPreference:Lcom/android/phone/callsettings/SwitchDialogPreference;

    if-ne v7, p1, :cond_1

    .line 134
    move-object v3, v5

    .line 139
    .end local v5           #modeInfo:Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 140
    .local v6, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 141
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v7, v3, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->mEnablePrefName:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 142
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 143
    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/AutoRejectPreference;->updateSummary(Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;)V

    .line 144
    return-void

    .line 132
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v6           #prefs:Landroid/content/SharedPreferences;
    .restart local v5       #modeInfo:Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 77
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 79
    const-string v1, "auto_reject_outgoingcall"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    const v1, 0x7f060005

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 81
    iget v1, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectMaxCount:I

    new-array v1, v1, [Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

    iput-object v1, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectModeInfo:[Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

    .line 82
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectModeInfo:[Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/AutoRejectPreference;->getAutoRejectModeInfo(I)Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

    move-result-object v2

    aput-object v2, v1, v3

    .line 88
    :goto_0
    iget-object v1, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectModeInfo:[Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

    invoke-direct {p0, v4}, Lcom/android/phone/callsettings/AutoRejectPreference;->getAutoRejectModeInfo(I)Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

    move-result-object v2

    aput-object v2, v1, v4

    .line 90
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 91
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 95
    :cond_0
    return-void

    .line 84
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :cond_1
    iput v3, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectMaxCount:I

    .line 85
    const v1, 0x7f060004

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 86
    iget v1, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectMaxCount:I

    new-array v1, v1, [Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

    iput-object v1, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectModeInfo:[Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "id"

    .prologue
    .line 225
    packed-switch p1, :pswitch_data_0

    .line 229
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 227
    :pswitch_0
    invoke-direct {p0}, Lcom/android/phone/callsettings/AutoRejectPreference;->makeAutoRejectDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 225
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    .line 250
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 251
    .local v1, itemId:I
    const v2, 0x102002c

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    if-gtz v2, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 256
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 257
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    const/high16 v2, 0x400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 260
    const-string v2, "com.android.phone.MAIN"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 262
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->finish()V

    .line 263
    const/4 v2, 0x1

    .line 265
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return v2

    :cond_0
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPreferenceChange "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/AutoRejectPreference;->log(Ljava/lang/String;)V

    .line 71
    check-cast p1, Lcom/android/phone/callsettings/SwitchDialogPreference;

    .end local p1
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-direct {p0, p1, p2}, Lcom/android/phone/callsettings/AutoRejectPreference;->updateSwitchWidget(Lcom/android/phone/callsettings/SwitchDialogPreference;Ljava/lang/Boolean;)V

    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x1

    .line 233
    const/4 v0, 0x0

    .line 234
    .local v0, index:I
    :goto_0
    iget v2, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectMaxCount:I

    if-ge v0, v2, :cond_0

    .line 235
    iget-object v2, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectModeInfo:[Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;->mPreference:Lcom/android/phone/callsettings/SwitchDialogPreference;

    if-ne v2, p2, :cond_1

    .line 240
    :cond_0
    iget v2, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectMaxCount:I

    if-eq v0, v2, :cond_2

    .line 241
    iput v0, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mListIndex:I

    .line 242
    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->showDialog(I)V

    .line 246
    :goto_1
    return v1

    .line 234
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 246
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_1
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 122
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    .line 124
    iget-object v0, p0, Lcom/android/phone/callsettings/AutoRejectPreference;->mAutoRejectModeInfo:[Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;

    .local v0, arr$:[Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 125
    .local v2, info:Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;
    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/AutoRejectPreference;->updateSummary(Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;)V

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 127
    .end local v2           #info:Lcom/android/phone/callsettings/AutoRejectPreference$AutoRejectModeInfo;
    :cond_0
    return-void
.end method
