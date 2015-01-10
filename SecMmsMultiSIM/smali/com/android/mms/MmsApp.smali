.class public Lcom/android/mms/MmsApp;
.super Landroid/app/Application;
.source "MmsApp.java"


# static fields
.field public static final APN_CTNET:I = 0x2

.field public static final APN_CTWAP:I = 0x1

.field public static final APN_ID:Ljava/lang/String; = "apn_id"

.field public static final DB_ID:Ljava/lang/String; = "_id"

.field public static final PREFERRED_APN_URI:Ljava/lang/String; = "content://telephony/carriers/preferapn"

.field public static final TAG:Ljava/lang/String; = "Mms/MmsApp"

.field private static mContext:Landroid/content/Context;

.field private static sMmsApp:Lcom/android/mms/MmsApp;

.field private static sOldLocale:Ljava/util/Locale;


# instance fields
.field private mCountryDetector:Landroid/location/CountryDetector;

.field private mCountryIso:Ljava/lang/String;

.field private mCountryListener:Landroid/location/CountryListener;

.field public mDataSwitchDialog:Z

.field private mMultiSimTelephonyManager:Landroid/telephony/MultiSimTelephonyManager;

.field private mRecentSuggestions:Landroid/provider/SearchRecentSuggestions;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 72
    sput-object v0, Lcom/android/mms/MmsApp;->sMmsApp:Lcom/android/mms/MmsApp;

    .line 74
    sput-object v0, Lcom/android/mms/MmsApp;->mContext:Landroid/content/Context;

    .line 223
    sput-object v0, Lcom/android/mms/MmsApp;->sOldLocale:Ljava/util/Locale;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/MmsApp;->mDataSwitchDialog:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/MmsApp;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/mms/MmsApp;->initViewCache()V

    return-void
.end method

.method static synthetic access$100()Lcom/android/mms/MmsApp;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/android/mms/MmsApp;->sMmsApp:Lcom/android/mms/MmsApp;

    return-object v0
.end method

.method static synthetic access$200()Landroid/content/Context;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/android/mms/MmsApp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/mms/MmsApp;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/mms/MmsApp;->mCountryIso:Ljava/lang/String;

    return-object p1
.end method

.method public static declared-synchronized getApplication()Lcom/android/mms/MmsApp;
    .locals 2

    .prologue
    .line 212
    const-class v0, Lcom/android/mms/MmsApp;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/mms/MmsApp;->sMmsApp:Lcom/android/mms/MmsApp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 274
    sget-object v0, Lcom/android/mms/MmsApp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private initCountryIso()V
    .locals 3

    .prologue
    .line 188
    const-string v0, "Mms/MmsApp"

    const-string v1, "initCountryIso start"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/MmsApp;->mCountryIso:Ljava/lang/String;

    .line 190
    const-string v0, "Mms/MmsApp"

    const-string v1, "got country"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v0, "country_detector"

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/CountryDetector;

    iput-object v0, p0, Lcom/android/mms/MmsApp;->mCountryDetector:Landroid/location/CountryDetector;

    .line 193
    new-instance v0, Lcom/android/mms/MmsApp$2;

    invoke-direct {v0, p0}, Lcom/android/mms/MmsApp$2;-><init>(Lcom/android/mms/MmsApp;)V

    iput-object v0, p0, Lcom/android/mms/MmsApp;->mCountryListener:Landroid/location/CountryListener;

    .line 200
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mCountryDetector:Landroid/location/CountryDetector;

    iget-object v1, p0, Lcom/android/mms/MmsApp;->mCountryListener:Landroid/location/CountryListener;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/location/CountryDetector;->addCountryListener(Landroid/location/CountryListener;Landroid/os/Looper;)V

    .line 201
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mCountryDetector:Landroid/location/CountryDetector;

    invoke-virtual {v0}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    .line 202
    const-string v0, "Mms/MmsApp"

    const-string v1, "initCountryIso end"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method private initViewCache()V
    .locals 2

    .prologue
    .line 206
    const-string v0, "Mms/MmsApp"

    const-string v1, "initViewCache start"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-static {}, Lcom/android/mms/ui/ComposeMessageFragment;->init()V

    .line 208
    const-string v0, "Mms/MmsApp"

    const-string v1, "initViewCache end"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method private onLocaleChanged()V
    .locals 2

    .prologue
    .line 247
    const-string v0, "Mms/MmsApp"

    const-string v1, "on locale changed"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-static {}, Lcom/android/mms/ui/ComposeMessageFragment;->clearCache()V

    .line 249
    return-void
