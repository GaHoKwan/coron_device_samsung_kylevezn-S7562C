.class public Lcom/android/phone/callsettings/RingtoneKeytoneSettings;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "RingtoneKeytoneSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mPlayDtmfTone:Landroid/preference/CheckBoxPreference;

.field private final mRingtoneLookupComplete:Landroid/os/Handler;

.field private mRingtoneLookupRunnable:Ljava/lang/Runnable;

.field private mRingtonePreference:Landroid/preference/Preference;

.field private mRingtonePreferenceMultiSIM:Landroid/preference/Preference;

.field private mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

.field private mVibrationPreference:Landroid/preference/Preference;

.field prefSet:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    .line 74
    new-instance v0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings$1;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings$1;-><init>(Lcom/android/phone/callsettings/RingtoneKeytoneSettings;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtoneLookupComplete:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/callsettings/RingtoneKeytoneSettings;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/callsettings/RingtoneKeytoneSettings;ILandroid/preference/Preference;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V

    return-void
.end method

.method private goVibrationPattern()V
    .locals 4

    .prologue
    .line 174
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 175
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.personalvibration.SelectPatternDialog"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :goto_0
    return-void

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception in goVibrationPattern : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 250
    const-string v0, "RingtonesKeytonesSettings"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    return-void
.end method

.method private lookupRingtoneName()V
    .locals 2

    .prologue
    .line 218
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 219
    return-void
.end method

.method private updateRingtoneName(ILandroid/preference/Preference;I)V
    .locals 8
    .parameter "type"
    .parameter "preference"
    .parameter "msg"

    .prologue
    .line 190
    if-nez p2, :cond_0

    .line 212
    :goto_0
    return-void

    .line 191
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 192
    .local v1, ringtoneUri:Landroid/net/Uri;
    const v0, 0x104057e

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 194
    .local v7, summary:Ljava/lang/CharSequence;
    if-nez v1, :cond_2

    .line 195
    const v0, 0x104057c

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 211
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtoneLookupComplete:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtoneLookupComplete:Landroid/os/Handler;

    invoke-virtual {v2, p3, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 199
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 201
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 202
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 203
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 205
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 207
    .end local v6           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 91
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 92
    const v2, 0x7f06002c

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 94
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->prefSet:Landroid/preference/PreferenceScreen;

    .line 96
    const-string v2, "callsettings_keytones"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mPlayDtmfTone:Landroid/preference/CheckBoxPreference;

    .line 97
    iget-object v2, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mPlayDtmfTone:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    .line 98
    iget-object v4, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mPlayDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "dtmf_tone"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_0
    invoke-virtual {v4, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 102
    :cond_0
    const-string v2, "callsettings_vibrate_when_ringing"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    .line 103
    iget-object v2, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_1

    .line 104
    const-string v2, "vibrator"

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    .line 105
    .local v1, vibrator:Landroid/os/Vibrator;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 106
    iget-object v2, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 113
    .end local v1           #vibrator:Landroid/os/Vibrator;
    :cond_1
    :goto_1
    const-string v2, "callsettings_device_vibration"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mVibrationPreference:Landroid/preference/Preference;

    .line 114
    const-string v2, "callsettings_device_ringtone"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtonePreference:Landroid/preference/Preference;

    .line 117
    const-string v2, "callsettings_device_ringtone_multi_sim"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtonePreferenceMultiSIM:Landroid/preference/Preference;

    .line 118
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v2

    if-le v2, v3, :cond_5

    .line 119
    iget-object v2, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->prefSet:Landroid/preference/PreferenceScreen;

    const-string v4, "callsettings_device_ringtone"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 120
    iput-object v6, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtonePreference:Landroid/preference/Preference;

    .line 127
    :goto_2
    new-instance v2, Lcom/android/phone/callsettings/RingtoneKeytoneSettings$2;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings$2;-><init>(Lcom/android/phone/callsettings/RingtoneKeytoneSettings;)V

    iput-object v2, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    .line 137
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 138
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_2

    .line 140
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 142
    :cond_2
    return-void

    .line 98
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 108
    .restart local v1       #vibrator:Landroid/os/Vibrator;
    :cond_4
    iget-object v2, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->prefSet:Landroid/preference/PreferenceScreen;

    iget-object v4, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 109
    iput-object v6, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    goto :goto_1

    .line 123
    .end local v1           #vibrator:Landroid/os/Vibrator;
    :cond_5
    iget-object v2, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->prefSet:Landroid/preference/PreferenceScreen;

    const-string v4, "callsettings_device_ringtone_multi_sim"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 124
    iput-object v6, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtonePreferenceMultiSIM:Landroid/preference/Preference;

    goto :goto_2
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v2, 0x1

    .line 222
    iget-object v1, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    if-ne p1, v1, :cond_0

    .line 223
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 224
    .local v0, doVibrate:Z
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "vibrate_when_ringing"

    if-eqz v0, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 227
    .end local v0           #doVibrate:Z
    :cond_0
    return v2

    .line 224
    .restart local v0       #doVibrate:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 233
    iget-object v1, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mPlayDtmfTone:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_2

    .line 234
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dtmf_tone"

    iget-object v3, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mPlayDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 246
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    :goto_2
    return v0

    .line 234
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 236
    :cond_2
    const-string v1, "callsettings_device_vibration"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-ne p2, v1, :cond_3

    .line 237
    invoke-direct {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->goVibrationPattern()V

    goto :goto_1

    .line 238
    :cond_3
    iget-object v1, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mRingtonePreferenceMultiSIM:Landroid/preference/Preference;

    if-ne p2, v1, :cond_0

    .line 239
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/phone/CallSettingsTabActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 240
    const-string v2, "TabTitleString"

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 241
    const-string v2, "RingtonesKeytonesSettings"

    const-string v3, "[MultiSIM] : Ringtone"

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const-string v2, "CallSettingMenu"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 243
    invoke-virtual {p0, v1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_2
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 146
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    .line 147
    invoke-direct {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->lookupRingtoneName()V

    .line 148
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->updateDeviceVibrationName()V

    .line 150
    iget-object v0, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->getVibrateWhenRinging(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 154
    :cond_0
    return-void
.end method

.method public updateDeviceVibrationName()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 157
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_vibration_pattern"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 160
    .local v7, temp:Ljava/lang/String;
    if-nez v7, :cond_2

    .line 161
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.settings.personalvibration.PersonalVibrationProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 166
    .local v6, c:Landroid/database/Cursor;
    :goto_0
    if-eqz v6, :cond_1

    .line 167
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->mVibrationPreference:Landroid/preference/Preference;

    const-string v1, "vibration_name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 169
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 171
    :cond_1
    return-void

    .line 163
    .end local v6           #c:Landroid/database/Cursor;
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .restart local v6       #c:Landroid/database/Cursor;
    goto :goto_0
.end method
