.class public Lcom/android/phone/CdmaCallBarring;
.super Landroid/preference/PreferenceActivity;
.source "CdmaCallBarring.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/phone/EditPinPreference$OnPinEnteredListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CdmaCallBarring$2;,
        Lcom/android/phone/CdmaCallBarring$AppState;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final SRC_TAGS:[Ljava/lang/String;


# instance fields
.field private mAppState:Lcom/android/phone/CdmaCallBarring$AppState;

.field private mButtonCDMAMoreExpand:Landroid/preference/PreferenceScreen;

.field private mButtonDS:Landroid/preference/ListPreference;

.field private mButtonIncoming:Landroid/preference/ListPreference;

.field private mButtonOutgoing:Landroid/preference/ListPreference;

.field private mButtonPasswd:Lcom/android/phone/EditPinPreference;

.field private mDisplayMode:I

.field private mIsBusyDialogAvailable:Z

.field private mMoreDataStale:Z

.field private mNetworkServiceHandler:Landroid/os/Handler;

.field private mNewIncoming:Ljava/lang/String;

.field private mNewOutgoing:Ljava/lang/String;

.field private mNewPassWD:Ljava/lang/String;

.field private mOldIncoming:Ljava/lang/String;

.field private mOldOutgoing:Ljava/lang/String;

.field private mPassWD:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPwState:I

.field private mSetState:I

.field private mSetState_check:Z

.field private mTelMan:Landroid/telephony/TelephonyManager;

.field private temp_NewPassWD:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 60
    sget v0, Lcom/android/phone/PhoneApp;->DBG_LEVEL:I

    const/4 v3, 0x2

    if-lt v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/phone/CdmaCallBarring;->DBG:Z

    .line 63
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "{0}"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/phone/CdmaCallBarring;->SRC_TAGS:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 60
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CdmaCallBarring;->mMoreDataStale:Z

    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CdmaCallBarring;->mIsBusyDialogAvailable:Z

    .line 333
    new-instance v0, Lcom/android/phone/CdmaCallBarring$1;

    invoke-direct {v0, p0}, Lcom/android/phone/CdmaCallBarring$1;-><init>(Lcom/android/phone/CdmaCallBarring;)V

    iput-object v0, p0, Lcom/android/phone/CdmaCallBarring;->mNetworkServiceHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 52
    sget-boolean v0, Lcom/android/phone/CdmaCallBarring;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-static {p0}, Lcom/android/phone/CdmaCallBarring;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/CdmaCallBarring;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/phone/CdmaCallBarring;->mNetworkServiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/CdmaCallBarring;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/phone/CdmaCallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/CdmaCallBarring;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/phone/CdmaCallBarring;->dismissExpandedDialog()V

    return-void
.end method

.method private changeCallBarringValue()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 822
    iget v2, p0, Lcom/android/phone/CdmaCallBarring;->mSetState:I

    if-ne v2, v5, :cond_1

    .line 823
    iget-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mNewOutgoing:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 824
    .local v1, nOutgoing:I
    invoke-direct {p0, v1}, Lcom/android/phone/CdmaCallBarring;->saveCallBarringOutgoing(I)V

    .line 826
    invoke-direct {p0, v1}, Lcom/android/phone/CdmaCallBarring;->updateCBOutgoingSummary(I)V

    .line 827
    iget-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mButtonOutgoing:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/phone/CdmaCallBarring;->mNewOutgoing:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 828
    iget-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mNewOutgoing:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mOldOutgoing:Ljava/lang/String;

    .line 829
    iput-object v6, p0, Lcom/android/phone/CdmaCallBarring;->mNewOutgoing:Ljava/lang/String;

    .line 840
    .end local v1           #nOutgoing:I
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mPassWD:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 841
    iput v5, p0, Lcom/android/phone/CdmaCallBarring;->mPwState:I

    .line 845
    :goto_1
    iput v4, p0, Lcom/android/phone/CdmaCallBarring;->mSetState:I

    .line 846
    return-void

    .line 831
    :cond_1
    iget v2, p0, Lcom/android/phone/CdmaCallBarring;->mSetState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 832
    iget-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mNewIncoming:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 833
    .local v0, nIncoming:I
    invoke-direct {p0, v0}, Lcom/android/phone/CdmaCallBarring;->saveCallBarringIncoming(I)V

    .line 835
    invoke-direct {p0, v0}, Lcom/android/phone/CdmaCallBarring;->updateCBIncomingSummary(I)V

    .line 836
    iget-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mButtonIncoming:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/android/phone/CdmaCallBarring;->mNewIncoming:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 837
    iget-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mNewIncoming:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mOldIncoming:Ljava/lang/String;

    .line 838
    iput-object v6, p0, Lcom/android/phone/CdmaCallBarring;->mNewIncoming:Ljava/lang/String;

    goto :goto_0

    .line 843
    .end local v0           #nIncoming:I
    :cond_2
    iput v4, p0, Lcom/android/phone/CdmaCallBarring;->mPwState:I

    goto :goto_1
.end method

.method private checkCallBarringPassword(Z)V
    .locals 2
    .parameter "shouldDisplay"

    .prologue
    const/4 v1, 0x0

    .line 811
    iget-object v0, p0, Lcom/android/phone/CdmaCallBarring;->mPassWD:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 812
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/CdmaCallBarring;->mPwState:I

    .line 813
    invoke-direct {p0, v1, p1}, Lcom/android/phone/CdmaCallBarring;->displayPasswdDialog(IZ)V

    .line 819
    :goto_0
    return-void

    .line 816
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/phone/CdmaCallBarring;->mPwState:I

    .line 817
    invoke-direct {p0, v1, p1}, Lcom/android/phone/CdmaCallBarring;->displayPasswdDialog(IZ)V

    goto :goto_0
.end method

.method private final dismissBusyDialog()V
    .locals 2

    .prologue
    .line 597
    sget-boolean v0, Lcom/android/phone/CdmaCallBarring;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dismissBusyDialog: mIsBusyDialogAvailable => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/CdmaCallBarring;->mIsBusyDialogAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CdmaCallBarring;->log(Ljava/lang/String;)V

    .line 599
    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/CdmaCallBarring;->mIsBusyDialogAvailable:Z

    if-eqz v0, :cond_1

    .line 600
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Landroid/app/Activity;->dismissDialog(I)V

    .line 602
    :cond_1
    return-void
.end method

.method private dismissExpandedDialog()V
    .locals 2

    .prologue
    .line 459
    sget-boolean v0, Lcom/android/phone/CdmaCallBarring;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dismissExpandedDialog mDisplayMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/CdmaCallBarring;->mDisplayMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CdmaCallBarring;->log(Ljava/lang/String;)V

    .line 460
    :cond_0
    iget v0, p0, Lcom/android/phone/CdmaCallBarring;->mDisplayMode:I

    packed-switch v0, :pswitch_data_0

    .line 465
    :goto_0
    const/4 v0, -0x3

    iput v0, p0, Lcom/android/phone/CdmaCallBarring;->mDisplayMode:I

    .line 466
    sget-object v0, Lcom/android/phone/CdmaCallBarring$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallBarring$AppState;

    invoke-direct {p0, v0}, Lcom/android/phone/CdmaCallBarring;->setAppState(Lcom/android/phone/CdmaCallBarring$AppState;)V

    .line 467
    return-void

    .line 462
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/CdmaCallBarring;->mButtonCDMAMoreExpand:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 460
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
    .end packed-switch
.end method

.method private final displayPasswdDialog(IZ)V
    .locals 4
    .parameter "strId"
    .parameter "shouldDisplay"

    .prologue
    .line 895
    iget v1, p0, Lcom/android/phone/CdmaCallBarring;->mPwState:I

    packed-switch v1, :pswitch_data_0

    .line 907
    const v0, 0x7f0e036b

    .line 911
    .local v0, msgId:I
    :goto_0
    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mButtonPasswd:Lcom/android/phone/EditPinPreference;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 912
    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mButtonPasswd:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1, v0}, Landroid/preference/DialogPreference;->setDialogTitle(I)V

    .line 915
    if-eqz p1, :cond_1

    .line 916
    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mButtonPasswd:Lcom/android/phone/EditPinPreference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/DialogPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 921
    :goto_1
    if-eqz p2, :cond_0

    .line 922
    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mButtonPasswd:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/phone/EditPinPreference;->showPinDialog()V

    .line 924
    :cond_0
    return-void

    .line 897
    .end local v0           #msgId:I
    :pswitch_0
    const v0, 0x7f0e0367

    .line 898
    .restart local v0       #msgId:I
    goto :goto_0

    .line 900
    .end local v0           #msgId:I
    :pswitch_1
    const v0, 0x7f0e0365

    .line 901
    .restart local v0       #msgId:I
    goto :goto_0

    .line 903
    .end local v0           #msgId:I
    :pswitch_2
    const v0, 0x7f0e049d

    .line 904
    .restart local v0       #msgId:I
    goto :goto_0

    .line 918
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mButtonPasswd:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1, v0}, Landroid/preference/DialogPreference;->setDialogMessage(I)V

    goto :goto_1

    .line 895
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private final getCallBarringPasswd()Ljava/lang/String;
    .locals 3

    .prologue
    .line 949
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 950
    .local v0, callBarringPreferences:Landroid/content/SharedPreferences;
    const-string v1, "cb_passwd_key"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private initCallBarringPassword(Z)V
    .locals 4
    .parameter "shouldDisplay"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 849
    iget v0, p0, Lcom/android/phone/CdmaCallBarring;->mSetState:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/android/phone/CdmaCallBarring;->mSetState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 850
    iput v2, p0, Lcom/android/phone/CdmaCallBarring;->mSetState:I

    .line 851
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CdmaCallBarring;->mPassWD:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 852
    iget-object v0, p0, Lcom/android/phone/CdmaCallBarring;->temp_NewPassWD:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 853
    iput v3, p0, Lcom/android/phone/CdmaCallBarring;->mPwState:I

    .line 861
    :cond_1
    :goto_0
    invoke-direct {p0, v2, p1}, Lcom/android/phone/CdmaCallBarring;->displayPasswdDialog(IZ)V

    .line 862
    return-void

    .line 855
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CdmaCallBarring;->temp_NewPassWD:Ljava/lang/String;

    goto :goto_0

    .line 858
    :cond_3
    iget v0, p0, Lcom/android/phone/CdmaCallBarring;->mPwState:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/phone/CdmaCallBarring;->mSetState:I

    if-nez v0, :cond_1

    .line 859
    iput v2, p0, Lcom/android/phone/CdmaCallBarring;->mPwState:I

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 718
    const-string v0, "call features settings"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    return-void