.end method


# virtual methods
.method public getCurrentCountryIso()Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mCountryIso:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mCountryIso:Ljava/lang/String;

    goto :goto_0
.end method

.method public getMultiSimTelephonyManager()Landroid/telephony/MultiSimTelephonyManager;
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mMultiSimTelephonyManager:Landroid/telephony/MultiSimTelephonyManager;

    if-nez v0, :cond_0

    .line 267
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/MultiSimTelephonyManager;

    iput-object v0, p0, Lcom/android/mms/MmsApp;->mMultiSimTelephonyManager:Landroid/telephony/MultiSimTelephonyManager;

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mMultiSimTelephonyManager:Landroid/telephony/MultiSimTelephonyManager;

    return-object v0
.end method

.method public getRecentSuggestions()Landroid/provider/SearchRecentSuggestions;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mRecentSuggestions:Landroid/provider/SearchRecentSuggestions;

    return-object v0
.end method

.method public getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 256
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/mms/MmsApp;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 226
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 228
    const-string v0, "Mms/MmsApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged(),newConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sget-object v1, Lcom/android/mms/MmsApp;->sOldLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    invoke-direct {p0}, Lcom/android/mms/MmsApp;->onLocaleChanged()V

    .line 232
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sput-object v0, Lcom/android/mms/MmsApp;->sOldLocale:Ljava/util/Locale;

    .line 233
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateAllNotifications(Landroid/content/Context;)V

    .line 234
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->initOldDateOrder()V

    .line 237
    :cond_0
    invoke-static {}, Lcom/android/mms/layout/LayoutManager;->getInstance()Lcom/android/mms/layout/LayoutManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mms/layout/LayoutManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 238
    const-string v0, "Mms/MmsApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged(),newConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-static {p0}, Lcom/android/mms/MmsConfig;->loadChameleonFromPreference(Landroid/content/Context;)V

    .line 243
    return-void
.end method

