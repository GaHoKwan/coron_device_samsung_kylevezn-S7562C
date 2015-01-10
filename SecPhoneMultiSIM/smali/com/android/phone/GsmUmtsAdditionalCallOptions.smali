.class public Lcom/android/phone/GsmUmtsAdditionalCallOptions;
.super Lcom/android/phone/TimeConsumingPreferenceActivity;
.source "GsmUmtsAdditionalCallOptions.java"


# static fields
.field public static mStaticSimSlot:I


# instance fields
.field private areaCodeText:Landroid/widget/EditText;

.field private mAutoAreaCodeButton:Lcom/android/phone/callsettings/SwitchDialogPreference;

.field private mAutoRedial:Landroid/preference/CheckBoxPreference;

.field private mCLIRButton:Lcom/android/phone/CLIRListPreference;

.field private mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

.field private mInitIndex:I

.field private mNoiseReduction:Landroid/preference/CheckBoxPreference;

.field private final mPreferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRegReceiver:Landroid/content/BroadcastReceiver;

.field private mSimSlot:I

.field private mSubaddress:Landroid/preference/CheckBoxPreference;

.field private mTelMan:Landroid/telephony/TelephonyManager;

.field private mVoiceCallBarring:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    sput v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mStaticSimSlot:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;-><init>()V

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPreferences:Ljava/util/ArrayList;

    .line 105
    iput v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mInitIndex:I

    .line 121
    iput v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimSlot:I

    .line 649
    new-instance v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$4;

    invoke-direct {v0, p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions$4;-><init>(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)V

    iput-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 673
    new-instance v0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$5;

    invoke-direct {v0, p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions$5;-><init>(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)V

    iput-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mRegReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimSlot:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->areaCodeText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->updateNoiseReduction()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Lcom/android/phone/CallWaitingCheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Landroid/preference/PreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mVoiceCallBarring:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/GsmUmtsAdditionalCallOptions;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/phone/GsmUmtsAdditionalCallOptions;ILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->updateSummaryAutoAreaCode(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private checkAdditionalCallMenu()V
    .locals 2

    .prologue
    .line 370
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 371
    .local v0, prefSet:Landroid/preference/PreferenceScreen;
    const-string v1, "remove_additional_call_setting_for_kor"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 372
    const-string v1, "button_cw_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 373
    const-string v1, "button_autoredial_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 375
    :cond_0
    const-string v1, "support_subaddress_settings"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 376
    const-string v1, "button_subaddress_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 377
    :cond_1
    return-void
.end method

.method private checkCallBarringMenu(I)V
    .locals 8
    .parameter "mSimSlot"

    .prologue
    const/4 v7, 0x2

    .line 336
    const-string v4, "GsmUmtsAdditionalCallOptions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkCallBarringMenu: mSimSlot("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    const/4 v1, 0x0

    .line 339
    .local v1, mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {p1}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 341
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 342
    .local v3, prefSet:Landroid/preference/PreferenceScreen;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    .line 343
    .local v2, phoneType:I
    if-eq v2, v7, :cond_0

    const-string v4, "hide_call_barring"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "cdma_additional_setting_enable"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 344
    :cond_0
    const-string v4, "voicecall_barring_key"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 345
    .local v0, barringButton:Landroid/preference/Preference;
    if-eqz v0, :cond_1

    .line 346
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 349
    .end local v0           #barringButton:Landroid/preference/Preference;
    :cond_1
    if-eq v2, v7, :cond_4

    const-string v4, "hide_call_barring"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "cdma_additional_setting_enable"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 359
    const-string v4, "voicecall_barring_key"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 360
    .restart local v0       #barringButton:Landroid/preference/Preference;
    if-eqz v0, :cond_2

    .line 361
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 362
    const/4 v0, 0x0

    .line 364
    :cond_2
    const-string v4, "gsm_voicecall_barring_key"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mVoiceCallBarring:Landroid/preference/PreferenceScreen;

    .line 366
    .end local v0           #barringButton:Landroid/preference/Preference;
    :cond_3
    :goto_0
    return-void

    .line 352
    :cond_4
    const-string v4, "gsm_voicecall_barring_key"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    iput-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mVoiceCallBarring:Landroid/preference/PreferenceScreen;

    .line 354
    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mVoiceCallBarring:Landroid/preference/PreferenceScreen;

    if-eqz v4, :cond_3

    .line 355
    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mVoiceCallBarring:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 356
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mVoiceCallBarring:Landroid/preference/PreferenceScreen;

    goto :goto_0
.end method

.method private checkCallerIDMenu()V
    .locals 3

    .prologue
    .line 292
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 293
    .local v1, prefSet:Landroid/preference/PreferenceScreen;
    const-string v2, "hide_caller_id"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 294
    const-string v2, "button_clir_key"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 295
    .local v0, callerIDButton:Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 296
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 298
    .end local v0           #callerIDButton:Landroid/preference/Preference;
    :cond_0
    return-void
.end method

.method private checkFdnMenu()V
    .locals 7

    .prologue
    .line 301
    const/4 v1, 0x0

    .line 303
    .local v1, mPhone:Lcom/android/internal/telephony/Phone;
    const-string v4, "feature_chn_duos"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 304
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 308
    :goto_0
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 309
    .local v3, prefSet:Landroid/preference/PreferenceScreen;
    const-string v4, "button_fdn_key"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 310
    .local v0, fdnButton:Landroid/preference/Preference;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    .line 311
    .local v2, phoneType:I
    iget v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimSlot:I

    invoke-static {v4}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mTelMan:Landroid/telephony/TelephonyManager;

    .line 312
    const-string v4, "ctc_dual_mode"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 313
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSecondary()Landroid/telephony/TelephonyManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mTelMan:Landroid/telephony/TelephonyManager;

    .line 315
    :cond_0
    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    const-string v4, "hide_FDN"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "cdma_additional_setting_enable"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 316
    :cond_1
    if-eqz v0, :cond_2

    .line 317
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 329
    :cond_2
    :goto_1
    const-string v4, "feature_tmo"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v0, :cond_3

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getFDNavailable()Z

    move-result v4

    if-nez v4, :cond_3

    .line 332
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 333
    :cond_3
    return-void

    .line 306
    .end local v0           #fdnButton:Landroid/preference/Preference;
    .end local v2           #phoneType:I
    .end local v3           #prefSet:Landroid/preference/PreferenceScreen;
    :cond_4
    iget v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimSlot:I

    invoke-static {v4}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    goto :goto_0

    .line 318
    .restart local v0       #fdnButton:Landroid/preference/Preference;
    .restart local v2       #phoneType:I
    .restart local v3       #prefSet:Landroid/preference/PreferenceScreen;
    :cond_5
    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_6

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getFDNavailable()Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "ctc_dual_mode"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 322
    :cond_6
    if-eqz v0, :cond_2

    .line 324
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 325
    const-string v4, "GsmUmtsAdditionalCallOptions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkFdnMenu() : mSimSlot("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimSlot:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") getSimState("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") Fdnavailability("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getFDNavailable()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") FDN button set to be disabled"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 665
    const-string v0, "GsmUmtsAdditionalCallOptions"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    return-void
.end method

.method private requestInputMethod(Landroid/app/Dialog;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 498
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 504
    .local v0, window:Landroid/view/Window;
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 505
    return-void
.end method

.method private setNoiseReduction(Z)V
    .locals 7
    .parameter "value"

    .prologue
    .line 274
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 275
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 276
    .local v1, cm:Lcom/android/internal/telephony/CallManager;
    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    .line 278
    .local v4, state:Lcom/android/internal/telephony/Phone$State;
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 279
    .local v3, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 280
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    const-string v5, "noise_reduction_sharedpref"

    invoke-interface {v2, v5, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 282
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 285
    sget-object v5, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v4, v5, :cond_0

    .line 286
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v5, p1, v6}, Lcom/android/phone/PhoneUtils;->turnOnNoiseSuppression(Landroid/content/Context;ZZ)V

    .line 288
    :cond_0
    return-void
.end method

.method private updateNoiseReduction()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 618
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 619
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v1

    .line 621
    .local v1, bthf:Lcom/android/phone/BluetoothHandsfree;
    iget-object v5, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_3

    .line 622
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 624
    .local v4, prefs:Landroid/content/SharedPreferences;
    const-string v5, "default_noise_reduction"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 626
    const/4 v3, 0x1

    .line 627
    .local v3, noiseReduction:Z
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "call_noise_reduction"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_0

    .line 628
    const/4 v3, 0x0

    .line 629
    :cond_0
    const-string v5, "noise_reduction_sharedpref"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 639
    .end local v3           #noiseReduction:Z
    .local v2, isOn:Z
    :goto_0
    iget-object v5, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 641
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 642
    :cond_2
    iget-object v5, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 647
    .end local v2           #isOn:Z
    .end local v4           #prefs:Landroid/content/SharedPreferences;
    :cond_3
    :goto_1
    return-void

    .line 635
    .restart local v4       #prefs:Landroid/content/SharedPreferences;
    :cond_4
    const-string v5, "noise_reduction_sharedpref"

    const-string v6, "default_noise_reduction"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .restart local v2       #isOn:Z
    goto :goto_0

    .line 644
    :cond_5
    iget-object v5, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1
.end method

.method private updateSummaryAutoAreaCode(ILjava/lang/String;)V
    .locals 7
    .parameter "value"
    .parameter "data"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 258
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    move v1, v4

    .line 260
    .local v1, hasData:Z
    :goto_0
    if-ne p1, v4, :cond_2

    if-eqz v1, :cond_2

    .line 261
    new-array v0, v4, [Ljava/lang/String;

    const-string v6, "%d"

    aput-object v6, v0, v5

    .line 262
    .local v0, SRC_TAGS:[Ljava/lang/String;
    new-array v2, v4, [Ljava/lang/String;

    aput-object p2, v2, v5

    .line 263
    .local v2, inputs:[Ljava/lang/String;
    const v4, 0x7f0e031a

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4, v0, v2}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 267
    .local v3, summaryOn:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoAreaCodeButton:Lcom/android/phone/callsettings/SwitchDialogPreference;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoAreaCodeButton:Lcom/android/phone/callsettings/SwitchDialogPreference;

    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 271
    .end local v0           #SRC_TAGS:[Ljava/lang/String;
    .end local v2           #inputs:[Ljava/lang/String;
    .end local v3           #summaryOn:Ljava/lang/CharSequence;
    :cond_0
    :goto_1
    return-void

    .end local v1           #hasData:Z
    :cond_1
    move v1, v5

    .line 258
    goto :goto_0

    .line 269
    .restart local v1       #hasData:Z
    :cond_2
    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoAreaCodeButton:Lcom/android/phone/callsettings/SwitchDialogPreference;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoAreaCodeButton:Lcom/android/phone/callsettings/SwitchDialogPreference;

    const v5, 0x7f0e031b

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1
.end method


# virtual methods
.method protected makeAreaCodeDialog()Landroid/app/Dialog;
    .locals 7

    .prologue
    .line 508
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 509
    .local v1, factory:Landroid/view/LayoutInflater;
    const v4, 0x7f04006e

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 510
    .local v3, textEntryView:Landroid/view/View;
    const v4, 0x7f0901df

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->areaCodeText:Landroid/widget/EditText;

    .line 513
    iget v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimSlot:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 514
    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->areaCodeText:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "area_code_value1"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 523
    :goto_0
    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->areaCodeText:Landroid/widget/EditText;

    if-eqz v4, :cond_0

    .line 524
    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->areaCodeText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v2

    .line 525
    .local v2, len:I
    if-lez v2, :cond_0

    .line 526
    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->areaCodeText:Landroid/widget/EditText;

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 530
    .end local v2           #len:I
    :cond_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0e0319

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0e002a

    new-instance v6, Lcom/android/phone/GsmUmtsAdditionalCallOptions$3;

    invoke-direct {v6, p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions$3;-><init>(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0e002e

    new-instance v6, Lcom/android/phone/GsmUmtsAdditionalCallOptions$2;

    invoke-direct {v6, p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions$2;-><init>(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 574
    .local v0, areaCodeDialog:Landroid/app/Dialog;
    invoke-direct {p0, v0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->requestInputMethod(Landroid/app/Dialog;)V

    .line 575
    return-object v0

    .line 517
    .end local v0           #areaCodeDialog:Landroid/app/Dialog;
    :cond_1
    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->areaCodeText:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "area_code_value"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "icicle"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 126
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 128
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 129
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "CallSettingTab"

    invoke-virtual {v2, v4, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimSlot:I

    .line 131
    const v4, 0x7f060020

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 133
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 134
    .local v3, prefSet:Landroid/preference/PreferenceScreen;
    const-string v4, "button_clir_key"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/phone/CLIRListPreference;

    iput-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    .line 135
    const-string v4, "button_cw_key"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/phone/CallWaitingCheckBoxPreference;

    iput-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

    .line 136
    const-string v4, "button_areacode_key"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/phone/callsettings/SwitchDialogPreference;

    iput-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoAreaCodeButton:Lcom/android/phone/callsettings/SwitchDialogPreference;

    .line 137
    const-string v4, "button_autoredial_key"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoRedial:Landroid/preference/CheckBoxPreference;

    .line 138
    const-string v4, "button_noise_reduction_key"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    .line 139
    const-string v4, "button_subaddress_key"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSubaddress:Landroid/preference/CheckBoxPreference;

    .line 140
    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    const-string v4, "remove_additional_call_setting_for_kor"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 142
    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPreferences:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_0
    const-string v4, "hide_caller_id"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "remove_additional_call_setting_for_kor"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 149
    :cond_1
    iput-boolean v7, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mIsForeground:Z

    .line 150
    if-nez p1, :cond_7

    .line 151
    const-string v4, "GsmUmtsAdditionalCallOptions"

    const-string v5, "start to init "

    invoke-static {v4, v5, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 152
    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    iget v5, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimSlot:I

    invoke-virtual {v4, p0, v9, v5}, Lcom/android/phone/CLIRListPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;ZI)V

    .line 171
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->checkCallerIDMenu()V

    .line 172
    invoke-direct {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->checkFdnMenu()V

    .line 173
    iget v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimSlot:I

    invoke-direct {p0, v4}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->checkCallBarringMenu(I)V

    .line 174
    invoke-direct {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->checkAdditionalCallMenu()V

    .line 176
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 177
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_3

    .line 179
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 183
    :cond_3
    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoAreaCodeButton:Lcom/android/phone/callsettings/SwitchDialogPreference;

    new-instance v5, Lcom/android/phone/GsmUmtsAdditionalCallOptions$1;

    invoke-direct {v5, p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions$1;-><init>(Lcom/android/phone/GsmUmtsAdditionalCallOptions;)V

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 217
    const-string v4, "cdma_additional_setting_enable"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 218
    if-eqz v3, :cond_4

    .line 219
    const-string v4, "button_clir_key"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 220
    iput-object v8, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    .line 221
    const-string v4, "button_cw_key"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 222
    iput-object v8, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

    .line 223
    const-string v4, "button_areacode_key"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 224
    iput-object v8, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoAreaCodeButton:Lcom/android/phone/callsettings/SwitchDialogPreference;

    .line 225
    const-string v4, "button_autoredial_key"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 226
    iput-object v8, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoRedial:Landroid/preference/CheckBoxPreference;

    .line 230
    :cond_4
    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_b

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasNoiseSuppressionFeature(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 231
    const-string v4, "default_noise_reduction"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 232
    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "call_noise_reduction"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    .line 241
    :goto_1
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v4

    if-le v4, v7, :cond_6

    .line 242
    if-eqz v3, :cond_6

    .line 244
    const-string v4, "support_multisim_ver2"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 245
    const-string v4, "button_areacode_key"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 246
    iput-object v8, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoAreaCodeButton:Lcom/android/phone/callsettings/SwitchDialogPreference;

    .line 249
    :cond_5
    const-string v4, "button_autoredial_key"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 250
    iput-object v8, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoRedial:Landroid/preference/CheckBoxPreference;

    .line 253
    :cond_6
    return-void

    .line 154
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :cond_7
    const-string v4, "GsmUmtsAdditionalCallOptions"

    const-string v5, "restore stored states"

    invoke-static {v4, v5, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 155
    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iput v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mInitIndex:I

    .line 156
    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    iget v5, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimSlot:I

    invoke-virtual {v4, p0, v7, v5}, Lcom/android/phone/CLIRListPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;ZI)V

    .line 157
    const-string v4, "remove_additional_call_setting_for_kor"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 158
    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

    iget v5, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimSlot:I

    invoke-virtual {v4, p0, v7, v5}, Lcom/android/phone/CallWaitingCheckBoxPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;ZI)V

    .line 160
    :cond_8
    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    invoke-virtual {v4}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 161
    .local v1, clirArray:[I
    if-eqz v1, :cond_9

    .line 162
    const-string v4, "GsmUmtsAdditionalCallOptions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate:  clirArray[0]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v1, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", clirArray[1]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v1, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    invoke-virtual {v4, v1}, Lcom/android/phone/CLIRListPreference;->handleGetCLIRResult([I)V

    goto/16 :goto_0

    .line 166
    :cond_9
    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    iget v5, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimSlot:I

    invoke-virtual {v4, p0, v9, v5}, Lcom/android/phone/CLIRListPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;ZI)V

    goto/16 :goto_0

    .line 234
    .end local v1           #clirArray:[I
    .restart local v0       #actionBar:Landroid/app/ActionBar;
    :cond_a
    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    const-string v5, "default_noise_reduction"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 236
    :cond_b
    iget-object v4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "id"

    .prologue
    .line 579
    packed-switch p1, :pswitch_data_0

    .line 583
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 581
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->makeAreaCodeDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 579
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onFinished(Landroid/preference/Preference;Z)V
    .locals 3
    .parameter "preference"
    .parameter "reading"

    .prologue
    .line 469
    iget-boolean v1, p0, Lcom/android/phone/TimeConsumingPreferenceActivity;->mIsForeground:Z

    if-nez v1, :cond_0

    .line 470
    const-string v1, "GsmUmtsAdditionalCallOptions"

    const-string v2, "requesting discarded"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :goto_0
    return-void

    .line 474
    :cond_0
    iget v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mInitIndex:I

    iget-object v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->isRemoving()Z

    move-result v1

    if-nez v1, :cond_1

    .line 475
    iget v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mInitIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mInitIndex:I

    .line 476
    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mPreferences:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mInitIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 477
    .local v0, pref:Landroid/preference/Preference;
    instance-of v1, v0, Lcom/android/phone/CallWaitingCheckBoxPreference;

    if-eqz v1, :cond_1

    .line 489
    check-cast v0, Lcom/android/phone/CallWaitingCheckBoxPreference;

    .end local v0           #pref:Landroid/preference/Preference;
    const/4 v1, 0x0

    iget v2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimSlot:I

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/phone/CallWaitingCheckBoxPreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;ZI)V

    .line 493
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onFinished(Landroid/preference/Preference;Z)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 448
    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onPause()V

    .line 449
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasNoiseSuppressionFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 455
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 589
    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoAreaCodeButton:Lcom/android/phone/callsettings/SwitchDialogPreference;

    if-ne p2, v3, :cond_0

    .line 590
    const-string v1, "onPreferenceTreeClick - mAutoAreaCodeButton"

    invoke-direct {p0, v1}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->log(Ljava/lang/String;)V

    .line 591
    invoke-virtual {p0, v2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->showDialog(I)V

    .line 613
    :goto_0
    return v2

    .line 593
    :cond_0
    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoRedial:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_3

    .line 595
    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoRedial:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 596
    const/4 v0, 0x1

    .line 600
    .local v0, auto_redial:I
    :goto_1
    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoRedial:Landroid/preference/CheckBoxPreference;

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v3, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 601
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "autoredial_mode"

    invoke-static {v1, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 598
    .end local v0           #auto_redial:I
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #auto_redial:I
    goto :goto_1

    .line 603
    .end local v0           #auto_redial:I
    :cond_3
    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_4

    .line 604
    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mNoiseReduction:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->setNoiseReduction(Z)V

    goto :goto_0

    .line 606
    :cond_4
    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSubaddress:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_5

    .line 607
    iget-object v3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSubaddress:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 608
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "subaddress_mode"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 613
    :cond_5
    :goto_2
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_0

    .line 610
    :cond_6
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "subaddress_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2
.end method

.method public onResume()V
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 385
    const/4 v5, 0x0

    .line 386
    .local v5, value:I
    const/4 v0, 0x0

    .line 387
    .local v0, data:Ljava/lang/String;
    iget v6, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimSlot:I

    if-ne v6, v7, :cond_9

    .line 388
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "area_code_enabled1"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 391
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "area_code_value1"

    invoke-static {v6, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 402
    :goto_0
    iget-object v6, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoAreaCodeButton:Lcom/android/phone/callsettings/SwitchDialogPreference;

    if-eqz v6, :cond_0

    .line 403
    iget-object v9, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoAreaCodeButton:Lcom/android/phone/callsettings/SwitchDialogPreference;

    if-ne v5, v7, :cond_a

    move v6, v7

    :goto_1
    invoke-virtual {v9, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 405
    :cond_0
    const-string v6, "cdma_additional_setting_enable"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 406
    invoke-direct {p0, v5, v0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->updateSummaryAutoAreaCode(ILjava/lang/String;)V

    .line 408
    :cond_1
    iget-object v6, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoRedial:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_2

    .line 409
    iget-object v9, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mAutoRedial:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v10, "autoredial_mode"

    invoke-static {v6, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-lez v6, :cond_b

    move v6, v7

    :goto_2
    invoke-virtual {v9, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 412
    :cond_2
    iget-object v6, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSubaddress:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_3

    .line 413
    iget-object v9, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSubaddress:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v10, "subaddress_mode"

    invoke-static {v6, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-lez v6, :cond_c

    move v6, v7

    :goto_3
    invoke-virtual {v9, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 416
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasNoiseSuppressionFeature(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 417
    new-instance v1, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v1, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 418
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v6, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 419
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v9, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v9, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 420
    invoke-direct {p0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->updateNoiseReduction()V

    .line 428
    .end local v1           #intentFilter:Landroid/content/IntentFilter;
    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v9, "dsa_main"

    invoke-virtual {v6, v9, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 429
    .local v2, pref_main:Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v9, "SelectSimStatus"

    invoke-virtual {v6, v9, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 431
    .local v3, pref_selectSim:Landroid/content/SharedPreferences;
    const-string v6, "SimStatus"

    invoke-interface {v3, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 433
    .local v4, simStatus:I
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "dsa_is_activate"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_8

    if-ne v4, v7, :cond_5

    iget v6, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimSlot:I

    if-eq v6, v7, :cond_7

    :cond_5
    const/4 v6, 0x2

    if-ne v4, v6, :cond_6

    iget v6, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimSlot:I

    if-eqz v6, :cond_7

    :cond_6
    if-nez v4, :cond_8

    .line 438
    :cond_7
    const-string v6, "GsmUmtsAdditionalCallOptions"

    const-string v7, "DSA_IS_ACTIVATE"

    invoke-static {v6, v7}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget-object v6, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCWButton:Lcom/android/phone/CallWaitingCheckBoxPreference;

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 442
    :cond_8
    iget v6, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mSimSlot:I

    sput v6, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mStaticSimSlot:I

    .line 443
    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onResume()V

    .line 444
    return-void

    .line 393
    .end local v2           #pref_main:Landroid/content/SharedPreferences;
    .end local v3           #pref_selectSim:Landroid/content/SharedPreferences;
    .end local v4           #simStatus:I
    :cond_9
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "area_code_enabled"

    invoke-static {v6, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 396
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v9, "area_code_value"

    invoke-static {v6, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_a
    move v6, v8

    .line 403
    goto/16 :goto_1

    :cond_b
    move v6, v8

    .line 409
    goto/16 :goto_2

    :cond_c
    move v6, v8

    .line 413
    goto/16 :goto_3
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 459
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 460
    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    iget-object v0, v0, Lcom/android/phone/CLIRListPreference;->clirArray:[I

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->mCLIRButton:Lcom/android/phone/CLIRListPreference;

    iget-object v1, v1, Lcom/android/phone/CLIRListPreference;->clirArray:[I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 465
    :cond_0
    return-void
.end method
