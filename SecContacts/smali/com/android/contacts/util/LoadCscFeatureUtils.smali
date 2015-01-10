.class public Lcom/android/contacts/util/LoadCscFeatureUtils;
.super Ljava/lang/Object;
.source "LoadCscFeatureUtils.java"


# static fields
.field private static mDoNotSaveEmergencyNumber:Z

.field private static mDoNotSaveOTASPNumber:Z

.field private static mDoNotShowGroupMemberCount:Z

.field private static mEnableDualStandbyContacts:Z

.field private static mEnableDualStandbyContactsForCG:Z

.field private static mEnableDualStandbyContactsForGG:Z

.field private static mEnableSetTitleOnActionBar:Z

.field private static mEnableSupportFuzzySearch:Z

.field private static mEnableSupportMultiPinyinSearch:Z

.field private static mShowIconWithTextOnActionBar:Z

.field private static sLoadCscFeatureUtils:Lcom/android/contacts/util/LoadCscFeatureUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/android/contacts/util/LoadCscFeatureUtils;->sLoadCscFeatureUtils:Lcom/android/contacts/util/LoadCscFeatureUtils;

    .line 40
    sput-boolean v1, Lcom/android/contacts/util/LoadCscFeatureUtils;->mEnableSupportFuzzySearch:Z

    .line 42
    sput-boolean v1, Lcom/android/contacts/util/LoadCscFeatureUtils;->mEnableSupportMultiPinyinSearch:Z

    .line 44
    sput-boolean v1, Lcom/android/contacts/util/LoadCscFeatureUtils;->mShowIconWithTextOnActionBar:Z

    .line 46
    sput-boolean v1, Lcom/android/contacts/util/LoadCscFeatureUtils;->mEnableSetTitleOnActionBar:Z

    .line 48
    sput-boolean v1, Lcom/android/contacts/util/LoadCscFeatureUtils;->mDoNotSaveEmergencyNumber:Z

    .line 50
    sput-boolean v1, Lcom/android/contacts/util/LoadCscFeatureUtils;->mDoNotSaveOTASPNumber:Z

    .line 52
    sput-boolean v1, Lcom/android/contacts/util/LoadCscFeatureUtils;->mEnableDualStandbyContacts:Z

    .line 54
    sput-boolean v1, Lcom/android/contacts/util/LoadCscFeatureUtils;->mEnableDualStandbyContactsForCG:Z

    .line 56
    sput-boolean v1, Lcom/android/contacts/util/LoadCscFeatureUtils;->mEnableDualStandbyContactsForGG:Z

    .line 58
    sput-boolean v1, Lcom/android/contacts/util/LoadCscFeatureUtils;->mDoNotShowGroupMemberCount:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/android/contacts/util/LoadCscFeatureUtils;->sLoadCscFeatureUtils:Lcom/android/contacts/util/LoadCscFeatureUtils;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/android/contacts/util/LoadCscFeatureUtils;

    invoke-direct {v0}, Lcom/android/contacts/util/LoadCscFeatureUtils;-><init>()V

    sput-object v0, Lcom/android/contacts/util/LoadCscFeatureUtils;->sLoadCscFeatureUtils:Lcom/android/contacts/util/LoadCscFeatureUtils;

    .line 63
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->setCscFeature()V

    .line 65
    :cond_0
    sget-object v0, Lcom/android/contacts/util/LoadCscFeatureUtils;->sLoadCscFeatureUtils:Lcom/android/contacts/util/LoadCscFeatureUtils;

    return-object v0
.end method

