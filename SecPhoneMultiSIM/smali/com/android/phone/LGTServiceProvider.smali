.class public Lcom/android/phone/LGTServiceProvider;
.super Landroid/preference/PreferenceActivity;
.source "LGTServiceProvider.java"


# static fields
.field private static final DBG:Z

.field private static mSelect:I


# instance fields
.field private mAutoSelect:Landroid/preference/CheckBoxPreference;

.field private mCard:Lcom/android/internal/telephony/IccCard;

.field private mEfRoaming:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mRoamingLgt:Ljava/lang/String;

.field private mRoamingSponsor:Ljava/lang/String;

.field private mSearchButton:Landroid/preference/CheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 56
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/phone/LGTServiceProvider;->DBG:Z

    .line 82
    sput v1, Lcom/android/phone/LGTServiceProvider;->mSelect:I

    return-void

    :cond_0
    move v0, v1

    .line 56
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 76
    iput-object v0, p0, Lcom/android/phone/LGTServiceProvider;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 78
    iput-object v0, p0, Lcom/android/phone/LGTServiceProvider;->mEfRoaming:Ljava/lang/String;

    .line 84
    iput-object v0, p0, Lcom/android/phone/LGTServiceProvider;->mRoamingLgt:Ljava/lang/String;

    .line 85
    iput-object v0, p0, Lcom/android/phone/LGTServiceProvider;->mRoamingSponsor:Ljava/lang/String;

    .line 362
    new-instance v0, Lcom/android/phone/LGTServiceProvider$3;

    invoke-direct {v0, p0}, Lcom/android/phone/LGTServiceProvider$3;-><init>(Lcom/android/phone/LGTServiceProvider;)V

    iput-object v0, p0, Lcom/android/phone/LGTServiceProvider;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/LGTServiceProvider;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/phone/LGTServiceProvider;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/LGTServiceProvider;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/phone/LGTServiceProvider;->mEfRoaming:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/LGTServiceProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/phone/LGTServiceProvider;->updateScreen()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/LGTServiceProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/phone/LGTServiceProvider;->reboot()V

    return-void
.end method

