.class public Lcom/android/mms/ui/CMASPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "CMASPreferenceActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static final MENU_RESTORE_DEFAULTS:I = 0x1

.field private static final SYSTEM_PROP_HIDDENMENU_ENABLE_KEY:Ljava/lang/String; = "sys.hiddenmenu.enable"

.field static final TAG:Ljava/lang/String; = "Mms/CMASPreferenceActivity"

.field private static final multiSimNum:I


# instance fields
.field amber:Landroid/preference/CheckBoxPreference;

.field extreme:Landroid/preference/CheckBoxPreference;

.field private isFirsttime:Z

.field private isPlaying:Z

.field mVibrator:Landroid/os/Vibrator;

.field private mplayer:Landroid/media/MediaPlayer;

.field prefs:Landroid/content/SharedPreferences;

.field presidential:Landroid/preference/CheckBoxPreference;

.field severe:Landroid/preference/CheckBoxPreference;

.field test:Landroid/preference/CheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v0

    sput v0, Lcom/android/mms/ui/CMASPreferenceActivity;->multiSimNum:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->isPlaying:Z

    .line 70
    iput-object v1, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    .line 71
    iput-object v1, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mVibrator:Landroid/os/Vibrator;

    return-void
.end method

.method public static CheckCMASChannelInfo(Landroid/content/SharedPreferences;Ljava/util/ArrayList;)V
    .locals 4
    .parameter "prefs"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p1, bCmasChannels:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 533
    const-string v0, "Mms/CMASPreferenceActivity"

    const-string v1, "getCMASConfig()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 537
    invoke-static {p0}, Lcom/android/mms/transaction/CmasReceiverService;->isExtremeAlertActive(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 543
    :goto_0
    invoke-static {p0}, Lcom/android/mms/transaction/CmasReceiverService;->isSeverityAlertActive(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 544
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 549
    :goto_1
    invoke-static {p0}, Lcom/android/mms/transaction/CmasReceiverService;->isAmberAlertActive(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 550
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 555
    :goto_2
    invoke-static {p0}, Lcom/android/mms/transaction/CmasReceiverService;->isRMT_ExerciseAlertActive(Landroid/content/SharedPreferences;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 556
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 560
    :goto_3
    return-void

    .line 540
    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 546
    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 552
    :cond_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 558
    :cond_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method static synthetic access$000(Lcom/android/mms/ui/CMASPreferenceActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/mms/ui/CMASPreferenceActivity;->restoreDefaultPreferences()V

    return-void
.end method

.method private addSharedPref(Ljava/lang/String;Z)V
    .locals 6
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 272
    const-string v3, "Mms/CMASPreferenceActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " saved "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsApp;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 276
    .local v0, Prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 277
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 278
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    .end local v0           #Prefs:Landroid/content/SharedPreferences;
    .end local v2           #editor:Landroid/content/SharedPreferences$Editor;
    :goto_0
    return-void

    .line 280
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private confirmRestoreDialog(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 428
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 429
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0a0281

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 430
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 431
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 432
    const v1, 0x7f0a011e

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 433
    const v1, 0x7f0a011f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 434
    const v1, 0x7f0a0282

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 436
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 437
    return-void
.end method

.method public static getCMASChannels(Landroid/content/SharedPreferences;)[S
    .locals 10
    .parameter "prefs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v9, 0x1112

    const/4 v8, 0x0

    .line 479
    const-string v5, "Mms/CMASPreferenceActivity"

    const-string v6, "getCMASConfig()"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    const/16 v5, 0xe

    new-array v1, v5, [S

    .line 481
    .local v1, fakemsgId:[S
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, v1

    if-ge v2, v5, :cond_0

    .line 483
    aput-short v8, v1, v2

    .line 481
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 485
    :cond_0
    aput-short v9, v1, v8

    .line 486
    const/4 v3, 0x1

    .line 487
    .local v3, len:I
    invoke-static {p0}, Lcom/android/mms/transaction/CmasReceiverService;->isExtremeAlertActive(Landroid/content/SharedPreferences;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 489
    add-int/lit8 v3, v3, 0x2

    .line 490
    const/4 v5, 0x1

    const/16 v6, 0x1113

    aput-short v6, v1, v5

    .line 491
    const/4 v5, 0x2

    const/16 v6, 0x1114

    aput-short v6, v1, v5

    .line 493
    :cond_1
    invoke-static {p0}, Lcom/android/mms/transaction/CmasReceiverService;->isSeverityAlertActive(Landroid/content/SharedPreferences;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 495
    add-int/lit8 v3, v3, 0x6

    .line 496
    const/4 v5, 0x3

    const/16 v6, 0x1115

    aput-short v6, v1, v5

    .line 497
    const/4 v5, 0x4

    const/16 v6, 0x1116

    aput-short v6, v1, v5

    .line 498
    const/4 v5, 0x5

    const/16 v6, 0x1117

    aput-short v6, v1, v5

    .line 499
    const/4 v5, 0x6

    const/16 v6, 0x1118

    aput-short v6, v1, v5

    .line 500
    const/4 v5, 0x7

    const/16 v6, 0x1119

    aput-short v6, v1, v5

    .line 501
    const/16 v5, 0x8

    const/16 v6, 0x111a

    aput-short v6, v1, v5

    .line 503
    :cond_2
    invoke-static {p0}, Lcom/android/mms/transaction/CmasReceiverService;->isAmberAlertActive(Landroid/content/SharedPreferences;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 505
    add-int/lit8 v3, v3, 0x1

    .line 506
    const/16 v5, 0x9

    const/16 v6, 0x111b

    aput-short v6, v1, v5

    .line 508
    :cond_3
    invoke-static {p0}, Lcom/android/mms/transaction/CmasReceiverService;->isRMT_ExerciseAlertActive(Landroid/content/SharedPreferences;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 510
    add-int/lit8 v3, v3, 0x4

    .line 511
    const/16 v5, 0xa

    const/16 v6, 0x111c

    aput-short v6, v1, v5

    .line 512
    const/16 v5, 0xb

    const/16 v6, 0x111d

    aput-short v6, v1, v5

    .line 513
    const/16 v5, 0xc

    const/16 v6, 0x111e

    aput-short v6, v1, v5

    .line 514
    const/16 v5, 0xd

    const/16 v6, 0x111f

    aput-short v6, v1, v5

    .line 516
    :cond_4
    const-string v5, "Mms/CMASPreferenceActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "len="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    new-array v4, v3, [S

    .line 518
    .local v4, msgId:[S
    aput-short v9, v4, v8

    .line 519
    const/4 v0, 0x0

    .line 520
    .local v0, count:I
    const/4 v2, 0x1

    :goto_1
    array-length v5, v1

    if-ge v2, v5, :cond_6

    .line 522
    aget-short v5, v1, v2

    if-eqz v5, :cond_5

    .line 524
    add-int/lit8 v0, v0, 0x1

    .line 525
    aget-short v5, v1, v2

    aput-short v5, v4, v0

    .line 520
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 529
    :cond_6
    return-object v4
.end method

.method private removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V
    .locals 0
    .parameter "pref"
    .parameter "removePref"

    .prologue
    .line 563
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 564
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 566
    :cond_0
    return-void
.end method

.method private resetPreferences(Z)V
    .locals 12
    .parameter "IsRestore"

    .prologue
    .line 96
    const-string v10, "pref_key_cmas_settings_alert"

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 98
    .local v0, cmasSettingsAlert:Landroid/preference/PreferenceCategory;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasAllInOneThreaded()Z

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_9

    .line 99
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    const-string v11, "pref_key_cmas_settings_ui"

    invoke-virtual {p0, v11}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lcom/android/mms/ui/CMASPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    .line 145
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasPresidentialOPTOUTPref()Z

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    .line 146
    const-string v10, "#cmas#type##presidential#enabled"

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 147
    .local v2, cmas_recv:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 150
    .end local v2           #cmas_recv:Landroid/preference/CheckBoxPreference;
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasTestSPRFeature()Z

    move-result v10

    if-nez v10, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasTestMessageWithHiddenMenu()Z

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasAllInOneThreaded()Z

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    .line 152
    :cond_2
    const-string v10, "sys.hiddenmenu.enable"

    const-string v11, "0"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "0"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 153
    const-string v10, "#cmas#type##test#enabled"

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 155
    .restart local v2       #cmas_recv:Landroid/preference/CheckBoxPreference;
    if-eqz v2, :cond_3

    .line 156
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 157
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 162
    .end local v2           #cmas_recv:Landroid/preference/CheckBoxPreference;
    :cond_3
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->isFirsttime:Z

    .line 163
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    const-string v11, "#cmas#type##extreme#enabled"

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    iput-object v10, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->extreme:Landroid/preference/CheckBoxPreference;

    .line 164
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    const-string v11, "#cmas#type##severe#enabled"

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    iput-object v10, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->severe:Landroid/preference/CheckBoxPreference;

    .line 165
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    const-string v11, "#cmas#type##amber#enabled"

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    iput-object v10, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->amber:Landroid/preference/CheckBoxPreference;

    .line 166
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    const-string v11, "#cmas#type##test#enabled"

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    iput-object v10, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->test:Landroid/preference/CheckBoxPreference;

    .line 167
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    const-string v11, "#cmas#type##presidential#enabled"

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/CheckBoxPreference;

    iput-object v10, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->presidential:Landroid/preference/CheckBoxPreference;

    .line 168
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    iput-object v10, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->prefs:Landroid/content/SharedPreferences;

    .line 170
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v10

    const/4 v11, 0x4

    if-ne v10, v11, :cond_4

    .line 171
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    .line 172
    .local v5, lc:Ljava/util/Locale;
    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 173
    .local v7, mLaguage:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 175
    .local v6, mCountry:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->presidential:Landroid/preference/CheckBoxPreference;

    const v11, 0x7f0a0294

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 177
    const-string v10, "en"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const-string v10, "us"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 178
    iget-object v10, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->extreme:Landroid/preference/CheckBoxPreference;

    const v11, 0x7f0a0295

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v10, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->amber:Landroid/preference/CheckBoxPreference;

    const v11, 0x7f0a0297

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v10, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->severe:Landroid/preference/CheckBoxPreference;

    const v11, 0x7f0a0296

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 185
    .end local v5           #lc:Ljava/util/Locale;
    .end local v6           #mCountry:Ljava/lang/String;
    .end local v7           #mLaguage:Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getmCmasMessageTMOMenuTextFeature()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 186
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    .line 187
    .restart local v5       #lc:Ljava/util/Locale;
    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 188
    .restart local v7       #mLaguage:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 190
    .restart local v6       #mCountry:Ljava/lang/String;
    const-string v10, "en"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const-string v10, "us"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 192
    const v10, 0x7f0a03df

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 193
    .local v8, tmoExtreamTitle:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->extreme:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10, v8}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 194
    const v10, 0x7f0a03e0

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 195
    .local v9, tmoSevereTitle:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->severe:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v10, v9}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 197
    .end local v8           #tmoExtreamTitle:Ljava/lang/String;
    .end local v9           #tmoSevereTitle:Ljava/lang/String;
    :cond_5
    iget-object v10, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->extreme:Landroid/preference/CheckBoxPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v10, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->severe:Landroid/preference/CheckBoxPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 201
    .end local v5           #lc:Ljava/util/Locale;
    .end local v6           #mCountry:Ljava/lang/String;
    .end local v7           #mLaguage:Ljava/lang/String;
    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasMessageServereBelongToExtreme()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 202
    iget-object v10, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v11, "#cmas#type##extreme#enabled"

    invoke-virtual {p0, v10, v11}, Lcom/android/mms/ui/CMASPreferenceActivity;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 203
    iget-object v10, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v11, "#cmas#type##severe#enabled"

    invoke-virtual {p0, v10, v11}, Lcom/android/mms/ui/CMASPreferenceActivity;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 204
    iget-object v10, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v11, "#cmas#type##amber#enabled"

    invoke-virtual {p0, v10, v11}, Lcom/android/mms/ui/CMASPreferenceActivity;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 205
    iget-object v10, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v11, "#cmas#type##test#enabled"

    invoke-virtual {p0, v10, v11}, Lcom/android/mms/ui/CMASPreferenceActivity;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 206
    iget-object v10, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v10, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 209
    :cond_7
    sget-boolean v10, Lcom/android/mms/transaction/CmasReceiverService;->isResetCMASPending:Z

    if-eqz v10, :cond_8

    .line 211
    const/4 v10, 0x0

    sput-boolean v10, Lcom/android/mms/transaction/CmasReceiverService;->isResetCMASPending:Z

    .line 212
    invoke-direct {p0}, Lcom/android/mms/ui/CMASPreferenceActivity;->restoreDefaultPreferences()V

    .line 213
    new-instance v10, Landroid/content/Intent;

    const-class v11, Lcom/android/mms/ui/CMASPreferenceActivity;

    invoke-direct {v10, p0, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v10}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 214
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 216
    :cond_8
    return-void

    .line 101
    :cond_9
    const-string v10, "pref_key_cmas_settings_ui"

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 103
    .local v1, cmasSettingsUI:Landroid/preference/PreferenceCategory;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasFontSizePref()Z

    move-result v10

    if-nez v10, :cond_a

    .line 104
    const-string v10, "#cmas#pref##font#size"

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    .line 105
    .local v2, cmas_recv:Landroid/preference/ListPreference;
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 107
    .end local v2           #cmas_recv:Landroid/preference/ListPreference;
    :cond_a
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasNotificationPref()Z

    move-result v10

    if-nez v10, :cond_b

    .line 108
    const-string v10, "pref_key_emergency_alert"

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 109
    .local v3, cmas_recv_alert:Landroid/preference/Preference;
    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 118
    .end local v3           #cmas_recv_alert:Landroid/preference/Preference;
    :cond_b
    const-string v10, "pref_key_emergency_vibrateWhen"

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    .line 119
    .local v4, cmas_recv_vib:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 122
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasAlertSoundMenu()Z

    move-result v10

    if-nez v10, :cond_c

    .line 123
    const-string v10, "pref_key_emergency_alertWhen"

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 124
    .restart local v3       #cmas_recv_alert:Landroid/preference/Preference;
    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 127
    .end local v3           #cmas_recv_alert:Landroid/preference/Preference;
    :cond_c
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasVibrationPreviewPref()Z

    move-result v10

    if-nez v10, :cond_d

    .line 128
    const-string v10, "pref_key_emergency_vibrate"

    invoke-virtual {p0, v10}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 129
    .local v2, cmas_recv:Landroid/preference/Preference;
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 137
    .end local v2           #cmas_recv:Landroid/preference/Preference;
    :cond_d
    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v10

    if-nez v10, :cond_0

    .line 138
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    const-string v11, "pref_key_cmas_settings_ui"

    invoke-virtual {p0, v11}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lcom/android/mms/ui/CMASPreferenceActivity;->removePreference(Landroid/preference/PreferenceGroup;Landroid/preference/Preference;)V

    goto/16 :goto_0
.end method

.method private restoreDefaultPreferences()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 439
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 441
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 443
    :try_start_0
    const-string v3, "cmas_preferences"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 445
    .local v2, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 446
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "#cmas#type##extreme#enabled"

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 447
    const-string v3, "#cmas#type##severe#enabled"

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 448
    const-string v3, "#cmas#type##amber#enabled"

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 449
    const-string v3, "#cmas#type##exercise#enabled"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 450
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #prefs:Landroid/content/SharedPreferences;
    :goto_0
    const v3, 0x7f050005

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 455
    invoke-direct {p0, v5}, Lcom/android/mms/ui/CMASPreferenceActivity;->resetPreferences(Z)V

    .line 456
    return-void

    .line 451
    :catch_0
    move-exception v0

    .line 452
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static setCMASConfig(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    .line 459
    const-string v2, "Mms/CMASPreferenceActivity"

    const-string v3, "setCMASConfig()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    :try_start_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 464
    .local v1, sharedpref:Landroid/content/SharedPreferences;
    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/android/mms/ui/ChannelUtils;->setCbSettings(Landroid/content/Context;Landroid/content/SharedPreferences;I)V

    .line 467
    sget v2, Lcom/android/mms/ui/CMASPreferenceActivity;->multiSimNum:I

    if-le v2, v4, :cond_0

    .line 468
    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/mms/ui/ChannelUtils;->setCbSettings(Landroid/content/Context;Landroid/content/SharedPreferences;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    .end local v1           #sharedpref:Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return-void

    .line 472
    :catch_0
    move-exception v0

    .line 473
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "Mms/CMASPreferenceActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in setCMAS config "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 285
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 287
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 293
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    const v1, 0x7f050005

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 86
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 87
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 88
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 90
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/mms/ui/CMASPreferenceActivity;->resetPreferences(Z)V

    .line 92
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 404
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 405
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 407
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 338
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 339
    iget-object v0, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->prefs:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 341
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 412
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 424
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 414
    :sswitch_0
    new-instance v1, Lcom/android/mms/ui/CMASPreferenceActivity$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/CMASPreferenceActivity$1;-><init>(Lcom/android/mms/ui/CMASPreferenceActivity;)V

    invoke-direct {p0, v1}, Lcom/android/mms/ui/CMASPreferenceActivity;->confirmRestoreDialog(Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 421
    :sswitch_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 412
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x102002c -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 297
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 299
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a02d9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 301
    .local v1, str:Ljava/lang/String;
    const-string v2, "pref_key_emergency_alert"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 303
    .local v0, emergency_alert:Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 306
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_1

    .line 307
    iget-object v2, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v4, v4}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 308
    iget-object v2, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->reset()V

    .line 309
    iget-object v2, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 310
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    .line 312
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->isPlaying:Z

    .line 314
    iget-object v2, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mVibrator:Landroid/os/Vibrator;

    if-eqz v2, :cond_2

    .line 315
    iget-object v2, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v2}, Landroid/os/Vibrator;->cancel()V

    .line 316
    :cond_2
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v4, 0x0

    .line 347
    const-string v3, "pref_key_emergency_alert"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-ne p2, v3, :cond_3

    .line 348
    const-string v2, "android.resource://com.android.mms/raw/cmas_ringtone"

    .line 349
    .local v2, ringtoneStr:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 351
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_1

    .line 352
    iget-object v3, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->reset()V

    .line 353
    iget-object v3, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->release()V

    .line 354
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    .line 355
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a02d9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    .end local v2           #ringtoneStr:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    return v3

    .line 360
    .restart local v2       #ringtoneStr:Ljava/lang/String;
    :cond_1
    :try_start_1
    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v3, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    .line 361
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 362
    .local v1, mediaURI:Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 363
    iget-object v3, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepare()V

    .line 364
    iget-object v3, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V

    .line 365
    iget-object v3, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 366
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a02dd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 372
    const-string v3, "Mms/CMASPreferenceActivity"

    const-string v4, "Am now in playing"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 374
    .end local v1           #mediaURI:Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 375
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "Mms/CMASPreferenceActivity"

    const-string v4, "Exception in tree click"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 378
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_2
    const-string v3, "Mms/CMASPreferenceActivity"

    const-string v4, "Ringtone str not found"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 380
    .end local v2           #ringtoneStr:Ljava/lang/String;
    :cond_3
    const-string v3, "pref_key_emergency_vibrate"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-ne p2, v3, :cond_0

    .line 381
    iget-object v3, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mVibrator:Landroid/os/Vibrator;

    if-nez v3, :cond_4

    .line 384
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "vibrator"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    iput-object v3, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mVibrator:Landroid/os/Vibrator;

    .line 387
    iget-object v3, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mVibrator:Landroid/os/Vibrator;

    const/16 v4, 0xc

    new-array v4, v4, [J

    fill-array-data v4, :array_0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 389
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a02de

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 393
    :cond_4
    iget-object v3, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v3}, Landroid/os/Vibrator;->cancel()V

    .line 394
    iput-object v4, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mVibrator:Landroid/os/Vibrator;

    .line 395
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a02dc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 387
    :array_0
    .array-data 0x8
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x7t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x7t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 8
    .parameter "sp"
    .parameter "s"

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 220
    const-string v4, "#cmas#type##amber#enabled"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 221
    const-string v4, "#cmas#type##amber#enabled"

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 222
    .local v1, bool:Z
    const-string v4, "Mms/CMASPreferenceActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "value amber "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const-string v4, "#cmas#type##amber#enabled"

    invoke-direct {p0, v4, v1}, Lcom/android/mms/ui/CMASPreferenceActivity;->addSharedPref(Ljava/lang/String;Z)V

    .line 269
    .end local v1           #bool:Z
    :cond_0
    :goto_0
    return-void

    .line 224
    :cond_1
    const-string v4, "#cmas#type##extreme#enabled"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 225
    const-string v4, "#cmas#type##extreme#enabled"

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 226
    .restart local v1       #bool:Z
    const-string v4, "Mms/CMASPreferenceActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " value extreme "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    if-nez v1, :cond_2

    .line 230
    iget-object v4, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v4, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 231
    const-string v4, "#cmas#type##severe#enabled"

    invoke-direct {p0, v4, v1}, Lcom/android/mms/ui/CMASPreferenceActivity;->addSharedPref(Ljava/lang/String;Z)V

    .line 232
    iget-object v4, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->severe:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 233
    iget-object v4, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v4, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 235
    :cond_2
    const-string v4, "#cmas#type##extreme#enabled"

    invoke-direct {p0, v4, v1}, Lcom/android/mms/ui/CMASPreferenceActivity;->addSharedPref(Ljava/lang/String;Z)V

    goto :goto_0

    .line 237
    .end local v1           #bool:Z
    :cond_3
    const-string v4, "#cmas#type##severe#enabled"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 239
    const-string v4, "#cmas#type##severe#enabled"

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 241
    .restart local v1       #bool:Z
    const/4 v3, 0x1

    .line 244
    .local v3, extreme:Z
    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsApp;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 245
    .local v0, Prefs:Landroid/content/SharedPreferences;
    const-string v4, "#cmas#type##extreme#enabled"

    const/4 v5, 0x1

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 250
    .end local v0           #Prefs:Landroid/content/SharedPreferences;
    :goto_1
    const-string v4, "Mms/CMASPreferenceActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=extreme value severe= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    if-eqz v3, :cond_4

    .line 252
    const-string v4, "#cmas#type##severe#enabled"

    invoke-direct {p0, v4, v1}, Lcom/android/mms/ui/CMASPreferenceActivity;->addSharedPref(Ljava/lang/String;Z)V

    .line 267
    :goto_2
    iput-boolean v7, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->isFirsttime:Z

    goto/16 :goto_0

    .line 246
    :catch_0
    move-exception v2

    .line 248
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 255
    .end local v2           #e:Ljava/lang/Exception;
    :cond_4
    iget-object v4, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v4, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 256
    iget-object v4, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->severe:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v7}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 257
    const-string v4, "#cmas#type##severe#enabled"

    invoke-direct {p0, v4, v7}, Lcom/android/mms/ui/CMASPreferenceActivity;->addSharedPref(Ljava/lang/String;Z)V

    .line 258
    iget-boolean v4, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->isFirsttime:Z

    if-nez v4, :cond_5

    .line 262
    const v4, 0x7f0a051e

    invoke-static {p0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 265
    :cond_5
    iget-object v4, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v4, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    goto :goto_2
.end method

.method protected onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 320
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 321
    iget-object v0, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 323
    iget-object v0, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 324
    iget-object v0, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 325
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_1

    .line 329
    iget-object v0, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 331
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getGSMCMASEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 332
    invoke-static {p0}, Lcom/android/mms/ui/CMASPreferenceActivity;->setCMASConfig(Landroid/content/Context;)V

    .line 334
    :cond_2
    return-void
.end method
