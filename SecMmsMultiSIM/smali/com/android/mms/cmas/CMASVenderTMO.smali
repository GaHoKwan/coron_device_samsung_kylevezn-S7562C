.class public Lcom/android/mms/cmas/CMASVenderTMO;
.super Lcom/android/mms/cmas/CMASVender;
.source "CMASVenderTMO.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 7
    invoke-direct {p0}, Lcom/android/mms/cmas/CMASVender;-><init>()V

    .line 8
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderTMO;->mCMASEnableMenuTestCategory:Z

    .line 9
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderTMO;->mCMASSyncToServer4ExtremePriority:Z

    .line 10
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderTMO;->mCmasPresidentialThreaded:Z

    .line 11
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderTMO;->mCmasPresidentialOnTop:Z

    .line 12
    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderTMO;->mCmasAllInOneThreaded:Z

    .line 13
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderTMO;->mCmasAlertTopUnlessRead:Z

    .line 14
    const/16 v0, 0x1f

    sput v0, Lcom/android/mms/cmas/CMASVenderTMO;->mCmasWhichMsgOnTop:I

    .line 15
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderTMO;->mCmasFontSizePref:Z

    .line 16
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderTMO;->mCmasPresidentialOPTOUTPref:Z

    .line 17
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderTMO;->mCmasNotificationPref:Z

    .line 18
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderTMO;->mCmasVibrationPreviewPref:Z

    .line 19
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderTMO;->mCmasNotiDateDescription:Z

    .line 20
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderTMO;->mCmasTestMessageWithHiddenMenu:Z

    .line 21
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderTMO;->mCmasAlertSoundMenu:Z

    .line 22
    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderTMO;->mCmasMessageTMOMenuTextFeature:Z

    .line 23
    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderTMO;->mCMASDisplayNextMsg:Z

    .line 24
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderTMO;->mCmasMessageDuplicateMessageCheckFeature:Z

    .line 25
    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderTMO;->mEnableCmas:Z

    .line 26
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderTMO;->mCmasTestMode:Z

    .line 27
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderTMO;->mCDMACMASEnable:Z

    .line 28
    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderTMO;->mGSMCMASEnable:Z

    .line 29
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderTMO;->mCMASDisplayLatest:Z

    .line 30
    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderTMO;->mCMASDialogOKisDismiss:Z

    .line 31
    sput v2, Lcom/android/mms/cmas/CMASVenderTMO;->mCmasProvider:I

    .line 32
    return-void
.end method
