.class public Lcom/android/phone/callsettings/CallBarring;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "CallBarring.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/CallBarring$14;,
        Lcom/android/phone/callsettings/CallBarring$AppState;
    }
.end annotation


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

.field private mAppState:Lcom/android/phone/callsettings/CallBarring$AppState;

.field private mCBVisible:Z

.field private mCB_Checked:Z

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

.field responseCBHandler:Landroid/os/Handler;

.field private simSlotID:I

.field textEntryView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    .line 207
    iput v1, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    .line 209
    iput-boolean v1, p0, Lcom/android/phone/callsettings/CallBarring;->mCB_Checked:Z

    .line 228
    iput-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->mInputPassword:Landroid/widget/EditText;

    .line 230
    iput-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->mOldPassword:Landroid/widget/EditText;

    .line 232
    iput-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->mNewPassword:Landroid/widget/EditText;

    .line 234
    iput-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->mConfirmPassword:Landroid/widget/EditText;

    .line 236
    iput-boolean v1, p0, Lcom/android/phone/callsettings/CallBarring;->mPwdChangeSubmit:Z

    .line 248
    iput-boolean v1, p0, Lcom/android/phone/callsettings/CallBarring;->mSkipCallBarringReq:Z

    .line 250
    iput-boolean v1, p0, Lcom/android/phone/callsettings/CallBarring;->mCheckAllCB:Z

    .line 252
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/callsettings/CallBarring;->mCBVisible:Z

    .line 260
    iput v1, p0, Lcom/android/phone/callsettings/CallBarring;->simSlotID:I

    .line 783
    new-instance v0, Lcom/android/phone/callsettings/CallBarring$11;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/CallBarring$11;-><init>(Lcom/android/phone/callsettings/CallBarring;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->responseCBHandler:Landroid/os/Handler;

    .line 1147
    new-instance v0, Lcom/android/phone/callsettings/CallBarring$12;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/CallBarring$12;-><init>(Lcom/android/phone/callsettings/CallBarring;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mNetworkServiceHandler:Landroid/os/Handler;

    .line 1198
    new-instance v0, Lcom/android/phone/callsettings/CallBarring$13;

    invoke-direct {v0, p0}, Lcom/android/phone/callsettings/CallBarring$13;-><init>(Lcom/android/phone/callsettings/CallBarring;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/callsettings/CallBarring;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->callbarring_password:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/phone/callsettings/CallBarring;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/phone/callsettings/CallBarring;->callbarring_password:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/phone/callsettings/CallBarring;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/CallBarring;->displayToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/callsettings/CallBarring;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/phone/callsettings/CallBarring;->changePasswordCallBarring(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/phone/callsettings/CallBarring;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->imm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/phone/callsettings/CallBarring;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/android/phone/callsettings/CallBarring;->mCB_Checked:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/phone/callsettings/CallBarring;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/phone/callsettings/CallBarring;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mNetworkServiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/phone/callsettings/CallBarring;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/phone/callsettings/CallBarring;Landroid/os/AsyncResult;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/android/phone/callsettings/CallBarring;->handleSetCBMessage(Landroid/os/AsyncResult;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/phone/callsettings/CallBarring;Lcom/android/phone/callsettings/CallBarring$AppState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/CallBarring;->setAppState(Lcom/android/phone/callsettings/CallBarring$AppState;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/phone/callsettings/CallBarring;Lcom/android/phone/callsettings/CallBarring$AppState;I)V
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
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/android/phone/callsettings/CallBarring;->setAppState(Lcom/android/phone/callsettings/CallBarring$AppState;I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/phone/callsettings/CallBarring;Landroid/os/AsyncResult;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/CallBarring;->handleQueryCBMessage(Landroid/os/AsyncResult;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/phone/callsettings/CallBarring;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/android/phone/callsettings/CallBarring;->mCheckAllCB:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/phone/callsettings/CallBarring;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/android/phone/callsettings/CallBarring;->mCheckAllCB:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/phone/callsettings/CallBarring;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/android/phone/callsettings/CallBarring;->mSkipCallBarringReq:Z

    return p1
.end method

.method static synthetic access$2100(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-static {p0}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/phone/callsettings/CallBarring;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/phone/callsettings/CallBarring;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallBarring;->dismissCallWaiting()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/callsettings/CallBarring;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/phone/callsettings/CallBarring;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput p1, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    return p1
.end method

.method static synthetic access$308(Lcom/android/phone/callsettings/CallBarring;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 70
    iget v0, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/phone/callsettings/CallBarring;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/callsettings/CallBarring;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/CallBarring;->setCallBarring(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/callsettings/CallBarring;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallBarring;->getCallBarring()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/callsettings/CallBarring;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mOldPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/callsettings/CallBarring;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mNewPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/callsettings/CallBarring;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mConfirmPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method private changePasswordCallBarring(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 1220
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-gtz v0, :cond_2

    .line 1226
    iput-boolean v4, p0, Lcom/android/phone/callsettings/CallBarring;->mCBVisible:Z

    .line 1227
    sget-object v0, Lcom/android/phone/callsettings/CallBarring$AppState;->BUSY_NETWORK_CONNECT:Lcom/android/phone/callsettings/CallBarring$AppState;

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/CallBarring;->setAppState(Lcom/android/phone/callsettings/CallBarring$AppState;)V

    .line 1229
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 1231
    const-string v1, "CallBarring"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changePasswordCallBarring() radioState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1233
    const-string v1, "CallBarring"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPhone : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    if-nez v0, :cond_0

    .line 1236
    const-string v0, "CallBarring"

    const-string v1, "STATE_IN_SERVICE"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/phone/callsettings/CallBarring;->requestCBChangePassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    :goto_0
    return-void

    .line 1239
    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1240
    const-string v0, "CallBarring"

    const-string v1, "STATE_POWER_OFF"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    const-string v0, "onCreate: radio not ready, waiting for signal."

    invoke-static {v0}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;)V

    .line 1242
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring;->mNetworkServiceHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0

    .line 1245
    :cond_1
    const-string v0, "CallBarring"

    const-string v1, "MSG_EXCEPTION"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    sget-object v0, Lcom/android/phone/callsettings/CallBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/callsettings/CallBarring$AppState;

    const/16 v1, 0xc8

    invoke-direct {p0, v0, v1}, Lcom/android/phone/callsettings/CallBarring;->setAppState(Lcom/android/phone/callsettings/CallBarring$AppState;I)V

    goto :goto_0

    .line 1249
    :cond_2
    const-string v0, "setDisplayMode: radio is off!"

    invoke-static {v0}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;)V

    .line 1250
    sget-object v0, Lcom/android/phone/callsettings/CallBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/callsettings/CallBarring$AppState;

    const/16 v1, 0x320

    invoke-direct {p0, v0, v1}, Lcom/android/phone/callsettings/CallBarring;->setAppState(Lcom/android/phone/callsettings/CallBarring$AppState;I)V

    goto :goto_0
.end method

.method private checkPassword(Landroid/app/Dialog;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x4

    .line 1263
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mOldPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1264
    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring;->mNewPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1265
    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->mConfirmPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1267
    const-class v3, Lcom/android/phone/callsettings/CallBarring;

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

    invoke-static {v3, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    const-class v3, Lcom/android/phone/callsettings/CallBarring;

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

    invoke-static {v3, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    const-class v3, Lcom/android/phone/callsettings/CallBarring;

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

    invoke-static {v3, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    if-eqz v0, :cond_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v6, :cond_1

    .line 1279
    :cond_0
    const v0, 0x7f0e035f

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1304
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/phone/callsettings/CallBarring;->showError(Landroid/app/Dialog;Ljava/lang/String;)V

    .line 1305
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 1280
    :cond_1
    if-eqz v1, :cond_2

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v6, :cond_3

    .line 1283
    :cond_2
    const v0, 0x7f0e0360

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1284
    :cond_3
    if-eqz v2, :cond_4

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v6, :cond_5

    .line 1287
    :cond_4
    const v0, 0x7f0e0361

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1289
    :cond_5
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1294
    const v0, 0x7f0e0363

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1297
    :cond_6
    const v0, 0x7f0e02d4

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    .line 1298
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring;->doConfirm:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1299
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private deleteBusyDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1186
    const-string v0, "CallBarring"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCheckAllCB : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/callsettings/CallBarring;->mCheckAllCB:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSelectedIndex : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPrevBusyDialog : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/callsettings/CallBarring;->mPrevBusyDialog:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1189
    iget-boolean v0, p0, Lcom/android/phone/callsettings/CallBarring;->mCheckAllCB:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 1196
    :goto_0
    return-void

    .line 1192
    :cond_0
    iput-boolean v3, p0, Lcom/android/phone/callsettings/CallBarring;->mCBVisible:Z

    .line 1194
    iget v0, p0, Lcom/android/phone/callsettings/CallBarring;->mPrevBusyDialog:I

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->removeDialog(I)V

    goto :goto_0
.end method

.method private dismissCallWaiting()V
    .locals 1

    .prologue
    .line 1180
    sget-object v0, Lcom/android/phone/callsettings/CallBarring$AppState;->INPUT_READY:Lcom/android/phone/callsettings/CallBarring$AppState;

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/CallBarring;->setAppState(Lcom/android/phone/callsettings/CallBarring$AppState;)V

    .line 1182
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->finish()V

    .line 1183
    return-void
.end method

.method private displayToast(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1396
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1397
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1398
    return-void
.end method

.method private getCallBarring()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 634
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-gtz v1, :cond_2

    .line 639
    sget-object v1, Lcom/android/phone/callsettings/CallBarring$AppState;->INITIAL_QUERY:Lcom/android/phone/callsettings/CallBarring$AppState;

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/CallBarring;->setAppState(Lcom/android/phone/callsettings/CallBarring$AppState;)V

    .line 641
    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 642
    .local v0, radioState:I
    const-string v1, "CallBarring"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCallBarring() radioState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 644
    if-nez v0, :cond_0

    .line 645
    const-string v1, "CallBarring"

    const-string v2, "STATE_IN_SERVICE"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallBarring;->requestCBQueryCommand()V

    .line 661
    .end local v0           #radioState:I
    :goto_0
    return-void

    .line 648
    .restart local v0       #radioState:I
    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 649
    const-string v1, "CallBarring"

    const-string v2, "STATE_POWER_OFF"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    const-string v1, "CallBarring"

    const-string v2, "onCreate: radio not ready, waiting for signal."

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->mNetworkServiceHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0

    .line 654
    :cond_1
    const-string v1, "CallBarring"

    const-string v2, "MSG_EXCEPTION"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    sget-object v1, Lcom/android/phone/callsettings/CallBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/callsettings/CallBarring$AppState;

    const/16 v2, 0xc8

    invoke-direct {p0, v1, v2}, Lcom/android/phone/callsettings/CallBarring;->setAppState(Lcom/android/phone/callsettings/CallBarring$AppState;I)V

    goto :goto_0

    .line 658
    .end local v0           #radioState:I
    :cond_2
    const-string v1, "CallBarring"

    const-string v2, "setDisplayMode: radio is off!"

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 659
    sget-object v1, Lcom/android/phone/callsettings/CallBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/callsettings/CallBarring$AppState;

    const/16 v2, 0x320

    invoke-direct {p0, v1, v2}, Lcom/android/phone/callsettings/CallBarring;->setAppState(Lcom/android/phone/callsettings/CallBarring$AppState;I)V

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

    invoke-static {v3, v6}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;Z)V

    .line 860
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

    if-ne v0, v3, :cond_0

    .line 863
    const-string v3, "CallBarring"

    const-string v4, "CommandExceptionError = FDN"

    invoke-static {v3, v4, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 864
    const/16 v3, 0x384

    .line 937
    .end local v0           #err:Lcom/android/internal/telephony/CommandException$Error;
    :goto_0
    return v3

    .line 866
    .restart local v0       #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_0
    const-string v3, "CallBarring"

    const-string v5, "CommandExceptionError = EXCEPTION"

    invoke-static {v3, v5, v6}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    .end local v0           #err:Lcom/android/internal/telephony/CommandException$Error;
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

    .line 871
    .local v2, ints:[I
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

    invoke-static {v3, v6}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;Z)V

    .line 872
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSelectedItem = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;Z)V

    .line 874
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_3

    .line 875
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

    invoke-static {v3}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;)V

    .line 874
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 880
    :cond_3
    array-length v3, v2

    if-eqz v3, :cond_d

    .line 881
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

    invoke-static {v3, v6}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;Z)V

    .line 882
    aget v3, v2, v7

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_8

    .line 884
    iget-boolean v3, p0, Lcom/android/phone/callsettings/CallBarring;->mCheckAllCB:Z

    if-nez v3, :cond_4

    .line 885
    const v3, 0x7f0e0354

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/CallBarring;->displayToast(Ljava/lang/String;)V

    .line 887
    :cond_4
    iget v3, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    if-nez v3, :cond_5

    .line 888
    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 889
    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 892
    :cond_5
    iget v3, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    if-ne v3, v9, :cond_6

    .line 893
    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 896
    :cond_6
    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 897
    iput-boolean v6, p0, Lcom/android/phone/callsettings/CallBarring;->mSkipCallBarringReq:Z

    .line 898
    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v7}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 937
    :cond_7
    :goto_2
    const/16 v3, 0x64

    goto/16 :goto_0

    .line 902
    :cond_8
    aget v3, v2, v7

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_c

    .line 911
    iget-boolean v3, p0, Lcom/android/phone/callsettings/CallBarring;->mCheckAllCB:Z

    if-nez v3, :cond_9

    .line 912
    const v3, 0x7f0e0353

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/callsettings/CallBarring;->displayToast(Ljava/lang/String;)V

    .line 914
    :cond_9
    iget v3, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    if-nez v3, :cond_a

    .line 915
    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 916
    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 919
    :cond_a
    iget v3, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    if-ne v3, v9, :cond_b

    .line 920
    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 923
    :cond_b
    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_7

    .line 924
    iput-boolean v6, p0, Lcom/android/phone/callsettings/CallBarring;->mSkipCallBarringReq:Z

    .line 925
    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_2

    :cond_c
    move v3, v4

    .line 930
    goto/16 :goto_0

    :cond_d
    move v3, v4

    .line 933
    goto/16 :goto_0
.end method

.method private handleSetCBMessage(Landroid/os/AsyncResult;I)I
    .locals 5
    .parameter "ar"
    .parameter "arg1"

    .prologue
    const/4 v4, 0x1

    const/16 v2, 0xc8

    const/16 v1, 0x64

    .line 941
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_3

    .line 942
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

    invoke-static {v1, v4}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;Z)V

    .line 944
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_2

    .line 945
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    check-cast v1, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    .line 946
    .local v0, err:Lcom/android/internal/telephony/CommandException$Error;
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_0

    .line 948
    const/16 v1, 0x190

    .line 989
    .end local v0           #err:Lcom/android/internal/telephony/CommandException$Error;
    :goto_0
    return v1

    .line 949
    .restart local v0       #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SIM_PUK2:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_1

    .line 950
    const-string v1, "SIM_PUK2"

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/CallBarring;->displayToast(Ljava/lang/String;)V

    move v1, v2

    .line 951
    goto :goto_0

    .line 953
    :cond_1
    iget v1, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    packed-switch v1, :pswitch_data_0

    move v1, v2

    .line 966
    goto :goto_0

    .line 960
    :pswitch_0
    const/16 v1, 0x258

    goto :goto_0

    .line 963
    :pswitch_1
    const/16 v1, 0x1f4

    goto :goto_0

    .end local v0           #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_2
    move v1, v2

    .line 970
    goto :goto_0

    .line 972
    :cond_3
    if-nez p2, :cond_5

    .line 974
    const-string v2, "handleSetCBMessage() has been processed ACTIVATE"

    invoke-static {v2}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;)V

    .line 986
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallBarring;->requestCBQueryCommand()V

    goto :goto_0

    .line 975
    :cond_5
    if-ne p2, v4, :cond_6

    .line 976
    const-string v2, "handleSetCBMessage() has been processed DEACTIVATE"

    invoke-static {v2}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 977
    :cond_6
    const/4 v2, 0x2

    if-ne p2, v2, :cond_7

    .line 978
    const-string v2, "handleSetCBMessage() has been processed CANCELALL"

    invoke-static {v2}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 980
    :cond_7
    const/4 v2, 0x3

    if-ne p2, v2, :cond_4

    .line 981
    const-string v2, "handleSetCBMessage() has been processed CONFIRM"

    invoke-static {v2}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;)V

    .line 982
    const v2, 0x7f0e0362

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/callsettings/CallBarring;->displayToast(Ljava/lang/String;)V

    goto :goto_0

    .line 953
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
    .parameter "msg"

    .prologue
    .line 1388
    const-string v0, "CallBarring"

    invoke-static {v0, p0}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    return-void
.end method

.method private static log(Ljava/lang/String;Z)V
    .locals 1
    .parameter "msg"
    .parameter "always"

    .prologue
    .line 1392
    const-string v0, "CallBarring"

    invoke-static {v0, p0, p1}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1393
    return-void
.end method

.method private requestCBChangePassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "process"
    .parameter "oldPassword"
    .parameter "newPassword"
    .parameter "confirmPassword"

    .prologue
    .line 1211
    const-string v1, "AB"

    .line 1213
    .local v1, facility:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->responseCBHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/phone/callsettings/CallBarring;->responseCBHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, p1, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z

    .line 1216
    return-void
.end method

.method private requestCBQueryCommand()V
    .locals 5

    .prologue
    .line 751
    const-string v0, "AO"

    .line 753
    .local v0, facility:Ljava/lang/String;
    iget v1, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    packed-switch v1, :pswitch_data_0

    .line 779
    :goto_0
    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->responseCBHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/android/phone/callsettings/CallBarring;->responseCBHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->getCallBarringOption(Ljava/lang/String;Landroid/os/Message;)V

    .line 781
    return-void

    .line 755
    :pswitch_0
    const-string v0, "AO"

    .line 756
    goto :goto_0

    .line 759
    :pswitch_1
    const-string v0, "OI"

    .line 760
    goto :goto_0

    .line 763
    :pswitch_2
    const-string v0, "OX"

    .line 764
    goto :goto_0

    .line 767
    :pswitch_3
    const-string v0, "AI"

    .line 768
    goto :goto_0

    .line 771
    :pswitch_4
    const-string v0, "IR"

    .line 772
    goto :goto_0

    .line 775
    :pswitch_5
    const-string v0, "AB"

    goto :goto_0

    .line 753
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
    .locals 8
    .parameter "process"

    .prologue
    const/4 v7, 0x1

    .line 697
    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->callbarring_password:Ljava/lang/String;

    .line 698
    .local v2, password:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 700
    const-string v2, ""

    .line 703
    :cond_0
    const-string v1, "AO"

    .line 704
    .local v1, facility:Ljava/lang/String;
    const/4 v0, 0x0

    .line 706
    .local v0, bActivate:Z
    packed-switch p1, :pswitch_data_0

    .line 718
    const-string v3, "requestCBSetCommand (process) Exception!"

    invoke-static {v3, v7}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;Z)V

    .line 721
    :goto_0
    iget v3, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    packed-switch v3, :pswitch_data_1

    .line 746
    :goto_1
    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/phone/callsettings/CallBarring;->responseCBHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/phone/callsettings/CallBarring;->responseCBHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7, p1, v5, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v0, v1, v2, v4}, Lcom/android/internal/telephony/Phone;->setCallBarringOption(ZLjava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z

    .line 748
    return-void

    .line 708
    :pswitch_0
    const/4 v0, 0x1

    .line 709
    goto :goto_0

    .line 711
    :pswitch_1
    const/4 v0, 0x0

    .line 712
    goto :goto_0

    .line 714
    :pswitch_2
    const/4 v0, 0x0

    .line 715
    goto :goto_0

    .line 723
    :pswitch_3
    const-string v1, "AO"

    .line 724
    goto :goto_1

    .line 727
    :pswitch_4
    const-string v1, "OI"

    .line 728
    goto :goto_1

    .line 731
    :pswitch_5
    const-string v1, "OX"

    .line 732
    goto :goto_1

    .line 735
    :pswitch_6
    const-string v1, "AI"

    .line 736
    goto :goto_1

    .line 739
    :pswitch_7
    const-string v1, "IR"

    .line 740
    goto :goto_1

    .line 742
    :pswitch_8
    const-string v1, "AB"

    goto :goto_1

    .line 706
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

.method private setAppState(Lcom/android/phone/callsettings/CallBarring$AppState;)V
    .locals 2
    .parameter "requestedState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 994
    sget-object v0, Lcom/android/phone/callsettings/CallBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/callsettings/CallBarring$AppState;

    if-ne p1, v0, :cond_0

    .line 995
    const-string v0, "setAppState: illegal error state without reason."

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;Z)V

    .line 996
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal error state without reason."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 998
    :cond_0
    const/16 v0, 0x64

    invoke-direct {p0, p1, v0}, Lcom/android/phone/callsettings/CallBarring;->setAppState(Lcom/android/phone/callsettings/CallBarring$AppState;I)V

    .line 999
    return-void
.end method

.method private setAppState(Lcom/android/phone/callsettings/CallBarring$AppState;I)V
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

    .line 1004
    const-string v0, "CallBarring"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAppState() mAppState:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mAppState:Lcom/android/phone/callsettings/CallBarring$AppState;

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

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1007
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mAppState:Lcom/android/phone/callsettings/CallBarring$AppState;

    if-ne p1, v0, :cond_0

    .line 1008
    const-string v0, "setAppState: requestedState same as current state. ignoring."

    invoke-static {v0}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;)V

    .line 1136
    :goto_0
    return-void

    .line 1014
    :cond_0
    sget-object v0, Lcom/android/phone/callsettings/CallBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/callsettings/CallBarring$AppState;

    if-ne p1, v0, :cond_6

    .line 1015
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

    const-string v1, " mCBVisible : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/callsettings/CallBarring;->mCBVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;)V

    .line 1018
    iget-boolean v0, p0, Lcom/android/phone/callsettings/CallBarring;->mCBVisible:Z

    if-nez v0, :cond_1

    .line 1019
    const-string v0, "CallBarring"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCBVisible : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/phone/callsettings/CallBarring;->mCBVisible:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " so, we try remove busy dialog"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallBarring;->deleteBusyDialog()V

    .line 1023
    :cond_1
    iget-boolean v0, p0, Lcom/android/phone/callsettings/CallBarring;->mCBVisible:Z

    if-eqz v0, :cond_4

    .line 1024
    sparse-switch p2, :sswitch_data_0

    .line 1073
    :goto_1
    iget v0, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    .line 1074
    iget-boolean v0, p0, Lcom/android/phone/callsettings/CallBarring;->mCheckAllCB:Z

    if-nez v0, :cond_2

    .line 1075
    iput-boolean v2, p0, Lcom/android/phone/callsettings/CallBarring;->mSkipCallBarringReq:Z

    .line 1076
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_5

    move v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1080
    :cond_2
    if-eq p2, v4, :cond_3

    const/16 v0, 0x320

    if-eq p2, v0, :cond_3

    if-eq p2, v5, :cond_3

    if-eq p2, v6, :cond_3

    const/16 v0, 0x384

    if-eq p2, v0, :cond_3

    if-ne p2, v7, :cond_3

    .line 1088
    :cond_3
    iput-object p1, p0, Lcom/android/phone/callsettings/CallBarring;->mAppState:Lcom/android/phone/callsettings/CallBarring$AppState;

    goto/16 :goto_0

    .line 1026
    :sswitch_0
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallBarring;->deleteBusyDialog()V

    .line 1028
    invoke-virtual {p0, v4}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->showDialog(I)V

    goto :goto_1

    .line 1032
    :sswitch_1
    const/16 v0, 0x320

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->showDialog(I)V

    goto :goto_1

    .line 1036
    :sswitch_2
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallBarring;->deleteBusyDialog()V

    .line 1038
    invoke-virtual {p0, v5}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->showDialog(I)V

    goto :goto_1

    .line 1042
    :sswitch_3
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallBarring;->deleteBusyDialog()V

    .line 1044
    const/16 v0, 0x190

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->showDialog(I)V

    goto :goto_1

    .line 1048
    :sswitch_4
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallBarring;->deleteBusyDialog()V

    .line 1050
    invoke-virtual {p0, v6}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->showDialog(I)V

    goto :goto_1

    .line 1054
    :sswitch_5
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallBarring;->deleteBusyDialog()V

    .line 1056
    invoke-virtual {p0, v7}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->showDialog(I)V

    goto :goto_1

    .line 1060
    :sswitch_6
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallBarring;->deleteBusyDialog()V

    .line 1062
    const/16 v0, 0x2bc

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->showDialog(I)V

    goto :goto_1

    .line 1069
    :cond_4
    const-string v0, "CallBarring"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCBVisible : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/phone/callsettings/CallBarring;->mCBVisible:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " so, skip displaying dialog"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1070
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallBarring;->deleteBusyDialog()V

    goto/16 :goto_1

    .line 1076
    :cond_5
    const/4 v1, 0x0

    goto :goto_2

    .line 1092
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAppState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring;->mAppState:Lcom/android/phone/callsettings/CallBarring$AppState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;Z)V

    .line 1094
    sget-object v0, Lcom/android/phone/callsettings/CallBarring$14;->$SwitchMap$com$android$phone$callsettings$CallBarring$AppState:[I

    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring;->mAppState:Lcom/android/phone/callsettings/CallBarring$AppState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1135
    :cond_7
    :goto_3
    iput-object p1, p0, Lcom/android/phone/callsettings/CallBarring;->mAppState:Lcom/android/phone/callsettings/CallBarring$AppState;

    goto/16 :goto_0

    .line 1098
    :pswitch_0
    sget-object v0, Lcom/android/phone/callsettings/CallBarring$AppState;->INPUT_READY:Lcom/android/phone/callsettings/CallBarring$AppState;

    if-eq p1, v0, :cond_7

    .line 1099
    const-string v0, "setAppState: illegal transition from NETWORK_ERROR"

    invoke-static {v0}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;)V

    .line 1100
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from NETWORK_ERROR"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1104
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAppState: displaying busy dialog, reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;)V

    .line 1106
    iget-boolean v0, p0, Lcom/android/phone/callsettings/CallBarring;->mCBVisible:Z

    if-eqz v0, :cond_9

    .line 1107
    sget-object v0, Lcom/android/phone/callsettings/CallBarring$AppState;->INITIAL_QUERY:Lcom/android/phone/callsettings/CallBarring$AppState;

    if-ne p1, v0, :cond_8

    .line 1108
    const/16 v0, 0x384

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->showDialog(I)V

    goto :goto_3

    .line 1109
    :cond_8
    sget-object v0, Lcom/android/phone/callsettings/CallBarring$AppState;->BUSY_NETWORK_CONNECT:Lcom/android/phone/callsettings/CallBarring$AppState;

    if-ne p1, v0, :cond_7

    .line 1110
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->showDialog(I)V

    goto :goto_3

    .line 1113
    :cond_9
    const-string v0, "CallBarring"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCBVisible : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/callsettings/CallBarring;->mCBVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " so, skip displaying dialog"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1119
    :pswitch_2
    sget-object v0, Lcom/android/phone/callsettings/CallBarring$AppState;->INPUT_READY:Lcom/android/phone/callsettings/CallBarring$AppState;

    if-eq p1, v0, :cond_a

    .line 1120
    const-string v0, "setAppState: illegal transition from INITIAL_QUERY"

    invoke-static {v0}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;)V

    .line 1121
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from INITIAL_QUERY"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1124
    :cond_a
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallBarring;->deleteBusyDialog()V

    goto :goto_3

    .line 1127
    :pswitch_3
    sget-object v0, Lcom/android/phone/callsettings/CallBarring$AppState;->INPUT_READY:Lcom/android/phone/callsettings/CallBarring$AppState;

    if-eq p1, v0, :cond_b

    .line 1128
    const-string v0, "setAppState: illegal transition from BUSY_NETWORK_CONNECT"

    invoke-static {v0}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;)V

    .line 1129
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "illegal transition from BUSY_NETWORK_CONNECT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1132
    :cond_b
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallBarring;->deleteBusyDialog()V

    goto/16 :goto_3

    .line 1024
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

    .line 1094
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setCallBarring(I)V
    .locals 5
    .parameter "process"

    .prologue
    const/4 v4, 0x1

    .line 665
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-gtz v1, :cond_2

    .line 671
    iput-boolean v4, p0, Lcom/android/phone/callsettings/CallBarring;->mCBVisible:Z

    .line 672
    sget-object v1, Lcom/android/phone/callsettings/CallBarring$AppState;->BUSY_NETWORK_CONNECT:Lcom/android/phone/callsettings/CallBarring$AppState;

    invoke-direct {p0, v1}, Lcom/android/phone/callsettings/CallBarring;->setAppState(Lcom/android/phone/callsettings/CallBarring$AppState;)V

    .line 674
    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 675
    .local v0, radioState:I
    const-string v1, "CallBarring"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCallBarring() radioState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 677
    if-nez v0, :cond_0

    .line 678
    const-string v1, "CallBarring"

    const-string v2, "STATE_IN_SERVICE"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/CallBarring;->requestCBSetCommand(I)V

    .line 693
    .end local v0           #radioState:I
    :goto_0
    return-void

    .line 681
    .restart local v0       #radioState:I
    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 682
    const-string v1, "CallBarring"

    const-string v2, "STATE_POWER_OFF"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->mNetworkServiceHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0

    .line 686
    :cond_1
    const-string v1, "CallBarring"

    const-string v2, "MSG_EXCEPTION"

    invoke-static {v1, v2}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    sget-object v1, Lcom/android/phone/callsettings/CallBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/callsettings/CallBarring$AppState;

    const/16 v2, 0xc8

    invoke-direct {p0, v1, v2}, Lcom/android/phone/callsettings/CallBarring;->setAppState(Lcom/android/phone/callsettings/CallBarring$AppState;I)V

    goto :goto_0

    .line 690
    .end local v0           #radioState:I
    :cond_2
    const-string v1, "CallBarring"

    const-string v2, "setDisplayMode: radio is off!"

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 691
    sget-object v1, Lcom/android/phone/callsettings/CallBarring$AppState;->NETWORK_ERROR:Lcom/android/phone/callsettings/CallBarring$AppState;

    const/16 v2, 0x320

    invoke-direct {p0, v1, v2}, Lcom/android/phone/callsettings/CallBarring;->setAppState(Lcom/android/phone/callsettings/CallBarring$AppState;I)V

    goto :goto_0
