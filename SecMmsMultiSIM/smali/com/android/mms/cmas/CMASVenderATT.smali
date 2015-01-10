.class public Lcom/android/mms/cmas/CMASVenderATT;
.super Lcom/android/mms/cmas/CMASVender;
.source "CMASVenderATT.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 7
    invoke-direct {p0}, Lcom/android/mms/cmas/CMASVender;-><init>()V

    .line 8
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATT;->mCMASEnableMenuTestCategory:Z

    .line 9
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATT;->mCMASSyncToServer4ExtremePriority:Z

    .line 10
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATT;->mCmasPresidentialThreaded:Z

    .line 11
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATT;->mCmasPresidentialOnTop:Z

    .line 12
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATT;->mCmasAllInOneThreaded:Z

    .line 13
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATT;->mCmasAlertTopUnlessRead:Z

    .line 14
    const/16 v0, 0x1f

    sput v0, Lcom/android/mms/cmas/CMASVenderATT;->mCmasWhichMsgOnTop:I

    .line 15
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATT;->mCmasFontSizePref:Z

    .line 16
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATT;->mCmasPresidentialOPTOUTPref:Z

    .line 17
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATT;->mCmasNotificationPref:Z

    .line 18
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATT;->mCmasVibrationPreviewPref:Z

    .line 19
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATT;->mCmasNotiDateDescription:Z

    .line 20
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATT;->mCmasTestMessageWithHiddenMenu:Z

    .line 21
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATT;->mCmasAlertSoundMenu:Z

    .line 22
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATT;->mCmasMessageTMOMenuTextFeature:Z

    .line 23
    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderATT;->mCMASDisplayNextMsg:Z

    .line 24
    sput-boolean v2, Lcom/android/mms/cmas/CMASVenderATT;->mCmasMessageDuplicateMessageCheckFeature:Z

    .line 25
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATT;->mEnableCmas:Z

    .line 26
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATT;->mCmasTestMode:Z

    .line 27
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATT;->mCDMACMASEnable:Z

    .line 28
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATT;->mGSMCMASEnable:Z

    .line 29
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATT;->mCMASDisplayLatest:Z

    .line 30
    sput-boolean v1, Lcom/android/mms/cmas/CMASVenderATT;->mCMASDialogOKisDismiss:Z

    .line 31
    const/4 v0, 0x2

    sput v0, Lcom/android/mms/cmas/CMASVenderATT;->mCmasProvider:I

    .line 32
    return-void
.end method
