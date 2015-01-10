.class public Lcom/android/mms/cmas/CMASVender;
.super Ljava/lang/Object;
.source "CMASVender.java"


# static fields
.field protected static mCDMACMASEnable:Z

.field protected static mCMASDialogOKisDismiss:Z

.field protected static mCMASDisplayLatest:Z

.field protected static mCMASDisplayNextMsg:Z

.field protected static mCMASEnableMenuTestCategory:Z

.field protected static mCMASSyncToServer4ExtremePriority:Z

.field protected static mCmasAlertSoundMenu:Z

.field protected static mCmasAlertTopUnlessRead:Z

.field protected static mCmasAllInOneThreaded:Z

.field protected static mCmasFontSizePref:Z

.field protected static mCmasMessageDuplicateMessageCheckFeature:Z

.field protected static mCmasMessageTMOMenuTextFeature:Z

.field protected static mCmasNotiDateDescription:Z

.field protected static mCmasNotificationPref:Z

.field protected static mCmasPresidentialOPTOUTPref:Z

.field protected static mCmasPresidentialOnTop:Z

.field protected static mCmasPresidentialThreaded:Z

.field protected static mCmasProvider:I

.field protected static mCmasTestMessageWithHiddenMenu:Z

.field protected static mCmasTestMode:Z

.field protected static mCmasVibrationPreviewPref:Z

.field protected static mCmasWhichMsgOnTop:I

.field protected static mEnableCmas:Z

.field protected static mGSMCMASEnable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7
    sput-boolean v1, Lcom/android/mms/cmas/CMASVender;->mCMASEnableMenuTestCategory:Z

    .line 8
    sput-boolean v1, Lcom/android/mms/cmas/CMASVender;->mCMASSyncToServer4ExtremePriority:Z

    .line 9
    sput-boolean v1, Lcom/android/mms/cmas/CMASVender;->mCmasPresidentialThreaded:Z

    .line 10
    sput-boolean v1, Lcom/android/mms/cmas/CMASVender;->mCmasPresidentialOnTop:Z

    .line 11
    sput-boolean v1, Lcom/android/mms/cmas/CMASVender;->mCmasAllInOneThreaded:Z

    .line 12
    sput-boolean v1, Lcom/android/mms/cmas/CMASVender;->mCmasAlertTopUnlessRead:Z

    .line 13
    const/16 v0, 0x1f

    sput v0, Lcom/android/mms/cmas/CMASVender;->mCmasWhichMsgOnTop:I

    .line 14
    sput-boolean v1, Lcom/android/mms/cmas/CMASVender;->mCmasFontSizePref:Z

    .line 15
    sput-boolean v1, Lcom/android/mms/cmas/CMASVender;->mCmasPresidentialOPTOUTPref:Z

    .line 16
    sput-boolean v1, Lcom/android/mms/cmas/CMASVender;->mCmasNotificationPref:Z

    .line 17
    sput-boolean v1, Lcom/android/mms/cmas/CMASVender;->mCmasVibrationPreviewPref:Z

    .line 18
    sput-boolean v1, Lcom/android/mms/cmas/CMASVender;->mCmasNotiDateDescription:Z

    .line 19
    sput-boolean v1, Lcom/android/mms/cmas/CMASVender;->mCmasTestMessageWithHiddenMenu:Z

    .line 20
    sput-boolean v1, Lcom/android/mms/cmas/CMASVender;->mCmasAlertSoundMenu:Z

    .line 21
    sput-boolean v1, Lcom/android/mms/cmas/CMASVender;->mCmasMessageTMOMenuTextFeature:Z

    .line 22
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/cmas/CMASVender;->mCMASDisplayNextMsg:Z

    .line 23
    sput-boolean v1, Lcom/android/mms/cmas/CMASVender;->mCmasMessageDuplicateMessageCheckFeature:Z

    .line 24
    sput-boolean v1, Lcom/android/mms/cmas/CMASVender;->mEnableCmas:Z

    .line 25
    sput-boolean v1, Lcom/android/mms/cmas/CMASVender;->mCmasTestMode:Z

    .line 26
    sput-boolean v1, Lcom/android/mms/cmas/CMASVender;->mCDMACMASEnable:Z

    .line 27
    sput-boolean v1, Lcom/android/mms/cmas/CMASVender;->mGSMCMASEnable:Z

    .line 28
    sput-boolean v1, Lcom/android/mms/cmas/CMASVender;->mCMASDisplayLatest:Z

    .line 29
    sput-boolean v1, Lcom/android/mms/cmas/CMASVender;->mCMASDialogOKisDismiss:Z

    .line 30
    sput v1, Lcom/android/mms/cmas/CMASVender;->mCmasProvider:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCDMACMASEnable()Z
    .locals 1

    .prologue
    .line 76
    sget-boolean v0, Lcom/android/mms/cmas/CMASVender;->mCDMACMASEnable:Z

    return v0
.end method

.method public getCDMADisplayLatestEnable()Z
    .locals 1

    .prologue
    .line 86
    sget-boolean v0, Lcom/android/mms/cmas/CMASVender;->mCMASDisplayLatest:Z

    return v0
.end method

.method public getCMASDialogOKisDismiss()Z
    .locals 1

    .prologue
    .line 91
    sget-boolean v0, Lcom/android/mms/cmas/CMASVender;->mCMASDialogOKisDismiss:Z

    return v0