.end method

.method private final saveCallBarringIncoming(I)V
    .locals 3
    .parameter "nIncoming"

    .prologue
    .line 941
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 942
    .local v0, callBarringPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 943
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "cb_incoming_key"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 944
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 945
    return-void
.end method

.method private final saveCallBarringOutgoing(I)V
    .locals 3
    .parameter "nOutgoing"

    .prologue
    .line 934
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 935
    .local v0, callBarringPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 936
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "cb_outgoing_key"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 937
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 938
    return-void
.end method

.method private final saveCallBarringPasswd(Ljava/lang/String;)V
    .locals 3
    .parameter "sPasswd"

    .prologue
    .line 927
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 928
    .local v0, callBarringPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 929
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "cb_passwd_key"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 930
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 931
    return-void
.end method

.method private setAppState(Lcom/android/phone/CdmaCallBarring$AppState;)V
    .locals 2
    .parameter "requestedState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 471
    sget-boolean v0, Lcom/android/phone/CdmaCallBarring;->DBG:Z

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

    invoke-static {v0}, Lcom/android/phone/CdmaCallBarring;->log(Ljava/lang/String;)V

    .line 472
    :cond_0
    sget-object v0, Lcom/android/phone/CdmaCallBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/CdmaCallBarring$AppState;

    if-ne p1, v0, :cond_2

    .line 473
    sget-boolean v0, Lcom/android/phone/CdmaCallBarring;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "setAppState: illegal error state without reason."

    invoke-static {v0}, Lcom/android/phone/CdmaCallBarring;->log(Ljava/lang/String;)V

    .line 474
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal error state without reason."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 476
    :cond_2
    const/16 v0, 0x64

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CdmaCallBarring;->setAppState(Lcom/android/phone/CdmaCallBarring$AppState;I)V

    .line 477
    return-void
