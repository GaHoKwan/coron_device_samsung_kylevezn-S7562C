.class public Lcom/android/phone/RoamingGuard;
.super Landroid/preference/PreferenceActivity;
.source "RoamingGuard.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mButtonDomesticCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

.field private mButtonDomesticCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

.field private mButtonInternationalCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

.field private mButtonInternationalCdmaSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

.field private mButtonInternationalCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

.field private mButtonInternationalGsmDataRoamingGuard:Landroid/preference/CheckBoxPreference;

.field private mButtonInternationalGsmSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

.field private mButtonInternationalGsmVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mRoamingPolicy:Landroid/app/enterprise/RoamingPolicy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 85
    iput-object v0, p0, Lcom/android/phone/RoamingGuard;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 86
    iput-object v0, p0, Lcom/android/phone/RoamingGuard;->mRoamingPolicy:Landroid/app/enterprise/RoamingPolicy;

    return-void
.end method

.method private domesticCdmaDataRoamingGuardTreeClick()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 143
    const-string v0, "RoamingGuard"

    const-string v1, "domesticCdmaDataRoamingGuardTreeClick"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 147
    const-string v0, "roam_guard_data_domestic"

    invoke-static {v0, v2}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 153
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 150
    const-string v0, "roam_guard_data_domestic"

    invoke-static {v0, v3}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 151
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    goto :goto_0
.end method

.method private domesticCdmaVoiceRoamingGuardTreeClick()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 131
    const-string v0, "RoamingGuard"

    const-string v1, "domesticCdmaVoiceRoamingGuardTreeClick"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 135
    const-string v0, "roam_guard_call_domestic"

    invoke-static {v0, v3}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 140
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 138
    const-string v0, "roam_guard_call_domestic"

    invoke-static {v0, v2}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private internationalCdmaDataRoamingGuardTreeClick()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 168
    const-string v0, "RoamingGuard"

    const-string v1, "internationalCdmaDataRoamingGuardTreeClick"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 172
    const-string v0, "roam_guard_data_international"

    invoke-static {v0, v2}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 178
    :goto_0
    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 175
    const-string v0, "roam_guard_data_international"

    invoke-static {v0, v3}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 176
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    goto :goto_0
.end method

.method private internationalCdmaSmsRoamingGuardTreeClick()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 181
    const-string v0, "RoamingGuard"

    const-string v1, "internationalCdmaSmsRoamingGuardTreeClick"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 185
    const-string v0, "roam_guard_sms_international"

    invoke-static {v0, v3}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 190
    :goto_0
    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 188
    const-string v0, "roam_guard_sms_international"

    invoke-static {v0, v2}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private internationalCdmaVoiceRoamingGuardTreeClick()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 156
    const-string v0, "RoamingGuard"

    const-string v1, "internationalCdmaVoiceRoamingGuardTreeClick"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 160
    const-string v0, "roam_guard_call_international"

    invoke-static {v0, v3}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 165
    :goto_0
    return-void

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 163
    const-string v0, "roam_guard_call_international"

    invoke-static {v0, v2}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private internationalGsmDataRoamingGuardTreeClick()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 205
    const-string v0, "RoamingGuard"

    const-string v1, "internationalGsmDataRoamingGuardTreeClick"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 209
    const-string v0, "sprint_gsm_data_guard"

    invoke-static {v0, v2}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 215
    :goto_0
    return-void

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 212
    const-string v0, "sprint_gsm_data_guard"

    invoke-static {v0, v3}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 213
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    goto :goto_0
.end method