.method private checkAuto(Z)V
    .locals 2
    .parameter "setAuto"

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/phone/LGTServiceProvider;->mAutoSelect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 250
    iget-object v1, p0, Lcom/android/phone/LGTServiceProvider;->mSearchButton:Landroid/preference/CheckBoxPreference;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 251
    return-void

    .line 250
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getAutoTitle()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 200
    const-string v7, "phone"

    invoke-virtual {p0, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 201
    .local v6, telephonyManager:Landroid/telephony/TelephonyManager;
    const-string v1, ""

    .line 202
    .local v1, result:Ljava/lang/String;
    const/4 v7, 0x3

    new-array v5, v7, [Ljava/lang/String;

    .line 203
    .local v5, sponIMSI:[Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 204
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getSponImsi()[Ljava/lang/String;

    move-result-object v5

    .line 211
    :goto_0
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, imsi:Ljava/lang/String;
    aget-object v2, v5, v8

    .line 213
    .local v2, spon1:Ljava/lang/String;
    aget-object v3, v5, v9

    .line 214
    .local v3, spon2:Ljava/lang/String;
    aget-object v4, v5, v10

    .line 215
    .local v4, spon3:Ljava/lang/String;
    sget-boolean v7, Lcom/android/phone/LGTServiceProvider;->DBG:Z

    if-eqz v7, :cond_0

    .line 216
    const-string v7, "LGTServiceProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "imsi = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", spon1 = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", spon2 = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", spon3 = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_0
    if-eqz v0, :cond_1

    const-string v7, "45006"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 219
    const-string v1, "LG U+"

    .line 221
    :cond_1
    if-eqz v2, :cond_4

    const-string v7, "imsi"

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 222
    invoke-direct {p0, v2}, Lcom/android/phone/LGTServiceProvider;->getToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 228
    :cond_2
    :goto_1
    const-string v7, "LGTServiceProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "result = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    return-object v1

    .line 206
    .end local v0           #imsi:Ljava/lang/String;
    .end local v2           #spon1:Ljava/lang/String;
    .end local v3           #spon2:Ljava/lang/String;
    .end local v4           #spon3:Ljava/lang/String;
    :cond_3
    const-string v7, ""

    aput-object v7, v5, v8

    .line 207
    const-string v7, ""

    aput-object v7, v5, v9

    .line 208
    const-string v7, ""

    aput-object v7, v5, v10

    goto/16 :goto_0

    .line 223
    .restart local v0       #imsi:Ljava/lang/String;
    .restart local v2       #spon1:Ljava/lang/String;
    .restart local v3       #spon2:Ljava/lang/String;
    .restart local v4       #spon3:Ljava/lang/String;
    :cond_4
    if-eqz v3, :cond_5

    const-string v7, "imsi"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 224
    invoke-direct {p0, v3}, Lcom/android/phone/LGTServiceProvider;->getToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 225
    :cond_5
    if-eqz v4, :cond_2

    const-string v7, "imsi"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 226
    invoke-direct {p0, v4}, Lcom/android/phone/LGTServiceProvider;->getToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private getToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"

    .prologue
    .line 388
    :try_start_0
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ";"

    invoke-direct {v1, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    .local v1, str1:Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 390
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    move-object v2, p1

    .line 394
    .end local v1           #str1:Ljava/util/StringTokenizer;
    :goto_0
    return-object v2

    .line 391
    :catch_0
    move-exception v0

    .line 392
    .local v0, e:Ljava/lang/Exception;
    const-string v2, ""

    goto :goto_0
.end method

.method private reboot()V
    .locals 4

    .prologue
    .line 398
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 399
    .local v0, mRebootHandler:Landroid/os/Handler;
    new-instance v1, Lcom/android/phone/LGTServiceProvider$4;

    invoke-direct {v1, p0}, Lcom/android/phone/LGTServiceProvider$4;-><init>(Lcom/android/phone/LGTServiceProvider;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 405
    return-void
.end method

.method private updateScreen()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 110
    const-string v8, "gsm.sim.roaming"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, efRoaming:Ljava/lang/String;
    const-string v7, ""

    .line 112
    .local v7, title:Ljava/lang/String;
    const-string v5, ""

    .line 113
    .local v5, summary:Ljava/lang/String;
    const-string v8, "00"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v8, v9

    :goto_0
    sput v8, Lcom/android/phone/LGTServiceProvider;->mSelect:I

    .line 114
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v11, 0x7f0e05dc

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/LGTServiceProvider;->mRoamingLgt:Ljava/lang/String;

    .line 115
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v11, 0x7f0e05dd

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/LGTServiceProvider;->mRoamingSponsor:Ljava/lang/String;

    .line 117
    const-string v8, "phone"

    invoke-virtual {p0, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 118
    .local v6, telephonyManager:Landroid/telephony/TelephonyManager;
    const/4 v8, 0x3

    new-array v3, v8, [Ljava/lang/String;

    .line 119
    .local v3, sponIMSI:[Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 120
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getSponImsi()[Ljava/lang/String;

    move-result-object v3

    .line 127
    :goto_1
    sget v8, Lcom/android/phone/LGTServiceProvider;->mSelect:I

    packed-switch v8, :pswitch_data_0

    .line 194
    invoke-direct {p0, v10}, Lcom/android/phone/LGTServiceProvider;->checkAuto(Z)V

    .line 197
    :goto_2
    return-void

    .end local v3           #sponIMSI:[Ljava/lang/String;
    .end local v6           #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_0
    move v8, v10

    .line 113
    goto :goto_0

    .line 122
    .restart local v3       #sponIMSI:[Ljava/lang/String;
    .restart local v6       #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_1
    const-string v8, ""

    aput-object v8, v3, v9

    .line 123
    const-string v8, ""

    aput-object v8, v3, v10

    .line 124
    const-string v8, ""

    aput-object v8, v3, v12

    goto :goto_1

    .line 129
    :pswitch_0
    invoke-direct {p0, v10}, Lcom/android/phone/LGTServiceProvider;->checkAuto(Z)V

    .line 130
    invoke-direct {p0}, Lcom/android/phone/LGTServiceProvider;->getAutoTitle()Ljava/lang/String;

    move-result-object v7

    .line 131
    move-object v5, v7

    .line 132
    const-string v8, "LG"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 133
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/LGTServiceProvider;->mRoamingLgt:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 137
    :goto_3
    const-string v8, "LGTServiceProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Final AUTO title = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const-string v8, "selected_provider_key"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 139
    const-string v8, "selected_provider_key"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 135
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/LGTServiceProvider;->mRoamingSponsor:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 148
    :pswitch_1
    invoke-direct {p0, v9}, Lcom/android/phone/LGTServiceProvider;->checkAuto(Z)V

    .line 151
    const-string v8, "10"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 152
    const-string v7, "01;LG U+"

    .line 173
    :goto_4
    :try_start_0
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v8, ";"

    invoke-direct {v4, v7, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .local v4, str1:Ljava/util/StringTokenizer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 175
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 179
    .end local v4           #str1:Ljava/util/StringTokenizer;
    :goto_5
    move-object v5, v7

    .line 180
    const-string v8, "LG"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 181
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/LGTServiceProvider;->mRoamingLgt:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 185
    :goto_6
    const-string v8, "LGTServiceProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Final title = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const-string v8, "selected_provider_key"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 187
    const-string v8, "selected_provider_key"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 153
    :cond_3
    const-string v8, "11"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 154
    aget-object v7, v3, v9

    goto :goto_4

    .line 155
    :cond_4
    const-string v8, "12"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 156
    aget-object v7, v3, v10

    goto :goto_4

    .line 157
    :cond_5
    const-string v8, "13"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 158
    aget-object v7, v3, v12

    goto :goto_4

    .line 160
    :cond_6
    const-string v8, "LGTServiceProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "UnKnown case efRoaming = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    .line 162
    .local v2, imsi:Ljava/lang/String;
    if-eqz v2, :cond_7

    const-string v8, "45006"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 163
    const-string v5, "LG U+"

    .line 164
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/LGTServiceProvider;->mRoamingLgt:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 167
    :cond_7
    const-string v8, "selected_provider_key"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 168
    const-string v8, "selected_provider_key"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 176
    .end local v2           #imsi:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 177
    .local v0, e:Ljava/lang/Exception;
    const-string v8, "LGTServiceProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "title = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 183
    .end local v0           #e:Ljava/lang/Exception;
    :cond_8
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/LGTServiceProvider;->mRoamingSponsor:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_6

    .line 127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    const-string v2, "gsm.sim.roaming"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, efRoaming:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 92
    .local v1, isSetEfRoaming:Ljava/lang/Boolean;
    const-string v2, "LGTServiceProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "efRoaming = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isSetEfRoaming = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const v2, 0x7f060035

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 96
    const-string v2, "button_srch_provider_key"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/LGTServiceProvider;->mSearchButton:Landroid/preference/CheckBoxPreference;

    .line 97
    const-string v2, "button_auto_select_key"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/LGTServiceProvider;->mAutoSelect:Landroid/preference/CheckBoxPreference;

    .line 98
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/LGTServiceProvider;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 99
    iget-object v2, p0, Lcom/android/phone/LGTServiceProvider;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/LGTServiceProvider;->mCard:Lcom/android/internal/telephony/IccCard;

    .line 100
    return-void

    .line 91
    .end local v1           #isSetEfRoaming:Ljava/lang/Boolean;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .parameter "id"

    .prologue
    .line 350
    packed-switch p1, :pswitch_data_0

    .line 359
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 352
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 353
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0e060a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 354
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 355
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 350
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .parameter
    .parameter

    .prologue
    const/16 v8, 0x64

    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 260
    const-string v0, "ril.initPB"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 261
    const-string v1, "LGTServiceProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ril.initPB = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    const v0, 0x7f0e0606

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 330
    :cond_0
    :goto_0
    return v7

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/android/phone/LGTServiceProvider;->mAutoSelect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 268
    sput v7, Lcom/android/phone/LGTServiceProvider;->mSelect:I

    .line 270
    invoke-direct {p0, v4}, Lcom/android/phone/LGTServiceProvider;->checkAuto(Z)V

    .line 272
    iget-object v0, p0, Lcom/android/phone/LGTServiceProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 273
    new-array v1, v4, [B

    .line 274
    aput-byte v7, v1, v7

    .line 275
    const-string v2, "00"

    iput-object v2, p0, Lcom/android/phone/LGTServiceProvider;->mEfRoaming:Ljava/lang/String;

    .line 280
    :try_start_0
    const-class v2, Lcom/android/internal/telephony/IccCard;

    const-string v3, "setRoaming"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 281
    iget-object v3, p0, Lcom/android/phone/LGTServiceProvider;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v0, v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :goto_1
    invoke-virtual {p0, v8}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 295
    :cond_2
    iget-object v0, p0, Lcom/android/phone/LGTServiceProvider;->mSearchButton:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/android/phone/LGTServiceProvider;->mSearchButton:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 301
    iget-object v0, p0, Lcom/android/phone/LGTServiceProvider;->mSearchButton:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v7}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 305
    :goto_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 306
    const v1, 0x7f0e05d5

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 307
    const v1, 0x7f0e0607

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 308
    const v1, 0x7f0e0608

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/phone/LGTServiceProvider$1;

    invoke-direct {v2, p0}, Lcom/android/phone/LGTServiceProvider$1;-><init>(Lcom/android/phone/LGTServiceProvider;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 318
    const v1, 0x7f0e0609

    new-instance v2, Lcom/android/phone/LGTServiceProvider$2;

    invoke-direct {v2, p0}, Lcom/android/phone/LGTServiceProvider$2;-><init>(Lcom/android/phone/LGTServiceProvider;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 327
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 303
    :cond_3
    iget-object v0, p0, Lcom/android/phone/LGTServiceProvider;->mSearchButton:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_2

    .line 285
    :catch_0
    move-exception v0

    goto :goto_1

    .line 284
    :catch_1
    move-exception v0

    goto :goto_1

    .line 283
    :catch_2
    move-exception v0

    goto :goto_1

    .line 282
    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/android/phone/LGTServiceProvider;->updateScreen()V

    .line 106
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 107
    return-void
.end method