.end method

.method private setAppState(Lcom/android/phone/CdmaCallBarring$AppState;I)V
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

    .line 482
    sget-boolean v0, Lcom/android/phone/CdmaCallBarring;->DBG:Z

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

    invoke-static {v0}, Lcom/android/phone/CdmaCallBarring;->log(Ljava/lang/String;)V

    .line 484
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CdmaCallBarring;->mAppState:Lcom/android/phone/CdmaCallBarring$AppState;

    if-ne p1, v0, :cond_2

    .line 485
    sget-boolean v0, Lcom/android/phone/CdmaCallBarring;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "setAppState: requestedState same as current state. ignoring."

    invoke-static {v0}, Lcom/android/phone/CdmaCallBarring;->log(Ljava/lang/String;)V

    .line 588
    :cond_1
    :goto_0
    return-void

    .line 491
    :cond_2
    sget-object v0, Lcom/android/phone/CdmaCallBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/CdmaCallBarring$AppState;

    if-ne p1, v0, :cond_6

    .line 492
    sget-boolean v0, Lcom/android/phone/CdmaCallBarring;->DBG:Z

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

    invoke-static {v0}, Lcom/android/phone/CdmaCallBarring;->log(Ljava/lang/String;)V

    .line 493
    :cond_3
    sparse-switch p2, :sswitch_data_0

    .line 520
    :goto_1
    iput-object p1, p0, Lcom/android/phone/CdmaCallBarring;->mAppState:Lcom/android/phone/CdmaCallBarring$AppState;

    goto :goto_0

    .line 495
    :sswitch_0
    iget-object v0, p0, Lcom/android/phone/CdmaCallBarring;->mAppState:Lcom/android/phone/CdmaCallBarring$AppState;

    sget-object v1, Lcom/android/phone/CdmaCallBarring$AppState;->INITIAL_QUERY:Lcom/android/phone/CdmaCallBarring$AppState;

    if-ne v0, v1, :cond_4

    .line 496
    invoke-virtual {p0, v2}, Landroid/app/Activity;->dismissDialog(I)V

    .line 500
    :goto_2
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_1

    .line 498
    :cond_4
    invoke-direct {p0}, Lcom/android/phone/CdmaCallBarring;->dismissBusyDialog()V

    goto :goto_2

    .line 504
    :sswitch_1
    const/16 v0, 0x320

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_1

    .line 508
    :sswitch_2
    iget-object v0, p0, Lcom/android/phone/CdmaCallBarring;->mAppState:Lcom/android/phone/CdmaCallBarring$AppState;

    sget-object v1, Lcom/android/phone/CdmaCallBarring$AppState;->INITIAL_QUERY:Lcom/android/phone/CdmaCallBarring$AppState;

    if-ne v0, v1, :cond_5

    .line 509
    invoke-virtual {p0, v2}, Landroid/app/Activity;->dismissDialog(I)V

    .line 513
    :goto_3
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_1

    .line 511
    :cond_5
    invoke-direct {p0}, Lcom/android/phone/CdmaCallBarring;->dismissBusyDialog()V

    goto :goto_3

    .line 524
    :cond_6
    sget-object v0, Lcom/android/phone/CdmaCallBarring$2;->$SwitchMap$com$android$phone$CdmaCallBarring$AppState:[I

    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mAppState:Lcom/android/phone/CdmaCallBarring$AppState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 587
    :cond_7
    :goto_4
    iput-object p1, p0, Lcom/android/phone/CdmaCallBarring;->mAppState:Lcom/android/phone/CdmaCallBarring$AppState;

    goto :goto_0

    .line 528
    :pswitch_0
    sget-object v0, Lcom/android/phone/CdmaCallBarring$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallBarring$AppState;

    if-eq p1, v0, :cond_7

    .line 529
    sget-boolean v0, Lcom/android/phone/CdmaCallBarring;->DBG:Z

    if-eqz v0, :cond_8

    const-string v0, "setAppState: illegal transition from NETWORK_ERROR"

    invoke-static {v0}, Lcom/android/phone/CdmaCallBarring;->log(Ljava/lang/String;)V

    .line 530
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from NETWORK_ERROR"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 536
    :pswitch_1
    sget-boolean v0, Lcom/android/phone/CdmaCallBarring;->DBG:Z

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

    invoke-static {v0}, Lcom/android/phone/CdmaCallBarring;->log(Ljava/lang/String;)V

    .line 537
    :cond_9
    sget-object v0, Lcom/android/phone/CdmaCallBarring$AppState;->INITIAL_QUERY:Lcom/android/phone/CdmaCallBarring$AppState;

    if-ne p1, v0, :cond_a

    .line 538
    invoke-virtual {p0, v2}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_4

    .line 539
    :cond_a
    sget-object v0, Lcom/android/phone/CdmaCallBarring$AppState;->BUSY_NETWORK_CONNECT:Lcom/android/phone/CdmaCallBarring$AppState;

    if-ne p1, v0, :cond_b

    .line 540
    invoke-virtual {p0, v3}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_4

    .line 541
    :cond_b
    sget-object v0, Lcom/android/phone/CdmaCallBarring$AppState;->WAITING_NUMBER_SELECT:Lcom/android/phone/CdmaCallBarring$AppState;

    if-ne p1, v0, :cond_7

    .line 542
    sget-boolean v0, Lcom/android/phone/CdmaCallBarring;->DBG:Z

    if-eqz v0, :cond_c

    const-string v0, "setAppState: illegal transition from INPUT_READY"

    invoke-static {v0}, Lcom/android/phone/CdmaCallBarring;->log(Ljava/lang/String;)V

    .line 543
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from INPUT_READY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 549
    :pswitch_2
    sget-boolean v0, Lcom/android/phone/CdmaCallBarring;->DBG:Z

    if-eqz v0, :cond_d

    const-string v0, "setAppState: DIALOG_OPEN"

    invoke-static {v0}, Lcom/android/phone/CdmaCallBarring;->log(Ljava/lang/String;)V

    .line 550
    :cond_d
    sget-object v0, Lcom/android/phone/CdmaCallBarring$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallBarring$AppState;

    if-eq p1, v0, :cond_7

    .line 552
    sget-boolean v0, Lcom/android/phone/CdmaCallBarring;->DBG:Z

    if-eqz v0, :cond_e

    const-string v0, "setAppState: DIALOG_OPEN => BUSY_DIALOG"

    invoke-static {v0}, Lcom/android/phone/CdmaCallBarring;->log(Ljava/lang/String;)V

    .line 553
    :cond_e
    invoke-virtual {p0, v3}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_4

    .line 559
    :pswitch_3
    sget-object v0, Lcom/android/phone/CdmaCallBarring$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallBarring$AppState;

    if-eq p1, v0, :cond_10

    .line 560
    sget-boolean v0, Lcom/android/phone/CdmaCallBarring;->DBG:Z

    if-eqz v0, :cond_f

    const-string v0, "setAppState: illegal transition from INITIAL_QUERY"

    invoke-static {v0}, Lcom/android/phone/CdmaCallBarring;->log(Ljava/lang/String;)V

    .line 561
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from INITIAL_QUERY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 564
    :cond_10
    sget-boolean v0, Lcom/android/phone/CdmaCallBarring;->DBG:Z

    if-eqz v0, :cond_11

    const-string v0, "setAppState: INITIAL_QUERY => INITIAL_BUSY_DIALOG"

    invoke-static {v0}, Lcom/android/phone/CdmaCallBarring;->log(Ljava/lang/String;)V

    .line 565
    :cond_11
    invoke-virtual {p0, v2}, Landroid/app/Activity;->dismissDialog(I)V

    goto/16 :goto_4

    .line 569
    :pswitch_4
    sget-object v0, Lcom/android/phone/CdmaCallBarring$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallBarring$AppState;

    if-eq p1, v0, :cond_13

    .line 570
    sget-boolean v0, Lcom/android/phone/CdmaCallBarring;->DBG:Z

    if-eqz v0, :cond_12

    const-string v0, "setAppState: illegal transition from BUSY_NETWORK_CONNECT"

    invoke-static {v0}, Lcom/android/phone/CdmaCallBarring;->log(Ljava/lang/String;)V

    .line 571
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from BUSY_NETWORK_CONNECT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 574
    :cond_13
    sget-boolean v0, Lcom/android/phone/CdmaCallBarring;->DBG:Z

    if-eqz v0, :cond_14

    const-string v0, "setAppState: BUSY_NETWORK_CONNECT =>dismissBusyDialog"

    invoke-static {v0}, Lcom/android/phone/CdmaCallBarring;->log(Ljava/lang/String;)V

    .line 575
    :cond_14
    invoke-direct {p0}, Lcom/android/phone/CdmaCallBarring;->dismissBusyDialog()V

    goto/16 :goto_4

    .line 578
    :pswitch_5
    sget-object v0, Lcom/android/phone/CdmaCallBarring$AppState;->DIALOG_OPEN:Lcom/android/phone/CdmaCallBarring$AppState;

    if-eq p1, v0, :cond_16

    .line 579
    sget-boolean v0, Lcom/android/phone/CdmaCallBarring;->DBG:Z

    if-eqz v0, :cond_15

    const-string v0, "setAppState: illegal transition from WAITING_NUMBER_SELECT"

    invoke-static {v0}, Lcom/android/phone/CdmaCallBarring;->log(Ljava/lang/String;)V

    .line 580
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from WAITING_NUMBER_SELECT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 583
    :cond_16
    sget-boolean v0, Lcom/android/phone/CdmaCallBarring;->DBG:Z

    if-eqz v0, :cond_17

    const-string v0, "setAppState: WAITING_NUMBER_SELECT =>dismissBusyDialog"

    invoke-static {v0}, Lcom/android/phone/CdmaCallBarring;->log(Ljava/lang/String;)V

    .line 584
    :cond_17
    invoke-direct {p0}, Lcom/android/phone/CdmaCallBarring;->dismissBusyDialog()V

    goto/16 :goto_4

    .line 493
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x12c -> :sswitch_2
        0x320 -> :sswitch_1
    .end sparse-switch

    .line 524
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

.method private updateCBIncomingSummary(I)V
    .locals 2
    .parameter "Value"

    .prologue
    const v1, 0x7f0e04a7

    .line 878
    packed-switch p1, :pswitch_data_0

    .line 889
    iget-object v0, p0, Lcom/android/phone/CdmaCallBarring;->mButtonIncoming:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 891
    :goto_0
    return-void

    .line 880
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/CdmaCallBarring;->mButtonIncoming:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 883
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/CdmaCallBarring;->mButtonIncoming:Landroid/preference/ListPreference;

    const v1, 0x7f0e04a8

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 886
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/CdmaCallBarring;->mButtonIncoming:Landroid/preference/ListPreference;

    const v1, 0x7f0e04a9

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 878
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateCBOutgoingSummary(I)V
    .locals 2
    .parameter "Value"

    .prologue
    const v1, 0x7f0e04a3

    .line 865
    packed-switch p1, :pswitch_data_0

    .line 873
    iget-object v0, p0, Lcom/android/phone/CdmaCallBarring;->mButtonOutgoing:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 875
    :goto_0
    return-void

    .line 867
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/CdmaCallBarring;->mButtonOutgoing:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 870
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/CdmaCallBarring;->mButtonOutgoing:Landroid/preference/ListPreference;

    const v1, 0x7f0e04a4

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 865
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 316
    sget-boolean v0, Lcom/android/phone/CdmaCallBarring;->DBG:Z

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

    invoke-static {v0}, Lcom/android/phone/CdmaCallBarring;->log(Ljava/lang/String;)V

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CdmaCallBarring;->mAppState:Lcom/android/phone/CdmaCallBarring$AppState;

    sget-object v1, Lcom/android/phone/CdmaCallBarring$AppState;->WAITING_NUMBER_SELECT:Lcom/android/phone/CdmaCallBarring$AppState;

    if-eq v0, v1, :cond_2

    .line 319
    sget-boolean v0, Lcom/android/phone/CdmaCallBarring;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "onActivityResult: wrong state, ignoring message from contact picker."

    invoke-static {v0}, Lcom/android/phone/CdmaCallBarring;->log(Ljava/lang/String;)V

    .line 330
    :cond_1
    :goto_0
    return-void

    .line 322
    :cond_2
    sget-object v0, Lcom/android/phone/CdmaCallBarring$AppState;->DIALOG_OPEN:Lcom/android/phone/CdmaCallBarring$AppState;

    invoke-direct {p0, v0}, Lcom/android/phone/CdmaCallBarring;->setAppState(Lcom/android/phone/CdmaCallBarring$AppState;)V

    .line 325
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 326
    sget-boolean v0, Lcom/android/phone/CdmaCallBarring;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "onActivityResult: contact picker result not OK."

    invoke-static {v0}, Lcom/android/phone/CdmaCallBarring;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 430
    sget-boolean v0, Lcom/android/phone/CdmaCallBarring;->DBG:Z

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

    invoke-static {v0}, Lcom/android/phone/CdmaCallBarring;->log(Ljava/lang/String;)V

    .line 432
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 433
    packed-switch p2, :pswitch_data_0

    .line 445
    :pswitch_0
    sget-object v0, Lcom/android/phone/CdmaCallBarring$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallBarring$AppState;

    invoke-direct {p0, v0}, Lcom/android/phone/CdmaCallBarring;->setAppState(Lcom/android/phone/CdmaCallBarring$AppState;)V

    .line 448
    :goto_0
    return-void

    .line 436
    :pswitch_1
    invoke-direct {p0}, Lcom/android/phone/CdmaCallBarring;->dismissExpandedDialog()V

    goto :goto_0

    .line 440
    :pswitch_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 433
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 629
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 631
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mTelMan:Landroid/telephony/TelephonyManager;

    .line 634
    const v1, 0x7f060015

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 635
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 636
    .local v0, prefSet:Landroid/preference/PreferenceScreen;
    sget-object v1, Lcom/android/phone/CdmaCallBarring$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallBarring$AppState;

    iput-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mAppState:Lcom/android/phone/CdmaCallBarring$AppState;

    .line 637
    sget-boolean v1, Lcom/android/phone/CdmaCallBarring;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate icicle => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CdmaCallBarring;->log(Ljava/lang/String;)V

    .line 638
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 640
    if-eqz p1, :cond_9

    .line 642
    const-string v1, "app_state_key"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/android/phone/CdmaCallBarring$AppState;

    iput-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mAppState:Lcom/android/phone/CdmaCallBarring$AppState;

    .line 643
    const-string v1, "display_mode_key"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/phone/CdmaCallBarring;->mDisplayMode:I

    .line 644
    const-string v1, "MPASSWORD_STATE_KEY"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/phone/CdmaCallBarring;->mPwState:I

    .line 645
    const-string v1, "MSET_STATE_KEY"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/phone/CdmaCallBarring;->mSetState:I

    .line 646
    const-string v1, "MSET_STATE_CHECK_KEY"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/CdmaCallBarring;->mSetState_check:Z

    .line 647
    const-string v1, "MOUTGOING_VALUE_KEY"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mNewOutgoing:Ljava/lang/String;

    .line 648
    const-string v1, "MINCOMING_VALUE_KEY"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mNewIncoming:Ljava/lang/String;

    .line 649
    const-string v1, "MNEWPASSWD_VALUE_KEY"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mNewPassWD:Ljava/lang/String;

    .line 650
    const-string v1, "MTEMP_NEWPASSWD_VALUE_KEY"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CdmaCallBarring;->temp_NewPassWD:Ljava/lang/String;

    .line 658
    :goto_0
    const-string v1, "button_outgoing_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mButtonOutgoing:Landroid/preference/ListPreference;

    .line 660
    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mButtonOutgoing:Landroid/preference/ListPreference;

    if-eqz v1, :cond_1

    .line 661
    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mButtonOutgoing:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 662
    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mButtonOutgoing:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mOldOutgoing:Ljava/lang/String;

    .line 663
    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mOldOutgoing:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/phone/CdmaCallBarring;->updateCBOutgoingSummary(I)V

    .line 665
    :cond_1
    const-string v1, "button_incoming_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mButtonIncoming:Landroid/preference/ListPreference;

    .line 667
    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mButtonIncoming:Landroid/preference/ListPreference;

    if-eqz v1, :cond_2

    .line 668
    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mButtonIncoming:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 669
    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mButtonIncoming:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mOldIncoming:Ljava/lang/String;

    .line 670
    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mOldIncoming:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/phone/CdmaCallBarring;->updateCBIncomingSummary(I)V

    .line 673
    :cond_2
    const-string v1, "button_cbpasswd_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/EditPinPreference;

    iput-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mButtonPasswd:Lcom/android/phone/EditPinPreference;

    .line 674
    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mButtonPasswd:Lcom/android/phone/EditPinPreference;

    if-eqz v1, :cond_3

    .line 675
    invoke-direct {p0}, Lcom/android/phone/CdmaCallBarring;->getCallBarringPasswd()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mPassWD:Ljava/lang/String;

    .line 676
    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mButtonPasswd:Lcom/android/phone/EditPinPreference;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 677
    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mButtonPasswd:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1, p0}, Lcom/android/phone/EditPinPreference;->setOnPinEnteredListener(Lcom/android/phone/EditPinPreference$OnPinEnteredListener;)V

    .line 680
    :cond_3
    invoke-direct {p0, v3}, Lcom/android/phone/CdmaCallBarring;->initCallBarringPassword(Z)V

    .line 681
    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    if-ne v1, v4, :cond_8

    .line 689
    :cond_4
    const/16 v1, 0xc8

    invoke-virtual {p0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 690
    sget-boolean v1, Lcom/android/phone/CdmaCallBarring;->DBG:Z

    if-eqz v1, :cond_5

    const-string v1, "skip set or get CallForwarding"

    invoke-static {v1}, Lcom/android/phone/CdmaCallBarring;->log(Ljava/lang/String;)V

    .line 691
    :cond_5
    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mButtonOutgoing:Landroid/preference/ListPreference;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mButtonOutgoing:Landroid/preference/ListPreference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 692
    :cond_6
    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mButtonIncoming:Landroid/preference/ListPreference;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mButtonIncoming:Landroid/preference/ListPreference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 693
    :cond_7
    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mButtonPasswd:Lcom/android/phone/EditPinPreference;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mButtonPasswd:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 696
    :cond_8
    return-void

    .line 654
    :cond_9
    iput-boolean v4, p0, Lcom/android/phone/CdmaCallBarring;->mMoreDataStale:Z

    .line 655
    iput-boolean v3, p0, Lcom/android/phone/CdmaCallBarring;->mSetState_check:Z

    .line 656
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/CdmaCallBarring;->temp_NewPassWD:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 9
    .parameter "id"

    .prologue
    const/4 v8, 0x0

    const v7, 0x7f0e0087

    const/4 v6, 0x1

    .line 358
    sget-boolean v4, Lcom/android/phone/CdmaCallBarring;->DBG:Z

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

    invoke-static {v4}, Lcom/android/phone/CdmaCallBarring;->log(Ljava/lang/String;)V

    .line 360
    :cond_0
    const/16 v4, 0x64

    if-eq p1, v4, :cond_1

    const/16 v4, 0x384

    if-ne p1, v4, :cond_2

    .line 361
    :cond_1
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 362
    .local v1, dialog:Landroid/app/ProgressDialog;
    const v4, 0x7f0e007e

    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 363
    invoke-virtual {v1, v6}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 365
    sparse-switch p1, :sswitch_data_0

    .line 380
    :goto_0
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 422
    .end local v1           #dialog:Landroid/app/ProgressDialog;
    :goto_1
    return-object v1

    .line 367
    .restart local v1       #dialog:Landroid/app/ProgressDialog;
    :sswitch_0
    iput-boolean v6, p0, Lcom/android/phone/CdmaCallBarring;->mIsBusyDialogAvailable:Z

    .line 368
    invoke-virtual {v1, v8}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 369
    const v4, 0x7f0e0081

    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 373
    :sswitch_1
    invoke-virtual {v1, v6}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 374
    iget-object v4, p0, Lcom/android/phone/CdmaCallBarring;->mNetworkServiceHandler:Landroid/os/Handler;

    const/16 v5, 0x258

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setCancelMessage(Landroid/os/Message;)V

    .line 376
    const v4, 0x7f0e0080

    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 385
    .end local v1           #dialog:Landroid/app/ProgressDialog;
    :cond_2
    const/16 v4, 0x12c

    if-eq p1, v4, :cond_3

    const/16 v4, 0xc8

    if-eq p1, v4, :cond_3

    const/16 v4, 0x320

    if-ne p1, v4, :cond_4

    .line 387
    :cond_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 390
    .local v0, b:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0e007f

    .line 391
    .local v3, titleId:I
    sparse-switch p1, :sswitch_data_1

    .line 407
    const v2, 0x7f0e0084

    .line 410
    .local v2, msgId:I
    invoke-virtual {v0, v7, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 414
    :goto_2
    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 415
    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 416
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 417
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 418
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1, v6}, Landroid/app/Dialog;->setCancelable(Z)V

    goto :goto_1

    .line 393
    .end local v1           #dialog:Landroid/app/AlertDialog;
    .end local v2           #msgId:I
    :sswitch_2
    const v2, 0x7f0e0083

    .line 396
    .restart local v2       #msgId:I
    invoke-virtual {v0, v7, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    .line 400
    .end local v2           #msgId:I
    :sswitch_3
    const v2, 0x7f0e0086

    .line 402
    .restart local v2       #msgId:I
    invoke-virtual {v0, v7, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    .line 422
    .end local v0           #b:Landroid/app/AlertDialog$Builder;
    .end local v2           #msgId:I
    .end local v3           #titleId:I
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 365
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x384 -> :sswitch_1
    .end sparse-switch

    .line 391
    :sswitch_data_1
    .sparse-switch
        0x12c -> :sswitch_2
        0x320 -> :sswitch_3
    .end sparse-switch
.end method

.method public onPinEntered(Lcom/android/phone/EditPinPreference;Z)V
    .locals 6
    .parameter "preference"
    .parameter "positiveResult"

    .prologue
    const/4 v5, 0x0

    const v2, 0x7f0e049e

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 721
    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mButtonPasswd:Lcom/android/phone/EditPinPreference;

    if-ne p1, v1, :cond_0

    .line 722
    if-nez p2, :cond_4

    .line 723
    iget-boolean v1, p0, Lcom/android/phone/CdmaCallBarring;->mSetState_check:Z

    if-nez v1, :cond_2

    .line 724
    iput-object v5, p0, Lcom/android/phone/CdmaCallBarring;->mNewOutgoing:Ljava/lang/String;

    .line 725
    iput-object v5, p0, Lcom/android/phone/CdmaCallBarring;->mNewIncoming:Ljava/lang/String;

    .line 726
    iput-object v5, p0, Lcom/android/phone/CdmaCallBarring;->mNewPassWD:Ljava/lang/String;

    .line 727
    iput v3, p0, Lcom/android/phone/CdmaCallBarring;->mSetState:I

    .line 729
    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mPassWD:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 730
    iput v4, p0, Lcom/android/phone/CdmaCallBarring;->mPwState:I

    .line 743
    :goto_0
    invoke-direct {p0, v3}, Lcom/android/phone/CdmaCallBarring;->initCallBarringPassword(Z)V

    .line 801
    :cond_0
    :goto_1
    return-void

    .line 732
    :cond_1
    iput v3, p0, Lcom/android/phone/CdmaCallBarring;->mPwState:I

    goto :goto_0

    .line 735
    :cond_2
    iput-boolean v3, p0, Lcom/android/phone/CdmaCallBarring;->mSetState_check:Z

    .line 736
    iput v3, p0, Lcom/android/phone/CdmaCallBarring;->mSetState:I

    .line 737
    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mPassWD:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 738
    iput v4, p0, Lcom/android/phone/CdmaCallBarring;->mPwState:I

    goto :goto_0

    .line 740
    :cond_3
    iput v3, p0, Lcom/android/phone/CdmaCallBarring;->mPwState:I

    goto :goto_0

    .line 747
    :cond_4
    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mButtonPasswd:Lcom/android/phone/EditPinPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    .line 749
    .local v0, password:Ljava/lang/String;
    iget v1, p0, Lcom/android/phone/CdmaCallBarring;->mPwState:I

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 751
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mPassWD:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 752
    iput v4, p0, Lcom/android/phone/CdmaCallBarring;->mPwState:I

    .line 753
    invoke-direct {p0, v3, v4}, Lcom/android/phone/CdmaCallBarring;->displayPasswdDialog(IZ)V

    goto :goto_1

    .line 756
    :cond_5
    invoke-direct {p0, v2, v4}, Lcom/android/phone/CdmaCallBarring;->displayPasswdDialog(IZ)V

    goto :goto_1

    .line 760
    :pswitch_1
    iput-object v0, p0, Lcom/android/phone/CdmaCallBarring;->mNewPassWD:Ljava/lang/String;

    .line 762
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-le v1, v2, :cond_7

    .line 763
    :cond_6
    const-string v1, ""

    iput-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mNewPassWD:Ljava/lang/String;

    .line 764
    iput v4, p0, Lcom/android/phone/CdmaCallBarring;->mPwState:I

    .line 765
    const v1, 0x7f0e049f

    invoke-direct {p0, v1, v4}, Lcom/android/phone/CdmaCallBarring;->displayPasswdDialog(IZ)V

    goto :goto_1

    .line 767
    :cond_7
    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mNewPassWD:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/CdmaCallBarring;->temp_NewPassWD:Ljava/lang/String;

    .line 768
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/phone/CdmaCallBarring;->mPwState:I

    .line 769
    invoke-direct {p0, v3, v4}, Lcom/android/phone/CdmaCallBarring;->displayPasswdDialog(IZ)V

    goto :goto_1

    .line 773
    :pswitch_2
    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mNewPassWD:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 774
    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mNewPassWD:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mPassWD:Ljava/lang/String;

    .line 775
    const-string v1, ""

    iput-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mNewPassWD:Ljava/lang/String;

    .line 776
    iput v3, p0, Lcom/android/phone/CdmaCallBarring;->mPwState:I

    .line 777
    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mPassWD:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/phone/CdmaCallBarring;->saveCallBarringPasswd(Ljava/lang/String;)V

    .line 778
    invoke-direct {p0}, Lcom/android/phone/CdmaCallBarring;->changeCallBarringValue()V

    .line 779
    invoke-direct {p0, v3, v3}, Lcom/android/phone/CdmaCallBarring;->displayPasswdDialog(IZ)V

    goto :goto_1

    .line 782
    :cond_8
    const-string v1, ""

    iput-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mNewPassWD:Ljava/lang/String;

    .line 783
    iput v4, p0, Lcom/android/phone/CdmaCallBarring;->mPwState:I

    .line 784
    invoke-direct {p0, v2, v4}, Lcom/android/phone/CdmaCallBarring;->displayPasswdDialog(IZ)V

    goto/16 :goto_1

    .line 788
    :pswitch_3
    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mPassWD:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 789
    invoke-direct {p0}, Lcom/android/phone/CdmaCallBarring;->changeCallBarringValue()V

    .line 790
    invoke-direct {p0, v3}, Lcom/android/phone/CdmaCallBarring;->initCallBarringPassword(Z)V

    goto/16 :goto_1

    .line 793
    :cond_9
    invoke-direct {p0, v2, v4}, Lcom/android/phone/CdmaCallBarring;->displayPasswdDialog(IZ)V

    goto/16 :goto_1

    .line 749
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 195
    sget-boolean v2, Lcom/android/phone/CdmaCallBarring;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "onPreferenceChange "

    invoke-static {v2}, Lcom/android/phone/CdmaCallBarring;->log(Ljava/lang/String;)V

    .line 197
    :cond_0
    iget-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mButtonOutgoing:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_3

    .line 198
    check-cast p2, Ljava/lang/String;

    .end local p2
    iput-object p2, p0, Lcom/android/phone/CdmaCallBarring;->mNewOutgoing:Ljava/lang/String;

    .line 199
    iget-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mOldOutgoing:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/CdmaCallBarring;->mNewOutgoing:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 213
    :cond_1
    :goto_0
    return v0

    .line 201
    :cond_2
    iput v1, p0, Lcom/android/phone/CdmaCallBarring;->mSetState:I

    .line 202
    invoke-direct {p0, v1}, Lcom/android/phone/CdmaCallBarring;->checkCallBarringPassword(Z)V

    goto :goto_0

    .line 205
    .restart local p2
    :cond_3
    iget-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mButtonIncoming:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_4

    .line 206
    check-cast p2, Ljava/lang/String;

    .end local p2
    iput-object p2, p0, Lcom/android/phone/CdmaCallBarring;->mNewIncoming:Ljava/lang/String;

    .line 207
    iget-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mOldIncoming:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/CdmaCallBarring;->mNewIncoming:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 209
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/phone/CdmaCallBarring;->mSetState:I

    .line 210
    invoke-direct {p0, v1}, Lcom/android/phone/CdmaCallBarring;->checkCallBarringPassword(Z)V

    goto :goto_0

    .restart local p2
    :cond_4
    move v0, v1

    .line 213
    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v1, 0x0

    .line 166
    iget-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mAppState:Lcom/android/phone/CdmaCallBarring$AppState;

    sget-object v3, Lcom/android/phone/CdmaCallBarring$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallBarring$AppState;

    if-eq v2, v3, :cond_1

    .line 167
    sget-boolean v2, Lcom/android/phone/CdmaCallBarring;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "onPreferencesHierarchyClick: preference request denied, currently busy."

    invoke-static {v2}, Lcom/android/phone/CdmaCallBarring;->log(Ljava/lang/String;)V

    .line 183
    :cond_0
    :goto_0
    return v1

    .line 171
    :cond_1
    sget-boolean v2, Lcom/android/phone/CdmaCallBarring;->DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "onPreferencesHierarchyClick: request preference click."

    invoke-static {v2}, Lcom/android/phone/CdmaCallBarring;->log(Ljava/lang/String;)V

    .line 172
    :cond_2
    sget-object v0, Lcom/android/phone/CdmaCallBarring$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallBarring$AppState;

    .line 173
    .local v0, nextState:Lcom/android/phone/CdmaCallBarring$AppState;
    iget-object v2, p0, Lcom/android/phone/CdmaCallBarring;->mButtonDS:Landroid/preference/ListPreference;

    if-eq p2, v2, :cond_0

    .line 177
    sget-object v2, Lcom/android/phone/CdmaCallBarring$AppState;->INPUT_READY:Lcom/android/phone/CdmaCallBarring$AppState;

    if-eq v0, v2, :cond_0

    .line 178
    sget-boolean v1, Lcom/android/phone/CdmaCallBarring;->DBG:Z

    if-eqz v1, :cond_3

    const-string v1, "onPreferenceTreeClick => != AppState.INPUT_READY"

    invoke-static {v1}, Lcom/android/phone/CdmaCallBarring;->log(Ljava/lang/String;)V

    .line 179
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/phone/CdmaCallBarring;->setAppState(Lcom/android/phone/CdmaCallBarring$AppState;)V

    .line 180
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 606
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 607
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CdmaCallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 610
    iget-object v0, p0, Lcom/android/phone/CdmaCallBarring;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CdmaCallBarring;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 612
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 619
    :cond_0
    sget-boolean v0, Lcom/android/phone/CdmaCallBarring;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "onResume Start"

    invoke-static {v0}, Lcom/android/phone/CdmaCallBarring;->log(Ljava/lang/String;)V

    .line 621
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 700
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 702
    sget-boolean v0, Lcom/android/phone/CdmaCallBarring;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "onSaveInstanceState: saving relevant UI state."

    invoke-static {v0}, Lcom/android/phone/CdmaCallBarring;->log(Ljava/lang/String;)V

    .line 704
    :cond_0
    const-string v0, "app_state_key"

    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mAppState:Lcom/android/phone/CdmaCallBarring$AppState;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 705
    const-string v0, "display_mode_key"

    iget v1, p0, Lcom/android/phone/CdmaCallBarring;->mDisplayMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 706
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CdmaCallBarring;->mSetState_check:Z

    .line 707
    const-string v0, "MPASSWORD_STATE_KEY"

    iget v1, p0, Lcom/android/phone/CdmaCallBarring;->mPwState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 708
    const-string v0, "MSET_STATE_KEY"

    iget v1, p0, Lcom/android/phone/CdmaCallBarring;->mSetState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 709
    const-string v0, "MSET_STATE_CHECK_KEY"

    iget-boolean v1, p0, Lcom/android/phone/CdmaCallBarring;->mSetState_check:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 710
    const-string v0, "MOUTGOING_VALUE_KEY"

    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mNewOutgoing:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    const-string v0, "MINCOMING_VALUE_KEY"

    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mNewIncoming:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    const-string v0, "MNEWPASSWD_VALUE_KEY"

    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->mNewPassWD:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    const-string v0, "MTEMP_NEWPASSWD_VALUE_KEY"

    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring;->temp_NewPassWD:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 2
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 295
    sget-boolean v0, Lcom/android/phone/CdmaCallBarring;->DBG:Z

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

    invoke-static {v0}, Lcom/android/phone/CdmaCallBarring;->log(Ljava/lang/String;)V

    .line 297
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 298
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 308
    :cond_1
    :goto_0
    return-void

    .line 302
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CdmaCallBarring;->mAppState:Lcom/android/phone/CdmaCallBarring$AppState;

    sget-object v1, Lcom/android/phone/CdmaCallBarring$AppState;->DIALOG_OPEN:Lcom/android/phone/CdmaCallBarring$AppState;

    if-eq v0, v1, :cond_3

    .line 303
    sget-boolean v0, Lcom/android/phone/CdmaCallBarring;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "startSubActivity: dialog start activity request denied, currently busy."

    invoke-static {v0}, Lcom/android/phone/CdmaCallBarring;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 306
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 307
    sget-object v0, Lcom/android/phone/CdmaCallBarring$AppState;->WAITING_NUMBER_SELECT:Lcom/android/phone/CdmaCallBarring$AppState;

    invoke-direct {p0, v0}, Lcom/android/phone/CdmaCallBarring;->setAppState(Lcom/android/phone/CdmaCallBarring$AppState;)V

    goto :goto_0
.end method
