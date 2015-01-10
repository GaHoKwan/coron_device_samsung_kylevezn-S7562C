.class public Lcom/android/mms/provisioning/MmsProvisionActivity;
.super Landroid/preference/PreferenceActivity;
.source "MmsProvisionActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field public static final MMS_MMSC:Ljava/lang/String; = "prov_mmsc_key"

.field public static final MMS_MMSC_PORT:Ljava/lang/String; = "prov_mmsc_port_key"

.field public static final MMS_MMSC_PROXY:Ljava/lang/String; = "prov_mmsc_proxy_key"

.field public static final MMS_OPTIONAL_FIELD_ATTENDANCE:Ljava/lang/String; = "prov_optional_field_attendance_key"

.field public static final MMS_TRANSACTION_LOG:Ljava/lang/String; = "prov_transaction_log_key"

.field public static final MMS_TRANSACTION_TIMEOUT:Ljava/lang/String; = "prov_transaction_timeout_key"

.field public static final MMS_TRANSACTION_TIMEOUT_CATEGORY:Ljava/lang/String; = "prov_transaction_timeout_category_key"

.field public static final MMS_UAP_SELECT:Ljava/lang/String; = "prov_uap_select_key"

.field public static final MMS_UAP_URL:Ljava/lang/String; = "prov_uapurl_key"

.field public static final MMS_UAP_URL_CURRENT:Ljava/lang/String; = "prov_uapurl_current_key"

.field public static final MMS_UA_ALTERNATIVE_CATEGORY:Ljava/lang/String; = "prov_uap_category_key"

.field public static final MMS_UA_CURRENT:Ljava/lang/String; = "prov_uap_current_key"

.field public static final MMS_UA_STRING:Ljava/lang/String; = "prov_uastring_key"

.field public static final MMS_UA_STRING_CURRENT:Ljava/lang/String; = "prov_uastring_current_key"

.field public static final MMS_VZW_TEST_MODE_CATEGORY:Ljava/lang/String; = "prov_vzw_test_mode_category_key"

.field public static final MMS_VZW_TEST_MODE_COMMERCIAL:Ljava/lang/String; = "commercial"

.field public static final MMS_VZW_TEST_MODE_COMMERCIAL_MMSC:Ljava/lang/String; = "prov_vzw_test_mode_commercial_mmsc"

.field public static final MMS_VZW_TEST_MODE_COMMERCIAL_PASSWORD:Ljava/lang/String; = "prov_vzw_test_mode_commercial_password"

.field public static final MMS_VZW_TEST_MODE_COMMERCIAL_UID:Ljava/lang/String; = "prov_vzw_test_mode_commercial_uid"

.field public static final MMS_VZW_TEST_MODE_DOMESTIC:Ljava/lang/String; = "domestic"

.field public static final MMS_VZW_TEST_MODE_DOMESTIC_MMSC:Ljava/lang/String; = "prov_vzw_test_mode_domestic_mmsc"

.field public static final MMS_VZW_TEST_MODE_DOMESTIC_PASSWORD:Ljava/lang/String; = "prov_vzw_test_mode_domestic_password"

.field public static final MMS_VZW_TEST_MODE_DOMESTIC_UID:Ljava/lang/String; = "prov_vzw_test_mode_domestic_uid"

.field public static final MMS_VZW_TEST_MODE_LAB:Ljava/lang/String; = "lab"

.field public static final MMS_VZW_TEST_MODE_LAB_MMSC:Ljava/lang/String; = "prov_vzw_test_mode_lab_mmsc"

.field public static final MMS_VZW_TEST_MODE_LAB_PASSWORD:Ljava/lang/String; = "prov_vzw_test_mode_lab_password"

.field public static final MMS_VZW_TEST_MODE_LAB_UID:Ljava/lang/String; = "prov_vzw_test_mode_lab_uid"

.field public static final MMS_VZW_TEST_MODE_SELECT:Ljava/lang/String; = "prov_vzw_test_mode_select_key"

