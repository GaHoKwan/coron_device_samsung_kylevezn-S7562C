.class public Lcom/android/phone/callsettings/CallSettingsVibrationsPreference;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "CallSettingsVibrationsPreference.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private mAnswerVibPreference:Landroid/preference/CheckBoxPreference;

.field private mEndVibPreference:Landroid/preference/CheckBoxPreference;

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v1, 0x7f06003c

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 50
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/callsettings/CallSettingsVibrationsPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 51
    const-string v1, "answer_vibration_preference"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/callsettings/CallSettingsVibrationsPreference;->mAnswerVibPreference:Landroid/preference/CheckBoxPreference;

    .line 52
    const-string v1, "end_vibration_preference"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/callsettings/CallSettingsVibrationsPreference;->mEndVibPreference:Landroid/preference/CheckBoxPreference;

    .line 54
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 55
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 57
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 59
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 85
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 86
    iget-object v0, p0, Lcom/android/phone/callsettings/CallSettingsVibrationsPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 87
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 62
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    .line 63
    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsVibrationsPreference;->mAnswerVibPreference:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "call_answer_vib"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_2

    move v0, v1

    .line 67
    .local v0, alertSetting:Z
    :goto_0
    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsVibrationsPreference;->mAnswerVibPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 69
    const-string v3, "cdma_call_alert_enable"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 70
    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsVibrationsPreference;->mAnswerVibPreference:Landroid/preference/CheckBoxPreference;

    const v4, 0x7f0e0324

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setTitle(I)V

    .line 71
    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsVibrationsPreference;->mAnswerVibPreference:Landroid/preference/CheckBoxPreference;

    const v4, 0x7f0e0326

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 74
    .end local v0           #alertSetting:Z
    :cond_0
    iget-object v3, p0, Lcom/android/phone/callsettings/CallSettingsVibrationsPreference;->mEndVibPreference:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_1

    .line 75
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "call_end_vib"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_3

    move v0, v1

    .line 78
    .restart local v0       #alertSetting:Z
    :goto_1
    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsVibrationsPreference;->mEndVibPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 81
    .end local v0           #alertSetting:Z
    :cond_1
    iget-object v1, p0, Lcom/android/phone/callsettings/CallSettingsVibrationsPreference;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 82
    return-void

    :cond_2
    move v0, v2

    .line 64
    goto :goto_0

    :cond_3
    move v0, v2

    .line 75
    goto :goto_1
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 5
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 92
    const-string v3, "answer_vibration_preference"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 93
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 94
    .local v0, state:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "call_answer_vib"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 97
    .end local v0           #state:I
    :cond_0
    const-string v3, "end_vibration_preference"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 98
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v1

    .line 99
    .restart local v0       #state:I
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "call_end_vib"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 102
    .end local v0           #state:I
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 93
    goto :goto_0

    :cond_3
    move v0, v2

    .line 98
    goto :goto_1
.end method