.method private getSimType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    const-string v0, "ril.ICC_TYPE"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSimType(I)Ljava/lang/String;
    .locals 1
    .parameter "simCardId"

    .prologue
    .line 223
    if-nez p1, :cond_0

    .line 224
    invoke-direct {p0}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getSimType()Ljava/lang/String;

    move-result-object v0

    .line 226
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "ril.ICC_TYPE_1"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static setCscFeature()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 145
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    .line 146
    .local v0, cscFeature:Lcom/sec/android/app/CscFeature;
    const-string v1, "CscFeature_Contact_EnablePuzzySearch"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "CHNCDMA"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CscFeature_Contact_EnablePuzzySearch"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "CHNGSM"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_0
    move v1, v3

    :goto_0
    sput-boolean v1, Lcom/android/contacts/util/LoadCscFeatureUtils;->mEnableSupportFuzzySearch:Z

    .line 150
    const-string v1, "CscFeature_Contact_EnableMultiplePinyinSearch"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/contacts/util/LoadCscFeatureUtils;->mEnableSupportMultiPinyinSearch:Z

    .line 153
    const-string v1, "CscFeature_Contact_DoNotSaveEcc"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/contacts/util/LoadCscFeatureUtils;->mDoNotSaveEmergencyNumber:Z

    .line 156
    const-string v1, "CscFeature_Contact_DoNotSaveOtaSpNumber"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/contacts/util/LoadCscFeatureUtils;->mDoNotSaveOTASPNumber:Z

    .line 159
    const-string v1, "CscFeature_Contact_EnableMenuMDN"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/contacts/util/LoadCscFeatureUtils;->mEnableDualStandbyContacts:Z

    .line 162
    const-string v1, "CscFeature_Contact_EnableIconTextOnActionBar"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/contacts/util/LoadCscFeatureUtils;->mShowIconWithTextOnActionBar:Z

    .line 165
    const-string v1, "CscFeature_Contact_EnableBackupSvc4Ctc"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/contacts/util/LoadCscFeatureUtils;->mEnableSetTitleOnActionBar:Z

    .line 169
    sget-boolean v1, Lcom/android/contacts/util/LoadCscFeatureUtils;->mEnableDualStandbyContacts:Z

    if-eqz v1, :cond_1

    :cond_1
    sput-boolean v2, Lcom/android/contacts/util/LoadCscFeatureUtils;->mEnableDualStandbyContactsForCG:Z

    .line 175
    sget-boolean v1, Lcom/android/contacts/util/LoadCscFeatureUtils;->mEnableDualStandbyContacts:Z

    if-eqz v1, :cond_2

    :cond_2
    sput-boolean v2, Lcom/android/contacts/util/LoadCscFeatureUtils;->mEnableDualStandbyContactsForGG:Z

    .line 177
    const-string v1, "GT-S6810"

    const-string v4, "ro.product.model"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "GT-S6810P"

    const-string v4, "ro.product.model"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "GT-S6810L"

    const-string v4, "ro.product.model"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "GT-S6810B"

    const-string v4, "ro.product.model"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "GT-S6810M"

    const-string v4, "ro.product.model"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "GT-S6812"

    const-string v4, "ro.product.model"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "GT-S6812B"

    const-string v4, "ro.product.model"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "SPH-L500"

    const-string v4, "ro.product.model"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "SCH-I425"

    const-string v4, "ro.product.model"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "GT-S5310L"

    const-string v4, "ro.product.model"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "GT-S5310B"

    const-string v4, "ro.product.model"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "GT-S5310"

    const-string v4, "ro.product.model"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "GT-S5312L"

    const-string v4, "ro.product.model"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "GT-S5312B"

    const-string v4, "ro.product.model"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "GT-S5312"

    const-string v4, "ro.product.model"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "GT-S5282"

    const-string v4, "ro.product.model"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "GT-S5280"

    const-string v4, "ro.product.model"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "GT-S6012"

    const-string v4, "ro.product.model"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "GT-S6010"

    const-string v4, "ro.product.model"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "GT-B5330"

    const-string v4, "ro.product.model"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "GT-S7262"

    const-string v4, "ro.product.model"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "GT-S7392"

    const-string v4, "ro.product.model"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "GT-S7392L"

    const-string v4, "ro.product.model"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "GT-S7390"

    const-string v4, "ro.product.model"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    move v2, v3

    :cond_4
    sput-boolean v2, Lcom/android/contacts/util/LoadCscFeatureUtils;->mDoNotShowGroupMemberCount:Z

    .line 202
    return-void

    :cond_5
    move v1, v2

    .line 146
    goto/16 :goto_0
