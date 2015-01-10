.class public Lcom/android/phone/PhoneUtilsExt;
.super Ljava/lang/Object;
.source "PhoneUtilsExt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PhoneUtilsExt$CONFCallState;,
        Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;,
        Lcom/android/phone/PhoneUtilsExt$CallType;,
        Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;
    }
.end annotation


# static fields
.field public static IsVTCallInRejectList:Z

.field private static LGTisPartyCall:Z

.field private static LGTmergeState:Z

.field private static LGTtransferState:Z

.field public static OTACancel:Z

.field public static bAutoRebootPopupLaunched:Z

.field public static callEnd:Z

.field private static callType:I

.field public static canMulti:Z

.field private static countryCode:Ljava/lang/String;

.field private static hasCountryCode:Z

.field static isSendDtmf:Z

.field static isSendEmptyFlash:Z

.field public static mCANPToggleTimer:Landroid/os/CountDownTimer;

.field private static mCONFCallState:Lcom/android/phone/PhoneUtilsExt$CONFCallState;

.field public static mCallCardNumber:Ljava/lang/String;

.field private static mCallType:Lcom/android/phone/PhoneUtilsExt$CallType;

.field public static mContactName:Ljava/lang/String;

.field public static mContactsNumber:Ljava/lang/String;

.field private static mCountryCode:Ljava/lang/String;

.field private static mCountryCodeTemp:Ljava/lang/String;

.field public static mDisplayName:Ljava/lang/String;

.field private static mInternationalAccessCode:Ljava/lang/String;

.field public static mIsCMFCall:Z

.field public static mIsMessageCall:Z

.field public static mIsWzoneCall:Z

.field private static mLGTRADCallog:I

.field private static mLGTRADTemp:I

.field private static mOutgoingCallString:Ljava/lang/String;

.field private static mOutgoingCallUri:Landroid/net/Uri;

.field public static mPlaceCallTime:J

.field private static mRevertDialingNumber:Z

.field private static mSKTRADDialingToKoreaEnabled:Z

.field public static mSKTRADSetting:Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;

.field public static mSkipSKTRADDialOption:Z

.field private static mTHRWAYCallState:Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;

.field private static mUserInputDialingNumber:Ljava/lang/String;

.field public static mWzoneprefix:Ljava/lang/String;

.field private static outgoingToKorea:Z

.field private static smsCall:Z

.field private static startCallTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 104
    sput-boolean v0, Lcom/android/phone/PhoneUtilsExt;->mIsCMFCall:Z

    .line 105
    sput-boolean v0, Lcom/android/phone/PhoneUtilsExt;->mIsMessageCall:Z

    .line 106
    sput-boolean v0, Lcom/android/phone/PhoneUtilsExt;->mIsWzoneCall:Z

    .line 107
    sput-object v1, Lcom/android/phone/PhoneUtilsExt;->mWzoneprefix:Ljava/lang/String;

    .line 113
    sput-object v1, Lcom/android/phone/PhoneUtilsExt;->mCANPToggleTimer:Landroid/os/CountDownTimer;

    .line 114
    sput-object v1, Lcom/android/phone/PhoneUtilsExt;->mDisplayName:Ljava/lang/String;

    .line 115
    sput-object v1, Lcom/android/phone/PhoneUtilsExt;->mContactName:Ljava/lang/String;

    .line 123
    sput-boolean v0, Lcom/android/phone/PhoneUtilsExt;->IsVTCallInRejectList:Z

    .line 133
    sput-boolean v0, Lcom/android/phone/PhoneUtilsExt;->canMulti:Z

    .line 134
    sput-wide v2, Lcom/android/phone/PhoneUtilsExt;->mPlaceCallTime:J

    .line 135
    sput-boolean v0, Lcom/android/phone/PhoneUtilsExt;->OTACancel:Z

    .line 178
    sput-boolean v0, Lcom/android/phone/PhoneUtilsExt;->callEnd:Z

    .line 205
    sput-wide v2, Lcom/android/phone/PhoneUtilsExt;->startCallTime:J

    .line 207
    sput-boolean v0, Lcom/android/phone/PhoneUtilsExt;->bAutoRebootPopupLaunched:Z

    .line 1040
    sput-boolean v0, Lcom/android/phone/PhoneUtilsExt;->isSendEmptyFlash:Z

    .line 1042
    sput-boolean v0, Lcom/android/phone/PhoneUtilsExt;->isSendDtmf:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/PhoneUtilsExt;->mSKTRADDialingToKoreaEnabled:Z

    .line 211
    return-void
.end method

.method public static IsDialingNumberRevert()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 280
    sget-boolean v0, Lcom/android/phone/PhoneUtilsExt;->mRevertDialingNumber:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static OutgoingCallAbroad(Ljava/lang/String;)Z
    .locals 9
    .parameter "number"

    .prologue
    const/4 v8, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 550
    const/4 v6, 0x3

    new-array v0, v6, [Ljava/lang/String;

    const-string v6, "00"

    aput-object v6, v0, v5

    const-string v6, "*23#00"

    aput-object v6, v0, v4

    const-string v6, "+"

    aput-object v6, v0, v8

    .line 551
    .local v0, INTERNATIONAL_PREFIX:[Ljava/lang/String;
    const-string v1, "+"

    .line 552
    .local v1, INTERNATIONAL_RAD_RESTRICT:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 554
    .local v3, phoneType:I
    if-nez p0, :cond_1

    .line 591
    :cond_0
    :goto_0
    return v4

    .line 556
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "internationalcall_settings"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_0

    .line 557
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "+82"

    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 561
    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isSKTRADEnabled()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 562
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_3

    .line 564
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v8, :cond_3

    move v4, v5

    .line 566
    goto :goto_0

    .line 569
    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "feature_lgt"

    invoke-static {v6}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 570
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isLGTRADSetting = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isLGTRADSetting()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "getLGTRADTemp = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getLGTRADTemp()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "getLGTRADCallog = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getLGTRADCallog()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;Z)V

    .line 571
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isLGTRADSetting()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getLGTRADTemp()I

    move-result v6

    if-ne v6, v8, :cond_5

    :cond_4
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isLGTRADSetting()Z

    move-result v6

    if-nez v6, :cond_6

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getLGTRADTemp()I

    move-result v6

    if-ne v6, v4, :cond_6

    :cond_5
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getLGTRADCallog()I

    move-result v6

    const/16 v7, 0xc

    if-eq v6, v7, :cond_6

    move v4, v5

    .line 574
    goto/16 :goto_0

    .line 577
    :cond_6
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v6, v0

    if-ge v2, v6, :cond_0

    .line 579
    aget-object v6, v0, v2

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_7

    .line 581
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v8, :cond_7

    move v4, v5

    .line 583
    goto/16 :goto_0

    .line 577
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static OutgoingCallRoamingArea(Ljava/lang/String;Landroid/content/Intent;)Ljava/lang/String;
    .locals 6
    .parameter "number"
    .parameter "intent"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 807
    const-string v0, "OutgoingCallRoamingArea Call!!"

    invoke-static {v0, v3}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;Z)V

    .line 809
    invoke-static {p0}, Lcom/android/phone/PhoneUtilsExt;->setSKTRADOutgoingCallNumber(Ljava/lang/String;)V

    .line 810
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getCallEnd()Z

    move-result v0

    if-nez v0, :cond_0

    .line 811
    const-string v0, "LGT_RAD_TEMP"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->setLGTRADTemp(I)V

    .line 812
    const-string v0, "COUNTRY_CODE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/PhoneUtilsExt;->countryCode:Ljava/lang/String;

    .line 813
    const-string v0, "COUNTRY_CODE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/PhoneUtilsExt;->hasCountryCode:Z

    .line 814
    const-string v0, "CALL_TYPE"

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/phone/PhoneUtilsExt;->callType:I

    .line 816
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->setRADCode()V

    .line 817
    invoke-static {v2}, Lcom/android/phone/PhoneUtilsExt;->setOutgoingToKorea(Z)V

    .line 819
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  - isLGTRADSetting = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isLGTRADSetting()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 820
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  - hasCountryCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/phone/PhoneUtilsExt;->hasCountryCode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 821
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  - callType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/phone/PhoneUtilsExt;->callType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 822
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->countryCode:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->setCountryCodeTemp(Ljava/lang/String;)V

    .line 823
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  - countryCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/phone/PhoneUtilsExt;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 824
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  - getCountryCodeTemp() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getCountryCodeTemp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 826
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v5, :cond_2

    .line 827
    invoke-static {v2}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    .line 853
    :cond_1
    :goto_0
    return-object p0

    .line 828
    :cond_2
    const-string v0, "+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 829
    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->setLGTRADTemp(I)V

    goto :goto_0

    .line 830
    :cond_3
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->countryCode:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getLGTRADTemp()I

    move-result v0

    if-ne v0, v4, :cond_9

    .line 831
    const-string v0, "001"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "002"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "005"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "008"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "0082"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 832
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 833
    :cond_5
    const-string v0, "00700"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "00345"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "00365"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "00321"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 834
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 835
    :cond_7
    const-string v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 836
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/phone/PhoneUtilsExt;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 838
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/phone/PhoneUtilsExt;->countryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 839
    :cond_9
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->countryCode:Ljava/lang/String;

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/phone/PhoneUtilsExt;->hasCountryCode:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/android/phone/PhoneUtilsExt;->callType:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    sget v0, Lcom/android/phone/PhoneUtilsExt;->callType:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getLGTRADTemp()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 842
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isLGTRADSetting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 843
    const-string v0, "Set Auto Dial Temp On"

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 844
    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->setLGTRADTemp(I)V

    goto/16 :goto_0
.end method

