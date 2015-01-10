.class public Lcom/android/mms/cmas/CMASVenderVZW;
.super Lcom/android/mms/cmas/CMASVender;
.source "CMASVenderVZW.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 7
    invoke-direct {p0}, Lcom/android/mms/cmas/CMASVender;-><init>()V

    .line 8
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderVZW;->mCMASEnableMenuTestCategory:Z

    .line 9
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderVZW;->mCMASSyncToServer4ExtremePriority:Z

    .line 10
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderVZW;->mCmasPresidentialThreaded:Z

    .line 11
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderVZW;->mCmasPresidentialOnTop:Z

    .line 12
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderVZW;->mCmasAllInOneThreaded:Z

    .line 13
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderVZW;->mCmasAlertTopUnlessRead:Z

    .line 14
    const/16 v0, 0x1f

    sput v0, Lcom/android/mms/cmas/CMASVenderVZW;->mCmasWhichMsgOnTop:I

    .line 15
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderVZW;->mCmasFontSizePref:Z

    .line 16
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderVZW;->mCmasPresidentialOPTOUTPref:Z

    .line 17
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderVZW;->mCmasNotificationPref:Z

    .line 18
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderVZW;->mCmasVibrationPreviewPref:Z

    .line 19
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderVZW;->mCmasNotiDateDescription:Z

    .line 20
    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderVZW;->mCmasTestMessageWithHiddenMenu:Z

    .line 21
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderVZW;->mCmasAlertSoundMenu:Z

    .line 22
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderVZW;->mCmasMessageTMOMenuTextFeature:Z

    .line 23
    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderVZW;->mCMASDisplayNextMsg:Z

    .line 24
    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderVZW;->mCmasMessageDuplicateMessageCheckFeature:Z

    .line 25
    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderVZW;->mEnableCmas:Z

    .line 26
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderVZW;->mCmasTestMode:Z

    .line 27
    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderVZW;->mCDMACMASEnable:Z

    .line 28
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderVZW;->mGSMCMASEnable:Z

    .line 29
    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderVZW;->mCMASDisplayLatest:Z

    .line 30
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderVZW;->mCMASDialogOKisDismiss:Z

    .line 31
    const/4 v0, 0x3

    sput v0, Lcom/android/mms/cmas/CMASVenderVZW;->mCmasProvider:I

    .line 32
    return-void
.end method
