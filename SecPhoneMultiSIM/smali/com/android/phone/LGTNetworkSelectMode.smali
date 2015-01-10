.class public Lcom/android/phone/LGTNetworkSelectMode;
.super Landroid/preference/PreferenceActivity;
.source "LGTNetworkSelectMode.java"


# static fields
.field private static mSelect:I


# instance fields
.field private auto_select:Landroid/preference/CheckBoxPreference;

.field private final mHandler:Landroid/os/Handler;

.field private mManualMode:Z

.field mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneInterfaceManager:Lcom/android/phone/PhoneInterfaceManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private manual_select:Landroid/preference/CheckBoxPreference;

.field private msg2:Landroid/os/Message;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    sput v0, Lcom/android/phone/LGTNetworkSelectMode;->mSelect:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/LGTNetworkSelectMode;->msg2:Landroid/os/Message;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/LGTNetworkSelectMode;->mManualMode:Z

    .line 56
    new-instance v0, Lcom/android/phone/LGTNetworkSelectMode$1;

    invoke-direct {v0, p0}, Lcom/android/phone/LGTNetworkSelectMode$1;-><init>(Lcom/android/phone/LGTNetworkSelectMode;)V

    iput-object v0, p0, Lcom/android/phone/LGTNetworkSelectMode;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/LGTNetworkSelectMode;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/phone/LGTNetworkSelectMode;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/LGTNetworkSelectMode;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/phone/LGTNetworkSelectMode;->updateScreen()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/phone/LGTNetworkSelectMode;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/android/phone/LGTNetworkSelectMode;->mManualMode:Z

    return p1
.end method

