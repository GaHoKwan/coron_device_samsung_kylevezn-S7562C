.class public Lcom/android/mms/cmas/CMASVenderUSCC;
.super Lcom/android/mms/cmas/CMASVender;
.source "CMASVenderUSCC.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0}, Lcom/android/mms/cmas/CMASVender;-><init>()V

    .line 8
    sput-boolean v0, Lcom/android/mms/cmas/CMASVenderUSCC;->mCMASEnableMenuTestCategory:Z

    .line 9
    sput-boolean v0, Lcom/android/mms/cmas/CMASVenderUSCC;->mCMASSyncToServer4ExtremePriority:Z

    .line 10
    sput-boolean v0, Lcom/android/mms/cmas/CMASVenderUSCC;->mCmasPresidentialThreaded:Z

    .line 11
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderUSCC;->mCmasPresidentialOnTop:Z

    .line 12
    sput-boolean v0, Lcom/android/mms/cmas/CMASVenderUSCC;->mCmasAllInOneThreaded:Z

    .line 13
    sput-boolean v0, Lcom/android/mms/cmas/CMASVenderUSCC;->mCmasAlertTopUnlessRead:Z

    .line 14
    sput v1, Lcom/android/mms/cmas/CMASVenderUSCC;->mCmasWhichMsgOnTop:I

    .line 15
    sput-boolean v0, Lcom/android/mms/cmas/CMASVenderUSCC;->mCmasFontSizePref:Z

    .line 16
    sput-boolean v0, Lcom/android/mms/cmas/CMASVenderUSCC;->mCmasPresidentialOPTOUTPref:Z

    .line 17
    sput-boolean v0, Lcom/android/mms/cmas/CMASVenderUSCC;->mCmasNotificationPref:Z

    .line 18
    sput-boolean v0, Lcom/android/mms/cmas/CMASVenderUSCC;->mCmasVibrationPreviewPref:Z

    .line 19
    sput-boolean v0, Lcom/android/mms/cmas/CMASVenderUSCC;->mCmasNotiDateDescription:Z

    .line 20
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderUSCC;->mCmasTestMessageWithHiddenMenu:Z

    .line 21
    sput-boolean v0, Lcom/android/mms/cmas/CMASVenderUSCC;->mCmasAlertSoundMenu:Z

    .line 22
    sput-boolean v0, Lcom/android/mms/cmas/CMASVenderUSCC;->mCmasMessageTMOMenuTextFeature:Z

    .line 23
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderUSCC;->mCMASDisplayNextMsg:Z

    .line 24
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderUSCC;->mCmasMessageDuplicateMessageCheckFeature:Z

    .line 25
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderUSCC;->mEnableCmas:Z

    .line 26
    sput-boolean v0, Lcom/android/mms/cmas/CMASVenderUSCC;->mCmasTestMode:Z

    .line 27
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderUSCC;->mCDMACMASEnable:Z

    .line 28
    sput-boolean v0, Lcom/android/mms/cmas/CMASVenderUSCC;->mGSMCMASEnable:Z

    .line 29
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderUSCC;->mCMASDisplayLatest:Z

    .line 30
    sput-boolean v0, Lcom/android/mms/cmas/CMASVenderUSCC;->mCMASDialogOKisDismiss:Z

    .line 31
    const/4 v0, 0x5

    sput v0, Lcom/android/mms/cmas/CMASVenderUSCC;->mCmasProvider:I

    .line 32
    return-void
.end method
