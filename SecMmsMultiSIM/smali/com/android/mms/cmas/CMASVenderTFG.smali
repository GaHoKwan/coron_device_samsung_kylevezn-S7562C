.class public Lcom/android/mms/cmas/CMASVenderTFG;
.super Lcom/android/mms/cmas/CMASVender;
.source "CMASVenderTFG.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 7
    invoke-direct {p0}, Lcom/android/mms/cmas/CMASVender;-><init>()V

    .line 8
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderTFG;->mCMASEnableMenuTestCategory:Z

    .line 9
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderTFG;->mCMASSyncToServer4ExtremePriority:Z

    .line 10
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderTFG;->mCmasPresidentialThreaded:Z

    .line 11
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderTFG;->mCmasPresidentialOnTop:Z

    .line 12
    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderTFG;->mCmasAllInOneThreaded:Z

    .line 13
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderTFG;->mCmasAlertTopUnlessRead:Z

    .line 14
    const/16 v0, 0x1f

    sput v0, Lcom/android/mms/cmas/CMASVenderTFG;->mCmasWhichMsgOnTop:I

    .line 15
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderTFG;->mCmasFontSizePref:Z

    .line 16
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderTFG;->mCmasPresidentialOPTOUTPref:Z

    .line 17
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderTFG;->mCmasNotificationPref:Z

    .line 18
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderTFG;->mCmasVibrationPreviewPref:Z

    .line 19
    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderTFG;->mCmasNotiDateDescription:Z

    .line 20
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderTFG;->mCmasTestMessageWithHiddenMenu:Z

    .line 21
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderTFG;->mCmasAlertSoundMenu:Z

    .line 22
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderTFG;->mCmasMessageTMOMenuTextFeature:Z

    .line 23
    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderTFG;->mCMASDisplayNextMsg:Z

    .line 24
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderTFG;->mCmasMessageDuplicateMessageCheckFeature:Z

    .line 25
    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderTFG;->mEnableCmas:Z

    .line 26
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderTFG;->mCmasTestMode:Z

    .line 27
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderTFG;->mCDMACMASEnable:Z

    .line 28
    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderTFG;->mGSMCMASEnable:Z

    .line 29
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderTFG;->mCMASDisplayLatest:Z

    .line 30
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderTFG;->mCMASDialogOKisDismiss:Z

    .line 31
    const/4 v0, 0x7

    sput v0, Lcom/android/mms/cmas/CMASVenderTFG;->mCmasProvider:I

    .line 32
    return-void
.end method