.field public static final MMS_VZW_TEST_MODE_UPDATE_APN:Ljava/lang/String; = "domestic"

.field private static final TAG:Ljava/lang/String; = "MmsProvisioning"


# instance fields
.field private sharedPrefs:Landroid/content/SharedPreferences;

.field private uaProfileChanged:Z

.field private uaStringChanged:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 65
    iput-boolean v0, p0, Lcom/android/mms/provisioning/MmsProvisionActivity;->uaStringChanged:Z

    .line 66
    iput-boolean v0, p0, Lcom/android/mms/provisioning/MmsProvisionActivity;->uaProfileChanged:Z

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const v1, 0x7f05000b

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 72
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/provisioning/MmsProvisionActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    .line 74
    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, sales_code:Ljava/lang/String;
    const-string v1, "VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "prov_vzw_test_mode_category_key"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 79
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 159
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 160
    iget-object v0, p0, Lcom/android/mms/provisioning/MmsProvisionActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 161
    return-void
.end method

.method protected onResume()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 83
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 84
    iget-object v6, p0, Lcom/android/mms/provisioning/MmsProvisionActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v6, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 87
    const-string v6, "prov_transaction_timeout_category_key"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    .line 92
    .local v4, timeoutCategory:Landroid/preference/PreferenceCategory;
    invoke-virtual {v4, v10}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 96
    const-string v6, "prov_uastring_current_key"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/provisioning/MmsProvisionActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v8, "prov_uastring_current_key"

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 97
    const-string v6, "prov_uapurl_current_key"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/provisioning/MmsProvisionActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v8, "prov_uapurl_current_key"

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 99
    const-string v6, "prov_uap_category_key"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 100
    .local v0, alternativeCategory:Landroid/preference/PreferenceCategory;
    iget-object v6, p0, Lcom/android/mms/provisioning/MmsProvisionActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v7, "prov_uap_current_key"

    invoke-interface {v6, v7, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 101
    invoke-virtual {v0, v10}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 102
    const-string v6, "prov_uap_current_key"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    const-string v7, "Current UA used"

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 109
    :goto_0
    const-string v6, "prov_uastring_key"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/provisioning/MmsProvisionActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v8, "prov_uastring_key"

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 110
    const-string v6, "prov_uapurl_key"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/provisioning/MmsProvisionActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v8, "prov_uapurl_key"

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 113
    new-instance v5, Lcom/android/mms/transaction/TransactionSettings;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/mms/transaction/TransactionSettings;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 114
    .local v5, transactionSettings:Lcom/android/mms/transaction/TransactionSettings;
    iget-object v6, p0, Lcom/android/mms/provisioning/MmsProvisionActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 115
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v6, p0, Lcom/android/mms/provisioning/MmsProvisionActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v7, "prov_mmsc_key"

    const-string v8, ""

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/mms/transaction/TransactionSettings;->getMmscUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 116
    const-string v6, "prov_mmsc_key"

    invoke-virtual {v5}, Lcom/android/mms/transaction/TransactionSettings;->getMmscUrl()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 117
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 119
    :cond_0
    const-string v6, "prov_mmsc_key"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/provisioning/MmsProvisionActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v8, "prov_mmsc_key"

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 120
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v6

    const-string v7, "prov_mmsc_key"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    .line 121
    .local v1, editTextPrefs:Landroid/preference/EditTextPreference;
    iget-object v6, p0, Lcom/android/mms/provisioning/MmsProvisionActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v7, "prov_mmsc_key"

    const-string v8, ""

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 124
    iget-object v6, p0, Lcom/android/mms/provisioning/MmsProvisionActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v7, "prov_mmsc_proxy_key"

    const-string v8, ""

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/mms/transaction/TransactionSettings;->getProxyAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 125
    const-string v6, "prov_mmsc_proxy_key"

    invoke-virtual {v5}, Lcom/android/mms/transaction/TransactionSettings;->getProxyAddress()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 126
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 128
    :cond_1
    const-string v6, "prov_mmsc_proxy_key"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/provisioning/MmsProvisionActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v8, "prov_mmsc_proxy_key"

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 129
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v6

    const-string v7, "prov_mmsc_proxy_key"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .end local v1           #editTextPrefs:Landroid/preference/EditTextPreference;
    check-cast v1, Landroid/preference/EditTextPreference;

    .line 130
    .restart local v1       #editTextPrefs:Landroid/preference/EditTextPreference;
    iget-object v6, p0, Lcom/android/mms/provisioning/MmsProvisionActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v7, "prov_mmsc_proxy_key"

    const-string v8, ""

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 133
    iget-object v6, p0, Lcom/android/mms/provisioning/MmsProvisionActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v7, "prov_mmsc_port_key"

    const-string v8, ""

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/mms/transaction/TransactionSettings;->getProxyPort()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 134
    const-string v6, "prov_mmsc_port_key"

    invoke-virtual {v5}, Lcom/android/mms/transaction/TransactionSettings;->getProxyPort()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 135
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 137
    :cond_2
    const-string v6, "prov_mmsc_port_key"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/provisioning/MmsProvisionActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v8, "prov_mmsc_port_key"

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 138
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v6

    const-string v7, "prov_mmsc_port_key"

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .end local v1           #editTextPrefs:Landroid/preference/EditTextPreference;
    check-cast v1, Landroid/preference/EditTextPreference;

    .line 139
    .restart local v1       #editTextPrefs:Landroid/preference/EditTextPreference;
    iget-object v6, p0, Lcom/android/mms/provisioning/MmsProvisionActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v7, "prov_mmsc_port_key"

    const-string v8, ""

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 142
    const-string v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 143
    .local v3, sales_code:Ljava/lang/String;
    const-string v6, "VZW"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 144
    const-string v6, "prov_vzw_test_mode_select_key"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/provisioning/MmsProvisionActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v8, "prov_vzw_test_mode_select_key"

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 145
    const-string v6, "prov_vzw_test_mode_commercial_mmsc"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/provisioning/MmsProvisionActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v8, "prov_vzw_test_mode_commercial_mmsc"

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 146
    const-string v6, "prov_vzw_test_mode_commercial_uid"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/provisioning/MmsProvisionActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v8, "prov_vzw_test_mode_commercial_uid"

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 147
    const-string v6, "prov_vzw_test_mode_commercial_password"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/provisioning/MmsProvisionActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v8, "prov_vzw_test_mode_commercial_password"

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 148
    const-string v6, "prov_vzw_test_mode_lab_mmsc"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/provisioning/MmsProvisionActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v8, "prov_vzw_test_mode_lab_mmsc"

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 149
    const-string v6, "prov_vzw_test_mode_lab_uid"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/provisioning/MmsProvisionActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v8, "prov_vzw_test_mode_lab_uid"

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 150
    const-string v6, "prov_vzw_test_mode_lab_password"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/provisioning/MmsProvisionActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v8, "prov_vzw_test_mode_lab_password"

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 151
    const-string v6, "prov_vzw_test_mode_domestic_mmsc"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/provisioning/MmsProvisionActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v8, "prov_vzw_test_mode_domestic_mmsc"

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 152
    const-string v6, "prov_vzw_test_mode_domestic_uid"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/provisioning/MmsProvisionActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v8, "prov_vzw_test_mode_domestic_uid"

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 153
    const-string v6, "prov_vzw_test_mode_domestic_password"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/provisioning/MmsProvisionActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v8, "prov_vzw_test_mode_domestic_password"

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 155
    :cond_3
    return-void

    .line 104
    .end local v1           #editTextPrefs:Landroid/preference/EditTextPreference;
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v3           #sales_code:Ljava/lang/String;
    .end local v5           #transactionSettings:Lcom/android/mms/transaction/TransactionSettings;
    :cond_4
    invoke-virtual {v0, v11}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 105
    const-string v6, "prov_uap_current_key"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    const-string v7, "UA change possible"

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 17
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 166
    const-string v12, "prov_transaction_log_key"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 167
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/provisioning/MmsProvisionActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v13, "prov_transaction_log_key"

    const/4 v14, 0x1

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    invoke-static {v12}, Lcom/android/mms/MmsConfig;->setTransactionLoggable(Z)V

    .line 168
    const-string v12, "MmsProvisioning"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Change Transaction Log enable to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/provisioning/MmsProvisionActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v15, "prov_transaction_log_key"

    const/16 v16, 0x1

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_0
    const-string v12, "prov_optional_field_attendance_key"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 173
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/provisioning/MmsProvisionActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v13, "prov_optional_field_attendance_key"

    const/4 v14, 0x0

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    invoke-static {v12}, Lcom/android/mms/MmsConfig;->setOptionalFieldAttendance(Z)V

    .line 174
    const-string v12, "MmsProvisioning"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Change optional field attendance to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/provisioning/MmsProvisionActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v15, "prov_optional_field_attendance_key"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :cond_1
    const-string v12, "prov_transaction_timeout_key"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 179
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/provisioning/MmsProvisionActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v13, "prov_transaction_timeout_key"

    const-string v14, "240"

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 180
    .local v6, timeout:Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Lcom/android/mms/MmsConfig;->setTransactionTimeout(I)V

    .line 181
    const-string v12, "MmsProvisioning"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Change transaction timeout to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .end local v6           #timeout:Ljava/lang/String;
    :cond_2
    const-string v12, "prov_uap_current_key"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 186
    const-string v12, "prov_uap_category_key"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    .line 187
    .local v2, alternativeCategory:Landroid/preference/PreferenceCategory;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/provisioning/MmsProvisionActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v13, "prov_uap_current_key"

    const/4 v14, 0x1

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_12

    .line 188
    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 189
    const-string v12, "prov_uap_current_key"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    const-string v13, "Current UA used"

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 192
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/provisioning/MmsProvisionActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v13, "prov_uastring_current_key"

    const-string v14, ""

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/mms/MmsConfig;->setUserAgent(Ljava/lang/String;)V

    .line 193
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 194
    const-string v12, "MmsProvisioning"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Set UA string: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/provisioning/MmsProvisionActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v15, "prov_uastring_current_key"

    const-string v16, ""

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/provisioning/MmsProvisionActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v13, "prov_uapurl_current_key"

    const-string v14, ""

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/mms/MmsConfig;->setUaProfUrl(Ljava/lang/String;)V

    .line 197
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 198
    const-string v12, "MmsProvisioning"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Set UAP url: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/provisioning/MmsProvisionActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v15, "prov_uapurl_current_key"

    const-string v16, ""

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    .end local v2           #alternativeCategory:Landroid/preference/PreferenceCategory;
    :cond_4
    :goto_0
    const-string v12, "prov_uastring_key"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 222
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/provisioning/MmsProvisionActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v13, "prov_uastring_key"

    const-string v14, ""

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/mms/MmsConfig;->setUserAgent(Ljava/lang/String;)V

    .line 223
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 224
    const-string v12, "MmsProvisioning"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Set UA string: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/provisioning/MmsProvisionActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v15, "prov_uastring_key"

    const-string v16, ""

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :cond_5
    const-string v12, "prov_uastring_key"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/provisioning/MmsProvisionActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v14, "prov_uastring_key"

    const-string v15, ""

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 229
    :cond_6
    const-string v12, "prov_uapurl_key"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 230
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/provisioning/MmsProvisionActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v13, "prov_uapurl_key"

    const-string v14, ""

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/mms/MmsConfig;->setUaProfUrl(Ljava/lang/String;)V

    .line 231
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 232
    const-string v12, "MmsProvisioning"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Set UAP url: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/provisioning/MmsProvisionActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v15, "prov_uapurl_key"

    const-string v16, ""

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    :cond_7
    const-string v12, "prov_uapurl_key"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/provisioning/MmsProvisionActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v14, "prov_uapurl_key"

    const-string v15, ""

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 237
    :cond_8
    const-string v12, "prov_uap_select_key"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 239
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f07001d

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    .line 240
    .local v7, uaItems:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f07001e

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .line 241
    .local v9, uaStrings:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f07001f

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 243
    .local v8, uaProfiles:[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    array-length v12, v7

    if-ge v5, v12, :cond_9

    .line 245
    aget-object v12, v7, v5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/provisioning/MmsProvisionActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v14, "prov_uap_select_key"

    const-string v15, ""

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_13

    .line 247
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/provisioning/MmsProvisionActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 248
    .local v4, editor:Landroid/content/SharedPreferences$Editor;
    const-string v12, "prov_uastring_key"

    aget-object v13, v9, v5

    invoke-interface {v4, v12, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 249
    const-string v12, "prov_uapurl_key"

    aget-object v13, v8, v5

    invoke-interface {v4, v12, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 250
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 252
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v12

    const-string v13, "prov_uastring_key"

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    .line 253
    .local v3, editTextPrefs:Landroid/preference/EditTextPreference;
    aget-object v12, v9, v5

    invoke-virtual {v3, v12}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 254
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v12

    const-string v13, "prov_uapurl_key"

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .end local v3           #editTextPrefs:Landroid/preference/EditTextPreference;
    check-cast v3, Landroid/preference/EditTextPreference;

    .line 255
    .restart local v3       #editTextPrefs:Landroid/preference/EditTextPreference;
    aget-object v12, v8, v5

    invoke-virtual {v3, v12}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 260
    .end local v3           #editTextPrefs:Landroid/preference/EditTextPreference;
    .end local v4           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_9
    const-string v12, "prov_uastring_key"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/provisioning/MmsProvisionActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v14, "prov_uastring_key"

    const-string v15, ""

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 261
    const-string v12, "prov_uapurl_key"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/provisioning/MmsProvisionActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v14, "prov_uapurl_key"

    const-string v15, ""

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 265
    .end local v5           #i:I
    .end local v7           #uaItems:[Ljava/lang/String;
    .end local v8           #uaProfiles:[Ljava/lang/String;
    .end local v9           #uaStrings:[Ljava/lang/String;
    :cond_a
    const-string v12, "prov_mmsc_key"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 266
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 267
    .local v10, values:Landroid/content/ContentValues;
    const-string v12, "mmsc"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/provisioning/MmsProvisionActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v14, "prov_mmsc_key"

    const-string v15, ""

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const-string v11, "current = 1 AND mmsc IS NOT NULL"

    .line 269
    .local v11, where:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    sget-object v13, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v10, v11, v14}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 271
    const-string v12, "prov_mmsc_key"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/provisioning/MmsProvisionActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v14, "prov_mmsc_key"

    const-string v15, ""

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 272
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v12

    const-string v13, "prov_mmsc_key"

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    .line 273
    .restart local v3       #editTextPrefs:Landroid/preference/EditTextPreference;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/provisioning/MmsProvisionActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v13, "prov_mmsc_key"

    const-string v14, ""

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 277
    .end local v3           #editTextPrefs:Landroid/preference/EditTextPreference;
    .end local v10           #values:Landroid/content/ContentValues;
    .end local v11           #where:Ljava/lang/String;
    :cond_b
    const-string v12, "prov_mmsc_proxy_key"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 278
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 279
    .restart local v10       #values:Landroid/content/ContentValues;
    const-string v12, "mmsproxy"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/provisioning/MmsProvisionActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v14, "prov_mmsc_proxy_key"

    const-string v15, ""

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string v11, "current = 1 AND mmsc IS NOT NULL"

    .line 281
    .restart local v11       #where:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    sget-object v13, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v10, v11, v14}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 283
    const-string v12, "prov_mmsc_proxy_key"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/provisioning/MmsProvisionActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v14, "prov_mmsc_proxy_key"

    const-string v15, ""

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 284
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v12

    const-string v13, "prov_mmsc_proxy_key"

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    .line 285
    .restart local v3       #editTextPrefs:Landroid/preference/EditTextPreference;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/provisioning/MmsProvisionActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v13, "prov_mmsc_proxy_key"

    const-string v14, ""

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 289
    .end local v3           #editTextPrefs:Landroid/preference/EditTextPreference;
    .end local v10           #values:Landroid/content/ContentValues;
    .end local v11           #where:Ljava/lang/String;
    :cond_c
    const-string v12, "prov_mmsc_port_key"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 290
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 291
    .restart local v10       #values:Landroid/content/ContentValues;
    const-string v12, "mmsport"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/provisioning/MmsProvisionActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v14, "prov_mmsc_port_key"

    const-string v15, ""

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string v11, "current = 1 AND mmsc IS NOT NULL"

    .line 293
    .restart local v11       #where:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    sget-object v13, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v10, v11, v14}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 295
    const-string v12, "prov_mmsc_port_key"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/provisioning/MmsProvisionActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v14, "prov_mmsc_port_key"

    const-string v15, ""

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 296
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v12

    const-string v13, "prov_mmsc_port_key"

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    .line 297
    .restart local v3       #editTextPrefs:Landroid/preference/EditTextPreference;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/provisioning/MmsProvisionActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v13, "prov_mmsc_port_key"

    const-string v14, ""

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 301
    .end local v3           #editTextPrefs:Landroid/preference/EditTextPreference;
    .end local v10           #values:Landroid/content/ContentValues;
    .end local v11           #where:Ljava/lang/String;
    :cond_d
    const-string v12, "prov_vzw_test_mode_select_key"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 303
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 305
    .restart local v10       #values:Landroid/content/ContentValues;
    const-string v12, "commercial"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/provisioning/MmsProvisionActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v14, "prov_vzw_test_mode_select_key"

    const-string v15, ""

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_14

    .line 306
    const-string v12, "mmsc"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/provisioning/MmsProvisionActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v14, "prov_vzw_test_mode_commercial_mmsc"

    const-string v15, ""

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const-string v12, "user"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/provisioning/MmsProvisionActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v14, "prov_vzw_test_mode_commercial_uid"

    const-string v15, ""

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    const-string v12, "password"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/provisioning/MmsProvisionActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v14, "prov_vzw_test_mode_commercial_password"

    const-string v15, ""

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    :cond_e
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    sget-object v13, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v14, "apn=\'VZWAPP\'"

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v10, v14, v15}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 322
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/provisioning/MmsProvisionActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v14, ""

    move-object/from16 v0, p2

    invoke-interface {v13, v0, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 325
    .end local v10           #values:Landroid/content/ContentValues;
    :cond_f
    const-string v12, "prov_vzw_test_mode_commercial_mmsc"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_10

    const-string v12, "prov_vzw_test_mode_commercial_uid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_10

    const-string v12, "prov_vzw_test_mode_commercial_password"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_10

    const-string v12, "prov_vzw_test_mode_lab_mmsc"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_10

    const-string v12, "prov_vzw_test_mode_lab_uid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_10

    const-string v12, "prov_vzw_test_mode_lab_password"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_10

    const-string v12, "prov_vzw_test_mode_domestic_mmsc"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_10

    const-string v12, "prov_vzw_test_mode_domestic_uid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_10

    const-string v12, "prov_vzw_test_mode_domestic_password"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 334
    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/provisioning/MmsProvisionActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v14, ""

    move-object/from16 v0, p2

    invoke-interface {v13, v0, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 336
    :cond_11
    return-void

    .line 201
    .restart local v2       #alternativeCategory:Landroid/preference/PreferenceCategory;
    :cond_12
    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 202
    const-string v12, "prov_uap_current_key"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    const-string v13, "UA change possible"

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 205
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/provisioning/MmsProvisionActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 206
    .restart local v4       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v12, "prov_uastring_key"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/provisioning/MmsProvisionActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v14, "prov_uastring_current_key"

    const-string v15, ""

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v4, v12, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 207
    const-string v12, "prov_uapurl_key"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/provisioning/MmsProvisionActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v14, "prov_uapurl_current_key"

    const-string v15, ""

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v4, v12, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 208
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 210
    const-string v12, "prov_uastring_key"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/provisioning/MmsProvisionActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v14, "prov_uastring_key"

    const-string v15, ""

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 211
    const-string v12, "prov_uapurl_key"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/provisioning/MmsProvisionActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v14, "prov_uapurl_key"

    const-string v15, ""

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 213
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v12

    const-string v13, "prov_uastring_key"

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/EditTextPreference;

    .line 214
    .restart local v3       #editTextPrefs:Landroid/preference/EditTextPreference;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/provisioning/MmsProvisionActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v13, "prov_uastring_key"

    const-string v14, ""

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 215
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v12

    const-string v13, "prov_uapurl_key"

    invoke-virtual {v12, v13}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .end local v3           #editTextPrefs:Landroid/preference/EditTextPreference;
    check-cast v3, Landroid/preference/EditTextPreference;

    .line 216
    .restart local v3       #editTextPrefs:Landroid/preference/EditTextPreference;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/provisioning/MmsProvisionActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v13, "prov_uapurl_key"

    const-string v14, ""

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 243
    .end local v2           #alternativeCategory:Landroid/preference/PreferenceCategory;
    .end local v3           #editTextPrefs:Landroid/preference/EditTextPreference;
    .end local v4           #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v5       #i:I
    .restart local v7       #uaItems:[Ljava/lang/String;
    .restart local v8       #uaProfiles:[Ljava/lang/String;
    .restart local v9       #uaStrings:[Ljava/lang/String;
    :cond_13
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 310
    .end local v5           #i:I
    .end local v7           #uaItems:[Ljava/lang/String;
    .end local v8           #uaProfiles:[Ljava/lang/String;
    .end local v9           #uaStrings:[Ljava/lang/String;
    .restart local v10       #values:Landroid/content/ContentValues;
    :cond_14
    const-string v12, "lab"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/provisioning/MmsProvisionActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v14, "prov_vzw_test_mode_select_key"

    const-string v15, ""

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_15

    .line 311
    const-string v12, "mmsc"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/provisioning/MmsProvisionActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v14, "prov_vzw_test_mode_lab_mmsc"

    const-string v15, ""

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const-string v12, "user"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/provisioning/MmsProvisionActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v14, "prov_vzw_test_mode_lab_uid"

    const-string v15, ""

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const-string v12, "password"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/provisioning/MmsProvisionActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v14, "prov_vzw_test_mode_lab_password"

    const-string v15, ""

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 315
    :cond_15
    const-string v12, "domestic"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/provisioning/MmsProvisionActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v14, "prov_vzw_test_mode_select_key"

    const-string v15, ""

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 316
    const-string v12, "mmsc"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/provisioning/MmsProvisionActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v14, "prov_vzw_test_mode_domestic_mmsc"

    const-string v15, ""

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string v12, "user"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/provisioning/MmsProvisionActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v14, "prov_vzw_test_mode_domestic_uid"

    const-string v15, ""

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string v12, "password"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/provisioning/MmsProvisionActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v14, "prov_vzw_test_mode_domestic_password"

    const-string v15, ""

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method