.end method


# virtual methods
.method public getAnrConfigValue()I
    .locals 2

    .prologue
    .line 69
    const-string v0, "2"

    invoke-direct {p0}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getSimType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_ANRConfig"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    .line 73
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAnrConfigValue(I)I
    .locals 3
    .parameter "simCardId"

    .prologue
    const/4 v0, 0x0

    .line 206
    if-nez p1, :cond_1

    .line 207
    invoke-virtual {p0}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getAnrConfigValue()I

    move-result v0

    .line 217
    :cond_0
    :goto_0
    return v0

    .line 209
    :cond_1
    const-string v1, "2"

    invoke-direct {p0, p1}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getSimType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method public getEnableDualStandbyContacts()Z
    .locals 1

    .prologue
    .line 129
    sget-boolean v0, Lcom/android/contacts/util/LoadCscFeatureUtils;->mEnableDualStandbyContacts:Z

    return v0
.end method

.method public getEnableDualStandbyContactsForCG()Z
    .locals 1

    .prologue
    .line 133
    sget-boolean v0, Lcom/android/contacts/util/LoadCscFeatureUtils;->mEnableDualStandbyContactsForCG:Z

    return v0
.end method

.method public getEnableDualStandbyContactsForGG()Z
    .locals 1

    .prologue
    .line 137
    sget-boolean v0, Lcom/android/contacts/util/LoadCscFeatureUtils;->mEnableDualStandbyContactsForGG:Z

    return v0
.end method

.method public getEnablePinyinHighlight()Z
    .locals 1

    .prologue
    .line 109
    sget-boolean v0, Lcom/android/contacts/util/LoadCscFeatureUtils;->mEnableSupportFuzzySearch:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/contacts/util/LoadCscFeatureUtils;->mEnableSupportMultiPinyinSearch:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSetTitleOnActionBar()Z
    .locals 1

    .prologue
    .line 113
    sget-boolean v0, Lcom/android/contacts/util/LoadCscFeatureUtils;->mEnableSetTitleOnActionBar:Z

    return v0
.end method

.method public getShowIconWithTextOnActionBar()Z
    .locals 1

    .prologue
    .line 117
    sget-boolean v0, Lcom/android/contacts/util/LoadCscFeatureUtils;->mShowIconWithTextOnActionBar:Z

    return v0
.end method

.method public isChineseLunarCalendar()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 95
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Calendar_EnableLocalHolidayDisplay"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CHINA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 102
    :cond_0
    :goto_0
    return v0

    .line 98
    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Calendar_EnableLocalHolidayDisplay"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "HKTW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 102
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNotAllowedToSaveEmergencyNumber()Z
    .locals 1

    .prologue
    .line 121
    sget-boolean v0, Lcom/android/contacts/util/LoadCscFeatureUtils;->mDoNotSaveEmergencyNumber:Z

    return v0
.end method

.method public isNotAllowedToSaveOTASPNumber()Z
    .locals 1

    .prologue
    .line 125
    sget-boolean v0, Lcom/android/contacts/util/LoadCscFeatureUtils;->mDoNotSaveOTASPNumber:Z

    return v0
.end method

.method public isNotShownGroupMemberCount()Z
    .locals 1

    .prologue
    .line 141
    sget-boolean v0, Lcom/android/contacts/util/LoadCscFeatureUtils;->mDoNotShowGroupMemberCount:Z

    return v0
.end method

.method public isSimDbSupport()Z
    .locals 3

    .prologue
    .line 81
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_DisableSIMContacts"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    .line 84
    .local v0, isSimDbDisabled:Z
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