.method private internationalGsmSmsRoamingGuardTreeClick()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 218
    const-string v0, "RoamingGuard"

    const-string v1, "internationalGsmSmsRoamingGuardTreeClick"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 222
    const-string v0, "sprint_gsm_sms_guard"

    invoke-static {v0, v3}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 227
    :goto_0
    return-void

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 225
    const-string v0, "sprint_gsm_sms_guard"

    invoke-static {v0, v2}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private internationalGsmVoiceRoamingGuardTreeClick()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 193
    const-string v0, "RoamingGuard"

    const-string v1, "internationalGsmVoiceRoamingGuardTreeClick"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 197
    const-string v0, "sprint_gsm_voice_guard"

    invoke-static {v0, v3}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 202
    :goto_0
    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 200
    const-string v0, "sprint_gsm_voice_guard"

    invoke-static {v0, v2}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private setPreferenceEnabledPhoneType()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 230
    const-string v1, "global_network_cdma_gsm_enable_for_spr"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 232
    .local v0, phoneType:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 233
    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 234
    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 235
    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 247
    .end local v0           #phoneType:I
    :cond_0
    :goto_0
    return-void

    .line 236
    .restart local v0       #phoneType:I
    :cond_1
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 238
    :cond_2
    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 239
    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 240
    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 241
    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 242
    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 244
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 92
    const-string v0, "RoamingGuard"

    const-string v1, "onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 251
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 252
    const-string v1, "RoamingGuard"

    const-string v4, "onCreate"

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/RoamingGuard;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 255
    const v1, 0x7f060030

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 258
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 261
    .local v0, prefSet:Landroid/preference/PreferenceScreen;
    const-string v1, "enterprise_policy"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v1, p0, Lcom/android/phone/RoamingGuard;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 262
    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v1, :cond_0

    .line 263
    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRoamingPolicy()Landroid/app/enterprise/RoamingPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/RoamingGuard;->mRoamingPolicy:Landroid/app/enterprise/RoamingPolicy;

    .line 268
    :cond_0
    const-string v1, "domestic_cdma_voice_roaming_guard_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    .line 269
    const-string v1, "domestic_cdma_data_roaming_guard_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    .line 270
    const-string v1, "international_cdma_voice_roaming_guard_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    .line 271
    const-string v1, "international_cdma_data_roaming_guard_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    .line 272
    const-string v1, "international_cdma_sms_roaming_guard_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

    .line 273
    const-string v1, "international_gsm_voice_roaming_guard_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    .line 274
    const-string v1, "international_gsm_data_roaming_guard_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    .line 275
    const-string v1, "international_gsm_sms_roaming_guard_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

    .line 277
    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mRoamingPolicy:Landroid/app/enterprise/RoamingPolicy;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mRoamingPolicy:Landroid/app/enterprise/RoamingPolicy;

    invoke-virtual {v1}, Landroid/app/enterprise/RoamingPolicy;->isRoamingVoiceCallsEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 278
    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 279
    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 280
    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 281
    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 290
    :goto_0
    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mRoamingPolicy:Landroid/app/enterprise/RoamingPolicy;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mRoamingPolicy:Landroid/app/enterprise/RoamingPolicy;

    invoke-virtual {v1}, Landroid/app/enterprise/RoamingPolicy;->isRoamingDataEnabled()Z

    move-result v1

    if-nez v1, :cond_5

    .line 292
    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 293
    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 294
    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 295
    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 303
    :goto_1
    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mRoamingPolicy:Landroid/app/enterprise/RoamingPolicy;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mRoamingPolicy:Landroid/app/enterprise/RoamingPolicy;

    invoke-virtual {v1}, Landroid/app/enterprise/RoamingPolicy;->isRoamingPushEnabled()Z

    move-result v1

    if-nez v1, :cond_8

    .line 304
    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 305
    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 310
    :goto_2
    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    const-string v3, "sprint_gsm_voice_guard"

    invoke-static {v3, v2}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 311
    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    const-string v3, "sprint_gsm_data_guard"

    invoke-static {v3, v2}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 312
    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

    const-string v3, "sprint_gsm_sms_guard"

    invoke-static {v3, v2}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 314
    const-string v1, "global_network_cdma_gsm_enable_for_spr"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 315
    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 316
    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 317
    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 318
    const-string v1, "international_gsm_category_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 324
    :goto_3
    const-string v1, "roaming_setting_guard_data_only"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 325
    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 326
    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 327
    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 329
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/RoamingGuard;->setPreferenceEnabledPhoneType()V

    .line 330
    return-void

    .line 284
    :cond_2
    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    const-string v4, "roam_guard_call_domestic"

    invoke-static {v4, v2}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 285
    iget-object v4, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    const-string v1, "roam_guard_call_domestic_forced"

    invoke-static {v1, v3}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v2

    :goto_4
    invoke-virtual {v4, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 286
    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    const-string v4, "roam_guard_call_international"

    invoke-static {v4, v2}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 287
    iget-object v4, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    const-string v1, "roam_guard_call_international_forced"

    invoke-static {v1, v3}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_5
    invoke-virtual {v4, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_3
    move v1, v3

    .line 285
    goto :goto_4

    :cond_4
    move v1, v3

    .line 287
    goto :goto_5

    .line 297
    :cond_5
    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    const-string v4, "roam_guard_data_domestic"

    invoke-static {v4, v2}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 298
    iget-object v4, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    const-string v1, "roam_guard_data_domestic_forced"

    invoke-static {v1, v3}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_6
    invoke-virtual {v4, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 299
    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    const-string v4, "roam_guard_data_international"

    invoke-static {v4, v2}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 300
    iget-object v4, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    const-string v1, "roam_guard_data_international_forced"

    invoke-static {v1, v3}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_7

    move v1, v2

    :goto_7
    invoke-virtual {v4, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_6
    move v1, v3

    .line 298
    goto :goto_6

    :cond_7
    move v1, v3

    .line 300
    goto :goto_7

    .line 307
    :cond_8
    iget-object v1, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

    const-string v3, "roam_guard_sms_international"

    invoke-static {v3, v2}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_2

    .line 320
    :cond_9
    const-string v1, "domestic_cdma_category_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const v2, 0x7f0e0750

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 321
    const-string v1, "international_cdma_category_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const v2, 0x7f0e0752

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_3
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 97
    const-string v0, "RoamingGuard"

    const-string v1, "onDismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 403
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 108
    const-string v0, "RoamingGuard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceTreeClick: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1

    .line 111
    invoke-direct {p0}, Lcom/android/phone/RoamingGuard;->domesticCdmaVoiceRoamingGuardTreeClick()V

    .line 127
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_2

    .line 113
    invoke-direct {p0}, Lcom/android/phone/RoamingGuard;->domesticCdmaDataRoamingGuardTreeClick()V

    goto :goto_0

    .line 114
    :cond_2
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_3

    .line 115
    invoke-direct {p0}, Lcom/android/phone/RoamingGuard;->internationalCdmaVoiceRoamingGuardTreeClick()V

    goto :goto_0

    .line 116
    :cond_3
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_4

    .line 117
    invoke-direct {p0}, Lcom/android/phone/RoamingGuard;->internationalCdmaDataRoamingGuardTreeClick()V

    goto :goto_0

    .line 118
    :cond_4
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_5

    .line 119
    invoke-direct {p0}, Lcom/android/phone/RoamingGuard;->internationalCdmaSmsRoamingGuardTreeClick()V

    goto :goto_0

    .line 120
    :cond_5
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_6

    .line 121
    invoke-direct {p0}, Lcom/android/phone/RoamingGuard;->internationalGsmVoiceRoamingGuardTreeClick()V

    goto :goto_0

    .line 122
    :cond_6
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_7

    .line 123
    invoke-direct {p0}, Lcom/android/phone/RoamingGuard;->internationalGsmDataRoamingGuardTreeClick()V

    goto :goto_0

    .line 124
    :cond_7
    iget-object v0, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_0

    .line 125
    invoke-direct {p0}, Lcom/android/phone/RoamingGuard;->internationalGsmSmsRoamingGuardTreeClick()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 334
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 336
    const-string v5, "RoamingGuard"

    const-string v8, "onResume"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 347
    iget-object v5, p0, Lcom/android/phone/RoamingGuard;->mRoamingPolicy:Landroid/app/enterprise/RoamingPolicy;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/phone/RoamingGuard;->mRoamingPolicy:Landroid/app/enterprise/RoamingPolicy;

    invoke-virtual {v5}, Landroid/app/enterprise/RoamingPolicy;->isRoamingVoiceCallsEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 348
    iget-object v5, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v7}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 349
    iget-object v5, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 350
    iget-object v5, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v7}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 351
    iget-object v5, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 363
    :goto_0
    iget-object v5, p0, Lcom/android/phone/RoamingGuard;->mRoamingPolicy:Landroid/app/enterprise/RoamingPolicy;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/phone/RoamingGuard;->mRoamingPolicy:Landroid/app/enterprise/RoamingPolicy;

    invoke-virtual {v5}, Landroid/app/enterprise/RoamingPolicy;->isRoamingDataEnabled()Z

    move-result v5

    if-nez v5, :cond_3

    .line 364
    iget-object v5, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v7}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 365
    iget-object v5, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 366
    iget-object v5, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v7}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 367
    iget-object v5, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 378
    :goto_1
    iget-object v5, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    const-string v8, "sprint_gsm_voice_guard"

    invoke-static {v8, v6}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v8

    invoke-virtual {v5, v8}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 379
    iget-object v5, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    const-string v8, "sprint_gsm_data_guard"

    invoke-static {v8, v6}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v8

    invoke-virtual {v5, v8}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 380
    iget-object v5, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalGsmSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

    const-string v8, "sprint_gsm_sms_guard"

    invoke-static {v8, v6}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v8

    invoke-virtual {v5, v8}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 382
    iget-object v5, p0, Lcom/android/phone/RoamingGuard;->mRoamingPolicy:Landroid/app/enterprise/RoamingPolicy;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/phone/RoamingGuard;->mRoamingPolicy:Landroid/app/enterprise/RoamingPolicy;

    invoke-virtual {v5}, Landroid/app/enterprise/RoamingPolicy;->isRoamingPushEnabled()Z

    move-result v5

    if-nez v5, :cond_6

    .line 383
    iget-object v5, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v7}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 384
    iget-object v5, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 390
    :goto_2
    invoke-direct {p0}, Lcom/android/phone/RoamingGuard;->setPreferenceEnabledPhoneType()V

    .line 391
    return-void

    .line 353
    :cond_0
    const-string v5, "roam_guard_call_domestic"

    invoke-static {v5, v6}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v0

    .line 354
    .local v0, domesticCallGuardEnabled:Z
    iget-object v5, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 355
    iget-object v8, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    const-string v5, "roam_guard_call_domestic_forced"

    invoke-static {v5, v7}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_1

    move v5, v6

    :goto_3
    invoke-virtual {v8, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 357
    const-string v5, "roam_guard_call_international"

    invoke-static {v5, v6}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v2

    .line 358
    .local v2, internationalCallGuardEnabled:Z
    iget-object v5, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 359
    iget-object v8, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaVoiceRoamingGuard:Landroid/preference/CheckBoxPreference;

    const-string v5, "roam_guard_call_international_forced"

    invoke-static {v5, v7}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_2

    move v5, v6

    :goto_4
    invoke-virtual {v8, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_0

    .end local v2           #internationalCallGuardEnabled:Z
    :cond_1
    move v5, v7

    .line 355
    goto :goto_3

    .restart local v2       #internationalCallGuardEnabled:Z
    :cond_2
    move v5, v7

    .line 359
    goto :goto_4

    .line 369
    .end local v0           #domesticCallGuardEnabled:Z
    .end local v2           #internationalCallGuardEnabled:Z
    :cond_3
    const-string v5, "roam_guard_data_domestic"

    invoke-static {v5, v6}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v1

    .line 370
    .local v1, domesticDataRoamingGuardMode:Z
    iget-object v5, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 371
    iget-object v8, p0, Lcom/android/phone/RoamingGuard;->mButtonDomesticCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    const-string v5, "roam_guard_data_domestic_forced"

    invoke-static {v5, v7}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_4

    move v5, v6

    :goto_5
    invoke-virtual {v8, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 373
    const-string v5, "roam_guard_data_international"

    invoke-static {v5, v6}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v3

    .line 374
    .local v3, internationalDataRoamingGuardMode:Z
    iget-object v5, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 375
    iget-object v8, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaDataRoamingGuard:Landroid/preference/CheckBoxPreference;

    const-string v5, "roam_guard_data_international_forced"

    invoke-static {v5, v7}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_5

    move v5, v6

    :goto_6
    invoke-virtual {v8, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_1

    .end local v3           #internationalDataRoamingGuardMode:Z
    :cond_4
    move v5, v7

    .line 371
    goto :goto_5

    .restart local v3       #internationalDataRoamingGuardMode:Z
    :cond_5
    move v5, v7

    .line 375
    goto :goto_6

    .line 386
    .end local v1           #domesticDataRoamingGuardMode:Z
    .end local v3           #internationalDataRoamingGuardMode:Z
    :cond_6
    const-string v5, "roam_guard_sms_international"

    invoke-static {v5, v6}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v4

    .line 387
    .local v4, internationalSmsRoamingGuardMode:Z
    iget-object v5, p0, Lcom/android/phone/RoamingGuard;->mButtonInternationalCdmaSmsRoamingGuard:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_2
.end method
