.class public Lcom/android/phone/callsettings/VideoCallBarring;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "VideoCallBarring.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/VideoCallBarring$14;,
        Lcom/android/phone/callsettings/VideoCallBarring$AppState;
    }
.end annotation


# static fields
.field private static final DBG:Z


# instance fields
.field private callbarring_password:Ljava/lang/String;

.field doActivate:Ljava/lang/Runnable;

.field doCheckStatus:Ljava/lang/Runnable;

.field doConfirm:Ljava/lang/Runnable;

.field doDeactivate:Ljava/lang/Runnable;

.field editText:Landroid/widget/EditText;

.field factory:Landroid/view/LayoutInflater;

.field private handler:Landroid/os/Handler;

.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field private mAppState:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

.field private mCallBarringList1Pref:Landroid/preference/CheckBoxPreference;

.field private mCallBarringList2Pref:Landroid/preference/CheckBoxPreference;

.field private mCallBarringList3Pref:Landroid/preference/CheckBoxPreference;

.field private mCallBarringList4Pref:Landroid/preference/CheckBoxPreference;

.field private mCallBarringList5Pref:Landroid/preference/CheckBoxPreference;

.field private mCheckAllCB:Z

.field private mConfirmPassword:Landroid/widget/EditText;

.field private mInputPassword:Landroid/widget/EditText;

.field private mNetworkServiceHandler:Landroid/os/Handler;

.field private mNewPassword:Landroid/widget/EditText;

.field private mOldPassword:Landroid/widget/EditText;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPreference:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/CheckBoxPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mPrevBusyDialog:I

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mPwdChangeSubmit:Z

.field private mSelectedIndex:I

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mSkipCallBarringReq:Z

.field private mTelMan:Landroid/telephony/TelephonyManager;

.field private mVCBVisible:Z

.field private mVCB_Checked:Z

.field responseCBHandler:Landroid/os/Handler;

