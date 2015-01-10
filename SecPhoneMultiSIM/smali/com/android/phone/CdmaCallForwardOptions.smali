.class public Lcom/android/phone/CdmaCallForwardOptions;
.super Landroid/preference/PreferenceActivity;
.source "CdmaCallForwardOptions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;
.implements Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CdmaCallForwardOptions$4;,
        Lcom/android/phone/CdmaCallForwardOptions$AppState;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final NUM_PROJECTION:[Ljava/lang/String;

.field private static final SRC_TAGS:[Ljava/lang/String;


# instance fields
.field private mAppState:Lcom/android/phone/CdmaCallForwardOptions$AppState;

.field private mButtonCFB:Lcom/android/phone/EditPhoneNumberPreference;

.field private mButtonCFBUSYExpand:Landroid/preference/PreferenceScreen;

.field private mButtonCFB_Dis:Lcom/android/phone/EditPhoneNumberPreference;

.field private mButtonCFCancel:Lcom/android/phone/EditPhoneNumberPreference;

.field private mButtonCFNOREPLYExpand:Landroid/preference/PreferenceScreen;

.field private mButtonCFNOTRECHABLEExpand:Landroid/preference/PreferenceScreen;

.field private mButtonCFNRc:Lcom/android/phone/EditPhoneNumberPreference;

.field private mButtonCFNRc_Dis:Lcom/android/phone/EditPhoneNumberPreference;

.field private mButtonCFNRy:Lcom/android/phone/EditPhoneNumberPreference;

.field private mButtonCFNRy_Dis:Lcom/android/phone/EditPhoneNumberPreference;

.field private mButtonCFU:Lcom/android/phone/EditPhoneNumberPreference;

.field private mButtonCFUNCONDITIONALExpand:Landroid/preference/PreferenceScreen;

.field private mButtonCFU_Dis:Lcom/android/phone/EditPhoneNumberPreference;

.field private mButtonCW:Lcom/android/phone/EditPhoneNumberPreference;

.field private mButtonCW_Dis:Lcom/android/phone/EditPhoneNumberPreference;

.field private mCFBDataStale:Z

.field private mCFDataStale:Z

.field private mCFNRcDataStale:Z

.field private mCFNRyDataStale:Z

.field private mCFUDataStale:Z

.field private mCancelDataStale:Z

.field private mContactListIntent:Landroid/content/Intent;

.field private mDialingNumCFB:Ljava/lang/String;

.field private mDialingNumCFNRc:Ljava/lang/String;

.field private mDialingNumCFNRy:Ljava/lang/String;

.field private mDialingNumCFU:Ljava/lang/String;

.field private mDisplayMode:I

.field private mGetAllCFOptionsComplete:Landroid/os/Handler;

.field private mIsBusyDialogAvailable:Z

.field private mMoreDataStale:Z

.field private mNetworkServiceHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mSetState_check:Z

.field private mTelMan:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 69
    sget v0, Lcom/android/phone/PhoneApp;->DBG_LEVEL:I

    const/4 v3, 0x2

    if-lt v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    .line 72
    new-array v0, v1, [Ljava/lang/String;

    const-string v3, "data1"

    aput-object v3, v0, v2

    sput-object v0, Lcom/android/phone/CdmaCallForwardOptions;->NUM_PROJECTION:[Ljava/lang/String;

    .line 73
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "{0}"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/phone/CdmaCallForwardOptions;->SRC_TAGS:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 69
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 58
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 168
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mDisplayMode:I

    .line 169
    iput-boolean v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFDataStale:Z

    .line 170
    iput-boolean v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFUDataStale:Z

    .line 171
    iput-boolean v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFNRyDataStale:Z

    .line 172
    iput-boolean v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFNRcDataStale:Z

    .line 173
    iput-boolean v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFBDataStale:Z

    .line 174
    iput-boolean v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCancelDataStale:Z

    .line 175
    iput-boolean v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mMoreDataStale:Z

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mIsBusyDialogAvailable:Z

    .line 579
    new-instance v0, Lcom/android/phone/CdmaCallForwardOptions$2;

    invoke-direct {v0, p0}, Lcom/android/phone/CdmaCallForwardOptions$2;-><init>(Lcom/android/phone/CdmaCallForwardOptions;)V

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mNetworkServiceHandler:Landroid/os/Handler;

    .line 613
    new-instance v0, Lcom/android/phone/CdmaCallForwardOptions$3;

    invoke-direct {v0, p0}, Lcom/android/phone/CdmaCallForwardOptions$3;-><init>(Lcom/android/phone/CdmaCallForwardOptions;)V

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mGetAllCFOptionsComplete:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 58
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-static {p0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/phone/CdmaCallForwardOptions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFBDataStale:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/android/phone/CdmaCallForwardOptions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFNRyDataStale:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/android/phone/CdmaCallForwardOptions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFNRcDataStale:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/android/phone/CdmaCallForwardOptions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCancelDataStale:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/phone/CdmaCallForwardOptions;Lcom/android/phone/CdmaCallForwardOptions$AppState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/android/phone/CdmaCallForwardOptions;->setAppState(Lcom/android/phone/CdmaCallForwardOptions$AppState;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/CdmaCallForwardOptions;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mDisplayMode:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/CdmaCallForwardOptions;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/phone/CdmaCallForwardOptions;->queryAllCFOptions()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/CdmaCallForwardOptions;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mNetworkServiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/CdmaCallForwardOptions;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/CdmaCallForwardOptions;Landroid/os/AsyncResult;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CdmaCallForwardOptions;->handleGetCFMessage(Landroid/os/AsyncResult;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/phone/CdmaCallForwardOptions;Lcom/android/phone/CdmaCallForwardOptions$AppState;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CdmaCallForwardOptions;->setAppState(Lcom/android/phone/CdmaCallForwardOptions$AppState;I)V

    return-void
.end method

.method static synthetic access$802(Lcom/android/phone/CdmaCallForwardOptions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFDataStale:Z

    return p1
.end method

.method static synthetic access$902(Lcom/android/phone/CdmaCallForwardOptions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFUDataStale:Z

    return p1
.end method

.method private adjustCFbuttonState(Lcom/android/phone/EditPhoneNumberPreference;ZILjava/lang/String;)V
    .locals 4
    .parameter "epn"
    .parameter "isActive"
    .parameter "template"
    .parameter "number"

    .prologue
    .line 521
    sget-boolean v2, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjustCFbuttonState epn => "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isActive = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " template =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " number = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 523
    :cond_0
    if-nez p1, :cond_1

    .line 537
    :goto_0
    return-void

    .line 526
    :cond_1
    const-string v0, ""

    .line 527
    .local v0, summaryOn:Ljava/lang/CharSequence;
    if-eqz p2, :cond_3

    .line 528
    if-eqz p4, :cond_2

    .line 529
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p4, v1, v2

    .line 530
    .local v1, values:[Ljava/lang/String;
    invoke-virtual {p0, p3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    sget-object v3, Lcom/android/phone/CdmaCallForwardOptions;->SRC_TAGS:[Ljava/lang/String;

    invoke-static {v2, v3, v1}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 532
    .end local v1           #values:[Ljava/lang/String;
    :cond_2
    invoke-virtual {p1, v0}, Lcom/android/phone/EditPhoneNumberPreference;->setSummaryOn(Ljava/lang/CharSequence;)Lcom/android/phone/EditPhoneNumberPreference;

    .line 536
    :cond_3
    invoke-virtual {p1, p4}, Lcom/android/phone/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/EditPhoneNumberPreference;

    goto :goto_0
.end method

.method private final dismissBusyDialog()V
    .locals 2

    .prologue
    .line 900
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dismissBusyDialog: mIsBusyDialogAvailable => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mIsBusyDialogAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 902
    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mIsBusyDialogAvailable:Z

    if-eqz v0, :cond_1

    .line 903
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Landroid/app/Activity;->dismissDialog(I)V

    .line 905
    :cond_1
    return-void
.end method

.method private handleGetCFMessage(Landroid/os/AsyncResult;I)I
    .locals 6
    .parameter "ar"
    .parameter "reason"

    .prologue
    const/16 v4, 0x12c

    .line 478
    sget-boolean v3, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleGetCFMessage ar = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " reason = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 480
    :cond_0
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_2

    .line 481
    sget-boolean v3, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "handleGetCFMessage: Error getting CF enable state."

    invoke-static {v3}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 482
    :cond_1
    const/16 v3, 0xc8

    .line 513
    :goto_0
    return v3

    .line 483
    :cond_2
    iget-object v3, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/Throwable;

    if-eqz v3, :cond_4

    .line 487
    sget-boolean v3, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleGetCFMessage: Error during set call, reason: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " exception: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Throwable;

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    :cond_3
    move v3, v4

    .line 489
    goto :goto_0

    .line 491
    :cond_4
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object v0, v3

    check-cast v0, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 492
    .local v0, cfInfoArray:[Lcom/android/internal/telephony/CallForwardInfo;
    array-length v3, v0

    if-nez v3, :cond_6

    .line 493
    sget-boolean v3, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v3, :cond_5

    const-string v3, "handleGetCFMessage: Error getting CF state, unexpected value."

    invoke-static {v3}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    :cond_5
    move v3, v4

    .line 494
    goto :goto_0

    .line 500
    :cond_6
    const/4 v1, 0x0

    .local v1, i:I
    array-length v2, v0

    .local v2, length:I
    :goto_1
    if-ge v1, v2, :cond_8

    .line 501
    aget-object v3, v0, v1

    iget v3, v3, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_9

    .line 503
    sget-boolean v3, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v3, :cond_7

    .line 504
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleGetCFMessage: CF state successfully queried for reason "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 507
    :cond_7
    aget-object v3, v0, v1

    invoke-direct {p0, p2, v3}, Lcom/android/phone/CdmaCallForwardOptions;->syncCFUIState(ILcom/android/internal/telephony/CallForwardInfo;)V

    .line 513
    :cond_8
    const/16 v3, 0x64

    goto :goto_0

    .line 500
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 1095
    const-string v0, "CdmaCallForwardOptions"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    return-void
.end method

.method private queryAllCFOptions()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 606
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "queryAllCFOptions: begin querying call features."

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 607
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mGetAllCFOptionsComplete:Landroid/os/Handler;

    const/16 v2, 0x190

    invoke-static {v1, v2, v3, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 610
    return-void
.end method

.method private setAppState(Lcom/android/phone/CdmaCallForwardOptions$AppState;)V
    .locals 2
    .parameter "requestedState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 779
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAppState First => requestedState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 780
    :cond_0
    sget-object v0, Lcom/android/phone/CdmaCallForwardOptions$AppState;->NETWORK_ERROR:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-ne p1, v0, :cond_2

    .line 781
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "setAppState: illegal error state without reason."

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 782
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal error state without reason."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 784
    :cond_2
    const/16 v0, 0x64

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CdmaCallForwardOptions;->setAppState(Lcom/android/phone/CdmaCallForwardOptions$AppState;I)V

    .line 785
    return-void
.end method

.method private setAppState(Lcom/android/phone/CdmaCallForwardOptions$AppState;I)V
    .locals 4
    .parameter "requestedState"
    .parameter "msgStatus"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x64

    const/16 v2, 0x384

    .line 790
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAppState Second => requestedState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " msgStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 792
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mAppState:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-ne p1, v0, :cond_2

    .line 793
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "setAppState: requestedState same as current state. ignoring."

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 891
    :cond_1
    :goto_0
    return-void

    .line 799
    :cond_2
    sget-object v0, Lcom/android/phone/CdmaCallForwardOptions$AppState;->NETWORK_ERROR:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-ne p1, v0, :cond_6

    .line 800
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAppState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 801
    :cond_3
    sparse-switch p2, :sswitch_data_0

    .line 826
    :goto_1
    iput-object p1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mAppState:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    goto :goto_0

    .line 803
    :sswitch_0
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mAppState:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    sget-object v1, Lcom/android/phone/CdmaCallForwardOptions$AppState;->INITIAL_QUERY:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-ne v0, v1, :cond_4

    .line 804
    invoke-virtual {p0, v2}, Landroid/app/Activity;->dismissDialog(I)V

    .line 808
    :goto_2
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_1

    .line 806
    :cond_4
    invoke-direct {p0}, Lcom/android/phone/CdmaCallForwardOptions;->dismissBusyDialog()V

    goto :goto_2

    .line 811
    :sswitch_1
    const/16 v0, 0x320

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_1

    .line 814
    :sswitch_2
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mAppState:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    sget-object v1, Lcom/android/phone/CdmaCallForwardOptions$AppState;->INITIAL_QUERY:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-ne v0, v1, :cond_5

    .line 815
    invoke-virtual {p0, v2}, Landroid/app/Activity;->dismissDialog(I)V

    .line 819
    :goto_3
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_1

    .line 817
    :cond_5
    invoke-direct {p0}, Lcom/android/phone/CdmaCallForwardOptions;->dismissBusyDialog()V

    goto :goto_3

    .line 830
    :cond_6
    sget-object v0, Lcom/android/phone/CdmaCallForwardOptions$4;->$SwitchMap$com$android$phone$CdmaCallForwardOptions$AppState:[I

    iget-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mAppState:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 890
    :cond_7
    :goto_4
    iput-object p1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mAppState:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    goto :goto_0

    .line 834
    :pswitch_0
    sget-object v0, Lcom/android/phone/CdmaCallForwardOptions$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-eq p1, v0, :cond_7

    .line 835
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_8

    const-string v0, "setAppState: illegal transition from NETWORK_ERROR"

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 836
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from NETWORK_ERROR"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 841
    :pswitch_1
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAppState: displaying busy dialog, reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 842
    :cond_9
    sget-object v0, Lcom/android/phone/CdmaCallForwardOptions$AppState;->INITIAL_QUERY:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-ne p1, v0, :cond_a

    .line 843
    invoke-virtual {p0, v2}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_4

    .line 844
    :cond_a
    sget-object v0, Lcom/android/phone/CdmaCallForwardOptions$AppState;->BUSY_NETWORK_CONNECT:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-ne p1, v0, :cond_b

    .line 845
    invoke-virtual {p0, v3}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_4

    .line 846
    :cond_b
    sget-object v0, Lcom/android/phone/CdmaCallForwardOptions$AppState;->WAITING_NUMBER_SELECT:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-ne p1, v0, :cond_7

    .line 847
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_c

    const-string v0, "setAppState: illegal transition from INPUT_READY"

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 848
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from INPUT_READY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 853
    :pswitch_2
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_d

    const-string v0, "setAppState: DIALOG_OPEN"

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 854
    :cond_d
    sget-object v0, Lcom/android/phone/CdmaCallForwardOptions$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-eq p1, v0, :cond_7

    .line 857
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_e

    const-string v0, "setAppState: DIALOG_OPEN => BUSY_DIALOG"

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 858
    :cond_e
    invoke-virtual {p0, v3}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_4

    .line 863
    :pswitch_3
    sget-object v0, Lcom/android/phone/CdmaCallForwardOptions$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-eq p1, v0, :cond_10

    .line 864
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_f

    const-string v0, "setAppState: illegal transition from INITIAL_QUERY"

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 865
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from INITIAL_QUERY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 868
    :cond_10
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_11

    const-string v0, "setAppState: INITIAL_QUERY => INITIAL_BUSY_DIALOG"

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 869
    :cond_11
    invoke-virtual {p0, v2}, Landroid/app/Activity;->dismissDialog(I)V

    goto/16 :goto_4

    .line 872
    :pswitch_4
    sget-object v0, Lcom/android/phone/CdmaCallForwardOptions$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-eq p1, v0, :cond_13

    .line 873
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_12

    const-string v0, "setAppState: illegal transition from BUSY_NETWORK_CONNECT"

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 874
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from BUSY_NETWORK_CONNECT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 877
    :cond_13
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_14

    const-string v0, "setAppState: BUSY_NETWORK_CONNECT =>dismissBusyDialog"

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 878
    :cond_14
    invoke-direct {p0}, Lcom/android/phone/CdmaCallForwardOptions;->dismissBusyDialog()V

    goto/16 :goto_4

    .line 881
    :pswitch_5
    sget-object v0, Lcom/android/phone/CdmaCallForwardOptions$AppState;->DIALOG_OPEN:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-eq p1, v0, :cond_16

    .line 882
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_15

    const-string v0, "setAppState: illegal transition from WAITING_NUMBER_SELECT"

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 883
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from WAITING_NUMBER_SELECT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 886
    :cond_16
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_17

    const-string v0, "setAppState: WAITING_NUMBER_SELECT =>dismissBusyDialog"

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 887
    :cond_17
    invoke-direct {p0}, Lcom/android/phone/CdmaCallForwardOptions;->dismissBusyDialog()V

    goto/16 :goto_4

    .line 801
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x12c -> :sswitch_2
        0x320 -> :sswitch_1
    .end sparse-switch

    .line 830
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private syncCFUIState(ILcom/android/internal/telephony/CallForwardInfo;)V
    .locals 4
    .parameter "reason"
    .parameter "info"

    .prologue
    const/4 v0, 0x1

    .line 541
    iget v1, p2, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v1, v0, :cond_1

    .line 543
    .local v0, active:Z
    :goto_0
    sget-boolean v1, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncCFUIState reason => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " info = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " active =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 544
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 566
    :goto_1
    return-void

    .line 541
    .end local v0           #active:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 546
    .restart local v0       #active:Z
    :pswitch_0
    sget-boolean v1, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "syncCFUIState: Setting UI state consistent with CFU."

    invoke-static {v1}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 547
    :cond_2
    iget-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU:Lcom/android/phone/EditPhoneNumberPreference;

    const v2, 0x7f0e0069

    iget-object v3, p2, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/phone/CdmaCallForwardOptions;->adjustCFbuttonState(Lcom/android/phone/EditPhoneNumberPreference;ZILjava/lang/String;)V

    .line 548
    iget-object v1, p2, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mDialingNumCFU:Ljava/lang/String;

    goto :goto_1

    .line 551
    :pswitch_1
    sget-boolean v1, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v1, :cond_3

    const-string v1, "syncCFUIState: Setting UI state consistent with CFB."

    invoke-static {v1}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 552
    :cond_3
    iget-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB:Lcom/android/phone/EditPhoneNumberPreference;

    const v2, 0x7f0e006e

    iget-object v3, p2, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/phone/CdmaCallForwardOptions;->adjustCFbuttonState(Lcom/android/phone/EditPhoneNumberPreference;ZILjava/lang/String;)V

    .line 553
    iget-object v1, p2, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mDialingNumCFB:Ljava/lang/String;

    goto :goto_1

    .line 556
    :pswitch_2
    sget-boolean v1, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v1, :cond_4

    const-string v1, "syncCFUIState: Setting UI state consistent with CFNRy."

    invoke-static {v1}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 557
    :cond_4
    iget-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/EditPhoneNumberPreference;

    const v2, 0x7f0e0074

    iget-object v3, p2, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/phone/CdmaCallForwardOptions;->adjustCFbuttonState(Lcom/android/phone/EditPhoneNumberPreference;ZILjava/lang/String;)V

    .line 558
    iget-object v1, p2, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mDialingNumCFNRy:Ljava/lang/String;

    goto :goto_1

    .line 561
    :pswitch_3
    sget-boolean v1, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v1, :cond_5

    const-string v1, "syncCFUIState: Setting UI state consistent with CFNRc."

    invoke-static {v1}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 562
    :cond_5
    iget-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/EditPhoneNumberPreference;

    const v2, 0x7f0e007a

    iget-object v3, p2, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/phone/CdmaCallForwardOptions;->adjustCFbuttonState(Lcom/android/phone/EditPhoneNumberPreference;ZILjava/lang/String;)V

    .line 563
    iget-object v1, p2, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mDialingNumCFNRc:Ljava/lang/String;

    goto :goto_1

    .line 544
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 418
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult: requestCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " resultCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " data = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mAppState:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    sget-object v1, Lcom/android/phone/CdmaCallForwardOptions$AppState;->WAITING_NUMBER_SELECT:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-eq v0, v1, :cond_2

    .line 421
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "onActivityResult: wrong state, ignoring message from contact picker."

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 462
    :cond_1
    :goto_0
    return-void

    .line 424
    :cond_2
    sget-object v0, Lcom/android/phone/CdmaCallForwardOptions$AppState;->DIALOG_OPEN:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    invoke-direct {p0, v0}, Lcom/android/phone/CdmaCallForwardOptions;->setAppState(Lcom/android/phone/CdmaCallForwardOptions$AppState;)V

    .line 427
    const/4 v0, -0x1

    if-eq p2, v0, :cond_3

    .line 428
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "onActivityResult: contact picker result not OK."

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 432
    :cond_3
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/phone/CdmaCallForwardOptions;->NUM_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 434
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_5

    .line 435
    :cond_4
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "onActivityResult: bad contact data, no results found."

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 439
    :cond_5
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 441
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU:Lcom/android/phone/EditPhoneNumberPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*72"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_0

    .line 444
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB:Lcom/android/phone/EditPhoneNumberPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*90"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto :goto_0

    .line 447
    :pswitch_3
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/EditPhoneNumberPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*92"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 450
    :pswitch_4
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/EditPhoneNumberPreference;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*68"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 454
    :pswitch_5
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFCancel:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 439
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 756
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick which = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 758
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 759
    packed-switch p2, :pswitch_data_0

    .line 771
    :pswitch_0
    sget-object v0, Lcom/android/phone/CdmaCallForwardOptions$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    invoke-direct {p0, v0}, Lcom/android/phone/CdmaCallForwardOptions;->setAppState(Lcom/android/phone/CdmaCallForwardOptions$AppState;)V

    .line 774
    :goto_0
    :pswitch_1
    return-void

    .line 766
    :pswitch_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 759
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const v4, 0x7f0e0065

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 934
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 935
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 936
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mTelMan:Landroid/telephony/TelephonyManager;

    .line 942
    const v0, 0x7f060018

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 943
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "onCreate START"

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 945
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 946
    const-string v0, "button_cfu_key"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU:Lcom/android/phone/EditPhoneNumberPreference;

    .line 947
    const-string v0, "button_cfb_key"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB:Lcom/android/phone/EditPhoneNumberPreference;

    .line 948
    const-string v0, "button_cfnry_key"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/EditPhoneNumberPreference;

    .line 949
    const-string v0, "button_cfnrc_key"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/EditPhoneNumberPreference;

    .line 951
    const-string v0, "button_cfu_dis_key"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    .line 952
    const-string v0, "button_cfb_dis_key"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    .line 953
    const-string v0, "button_cfnry_dis_key"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    .line 954
    const-string v0, "button_cfnrc_dis_key"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    .line 956
    const-string v0, "cdma_cf_cancelall_key"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFCancel:Lcom/android/phone/EditPhoneNumberPreference;

    .line 959
    const-string v0, "cdma_cf_busy_key"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFBUSYExpand:Landroid/preference/PreferenceScreen;

    .line 960
    const-string v0, "cdma_cf_noreply_key"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNOREPLYExpand:Landroid/preference/PreferenceScreen;

    .line 961
    const-string v0, "cdma_cf_notrechable_key"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNOTRECHABLEExpand:Landroid/preference/PreferenceScreen;

    .line 962
    const-string v0, "cdma_cf_unconditional_key"

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFUNCONDITIONALExpand:Landroid/preference/PreferenceScreen;

    .line 968
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v0, :cond_1

    .line 969
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0, v2, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentActivity(Landroid/app/Activity;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 970
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    .line 971
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, v4}, Landroid/preference/DialogPreference;->setDialogTitle(I)V

    .line 972
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU:Lcom/android/phone/EditPhoneNumberPreference;

    const v1, 0x7f0e0067

    invoke-virtual {v0, v1}, Landroid/preference/DialogPreference;->setDialogMessage(I)V

    .line 974
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v0, :cond_2

    .line 975
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/EditPhoneNumberPreference;->setContactPickIconActive(Z)V

    .line 976
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0, v2, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentActivity(Landroid/app/Activity;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 977
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    .line 978
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, v4}, Landroid/preference/DialogPreference;->setDialogTitle(I)V

    .line 979
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    const v1, 0x7f0e0067

    invoke-virtual {v0, v1}, Landroid/preference/DialogPreference;->setDialogMessage(I)V

    .line 982
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v0, :cond_3

    .line 983
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0, v3, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentActivity(Landroid/app/Activity;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 984
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    .line 985
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, v4}, Landroid/preference/DialogPreference;->setDialogTitle(I)V

    .line 986
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB:Lcom/android/phone/EditPhoneNumberPreference;

    const v1, 0x7f0e006d

    invoke-virtual {v0, v1}, Landroid/preference/DialogPreference;->setDialogMessage(I)V

    .line 988
    :cond_3
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v0, :cond_4

    .line 989
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/EditPhoneNumberPreference;->setContactPickIconActive(Z)V

    .line 990
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0, v3, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentActivity(Landroid/app/Activity;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 991
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    .line 992
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, v4}, Landroid/preference/DialogPreference;->setDialogTitle(I)V

    .line 993
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    const v1, 0x7f0e006d

    invoke-virtual {v0, v1}, Landroid/preference/DialogPreference;->setDialogMessage(I)V

    .line 996
    :cond_4
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v0, :cond_5

    .line 997
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0, v5, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentActivity(Landroid/app/Activity;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 998
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    .line 999
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, v4}, Landroid/preference/DialogPreference;->setDialogTitle(I)V

    .line 1000
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/EditPhoneNumberPreference;

    const v1, 0x7f0e0073

    invoke-virtual {v0, v1}, Landroid/preference/DialogPreference;->setDialogMessage(I)V

    .line 1002
    :cond_5
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v0, :cond_6

    .line 1003
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/EditPhoneNumberPreference;->setContactPickIconActive(Z)V

    .line 1004
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0, v5, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentActivity(Landroid/app/Activity;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 1005
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    .line 1006
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, v4}, Landroid/preference/DialogPreference;->setDialogTitle(I)V

    .line 1007
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    const v1, 0x7f0e0073

    invoke-virtual {v0, v1}, Landroid/preference/DialogPreference;->setDialogMessage(I)V

    .line 1010
    :cond_6
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v0, :cond_7

    .line 1011
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0, v6, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentActivity(Landroid/app/Activity;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 1012
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    .line 1013
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, v4}, Landroid/preference/DialogPreference;->setDialogTitle(I)V

    .line 1014
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/EditPhoneNumberPreference;

    const v1, 0x7f0e0079

    invoke-virtual {v0, v1}, Landroid/preference/DialogPreference;->setDialogMessage(I)V

    .line 1016
    :cond_7
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v0, :cond_8

    .line 1017
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/EditPhoneNumberPreference;->setContactPickIconActive(Z)V

    .line 1018
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0, v6, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentActivity(Landroid/app/Activity;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 1019
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    .line 1020
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, v4}, Landroid/preference/DialogPreference;->setDialogTitle(I)V

    .line 1021
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    const v1, 0x7f0e0079

    invoke-virtual {v0, v1}, Landroid/preference/DialogPreference;->setDialogMessage(I)V

    .line 1023
    :cond_8
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFCancel:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v0, :cond_9

    .line 1024
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFCancel:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, v2}, Lcom/android/phone/EditPhoneNumberPreference;->setContactPickIconActive(Z)V

    .line 1025
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFCancel:Lcom/android/phone/EditPhoneNumberPreference;

    const/4 v1, 0x6

    invoke-virtual {v0, p0, v1, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentActivity(Landroid/app/Activity;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 1026
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFCancel:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    .line 1027
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFCancel:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, v4}, Landroid/preference/DialogPreference;->setDialogTitle(I)V

    .line 1028
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFCancel:Lcom/android/phone/EditPhoneNumberPreference;

    const v1, 0x7f0e04a5

    invoke-virtual {v0, v1}, Landroid/preference/DialogPreference;->setDialogMessage(I)V

    .line 1032
    :cond_9
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mContactListIntent:Landroid/content/Intent;

    .line 1033
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mContactListIntent:Landroid/content/Intent;

    const-string v1, "vnd.android.cursor.item/phone"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1036
    sget-object v0, Lcom/android/phone/CdmaCallForwardOptions$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mAppState:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    .line 1037
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate icicle => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 1039
    :cond_a
    if-eqz p1, :cond_e

    .line 1040
    const-string v0, "cdma_cf_busy_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mSetState_check:Z

    .line 1041
    const-string v0, "cdma_cf_noreply_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mSetState_check:Z

    .line 1042
    const-string v0, "cdma_cf_notrechable_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mSetState_check:Z

    .line 1043
    const-string v0, "cdma_cf_unconditional_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mSetState_check:Z

    .line 1044
    const-string v0, "cdma_cf_cancelall_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mSetState_check:Z

    .line 1045
    const-string v0, "MSET_STATE_CHECK_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mSetState_check:Z

    .line 1056
    :goto_0
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    if-ne v0, v3, :cond_d

    .line 1064
    :cond_b
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    .line 1065
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFCancel:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFCancel:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1066
    :cond_c
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFBUSYExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 1067
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNOREPLYExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 1068
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNOTRECHABLEExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 1069
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFUNCONDITIONALExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 1073
    :cond_d
    return-void

    .line 1047
    :cond_e
    iput-boolean v3, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFDataStale:Z

    .line 1048
    iput-boolean v3, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFBDataStale:Z

    .line 1049
    iput-boolean v3, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFUDataStale:Z

    .line 1050
    iput-boolean v3, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFNRcDataStale:Z

    .line 1051
    iput-boolean v3, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFNRyDataStale:Z

    .line 1052
    iput-boolean v3, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCancelDataStale:Z

    .line 1053
    iput-boolean v2, p0, Lcom/android/phone/CdmaCallForwardOptions;->mSetState_check:Z

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 9
    .parameter "id"

    .prologue
    const/4 v8, 0x0

    const v7, 0x7f0e0087

    const/4 v6, 0x1

    .line 684
    sget-boolean v4, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreateDialog id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 686
    :cond_0
    const/16 v4, 0x64

    if-eq p1, v4, :cond_1

    const/16 v4, 0x384

    if-ne p1, v4, :cond_2

    .line 687
    :cond_1
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 688
    .local v1, dialog:Landroid/app/ProgressDialog;
    const v4, 0x7f0e007e

    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 689
    invoke-virtual {v1, v6}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 691
    sparse-switch p1, :sswitch_data_0

    .line 706
    :goto_0
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 748
    .end local v1           #dialog:Landroid/app/ProgressDialog;
    :goto_1
    return-object v1

    .line 693
    .restart local v1       #dialog:Landroid/app/ProgressDialog;
    :sswitch_0
    iput-boolean v6, p0, Lcom/android/phone/CdmaCallForwardOptions;->mIsBusyDialogAvailable:Z

    .line 694
    invoke-virtual {v1, v8}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 695
    const v4, 0x7f0e0081

    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 699
    :sswitch_1
    invoke-virtual {v1, v6}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 700
    iget-object v4, p0, Lcom/android/phone/CdmaCallForwardOptions;->mNetworkServiceHandler:Landroid/os/Handler;

    const/16 v5, 0x258

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setCancelMessage(Landroid/os/Message;)V

    .line 702
    const v4, 0x7f0e0080

    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 711
    .end local v1           #dialog:Landroid/app/ProgressDialog;
    :cond_2
    const/16 v4, 0x12c

    if-eq p1, v4, :cond_3

    const/16 v4, 0xc8

    if-eq p1, v4, :cond_3

    const/16 v4, 0x320

    if-ne p1, v4, :cond_4

    .line 714
    :cond_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 717
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0e007f

    .line 718
    .local v3, titleId:I
    sparse-switch p1, :sswitch_data_1

    .line 732
    const v2, 0x7f0e0084

    .line 735
    .local v2, msgId:I
    invoke-virtual {v0, v7, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 739
    :goto_2
    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 740
    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 741
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 742
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 743
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1, v6}, Landroid/app/Dialog;->setCancelable(Z)V

    goto :goto_1

    .line 720
    .end local v1           #dialog:Landroid/app/AlertDialog;
    .end local v2           #msgId:I
    :sswitch_2
    const v2, 0x7f0e0083

    .line 723
    .restart local v2       #msgId:I
    invoke-virtual {v0, v7, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    .line 726
    .end local v2           #msgId:I
    :sswitch_3
    const v2, 0x7f0e0086

    .line 728
    .restart local v2       #msgId:I
    invoke-virtual {v0, v7, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    .line 748
    .end local v0           #b:Landroid/app/AlertDialog$Builder;
    .end local v2           #msgId:I
    .end local v3           #titleId:I
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 691
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x384 -> :sswitch_1
    .end sparse-switch

    .line 718
    :sswitch_data_1
    .sparse-switch
        0x12c -> :sswitch_2
        0x320 -> :sswitch_3
    .end sparse-switch
.end method

.method public onDialogClosed(Lcom/android/phone/EditPhoneNumberPreference;I)V
    .locals 9
    .parameter "preference"
    .parameter "buttonClicked"

    .prologue
    .line 317
    iget-object v6, p0, Lcom/android/phone/CdmaCallForwardOptions;->mAppState:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    sget-object v7, Lcom/android/phone/CdmaCallForwardOptions$AppState;->DIALOG_OPEN:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-eq v6, v7, :cond_1

    .line 318
    sget-boolean v6, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "onDialogClosed: preference request denied, currently busy."

    invoke-static {v6}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    const/4 v6, -0x2

    if-ne p2, v6, :cond_3

    .line 322
    sget-boolean v6, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v6, :cond_2

    const-string v6, "onDialogClosed: DialogInterface.BUTTON2"

    invoke-static {v6}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 323
    :cond_2
    sget-object v6, Lcom/android/phone/CdmaCallForwardOptions$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    invoke-direct {p0, v6}, Lcom/android/phone/CdmaCallForwardOptions;->setAppState(Lcom/android/phone/CdmaCallForwardOptions$AppState;)V

    goto :goto_0

    .line 327
    :cond_3
    sget-boolean v6, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onDialogClosed: preference = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " buttonClicked = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 329
    :cond_4
    sget-object v2, Lcom/android/phone/CdmaCallForwardOptions$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    .line 331
    .local v2, nextState:Lcom/android/phone/CdmaCallForwardOptions$AppState;
    instance-of v6, p1, Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v6, :cond_0

    .line 332
    move-object v0, p1

    .line 333
    .local v0, epn:Lcom/android/phone/EditPhoneNumberPreference;
    const/4 v4, 0x0

    .line 334
    .local v4, reason:I
    const/4 v5, 0x0

    .line 335
    .local v5, time:I
    const-string v3, ""

    .line 336
    .local v3, number:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/phone/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 337
    sget-boolean v6, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v6, :cond_5

    const-string v6, "onDialogClosed: AppState.BUSY_NETWORK_CONNECT"

    invoke-static {v6}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 338
    :cond_5
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 339
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.CALL"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "tel:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 340
    .local v1, intent:Landroid/content/Intent;
    const-string v6, "simnum"

    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 341
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onGetDefaultNumber(Lcom/android/phone/EditPhoneNumberPreference;)Ljava/lang/String;
    .locals 1
    .parameter "preference"

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_0

    .line 354
    const-string v0, "*72"

    .line 387
    :goto_0
    return-object v0

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_1

    .line 357
    const-string v0, "*720"

    goto :goto_0

    .line 359
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_2

    .line 360
    const-string v0, "*90"

    goto :goto_0

    .line 362
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_3

    .line 363
    const-string v0, "*900"

    goto :goto_0

    .line 365
    :cond_3
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_4

    .line 366
    const-string v0, "*68"

    goto :goto_0

    .line 368
    :cond_4
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_5

    .line 369
    const-string v0, "*680"

    goto :goto_0

    .line 371
    :cond_5
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_6

    .line 372
    const-string v0, "*92"

    goto :goto_0

    .line 374
    :cond_6
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_7

    .line 375
    const-string v0, "*920"

    goto :goto_0

    .line 377
    :cond_7
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCW:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_8

    .line 378
    const-string v0, "*74"

    goto :goto_0

    .line 380
    :cond_8
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCW_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_9

    .line 381
    const-string v0, "*740"

    goto :goto_0

    .line 383
    :cond_9
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFCancel:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_a

    .line 384
    const-string v0, "*730"

    goto :goto_0

    .line 387
    :cond_a
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 218
    const-string v4, "feature_chn_duos"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 219
    iget-object v4, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFBUSYExpand:Landroid/preference/PreferenceScreen;

    if-eq p2, v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNOREPLYExpand:Landroid/preference/PreferenceScreen;

    if-eq p2, v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNOTRECHABLEExpand:Landroid/preference/PreferenceScreen;

    if-eq p2, v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFUNCONDITIONALExpand:Landroid/preference/PreferenceScreen;

    if-ne p2, v4, :cond_2

    :cond_0
    move-object v4, p2

    .line 221
    check-cast v4, Landroid/preference/PreferenceScreen;

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    .line 222
    .local v1, dlg:Landroid/app/Dialog;
    if-eqz v1, :cond_2

    .line 223
    invoke-virtual {v1}, Landroid/app/Dialog;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 224
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 225
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 226
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 228
    :cond_1
    const v4, 0x102002c

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 229
    .local v3, view:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    new-instance v7, Lcom/android/phone/CdmaCallForwardOptions$1;

    invoke-direct {v7, p0, v1}, Lcom/android/phone/CdmaCallForwardOptions$1;-><init>(Lcom/android/phone/CdmaCallForwardOptions;Landroid/app/Dialog;)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    .end local v0           #actionBar:Landroid/app/ActionBar;
    .end local v1           #dlg:Landroid/app/Dialog;
    .end local v3           #view:Landroid/view/View;
    :cond_2
    iget-object v4, p0, Lcom/android/phone/CdmaCallForwardOptions;->mAppState:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    sget-object v7, Lcom/android/phone/CdmaCallForwardOptions$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-eq v4, v7, :cond_4

    .line 240
    sget-boolean v4, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v4, :cond_3

    .line 241
    const-string v4, "onPreferencesHierarchyClick: preference request denied, currently busy."

    invoke-static {v4}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    :cond_3
    move v4, v5

    .line 268
    :goto_0
    return v4

    .line 246
    :cond_4
    sget-boolean v4, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v4, :cond_5

    const-string v4, "onPreferencesHierarchyClick: request preference click."

    invoke-static {v4}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 247
    :cond_5
    sget-object v2, Lcom/android/phone/CdmaCallForwardOptions$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    .line 249
    .local v2, nextState:Lcom/android/phone/CdmaCallForwardOptions$AppState;
    instance-of v4, p2, Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU:Lcom/android/phone/EditPhoneNumberPreference;

    if-eq p2, v4, :cond_6

    iget-object v4, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB:Lcom/android/phone/EditPhoneNumberPreference;

    if-eq p2, v4, :cond_6

    iget-object v4, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy:Lcom/android/phone/EditPhoneNumberPreference;

    if-eq p2, v4, :cond_6

    iget-object v4, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc:Lcom/android/phone/EditPhoneNumberPreference;

    if-eq p2, v4, :cond_6

    iget-object v4, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFU_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    if-eq p2, v4, :cond_6

    iget-object v4, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFB_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    if-eq p2, v4, :cond_6

    iget-object v4, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRy_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    if-eq p2, v4, :cond_6

    iget-object v4, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFNRc_Dis:Lcom/android/phone/EditPhoneNumberPreference;

    if-eq p2, v4, :cond_6

    iget-object v4, p0, Lcom/android/phone/CdmaCallForwardOptions;->mButtonCFCancel:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p2, v4, :cond_7

    .line 259
    :cond_6
    sget-object v2, Lcom/android/phone/CdmaCallForwardOptions$AppState;->DIALOG_OPEN:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    .line 260
    sget-boolean v4, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v4, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPreferenceTreeClick => nextState = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 262
    :cond_7
    sget-boolean v4, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v4, :cond_8

    const-string v4, "onPreferenceTreeClick => mButtonCFExpand"

    invoke-static {v4}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 263
    :cond_8
    sget-object v4, Lcom/android/phone/CdmaCallForwardOptions$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-eq v2, v4, :cond_a

    .line 264
    sget-boolean v4, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v4, :cond_9

    const-string v4, "onPreferenceTreeClick => != AppState.INPUT_READY"

    invoke-static {v4}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 265
    :cond_9
    invoke-direct {p0, v2}, Lcom/android/phone/CdmaCallForwardOptions;->setAppState(Lcom/android/phone/CdmaCallForwardOptions$AppState;)V

    move v4, v6

    .line 266
    goto :goto_0

    :cond_a
    move v4, v5

    .line 268
    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 909
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 910
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 913
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 915
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 922
    :cond_0
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "onResume Start"

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 926
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 1077
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1079
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "onSaveInstanceState: saving relevant UI state."

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 1082
    :cond_0
    const-string v0, "app_state_key"

    iget-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mAppState:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 1083
    const-string v0, "cdma_cf_busy_key"

    iget-boolean v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFDataStale:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1084
    const-string v0, "cdma_cf_busy_key"

    iget-boolean v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFBDataStale:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1085
    const-string v0, "cdma_cf_noreply_key"

    iget-boolean v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFNRyDataStale:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1086
    const-string v0, "cdma_cf_notrechable_key"

    iget-boolean v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFNRcDataStale:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1087
    const-string v0, "cdma_cf_cancelall_key"

    iget-boolean v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCancelDataStale:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1088
    const-string v0, "cdma_cf_unconditional_key"

    iget-boolean v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mCFUDataStale:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1089
    const-string v0, "display_mode_key"

    iget v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mDisplayMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1090
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mSetState_check:Z

    .line 1091
    const-string v0, "MSET_STATE_CHECK_KEY"

    iget-boolean v1, p0, Lcom/android/phone/CdmaCallForwardOptions;->mSetState_check:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1092
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 2
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 394
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startActivityForResult intent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " requestCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 396
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 398
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 410
    :cond_1
    :goto_0
    return-void

    .line 402
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CdmaCallForwardOptions;->mAppState:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    sget-object v1, Lcom/android/phone/CdmaCallForwardOptions$AppState;->DIALOG_OPEN:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    if-eq v0, v1, :cond_3

    .line 403
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "startSubActivity: mAppState != AppState.DIALOG_OPEN"

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 406
    :cond_3
    sget-boolean v0, Lcom/android/phone/CdmaCallForwardOptions;->DBG:Z

    if-eqz v0, :cond_4

    const-string v0, "startSubActivity: starting requested subactivity"

    invoke-static {v0}, Lcom/android/phone/CdmaCallForwardOptions;->log(Ljava/lang/String;)V

    .line 408
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 409
    sget-object v0, Lcom/android/phone/CdmaCallForwardOptions$AppState;->WAITING_NUMBER_SELECT:Lcom/android/phone/CdmaCallForwardOptions$AppState;

    invoke-direct {p0, v0}, Lcom/android/phone/CdmaCallForwardOptions;->setAppState(Lcom/android/phone/CdmaCallForwardOptions$AppState;)V

    goto :goto_0
.end method
