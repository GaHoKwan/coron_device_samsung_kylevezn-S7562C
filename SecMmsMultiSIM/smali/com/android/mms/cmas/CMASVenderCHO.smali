.class public Lcom/android/mms/cmas/CMASVenderCHO;
.super Lcom/android/mms/cmas/CMASVender;
.source "CMASVenderCHO.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 7
    invoke-direct {p0}, Lcom/android/mms/cmas/CMASVender;-><init>()V

    .line 8
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderCHO;->mCMASEnableMenuTestCategory:Z

    .line 9
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderCHO;->mCMASSyncToServer4ExtremePriority:Z

    .line 10
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderCHO;->mCmasPresidentialThreaded:Z

    .line 11
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderCHO;->mCmasPresidentialOnTop:Z

    .line 12
    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderCHO;->mCmasAllInOneThreaded:Z

    .line 13
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderCHO;->mCmasAlertTopUnlessRead:Z

    .line 14
    const/16 v0, 0x1f

    sput v0, Lcom/android/mms/cmas/CMASVenderCHO;->mCmasWhichMsgOnTop:I

    .line 15
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderCHO;->mCmasFontSizePref:Z

    .line 16
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderCHO;->mCmasPresidentialOPTOUTPref:Z

    .line 17
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderCHO;->mCmasNotificationPref:Z

    .line 18
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderCHO;->mCmasVibrationPreviewPref:Z

    .line 19
    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderCHO;->mCmasNotiDateDescription:Z

    .line 20
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderCHO;->mCmasTestMessageWithHiddenMenu:Z

    .line 21
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderCHO;->mCmasAlertSoundMenu:Z

    .line 22
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderCHO;->mCmasMessageTMOMenuTextFeature:Z

    .line 23
    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderCHO;->mCMASDisplayNextMsg:Z

    .line 24
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderCHO;->mCmasMessageDuplicateMessageCheckFeature:Z

    .line 25
    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderCHO;->mEnableCmas:Z

    .line 26
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderCHO;->mCmasTestMode:Z

    .line 27
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderCHO;->mCDMACMASEnable:Z

    .line 28
    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderCHO;->mGSMCMASEnable:Z

    .line 29
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderCHO;->mCMASDisplayLatest:Z

    .line 30
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderCHO;->mCMASDialogOKisDismiss:Z

    .line 31
    const/4 v0, 0x6

    sput v0, Lcom/android/mms/cmas/CMASVenderCHO;->mCmasProvider:I

    .line 32
    return-void
.end method
