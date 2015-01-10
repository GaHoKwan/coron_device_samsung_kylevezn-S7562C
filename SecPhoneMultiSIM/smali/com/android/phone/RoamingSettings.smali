.class public Lcom/android/phone/RoamingSettings;
.super Landroid/preference/PreferenceActivity;
.source "RoamingSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/RoamingSettings$RoamHandler;
    }
.end annotation


# instance fields
.field private mButtonDomesticCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

.field private mButtonDomesticCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

.field private mButtonInternationalCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

.field private mButtonInternationalCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

.field private mButtonInternationalGsmDataRoamingSetting:Landroid/preference/CheckBoxPreference;

.field private mButtonInternationalGsmVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

.field private mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mRoamHandler:Lcom/android/phone/RoamingSettings$RoamHandler;

.field private mRoamingPolicy:Landroid/app/enterprise/RoamingPolicy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 92
    iput-object v0, p0, Lcom/android/phone/RoamingSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 93
    iput-object v0, p0, Lcom/android/phone/RoamingSettings;->mRoamingPolicy:Landroid/app/enterprise/RoamingPolicy;

    .line 554
    return-void
.end method

.method private UpdatePreferredNetworkModeSummary(I)V
    .locals 2
    .parameter "NetworkMode"

    .prologue
    .line 659
    packed-switch p1, :pswitch_data_0

    .line 684
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const-string v1, "Preferred network mode: Global"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 686
    :goto_0
    return-void

    .line 662
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const-string v1, "Preferred network mode: WCDMA pref"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 665
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const-string v1, "Preferred network mode: GSM only"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 668
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const-string v1, "Preferred network mode: WCDMA only"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 671
    :pswitch_3
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const-string v1, "Preferred network mode: GSM/WCDMA"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 674
    :pswitch_4
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const-string v1, "Preferred network mode: CDMA / EvDo"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 677
    :pswitch_5
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const-string v1, "Preferred network mode: CDMA only"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 680
    :pswitch_6
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    const-string v1, "Preferred network mode: EvDo only"

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 659
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