.end method

.method public getCMASProvider()I
    .locals 1

    .prologue
    .line 36
    sget v0, Lcom/android/mms/cmas/CMASVender;->mCmasProvider:I

    return v0
.end method

.method public getCmasAlertSoundMenu()Z
    .locals 1

    .prologue
    .line 121
    sget-boolean v0, Lcom/android/mms/cmas/CMASVender;->mCmasAlertSoundMenu:Z

    return v0
.end method

.method public getCmasAlertTopUnlessRead()Z
    .locals 1

    .prologue
    .line 56
    sget-boolean v0, Lcom/android/mms/cmas/CMASVender;->mCmasAlertTopUnlessRead:Z

    return v0
.end method

.method public getCmasAllInOneThreaded()Z
    .locals 1

    .prologue
    .line 51
    sget-boolean v0, Lcom/android/mms/cmas/CMASVender;->mCmasAllInOneThreaded:Z

    return v0
.end method

.method public getCmasFontSizePref()Z
    .locals 1

    .prologue
    .line 71
    sget-boolean v0, Lcom/android/mms/cmas/CMASVender;->mCmasFontSizePref:Z

    return v0
.end method

.method public getCmasMessageDuplicateMessageCheckFeature()Z
    .locals 1

    .prologue
    .line 126
    sget-boolean v0, Lcom/android/mms/cmas/CMASVender;->mCmasMessageDuplicateMessageCheckFeature:Z

    return v0
.end method

.method public getCmasMessagePriorityCheckFeature()Z
    .locals 1

    .prologue
    .line 131
    sget-boolean v0, Lcom/android/mms/cmas/CMASVender;->mCMASDisplayNextMsg:Z

    return v0
.end method

.method public getCmasMessageServereBelongToExtreme()Z
    .locals 1

    .prologue
    .line 146
    sget-boolean v0, Lcom/android/mms/cmas/CMASVender;->mCMASSyncToServer4ExtremePriority:Z

    return v0
.end method

.method public getCmasNotiDateDescription()Z
    .locals 1

    .prologue
    .line 111
    sget-boolean v0, Lcom/android/mms/cmas/CMASVender;->mCmasNotiDateDescription:Z

    return v0
.end method

.method public getCmasNotificationPref()Z
    .locals 1

    .prologue
    .line 101
    sget-boolean v0, Lcom/android/mms/cmas/CMASVender;->mCmasNotificationPref:Z

    return v0
.end method

.method public getCmasPresidentialOPTOUTPref()Z
    .locals 1

    .prologue
    .line 96
    sget-boolean v0, Lcom/android/mms/cmas/CMASVender;->mCmasPresidentialOPTOUTPref:Z

    return v0
.end method

.method public getCmasPresidentialOnTop()Z
    .locals 1

    .prologue
    .line 46
    sget-boolean v0, Lcom/android/mms/cmas/CMASVender;->mCmasPresidentialOnTop:Z

    return v0
.end method

.method public getCmasPresidentialThreaded()Z
    .locals 1

    .prologue
    .line 41
    sget-boolean v0, Lcom/android/mms/cmas/CMASVender;->mCmasPresidentialThreaded:Z

    return v0
.end method

.method public getCmasTestMessageWithHiddenMenu()Z
    .locals 1

    .prologue
    .line 116
    sget-boolean v0, Lcom/android/mms/cmas/CMASVender;->mCmasTestMessageWithHiddenMenu:Z

    return v0
.end method

.method public getCmasTestMode()Z
    .locals 1

    .prologue
    .line 66
    sget-boolean v0, Lcom/android/mms/cmas/CMASVender;->mCmasTestMode:Z

    return v0
.end method

.method public getCmasTestSPRFeature()Z
    .locals 1

    .prologue
    .line 141
    sget-boolean v0, Lcom/android/mms/cmas/CMASVender;->mCMASEnableMenuTestCategory:Z

    return v0
.end method

.method public getCmasVibrationPreviewPref()Z
    .locals 1

    .prologue
    .line 106
    sget-boolean v0, Lcom/android/mms/cmas/CMASVender;->mCmasVibrationPreviewPref:Z

    return v0
.end method

.method public getCmasWhichMsgOnTop()I
    .locals 1

    .prologue
    .line 61
    sget v0, Lcom/android/mms/cmas/CMASVender;->mCmasWhichMsgOnTop:I

    return v0
.end method

.method public getEnableCmas()Z
    .locals 1

    .prologue
    .line 136
    sget-boolean v0, Lcom/android/mms/cmas/CMASVender;->mEnableCmas:Z

    return v0
.end method

.method public getGSMCMASEnable()Z
    .locals 1

    .prologue
    .line 81
    sget-boolean v0, Lcom/android/mms/cmas/CMASVender;->mGSMCMASEnable:Z

    return v0
.end method

.method public getmCmasMessageTMOMenuTextFeature()Z
    .locals 1

    .prologue
    .line 151
    sget-boolean v0, Lcom/android/mms/cmas/CMASVender;->mCmasMessageTMOMenuTextFeature:Z

    return v0
.end method

.method public isTMOCMASFeatureEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 156
    sget v1, Lcom/android/mms/cmas/CMASVender;->mCmasProvider:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