.method private checkAuto(Z)V
    .locals 3
    .parameter "setAuto"

    .prologue
    .line 184
    const-string v0, "LGTNetworkSelectMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkAuto : setAuto = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v0, p0, Lcom/android/phone/LGTNetworkSelectMode;->auto_select:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 186
    iget-object v1, p0, Lcom/android/phone/LGTNetworkSelectMode;->manual_select:Landroid/preference/CheckBoxPreference;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 187
    return-void

    .line 186
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final isNotRegisteredOnNetwork()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 287
    const-string v3, "LGTNetworkSelectMode"

    const-string v4, "isNotRegisteredOnNetwork() -------- start"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const-string v3, "ril.skt.network_regist"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 289
    .local v1, rilTemp:Ljava/lang/String;
    const-string v3, "LGTNetworkSelectMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isNotRegisteredOnNetwork() - rilTemp.length() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 291
    const/4 v3, 0x6

    const/4 v4, 0x7

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, ril:Ljava/lang/String;
    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "5"

    invoke-virtual {v0, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 294
    const-string v3, "LGTNetworkSelectMode"

    const-string v4, "isNotRegisteredOnNetwork() - compare routine  return true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    .end local v0           #ril:Ljava/lang/String;
    :goto_0
    return v2

    .line 297
    .restart local v0       #ril:Ljava/lang/String;
    :cond_0
    const-string v2, "LGTNetworkSelectMode"

    const-string v3, "isNotRegisteredOnNetwork() - compare routine  return false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const/4 v2, 0x0

    goto :goto_0

    .line 301
    .end local v0           #ril:Ljava/lang/String;
    :cond_1
    const-string v3, "LGTNetworkSelectMode"

    const-string v4, "isNotRegisteredOnNetwork() -------- end"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private networkSelectDialog()V
    .locals 3

    .prologue
    .line 210
    const-string v1, "LGTNetworkSelectMode"

    const-string v2, "networkSelectDialog() --------- start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 212
    .local v0, networkSelectDlg:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0e05d8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 213
    const v1, 0x7f0e05e8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 214
    const v1, 0x7f0e05e9

    new-instance v2, Lcom/android/phone/LGTNetworkSelectMode$2;

    invoke-direct {v2, p0}, Lcom/android/phone/LGTNetworkSelectMode$2;-><init>(Lcom/android/phone/LGTNetworkSelectMode;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 223
    const v1, 0x7f0e05d3

    new-instance v2, Lcom/android/phone/LGTNetworkSelectMode$3;

    invoke-direct {v2, p0}, Lcom/android/phone/LGTNetworkSelectMode$3;-><init>(Lcom/android/phone/LGTNetworkSelectMode;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 229
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 230
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 231
    return-void
.end method

.method private updateScreen()V
    .locals 13

    .prologue
    const v12, 0x7f0e05e4

    const v11, 0x7f0e05e2

    const/4 v10, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 234
    const-string v3, "LGTNetworkSelectMode"

    const-string v6, "updateScreen() -------- start"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iput-boolean v5, p0, Lcom/android/phone/LGTNetworkSelectMode;->mManualMode:Z

    .line 236
    iget-object v3, p0, Lcom/android/phone/LGTNetworkSelectMode;->auto_select:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 237
    iget-object v3, p0, Lcom/android/phone/LGTNetworkSelectMode;->manual_select:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 238
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    .line 239
    .local v2, operatorNumeric:Ljava/lang/String;
    const/4 v0, 0x0

    .line 240
    .local v0, cOperatorName:Ljava/lang/String;
    const/4 v1, 0x0

    .line 241
    .local v1, cOperatorSummary:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/phone/LGTNetworkSelectMode;->isNotRegisteredOnNetwork()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 242
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 243
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0e05ea

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v0, v7, v5

    invoke-virtual {v2, v5, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    const/4 v8, 0x2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v2, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v3, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 245
    const-string v3, "LGTNetworkSelectMode"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cOperatorName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const-string v3, "LGTNetworkSelectMode"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mcc = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2, v5, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const-string v3, "LGTNetworkSelectMode"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mnc = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_0
    iget-object v3, p0, Lcom/android/phone/LGTNetworkSelectMode;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    :goto_0
    sput v3, Lcom/android/phone/LGTNetworkSelectMode;->mSelect:I

    .line 250
    const-string v3, "LGTNetworkSelectMode"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mSelect = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/android/phone/LGTNetworkSelectMode;->mSelect:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    sget v3, Lcom/android/phone/LGTNetworkSelectMode;->mSelect:I

    packed-switch v3, :pswitch_data_0

    .line 279
    const-string v3, "LGTNetworkSelectMode"

    const-string v5, "updateScreen() - mSelect - DEFAULT"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-direct {p0, v4}, Lcom/android/phone/LGTNetworkSelectMode;->checkAuto(Z)V

    .line 283
    :goto_1
    const-string v3, "LGTNetworkSelectMode"

    const-string v4, "updateScreen() -------- end"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    return-void

    :cond_1
    move v3, v5

    .line 249
    goto :goto_0

    .line 253
    :pswitch_0
    const-string v3, "LGTNetworkSelectMode"

    const-string v5, "updateScreen() - mSelect - AUTO"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-direct {p0, v4}, Lcom/android/phone/LGTNetworkSelectMode;->checkAuto(Z)V

    .line 255
    if-eqz v1, :cond_2

    .line 256
    const-string v3, "LGTNetworkSelectMode"

    const-string v4, "updateScreen() - mSelect - AUTO - cOperatorSummary is not null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v3, p0, Lcom/android/phone/LGTNetworkSelectMode;->auto_select:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v3, p0, Lcom/android/phone/LGTNetworkSelectMode;->manual_select:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v12}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 261
    :cond_2
    iget-object v3, p0, Lcom/android/phone/LGTNetworkSelectMode;->auto_select:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v11}, Landroid/preference/Preference;->setSummary(I)V

    .line 262
    iget-object v3, p0, Lcom/android/phone/LGTNetworkSelectMode;->manual_select:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v12}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 266
    :pswitch_1
    const-string v3, "LGTNetworkSelectMode"

    const-string v4, "updateScreen() - mSelect - MANUAL"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-direct {p0, v5}, Lcom/android/phone/LGTNetworkSelectMode;->checkAuto(Z)V

    .line 268
    if-eqz v1, :cond_3

    .line 269
    const-string v3, "LGTNetworkSelectMode"

    const-string v4, "updateScreen() - mSelect - MANUAL - cOperatorSummary is not null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v3, p0, Lcom/android/phone/LGTNetworkSelectMode;->manual_select:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v3, p0, Lcom/android/phone/LGTNetworkSelectMode;->auto_select:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v11}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 274
    :cond_3
    iget-object v3, p0, Lcom/android/phone/LGTNetworkSelectMode;->auto_select:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v11}, Landroid/preference/Preference;->setSummary(I)V

    .line 275
    iget-object v3, p0, Lcom/android/phone/LGTNetworkSelectMode;->manual_select:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v12}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 251
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 96
    const-string v0, "LGTNetworkSelectMode"

    const-string v1, "onCreate() ---------- start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 98
    const v0, 0x7f060031

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 99
    const-string v0, "auto_select_key"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/LGTNetworkSelectMode;->auto_select:Landroid/preference/CheckBoxPreference;

    .line 100
    const-string v0, "manual_select_key"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/LGTNetworkSelectMode;->manual_select:Landroid/preference/CheckBoxPreference;

    .line 101
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:[Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/phone/LGTNetworkSelectMode;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 102
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/phone/LGTNetworkSelectMode;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 104
    iget-object v0, p0, Lcom/android/phone/LGTNetworkSelectMode;->mPhoneInterfaceManager:Lcom/android/phone/PhoneInterfaceManager;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/phone/LGTNetworkSelectMode;->mPhoneInterfaceManager:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManager;->disableDataConnectivity()Z

    .line 107
    :cond_0
    const-string v0, "LGTNetworkSelectMode"

    const-string v1, "onCreate() ---------- end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 191
    const-string v1, "LGTNetworkSelectMode"

    const-string v2, "onCreateDialog() --------- start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 193
    .local v0, dialog:Landroid/app/ProgressDialog;
    packed-switch p1, :pswitch_data_0

    .line 205
    :goto_0
    const-string v1, "LGTNetworkSelectMode"

    const-string v2, "onCreateDialog() --------- end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    return-object v0

    .line 200
    :pswitch_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e05e7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 201
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 202
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    goto :goto_0

    .line 193
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 171
    const-string v0, "LGTNetworkSelectMode"

    const-string v1, "onPause()....."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const-string v0, "LGTNetworkSelectMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause() --- auto_select.isChecked() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/LGTNetworkSelectMode;->auto_select:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const-string v0, "LGTNetworkSelectMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause() --- manual_select.isChecked() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/LGTNetworkSelectMode;->manual_select:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 175
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 125
    iget-object v3, p0, Lcom/android/phone/LGTNetworkSelectMode;->auto_select:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 127
    const-string v3, "LGTNetworkSelectMode"

    const-string v4, "onPreferenceTreeClick() --- auto_select click"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const-string v3, "LGTNetworkSelectMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreferenceTreeClick() --- auto_select click  isChecked() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/LGTNetworkSelectMode;->auto_select:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v3, p0, Lcom/android/phone/LGTNetworkSelectMode;->auto_select:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 130
    iget-object v3, p0, Lcom/android/phone/LGTNetworkSelectMode;->auto_select:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 134
    :goto_0
    const-string v2, "LGTNetworkSelectMode"

    const-string v3, "click Auto Select Mode ------- start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v2, p0, Lcom/android/phone/LGTNetworkSelectMode;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x12c

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 136
    .local v0, msg:Landroid/os/Message;
    const-string v2, "LGTNetworkSelectMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "msg.what = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "msg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const/16 v2, 0x64

    invoke-virtual {p0, v2}, Landroid/app/Activity;->showDialog(I)V

    .line 138
    iget-object v2, p0, Lcom/android/phone/LGTNetworkSelectMode;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/Phone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 139
    const-string v2, "LGTNetworkSelectMode"

    const-string v3, "click Auto Select Mode ------- end"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .end local v0           #msg:Landroid/os/Message;
    :goto_1
    return v1

    .line 132
    :cond_0
    iget-object v2, p0, Lcom/android/phone/LGTNetworkSelectMode;->auto_select:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 141
    :cond_1
    iget-object v3, p0, Lcom/android/phone/LGTNetworkSelectMode;->manual_select:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 142
    const-string v3, "LGTNetworkSelectMode"

    const-string v4, "onPreferenceTreeClick() --- manual_select click"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const-string v3, "LGTNetworkSelectMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreferenceTreeClick() --- manual_select click  isChecked() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/LGTNetworkSelectMode;->manual_select:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v3, p0, Lcom/android/phone/LGTNetworkSelectMode;->manual_select:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 145
    iget-object v3, p0, Lcom/android/phone/LGTNetworkSelectMode;->manual_select:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 149
    :goto_2
    invoke-direct {p0}, Lcom/android/phone/LGTNetworkSelectMode;->networkSelectDialog()V

    goto :goto_1

    .line 147
    :cond_2
    iget-object v2, p0, Lcom/android/phone/LGTNetworkSelectMode;->manual_select:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_2

    .line 152
    :cond_3
    const-string v1, "LGTNetworkSelectMode"

    const-string v3, "onPreferenceTreeClick() --- else"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 153
    goto :goto_1
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 159
    const-string v1, "LGTNetworkSelectMode"

    const-string v2, "onResume()....."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const-string v1, "LGTNetworkSelectMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume() --- auto_select.isChecked() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/LGTNetworkSelectMode;->auto_select:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const-string v1, "LGTNetworkSelectMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume() --- manual_select.isChecked() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/LGTNetworkSelectMode;->manual_select:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 163
    iget-object v1, p0, Lcom/android/phone/LGTNetworkSelectMode;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    .line 164
    .local v0, state:I
    iget-object v1, p0, Lcom/android/phone/LGTNetworkSelectMode;->auto_select:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 165
    iget-object v1, p0, Lcom/android/phone/LGTNetworkSelectMode;->manual_select:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 166
    iget-object v1, p0, Lcom/android/phone/LGTNetworkSelectMode;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x2bc

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 167
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 179
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 180
    const-string v0, "LGTNetworkSelectMode"

    const-string v1, "[LGTNetworkSelectMode] onStop..............."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    return-void
.end method
