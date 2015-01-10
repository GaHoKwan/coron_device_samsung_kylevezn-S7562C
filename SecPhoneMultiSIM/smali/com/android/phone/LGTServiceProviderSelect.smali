.class public Lcom/android/phone/LGTServiceProviderSelect;
.super Landroid/preference/PreferenceActivity;
.source "LGTServiceProviderSelect.java"


# instance fields
.field public dialog:Landroid/app/ProgressDialog;

.field ef_sponimst1:Landroid/preference/Preference;

.field ef_sponimst2:Landroid/preference/Preference;

.field ef_sponimst3:Landroid/preference/Preference;

.field private mCard:Lcom/android/internal/telephony/IccCard;

.field private mEfRoaming:Ljava/lang/String;

.field private mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

.field private final mHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mRoamingLgt:Ljava/lang/String;

.field private mRoamingSponsor:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 53
    iput-object v0, p0, Lcom/android/phone/LGTServiceProviderSelect;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 55
    iput-object v0, p0, Lcom/android/phone/LGTServiceProviderSelect;->mEfRoaming:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/android/phone/LGTServiceProviderSelect;->mRoamingLgt:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/android/phone/LGTServiceProviderSelect;->mRoamingSponsor:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/android/phone/LGTServiceProviderSelect;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    .line 272
    new-instance v0, Lcom/android/phone/LGTServiceProviderSelect$1;

    invoke-direct {v0, p0}, Lcom/android/phone/LGTServiceProviderSelect$1;-><init>(Lcom/android/phone/LGTServiceProviderSelect;)V

    iput-object v0, p0, Lcom/android/phone/LGTServiceProviderSelect;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/LGTServiceProviderSelect;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/phone/LGTServiceProviderSelect;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/LGTServiceProviderSelect;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/phone/LGTServiceProviderSelect;->mEfRoaming:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/LGTServiceProviderSelect;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/phone/LGTServiceProviderSelect;->sendImsiStatusChangeNoti()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/LGTServiceProviderSelect;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/phone/LGTServiceProviderSelect;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/LGTServiceProviderSelect;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/phone/LGTServiceProviderSelect;->reboot()V

    return-void
.end method

.method private constructDialog()Landroid/app/ProgressDialog;
    .locals 3

    .prologue
    .line 260
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/phone/LGTServiceProviderSelect;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 261
    .local v0, pd:Landroid/app/ProgressDialog;
    const v1, 0x7f0e060b

    invoke-virtual {p0, v1}, Lcom/android/phone/LGTServiceProviderSelect;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 262
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 263
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 264
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d8

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 265
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 268
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 269
    return-object v0
.end method

