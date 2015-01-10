.class public Lcom/android/mms/cmas/CMASVenderSPR;
.super Lcom/android/mms/cmas/CMASVender;
.source "CMASVenderSPR.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 7
    invoke-direct {p0}, Lcom/android/mms/cmas/CMASVender;-><init>()V

    .line 8
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderSPR;->mCMASEnableMenuTestCategory:Z

    .line 9
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderSPR;->mCMASSyncToServer4ExtremePriority:Z

    .line 10
    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderSPR;->mCmasPresidentialThreaded:Z

    .line 11
    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderSPR;->mCmasPresidentialOnTop:Z

    .line 12
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderSPR;->mCmasAllInOneThreaded:Z

    .line 13
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderSPR;->mCmasAlertTopUnlessRead:Z

    .line 14
    const/16 v0, 0x1f

    sput v0, Lcom/android/mms/cmas/CMASVenderSPR;->mCmasWhichMsgOnTop:I

    .line 15
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderSPR;->mCmasFontSizePref:Z

    .line 16
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderSPR;->mCmasPresidentialOPTOUTPref:Z

    .line 17
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderSPR;->mCmasNotificationPref:Z

    .line 18
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderSPR;->mCmasVibrationPreviewPref:Z

    .line 19
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderSPR;->mCmasNotiDateDescription:Z

    .line 20
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderSPR;->mCmasTestMessageWithHiddenMenu:Z

    .line 21
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderSPR;->mCmasAlertSoundMenu:Z

    .line 22
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderSPR;->mCmasMessageTMOMenuTextFeature:Z

    .line 23
    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderSPR;->mCMASDisplayNextMsg:Z

    .line 24
    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderSPR;->mCmasMessageDuplicateMessageCheckFeature:Z

    .line 25
    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderSPR;->mEnableCmas:Z

    .line 26
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderSPR;->mCmasTestMode:Z

    .line 27
    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderSPR;->mCDMACMASEnable:Z

    .line 28
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderSPR;->mGSMCMASEnable:Z

    .line 29
    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderSPR;->mCMASDisplayLatest:Z

    .line 30
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderSPR;->mCMASDialogOKisDismiss:Z

    .line 31
    const/4 v0, 0x4

    sput v0, Lcom/android/mms/cmas/CMASVenderSPR;->mCmasProvider:I

    .line 32
    return-void
.end method