.field textEntryView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 115
    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/phone/callsettings/VideoCallBarring;->DBG:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPreference:Ljava/util/ArrayList;

    .line 208
    iput v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    .line 210
    iput-boolean v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mVCB_Checked:Z

    .line 229
    iput-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mInputPassword:Landroid/widget/EditText;

    .line 231
    iput-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mOldPassword:Landroid/widget/EditText;

    .line 233
    iput-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mNewPassword:Landroid/widget/EditText;

    .line 235
    iput-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mConfirmPassword:Landroid/widget/EditText;

    .line 237
    iput-boolean v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPwdChangeSubmit:Z

    .line 249
    iput-boolean v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSkipCallBarringReq:Z

    .line 251
    iput-boolean v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mCheckAllCB:Z

    .line 253
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mVCBVisible:Z

    .line 785
    new-instance v0, Lcom/android/phone/callsettings/VideoCallBarring$11;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/VideoCallBarring$11;-><init>(Lcom/android/phone/callsettings/VideoCallBarring;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->responseCBHandler:Landroid/os/Handler;

    .line 1165
    new-instance v0, Lcom/android/phone/callsettings/VideoCallBarring$12;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/VideoCallBarring$12;-><init>(Lcom/android/phone/callsettings/VideoCallBarring;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mNetworkServiceHandler:Landroid/os/Handler;

    .line 1218
    new-instance v0, Lcom/android/phone/callsettings/VideoCallBarring$13;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/VideoCallBarring$13;-><init>(Lcom/android/phone/callsettings/VideoCallBarring;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/callsettings/VideoCallBarring;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->callbarring_password:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/phone/callsettings/VideoCallBarring;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->callbarring_password:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/phone/callsettings/VideoCallBarring;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/VideoCallBarring;->displayToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/callsettings/VideoCallBarring;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/phone/callsettings/VideoCallBarring;->changePasswordCallBarring(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/phone/callsettings/VideoCallBarring;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->imm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/phone/callsettings/VideoCallBarring;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mVCB_Checked:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/phone/callsettings/VideoCallBarring;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/phone/callsettings/VideoCallBarring;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mNetworkServiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/phone/callsettings/VideoCallBarring;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/phone/callsettings/VideoCallBarring;Landroid/os/AsyncResult;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/phone/callsettings/VideoCallBarring;->handleSetCBMessage(Landroid/os/AsyncResult;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/phone/callsettings/VideoCallBarring;Lcom/android/phone/callsettings/VideoCallBarring$AppState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/VideoCallBarring;->setAppState(Lcom/android/phone/callsettings/VideoCallBarring$AppState;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/phone/callsettings/VideoCallBarring;Lcom/android/phone/callsettings/VideoCallBarring$AppState;I)V
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
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/phone/callsettings/VideoCallBarring;->setAppState(Lcom/android/phone/callsettings/VideoCallBarring$AppState;I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/phone/callsettings/VideoCallBarring;Landroid/os/AsyncResult;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/VideoCallBarring;->handleQueryCBMessage(Landroid/os/AsyncResult;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/phone/callsettings/VideoCallBarring;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mCheckAllCB:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/phone/callsettings/VideoCallBarring;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mCheckAllCB:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/phone/callsettings/VideoCallBarring;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSkipCallBarringReq:Z

    return p1
.end method

.method static synthetic access$2100()Z
    .locals 1

    .prologue
    .line 64
    sget-boolean v0, Lcom/android/phone/callsettings/VideoCallBarring;->DBG:Z

    return v0
.end method

.method static synthetic access$2200(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-static {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/phone/callsettings/VideoCallBarring;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/phone/callsettings/VideoCallBarring;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->dismissCallWaiting()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/callsettings/VideoCallBarring;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/phone/callsettings/VideoCallBarring;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput p1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    return p1
.end method

.method static synthetic access$308(Lcom/android/phone/callsettings/VideoCallBarring;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/phone/callsettings/VideoCallBarring;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPreference:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/callsettings/VideoCallBarring;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/VideoCallBarring;->setCallBarring(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/callsettings/VideoCallBarring;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->getCallBarring()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/callsettings/VideoCallBarring;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mOldPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/callsettings/VideoCallBarring;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mNewPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/callsettings/VideoCallBarring;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mConfirmPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method private changePasswordCallBarring(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1239
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-gtz v0, :cond_3

    .line 1245
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mVCBVisible:Z

    .line 1246
    sget-object v0, Lcom/android/phone/callsettings/VideoCallBarring$AppState;->BUSY_NETWORK_CONNECT:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/VideoCallBarring;->setAppState(Lcom/android/phone/callsettings/VideoCallBarring$AppState;)V

    .line 1248
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 1250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##OSK## "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changePasswordCallBarring() radioState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##OSK## "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPhone : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    if-nez v0, :cond_0

    .line 1255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "##OSK## "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "STATE_IN_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/phone/callsettings/VideoCallBarring;->requestCBChangePassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1274
    :goto_0
    return-void

    .line 1258
    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "##OSK## "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "STATE_POWER_OFF"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    sget-boolean v0, Lcom/android/phone/callsettings/VideoCallBarring;->DBG:Z

    if-eqz v0, :cond_1

    .line 1262
    const-string v0, "onCreate: radio not ready, waiting for signal."

    invoke-static {v0}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    .line 1263
    :cond_1
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mNetworkServiceHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0

    .line 1266
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "##OSK## "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MSG_EXCEPTION"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    sget-object v0, Lcom/android/phone/callsettings/VideoCallBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    const/16 v1, 0xc8

    invoke-direct {p0, v0, v1}, Lcom/android/phone/callsettings/VideoCallBarring;->setAppState(Lcom/android/phone/callsettings/VideoCallBarring$AppState;I)V

    goto :goto_0

    .line 1270
    :cond_3
    sget-boolean v0, Lcom/android/phone/callsettings/VideoCallBarring;->DBG:Z

    if-eqz v0, :cond_4

    .line 1271
    const-string v0, "setDisplayMode: radio is off!"

    invoke-static {v0}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    .line 1272
    :cond_4
    sget-object v0, Lcom/android/phone/callsettings/VideoCallBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    const/16 v1, 0x320

    invoke-direct {p0, v0, v1}, Lcom/android/phone/callsettings/VideoCallBarring;->setAppState(Lcom/android/phone/callsettings/VideoCallBarring$AppState;I)V

    goto :goto_0
.end method

.method private checkPassword(Landroid/app/Dialog;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x4

    .line 1285
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mOldPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1286
    iget-object v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mNewPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1287
    iget-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mConfirmPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1289
    sget-boolean v3, Lcom/android/phone/callsettings/VideoCallBarring;->DBG:Z

    if-eqz v3, :cond_0

    .line 1290
    const-class v3, Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[##### View l_oldPasswordStr #####] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    const-class v3, Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[##### View l_newPasswordStr #####] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    const-class v3, Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[##### View l_confirmPasswordStr #####] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    :cond_0
    if-eqz v0, :cond_1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v6, :cond_2

    .line 1303
    :cond_1
    const v0, 0x7f0e035f

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1328
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/phone/callsettings/VideoCallBarring;->showError(Landroid/app/Dialog;Ljava/lang/String;)V

    .line 1329
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 1304
    :cond_2
    if-eqz v1, :cond_3

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v6, :cond_4

    .line 1307
    :cond_3
    const v0, 0x7f0e0360

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1308
    :cond_4
    if-eqz v2, :cond_5

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v6, :cond_6

    .line 1311
    :cond_5
    const v0, 0x7f0e0361

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1313
    :cond_6
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1318
    const v0, 0x7f0e0363

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1321
    :cond_7
    const v0, 0x7f0e02d4

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    .line 1322
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->doConfirm:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1323
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private deleteBusyDialog()V
    .locals 3

    .prologue
    .line 1207
    const-string v0, "CallBarring"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCheckAllCB : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mCheckAllCB:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSelectedIndex : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPrevBusyDialog : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPrevBusyDialog:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    iget-boolean v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mCheckAllCB:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 1216
    :goto_0
    return-void

    .line 1213
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mVCBVisible:Z

    .line 1215
    iget v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPrevBusyDialog:I

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->removeDialog(I)V

    goto :goto_0
.end method

.method private dismissCallWaiting()V
    .locals 1

    .prologue
    .line 1201
    sget-object v0, Lcom/android/phone/callsettings/VideoCallBarring$AppState;->INPUT_READY:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/VideoCallBarring;->setAppState(Lcom/android/phone/callsettings/VideoCallBarring$AppState;)V

    .line 1203
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->finish()V

    .line 1204
    return-void
.end method

.method private displayToast(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1414
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1415
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1416
    return-void
.end method

.method private getCallBarring()V
    .locals 4

    .prologue
    .line 624
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-gtz v0, :cond_3

    .line 629
    sget-object v0, Lcom/android/phone/callsettings/VideoCallBarring$AppState;->INITIAL_QUERY:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/VideoCallBarring;->setAppState(Lcom/android/phone/callsettings/VideoCallBarring$AppState;)V

    .line 631
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 632
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##OSK## "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCallBarring() radioState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##OSK## "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPhone : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    if-nez v0, :cond_0

    .line 637
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "##OSK## "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "STATE_IN_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    invoke-direct {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->requestCBQueryCommand()V

    .line 655
    :goto_0
    return-void

    .line 640
    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "##OSK## "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "STATE_POWER_OFF"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    sget-boolean v0, Lcom/android/phone/callsettings/VideoCallBarring;->DBG:Z

    if-eqz v0, :cond_1

    .line 643
    const-string v0, "onCreate: radio not ready, waiting for signal."

    invoke-static {v0}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    .line 644
    :cond_1
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mNetworkServiceHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0

    .line 647
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "##OSK## "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MSG_EXCEPTION"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    sget-object v0, Lcom/android/phone/callsettings/VideoCallBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    const/16 v1, 0xc8

    invoke-direct {p0, v0, v1}, Lcom/android/phone/callsettings/VideoCallBarring;->setAppState(Lcom/android/phone/callsettings/VideoCallBarring$AppState;I)V

    goto :goto_0

    .line 651
    :cond_3
    sget-boolean v0, Lcom/android/phone/callsettings/VideoCallBarring;->DBG:Z

    if-eqz v0, :cond_4

    .line 652
    const-string v0, "setDisplayMode: radio is off!"

    invoke-static {v0}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    .line 653
    :cond_4
    sget-object v0, Lcom/android/phone/callsettings/VideoCallBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    const/16 v1, 0x320

    invoke-direct {p0, v0, v1}, Lcom/android/phone/callsettings/VideoCallBarring;->setAppState(Lcom/android/phone/callsettings/VideoCallBarring$AppState;I)V

    goto :goto_0
.end method

.method private handleQueryCBMessage(Landroid/os/AsyncResult;)I
    .locals 10
    .parameter "ar"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/16 v4, 0xc8

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 857
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_2

    .line 858
    sget-boolean v3, Lcom/android/phone/callsettings/VideoCallBarring;->DBG:Z

    if-eqz v3, :cond_0

    .line 859
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleQueryCBMessage() ar:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    .line 860
    :cond_0
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_1

    .line 861
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    .line 862
    .local v0, err:Lcom/android/internal/telephony/CommandException$Error;
    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v3, :cond_1

    .line 864
    const/16 v3, 0x384

    .line 943
    .end local v0           #err:Lcom/android/internal/telephony/CommandException$Error;
    :goto_0
    return v3

    :cond_1
    move v3, v4

    .line 868
    goto :goto_0

    .line 870
    :cond_2
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    move-object v2, v3

    check-cast v2, [I

    .line 872
    .local v2, ints:[I
    sget-boolean v3, Lcom/android/phone/callsettings/VideoCallBarring;->DBG:Z

    if-eqz v3, :cond_3

    .line 873
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleQueryCBMessage() ints.length:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v5, v2

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    .line 875
    :cond_3
    sget-boolean v3, Lcom/android/phone/callsettings/VideoCallBarring;->DBG:Z

    if-eqz v3, :cond_4

    .line 877
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSelectedItem = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    .line 879
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_4

    .line 880
    const-string v3, "ints["

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "]:"

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aget v5, v2, v1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    .line 879
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 885
    .end local v1           #i:I
    :cond_4
    array-length v3, v2

    if-eqz v3, :cond_f

    .line 886
    sget-boolean v3, Lcom/android/phone/callsettings/VideoCallBarring;->DBG:Z

    if-eqz v3, :cond_5

    .line 887
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleQueryCBMessage() ints[0]:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v5, v2, v7

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    .line 888
    :cond_5
    aget v3, v2, v7

    and-int/lit8 v3, v3, 0x10

    if-nez v3, :cond_a

    .line 890
    iget-boolean v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mCheckAllCB:Z

    if-nez v3, :cond_6

    .line 891
    const v3, 0x7f0e0354

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/VideoCallBarring;->displayToast(Ljava/lang/String;)V

    .line 893
    :cond_6
    iget v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    if-nez v3, :cond_7

    .line 894
    iget-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPreference:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 895
    iget-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPreference:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 898
    :cond_7
    iget v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    if-ne v3, v9, :cond_8

    .line 899
    iget-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPreference:Ljava/util/ArrayList;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 902
    :cond_8
    iget-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPreference:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 903
    iput-boolean v6, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSkipCallBarringReq:Z

    .line 904
    iget-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPreference:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v7}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 943
    :cond_9
    :goto_2
    const/16 v3, 0x64

    goto/16 :goto_0

    .line 908
    :cond_a
    aget v3, v2, v7

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_e

    .line 917
    iget-boolean v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mCheckAllCB:Z

    if-nez v3, :cond_b

    .line 918
    const v3, 0x7f0e0353

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/VideoCallBarring;->displayToast(Ljava/lang/String;)V

    .line 920
    :cond_b
    iget v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    if-nez v3, :cond_c

    .line 921
    iget-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPreference:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 922
    iget-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPreference:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 925
    :cond_c
    iget v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    if-ne v3, v9, :cond_d

    .line 926
    iget-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPreference:Ljava/util/ArrayList;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 929
    :cond_d
    iget-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPreference:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_9

    .line 930
    iput-boolean v6, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSkipCallBarringReq:Z

    .line 931
    iget-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPreference:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_2

    :cond_e
    move v3, v4

    .line 936
    goto/16 :goto_0

    :cond_f
    move v3, v4

    .line 939
    goto/16 :goto_0
.end method

.method private handleSetCBMessage(Landroid/os/AsyncResult;I)I
    .locals 4
    .parameter "ar"
    .parameter "arg1"

    .prologue
    const/16 v2, 0xc8

    const/16 v1, 0x64

    .line 947
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_5

    .line 948
    sget-boolean v1, Lcom/android/phone/callsettings/VideoCallBarring;->DBG:Z

    if-eqz v1, :cond_0

    .line 949
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSetCBMessage() ar:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    .line 951
    :cond_0
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_4

    .line 952
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    .line 953
    .local v0, err:Lcom/android/internal/telephony/CommandException$Error;
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_2

    .line 955
    const/16 v1, 0x190

    .line 1000
    .end local v0           #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_1
    :goto_0
    return v1

    .line 956
    .restart local v0       #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_2
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SIM_PUK2:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_3

    .line 957
    const-string v1, "SIM_PUK2"

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/VideoCallBarring;->displayToast(Ljava/lang/String;)V

    move v1, v2

    .line 958
    goto :goto_0

    .line 960
    :cond_3
    iget v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    packed-switch v1, :pswitch_data_0

    move v1, v2

    .line 973
    goto :goto_0

    .line 967
    :pswitch_0
    const/16 v1, 0x258

    goto :goto_0

    .line 970
    :pswitch_1
    const/16 v1, 0x1f4

    goto :goto_0

    .end local v0           #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_4
    move v1, v2

    .line 977
    goto :goto_0

    .line 979
    :cond_5
    if-nez p2, :cond_7

    .line 981
    sget-boolean v2, Lcom/android/phone/callsettings/VideoCallBarring;->DBG:Z

    if-eqz v2, :cond_6

    .line 982
    const-string v2, "handleSetCBMessage() has been processed ACTIVATE"

    invoke-static {v2}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    .line 997
    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->requestCBQueryCommand()V

    goto :goto_0

    .line 983
    :cond_7
    const/4 v2, 0x1

    if-ne p2, v2, :cond_8

    .line 984
    sget-boolean v2, Lcom/android/phone/callsettings/VideoCallBarring;->DBG:Z

    if-eqz v2, :cond_6

    .line 985
    const-string v2, "handleSetCBMessage() has been processed DEACTIVATE"

    invoke-static {v2}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 986
    :cond_8
    const/4 v2, 0x2

    if-ne p2, v2, :cond_9

    .line 987
    sget-boolean v2, Lcom/android/phone/callsettings/VideoCallBarring;->DBG:Z

    if-eqz v2, :cond_1

    .line 988
    const-string v2, "handleSetCBMessage() has been processed CANCELALL"

    invoke-static {v2}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 990
    :cond_9
    const/4 v2, 0x3

    if-ne p2, v2, :cond_6

    .line 991
    sget-boolean v2, Lcom/android/phone/callsettings/VideoCallBarring;->DBG:Z

    if-eqz v2, :cond_a

    .line 992
    const-string v2, "handleSetCBMessage() has been processed CONFIRM"

    invoke-static {v2}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    .line 993
    :cond_a
    const v2, 0x7f0e0362

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/VideoCallBarring;->displayToast(Ljava/lang/String;)V

    goto :goto_0

    .line 960
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 1410
    const-string v0, "## VideoCallBarring ##"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    return-void
.end method

.method private requestCBChangePassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "process"
    .parameter "oldPassword"
    .parameter "newPassword"
    .parameter "confirmPassword"

    .prologue
    .line 1231
    const-string v1, "AB"

    .line 1233
    .local v1, facility:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring;->responseCBHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/phone/callsettings/VideoCallBarring;->responseCBHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, p1, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z

    .line 1235
    return-void
.end method

.method private requestCBQueryCommand()V
    .locals 5

    .prologue
    .line 753
    const-string v0, "AO"

    .line 755
    .local v0, facility:Ljava/lang/String;
    iget v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    packed-switch v1, :pswitch_data_0

    .line 781
    :goto_0
    iget-object v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring;->responseCBHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/android/phone/callsettings/VideoCallBarring;->responseCBHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->getCallBarringOption(Ljava/lang/String;Landroid/os/Message;)V

    .line 783
    return-void

    .line 757
    :pswitch_0
    const-string v0, "AO"

    .line 758
    goto :goto_0

    .line 761
    :pswitch_1
    const-string v0, "OI"

    .line 762
    goto :goto_0

    .line 765
    :pswitch_2
    const-string v0, "OX"

    .line 766
    goto :goto_0

    .line 769
    :pswitch_3
    const-string v0, "AI"

    .line 770
    goto :goto_0

    .line 773
    :pswitch_4
    const-string v0, "IR"

    .line 774
    goto :goto_0

    .line 777
    :pswitch_5
    const-string v0, "AB"

    goto :goto_0

    .line 755
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private requestCBSetCommand(I)V
    .locals 9
    .parameter "process"

    .prologue
    .line 696
    iget-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->callbarring_password:Ljava/lang/String;

    .line 697
    .local v3, password:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 699
    const-string v3, ""

    .line 702
    :cond_0
    const-string v2, "AO"

    .line 703
    .local v2, facility:Ljava/lang/String;
    const/4 v1, 0x0

    .line 704
    .local v1, bActivate:Z
    const/4 v4, 0x0

    .line 706
    .local v4, serviceClass:I
    packed-switch p1, :pswitch_data_0

    .line 718
    const-string v0, "requestCBSetCommand (process) Exception!"

    invoke-static {v0}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    .line 721
    :goto_0
    iget v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    packed-switch v0, :pswitch_data_1

    .line 746
    :goto_1
    const/16 v4, 0x10

    .line 747
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v5, p0, Lcom/android/phone/callsettings/VideoCallBarring;->responseCBHandler:Landroid/os/Handler;

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/phone/callsettings/VideoCallBarring;->responseCBHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6, p1, v7, v8}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallBarringOption(ZLjava/lang/String;Ljava/lang/String;ILandroid/os/Message;)Z

    .line 750
    return-void

    .line 708
    :pswitch_0
    const/4 v1, 0x1

    .line 709
    goto :goto_0

    .line 711
    :pswitch_1
    const/4 v1, 0x0

    .line 712
    goto :goto_0

    .line 714
    :pswitch_2
    const/4 v1, 0x0

    .line 715
    goto :goto_0

    .line 723
    :pswitch_3
    const-string v2, "AO"

    .line 724
    goto :goto_1

    .line 727
    :pswitch_4
    const-string v2, "OI"

    .line 728
    goto :goto_1

    .line 731
    :pswitch_5
    const-string v2, "OX"

    .line 732
    goto :goto_1

    .line 735
    :pswitch_6
    const-string v2, "AI"

    .line 736
    goto :goto_1

    .line 739
    :pswitch_7
    const-string v2, "IR"

    .line 740
    goto :goto_1

    .line 742
    :pswitch_8
    const-string v2, "AB"

    goto :goto_1

    .line 706
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 721
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private setAppState(Lcom/android/phone/callsettings/VideoCallBarring$AppState;)V
    .locals 2
    .parameter "requestedState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1005
    sget-object v0, Lcom/android/phone/callsettings/VideoCallBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    if-ne p1, v0, :cond_1

    .line 1006
    sget-boolean v0, Lcom/android/phone/callsettings/VideoCallBarring;->DBG:Z

    if-eqz v0, :cond_0

    .line 1007
    const-string v0, "setAppState: illegal error state without reason."

    invoke-static {v0}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    .line 1008
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal error state without reason."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1010
    :cond_1
    const/16 v0, 0x64

    invoke-direct {p0, p1, v0}, Lcom/android/phone/callsettings/VideoCallBarring;->setAppState(Lcom/android/phone/callsettings/VideoCallBarring$AppState;I)V

    .line 1011
    return-void
.end method

.method private setAppState(Lcom/android/phone/callsettings/VideoCallBarring$AppState;I)V
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x258

    const/16 v6, 0x1f4

    const/16 v5, 0x12c

    const/16 v4, 0xc8

    const/4 v2, 0x1

    .line 1016
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "##OSK## "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAppState() mAppState:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mAppState:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ,requestedState:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",msgStatus:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mAppState:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    if-ne p1, v0, :cond_1

    .line 1020
    sget-boolean v0, Lcom/android/phone/callsettings/VideoCallBarring;->DBG:Z

    if-eqz v0, :cond_0

    .line 1021
    const-string v0, "setAppState: requestedState same as current state. ignoring."

    invoke-static {v0}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    .line 1154
    :cond_0
    :goto_0
    return-void

    .line 1027
    :cond_1
    sget-object v0, Lcom/android/phone/callsettings/VideoCallBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    if-ne p1, v0, :cond_8

    .line 1028
    sget-boolean v0, Lcom/android/phone/callsettings/VideoCallBarring;->DBG:Z

    if-eqz v0, :cond_2

    .line 1029
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

    invoke-static {v0}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    .line 1031
    :cond_2
    iget-boolean v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mVCBVisible:Z

    if-nez v0, :cond_3

    .line 1032
    const-string v0, "CallBarring"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mVCBVisible : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mVCBVisible:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " so, we try remove busy dialog"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    invoke-direct {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->deleteBusyDialog()V

    .line 1036
    :cond_3
    iget-boolean v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mVCBVisible:Z

    if-eqz v0, :cond_6

    .line 1038
    sparse-switch p2, :sswitch_data_0

    .line 1087
    :goto_1
    iget v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_5

    .line 1088
    iget-boolean v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mCheckAllCB:Z

    if-nez v0, :cond_4

    .line 1089
    iput-boolean v2, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSkipCallBarringReq:Z

    .line 1090
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPreference:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPreference:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_7

    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1094
    :cond_4
    if-eq p2, v4, :cond_5

    const/16 v0, 0x320

    if-eq p2, v0, :cond_5

    if-eq p2, v5, :cond_5

    if-eq p2, v6, :cond_5

    const/16 v0, 0x384

    if-eq p2, v0, :cond_5

    if-ne p2, v7, :cond_5

    .line 1102
    :cond_5
    iput-object p1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mAppState:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    goto/16 :goto_0

    .line 1040
    :sswitch_0
    invoke-direct {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->deleteBusyDialog()V

    .line 1042
    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->showDialog(I)V

    goto :goto_1

    .line 1046
    :sswitch_1
    const/16 v0, 0x320

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->showDialog(I)V

    goto :goto_1

    .line 1050
    :sswitch_2
    invoke-direct {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->deleteBusyDialog()V

    .line 1052
    invoke-virtual {p0, v5}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->showDialog(I)V

    goto :goto_1

    .line 1056
    :sswitch_3
    invoke-direct {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->deleteBusyDialog()V

    .line 1058
    const/16 v0, 0x190

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->showDialog(I)V

    goto :goto_1

    .line 1062
    :sswitch_4
    invoke-direct {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->deleteBusyDialog()V

    .line 1064
    invoke-virtual {p0, v6}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->showDialog(I)V

    goto :goto_1

    .line 1068
    :sswitch_5
    invoke-direct {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->deleteBusyDialog()V

    .line 1070
    invoke-virtual {p0, v7}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->showDialog(I)V

    goto :goto_1

    .line 1073
    :sswitch_6
    invoke-direct {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->deleteBusyDialog()V

    .line 1075
    const/16 v0, 0x2bc

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->showDialog(I)V

    goto :goto_1

    .line 1082
    :cond_6
    const-string v0, "VideoCallBarring"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mVCBVisible : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mVCBVisible:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " so, skip displaying error dialog"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    invoke-direct {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->deleteBusyDialog()V

    goto/16 :goto_1

    .line 1090
    :cond_7
    const/4 v1, 0x0

    goto :goto_2

    .line 1106
    :cond_8
    sget-boolean v0, Lcom/android/phone/callsettings/VideoCallBarring;->DBG:Z

    if-eqz v0, :cond_9

    .line 1107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAppState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mAppState:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    .line 1109
    :cond_9
    sget-object v0, Lcom/android/phone/callsettings/VideoCallBarring$14;->$SwitchMap$com$android$phone$callsettings$VideoCallBarring$AppState:[I

    iget-object v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mAppState:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1153
    :cond_a
    :goto_3
    iput-object p1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mAppState:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    goto/16 :goto_0

    .line 1113
    :pswitch_0
    sget-object v0, Lcom/android/phone/callsettings/VideoCallBarring$AppState;->INPUT_READY:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    if-eq p1, v0, :cond_a

    .line 1114
    sget-boolean v0, Lcom/android/phone/callsettings/VideoCallBarring;->DBG:Z

    if-eqz v0, :cond_b

    .line 1115
    const-string v0, "setAppState: illegal transition from NETWORK_ERROR"

    invoke-static {v0}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    .line 1116
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from NETWORK_ERROR"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1120
    :pswitch_1
    sget-boolean v0, Lcom/android/phone/callsettings/VideoCallBarring;->DBG:Z

    if-eqz v0, :cond_c

    .line 1121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAppState: displaying busy dialog, reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    .line 1122
    :cond_c
    iget-boolean v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mVCBVisible:Z

    if-eqz v0, :cond_e

    .line 1123
    sget-object v0, Lcom/android/phone/callsettings/VideoCallBarring$AppState;->INITIAL_QUERY:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    if-ne p1, v0, :cond_d

    .line 1124
    const/16 v0, 0x384

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->showDialog(I)V

    goto :goto_3

    .line 1125
    :cond_d
    sget-object v0, Lcom/android/phone/callsettings/VideoCallBarring$AppState;->BUSY_NETWORK_CONNECT:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    if-ne p1, v0, :cond_a

    .line 1126
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->showDialog(I)V

    goto :goto_3

    .line 1129
    :cond_e
    const-string v0, "CallBarring"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mVCBVisible : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mVCBVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " so, skip displaying init dialog"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1135
    :pswitch_2
    sget-object v0, Lcom/android/phone/callsettings/VideoCallBarring$AppState;->INPUT_READY:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    if-eq p1, v0, :cond_10

    .line 1136
    sget-boolean v0, Lcom/android/phone/callsettings/VideoCallBarring;->DBG:Z

    if-eqz v0, :cond_f

    .line 1137
    const-string v0, "setAppState: illegal transition from INITIAL_QUERY"

    invoke-static {v0}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    .line 1138
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from INITIAL_QUERY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1141
    :cond_10
    invoke-direct {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->deleteBusyDialog()V

    goto/16 :goto_3

    .line 1144
    :pswitch_3
    sget-object v0, Lcom/android/phone/callsettings/VideoCallBarring$AppState;->INPUT_READY:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    if-eq p1, v0, :cond_12

    .line 1145
    sget-boolean v0, Lcom/android/phone/callsettings/VideoCallBarring;->DBG:Z

    if-eqz v0, :cond_11

    .line 1146
    const-string v0, "setAppState: illegal transition from BUSY_NETWORK_CONNECT"

    invoke-static {v0}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    .line 1147
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from BUSY_NETWORK_CONNECT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1150
    :cond_12
    invoke-direct {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->deleteBusyDialog()V

    goto/16 :goto_3

    .line 1038
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x12c -> :sswitch_2
        0x190 -> :sswitch_3
        0x1f4 -> :sswitch_4
        0x258 -> :sswitch_5
        0x320 -> :sswitch_1
        0x384 -> :sswitch_6
    .end sparse-switch

    .line 1109
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setCallBarring(I)V
    .locals 4
    .parameter

    .prologue
    .line 659
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-gtz v0, :cond_3

    .line 665
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mVCBVisible:Z

    .line 666
    sget-object v0, Lcom/android/phone/callsettings/VideoCallBarring$AppState;->BUSY_NETWORK_CONNECT:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/VideoCallBarring;->setAppState(Lcom/android/phone/callsettings/VideoCallBarring$AppState;)V

    .line 668
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 669
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##OSK## "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCallBarring() radioState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "##OSK## "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPhone : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    if-nez v0, :cond_0

    .line 674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "##OSK## "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "STATE_IN_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/VideoCallBarring;->requestCBSetCommand(I)V

    .line 692
    :goto_0
    return-void

    .line 677
    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 678
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "##OSK## "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "STATE_POWER_OFF"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    sget-boolean v0, Lcom/android/phone/callsettings/VideoCallBarring;->DBG:Z

    if-eqz v0, :cond_1

    .line 680
    const-string v0, "onCreate: radio not ready, waiting for signal."

    invoke-static {v0}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    .line 681
    :cond_1
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mNetworkServiceHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0

    .line 684
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "##OSK## "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MSG_EXCEPTION"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    sget-object v0, Lcom/android/phone/callsettings/VideoCallBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    const/16 v1, 0xc8

    invoke-direct {p0, v0, v1}, Lcom/android/phone/callsettings/VideoCallBarring;->setAppState(Lcom/android/phone/callsettings/VideoCallBarring$AppState;I)V

    goto :goto_0

    .line 688
    :cond_3
    sget-boolean v0, Lcom/android/phone/callsettings/VideoCallBarring;->DBG:Z

    if-eqz v0, :cond_4

    .line 689
    const-string v0, "setDisplayMode: radio is off!"

    invoke-static {v0}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    .line 690
    :cond_4
    sget-object v0, Lcom/android/phone/callsettings/VideoCallBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    const/16 v1, 0x320

    invoke-direct {p0, v0, v1}, Lcom/android/phone/callsettings/VideoCallBarring;->setAppState(Lcom/android/phone/callsettings/VideoCallBarring$AppState;I)V

    goto :goto_0
.end method

.method private showError(Landroid/app/Dialog;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1277
    const v0, 0x7f090077

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1278
    if-eqz v0, :cond_0

    .line 1279
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1280
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1282
    :cond_0
    return-void
.end method

.method private showPasswordDialog()V
    .locals 3

    .prologue
    .line 1347
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f040016

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1355
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0e036d

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x104000a

    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v2, 0x104

    invoke-virtual {v0, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 1359
    invoke-virtual {v2, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1368
    const v0, 0x7f090079

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mOldPassword:Landroid/widget/EditText;

    .line 1369
    const v0, 0x7f09007a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mNewPassword:Landroid/widget/EditText;

    .line 1370
    const v0, 0x7f09007b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mConfirmPassword:Landroid/widget/EditText;

    .line 1372
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    .line 1373
    sget-object v0, Lcom/android/phone/callsettings/VideoCallBarring$AppState;->INPUT_READY:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/VideoCallBarring;->setAppState(Lcom/android/phone/callsettings/VideoCallBarring$AppState;)V

    .line 1375
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 1376
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 1333
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPwdChangeSubmit:Z

    .line 1334
    return-void

    .line 1333
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    .line 265
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 266
    const v2, 0x7f06003d

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 268
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 269
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 274
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 275
    const-string v2, "vcallbarring_baoc_pref"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mCallBarringList1Pref:Landroid/preference/CheckBoxPreference;

    .line 276
    const-string v2, "vcallbarring_baoic_pref"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mCallBarringList2Pref:Landroid/preference/CheckBoxPreference;

    .line 277
    const-string v2, "vcallbarring_baoicxh_pref"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mCallBarringList3Pref:Landroid/preference/CheckBoxPreference;

    .line 278
    const-string v2, "vcallbarring_baic_pref"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mCallBarringList4Pref:Landroid/preference/CheckBoxPreference;

    .line 279
    const-string v2, "vcallbarring_baicr_pref"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mCallBarringList5Pref:Landroid/preference/CheckBoxPreference;

    .line 281
    iget-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPreference:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mCallBarringList1Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    iget-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPreference:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mCallBarringList2Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    iget-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPreference:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mCallBarringList3Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    iget-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPreference:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mCallBarringList4Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    iget-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPreference:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mCallBarringList5Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring;->factory:Landroid/view/LayoutInflater;

    .line 288
    iget-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring;->factory:Landroid/view/LayoutInflater;

    const v3, 0x7f040002

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring;->textEntryView:Landroid/view/View;

    .line 289
    iget-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring;->textEntryView:Landroid/view/View;

    const v3, 0x7f09000e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring;->editText:Landroid/widget/EditText;

    .line 291
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    iput-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring;->imm:Landroid/view/inputmethod/InputMethodManager;

    .line 293
    new-instance v2, Lcom/android/phone/callsettings/VideoCallBarring$1;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/VideoCallBarring$1;-><init>(Lcom/android/phone/callsettings/VideoCallBarring;)V

    iput-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring;->doActivate:Ljava/lang/Runnable;

    .line 310
    new-instance v2, Lcom/android/phone/callsettings/VideoCallBarring$2;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/VideoCallBarring$2;-><init>(Lcom/android/phone/callsettings/VideoCallBarring;)V

    iput-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring;->doDeactivate:Ljava/lang/Runnable;

    .line 326
    new-instance v2, Lcom/android/phone/callsettings/VideoCallBarring$3;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/VideoCallBarring$3;-><init>(Lcom/android/phone/callsettings/VideoCallBarring;)V

    iput-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring;->doCheckStatus:Ljava/lang/Runnable;

    .line 332
    new-instance v2, Lcom/android/phone/callsettings/VideoCallBarring$4;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/VideoCallBarring$4;-><init>(Lcom/android/phone/callsettings/VideoCallBarring;)V

    iput-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring;->doConfirm:Ljava/lang/Runnable;

    .line 344
    sget-object v2, Lcom/android/phone/callsettings/VideoCallBarring$AppState;->INPUT_READY:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    iput-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mAppState:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    .line 345
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 347
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mTelMan:Landroid/telephony/TelephonyManager;

    .line 349
    iget-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-ne v2, v5, :cond_2

    .line 351
    :cond_1
    const/16 v2, 0xc8

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->showDialog(I)V

    .line 352
    const-string v2, "VideoCallBarring"

    const-string v3, "skip set or get CallBarring"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPreference:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 355
    iget-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPreference:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 354
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 359
    .end local v1           #i:I
    :cond_2
    iput-boolean v5, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mCheckAllCB:Z

    .line 360
    invoke-direct {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->getCallBarring()V

    .line 361
    invoke-virtual {p0, v5}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 362
    :cond_3
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 12
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    const v11, 0x7f0e02d4

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 455
    sget-boolean v7, Lcom/android/phone/callsettings/VideoCallBarring;->DBG:Z

    if-eqz v7, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onCreateDialog id : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/callsettings/VideoCallBarring;->log(Ljava/lang/String;)V

    .line 457
    :cond_0
    iput-boolean v9, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mVCBVisible:Z

    .line 459
    sparse-switch p1, :sswitch_data_0

    .line 609
    const v5, 0x7f0e035c

    .line 610
    .local v5, msgId:I
    const v6, 0x7f0e0349

    .line 611
    .local v6, titleId:I
    packed-switch p1, :pswitch_data_0

    .line 616
    :goto_0
    invoke-virtual {p0, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/callsettings/VideoCallBarring;->displayToast(Ljava/lang/String;)V

    .line 619
    .end local v5           #msgId:I
    .end local v6           #titleId:I
    :goto_1
    return-object v1

    .line 463
    :sswitch_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/callsettings/VideoCallBarring;->factory:Landroid/view/LayoutInflater;

    .line 464
    iget-object v7, p0, Lcom/android/phone/callsettings/VideoCallBarring;->factory:Landroid/view/LayoutInflater;

    const v8, 0x7f040002

    invoke-virtual {v7, v8, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/callsettings/VideoCallBarring;->textEntryView:Landroid/view/View;

    .line 465
    iget-object v7, p0, Lcom/android/phone/callsettings/VideoCallBarring;->textEntryView:Landroid/view/View;

    const v8, 0x7f09000e

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/android/phone/callsettings/VideoCallBarring;->editText:Landroid/widget/EditText;

    .line 467
    iget-object v7, p0, Lcom/android/phone/callsettings/VideoCallBarring;->editText:Landroid/widget/EditText;

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 468
    iget-object v7, p0, Lcom/android/phone/callsettings/VideoCallBarring;->editText:Landroid/widget/EditText;

    const v8, 0x7f0e036c

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setHint(I)V

    .line 471
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 472
    .local v0, BADialog:Landroid/app/AlertDialog$Builder;
    const v7, 0x7f0e036b

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 473
    iget-object v7, p0, Lcom/android/phone/callsettings/VideoCallBarring;->textEntryView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 475
    new-instance v7, Lcom/android/phone/callsettings/VideoCallBarring$6;

    invoke-direct {v7, p0}, Lcom/android/phone/callsettings/VideoCallBarring$6;-><init>(Lcom/android/phone/callsettings/VideoCallBarring;)V

    invoke-virtual {v0, v11, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 488
    const v7, 0x7f0e02d5

    new-instance v8, Lcom/android/phone/callsettings/VideoCallBarring$7;

    invoke-direct {v8, p0}, Lcom/android/phone/callsettings/VideoCallBarring$7;-><init>(Lcom/android/phone/callsettings/VideoCallBarring;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 499
    invoke-virtual {p0, v10}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->setCancelable(Z)V

    .line 501
    iget-object v7, p0, Lcom/android/phone/callsettings/VideoCallBarring;->editText:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    .line 503
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 504
    .local v1, baad:Landroid/app/AlertDialog;
    new-instance v7, Lcom/android/phone/callsettings/VideoCallBarring$8;

    invoke-direct {v7, p0}, Lcom/android/phone/callsettings/VideoCallBarring$8;-><init>(Lcom/android/phone/callsettings/VideoCallBarring;)V

    invoke-virtual {p0, v7}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto :goto_1

    .line 516
    .end local v0           #BADialog:Landroid/app/AlertDialog$Builder;
    .end local v1           #baad:Landroid/app/AlertDialog;
    :sswitch_1
    new-instance v7, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 517
    iget-object v7, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mProgressDialog:Landroid/app/ProgressDialog;

    const v8, 0x7f0e007e

    invoke-virtual {p0, v8}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 518
    iget-object v7, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v7, v10}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 519
    iget-object v7, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    .line 521
    iput p1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPrevBusyDialog:I

    .line 523
    sparse-switch p1, :sswitch_data_1

    goto/16 :goto_1

    .line 526
    :sswitch_2
    invoke-virtual {p0, v9}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->setCancelable(Z)V

    .line 527
    iget-object v7, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mProgressDialog:Landroid/app/ProgressDialog;

    const v8, 0x7f0e0081

    invoke-virtual {p0, v8}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 528
    iget-object v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mProgressDialog:Landroid/app/ProgressDialog;

    goto/16 :goto_1

    .line 532
    :sswitch_3
    invoke-virtual {p0, v10}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->setCancelable(Z)V

    .line 533
    iget-object v7, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mProgressDialog:Landroid/app/ProgressDialog;

    const v8, 0x7f0e0080

    invoke-virtual {p0, v8}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 534
    new-instance v7, Lcom/android/phone/callsettings/VideoCallBarring$9;

    invoke-direct {v7, p0}, Lcom/android/phone/callsettings/VideoCallBarring$9;-><init>(Lcom/android/phone/callsettings/VideoCallBarring;)V

    invoke-virtual {p0, v7}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 539
    iget-object v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mProgressDialog:Landroid/app/ProgressDialog;

    goto/16 :goto_1

    .line 551
    :sswitch_4
    const v6, 0x7f0e007f

    .line 552
    .restart local v6       #titleId:I
    const/4 v4, 0x0

    .line 553
    .local v4, isFDN:Z
    sparse-switch p1, :sswitch_data_2

    .line 580
    const v5, 0x7f0e0084

    .line 584
    .restart local v5       #msgId:I
    :goto_2
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v3, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 586
    .local v3, err_builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0, v9}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->setCancelable(Z)V

    .line 587
    invoke-virtual {p0, v6}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 589
    if-nez v4, :cond_1

    .line 590
    const v7, 0x1010355

    invoke-virtual {v3, v7}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 592
    :cond_1
    invoke-virtual {p0, v5}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 593
    invoke-virtual {p0, v11}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    new-instance v8, Lcom/android/phone/callsettings/VideoCallBarring$10;

    invoke-direct {v8, p0}, Lcom/android/phone/callsettings/VideoCallBarring$10;-><init>(Lcom/android/phone/callsettings/VideoCallBarring;)V

    invoke-virtual {v3, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 604
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .local v2, dialog:Landroid/app/AlertDialog;
    move-object v1, v2

    .line 605
    goto/16 :goto_1

    .line 555
    .end local v2           #dialog:Landroid/app/AlertDialog;
    .end local v3           #err_builder:Landroid/app/AlertDialog$Builder;
    .end local v5           #msgId:I
    :sswitch_5
    const v5, 0x7f0e0083

    .line 556
    .restart local v5       #msgId:I
    goto :goto_2

    .line 559
    .end local v5           #msgId:I
    :sswitch_6
    const v5, 0x7f0e0086

    .line 560
    .restart local v5       #msgId:I
    goto :goto_2

    .line 563
    .end local v5           #msgId:I
    :sswitch_7
    const v5, 0x7f0e035c

    .line 564
    .restart local v5       #msgId:I
    goto :goto_2

    .line 567
    .end local v5           #msgId:I
    :sswitch_8
    const v5, 0x7f0e035d

    .line 568
    .restart local v5       #msgId:I
    goto :goto_2

    .line 571
    .end local v5           #msgId:I
    :sswitch_9
    const v5, 0x7f0e035e

    .line 572
    .restart local v5       #msgId:I
    goto :goto_2

    .line 574
    .end local v5           #msgId:I
    :sswitch_a
    const/4 v4, 0x1

    .line 575
    const v6, 0x7f0e02ce

    .line 576
    const v5, 0x7f0e0347

    .line 577
    .restart local v5       #msgId:I
    goto :goto_2

    .line 613
    .end local v4           #isFDN:Z
    :pswitch_0
    const v5, 0x7f0e035c

    goto/16 :goto_0

    .line 459
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0xc8 -> :sswitch_4
        0x12c -> :sswitch_4
        0x190 -> :sswitch_4
        0x1f4 -> :sswitch_4
        0x258 -> :sswitch_4
        0x2bc -> :sswitch_4
        0x320 -> :sswitch_4
        0x384 -> :sswitch_1
        0x3e8 -> :sswitch_0
    .end sparse-switch

    .line 611
    :pswitch_data_0
    .packed-switch 0x190
        :pswitch_0
    .end packed-switch

    .line 523
    :sswitch_data_1
    .sparse-switch
        0x64 -> :sswitch_2
        0x384 -> :sswitch_3
    .end sparse-switch

    .line 553
    :sswitch_data_2
    .sparse-switch
        0x12c -> :sswitch_5
        0x190 -> :sswitch_7
        0x1f4 -> :sswitch_8
        0x258 -> :sswitch_9
        0x2bc -> :sswitch_a
        0x320 -> :sswitch_6
    .end sparse-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1224
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 1225
    const/4 v0, 0x1

    const v1, 0x7f0e036d

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0203bf

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1227
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 1337
    iget-boolean v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPwdChangeSubmit:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1338
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mPwdChangeSubmit:Z

    move-object v0, p1

    .line 1339
    check-cast v0, Landroid/app/Dialog;

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/VideoCallBarring;->checkPassword(Landroid/app/Dialog;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1340
    check-cast p1, Landroid/app/Dialog;

    .end local p1
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 1344
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 1380
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 1382
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1406
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1403
    :pswitch_0
    invoke-direct {p0}, Lcom/android/phone/callsettings/VideoCallBarring;->showPasswordDialog()V

    .line 1404
    const/4 v0, 0x1

    goto :goto_0

    .line 1382
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 384
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 386
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 388
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 370
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    .line 372
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 376
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 5
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 405
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "========== onSharedPreferenceChanged : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 407
    const-string v1, "vcallbarring_baoc_pref"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 408
    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 409
    .local v0, isChecked:Z
    iput v4, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    .line 410
    iput-boolean v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mVCB_Checked:Z

    .line 413
    .end local v0           #isChecked:Z
    :cond_0
    const-string v1, "vcallbarring_baoic_pref"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 414
    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 415
    .restart local v0       #isChecked:Z
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    .line 416
    iput-boolean v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mVCB_Checked:Z

    .line 419
    .end local v0           #isChecked:Z
    :cond_1
    const-string v1, "vcallbarring_baoicxh_pref"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 420
    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 421
    .restart local v0       #isChecked:Z
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    .line 422
    iput-boolean v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mVCB_Checked:Z

    .line 425
    .end local v0           #isChecked:Z
    :cond_2
    const-string v1, "vcallbarring_baic_pref"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 426
    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 427
    .restart local v0       #isChecked:Z
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    .line 428
    iput-boolean v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mVCB_Checked:Z

    .line 431
    .end local v0           #isChecked:Z
    :cond_3
    const-string v1, "vcallbarring_baicr_pref"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 432
    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 433
    .restart local v0       #isChecked:Z
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSelectedIndex:I

    .line 434
    iput-boolean v0, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mVCB_Checked:Z

    .line 437
    .end local v0           #isChecked:Z
    :cond_4
    iget-boolean v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSkipCallBarringReq:Z

    if-eqz v1, :cond_5

    .line 438
    iput-boolean v4, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mSkipCallBarringReq:Z

    .line 450
    :goto_0
    return-void

    .line 440
    :cond_5
    sget-object v1, Lcom/android/phone/callsettings/VideoCallBarring$AppState;->INPUT_READY:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    iput-object v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->mAppState:Lcom/android/phone/callsettings/VideoCallBarring$AppState;

    .line 441
    const/16 v1, 0x3e8

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->showDialog(I)V

    .line 443
    iget-object v1, p0, Lcom/android/phone/callsettings/VideoCallBarring;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/android/phone/callsettings/VideoCallBarring$5;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/VideoCallBarring$5;-><init>(Lcom/android/phone/callsettings/VideoCallBarring;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 391
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onStop()V

    .line 394
    return-void
.end method