.method public onCreate()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    .line 88
    const-string v4, "Mms/MmsApp"

    const-string v5, "onCreate()"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v4, "Mms/MmsApp"

    const-string v5, "onCreate Start"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 99
    const-string v4, "Mms/MmsApp"

    const-string v5, "super.onCreate()"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const v4, 0x7f0c000d

    invoke-virtual {p0, v4}, Landroid/content/ContextWrapper;->setTheme(I)V

    .line 103
    sput-object p0, Lcom/android/mms/MmsApp;->sMmsApp:Lcom/android/mms/MmsApp;

    .line 104
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    sput-object v4, Lcom/android/mms/MmsApp;->sOldLocale:Ljava/util/Locale;

    .line 106
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sput-object v4, Lcom/android/mms/MmsApp;->mContext:Landroid/content/Context;

    .line 108
    sget-object v4, Lcom/android/mms/MmsApp;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/mms/MmsConfig;->getNewPrefVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, newPrefVersion:Ljava/lang/String;
    sget-object v4, Lcom/android/mms/MmsApp;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/mms/MmsConfig;->getCurrentPrefVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, currentPrefVersion:Ljava/lang/String;
    const-string v4, "Mms/MmsApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "New pref version = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Current pref version = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 117
    :cond_0
    sget-object v4, Lcom/android/mms/MmsApp;->sMmsApp:Lcom/android/mms/MmsApp;

    const-string v5, "com.android.mms_preferences"

    const v6, 0x7f050007

    invoke-static {v4, v5, v8, v6, v7}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V

    .line 118
    sget-object v4, Lcom/android/mms/MmsApp;->sMmsApp:Lcom/android/mms/MmsApp;

    const-string v5, "com.android.mms_preferences"

    const v6, 0x7f050008

    invoke-static {v4, v5, v8, v6, v7}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V

    .line 123
    sget-object v4, Lcom/android/mms/MmsApp;->sMmsApp:Lcom/android/mms/MmsApp;

    const-string v5, "com.android.mms_preferences"

    const v6, 0x7f050003

    invoke-static {v4, v5, v8, v6, v7}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V

    .line 124
    sget-object v4, Lcom/android/mms/MmsApp;->sMmsApp:Lcom/android/mms/MmsApp;

    const-string v5, "com.android.mms_preferences"

    const v6, 0x7f050004

    invoke-static {v4, v5, v8, v6, v7}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V

    .line 126
    sget-object v4, Lcom/android/mms/MmsApp;->sMmsApp:Lcom/android/mms/MmsApp;

    const-string v5, "com.android.mms_preferences"

    const v6, 0x7f050001

    invoke-static {v4, v5, v8, v6, v7}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V

    .line 127
    sget-object v4, Lcom/android/mms/MmsApp;->sMmsApp:Lcom/android/mms/MmsApp;

    const-string v5, "com.android.mms_preferences"

    const v6, 0x7f050002

    invoke-static {v4, v5, v8, v6, v7}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V

    .line 130
    sget-object v4, Lcom/android/mms/MmsApp;->sMmsApp:Lcom/android/mms/MmsApp;

    const-string v5, "com.android.mms_preferences"

    const v6, 0x7f050009

    invoke-static {v4, v5, v8, v6, v7}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V

    .line 132
    sget-object v4, Lcom/android/mms/MmsApp;->sMmsApp:Lcom/android/mms/MmsApp;

    const-string v5, "com.android.mms_preferences"

    const v6, 0x7f05000b

    invoke-static {v4, v5, v8, v6, v7}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V

    .line 136
    :cond_1
    invoke-static {p0}, Lcom/android/mms/MmsConfig;->init(Landroid/content/Context;)V

    .line 140
    invoke-direct {p0}, Lcom/android/mms/MmsApp;->initCountryIso()V

    .line 142
    const/4 v4, 0x0

    invoke-static {p0, v4}, Lcom/android/mms/data/Contact;->init(Landroid/content/Context;Z)V

    .line 143
    invoke-static {p0}, Lcom/android/mms/util/DraftCache;->init(Landroid/content/Context;)V

    .line 146
    invoke-static {}, Lcom/android/mms/data/Conversation;->init()V

    .line 147
    invoke-static {p0}, Lcom/android/mms/util/DownloadManager;->init(Landroid/content/Context;)V

    .line 148
    invoke-static {p0}, Lcom/android/mms/util/RateController;->init(Landroid/content/Context;)V

    .line 150
    invoke-static {p0}, Lcom/android/mms/layout/LayoutManager;->init(Landroid/content/Context;)V

    .line 151
    invoke-static {p0}, Lcom/android/mms/util/SmileyParser;->init(Landroid/content/Context;)V

    .line 152
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->init(Landroid/content/Context;)V

    .line 154
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackList()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 155
    invoke-static {p0}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->init(Landroid/content/Context;)V

    .line 158
    :cond_2
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 159
    .local v1, handler:Landroid/os/Handler;
    new-instance v4, Lcom/android/mms/MmsApp$1;

    invoke-direct {v4, p0}, Lcom/android/mms/MmsApp$1;-><init>(Lcom/android/mms/MmsApp;)V

    const-wide/16 v5, 0x7d0

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 182
    sget-object v4, Lcom/android/mms/MmsApp;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/mms/transaction/ReservationManager;->getInstance(Landroid/content/Context;)Lcom/android/mms/transaction/ReservationManager;

    move-result-object v3

    .line 183
    .local v3, reservationManager:Lcom/android/mms/transaction/ReservationManager;
    const-string v4, "Mms/MmsApp"

    const-string v5, "onCreate End"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v4, "Mms/MmsApp"

    const-string v5, "onCreate()"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method public onTerminate()V
    .locals 2

    .prologue
    .line 217
    const-string v0, "Mms/MmsApp"

    const-string v1, "onTerminate()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/android/mms/MmsApp;->mCountryDetector:Landroid/location/CountryDetector;

    iget-object v1, p0, Lcom/android/mms/MmsApp;->mCountryListener:Landroid/location/CountryListener;

    invoke-virtual {v0, v1}, Landroid/location/CountryDetector;->removeCountryListener(Landroid/location/CountryListener;)V

    .line 219
    invoke-static {p0}, Lcom/android/mms/drm/DrmUtils;->cleanupStorage(Landroid/content/Context;)V

    .line 220
    const-string v0, "Mms/MmsApp"

    const-string v1, "onTerminate()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    return-void
.end method
