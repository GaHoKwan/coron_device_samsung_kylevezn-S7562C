.class public Lcom/android/phone/Roaming;
.super Landroid/preference/PreferenceActivity;
.source "Roaming.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/Roaming$1;,
        Lcom/android/phone/Roaming$MyHandler;
    }
.end annotation


# instance fields
.field private mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

.field private mButtonSystemSelect:Landroid/preference/ListPreference;

.field private mHandler:Lcom/android/phone/Roaming$MyHandler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPreferredCdmaRoamingMode:I

.field private mRoamingGuard:Landroid/preference/PreferenceScreen;

.field private mRoamingSettings:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 79
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/Roaming;->mPreferredCdmaRoamingMode:I

    .line 277
    return-void
.end method

.method private UpdatePreferredNetworkModeSummary(I)V
    .locals 2
    .parameter "NetworkMode"

    .prologue
    .line 433
    packed-switch p1, :pswitch_data_0

    .line 458
    iget-object v0, p0, Lcom/android/phone/Roaming;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const-string v1, "Preferred network mode: Global"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 460
    :goto_0
    return-void

    .line 436
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/Roaming;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const-string v1, "Preferred network mode: WCDMA pref"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 439
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/Roaming;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const-string v1, "Preferred network mode: GSM only"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 442
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/Roaming;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const-string v1, "Preferred network mode: WCDMA only"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 445
    :pswitch_3
    iget-object v0, p0, Lcom/android/phone/Roaming;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const-string v1, "Preferred network mode: GSM/WCDMA"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 448
    :pswitch_4
    iget-object v0, p0, Lcom/android/phone/Roaming;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const-string v1, "Preferred network mode: CDMA / EvDo"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 451
    :pswitch_5
    iget-object v0, p0, Lcom/android/phone/Roaming;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const-string v1, "Preferred network mode: CDMA only"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 454
    :pswitch_6
    iget-object v0, p0, Lcom/android/phone/Roaming;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const-string v1, "Preferred network mode: EvDo only"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 433
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-static {p0}, Lcom/android/phone/Roaming;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/Roaming;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/phone/Roaming;->UpdatePreferredNetworkModeSummary(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/Roaming;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/phone/Roaming;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/Roaming;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/phone/Roaming;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 463
    const-string v0, "Roaming"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 107
    const-string v0, "Roaming"

    const-string v1, "onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const v6, 0x7f06002e

    const/4 v5, 0x1

    .line 139
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 140
    const-string v3, "Roaming"

    const-string v4, "onCreate"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/Roaming;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 143
    iget-object v3, p0, Lcom/android/phone/Roaming;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 144
    .local v0, phoneType:I
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 145
    invoke-virtual {p0, v6}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 154
    :goto_0
    const-string v3, "usa_spr_roaming_feature"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 155
    iput v5, p0, Lcom/android/phone/Roaming;->mPreferredCdmaRoamingMode:I

    .line 160
    :goto_1
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 162
    .local v1, prefSet:Landroid/preference/PreferenceScreen;
    new-instance v3, Lcom/android/phone/Roaming$MyHandler;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/phone/Roaming$MyHandler;-><init>(Lcom/android/phone/Roaming;Lcom/android/phone/Roaming$1;)V

    iput-object v3, p0, Lcom/android/phone/Roaming;->mHandler:Lcom/android/phone/Roaming$MyHandler;

    .line 166
    const-string v3, "cdma_system_select_key"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/android/phone/Roaming;->mButtonSystemSelect:Landroid/preference/ListPreference;

    .line 169
    const-string v3, "csc_chameleon_enable"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 170
    iget-object v3, p0, Lcom/android/phone/Roaming;->mButtonSystemSelect:Landroid/preference/ListPreference;

    const v4, 0x7f080077

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 171
    :cond_0
    iget-object v3, p0, Lcom/android/phone/Roaming;->mButtonSystemSelect:Landroid/preference/ListPreference;

    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 174
    const-string v3, "roaming_settings"

    iget v4, p0, Lcom/android/phone/Roaming;->mPreferredCdmaRoamingMode:I

    invoke-static {v3, v4}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingValueInt(Ljava/lang/String;I)I

    move-result v2

    .line 175
    .local v2, settingsCdmaRoamingMode:I
    iget-object v3, p0, Lcom/android/phone/Roaming;->mButtonSystemSelect:Landroid/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 177
    const-string v3, "roaming_settings"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/phone/Roaming;->mRoamingSettings:Landroid/preference/PreferenceScreen;

    .line 178
    const-string v3, "roaming_guard"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/phone/Roaming;->mRoamingGuard:Landroid/preference/PreferenceScreen;

    .line 184
    return-void

    .line 146
    .end local v1           #prefSet:Landroid/preference/PreferenceScreen;
    .end local v2           #settingsCdmaRoamingMode:I
    :cond_1
    if-eq v0, v5, :cond_2

    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    .line 148
    :cond_2
    invoke-virtual {p0, v6}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    goto :goto_0

    .line 151
    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected phone type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 157
    :cond_4
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/phone/Roaming;->mPreferredCdmaRoamingMode:I

    goto :goto_1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 112
    const-string v0, "Roaming"

    const-string v1, "onDismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 228
    iget-object v3, p0, Lcom/android/phone/Roaming;->mButtonSystemSelect:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_0

    .line 231
    iget-object v4, p0, Lcom/android/phone/Roaming;->mButtonSystemSelect:Landroid/preference/ListPreference;

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 233
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 234
    .local v0, buttonCdmaRoamingMode:I
    const-string v3, "roaming_settings"

    iget v4, p0, Lcom/android/phone/Roaming;->mPreferredCdmaRoamingMode:I

    invoke-static {v3, v4}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingValueInt(Ljava/lang/String;I)I

    move-result v1

    .line 236
    .local v1, settingsCdmaRoamingMode:I
    if-eq v0, v1, :cond_0

    .line 238
    packed-switch v0, :pswitch_data_0

    .line 259
    const/4 v2, 0x0

    .line 260
    .local v2, statusCdmaRoamingMode:I
    iget-object v3, p0, Lcom/android/phone/Roaming;->mRoamingSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 261
    iget-object v3, p0, Lcom/android/phone/Roaming;->mRoamingGuard:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 265
    :goto_0
    const-string v3, "roaming_settings"

    invoke-static {v3, v0}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 267
    const-string v3, "Roaming"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setCdmaRoamingPreference value:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v3, p0, Lcom/android/phone/Roaming;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/phone/Roaming;->mHandler:Lcom/android/phone/Roaming$MyHandler;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lcom/android/internal/telephony/Phone;->setCdmaRoamingPreference(ILandroid/os/Message;)V

    .line 274
    .end local v0           #buttonCdmaRoamingMode:I
    .end local v1           #settingsCdmaRoamingMode:I
    .end local v2           #statusCdmaRoamingMode:I
    :cond_0
    return v6

    .line 240
    .restart local v0       #buttonCdmaRoamingMode:I
    .restart local v1       #settingsCdmaRoamingMode:I
    :pswitch_0
    const-string v3, "roam_setting_call_domestic"

    invoke-static {v3, v6}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 241
    const-string v3, "roam_setting_data_domestic"

    invoke-static {v3, v6}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 242
    const-string v3, "roam_setting_call_international"

    invoke-static {v3, v5}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 243
    const-string v3, "roam_setting_data_international"

    invoke-static {v3, v5}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 245
    const-string v3, "roam_guard_call_domestic"

    invoke-static {v3, v6}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 246
    const-string v3, "roam_guard_data_domestic"

    invoke-static {v3, v6}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 247
    const-string v3, "roam_guard_call_international"

    invoke-static {v3, v6}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 248
    const-string v3, "roam_guard_data_international"

    invoke-static {v3, v6}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 249
    const-string v3, "roam_guard_sms_international"

    invoke-static {v3, v6}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 251
    const/4 v2, 0x5

    .line 253
    .restart local v2       #statusCdmaRoamingMode:I
    iget-object v3, p0, Lcom/android/phone/Roaming;->mRoamingSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 254
    iget-object v3, p0, Lcom/android/phone/Roaming;->mRoamingGuard:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    goto :goto_0

    .line 238
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 123
    const-string v1, "Roaming"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceTreeClick: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v1, p0, Lcom/android/phone/Roaming;->mButtonSystemSelect:Landroid/preference/ListPreference;

    if-ne p2, v1, :cond_0

    .line 126
    const-string v1, "Roaming"

    const-string v2, "onPreferenceTreeClick: preference == mButtonSystemSelect."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const-string v1, "roaming_settings"

    iget v2, p0, Lcom/android/phone/Roaming;->mPreferredCdmaRoamingMode:I

    invoke-static {v1, v2}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingValueInt(Ljava/lang/String;I)I

    move-result v0

    .line 129
    .local v0, cdmaRoamingMode:I
    iget-object v1, p0, Lcom/android/phone/Roaming;->mButtonSystemSelect:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 130
    const/4 v1, 0x1

    .line 133
    .end local v0           #cdmaRoamingMode:I
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v4, 0x1

    .line 188
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 190
    const-string v3, "Roaming"

    const-string v6, "onResume"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 195
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 201
    .local v0, cm:Landroid/net/ConnectivityManager;
    iget-object v3, p0, Lcom/android/phone/Roaming;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 202
    .local v1, phoneType:I
    if-ne v1, v7, :cond_0

    .line 203
    iget-object v3, p0, Lcom/android/phone/Roaming;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v6, p0, Lcom/android/phone/Roaming;->mHandler:Lcom/android/phone/Roaming$MyHandler;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v3, v6}, Lcom/android/internal/telephony/Phone;->queryCdmaRoamingPreference(Landroid/os/Message;)V

    .line 212
    :goto_0
    const-string v3, "roaming_settings"

    iget v6, p0, Lcom/android/phone/Roaming;->mPreferredCdmaRoamingMode:I

    invoke-static {v3, v6}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingValueInt(Ljava/lang/String;I)I

    move-result v2

    .line 213
    .local v2, settingsCdmaRoamingMode:I
    iget-object v3, p0, Lcom/android/phone/Roaming;->mButtonSystemSelect:Landroid/preference/ListPreference;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 215
    iget-object v6, p0, Lcom/android/phone/Roaming;->mRoamingSettings:Landroid/preference/PreferenceScreen;

    if-ne v2, v4, :cond_3

    move v3, v4

    :goto_1
    invoke-virtual {v6, v3}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 216
    iget-object v3, p0, Lcom/android/phone/Roaming;->mRoamingGuard:Landroid/preference/PreferenceScreen;

    if-ne v2, v4, :cond_4

    :goto_2
    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 217
    return-void

    .line 204
    .end local v2           #settingsCdmaRoamingMode:I
    :cond_0
    if-eq v1, v4, :cond_1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    .line 206
    :cond_1
    iget-object v3, p0, Lcom/android/phone/Roaming;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v6, p0, Lcom/android/phone/Roaming;->mHandler:Lcom/android/phone/Roaming$MyHandler;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-interface {v3, v6}, Lcom/android/internal/telephony/Phone;->queryCdmaRoamingPreference(Landroid/os/Message;)V

    goto :goto_0

    .line 209
    :cond_2
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected phone type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .restart local v2       #settingsCdmaRoamingMode:I
    :cond_3
    move v3, v5

    .line 215
    goto :goto_1

    :cond_4
    move v4, v5

    .line 216
    goto :goto_2
.end method
