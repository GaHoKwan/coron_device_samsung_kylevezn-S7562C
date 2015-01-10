.class public final Lcom/android/contacts/util/PhoneCapabilityTester;
.super Ljava/lang/Object;
.source "PhoneCapabilityTester.java"


# static fields
.field private static sChatOnIsInitialized:Z

.field private static sIsDualCall:Z

.field private static sIsEasyModeSupported:Z

.field private static sIsIPCall:Z

.field private static sIsInitialized:Z

.field private static sIsMobilePrintSupported:Z

.field private static sIsMotionCallEnabled:Z

.field private static sIsMultiWindowSupported:Z

.field private static sIsPhone:Z

.field private static sIsSipPhone:Z

.field private static sIsSmsCapable:Z

.field private static sIsVibrator:Z

.field private static sIsVideoCall:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/contacts/util/PhoneCapabilityTester;->sChatOnIsInitialized:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static initialize(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 95
    new-instance v0, Landroid/telephony/TelephonyManager;

    invoke-direct {v0, p0}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;)V

    .line 96
    .local v0, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    sput-boolean v1, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsPhone:Z

    .line 97
    sget-boolean v1, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsPhone:Z

    if-eqz v1, :cond_3

    invoke-static {p0}, Landroid/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_0
    sput-boolean v1, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsSipPhone:Z

    .line 98
    sput-boolean v2, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsInitialized:Z

    .line 99
    sget-boolean v1, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsPhone:Z

    if-eqz v1, :cond_0

    :cond_0
    sput-boolean v3, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsVideoCall:Z

    .line 100
    sget-boolean v1, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsPhone:Z

    if-eqz v1, :cond_4

    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    invoke-virtual {v1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    :goto_1
    sput-boolean v1, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsVibrator:Z

    .line 101
    sget-boolean v1, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsPhone:Z

    if-eqz v1, :cond_1

    :cond_1
    sput-boolean v3, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsMotionCallEnabled:Z

    .line 105
    sget-boolean v1, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsPhone:Z

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v4, "CscFeature_Contact_EnableIPCall"

    invoke-virtual {v1, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v2

    :goto_2
    sput-boolean v1, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsIPCall:Z

    .line 109
    sget-boolean v1, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsPhone:Z

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_3
    sput-boolean v2, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsDualCall:Z

    .line 111
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v1

    sput-boolean v1, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsSmsCapable:Z

    .line 112
    sput-boolean v3, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsEasyModeSupported:Z

    .line 113
    const-string v1, "com.sec.android.app.mobileprint"

    invoke-static {p0, v1}, Lcom/sec/android/app/contacts/util/ContactsUtil;->checkInstalledApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsMobilePrintSupported:Z

    .line 117
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 118
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.feature.multiwindow"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsMultiWindowSupported:Z

    .line 120
    sget-boolean v1, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsMultiWindowSupported:Z

    if-eqz v1, :cond_2

    .line 124
    sput-boolean v3, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsMultiWindowSupported:Z

    .line 128
    :cond_2
    return-void

    :cond_3
    move v1, v3

    .line 97
    goto :goto_0

    :cond_4
    move v1, v3

    .line 100
    goto :goto_1

    :cond_5
    move v1, v3

    .line 105
    goto :goto_2

    :cond_6
    move v2, v3

    .line 109
    goto :goto_3
.end method

.method public static isChatOnVSupport(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 60
    const/4 v0, 0x1

    return v0
.end method

.method public static isDualCall(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 167
    sget-boolean v0, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsInitialized:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->initialize(Landroid/content/Context;)V

    .line 168
    :cond_0
    sget-boolean v0, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsDualCall:Z

    return v0
.end method

.method public static isEasyModeSupported(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 235
    sget-boolean v0, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsInitialized:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->initialize(Landroid/content/Context;)V

    .line 237
    :cond_0
    sget-boolean v0, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsEasyModeSupported:Z

    return v0
.end method

.method public static isIPCall(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 156
    sget-boolean v0, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsInitialized:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->initialize(Landroid/content/Context;)V

    .line 157
    :cond_0
    sget-boolean v0, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsIPCall:Z

    return v0
.end method

.method public static isIntentRegistered(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 80
    .local v0, packageManager:Landroid/content/pm/PackageManager;
    const/high16 v2, 0x1

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 82
    .local v1, receiverList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isMobilePrintSupported(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 245
    sget-boolean v0, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsInitialized:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->initialize(Landroid/content/Context;)V

    .line 247
    :cond_0
    sget-boolean v0, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsMobilePrintSupported:Z

    return v0
.end method

.method public static isMotionCallEnabled(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 183
    sget-boolean v0, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsInitialized:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->initialize(Landroid/content/Context;)V

    .line 184
    :cond_0
    sget-boolean v0, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsMotionCallEnabled:Z

    return v0
.end method

.method public static isMultiWindowSupported(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 218
    sget-boolean v0, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsInitialized:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->initialize(Landroid/content/Context;)V

    .line 220
    :cond_0
    sget-boolean v0, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsMultiWindowSupported:Z

    return v0
.end method

.method public static isPhone(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 89
    sget-boolean v0, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsInitialized:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->initialize(Landroid/content/Context;)V

    .line 91
    :cond_0
    sget-boolean v0, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsPhone:Z

    return v0
.end method

.method public static isSipPhone(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 134
    sget-boolean v0, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsInitialized:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->initialize(Landroid/content/Context;)V

    .line 135
    :cond_0
    sget-boolean v0, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsSipPhone:Z

    return v0
.end method

.method public static isSmsCapable(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 209
    sget-boolean v0, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsInitialized:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->initialize(Landroid/content/Context;)V

    .line 211
    :cond_0
    sget-boolean v0, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsSmsCapable:Z

    return v0
.end method

.method public static isSmsIntentRegistered(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    .line 192
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    const-string v2, "smsto"

    const-string v3, ""

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 194
    .local v0, intent:Landroid/content/Intent;
    invoke-static {p0, v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isIntentRegistered(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    return v1
.end method

.method public static isUsingTwoPanes(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 202
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static isVibrator(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 175
    sget-boolean v0, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsInitialized:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->initialize(Landroid/content/Context;)V

    .line 176
    :cond_0
    sget-boolean v0, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsVibrator:Z

    return v0
.end method

.method public static isVideoCall(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 144
    sget-boolean v1, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsInitialized:Z

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->initialize(Landroid/content/Context;)V

    .line 145
    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isUsmMode(Landroid/content/Context;)Z

    move-result v0

    .line 146
    .local v0, isUsmEnabled:Z
    sget-boolean v2, Lcom/android/contacts/util/PhoneCapabilityTester;->sIsVideoCall:Z

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    and-int/2addr v1, v2

    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