.method static synthetic access$000(Lcom/android/phone/RoamingSettings;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/phone/RoamingSettings;->setCheckSecureSettingRoamValue(II)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/RoamingSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/phone/RoamingSettings;->setCdmaRoaming()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/RoamingSettings;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/RoamingSettings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/phone/RoamingSettings;->sendDataRoamingGuardBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-static {p0}, Lcom/android/phone/RoamingSettings;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/RoamingSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/phone/RoamingSettings;->UpdatePreferredNetworkModeSummary(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/RoamingSettings;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonPreferredNetworkMode:Landroid/preference/ListPreference;

    return-object v0
.end method

.method private domesticCdmaDataRoamingSettingTreeClick()V
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 166
    const-string v0, "RoamingSettings"

    const-string v1, "domesticCdmaDataRoamingSettingTreeClick"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 168
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "roaming_setting_guard_data_only"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 171
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e046b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e01fe

    new-instance v2, Lcom/android/phone/RoamingSettings$4;

    invoke-direct {v2, p0}, Lcom/android/phone/RoamingSettings$4;-><init>(Lcom/android/phone/RoamingSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e01ff

    new-instance v2, Lcom/android/phone/RoamingSettings$3;

    invoke-direct {v2, p0}, Lcom/android/phone/RoamingSettings$3;-><init>(Lcom/android/phone/RoamingSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 198
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isDomesticRoamingInService()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "roaming_setting_guard_data_only"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 202
    :cond_2
    const-string v0, "domestic_cdma_data_roaming_setting_extra"

    invoke-direct {p0, v0}, Lcom/android/phone/RoamingSettings;->sendDataRoamingGuardBroadcast(Ljava/lang/String;)V

    goto :goto_0

    .line 205
    :cond_3
    invoke-direct {p0, v2, v4}, Lcom/android/phone/RoamingSettings;->setSecureSettingRoamValue(II)V

    goto :goto_0

    .line 215
    :cond_4
    const-string v0, "roaming_setting_guard_data_only"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 216
    invoke-direct {p0, v4, v3}, Lcom/android/phone/RoamingSettings;->setCheckSecureSettingRoamValue(II)V

    .line 217
    invoke-direct {p0}, Lcom/android/phone/RoamingSettings;->setCdmaRoaming()V

    .line 219
    :cond_5
    invoke-direct {p0, v2, v3}, Lcom/android/phone/RoamingSettings;->setCheckSecureSettingRoamValue(II)V

    .line 220
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isDomesticRoamingInService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, v3}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    goto :goto_0
.end method

.method private domesticCdmaVoiceRoamingSettingTreeClick()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 134
    const-string v0, "RoamingSettings"

    const-string v1, "domesticCdmaVoiceRoamingSettingTreeClick"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e046a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e01fe

    new-instance v2, Lcom/android/phone/RoamingSettings$2;

    invoke-direct {v2, p0}, Lcom/android/phone/RoamingSettings$2;-><init>(Lcom/android/phone/RoamingSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e01ff

    new-instance v2, Lcom/android/phone/RoamingSettings$1;

    invoke-direct {v2, p0}, Lcom/android/phone/RoamingSettings$1;-><init>(Lcom/android/phone/RoamingSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 155
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    invoke-direct {p0, v4, v3}, Lcom/android/phone/RoamingSettings;->setCheckSecureSettingRoamValue(II)V

    .line 158
    invoke-direct {p0}, Lcom/android/phone/RoamingSettings;->setCdmaRoaming()V

    .line 159
    const/4 v0, 0x2

    invoke-direct {p0, v0, v3}, Lcom/android/phone/RoamingSettings;->setCheckSecureSettingRoamValue(II)V

    .line 160
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isDomesticRoamingInService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, v3}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    goto :goto_0
.end method

.method private internationalCdmaDataRoamingSettingTreeClick()V
    .locals 5

    .prologue
    const/4 v2, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 259
    const-string v0, "RoamingSettings"

    const-string v1, "internationalCdmaDataRoamingSettingTreeClick"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 261
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "roaming_setting_guard_data_only"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 264
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e046c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e01fe

    new-instance v2, Lcom/android/phone/RoamingSettings$8;

    invoke-direct {v2, p0}, Lcom/android/phone/RoamingSettings$8;-><init>(Lcom/android/phone/RoamingSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e01ff

    new-instance v2, Lcom/android/phone/RoamingSettings$7;

    invoke-direct {v2, p0}, Lcom/android/phone/RoamingSettings$7;-><init>(Lcom/android/phone/RoamingSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 291
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isInternationalRoamingInService()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "roaming_setting_guard_data_only"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 295
    :cond_2
    const-string v0, "international_cdma_data_roaming_setting_extra"

    invoke-direct {p0, v0}, Lcom/android/phone/RoamingSettings;->sendDataRoamingGuardBroadcast(Ljava/lang/String;)V

    goto :goto_0

    .line 298
    :cond_3
    invoke-direct {p0, v2, v4}, Lcom/android/phone/RoamingSettings;->setSecureSettingRoamValue(II)V

    goto :goto_0

    .line 308
    :cond_4
    const-string v0, "roaming_setting_guard_data_only"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 309
    const/4 v0, 0x3

    invoke-direct {p0, v0, v3}, Lcom/android/phone/RoamingSettings;->setCheckSecureSettingRoamValue(II)V

    .line 310
    invoke-direct {p0}, Lcom/android/phone/RoamingSettings;->setCdmaRoaming()V

    .line 312
    :cond_5
    invoke-direct {p0, v2, v3}, Lcom/android/phone/RoamingSettings;->setCheckSecureSettingRoamValue(II)V

    .line 313
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isInternationalRoamingInService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, v3}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    goto :goto_0
.end method

.method private internationalCdmaVoiceRoamingSettingTreeClick()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 226
    const-string v0, "RoamingSettings"

    const-string v1, "internationalCdmaVoiceRoamingSettingTreeClick"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e046a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e01fe

    new-instance v2, Lcom/android/phone/RoamingSettings$6;

    invoke-direct {v2, p0}, Lcom/android/phone/RoamingSettings$6;-><init>(Lcom/android/phone/RoamingSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e01ff

    new-instance v2, Lcom/android/phone/RoamingSettings$5;

    invoke-direct {v2, p0}, Lcom/android/phone/RoamingSettings$5;-><init>(Lcom/android/phone/RoamingSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 247
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    const/4 v0, 0x3

    invoke-direct {p0, v0, v3}, Lcom/android/phone/RoamingSettings;->setCheckSecureSettingRoamValue(II)V

    .line 250
    invoke-direct {p0}, Lcom/android/phone/RoamingSettings;->setCdmaRoaming()V

    .line 251
    const/4 v0, 0x4

    invoke-direct {p0, v0, v3}, Lcom/android/phone/RoamingSettings;->setCheckSecureSettingRoamValue(II)V

    .line 252
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isInternationalRoamingInService()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method private internationalGsmDataRoamingSettingTreeClick()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 322
    const-string v0, "RoamingSettings"

    const-string v1, "internationalGsmDataRoamingSettingTreeClick"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalGsmDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 324
    invoke-static {}, Lcom/android/phone/SprintPhoneExtension;->isInternationalRoamingInService()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    const-string v0, "international_gsm_data_roaming_setting_extra"

    invoke-direct {p0, v0}, Lcom/android/phone/RoamingSettings;->sendDataRoamingGuardBroadcast(Ljava/lang/String;)V

    .line 332
    :goto_0
    return-void

    .line 327
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v2, v0}, Lcom/android/phone/RoamingSettings;->setSecureSettingRoamValue(II)V

    goto :goto_0

    .line 330
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v2, v0}, Lcom/android/phone/RoamingSettings;->setCheckSecureSettingRoamValue(II)V

    goto :goto_0
.end method

.method private internationalGsmVoiceRoamingSettingTreeClick()V
    .locals 0

    .prologue
    .line 319
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 709
    const-string v0, "RoamingSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    return-void
.end method

.method private sendDataRoamingGuardBroadcast(Ljava/lang/String;)V
    .locals 2
    .parameter "dataRoamingSettingsExtra"

    .prologue
    .line 392
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_SHOW_DIALOG_DATA_ROAMING_GUARD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 393
    .local v0, dialogIntent:Landroid/content/Intent;
    const-string v1, "roaming_setting_guard_data_only"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 394
    const-string v1, "data_roaming_settings_extra"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 395
    :cond_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 396
    return-void
.end method

.method private setCdmaRoaming()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 689
    const-string v3, "roam_setting_call_domestic"

    invoke-static {v3, v4}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v0

    .line 690
    .local v0, domesticRoamCall:Z
    const-string v3, "roam_setting_call_international"

    invoke-static {v3, v4}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v1

    .line 694
    .local v1, internationalRoamCall:Z
    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    .line 695
    const/4 v2, 0x5

    .line 704
    .local v2, statusCdmaRoamingMode:I
    :goto_0
    const-string v3, "RoamingSettings"

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

    .line 705
    iget-object v3, p0, Lcom/android/phone/RoamingSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/phone/RoamingSettings;->mRoamHandler:Lcom/android/phone/RoamingSettings$RoamHandler;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lcom/android/internal/telephony/Phone;->setCdmaRoamingPreference(ILandroid/os/Message;)V

    .line 706
    return-void

    .line 696
    .end local v2           #statusCdmaRoamingMode:I
    :cond_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    .line 697
    const/4 v2, 0x6

    .restart local v2       #statusCdmaRoamingMode:I
    goto :goto_0

    .line 698
    .end local v2           #statusCdmaRoamingMode:I
    :cond_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 699
    const/4 v2, 0x7

    .restart local v2       #statusCdmaRoamingMode:I
    goto :goto_0

    .line 701
    .end local v2           #statusCdmaRoamingMode:I
    :cond_2
    const/16 v2, 0x8

    .restart local v2       #statusCdmaRoamingMode:I
    goto :goto_0
.end method

.method private setCheckSecureSettingRoamValue(II)V
    .locals 3
    .parameter "keyType"
    .parameter "value"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 364
    packed-switch p1, :pswitch_data_0

    .line 389
    :goto_0
    :pswitch_0
    return-void

    .line 366
    :pswitch_1
    iget-object v2, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    if-eqz p2, :cond_0

    :goto_1
    invoke-virtual {v2, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 367
    invoke-direct {p0, p1, p2}, Lcom/android/phone/RoamingSettings;->setSecureSettingRoamValue(II)V

    goto :goto_0

    :cond_0
    move v0, v1

    .line 366
    goto :goto_1

    .line 371
    :pswitch_2
    iget-object v2, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    if-eqz p2, :cond_1

    :goto_2
    invoke-virtual {v2, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 372
    invoke-direct {p0, p1, p2}, Lcom/android/phone/RoamingSettings;->setSecureSettingRoamValue(II)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 371
    goto :goto_2

    .line 376
    :pswitch_3
    iget-object v2, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    if-eqz p2, :cond_2

    :goto_3
    invoke-virtual {v2, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 377
    invoke-direct {p0, p1, p2}, Lcom/android/phone/RoamingSettings;->setSecureSettingRoamValue(II)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 376
    goto :goto_3

    .line 381
    :pswitch_4
    iget-object v2, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    if-eqz p2, :cond_3

    :goto_4
    invoke-virtual {v2, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 382
    invoke-direct {p0, p1, p2}, Lcom/android/phone/RoamingSettings;->setSecureSettingRoamValue(II)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 381
    goto :goto_4

    .line 385
    :pswitch_5
    iget-object v2, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalGsmDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    if-eqz p2, :cond_4

    :goto_5
    invoke-virtual {v2, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 386
    invoke-direct {p0, p1, p2}, Lcom/android/phone/RoamingSettings;->setSecureSettingRoamValue(II)V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 385
    goto :goto_5

    .line 364
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private setPreferenceEnabledPhoneType()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 399
    const-string v1, "global_network_cdma_gsm_enable_for_spr"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 400
    iget-object v1, p0, Lcom/android/phone/RoamingSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 401
    .local v0, phoneType:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 402
    iget-object v1, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalGsmVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 403
    iget-object v1, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalGsmDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 414
    .end local v0           #phoneType:I
    :cond_0
    :goto_0
    return-void

    .line 404
    .restart local v0       #phoneType:I
    :cond_1
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 406
    :cond_2
    iget-object v1, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 407
    iget-object v1, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 408
    iget-object v1, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 409
    iget-object v1, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 411
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

.method private setSecureSettingRoamValue(II)V
    .locals 1
    .parameter "keyType"
    .parameter "value"

    .prologue
    .line 335
    packed-switch p1, :pswitch_data_0

    .line 361
    :goto_0
    :pswitch_0
    return-void

    .line 337
    :pswitch_1
    const-string v0, "roam_setting_call_domestic"

    invoke-static {v0, p2}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 338
    const-string v0, "roam_guard_call_domestic"

    invoke-static {v0, p2}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_0

    .line 342
    :pswitch_2
    const-string v0, "roam_setting_data_domestic"

    invoke-static {v0, p2}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 343
    const-string v0, "roam_guard_data_domestic"

    invoke-static {v0, p2}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_0

    .line 347
    :pswitch_3
    const-string v0, "roam_setting_call_international"

    invoke-static {v0, p2}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 348
    const-string v0, "roam_guard_call_international"

    invoke-static {v0, p2}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_0

    .line 352
    :pswitch_4
    const-string v0, "roam_setting_data_international"

    invoke-static {v0, p2}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 353
    const-string v0, "roam_guard_data_international"

    invoke-static {v0, p2}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_0

    .line 357
    :pswitch_5
    const-string v0, "sprint_gsm_data_roaming"

    invoke-static {v0, p2}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    .line 358
    const-string v0, "sprint_gsm_data_guard"

    invoke-static {v0, p2}, Lcom/android/phone/SprintPhoneExtension;->setSecureSettingValue(Ljava/lang/String;I)V

    goto :goto_0

    .line 335
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 99
    const-string v0, "RoamingSettings"

    const-string v1, "onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 418
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 419
    const-string v1, "RoamingSettings"

    const-string v4, "onCreate"

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/RoamingSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 422
    const v1, 0x7f060034

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 425
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 427
    .local v0, prefSet:Landroid/preference/PreferenceScreen;
    new-instance v1, Lcom/android/phone/RoamingSettings$RoamHandler;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Lcom/android/phone/RoamingSettings$RoamHandler;-><init>(Lcom/android/phone/RoamingSettings;Lcom/android/phone/RoamingSettings$1;)V

    iput-object v1, p0, Lcom/android/phone/RoamingSettings;->mRoamHandler:Lcom/android/phone/RoamingSettings$RoamHandler;

    .line 430
    const-string v1, "enterprise_policy"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v1, p0, Lcom/android/phone/RoamingSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 431
    iget-object v1, p0, Lcom/android/phone/RoamingSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v1, :cond_0

    .line 432
    iget-object v1, p0, Lcom/android/phone/RoamingSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRoamingPolicy()Landroid/app/enterprise/RoamingPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/RoamingSettings;->mRoamingPolicy:Landroid/app/enterprise/RoamingPolicy;

    .line 438
    :cond_0
    const-string v1, "domestic_cdma_voice_roaming_settings_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    .line 439
    const-string v1, "domestic_cdma_data_roaming_settings_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    .line 440
    const-string v1, "international_cdma_voice_roaming_settings_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    .line 441
    const-string v1, "international_cdma_data_roaming_settings_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    .line 442
    const-string v1, "international_gsm_voice_roaming_settings_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalGsmVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    .line 443
    const-string v1, "international_gsm_data_roaming_settings_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalGsmDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    .line 445
    iget-object v1, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    const-string v4, "roam_setting_call_domestic"

    invoke-static {v4, v2}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 446
    iget-object v4, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    const-string v1, "roam_setting_call_domestic_forced"

    invoke-static {v1, v3}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 448
    iget-object v1, p0, Lcom/android/phone/RoamingSettings;->mRoamingPolicy:Landroid/app/enterprise/RoamingPolicy;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/RoamingSettings;->mRoamingPolicy:Landroid/app/enterprise/RoamingPolicy;

    invoke-virtual {v1}, Landroid/app/enterprise/RoamingPolicy;->isRoamingDataEnabled()Z

    move-result v1

    if-nez v1, :cond_4

    .line 449
    const-string v1, "RoamingSettings"

    const-string v4, "MDM: Roaming Data is disabled"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-object v1, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 451
    iget-object v1, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 452
    iget-object v1, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 453
    iget-object v1, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 461
    :goto_1
    iget-object v1, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    const-string v4, "roam_setting_call_international"

    invoke-static {v4, v2}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 462
    iget-object v1, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    const-string v4, "roam_setting_call_international_forced"

    invoke-static {v4, v3}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_7

    :goto_2
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 464
    iget-object v1, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalGsmVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    const-string v2, "sprint_gsm_voice_roaming"

    invoke-static {v2, v3}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 465
    iget-object v1, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalGsmDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    const-string v2, "sprint_gsm_data_roaming"

    invoke-static {v2, v3}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 467
    const-string v1, "global_network_cdma_gsm_enable_for_spr"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 468
    iget-object v1, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalGsmVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 469
    iget-object v1, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalGsmDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 470
    const-string v1, "international_gsm_category_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 477
    :goto_3
    const-string v1, "roaming_setting_guard_data_only"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 478
    iget-object v1, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 479
    iget-object v1, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 482
    :cond_1
    iget-object v1, p0, Lcom/android/phone/RoamingSettings;->mRoamingPolicy:Landroid/app/enterprise/RoamingPolicy;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/RoamingSettings;->mRoamingPolicy:Landroid/app/enterprise/RoamingPolicy;

    invoke-virtual {v1}, Landroid/app/enterprise/RoamingPolicy;->isRoamingVoiceCallsEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 483
    const-string v1, "RoamingSettings"

    const-string v2, "MDM: Roaming Voice is disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iget-object v1, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 485
    iget-object v1, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 486
    iget-object v1, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 487
    iget-object v1, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 489
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/RoamingSettings;->setPreferenceEnabledPhoneType()V

    .line 490
    return-void

    :cond_3
    move v1, v3

    .line 446
    goto/16 :goto_0

    .line 455
    :cond_4
    iget-object v1, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    const-string v4, "roam_setting_data_domestic"

    invoke-static {v4, v2}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 456
    iget-object v4, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    const-string v1, "roam_setting_data_domestic_forced"

    invoke-static {v1, v3}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_5

    move v1, v2

    :goto_4
    invoke-virtual {v4, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 457
    iget-object v1, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    const-string v4, "roam_setting_data_international"

    invoke-static {v4, v2}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 458
    iget-object v4, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    const-string v1, "roam_setting_data_international_forced"

    invoke-static {v1, v3}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_5
    invoke-virtual {v4, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_5
    move v1, v3

    .line 456
    goto :goto_4

    :cond_6
    move v1, v3

    .line 458
    goto :goto_5

    :cond_7
    move v2, v3

    .line 462
    goto/16 :goto_2

    .line 472
    :cond_8
    iget-object v1, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalGsmVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 473
    const-string v1, "domestic_cdma_category_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const v2, 0x7f0e0750

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 474
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
    .line 104
    const-string v0, "RoamingSettings"

    const-string v1, "onDismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 551
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 115
    const-string v0, "RoamingSettings"

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

    .line 117
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1

    .line 118
    invoke-direct {p0}, Lcom/android/phone/RoamingSettings;->domesticCdmaVoiceRoamingSettingTreeClick()V

    .line 130
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_2

    .line 120
    invoke-direct {p0}, Lcom/android/phone/RoamingSettings;->domesticCdmaDataRoamingSettingTreeClick()V

    goto :goto_0

    .line 121
    :cond_2
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_3

    .line 122
    invoke-direct {p0}, Lcom/android/phone/RoamingSettings;->internationalCdmaVoiceRoamingSettingTreeClick()V

    goto :goto_0

    .line 123
    :cond_3
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_4

    .line 124
    invoke-direct {p0}, Lcom/android/phone/RoamingSettings;->internationalCdmaDataRoamingSettingTreeClick()V

    goto :goto_0

    .line 125
    :cond_4
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalGsmVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_5

    .line 126
    invoke-direct {p0}, Lcom/android/phone/RoamingSettings;->internationalGsmVoiceRoamingSettingTreeClick()V

    goto :goto_0

    .line 127
    :cond_5
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalGsmDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_0

    .line 128
    invoke-direct {p0}, Lcom/android/phone/RoamingSettings;->internationalGsmDataRoamingSettingTreeClick()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 494
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 496
    const-string v0, "RoamingSettings"

    const-string v3, "onResume"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 505
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    const-string v3, "roam_setting_call_domestic"

    invoke-static {v3, v1}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 506
    iget-object v3, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    const-string v0, "roam_setting_call_domestic_forced"

    invoke-static {v0, v2}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 509
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mRoamingPolicy:Landroid/app/enterprise/RoamingPolicy;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mRoamingPolicy:Landroid/app/enterprise/RoamingPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/RoamingPolicy;->isRoamingDataEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 510
    const-string v0, "RoamingSettings"

    const-string v3, "MDM: Roaming Data is disabled"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 512
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 513
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 514
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 523
    :goto_1
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    const-string v3, "roam_setting_call_international"

    invoke-static {v3, v1}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 524
    iget-object v3, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    const-string v0, "roam_setting_call_international_forced"

    invoke-static {v0, v2}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 526
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalGsmVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    const-string v3, "sprint_gsm_voice_roaming"

    invoke-static {v3, v1}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 527
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalGsmDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    const-string v3, "sprint_gsm_data_roaming"

    invoke-static {v3, v1}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 530
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mRoamingPolicy:Landroid/app/enterprise/RoamingPolicy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mRoamingPolicy:Landroid/app/enterprise/RoamingPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/RoamingPolicy;->isRoamingVoiceCallsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 531
    const-string v0, "RoamingSettings"

    const-string v1, "MDM: Roaming Voice is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 533
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 534
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 535
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCdmaVoiceRoamingSetting:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 538
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/RoamingSettings;->setPreferenceEnabledPhoneType()V

    .line 539
    return-void

    :cond_1
    move v0, v2

    .line 506
    goto/16 :goto_0

    .line 516
    :cond_2
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    const-string v3, "roam_setting_data_domestic"

    invoke-static {v3, v1}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 517
    iget-object v3, p0, Lcom/android/phone/RoamingSettings;->mButtonDomesticCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    const-string v0, "roam_setting_data_domestic_forced"

    invoke-static {v0, v2}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 518
    iget-object v0, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    const-string v3, "roam_setting_data_international"

    invoke-static {v3, v1}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 519
    iget-object v3, p0, Lcom/android/phone/RoamingSettings;->mButtonInternationalCdmaDataRoamingSetting:Landroid/preference/CheckBoxPreference;

    const-string v0, "roam_setting_data_international_forced"

    invoke-static {v0, v2}, Lcom/android/phone/SprintPhoneExtension;->getSecureSettingBoolean(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_3
    move v0, v2

    .line 517
    goto :goto_3

    :cond_4
    move v0, v2

    .line 519
    goto :goto_4

    :cond_5
    move v0, v2

    .line 524
    goto :goto_2
.end method