.end method

.method private showError(Landroid/app/Dialog;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1255
    const v0, 0x7f090077

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1256
    if-eqz v0, :cond_0

    .line 1257
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1258
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1260
    :cond_0
    return-void
.end method

.method private showPasswordDialog()V
    .locals 3

    .prologue
    .line 1323
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f040016

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1331
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

    .line 1335
    invoke-virtual {v2, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1344
    const v0, 0x7f090079

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mOldPassword:Landroid/widget/EditText;

    .line 1345
    const v0, 0x7f09007a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mNewPassword:Landroid/widget/EditText;

    .line 1346
    const v0, 0x7f09007b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mConfirmPassword:Landroid/widget/EditText;

    .line 1348
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    .line 1349
    sget-object v0, Lcom/android/phone/callsettings/CallBarring$AppState;->INPUT_READY:Lcom/android/phone/callsettings/CallBarring$AppState;

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/CallBarring;->setAppState(Lcom/android/phone/callsettings/CallBarring$AppState;)V

    .line 1351
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 1352
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 1309
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/phone/callsettings/CallBarring;->mPwdChangeSubmit:Z

    .line 1310
    return-void

    .line 1309
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 269
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 270
    const v2, 0x7f06000f

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 272
    invoke-virtual {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 273
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 278
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 279
    const-string v2, "callbarring_baoc_pref"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->mCallBarringList1Pref:Landroid/preference/CheckBoxPreference;

    .line 280
    const-string v2, "callbarring_baoic_pref"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->mCallBarringList2Pref:Landroid/preference/CheckBoxPreference;

    .line 281
    const-string v2, "callbarring_baoicxh_pref"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->mCallBarringList3Pref:Landroid/preference/CheckBoxPreference;

    .line 282
    const-string v2, "callbarring_baic_pref"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->mCallBarringList4Pref:Landroid/preference/CheckBoxPreference;

    .line 283
    const-string v2, "callbarring_baicr_pref"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->mCallBarringList5Pref:Landroid/preference/CheckBoxPreference;

    .line 285
    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mCallBarringList1Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mCallBarringList2Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mCallBarringList3Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mCallBarringList4Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/phone/callsettings/CallBarring;->mCallBarringList5Pref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->factory:Landroid/view/LayoutInflater;

    .line 292
    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->factory:Landroid/view/LayoutInflater;

    const v3, 0x7f040002

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->textEntryView:Landroid/view/View;

    .line 293
    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->textEntryView:Landroid/view/View;

    const v3, 0x7f09000e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->editText:Landroid/widget/EditText;

    .line 295
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    iput-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->imm:Landroid/view/inputmethod/InputMethodManager;

    .line 297
    new-instance v2, Lcom/android/phone/callsettings/CallBarring$1;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/CallBarring$1;-><init>(Lcom/android/phone/callsettings/CallBarring;)V

    iput-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->doActivate:Ljava/lang/Runnable;

    .line 314
    new-instance v2, Lcom/android/phone/callsettings/CallBarring$2;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/CallBarring$2;-><init>(Lcom/android/phone/callsettings/CallBarring;)V

    iput-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->doDeactivate:Ljava/lang/Runnable;

    .line 330
    new-instance v2, Lcom/android/phone/callsettings/CallBarring$3;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/CallBarring$3;-><init>(Lcom/android/phone/callsettings/CallBarring;)V

    iput-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->doCheckStatus:Ljava/lang/Runnable;

    .line 336
    new-instance v2, Lcom/android/phone/callsettings/CallBarring$4;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/CallBarring$4;-><init>(Lcom/android/phone/callsettings/CallBarring;)V

    iput-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->doConfirm:Ljava/lang/Runnable;

    .line 348
    sget-object v2, Lcom/android/phone/callsettings/CallBarring$AppState;->INPUT_READY:Lcom/android/phone/callsettings/CallBarring$AppState;

    iput-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->mAppState:Lcom/android/phone/callsettings/CallBarring$AppState;

    .line 350
    sget v2, Lcom/android/phone/CallSettingsTabActivity;->mCurrentTab:I

    if-ne v2, v5, :cond_2

    .line 351
    invoke-static {v5}, Lcom/android/internal/telephony/MultiSimPhoneFactory;->getDefaultPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 352
    invoke-static {v5}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->mTelMan:Landroid/telephony/TelephonyManager;

    .line 358
    :goto_0
    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    if-ne v2, v5, :cond_3

    .line 360
    :cond_1
    const/16 v2, 0xc8

    invoke-virtual {p0, v2}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->showDialog(I)V

    .line 361
    const-string v2, "CallBarring"

    const-string v3, "skip set or get CallBarring"

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 363
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 364
    iget-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->mPreference:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 363
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 354
    .end local v1           #i:I
    :cond_2
    invoke-static {v6}, Lcom/android/internal/telephony/MultiSimPhoneFactory;->getDefaultPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 355
    invoke-static {v6}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/callsettings/CallBarring;->mTelMan:Landroid/telephony/TelephonyManager;

    goto :goto_0

    .line 368
    :cond_3
    iput-boolean v5, p0, Lcom/android/phone/callsettings/CallBarring;->mCheckAllCB:Z

    .line 369
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallBarring;->getCallBarring()V

    .line 370
    invoke-virtual {p0, v5}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 371
    :cond_4
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 11
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    const v10, 0x7f0e02d4

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 464
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCreateDialog id : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/callsettings/CallBarring;->log(Ljava/lang/String;)V

    .line 466
    iput-boolean v8, p0, Lcom/android/phone/callsettings/CallBarring;->mCBVisible:Z

    .line 468
    sparse-switch p1, :sswitch_data_0

    .line 618
    const v4, 0x7f0e035c

    .line 619
    .local v4, msgId:I
    const v5, 0x7f0e0349

    .line 620
    .local v5, titleId:I
    packed-switch p1, :pswitch_data_0

    .line 625
    :goto_0
    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/callsettings/CallBarring;->displayToast(Ljava/lang/String;)V

    .line 629
    .end local v4           #msgId:I
    .end local v5           #titleId:I
    :goto_1
    return-object v1

    .line 472
    :sswitch_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/callsettings/CallBarring;->factory:Landroid/view/LayoutInflater;

    .line 473
    iget-object v6, p0, Lcom/android/phone/callsettings/CallBarring;->factory:Landroid/view/LayoutInflater;

    const v7, 0x7f040002

    invoke-virtual {v6, v7, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/callsettings/CallBarring;->textEntryView:Landroid/view/View;

    .line 474
    iget-object v6, p0, Lcom/android/phone/callsettings/CallBarring;->textEntryView:Landroid/view/View;

    const v7, 0x7f09000e

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/android/phone/callsettings/CallBarring;->editText:Landroid/widget/EditText;

    .line 476
    iget-object v6, p0, Lcom/android/phone/callsettings/CallBarring;->editText:Landroid/widget/EditText;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 477
    iget-object v6, p0, Lcom/android/phone/callsettings/CallBarring;->editText:Landroid/widget/EditText;

    const v7, 0x7f0e036c

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setHint(I)V

    .line 480
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 481
    .local v0, BADialog:Landroid/app/AlertDialog$Builder;
    const v6, 0x7f0e036b

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 482
    iget-object v6, p0, Lcom/android/phone/callsettings/CallBarring;->textEntryView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 484
    new-instance v6, Lcom/android/phone/callsettings/CallBarring$6;

    invoke-direct {v6, p0}, Lcom/android/phone/callsettings/CallBarring$6;-><init>(Lcom/android/phone/callsettings/CallBarring;)V

    invoke-virtual {v0, v10, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 498
    const v6, 0x7f0e02d5

    new-instance v7, Lcom/android/phone/callsettings/CallBarring$7;

    invoke-direct {v7, p0}, Lcom/android/phone/callsettings/CallBarring$7;-><init>(Lcom/android/phone/callsettings/CallBarring;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 508
    invoke-virtual {p0, v9}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->setCancelable(Z)V

    .line 509
    new-instance v6, Lcom/android/phone/callsettings/CallBarring$8;

    invoke-direct {v6, p0}, Lcom/android/phone/callsettings/CallBarring$8;-><init>(Lcom/android/phone/callsettings/CallBarring;)V

    invoke-virtual {p0, v6}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 517
    iget-object v6, p0, Lcom/android/phone/callsettings/CallBarring;->editText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    .line 519
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_1

    .line 523
    .end local v0           #BADialog:Landroid/app/AlertDialog$Builder;
    :sswitch_1
    new-instance v6, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/phone/callsettings/CallBarring;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 524
    iget-object v6, p0, Lcom/android/phone/callsettings/CallBarring;->mProgressDialog:Landroid/app/ProgressDialog;

    const v7, 0x7f0e007e

    invoke-virtual {p0, v7}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 525
    iget-object v6, p0, Lcom/android/phone/callsettings/CallBarring;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v6, v9}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 526
    iget-object v6, p0, Lcom/android/phone/callsettings/CallBarring;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    .line 528
    iput p1, p0, Lcom/android/phone/callsettings/CallBarring;->mPrevBusyDialog:I

    .line 530
    sparse-switch p1, :sswitch_data_1

    goto/16 :goto_1

    .line 533
    :sswitch_2
    invoke-virtual {p0, v8}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->setCancelable(Z)V

    .line 534
    iget-object v6, p0, Lcom/android/phone/callsettings/CallBarring;->mProgressDialog:Landroid/app/ProgressDialog;

    const v7, 0x7f0e0081

    invoke-virtual {p0, v7}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 535
    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring;->mProgressDialog:Landroid/app/ProgressDialog;

    goto/16 :goto_1

    .line 539
    :sswitch_3
    invoke-virtual {p0, v9}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->setCancelable(Z)V

    .line 540
    iget-object v6, p0, Lcom/android/phone/callsettings/CallBarring;->mProgressDialog:Landroid/app/ProgressDialog;

    const v7, 0x7f0e0080

    invoke-virtual {p0, v7}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 541
    new-instance v6, Lcom/android/phone/callsettings/CallBarring$9;

    invoke-direct {v6, p0}, Lcom/android/phone/callsettings/CallBarring$9;-><init>(Lcom/android/phone/callsettings/CallBarring;)V

    invoke-virtual {p0, v6}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 546
    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring;->mProgressDialog:Landroid/app/ProgressDialog;

    goto/16 :goto_1

    .line 559
    :sswitch_4
    const v5, 0x7f0e007f

    .line 560
    .restart local v5       #titleId:I
    const/4 v3, 0x0

    .line 561
    .local v3, isFDN:Z
    sparse-switch p1, :sswitch_data_2

    .line 589
    const v4, 0x7f0e0084

    .line 593
    .restart local v4       #msgId:I
    :goto_2
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 595
    .local v2, err_builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0, v8}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->setCancelable(Z)V

    .line 596
    invoke-virtual {p0, v5}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 598
    if-nez v3, :cond_0

    .line 599
    const v6, 0x1010355

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 601
    :cond_0
    invoke-virtual {p0, v4}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 602
    invoke-virtual {p0, v10}, Landroid/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    new-instance v7, Lcom/android/phone/callsettings/CallBarring$10;

    invoke-direct {v7, p0}, Lcom/android/phone/callsettings/CallBarring$10;-><init>(Lcom/android/phone/callsettings/CallBarring;)V

    invoke-virtual {v2, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 612
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 614
    .local v1, dialog:Landroid/app/AlertDialog;
    goto/16 :goto_1

    .line 563
    .end local v1           #dialog:Landroid/app/AlertDialog;
    .end local v2           #err_builder:Landroid/app/AlertDialog$Builder;
    .end local v4           #msgId:I
    :sswitch_5
    const v4, 0x7f0e0083

    .line 564
    .restart local v4       #msgId:I
    goto :goto_2

    .line 567
    .end local v4           #msgId:I
    :sswitch_6
    const v4, 0x7f0e0086

    .line 568
    .restart local v4       #msgId:I
    goto :goto_2

    .line 571
    .end local v4           #msgId:I
    :sswitch_7
    const v4, 0x7f0e035c

    .line 572
    .restart local v4       #msgId:I
    goto :goto_2

    .line 575
    .end local v4           #msgId:I
    :sswitch_8
    const v4, 0x7f0e035d

    .line 576
    .restart local v4       #msgId:I
    goto :goto_2

    .line 579
    .end local v4           #msgId:I
    :sswitch_9
    const v4, 0x7f0e035e

    .line 580
    .restart local v4       #msgId:I
    goto :goto_2

    .line 583
    .end local v4           #msgId:I
    :sswitch_a
    const/4 v3, 0x1

    .line 584
    const v5, 0x7f0e02ce

    .line 585
    const v4, 0x7f0e0347

    .line 586
    .restart local v4       #msgId:I
    goto :goto_2

    .line 622
    .end local v3           #isFDN:Z
    :pswitch_0
    const v4, 0x7f0e035c

    goto/16 :goto_0

    .line 468
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

    .line 620
    :pswitch_data_0
    .packed-switch 0x190
        :pswitch_0
    .end packed-switch

    .line 530
    :sswitch_data_1
    .sparse-switch
        0x64 -> :sswitch_2
        0x384 -> :sswitch_3
    .end sparse-switch

    .line 561
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

    .line 1204
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 1205
    const/4 v0, 0x1

    const v1, 0x7f0e036d

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0203bf

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1207
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 1313
    iget-boolean v0, p0, Lcom/android/phone/callsettings/CallBarring;->mPwdChangeSubmit:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1314
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/callsettings/CallBarring;->mPwdChangeSubmit:Z

    move-object v0, p1

    .line 1315
    check-cast v0, Landroid/app/Dialog;

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/CallBarring;->checkPassword(Landroid/app/Dialog;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1316
    check-cast p1, Landroid/app/Dialog;

    .end local p1
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 1320
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 1356
    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 1358
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1384
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1381
    :pswitch_0
    invoke-direct {p0}, Lcom/android/phone/callsettings/CallBarring;->showPasswordDialog()V

    .line 1382
    const/4 v0, 0x1

    goto :goto_0

    .line 1358
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 393
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 395
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 397
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 379
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    .line 381
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 385
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 5
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    const/4 v4, 0x0

    .line 414
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

    .line 416
    const-string v1, "callbarring_baoc_pref"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 417
    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 418
    .local v0, isChecked:Z
    iput v4, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    .line 419
    iput-boolean v0, p0, Lcom/android/phone/callsettings/CallBarring;->mCB_Checked:Z

    .line 422
    .end local v0           #isChecked:Z
    :cond_0
    const-string v1, "callbarring_baoic_pref"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 423
    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 424
    .restart local v0       #isChecked:Z
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    .line 425
    iput-boolean v0, p0, Lcom/android/phone/callsettings/CallBarring;->mCB_Checked:Z

    .line 428
    .end local v0           #isChecked:Z
    :cond_1
    const-string v1, "callbarring_baoicxh_pref"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 429
    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 430
    .restart local v0       #isChecked:Z
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    .line 431
    iput-boolean v0, p0, Lcom/android/phone/callsettings/CallBarring;->mCB_Checked:Z

    .line 434
    .end local v0           #isChecked:Z
    :cond_2
    const-string v1, "callbarring_baic_pref"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 435
    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 436
    .restart local v0       #isChecked:Z
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    .line 437
    iput-boolean v0, p0, Lcom/android/phone/callsettings/CallBarring;->mCB_Checked:Z

    .line 440
    .end local v0           #isChecked:Z
    :cond_3
    const-string v1, "callbarring_baicr_pref"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 441
    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 442
    .restart local v0       #isChecked:Z
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/phone/callsettings/CallBarring;->mSelectedIndex:I

    .line 443
    iput-boolean v0, p0, Lcom/android/phone/callsettings/CallBarring;->mCB_Checked:Z

    .line 446
    .end local v0           #isChecked:Z
    :cond_4
    iget-boolean v1, p0, Lcom/android/phone/callsettings/CallBarring;->mSkipCallBarringReq:Z

    if-eqz v1, :cond_5

    .line 447
    iput-boolean v4, p0, Lcom/android/phone/callsettings/CallBarring;->mSkipCallBarringReq:Z

    .line 459
    :goto_0
    return-void

    .line 449
    :cond_5
    sget-object v1, Lcom/android/phone/callsettings/CallBarring$AppState;->INPUT_READY:Lcom/android/phone/callsettings/CallBarring$AppState;

    iput-object v1, p0, Lcom/android/phone/callsettings/CallBarring;->mAppState:Lcom/android/phone/callsettings/CallBarring$AppState;

    .line 450
    const/16 v1, 0x3e8

    invoke-virtual {p0, v1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->showDialog(I)V

    .line 452
    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/android/phone/callsettings/CallBarring$5;

    invoke-direct {v2, p0}, Lcom/android/phone/callsettings/CallBarring$5;-><init>(Lcom/android/phone/callsettings/CallBarring;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 400
    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onStop()V

    .line 403
    return-void
.end method