.method private getTitleFromSummary(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "str"

    .prologue
    .line 116
    const-string v0, ""

    .line 117
    .local v0, result:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/phone/LGTServiceProviderSelect;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e05dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/LGTServiceProviderSelect;->mRoamingLgt:Ljava/lang/String;

    .line 118
    invoke-virtual {p0}, Lcom/android/phone/LGTServiceProviderSelect;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e05dd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/LGTServiceProviderSelect;->mRoamingSponsor:Ljava/lang/String;

    .line 119
    const-string v1, "LG"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/phone/LGTServiceProviderSelect;->mRoamingLgt:Ljava/lang/String;

    .line 124
    :goto_0
    return-object v0

    .line 122
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/LGTServiceProviderSelect;->mRoamingSponsor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"

    .prologue
    .line 248
    :try_start_0
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ";"

    invoke-direct {v1, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    .local v1, str1:Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 250
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    move-object v2, p1

    .line 254
    .end local v1           #str1:Ljava/util/StringTokenizer;
    :goto_0
    return-object v2

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, e:Ljava/lang/Exception;
    const-string v2, ""

    goto :goto_0
.end method

.method private reboot()V
    .locals 4

    .prologue
    .line 310
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 311
    .local v0, mRebootHandler:Landroid/os/Handler;
    new-instance v1, Lcom/android/phone/LGTServiceProviderSelect$2;

    invoke-direct {v1, p0}, Lcom/android/phone/LGTServiceProviderSelect$2;-><init>(Lcom/android/phone/LGTServiceProviderSelect;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 317
    return-void
.end method

.method private removeSpon(I)V
    .locals 2
    .parameter "sponNum"

    .prologue
    .line 128
    packed-switch p1, :pswitch_data_0

    .line 143
    :goto_0
    return-void

    .line 130
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/LGTServiceProviderSelect;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/LGTServiceProviderSelect;->ef_sponimst1:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 133
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/phone/LGTServiceProviderSelect;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/LGTServiceProviderSelect;->ef_sponimst2:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 136
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/phone/LGTServiceProviderSelect;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/LGTServiceProviderSelect;->ef_sponimst3:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 128
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private sendImsiStatusChangeNoti()V
    .locals 7

    .prologue
    .line 147
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 148
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 150
    .local v1, dos:Ljava/io/DataOutputStream;
    const-string v4, "LGTServiceProviderSelect"

    const-string v5, "sendImsiStatusChangeNoti!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const/4 v3, 0x5

    .line 153
    .local v3, fileSize:I
    const/16 v4, 0x16

    :try_start_0
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 154
    const/16 v4, 0x2f

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 155
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 156
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 161
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 166
    iget-object v4, p0, Lcom/android/phone/LGTServiceProviderSelect;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 167
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v2

    .line 163
    .local v2, e:Ljava/lang/Exception;
    goto :goto_0

    .line 157
    .end local v2           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 161
    .local v2, e:Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 162
    :catch_2
    move-exception v2

    .line 163
    .local v2, e:Ljava/lang/Exception;
    goto :goto_0

    .line 160
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 161
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 163
    throw v4

    .line 162
    :catch_3
    move-exception v2

    .line 163
    .restart local v2       #e:Ljava/lang/Exception;
    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 64
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const-string v7, "LGTServiceProviderSelect"

    const-string v8, "On Create!!!"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const-string v7, "phone"

    invoke-virtual {p0, v7}, Lcom/android/phone/LGTServiceProviderSelect;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 68
    .local v6, telephonyManager:Landroid/telephony/TelephonyManager;
    new-array v4, v12, [Ljava/lang/String;

    .line 69
    .local v4, sponIMSI:[Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 70
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getSponImsi()[Ljava/lang/String;

    move-result-object v4

    .line 77
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/LGTServiceProviderSelect;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 78
    new-instance v7, Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-direct {v7, p0}, Lcom/samsung/android/sec_platform_library/FactoryPhone;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/phone/LGTServiceProviderSelect;->mFactoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    .line 79
    iget-object v7, p0, Lcom/android/phone/LGTServiceProviderSelect;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/LGTServiceProviderSelect;->mCard:Lcom/android/internal/telephony/IccCard;

    .line 80
    const v7, 0x7f060036

    invoke-virtual {p0, v7}, Lcom/android/phone/LGTServiceProviderSelect;->addPreferencesFromResource(I)V

    .line 81
    const-string v7, "ef_sponimsi1"

    invoke-virtual {p0, v7}, Lcom/android/phone/LGTServiceProviderSelect;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/LGTServiceProviderSelect;->ef_sponimst1:Landroid/preference/Preference;

    .line 82
    const-string v7, "ef_sponimsi2"

    invoke-virtual {p0, v7}, Lcom/android/phone/LGTServiceProviderSelect;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/LGTServiceProviderSelect;->ef_sponimst2:Landroid/preference/Preference;

    .line 83
    const-string v7, "ef_sponimsi3"

    invoke-virtual {p0, v7}, Lcom/android/phone/LGTServiceProviderSelect;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/LGTServiceProviderSelect;->ef_sponimst3:Landroid/preference/Preference;

    .line 84
    aget-object v0, v4, v9

    .line 85
    .local v0, efSpon1:Ljava/lang/String;
    aget-object v1, v4, v10

    .line 86
    .local v1, efSpon2:Ljava/lang/String;
    aget-object v2, v4, v11

    .line 87
    .local v2, efSpon3:Ljava/lang/String;
    new-array v5, v12, [Ljava/lang/String;

    aput-object v0, v5, v9

    aput-object v1, v5, v10

    aput-object v2, v5, v11

    .line 91
    .local v5, str:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v7, v5

    if-ge v3, v7, :cond_3

    .line 92
    aget-object v7, v5, v3

    if-eqz v7, :cond_0

    const-string v7, ""

    aget-object v8, v5, v3

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 93
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/phone/LGTServiceProviderSelect;->removeSpon(I)V

    .line 95
    :cond_1
    aget-object v7, v5, v3

    invoke-direct {p0, v7}, Lcom/android/phone/LGTServiceProviderSelect;->getToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v3

    .line 91
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 72
    .end local v0           #efSpon1:Ljava/lang/String;
    .end local v1           #efSpon2:Ljava/lang/String;
    .end local v2           #efSpon3:Ljava/lang/String;
    .end local v3           #i:I
    .end local v5           #str:[Ljava/lang/String;
    :cond_2
    const-string v7, ""

    aput-object v7, v4, v9

    .line 73
    const-string v7, ""

    aput-object v7, v4, v10

    .line 74
    const-string v7, ""

    aput-object v7, v4, v11

    goto :goto_0

    .line 105
    .restart local v0       #efSpon1:Ljava/lang/String;
    .restart local v1       #efSpon2:Ljava/lang/String;
    .restart local v2       #efSpon3:Ljava/lang/String;
    .restart local v3       #i:I
    .restart local v5       #str:[Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/LGTServiceProviderSelect;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    const-string v8, "button_srch_netwrks_key"

    invoke-virtual {p0, v8}, Lcom/android/phone/LGTServiceProviderSelect;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 107
    iget-object v7, p0, Lcom/android/phone/LGTServiceProviderSelect;->ef_sponimst1:Landroid/preference/Preference;

    aget-object v8, v5, v9

    invoke-direct {p0, v8}, Lcom/android/phone/LGTServiceProviderSelect;->getTitleFromSummary(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v7, p0, Lcom/android/phone/LGTServiceProviderSelect;->ef_sponimst1:Landroid/preference/Preference;

    aget-object v8, v5, v9

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v7, p0, Lcom/android/phone/LGTServiceProviderSelect;->ef_sponimst2:Landroid/preference/Preference;

    aget-object v8, v5, v10

    invoke-direct {p0, v8}, Lcom/android/phone/LGTServiceProviderSelect;->getTitleFromSummary(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v7, p0, Lcom/android/phone/LGTServiceProviderSelect;->ef_sponimst2:Landroid/preference/Preference;

    aget-object v8, v5, v10

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v7, p0, Lcom/android/phone/LGTServiceProviderSelect;->ef_sponimst3:Landroid/preference/Preference;

    aget-object v8, v5, v11

    invoke-direct {p0, v8}, Lcom/android/phone/LGTServiceProviderSelect;->getTitleFromSummary(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v7, p0, Lcom/android/phone/LGTServiceProviderSelect;->ef_sponimst3:Landroid/preference/Preference;

    aget-object v8, v5, v11

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 113
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 172
    const-string v0, "LGTServiceProviderSelect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v0, p0, Lcom/android/phone/LGTServiceProviderSelect;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 174
    new-array v1, v3, [B

    .line 176
    const-string v2, "kor_phone_via_chip"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 177
    iget-object v2, p0, Lcom/android/phone/LGTServiceProviderSelect;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2, v4}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 180
    :cond_0
    const-string v2, "ef_lgu"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 181
    const/16 v2, 0x10

    aput-byte v2, v1, v4

    .line 185
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

    .line 186
    iget-object v3, p0, Lcom/android/phone/LGTServiceProviderSelect;->mPhone:Lcom/android/internal/telephony/Phone;

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
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_c

    .line 192
    :goto_0
    const-string v0, "10"

    iput-object v0, p0, Lcom/android/phone/LGTServiceProviderSelect;->mEfRoaming:Ljava/lang/String;

    .line 242
    :goto_1
    invoke-direct {p0}, Lcom/android/phone/LGTServiceProviderSelect;->constructDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/LGTServiceProviderSelect;->dialog:Landroid/app/ProgressDialog;

    .line 243
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    :goto_2
    return v0

    .line 193
    :cond_1
    const-string v2, "ef_sponimsi1"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 195
    const/16 v2, 0x11

    aput-byte v2, v1, v4

    .line 199
    :try_start_1
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

    .line 200
    iget-object v3, p0, Lcom/android/phone/LGTServiceProviderSelect;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v0, v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_8

    .line 206
    :goto_3
    const-string v0, "11"

    iput-object v0, p0, Lcom/android/phone/LGTServiceProviderSelect;->mEfRoaming:Ljava/lang/String;

    goto :goto_1

    .line 208
    :cond_2
    const-string v2, "ef_sponimsi2"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 210
    const/16 v2, 0x12

    aput-byte v2, v1, v4

    .line 214
    :try_start_2
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

    .line 215
    iget-object v3, p0, Lcom/android/phone/LGTServiceProviderSelect;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v0, v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_4

    .line 221
    :goto_4
    const-string v0, "12"

    iput-object v0, p0, Lcom/android/phone/LGTServiceProviderSelect;->mEfRoaming:Ljava/lang/String;

    goto/16 :goto_1

    .line 223
    :cond_3
    const-string v2, "ef_sponimsi3"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 225
    const/16 v2, 0x13

    aput-byte v2, v1, v4

    .line 229
    :try_start_3
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

    .line 230
    iget-object v3, p0, Lcom/android/phone/LGTServiceProviderSelect;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v0, v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_0

    .line 236
    :goto_5
    const-string v0, "13"

    iput-object v0, p0, Lcom/android/phone/LGTServiceProviderSelect;->mEfRoaming:Ljava/lang/String;

    goto/16 :goto_1

    .line 239
    :cond_4
    const-string v0, "LGTServiceProviderSelect"

    const-string v1, "Not Support!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto/16 :goto_2

    .line 234
    :catch_0
    move-exception v0

    goto :goto_5

    .line 233
    :catch_1
    move-exception v0

    goto :goto_5

    .line 232
    :catch_2
    move-exception v0

    goto :goto_5

    .line 231
    :catch_3
    move-exception v0

    goto :goto_5

    .line 219
    :catch_4
    move-exception v0

    goto :goto_4

    .line 218
    :catch_5
    move-exception v0

    goto :goto_4

    .line 217
    :catch_6
    move-exception v0

    goto :goto_4

    .line 216
    :catch_7
    move-exception v0

    goto :goto_4

    .line 204
    :catch_8
    move-exception v0

    goto/16 :goto_3

    .line 203
    :catch_9
    move-exception v0

    goto/16 :goto_3

    .line 202
    :catch_a
    move-exception v0

    goto/16 :goto_3

    .line 201
    :catch_b
    move-exception v0

    goto/16 :goto_3

    .line 190
    :catch_c
    move-exception v0

    goto/16 :goto_0

    .line 189
    :catch_d
    move-exception v0

    goto/16 :goto_0

    .line 188
    :catch_e
    move-exception v0

    goto/16 :goto_0

    .line 187
    :catch_f
    move-exception v0

    goto/16 :goto_0
.end method