.method public static OutgoingCallSKTRAD(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 607
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->setPhoneAppSetting()V

    .line 608
    const-string v1, "SKTRADDialOption"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 609
    .local v0, SKTRADDialOption:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OutgoingCallSKTRAD getSKTRADSetting() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getSKTRADSetting()Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", SKTRADDialOption = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;Z)V

    .line 611
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getSKTRADSetting()Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;

    move-result-object v1

    sget-object v2, Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;->OnlyOutgoingToKorea:Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;

    if-ne v1, v2, :cond_2

    .line 612
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->phone:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v3

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->getIccCardState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne v1, v2, :cond_1

    .line 613
    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->setSKTRADDialingToKoreaEnabled(Z)V

    .line 617
    :goto_0
    sput-boolean v4, Lcom/android/phone/PhoneUtilsExt;->mSkipSKTRADDialOption:Z

    .line 632
    :cond_0
    :goto_1
    return-void

    .line 615
    :cond_1
    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->setSKTRADDialingToKoreaEnabled(Z)V

    goto :goto_0

    .line 619
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 620
    sput-boolean v4, Lcom/android/phone/PhoneUtilsExt;->mSkipSKTRADDialOption:Z

    .line 621
    const-string v1, "korea"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 622
    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->setSKTRADDialingToKoreaEnabled(Z)V

    goto :goto_1

    .line 623
    :cond_3
    const-string v1, "abroad"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 624
    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->setSKTRADDialingToKoreaEnabled(Z)V

    goto :goto_1

    .line 628
    :cond_4
    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->setSKTRADDialingToKoreaEnabled(Z)V

    .line 629
    sput-boolean v3, Lcom/android/phone/PhoneUtilsExt;->mSkipSKTRADDialOption:Z

    goto :goto_1
.end method

.method public static OutgoingCallSKTWZone(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 598
    const-string v0, "com.skt.iswzone"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/PhoneUtilsExt;->mIsWzoneCall:Z

    .line 599
    sget-boolean v0, Lcom/android/phone/PhoneUtilsExt;->mIsWzoneCall:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 600
    const-string v0, "Wzoneprefix"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/PhoneUtilsExt;->mWzoneprefix:Ljava/lang/String;

    .line 603
    :cond_0
    return-void
.end method

.method public static canUseHoldInVoIP()Z
    .locals 6

    .prologue
    .line 672
    const/4 v1, 0x0

    .line 674
    .local v1, ret:Z
    :try_start_0
    const-string v3, "voip"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v2

    .line 675
    .local v2, voipCall:Landroid/os/IVoIPInterface;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/os/IVoIPInterface;->canUseHoldInVoIP()Z

    move-result v1

    .line 676
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "canUseHoldInVoIP - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 680
    .end local v2           #voipCall:Landroid/os/IVoIPInterface;
    :goto_0
    return v1

    .line 677
    :catch_0
    move-exception v0

    .line 678
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v3, "PhoneUtilsExt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "canUseHoldInVoIP - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 680
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    goto :goto_0
.end method

.method static changeDialingNumberForLGTRAD(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 945
    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    .line 947
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getInternationalAccessCode()Ljava/lang/String;

    .line 948
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    .line 950
    const-string v1, "+"

    .line 952
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InternationalAccessCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",  CountryCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 957
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-gt v2, v3, :cond_0

    .line 958
    invoke-static {v5}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    .line 990
    :goto_0
    return-object p0

    .line 960
    :cond_0
    const-string v2, "0234167010"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 961
    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    .line 962
    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->setOutgoingToKorea(Z)V

    .line 963
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "82"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 964
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isSMS()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 965
    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    .line 966
    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->setOutgoingToKorea(Z)V

    .line 967
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "82"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 969
    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getLGTRADCallog()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_3

    .line 970
    invoke-static {v5}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    goto :goto_0

    .line 973
    :cond_3
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xb

    if-le v2, v3, :cond_4

    .line 974
    invoke-static {v5}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    goto :goto_0

    .line 976
    :cond_4
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 977
    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    .line 978
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 979
    :cond_5
    const-string v2, "00"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 980
    invoke-static {v5}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    goto/16 :goto_0

    .line 982
    :cond_6
    const-string v2, "0"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 983
    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    .line 984
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 985
    :cond_7
    const-string v2, "*"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "#"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 986
    :cond_8
    invoke-static {v5}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    goto/16 :goto_0

    .line 989
    :cond_9
    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    .line 990
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0
.end method

.method public static changeDialingNumberForSKTRAD(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "number"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 410
    const-string v1, "changeDialingNumberForSKTRAD : "

    invoke-static {v1, v4}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;Z)V

    .line 411
    const/4 v0, 0x0

    .line 412
    .local v0, result:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/phone/PhoneUtilsExt;->setUserInputDialingNumber(Ljava/lang/String;)V

    .line 413
    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    .line 415
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 416
    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    .line 472
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 420
    .restart local p0
    :cond_1
    const-string v1, "feature_skt"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 421
    const-string v1, "114"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "010114"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "011114"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "017114"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "0082114"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "+82114"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 423
    :cond_2
    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    .line 424
    const-string p0, "+82263439000"

    goto :goto_0

    .line 428
    :cond_3
    const-string v1, "111"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "112"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "113"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "119"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "122"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "125"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "127"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 430
    :cond_4
    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    .line 431
    const-string v1, "feature_ktt"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 432
    const-string p0, "+82232100404"

    goto/16 :goto_0

    .line 436
    :cond_5
    const-string v1, "feature_ktt"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 437
    const-string v1, "*88"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 438
    invoke-static {p0}, Lcom/android/phone/PhoneUtilsExt;->changeVoiceMailBoxNumberForRAD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 442
    :cond_6
    const-string v1, "001"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "002"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "005"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "008"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "0082"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 444
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 471
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeDialingNumberForSKTRAD result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    move-object p0, v0

    .line 472
    goto/16 :goto_0

    .line 446
    :cond_8
    const-string v1, "00700"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "00345"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "00365"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "00321"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 448
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 450
    :cond_a
    const-string v1, "+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "00"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 451
    :cond_b
    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    .line 452
    move-object v0, p0

    goto :goto_1

    .line 454
    :cond_c
    const-string v1, "1544"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "1577"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "1588"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "1599"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "1644"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    :cond_d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v5, :cond_e

    .line 456
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+82"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 458
    :cond_e
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_f

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v5, :cond_10

    :cond_f
    const-string v1, "0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 459
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+8210"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 461
    :cond_10
    const-string v1, "0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 462
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+82"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 464
    :cond_11
    const-string v1, "0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 465
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+82"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 468
    :cond_12
    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    .line 469
    move-object v0, p0

    goto/16 :goto_1
.end method

.method public static changeNameForSKTRAD(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "number"
    .parameter "name"

    .prologue
    .line 398
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 399
    .local v0, app:Lcom/android/phone/PhoneApp;
    if-eqz p0, :cond_0

    .line 400
    const-string v1, "+82263439000"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 401
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e03af

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 406
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 402
    .restart local p1
    :cond_1
    const-string v1, "+82232100404"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 403
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e03b0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public static changeRtsMessage(I)Ljava/lang/CharSequence;
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 1505
    invoke-static {v2}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1506
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1507
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1508
    const-string v1, "%s"

    .line 1512
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->callController:Lcom/android/phone/CallController;

    invoke-virtual {v1}, Lcom/android/phone/CallController;->getRtsValueForKor()[Ljava/lang/Integer;

    move-result-object v1

    .line 1513
    if-nez v1, :cond_0

    .line 1514
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->callController:Lcom/android/phone/CallController;

    invoke-virtual {v1}, Lcom/android/phone/CallController;->initRtsValueForKor()V

    .line 1515
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->callController:Lcom/android/phone/CallController;

    invoke-virtual {v1}, Lcom/android/phone/CallController;->getRtsValueForKor()[Ljava/lang/Integer;

    move-result-object v1

    .line 1517
    :cond_0
    if-eqz v1, :cond_f

    .line 1518
    aget-object v3, v1, v7

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1519
    aget-object v3, v1, v8

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1520
    const/4 v6, 0x3

    aget-object v1, v1, v6

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1523
    :goto_0
    const v6, 0x7f0e072b

    if-eq p0, v6, :cond_1

    const v6, 0x7f0e072c

    if-ne p0, v6, :cond_5

    .line 1525
    :cond_1
    new-array v0, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v2

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1542
    :cond_2
    :goto_1
    const-string v2, "feature_lgt"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1543
    const v2, 0x7f0e071d

    if-eq p0, v2, :cond_3

    const v2, 0x7f0e071e

    if-eq p0, v2, :cond_3

    const v2, 0x7f0e0737

    if-ne p0, v2, :cond_a

    .line 1545
    :cond_3
    if-nez v3, :cond_9

    .line 1546
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1566
    :cond_4
    :goto_2
    return-object v0

    .line 1526
    :cond_5
    const v2, 0x7f0e071a

    if-ne p0, v2, :cond_8

    .line 1527
    const-string v0, "ril.currentplmn"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1528
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1529
    const-string v0, "%s"

    const-string v2, "+82-2-6343-9000"

    invoke-virtual {v5, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1537
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1531
    :cond_6
    const-string v2, "domestic"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1532
    const-string v0, "%s"

    const-string v2, "1599-0011"

    invoke-virtual {v5, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 1534
    :cond_7
    const-string v0, "%s"

    const-string v2, "+82-2-6343-9000"

    invoke-virtual {v5, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 1538
    :cond_8
    const v2, 0x7f0e0722

    if-ne p0, v2, :cond_2

    .line 1539
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 1548
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 1549
    :cond_a
    const v2, 0x7f0e0733

    if-ne p0, v2, :cond_c

    .line 1550
    const-string v0, "%s"

    const-string v2, "+82-2-3416-7010"

    invoke-virtual {v5, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1551
    if-nez v4, :cond_b

    if-nez v3, :cond_b

    if-ne v1, v8, :cond_b

    .line 1552
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(2)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 1554
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 1556
    :cond_c
    const v2, 0x7f0e0734

    if-eq p0, v2, :cond_d

    const v2, 0x7f0e0735

    if-eq p0, v2, :cond_d

    const v2, 0x7f0e0736

    if-eq p0, v2, :cond_d

    const v2, 0x7f0e0739

    if-ne p0, v2, :cond_4

    .line 1558
    :cond_d
    const-string v0, "%s"

    const-string v2, "+82-2-3416-7010"

    invoke-virtual {v5, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1559
    if-nez v3, :cond_e

    .line 1560
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 1562
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_f
    move v1, v2

    move v3, v2

    move v4, v2

    goto/16 :goto_0
.end method

.method public static changeVoiceMailBoxNumberForRAD(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "number"

    .prologue
    .line 490
    if-nez p0, :cond_1

    .line 501
    :cond_0
    :goto_0
    return-object p0

    .line 492
    :cond_1
    const-string v1, "*88"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 493
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 494
    .local v0, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object p0

    .line 495
    if-eqz p0, :cond_0

    .line 496
    const-string v1, "+0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 497
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+82"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method static checkCallProtectionValue()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    .line 687
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 688
    .local v0, app:Lcom/android/phone/PhoneApp;
    const/4 v2, 0x0

    .line 690
    .local v2, value:I
    :try_start_0
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enable_call_protect_when_calling"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    .line 691
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enable_call_protect_when_calling : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 699
    :goto_0
    if-ne v2, v3, :cond_0

    :goto_1
    return v3

    .line 692
    :catch_0
    move-exception v1

    .line 693
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enable_call_protect_when_calling"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 694
    const-string v4, "enable_call_protect_when_calling : null->1"

    invoke-static {v4, v3}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;Z)V

    .line 695
    const/4 v2, 0x1

    .line 698
    goto :goto_0

    .line 696
    .end local v1           #e:Landroid/provider/Settings$SettingNotFoundException;
    :catch_1
    move-exception v1

    .line 697
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "PhoneUtilsExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enable_call_protect_when_calling : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 699
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static fgConnectionsIsIncoming()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1181
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->phone:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v0

    .line 1182
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 1183
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1184
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 1185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fgConnectionsIsIncoming:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!!!!!!!!!!!!!!!!!!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1186
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v0

    .line 1190
    :goto_0
    return v0

    .line 1189
    :cond_0
    const-string v1, "fgConnections is not have Connection!!!!!!!!!"

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static findAccessCode(Z)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 916
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v1

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 917
    new-instance v2, Lcom/android/phone/LGTRoamingData;

    invoke-direct {v2, v0}, Lcom/android/phone/LGTRoamingData;-><init>(Landroid/content/Context;)V

    .line 918
    const-string v3, "RoamingPrefs"

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 920
    const-string v3, "fakesid"

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 921
    if-eqz v0, :cond_0

    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 922
    :cond_0
    const-string v0, "ril.cdma.sid"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 924
    :cond_1
    const-string v3, ""

    .line 925
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 927
    :try_start_0
    invoke-virtual {v2, v0}, Lcom/android/phone/LGTRoamingData;->getConnectNumBySid(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 928
    if-nez v0, :cond_3

    move v0, v1

    .line 940
    :goto_0
    return v0

    .line 930
    :catch_0
    move-exception v0

    .line 931
    if-eqz p0, :cond_2

    .line 932
    const-string v0, "00"

    sput-object v0, Lcom/android/phone/PhoneUtilsExt;->mInternationalAccessCode:Ljava/lang/String;

    .line 933
    :cond_2
    invoke-virtual {v2}, Lcom/android/phone/LGTRoamingData;->close()V

    move v0, v1

    .line 934
    goto :goto_0

    .line 937
    :cond_3
    invoke-virtual {v2}, Lcom/android/phone/LGTRoamingData;->close()V

    .line 938
    if-eqz p0, :cond_4

    .line 939
    sput-object v0, Lcom/android/phone/PhoneUtilsExt;->mInternationalAccessCode:Ljava/lang/String;

    .line 940
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getCONFCallState()Lcom/android/phone/PhoneUtilsExt$CONFCallState;
    .locals 1

    .prologue
    .line 1089
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mCONFCallState:Lcom/android/phone/PhoneUtilsExt$CONFCallState;

    return-object v0
.end method

.method public static getCallCardNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1010
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mCallCardNumber:Ljava/lang/String;

    return-object v0
.end method

.method public static getCallEnd()Z
    .locals 1

    .prologue
    .line 1015
    sget-boolean v0, Lcom/android/phone/PhoneUtilsExt;->callEnd:Z

    return v0
.end method

.method public static getCallType()Lcom/android/phone/PhoneUtilsExt$CallType;
    .locals 1

    .prologue
    .line 293
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mCallType:Lcom/android/phone/PhoneUtilsExt$CallType;

    return-object v0
.end method

.method public static getContactsNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1002
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mContactsNumber:Ljava/lang/String;

    return-object v0
.end method

.method public static getCountryCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 887
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mCountryCode:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    sget-object v1, Lcom/android/phone/PhoneUtilsExt;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 888
    :cond_0
    const-string v0, "82"

    sput-object v0, Lcom/android/phone/PhoneUtilsExt;->mCountryCode:Ljava/lang/String;

    .line 889
    :cond_1
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method public static getCountryCodeTemp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 896
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mCountryCodeTemp:Ljava/lang/String;

    return-object v0
.end method

.method public static getHandsetInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 1224
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:[Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 1225
    invoke-interface {v0, p0}, Lcom/android/internal/telephony/Phone;->getHandsetInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1227
    return-object v0
.end method

.method public static getInternationalAccessCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 877
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mInternationalAccessCode:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    sget-object v1, Lcom/android/phone/PhoneUtilsExt;->mInternationalAccessCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 878
    :cond_0
    const-string v0, "00"

    sput-object v0, Lcom/android/phone/PhoneUtilsExt;->mInternationalAccessCode:Ljava/lang/String;

    .line 879
    :cond_1
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mInternationalAccessCode:Ljava/lang/String;

    return-object v0
.end method

.method private static getKTCallStatusCode([Ljava/lang/Integer;Z)Lcom/android/phone/Constants$CallStatusCode;
    .locals 7
    .parameter "rtsValue"
    .parameter "isSvc"

    .prologue
    const/4 v6, 0x3

    const/4 v1, 0x0

    const/4 v5, 0x4

    const/4 v2, 0x1

    const/4 v4, 0x2

    .line 1591
    aget-object v3, p0, v1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v6, :cond_0

    aget-object v3, p0, v4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_1

    aget-object v3, p0, v6

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v0, v2

    .line 1592
    .local v0, isRtsStatus:Z
    :goto_0
    if-nez p1, :cond_3

    .line 1593
    aget-object v1, p0, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_2

    .line 1594
    aget-object v1, p0, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1600
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->OUT_OF_SERVICE:Lcom/android/phone/Constants$CallStatusCode;

    .line 1655
    :goto_1
    return-object v1

    .end local v0           #isRtsStatus:Z
    :cond_1
    move v0, v1

    .line 1591
    goto :goto_0

    .line 1596
    .restart local v0       #isRtsStatus:Z
    :sswitch_0
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->NETWORK_REG_FAIL:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_1

    .line 1598
    :sswitch_1
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->LOCATION_REGSTERING:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_1

    .line 1602
    :cond_2
    aget-object v1, p0, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sparse-switch v1, :sswitch_data_1

    .line 1628
    :cond_3
    if-nez p1, :cond_4

    if-eqz v0, :cond_7

    .line 1629
    :cond_4
    aget-object v1, p0, v4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sparse-switch v1, :sswitch_data_2

    .line 1650
    if-nez p1, :cond_7

    .line 1651
    aget-object v1, p0, v6

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v4, :cond_6

    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->IMSI_UNKNOWN:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_1

    .line 1604
    :sswitch_2
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->IMSI_UNKNOWN:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_1

    .line 1606
    :sswitch_3
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->ILLEGAL_MS:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_1

    .line 1608
    :sswitch_4
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->ILLEGAL_ME:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_1

    .line 1610
    :sswitch_5
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->NETWORK_REG_FAIL:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_1

    .line 1612
    :sswitch_6
    aget-object v1, p0, v2

    aput-object v1, p0, v5

    .line 1613
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->LOCATION_REG_FAIL:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_1

    .line 1615
    :sswitch_7
    aget-object v1, p0, v2

    aput-object v1, p0, v5

    .line 1616
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->LOCATION_REGSTERING:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_1

    .line 1618
    :sswitch_8
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->FREQ_SEARCHING:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_1

    .line 1620
    :sswitch_9
    const-string v1, "feature_lgt"

    invoke-static {v1}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1621
    aget-object v1, p0, v4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_3

    .line 1622
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->ETC_CAUSE_REJECT:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_1

    .line 1631
    :sswitch_a
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->IMSI_UNKNOWN:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_1

    .line 1633
    :sswitch_b
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->ILLEGAL_MS:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_1

    .line 1635
    :sswitch_c
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->ILLEGAL_ME:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_1

    .line 1637
    :sswitch_d
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->NETWORK_REG_FAIL:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_1

    .line 1639
    :sswitch_e
    if-nez p1, :cond_5

    .line 1640
    aget-object v1, p0, v4

    aput-object v1, p0, v5

    .line 1641
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->LOCATION_REG_FAIL:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_1

    .line 1644
    :cond_5
    :sswitch_f
    aget-object v1, p0, v4

    aput-object v1, p0, v5

    .line 1645
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->LOCATION_REGSTERING:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_1

    .line 1647
    :sswitch_10
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->FREQ_SEARCHING:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_1

    .line 1652
    :cond_6
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->EMERGENCY_ONLY:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_1

    .line 1655
    :cond_7
    const/4 v1, 0x0

    goto :goto_1

    .line 1594
    nop

    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0xf -> :sswitch_0
        0xfe -> :sswitch_1
    .end sparse-switch

    .line 1602
    :sswitch_data_1
    .sparse-switch
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x6 -> :sswitch_4
        0x7 -> :sswitch_6
        0x8 -> :sswitch_5
        0xb -> :sswitch_5
        0xc -> :sswitch_5
        0xd -> :sswitch_5
        0xe -> :sswitch_6
        0xf -> :sswitch_5
        0x10 -> :sswitch_7
        0x11 -> :sswitch_7
        0x16 -> :sswitch_7
        0x5f -> :sswitch_9
        0x60 -> :sswitch_9
        0x61 -> :sswitch_9
        0x63 -> :sswitch_9
        0x6f -> :sswitch_9
        0xfe -> :sswitch_7
        0xff -> :sswitch_8
    .end sparse-switch

    .line 1629
    :sswitch_data_2
    .sparse-switch
        0x2 -> :sswitch_a
        0x3 -> :sswitch_b
        0x6 -> :sswitch_c
        0x7 -> :sswitch_e
        0x8 -> :sswitch_d
        0xb -> :sswitch_d
        0xc -> :sswitch_d
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_d
        0x10 -> :sswitch_f
        0x11 -> :sswitch_f
        0x16 -> :sswitch_f
        0xff -> :sswitch_10
    .end sparse-switch
.end method

.method public static getKorCallStatusCode(Z)Lcom/android/phone/Constants$CallStatusCode;
    .locals 3
    .parameter "isSvc"

    .prologue
    const/4 v1, 0x0

    .line 1736
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->callController:Lcom/android/phone/CallController;

    invoke-virtual {v2}, Lcom/android/phone/CallController;->getRtsValueForKor()[Ljava/lang/Integer;

    move-result-object v0

    .line 1737
    .local v0, rtsValue:[Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 1738
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->callController:Lcom/android/phone/CallController;

    invoke-virtual {v2}, Lcom/android/phone/CallController;->initRtsValueForKor()V

    .line 1739
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->callController:Lcom/android/phone/CallController;

    invoke-virtual {v2}, Lcom/android/phone/CallController;->getRtsValueForKor()[Ljava/lang/Integer;

    move-result-object v0

    .line 1741
    :cond_0
    if-nez v0, :cond_2

    .line 1751
    :cond_1
    :goto_0
    return-object v1

    .line 1742
    :cond_2
    const-string v2, "feature_skt"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1743
    invoke-static {v0, p0}, Lcom/android/phone/PhoneUtilsExt;->getSKTCallStatusCode([Ljava/lang/Integer;Z)Lcom/android/phone/Constants$CallStatusCode;

    move-result-object v1

    goto :goto_0

    .line 1745
    :cond_3
    const-string v2, "feature_ktt"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1746
    invoke-static {v0, p0}, Lcom/android/phone/PhoneUtilsExt;->getKTCallStatusCode([Ljava/lang/Integer;Z)Lcom/android/phone/Constants$CallStatusCode;

    move-result-object v1

    goto :goto_0

    .line 1748
    :cond_4
    const-string v2, "feature_lgt"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1749
    invoke-static {v0, p0}, Lcom/android/phone/PhoneUtilsExt;->getLGTCallStatusCode([Ljava/lang/Integer;Z)Lcom/android/phone/Constants$CallStatusCode;

    move-result-object v1

    goto :goto_0
.end method

.method private static getLGTCallStatusCode([Ljava/lang/Integer;Z)Lcom/android/phone/Constants$CallStatusCode;
    .locals 5
    .parameter "rtsValue"
    .parameter "isSvc"

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x4

    const/4 v2, 0x2

    .line 1659
    if-nez p1, :cond_0

    .line 1660
    aget-object v0, p0, v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1661
    aget-object v0, p0, v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1709
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 1710
    aget-object v0, p0, v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    .line 1732
    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 1663
    :sswitch_0
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->IMSI_UNKNOWN:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_1

    .line 1665
    :sswitch_1
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->ILLEGAL_MS:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_1

    .line 1667
    :sswitch_2
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->ILLEGAL_ME:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_1

    .line 1669
    :sswitch_3
    aget-object v0, p0, v2

    aput-object v0, p0, v3

    .line 1670
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->LOCATION_REG_FAIL:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_1

    .line 1672
    :sswitch_4
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->GPRS_SERVICE_NOT_ALLOWED:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_1

    .line 1674
    :sswitch_5
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->GPRS_SERVICE_NOT_ALLOWED_IN_THIS_PLMN:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_1

    .line 1676
    :sswitch_6
    aget-object v0, p0, v2

    aput-object v0, p0, v3

    .line 1677
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->LOCATION_REGSTERING:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_1

    .line 1679
    :sswitch_7
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->ETC_CAUSE_REJECT:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_1

    .line 1683
    :cond_2
    aget-object v0, p0, v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v2, :cond_3

    aget-object v0, p0, v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_0

    :cond_3
    invoke-static {v1}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1686
    aget-object v0, p0, v4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sparse-switch v0, :sswitch_data_2

    goto :goto_0

    .line 1688
    :sswitch_8
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->IMSI_UNKNOWN:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_1

    .line 1690
    :sswitch_9
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->ILLEGAL_MS:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_1

    .line 1692
    :sswitch_a
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->ILLEGAL_ME:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_1

    .line 1694
    :sswitch_b
    aget-object v0, p0, v4

    aput-object v0, p0, v3

    .line 1695
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->LOCATION_REG_FAIL:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_1

    .line 1697
    :sswitch_c
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->GPRS_SERVICE_NOT_ALLOWED:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_1

    .line 1699
    :sswitch_d
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->GPRS_SERVICE_NOT_ALLOWED_IN_THIS_PLMN:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_1

    .line 1701
    :sswitch_e
    aget-object v0, p0, v4

    aput-object v0, p0, v3

    .line 1702
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->LOCATION_REGSTERING:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_1

    .line 1704
    :sswitch_f
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->FREQ_SEARCHING:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_1

    .line 1712
    :sswitch_10
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->IMSI_UNKNOWN:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_1

    .line 1714
    :sswitch_11
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->ILLEGAL_MS:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_1

    .line 1716
    :sswitch_12
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->ILLEGAL_ME:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_1

    .line 1718
    :sswitch_13
    aget-object v0, p0, v2

    aput-object v0, p0, v3

    .line 1719
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->LOCATION_REG_FAIL:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_1

    .line 1721
    :sswitch_14
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->GPRS_SERVICE_NOT_ALLOWED:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_1

    .line 1723
    :sswitch_15
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->GPRS_SERVICE_NOT_ALLOWED_IN_THIS_PLMN:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_1

    .line 1725
    :sswitch_16
    aget-object v0, p0, v2

    aput-object v0, p0, v3

    .line 1726
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->LOCATION_REGSTERING:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_1

    .line 1728
    :sswitch_17
    sget-object v0, Lcom/android/phone/Constants$CallStatusCode;->FREQ_SEARCHING:Lcom/android/phone/Constants$CallStatusCode;

    goto/16 :goto_1

    .line 1661
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x6 -> :sswitch_2
        0x7 -> :sswitch_4
        0x8 -> :sswitch_3
        0xb -> :sswitch_3
        0xc -> :sswitch_3
        0xd -> :sswitch_3
        0xe -> :sswitch_5
        0xf -> :sswitch_3
        0x10 -> :sswitch_6
        0x11 -> :sswitch_6
        0x16 -> :sswitch_6
        0x5f -> :sswitch_7
        0x60 -> :sswitch_7
        0x61 -> :sswitch_7
        0x63 -> :sswitch_7
        0x6f -> :sswitch_7
        0xfe -> :sswitch_7
        0xff -> :sswitch_7
    .end sparse-switch

    .line 1710
    :sswitch_data_1
    .sparse-switch
        0x2 -> :sswitch_10
        0x3 -> :sswitch_11
        0x6 -> :sswitch_12
        0x7 -> :sswitch_14
        0x8 -> :sswitch_13
        0xb -> :sswitch_13
        0xc -> :sswitch_13
        0xd -> :sswitch_13
        0xe -> :sswitch_15
        0xf -> :sswitch_13
        0x10 -> :sswitch_16
        0x11 -> :sswitch_16
        0x16 -> :sswitch_16
        0xff -> :sswitch_17
    .end sparse-switch

    .line 1686
    :sswitch_data_2
    .sparse-switch
        0x2 -> :sswitch_8
        0x3 -> :sswitch_9
        0x6 -> :sswitch_a
        0x7 -> :sswitch_c
        0x8 -> :sswitch_b
        0xb -> :sswitch_b
        0xc -> :sswitch_b
        0xd -> :sswitch_b
        0xe -> :sswitch_d
        0xf -> :sswitch_b
        0x10 -> :sswitch_e
        0x11 -> :sswitch_e
        0x16 -> :sswitch_e
        0xff -> :sswitch_f
    .end sparse-switch
.end method

.method public static getLGTRADCallog()I
    .locals 1

    .prologue
    .line 912
    sget v0, Lcom/android/phone/PhoneUtilsExt;->mLGTRADCallog:I

    return v0
.end method

.method public static getLGTRADTemp()I
    .locals 1

    .prologue
    .line 904
    sget v0, Lcom/android/phone/PhoneUtilsExt;->mLGTRADTemp:I

    return v0
.end method

.method public static getNetworkMode()I
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 1324
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 1326
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v2

    .line 1327
    const-string v3, "ril.roaming.networkmode"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1328
    const-string v4, "gsm.sim.roaming"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1329
    const-string v5, "ril.simtype"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1331
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isNetworkSelManual => simtype  = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "efRoaming = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", IsManualSelection = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ,networkMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1332
    const-string v6, "3"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, ""

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1333
    const-string v1, "isNetworkSelManual - efRoaming is blank !! "

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1351
    :goto_0
    return v0

    .line 1336
    :cond_0
    const-string v6, ""

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1337
    const-string v1, "isNetworkSelManual - networkMode is blank !! "

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1340
    :cond_1
    const-string v0, "3"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1341
    const-string v0, "00"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez v2, :cond_3

    const-string v0, "AUTO"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1342
    const-string v0, "isNetworkSelManual - AUTO MODE "

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    move v0, v1

    .line 1343
    goto :goto_0

    .line 1346
    :cond_2
    if-nez v2, :cond_3

    const-string v0, "AUTO"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1347
    const-string v0, "isNetworkSelManual - AUTO MODE "

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    move v0, v1

    .line 1348
    goto :goto_0

    .line 1351
    :cond_3
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static getSKTCallLogNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "number"

    .prologue
    .line 533
    if-nez p0, :cond_1

    const/4 p0, 0x0

    .line 545
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 535
    .restart local p0
    :cond_1
    sget-boolean v0, Lcom/android/phone/PhoneUtilsExt;->mIsWzoneCall:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mWzoneprefix:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 536
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mWzoneprefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 538
    :cond_2
    sget-boolean v0, Lcom/android/phone/PhoneUtilsExt;->mIsCMFCall:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/phone/PhoneUtilsExt;->mIsMessageCall:Z

    if-eqz v0, :cond_0

    .line 539
    :cond_3
    const-string v0, "***"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 540
    const-string v0, "***"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 541
    :cond_4
    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 542
    const-string v0, "#"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static getSKTCallStatusCode([Ljava/lang/Integer;Z)Lcom/android/phone/Constants$CallStatusCode;
    .locals 4
    .parameter "rtsValue"
    .parameter "isSvc"

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x0

    const/4 v2, 0x3

    .line 1570
    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v2, :cond_0

    aget-object v1, p0, v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_1

    aget-object v1, p0, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 1571
    .local v0, isRtsStatus:Z
    :cond_1
    if-eqz p1, :cond_2

    .line 1572
    aget-object v1, p0, v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1587
    :goto_0
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 1574
    :sswitch_0
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->NOT_REGISTERED_NUMBER:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_1

    .line 1576
    :sswitch_1
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->EMERGENCY_ONLY:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_1

    .line 1580
    :cond_2
    if-eqz v0, :cond_3

    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->EMERGENCY_ONLY:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_1

    .line 1581
    :cond_3
    aget-object v1, p0, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sparse-switch v1, :sswitch_data_1

    goto :goto_0

    .line 1583
    :sswitch_2
    sget-object v1, Lcom/android/phone/Constants$CallStatusCode;->EMERGENCY_ONLY:Lcom/android/phone/Constants$CallStatusCode;

    goto :goto_1

    .line 1572
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x6 -> :sswitch_1
        0xb -> :sswitch_1
        0x11 -> :sswitch_1
        0x16 -> :sswitch_1
    .end sparse-switch

    .line 1581
    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_2
        0x11 -> :sswitch_2
        0x16 -> :sswitch_2
    .end sparse-switch
.end method

.method public static getSKTRADOutgoingCallNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSKTRADOutgoingCallNumber : mOutgoingCallString = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/phone/PhoneUtilsExt;->mOutgoingCallString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 321
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mOutgoingCallString:Ljava/lang/String;

    return-object v0
.end method

.method public static getSKTRADOutgoingCallUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSKTRADOutgoingCallUri : mOutgoingCallUri = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/phone/PhoneUtilsExt;->mOutgoingCallUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 316
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mOutgoingCallUri:Landroid/net/Uri;

    return-object v0
.end method

.method public static getSKTRADSetting()Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;
    .locals 1

    .prologue
    .line 311
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mSKTRADSetting:Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;

    return-object v0
.end method

.method public static getSKTRADisplayNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "number"

    .prologue
    .line 325
    const/16 v5, 0x8

    new-array v0, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "+82"

    aput-object v6, v0, v5

    const/4 v5, 0x1

    const-string v6, "+0082"

    aput-object v6, v0, v5

    const/4 v5, 0x2

    const-string v6, "0082"

    aput-object v6, v0, v5

    const/4 v5, 0x3

    const-string v6, "+082"

    aput-object v6, v0, v5

    const/4 v5, 0x4

    const-string v6, "082"

    aput-object v6, v0, v5

    const/4 v5, 0x5

    const-string v6, "82"

    aput-object v6, v0, v5

    const/4 v5, 0x6

    const-string v6, "00682"

    aput-object v6, v0, v5

    const/4 v5, 0x7

    const-string v6, "+00682"

    aput-object v6, v0, v5

    .line 326
    .local v0, SKTRADPrefixlist:[Ljava/lang/String;
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0xa

    if-le v5, v6, :cond_1

    .line 327
    move-object v1, v0

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v1, v2

    .line 328
    .local v4, strPrefix:Ljava/lang/String;
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 329
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 330
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSKTRADisplayNumber : number = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 327
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 341
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #strPrefix:Ljava/lang/String;
    :cond_1
    return-object p0
.end method

.method public static getSponImsi()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 1831
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, ""

    aput-object v2, v1, v0

    const/4 v0, 0x1

    const-string v2, ""

    aput-object v2, v1, v0

    const/4 v0, 0x2

    const-string v2, ""

    aput-object v2, v1, v0

    .line 1833
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1834
    if-nez v0, :cond_0

    move-object v0, v1

    .line 1846
    :goto_0
    return-object v0

    .line 1837
    :cond_0
    :try_start_0
    const-class v2, Landroid/telephony/TelephonyManager;

    const-string v3, "getSponImsi"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1838
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1843
    :catch_0
    move-exception v0

    :goto_1
    move-object v0, v1

    .line 1846
    goto :goto_0

    .line 1842
    :catch_1
    move-exception v0

    goto :goto_1

    .line 1841
    :catch_2
    move-exception v0

    goto :goto_1

    .line 1840
    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method public static getTHRWAYCallState()Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;
    .locals 1

    .prologue
    .line 1085
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mTHRWAYCallState:Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;

    return-object v0
.end method

.method public static getUserInputDialingNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 307
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mUserInputDialingNumber:Ljava/lang/String;

    return-object v0
.end method

.method public static isChinaCommercialSim()Z
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x0

    return v0
.end method

.method public static isDefaultIMEI()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 215
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 216
    .local v1, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, imei:Ljava/lang/String;
    const-string v3, "357858010034783"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "000000000000000"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "004400152020002"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 218
    :cond_0
    const-string v3, "International Mobile Equipment Identity is initial state"

    invoke-static {v3, v2}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;Z)V

    .line 221
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isEmergencyNumberToChange(Ljava/lang/String;)Z
    .locals 1
    .parameter "number"

    .prologue
    .line 284
    const-string v0, "114"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "111"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "112"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "113"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "119"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "122"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "125"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "127"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 287
    :cond_0
    const/4 v0, 0x1

    .line 289
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEvdoOnly()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1194
    invoke-static {v1}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "is_EVDO_Only_Mode"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1195
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->phoneMgr:[Lcom/android/phone/PhoneInterfaceManager;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/android/phone/PhoneInterfaceManager;->getNetworkType()I

    move-result v3

    .line 1196
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isEvdoOnly - evdo_only :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", network_type :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;Z)V

    .line 1197
    const-string v3, "Y"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1203
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isLGTRADSetting()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 869
    invoke-static {v0}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_dial_enable"

    const/16 v3, 0xc

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isLGTmergeState()Z
    .locals 1

    .prologue
    .line 1063
    sget-boolean v0, Lcom/android/phone/PhoneUtilsExt;->LGTmergeState:Z

    return v0
.end method

.method public static isLGTtransferState()Z
    .locals 1

    .prologue
    .line 1070
    sget-boolean v0, Lcom/android/phone/PhoneUtilsExt;->LGTtransferState:Z

    return v0
.end method

.method public static isNetworkSettingEnable()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1235
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    const-string v3, "phone"

    invoke-virtual {v0, v3}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1237
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    .line 1238
    const-string v0, "gsm.sim.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1240
    if-eqz v3, :cond_8

    const-string v0, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1241
    const-string v0, "00101"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 1242
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isNetworkSettingEnable imsi = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " isFactorySim = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1244
    :goto_1
    if-eqz v0, :cond_2

    .line 1261
    :cond_0
    :goto_2
    return v1

    :cond_1
    move v0, v2

    .line 1241
    goto :goto_0

    .line 1245
    :cond_2
    const-string v0, "ril.currentplmn"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1247
    invoke-static {v2}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 1248
    if-eqz v0, :cond_7

    .line 1249
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    sget-object v5, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v5, :cond_4

    move v0, v1

    .line 1252
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isNetworkSettingEnable current_plmn = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isSimCardReady = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1254
    if-eqz v4, :cond_3

    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "450"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1258
    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v1, v2

    .line 1259
    goto :goto_2

    :cond_4
    move v0, v2

    .line 1249
    goto :goto_3

    .line 1261
    :cond_5
    const-string v4, "domestic"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    if-nez v0, :cond_0

    :cond_6
    move v1, v2

    goto :goto_2

    :cond_7
    move v0, v2

    goto :goto_3

    :cond_8
    move v0, v2

    goto :goto_1
.end method

.method public static isOneTouchReportEnabled(Landroid/content/Context;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 1779
    const-string v0, "go.police.report"

    .line 1780
    const-string v0, "com.android.vending"

    .line 1786
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1788
    :try_start_0
    const-string v1, "go.police.report"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1790
    const-string v1, "com.android.vending"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1791
    const-string v0, "PhoneUtilsExt"

    const-string v1, "isOneTouchReportEnabled package is not installed.."

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1826
    :goto_0
    return v6

    .line 1794
    :catch_0
    move-exception v0

    .line 1795
    const-string v1, "PhoneUtilsExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isOneTouchReportEnabled package is not installed / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1801
    :cond_0
    const-string v0, "content://go.police.provider.report"

    .line 1802
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1804
    if-eqz v0, :cond_5

    .line 1805
    const-string v1, "content://go.police.provider.report"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1807
    if-eqz v2, :cond_2

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1808
    const-string v0, "customer_agreement"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1810
    const/4 v1, -0x1

    if-eq v1, v0, :cond_2

    .line 1811
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1812
    if-ne v7, v0, :cond_1

    move v6, v7

    .line 1814
    :cond_1
    const-string v1, "PhoneUtilsExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isOneTouchReportEnabled customerAgreementValue = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    move v0, v6

    .line 1820
    if-eqz v2, :cond_3

    .line 1821
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_1
    move v6, v0

    .line 1826
    goto :goto_0

    .line 1817
    :catch_1
    move-exception v0

    move-object v1, v0

    move v0, v6

    .line 1818
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1820
    if-eqz v2, :cond_3

    .line 1821
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1820
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_4

    .line 1821
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    :cond_5
    move v0, v6

    goto :goto_1
.end method

.method public static isRoamingArea()Ljava/lang/Boolean;
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 237
    const/4 v4, 0x0

    .line 239
    .local v4, result:Ljava/lang/Boolean;
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 240
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    const-string v7, "ril.currentplmn"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, current_plmn:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 243
    .local v3, phoneType:I
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isDefaultIMEI()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 244
    :cond_0
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 259
    .end local v4           #result:Ljava/lang/Boolean;
    :goto_0
    return-object v4

    .line 246
    .restart local v4       #result:Ljava/lang/Boolean;
    :cond_1
    const/4 v7, 0x2

    if-ne v3, v7, :cond_3

    .line 247
    const-string v7, "domestic"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "unknown"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    :goto_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 248
    goto :goto_0

    :cond_2
    move v5, v6

    .line 247
    goto :goto_1

    .line 251
    :cond_3
    const/4 v1, 0x0

    .line 252
    .local v1, isSimCardReady:Z
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne v7, v8, :cond_6

    move v1, v5

    .line 255
    :cond_4
    :goto_2
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v7

    if-nez v7, :cond_5

    const-string v7, "isRoamingArea :: phone.getIccCard() == null "

    invoke-static {v7}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 256
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isRoamingArea :: current_plmn = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isSimCardReady = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 258
    const-string v7, "domestic"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    const-string v7, "unknown"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    if-eqz v1, :cond_7

    :goto_3
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 259
    goto :goto_0

    :cond_6
    move v1, v6

    .line 252
    goto :goto_2

    :cond_7
    move v5, v6

    .line 258
    goto :goto_3
.end method

.method public static isSKTRADDialingToKoreaEnabled()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSKTRADDialingToKoreaEnabled : mSKTRADDialingToKoreaEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/phone/PhoneUtilsExt;->mSKTRADDialingToKoreaEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;Z)V

    .line 276
    sget-boolean v0, Lcom/android/phone/PhoneUtilsExt;->mSKTRADDialingToKoreaEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static isSKTRADEnabled()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 233
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/phone/PhoneUtilsExt;->mSKTRADSetting:Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;

    sget-object v2, Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;->Disabled:Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 234
    .local v0, result:Ljava/lang/Boolean;
    return-object v0

    .line 233
    .end local v0           #result:Ljava/lang/Boolean;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSKTSIM()Z
    .locals 3

    .prologue
    .line 1754
    const-string v0, "gsm.sim.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1755
    const-string v1, "ril.simtype"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1756
    const-string v2, "4"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "45005"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1757
    :cond_0
    const/4 v0, 0x1

    .line 1758
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSMS()Z
    .locals 1

    .prologue
    .line 1035
    sget-boolean v0, Lcom/android/phone/PhoneUtilsExt;->smsCall:Z

    return v0
.end method

.method public static isSendDtmf()Z
    .locals 1

    .prologue
    .line 1053
    sget-boolean v0, Lcom/android/phone/PhoneUtilsExt;->isSendDtmf:Z

    return v0
.end method

.method public static isSendEmptyFlash()Z
    .locals 1

    .prologue
    .line 1045
    sget-boolean v0, Lcom/android/phone/PhoneUtilsExt;->isSendEmptyFlash:Z

    return v0
.end method

.method public static isThrWayCallAvailable(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1207
    .line 1208
    const-string v2, "*22"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1210
    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->setLGTmergeState(Z)V

    .line 1211
    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->setLGTisPartyCall(Z)V

    .line 1220
    :goto_0
    return v0

    .line 1212
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isSendEmptyFlash()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1215
    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->setLGTmergeState(Z)V

    .line 1216
    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->setLGTisPartyCall(Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1218
    goto :goto_0
.end method

.method public static isVideoCallType()Z
    .locals 2

    .prologue
    .line 302
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mCallType:Lcom/android/phone/PhoneUtilsExt$CallType;

    sget-object v1, Lcom/android/phone/PhoneUtilsExt$CallType;->DIAL_VIDEO:Lcom/android/phone/PhoneUtilsExt$CallType;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mCallType:Lcom/android/phone/PhoneUtilsExt$CallType;

    sget-object v1, Lcom/android/phone/PhoneUtilsExt$CallType;->INCOMING_VIDEO:Lcom/android/phone/PhoneUtilsExt$CallType;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 303
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVoIPActivated()Z
    .locals 6

    .prologue
    .line 636
    const/4 v1, 0x0

    .line 638
    .local v1, ret:Z
    :try_start_0
    const-string v3, "voip"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v2

    .line 639
    .local v2, voipCall:Landroid/os/IVoIPInterface;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/os/IVoIPInterface;->isVoIPActivated()Z

    move-result v1

    .line 640
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isVoIPActivated - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 644
    .end local v2           #voipCall:Landroid/os/IVoIPInterface;
    :goto_0
    return v1

    .line 641
    :catch_0
    move-exception v0

    .line 642
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v3, "PhoneUtilsExt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isVoIPActivated - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 644
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    goto :goto_0
.end method

.method public static isVoIPRingOrDialing()Z
    .locals 6

    .prologue
    .line 648
    const/4 v1, 0x0

    .line 650
    .local v1, ret:Z
    :try_start_0
    const-string v3, "voip"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v2

    .line 651
    .local v2, voipCall:Landroid/os/IVoIPInterface;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/os/IVoIPInterface;->isVoIPRingOrDialing()Z

    move-result v1

    .line 652
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isVoIPRingOrDialing - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 656
    .end local v2           #voipCall:Landroid/os/IVoIPInterface;
    :goto_0
    return v1

    .line 653
    :catch_0
    move-exception v0

    .line 654
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v3, "PhoneUtilsExt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isVoIPRingOrDialing - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 656
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    goto :goto_0
.end method

.method public static isVoIPRingOrOffhook()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 660
    const/4 v1, 0x0

    .line 662
    .local v1, ret:Z
    :try_start_0
    const-string v4, "voip"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v2

    .line 663
    .local v2, voipCall:Landroid/os/IVoIPInterface;
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/os/IVoIPInterface;->isVoIPActivated()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v2}, Landroid/os/IVoIPInterface;->isVoIPRingOrDialing()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    move v1, v3

    .line 664
    :cond_1
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isVoIPRingOrOffhook - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 668
    .end local v2           #voipCall:Landroid/os/IVoIPInterface;
    :goto_1
    return v1

    .line 663
    .restart local v2       #voipCall:Landroid/os/IVoIPInterface;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 665
    .end local v2           #voipCall:Landroid/os/IVoIPInterface;
    :catch_0
    move-exception v0

    .line 666
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v3, "PhoneUtilsExt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isVoIPRingOrOffhook - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 668
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    goto :goto_1
.end method

.method public static launchOneTouchReport(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1762
    const-string v0, "go.police.report"

    .line 1763
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "go.police.report"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1764
    if-eqz v0, :cond_0

    .line 1765
    const/high16 v1, 0x1020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1767
    :try_start_0
    const-string v1, "startFlag"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1768
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1769
    const-string v1, "PhoneUtilsExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OneTouchReport] Start : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1776
    :goto_0
    return-void

    .line 1770
    :catch_0
    move-exception v1

    .line 1771
    const-string v1, "PhoneUtilsExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OneTouchReport] ActivityNotFoundException / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1774
    :cond_0
    const-string v0, "PhoneUtilsExt"

    const-string v1, "[OneTouchReport] OneTouchReport is not installed on device"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1863
    const-string v0, "PhoneUtilsExt"

    invoke-static {v0, p0}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1864
    return-void
.end method

.method private static log(Ljava/lang/String;Z)V
    .locals 1
    .parameter "message"
    .parameter "always"

    .prologue
    .line 1867
    const-string v0, "PhoneUtilsExt"

    invoke-static {v0, p0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1868
    return-void
.end method

.method static notifyCallProtectionStatus(Z)V
    .locals 11
    .parameter "foreground"

    .prologue
    const/4 v7, 0x1

    .line 748
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->notifyCallProtectionValue()V

    .line 749
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 750
    .local v0, app:Lcom/android/phone/PhoneApp;
    const-string v8, "gsm.version.ril-impl"

    const-string v9, "Qualcomm"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 752
    .local v6, ril_version:Ljava/lang/String;
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ril version : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;Z)V

    .line 753
    const-string v8, "Qualcomm"

    const/4 v9, 0x0

    const-string v10, "Qualcomm"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 754
    iget-object v8, v0, Lcom/android/phone/PhoneApp;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    if-nez v8, :cond_0

    .line 755
    new-instance v8, Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/samsung/android/sec_platform_library/FactoryPhone;-><init>(Landroid/content/Context;)V

    iput-object v8, v0, Lcom/android/phone/PhoneApp;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 767
    :cond_0
    :goto_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 768
    .local v1, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 770
    .local v2, dos:Ljava/io/DataOutputStream;
    const/4 v5, 0x6

    .line 771
    .local v5, fileSize:I
    const/16 v8, 0x16

    :try_start_1
    invoke-virtual {v2, v8}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 772
    const/16 v8, 0x37

    invoke-virtual {v2, v8}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 773
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 774
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 775
    iget-object v8, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v8, v9, :cond_5

    .line 776
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 777
    const-string v7, "notifyCallProtectionStatus : No Call"

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;Z)V

    .line 782
    :goto_1
    iget-object v7, v0, Lcom/android/phone/PhoneApp;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    if-eqz v7, :cond_1

    .line 783
    iget-object v7, v0, Lcom/android/phone/PhoneApp;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 791
    :cond_1
    if-eqz v1, :cond_2

    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 792
    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 797
    :cond_3
    :goto_2
    return-void

    .line 758
    .end local v1           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v2           #dos:Ljava/io/DataOutputStream;
    .end local v5           #fileSize:I
    :cond_4
    :try_start_3
    iget-object v8, v0, Lcom/android/phone/PhoneApp;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    if-eqz v8, :cond_0

    .line 759
    iget-object v8, v0, Lcom/android/phone/PhoneApp;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v8}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->disconnectFromRilService()V

    .line 760
    const/4 v8, 0x0

    iput-object v8, v0, Lcom/android/phone/PhoneApp;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 763
    :catch_0
    move-exception v4

    .line 764
    .local v4, ex:Ljava/lang/Exception;
    const-string v8, "PhoneUtilsExt"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "notifyCallProtectionStatus: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 779
    .end local v4           #ex:Ljava/lang/Exception;
    .restart local v1       #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #dos:Ljava/io/DataOutputStream;
    .restart local v5       #fileSize:I
    :cond_5
    if-eqz p0, :cond_7

    :goto_3
    :try_start_4
    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 780
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "notifyCallProtectionStatus : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz p0, :cond_8

    const-string v7, "Foreground"

    :goto_4
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 787
    :catch_1
    move-exception v3

    .line 788
    .local v3, e:Ljava/lang/Exception;
    :try_start_5
    const-string v7, "PhoneUtilsExt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "notifyCallProtectionStatus: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 791
    if-eqz v1, :cond_6

    :try_start_6
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 792
    :cond_6
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    .line 793
    :catch_2
    move-exception v3

    .line 794
    const-string v7, "PhoneUtilsExt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "notifyCallProtectionStatus: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 779
    .end local v3           #e:Ljava/lang/Exception;
    :cond_7
    const/4 v7, 0x2

    goto :goto_3

    .line 780
    :cond_8
    :try_start_7
    const-string v7, "Background"
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_4

    .line 793
    :catch_3
    move-exception v3

    .line 794
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v7, "PhoneUtilsExt"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "notifyCallProtectionStatus: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 790
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 791
    if-eqz v1, :cond_9

    :try_start_8
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 792
    :cond_9
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 795
    :cond_a
    :goto_5
    throw v7

    .line 793
    :catch_4
    move-exception v3

    .line 794
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v8, "PhoneUtilsExt"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "notifyCallProtectionStatus: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method static notifyCallProtectionValue()V
    .locals 13

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 702
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 703
    .local v0, app:Lcom/android/phone/PhoneApp;
    const-string v10, "gsm.version.ril-impl"

    const-string v11, "Qualcomm"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 705
    .local v7, ril_version:Ljava/lang/String;
    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ril version : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;Z)V

    .line 706
    const-string v10, "Qualcomm"

    const/4 v11, 0x0

    const-string v12, "Qualcomm"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v7, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 707
    iget-object v10, v0, Lcom/android/phone/PhoneApp;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    if-nez v10, :cond_0

    .line 708
    new-instance v10, Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getBaseContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/samsung/android/sec_platform_library/FactoryPhone;-><init>(Landroid/content/Context;)V

    iput-object v10, v0, Lcom/android/phone/PhoneApp;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 720
    :cond_0
    :goto_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 721
    .local v1, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 723
    .local v2, dos:Ljava/io/DataOutputStream;
    const/4 v6, 0x6

    .line 724
    .local v6, fileSize:I
    const/16 v10, 0x16

    :try_start_1
    invoke-virtual {v2, v10}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 725
    const/16 v10, 0x37

    invoke-virtual {v2, v10}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 726
    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 727
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 728
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->checkCallProtectionValue()Z

    move-result v4

    .line 729
    .local v4, enableCallProtect:Z
    if-eqz v4, :cond_5

    :goto_1
    invoke-virtual {v2, v8}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 730
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "notifyCallProtectionValue : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v4, :cond_6

    const-string v8, "Set"

    :goto_2
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;Z)V

    .line 731
    iget-object v8, v0, Lcom/android/phone/PhoneApp;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    if-eqz v8, :cond_1

    .line 732
    iget-object v8, v0, Lcom/android/phone/PhoneApp;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 740
    :cond_1
    if-eqz v1, :cond_2

    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 741
    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 746
    .end local v4           #enableCallProtect:Z
    :cond_3
    :goto_3
    return-void

    .line 711
    .end local v1           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v2           #dos:Ljava/io/DataOutputStream;
    .end local v6           #fileSize:I
    :cond_4
    :try_start_3
    iget-object v10, v0, Lcom/android/phone/PhoneApp;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    if-eqz v10, :cond_0

    .line 712
    iget-object v10, v0, Lcom/android/phone/PhoneApp;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v10}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->disconnectFromRilService()V

    .line 713
    const/4 v10, 0x0

    iput-object v10, v0, Lcom/android/phone/PhoneApp;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 716
    :catch_0
    move-exception v5

    .line 717
    .local v5, ex:Ljava/lang/Exception;
    const-string v10, "PhoneUtilsExt"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "notifyCallProtectionValue: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v5           #ex:Ljava/lang/Exception;
    .restart local v1       #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #dos:Ljava/io/DataOutputStream;
    .restart local v4       #enableCallProtect:Z
    .restart local v6       #fileSize:I
    :cond_5
    move v8, v9

    .line 729
    goto :goto_1

    .line 730
    :cond_6
    :try_start_4
    const-string v8, "Unset"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 742
    :catch_1
    move-exception v3

    .line 743
    .local v3, e:Ljava/lang/Exception;
    const-string v8, "PhoneUtilsExt"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "notifyCallProtectionValue: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 736
    .end local v3           #e:Ljava/lang/Exception;
    .end local v4           #enableCallProtect:Z
    :catch_2
    move-exception v3

    .line 737
    .restart local v3       #e:Ljava/lang/Exception;
    :try_start_5
    const-string v8, "PhoneUtilsExt"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "notifyCallProtectionValue : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 740
    if-eqz v1, :cond_7

    :try_start_6
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 741
    :cond_7
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3

    .line 742
    :catch_3
    move-exception v3

    .line 743
    const-string v8, "PhoneUtilsExt"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "notifyCallProtectionValue: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 739
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 740
    if-eqz v1, :cond_8

    :try_start_7
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 741
    :cond_8
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 744
    :cond_9
    :goto_4
    throw v8

    .line 742
    :catch_4
    move-exception v3

    .line 743
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v9, "PhoneUtilsExt"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "notifyCallProtectionValue: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public static setAutoDialState()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1265
    const-string v0, "gsm.operator.iso-country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1266
    const-string v0, ""

    .line 1267
    invoke-static {v6}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1268
    const-string v0, "RoamingPrefs"

    invoke-virtual {v2, v0, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1269
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 1271
    const-string v4, "lastest_country"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1272
    const-string v4, "contain lastest_country"

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1273
    const-string v4, "lastest_country"

    const-string v5, "kr"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1280
    :goto_0
    if-eqz v1, :cond_0

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1281
    const-string v4, "lastestCountry Change"

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1282
    const-string v4, "lastest_country"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1283
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1286
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isoCountryCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", lastestCountry = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1287
    if-eqz v1, :cond_2

    .line 1288
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1289
    :cond_1
    const-string v0, "LGT AutoDialState No Change!!"

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1290
    const-string v0, "kr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1322
    :cond_2
    :goto_1
    return-void

    .line 1275
    :cond_3
    const-string v0, "Not contain lastest_country"

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1276
    const-string v0, "lastest_country"

    const-string v4, "kr"

    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1277
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1278
    const-string v0, "kr"

    goto :goto_0

    .line 1293
    :cond_4
    invoke-static {v6}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "roaming_auto_setting"

    invoke-static {v0, v1, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1294
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LGT roaming_auto_setting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1295
    if-ne v0, v7, :cond_2

    .line 1296
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getNetworkMode()I

    move-result v0

    if-ne v0, v7, :cond_5

    .line 1298
    const-string v0, "LGT show toast!!"

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1299
    const v0, 0x7f0e0613

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->startToast(I)V

    .line 1300
    invoke-static {v6}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "roaming_auto_setting"

    invoke-static {v0, v1, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 1303
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNetworkMode()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getNetworkMode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1308
    :cond_6
    const-string v0, "kr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1309
    const-string v0, "LGT AutoDialing off"

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1310
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_dial_enable"

    const/16 v2, 0xc

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1319
    :goto_2
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->setDefaultRoamingValue()V

    goto/16 :goto_1

    .line 1315
    :cond_7
    const-string v0, "LGT AutoDialing on"

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1316
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_dial_enable"

    const/16 v2, 0xb

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2
.end method

.method public static setCONFCallState(Lcom/android/phone/PhoneUtilsExt$CONFCallState;)V
    .locals 0
    .parameter "newState"

    .prologue
    .line 1096
    sput-object p0, Lcom/android/phone/PhoneUtilsExt;->mCONFCallState:Lcom/android/phone/PhoneUtilsExt$CONFCallState;

    .line 1097
    return-void
.end method

.method public static setCallCardNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "callCardNumber"

    .prologue
    .line 1006
    sput-object p0, Lcom/android/phone/PhoneUtilsExt;->mCallCardNumber:Ljava/lang/String;

    .line 1007
    return-void
.end method

.method public static setCallEnd(Z)V
    .locals 0
    .parameter "callend"

    .prologue
    .line 1019
    sput-boolean p0, Lcom/android/phone/PhoneUtilsExt;->callEnd:Z

    .line 1020
    return-void
.end method

.method public static setCallType(Lcom/android/phone/PhoneUtilsExt$CallType;)V
    .locals 2
    .parameter "type"

    .prologue
    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCallType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;Z)V

    .line 298
    sput-object p0, Lcom/android/phone/PhoneUtilsExt;->mCallType:Lcom/android/phone/PhoneUtilsExt$CallType;

    .line 299
    return-void
.end method

.method public static setContactsNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "contactsNumber"

    .prologue
    .line 998
    sput-object p0, Lcom/android/phone/PhoneUtilsExt;->mContactsNumber:Ljava/lang/String;

    .line 999
    return-void
.end method

.method public static setCountryCode(Ljava/lang/String;)V
    .locals 0
    .parameter "countryCode"

    .prologue
    .line 883
    sput-object p0, Lcom/android/phone/PhoneUtilsExt;->mCountryCode:Ljava/lang/String;

    .line 884
    return-void
.end method

.method public static setCountryCodeTemp(Ljava/lang/String;)V
    .locals 0
    .parameter "countryCodeTemp"

    .prologue
    .line 893
    sput-object p0, Lcom/android/phone/PhoneUtilsExt;->mCountryCodeTemp:Ljava/lang/String;

    .line 894
    return-void
.end method

.method private static setDefaultRoamingValue()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1493
    const-string v0, "PhoneUtilsExt : setDefaultRoamingValue"

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1494
    invoke-static {v6}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1496
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080052

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1498
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "country_id"

    const-wide/16 v4, 0x6c

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 1499
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "country_code"

    aget-object v4, v1, v6

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1500
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "CONTURY_NAME_KOR"

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1501
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "CONTURY_NAME_ENG"

    const/4 v3, 0x2

    aget-object v1, v1, v3

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1502
    return-void
.end method

.method public static setDialingNumberForLGTRAD(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1133
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/telephony/MultiSimPhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    .line 1134
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getCallEnd()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1135
    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/telephony/MultiSimPhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1137
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isLGTRADSetting()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1138
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getLGTRADTemp()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 1139
    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    .line 1166
    :cond_1
    :goto_0
    const-string v0, "0234167010"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->IsDialingNumberRevert()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1168
    invoke-static {p0}, Lcom/android/phone/PhoneUtilsExt;->changeDialingNumberForLGTRAD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1170
    :cond_2
    return-object p0

    .line 1140
    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getLGTRADTemp()I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 1141
    invoke-static {p0}, Lcom/android/phone/PhoneUtilsExt;->changeDialingNumberForLGTRAD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1143
    :cond_4
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getLGTRADCallog()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_5

    .line 1144
    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    goto :goto_0

    .line 1146
    :cond_5
    invoke-static {p0}, Lcom/android/phone/PhoneUtilsExt;->changeDialingNumberForLGTRAD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1149
    :cond_6
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getLGTRADTemp()I

    move-result v0

    if-ne v0, v2, :cond_7

    .line 1150
    invoke-static {p0}, Lcom/android/phone/PhoneUtilsExt;->changeDialingNumberForLGTRAD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1151
    :cond_7
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getLGTRADTemp()I

    move-result v0

    if-ne v0, v2, :cond_8

    .line 1152
    invoke-static {p0}, Lcom/android/phone/PhoneUtilsExt;->changeDialingNumberForLGTRAD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1153
    :cond_8
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isSMS()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1154
    invoke-static {v2}, Lcom/android/phone/PhoneUtilsExt;->findAccessCode(Z)Z

    .line 1155
    invoke-static {p0}, Lcom/android/phone/PhoneUtilsExt;->changeDialingNumberForLGTRAD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1157
    :cond_9
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getLGTRADCallog()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_a

    .line 1158
    invoke-static {v2}, Lcom/android/phone/PhoneUtilsExt;->findAccessCode(Z)Z

    .line 1159
    invoke-static {p0}, Lcom/android/phone/PhoneUtilsExt;->changeDialingNumberForLGTRAD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1161
    :cond_a
    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    goto :goto_0
.end method

.method public static setDialingNumberForRAD(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 1119
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/telephony/MultiSimPhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    .line 1120
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isSKTRADEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/phone/PhoneUtilsExt;->isEmergencyNumberToChange(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1121
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "in Roaming Area --setDialingNumberForRAD before - number = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1123
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isSKTRADDialingToKoreaEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1124
    invoke-static {p0}, Lcom/android/phone/PhoneUtilsExt;->changeDialingNumberForSKTRAD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1127
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "in Roaming Area --setDialingNumberForRAD after -number = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1129
    :cond_1
    return-object p0

    .line 1126
    :cond_2
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    goto :goto_0
.end method

.method public static setDialingNumberRevert(Z)V
    .locals 0
    .parameter "revert"

    .prologue
    .line 389
    sput-boolean p0, Lcom/android/phone/PhoneUtilsExt;->mRevertDialingNumber:Z

    .line 390
    return-void
.end method

.method public static setEmptyFlash(Z)V
    .locals 0
    .parameter "isSend"

    .prologue
    .line 1049
    sput-boolean p0, Lcom/android/phone/PhoneUtilsExt;->isSendEmptyFlash:Z

    .line 1050
    return-void
.end method

.method public static setEndCallNumberForLGTRAD(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 2
    .parameter "phoneNumber"
    .parameter "isIncome"

    .prologue
    .line 1174
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getSKTRADOutgoingCallNumber()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, ""

    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getSKTRADOutgoingCallNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1175
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getSKTRADOutgoingCallNumber()Ljava/lang/String;

    move-result-object p0

    .line 1177
    :cond_0
    return-object p0
.end method

.method public static setLGTRADTemp(I)V
    .locals 0
    .parameter "temp"

    .prologue
    .line 900
    sput p0, Lcom/android/phone/PhoneUtilsExt;->mLGTRADTemp:I

    .line 901
    return-void
.end method

.method public static setLGTisPartyCall(Z)V
    .locals 0
    .parameter "lGTisPartyCall"

    .prologue
    .line 1082
    sput-boolean p0, Lcom/android/phone/PhoneUtilsExt;->LGTisPartyCall:Z

    .line 1083
    return-void
.end method

.method public static setLGTmergeState(Z)V
    .locals 0
    .parameter "lGTmergeState"

    .prologue
    .line 1067
    sput-boolean p0, Lcom/android/phone/PhoneUtilsExt;->LGTmergeState:Z

    .line 1068
    return-void
.end method

.method public static setLGTtransferState(Z)V
    .locals 0
    .parameter "lGTtransferState"

    .prologue
    .line 1074
    sput-boolean p0, Lcom/android/phone/PhoneUtilsExt;->LGTtransferState:Z

    .line 1075
    return-void
.end method

.method public static setMultiCallState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1100
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 1101
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:[Lcom/android/phone/CdmaPhoneCallState;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v1

    sget-object v2, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v1, v2, :cond_2

    .line 1103
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getTHRWAYCallState()Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;

    move-result-object v1

    sget-object v2, Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;->PARTY_CALL:Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;

    if-ne v1, v2, :cond_0

    .line 1104
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isLGTmergeState()Z

    move-result v1

    sput-boolean v1, Lcom/android/phone/PhoneUtilsExt;->canMulti:Z

    .line 1105
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getTHRWAYCallState()Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;

    move-result-object v1

    sget-object v2, Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;->TRANSFER_CALL:Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;

    if-ne v1, v2, :cond_1

    .line 1106
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isLGTtransferState()Z

    move-result v1

    sput-boolean v1, Lcom/android/phone/PhoneUtilsExt;->canMulti:Z

    .line 1116
    :cond_1
    :goto_0
    return-void

    .line 1107
    :cond_2
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:[Lcom/android/phone/CdmaPhoneCallState;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v1

    sget-object v2, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v1, v2, :cond_4

    .line 1109
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getCONFCallState()Lcom/android/phone/PhoneUtilsExt$CONFCallState;

    move-result-object v1

    sget-object v2, Lcom/android/phone/PhoneUtilsExt$CONFCallState;->PARTY_CALL:Lcom/android/phone/PhoneUtilsExt$CONFCallState;

    if-ne v1, v2, :cond_3

    .line 1110
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isLGTmergeState()Z

    move-result v1

    sput-boolean v1, Lcom/android/phone/PhoneUtilsExt;->canMulti:Z

    .line 1111
    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->getCONFCallState()Lcom/android/phone/PhoneUtilsExt$CONFCallState;

    move-result-object v1

    sget-object v2, Lcom/android/phone/PhoneUtilsExt$CONFCallState;->SWAP_CALL:Lcom/android/phone/PhoneUtilsExt$CONFCallState;

    if-ne v1, v2, :cond_1

    .line 1112
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/phone/PhoneUtilsExt;->canMulti:Z

    goto :goto_0

    .line 1114
    :cond_4
    sput-boolean v3, Lcom/android/phone/PhoneUtilsExt;->canMulti:Z

    goto :goto_0
.end method

.method public static setOutgoingToKorea(Z)V
    .locals 0
    .parameter "isKorea"

    .prologue
    .line 1023
    sput-boolean p0, Lcom/android/phone/PhoneUtilsExt;->outgoingToKorea:Z

    .line 1024
    return-void
.end method

.method public static setPhoneAppSetting()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 345
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "roaming_auto_dial"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 346
    .local v0, result:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPhoneAppSetting : result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " => 0=Enabled, 1=Disabled, 2=OnlyOutgoingToKorea"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;Z)V

    .line 347
    packed-switch v0, :pswitch_data_0

    .line 363
    sget-object v1, Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;->Disabled:Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;

    sput-object v1, Lcom/android/phone/PhoneUtilsExt;->mSKTRADSetting:Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;

    .line 364
    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    .line 367
    :goto_0
    return-void

    .line 350
    :pswitch_0
    sget-object v1, Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;->Enabled:Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;

    sput-object v1, Lcom/android/phone/PhoneUtilsExt;->mSKTRADSetting:Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;

    goto :goto_0

    .line 354
    :pswitch_1
    sget-object v1, Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;->Disabled:Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;

    sput-object v1, Lcom/android/phone/PhoneUtilsExt;->mSKTRADSetting:Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;

    .line 355
    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->setDialingNumberRevert(Z)V

    goto :goto_0

    .line 359
    :pswitch_2
    sget-object v1, Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;->OnlyOutgoingToKorea:Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;

    sput-object v1, Lcom/android/phone/PhoneUtilsExt;->mSKTRADSetting:Lcom/android/phone/PhoneUtilsExt$SKTRADSetting;

    goto :goto_0

    .line 347
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static setRADCode()V
    .locals 4

    .prologue
    .line 859
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "country_code"

    const/16 v3, 0x52

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 863
    .local v0, country_code:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRADCode : country_code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 864
    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->setCountryCode(Ljava/lang/String;)V

    .line 865
    return-void
.end method

.method public static setSKTCallLogType(Ljava/lang/String;)V
    .locals 3
    .parameter "number"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 506
    if-nez p0, :cond_1

    .line 530
    :cond_0
    :goto_0
    return-void

    .line 507
    :cond_1
    sget-boolean v0, Lcom/android/phone/PhoneUtilsExt;->mIsWzoneCall:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mWzoneprefix:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 508
    sget-object v0, Lcom/android/phone/PhoneUtilsExt;->mWzoneprefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 510
    :cond_2
    const-string v0, "feature_skt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 511
    const-string v0, "***"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 512
    sput-boolean v2, Lcom/android/phone/PhoneUtilsExt;->mIsCMFCall:Z

    .line 513
    sput-boolean v1, Lcom/android/phone/PhoneUtilsExt;->mIsMessageCall:Z

    goto :goto_0

    .line 514
    :cond_3
    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "##"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_4

    .line 515
    sput-boolean v1, Lcom/android/phone/PhoneUtilsExt;->mIsCMFCall:Z

    .line 516
    sput-boolean v2, Lcom/android/phone/PhoneUtilsExt;->mIsMessageCall:Z

    goto :goto_0

    .line 518
    :cond_4
    sput-boolean v1, Lcom/android/phone/PhoneUtilsExt;->mIsCMFCall:Z

    .line 519
    sput-boolean v1, Lcom/android/phone/PhoneUtilsExt;->mIsMessageCall:Z

    goto :goto_0

    .line 521
    :cond_5
    const-string v0, "feature_ktt"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    const-string v0, "***"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 523
    sput-boolean v2, Lcom/android/phone/PhoneUtilsExt;->mIsCMFCall:Z

    .line 524
    sput-boolean v1, Lcom/android/phone/PhoneUtilsExt;->mIsMessageCall:Z

    goto :goto_0

    .line 526
    :cond_6
    sput-boolean v1, Lcom/android/phone/PhoneUtilsExt;->mIsCMFCall:Z

    .line 527
    sput-boolean v1, Lcom/android/phone/PhoneUtilsExt;->mIsMessageCall:Z

    goto :goto_0
.end method

.method public static setSKTRADDialingToKoreaEnabled(Z)V
    .locals 2
    .parameter "set"

    .prologue
    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSKTRADDialingToKoreaEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;Z)V

    .line 394
    sput-boolean p0, Lcom/android/phone/PhoneUtilsExt;->mSKTRADDialingToKoreaEnabled:Z

    .line 395
    return-void
.end method

.method public static setSKTRADOutgoingCallNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "outgoingCallString"

    .prologue
    .line 374
    sput-object p0, Lcom/android/phone/PhoneUtilsExt;->mOutgoingCallString:Ljava/lang/String;

    .line 375
    return-void
.end method

.method public static setSKTRADOutgoingCallUri(Landroid/net/Uri;)V
    .locals 0
    .parameter "outgoingCallUri"

    .prologue
    .line 370
    sput-object p0, Lcom/android/phone/PhoneUtilsExt;->mOutgoingCallUri:Landroid/net/Uri;

    .line 371
    return-void
.end method

.method public static setSendDtmf(Z)V
    .locals 0
    .parameter "isSend"

    .prologue
    .line 1057
    sput-boolean p0, Lcom/android/phone/PhoneUtilsExt;->isSendDtmf:Z

    .line 1058
    return-void
.end method

.method public static setTHRWAYCallState(Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;)V
    .locals 0
    .parameter "newState"

    .prologue
    .line 1092
    sput-object p0, Lcom/android/phone/PhoneUtilsExt;->mTHRWAYCallState:Lcom/android/phone/PhoneUtilsExt$THRWAYCallState;

    .line 1093
    return-void
.end method

.method public static setUserInputDialingNumber(Ljava/lang/String;)V
    .locals 3
    .parameter "number"

    .prologue
    .line 379
    move-object v0, p0

    .line 380
    .local v0, inputNumber:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 381
    const-string v1, "\\,.*"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 382
    const-string v1, "\\;.*"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 384
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUserInputDialingNumber  input num= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "set num= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 385
    sput-object v0, Lcom/android/phone/PhoneUtilsExt;->mUserInputDialingNumber:Ljava/lang/String;

    .line 386
    return-void
.end method

.method public static showNetworkAutoReboot()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1355
    sget-boolean v0, Lcom/android/phone/PhoneUtilsExt;->bAutoRebootPopupLaunched:Z

    if-eqz v0, :cond_0

    .line 1356
    const-string v0, "showNetworkAutoReboot - already called LGTNetworkAutoRebootPopup so ignore duplicated intent! "

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1415
    :goto_0
    return-void

    .line 1360
    :cond_0
    invoke-static {v8}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1362
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v1

    .line 1363
    const-string v2, "ril.roaming.networkmode"

    const-string v3, "AUTO"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1364
    const-string v3, "gsm.sim.roaming"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1366
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IMSI efRoaming = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", IsManualSelection = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ,networkMode = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1368
    const-string v1, "showNetworkAutoReboot - MANUAL MODE need to show popup!! "

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1370
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    .line 1373
    const-string v2, " setIMSIAuto !! "

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1375
    new-array v2, v9, [B

    .line 1376
    aput-byte v8, v2, v8

    .line 1379
    :try_start_0
    const-class v3, Lcom/android/internal/telephony/IccCard;

    const-string v4, "setRoaming"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Landroid/os/Message;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1380
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v2, 0x1

    const/4 v6, 0x0

    aput-object v6, v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1389
    :goto_1
    const-string v2, " networkSelectAuto !! "

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1390
    invoke-interface {v0, v10}, Lcom/android/internal/telephony/Phone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 1393
    iget-object v0, v1, Lcom/android/phone/PhoneApp;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/samsung/android/sec_platform_library/FactoryPhone;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    .line 1396
    :cond_1
    const-string v0, "setAutoBandMode"

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1398
    const-string v0, "kor_phone_via_chip"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1400
    invoke-static {v8}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preferred_network_mode"

    invoke-static {v0, v1, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1405
    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v8

    invoke-interface {v0, v8, v10}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 1409
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1410
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.LGTNetworkAutoRebootPopup"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1411
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1412
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    .line 1413
    sput-boolean v9, Lcom/android/phone/PhoneUtilsExt;->bAutoRebootPopupLaunched:Z

    goto/16 :goto_0

    .line 1384
    :catch_0
    move-exception v2

    goto :goto_1

    .line 1383
    :catch_1
    move-exception v2

    goto :goto_1

    .line 1382
    :catch_2
    move-exception v2

    goto :goto_1

    .line 1381
    :catch_3
    move-exception v2

    goto :goto_1
.end method

.method public static showNetworkAutoRebootIfManualSelected()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v6, 0x1

    const/4 v10, 0x0

    .line 1419
    invoke-static {v10}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1421
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v1

    .line 1422
    const-string v2, "ril.roaming.networkmode"

    const-string v3, "AUTO"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1423
    const-string v3, "gsm.sim.roaming"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1425
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IMSI efRoaming = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", IsManualSelection = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,networkMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1426
    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1427
    const-string v0, "showNetworkAutoRebootIfManualSelected - efRoaming is blank !! "

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1490
    :goto_0
    return-void

    .line 1430
    :cond_0
    const-string v4, "00"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v1, :cond_1

    const-string v4, "AUTO"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1431
    const-string v0, "showNetworkAutoRebootIfManualSelected - AUTO MODE "

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1435
    :cond_1
    const-string v4, "ril.currentplmn"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1436
    const-string v5, "domestic"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showNetworkAutoRebootIfManualSelected - currentplmn is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1441
    :cond_2
    const-string v4, "showNetworkAutoRebootIfManualSelected - MANUAL MODE need to show popup!! "

    invoke-static {v4}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1444
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    .line 1446
    const-string v5, "00"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1447
    const-string v3, " setIMSIAuto !! "

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1449
    new-array v3, v6, [B

    .line 1450
    aput-byte v10, v3, v10

    .line 1453
    :try_start_0
    const-class v5, Lcom/android/internal/telephony/IccCard;

    const-string v6, "setRoaming"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-class v9, Landroid/os/Message;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 1454
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v3, 0x1

    const/4 v8, 0x0

    aput-object v8, v7, v3

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1463
    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    .line 1464
    const-string v1, " networkSelectAuto !! "

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1465
    invoke-interface {v0, v11}, Lcom/android/internal/telephony/Phone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 1468
    :cond_4
    iget-object v0, v4, Lcom/android/phone/PhoneApp;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    if-nez v0, :cond_5

    new-instance v0, Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sec_platform_library/FactoryPhone;-><init>(Landroid/content/Context;)V

    iput-object v0, v4, Lcom/android/phone/PhoneApp;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    .line 1470
    :cond_5
    const-string v0, "AUTO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1472
    const-string v0, "setAutoBandMode"

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsExt;->log(Ljava/lang/String;)V

    .line 1474
    const-string v0, "kor_phone_via_chip"

    invoke-static {v0}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1476
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preferred_network_mode"

    invoke-static {v0, v1, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1481
    :cond_6
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:[Lcom/android/internal/telephony/Phone;

    aget-object v0, v0, v10

    invoke-interface {v0, v10, v11}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 1485
    :cond_7
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1486
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.LGTNetworkAutoRebootPopup"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1487
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1488
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1458
    :catch_0
    move-exception v3

    goto :goto_1

    .line 1457
    :catch_1
    move-exception v3

    goto :goto_1

    .line 1456
    :catch_2
    move-exception v3

    goto :goto_1

    .line 1455
    :catch_3
    move-exception v3

    goto :goto_1
.end method
