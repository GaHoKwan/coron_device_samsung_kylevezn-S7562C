.class public Lcom/android/phone/DsaMain;
.super Landroid/preference/PreferenceActivity;
.source "DsaMain.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field public static mEdit:Landroid/content/SharedPreferences$Editor;

.field public static mGetResult:Z

.field public static mPhoneNB1:Ljava/lang/String;

.field public static mPhoneNB2:Ljava/lang/String;

.field public static mPref:Landroid/content/SharedPreferences;

.field public static mSelectedSIM:I

.field public static mWaitDialog:Landroid/app/ProgressDialog;


# instance fields
.field public final dsaNumbers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field dsaset:Lcom/android/phone/DsaSetting;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field public mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public mButtonPhoneNumber:Landroid/preference/Preference;

.field public mButtonSetSimCard:Landroid/preference/Preference;

.field private mDialogPause:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 65
    sput-object v0, Lcom/android/phone/DsaMain;->mPhoneNB1:Ljava/lang/String;

    .line 66
    sput-object v0, Lcom/android/phone/DsaMain;->mPhoneNB2:Ljava/lang/String;

    .line 67
    sput v1, Lcom/android/phone/DsaMain;->mSelectedSIM:I

    .line 72
    sput-object v0, Lcom/android/phone/DsaMain;->mPref:Landroid/content/SharedPreferences;

    .line 73
    sput-object v0, Lcom/android/phone/DsaMain;->mEdit:Landroid/content/SharedPreferences$Editor;

    .line 75
    sput-object v0, Lcom/android/phone/DsaMain;->mWaitDialog:Landroid/app/ProgressDialog;

    .line 88
    sput-boolean v1, Lcom/android/phone/DsaMain;->mGetResult:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/DsaMain;->dsaNumbers:Ljava/util/ArrayList;

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/DsaMain;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/DsaMain;->mDialogPause:Z

    return-void
.end method

.method private checkDualSimMode()Z
    .locals 13

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 220
    const/4 v4, 0x1

    .line 221
    .local v4, PhoneOnMode2:Z
    const-string v0, "ril.ICC_TYPE"

    .line 222
    .local v0, ICC_TYPE:Ljava/lang/String;
    const-string v1, "ril.ICC_TYPE_1"

    .line 223
    .local v1, ICC_TYPE_1:Ljava/lang/String;
    const-string v2, "ril.MSIMM"

    .line 225
    .local v2, MSIMM_TYPE:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v11

    iget-object v11, v11, Lcom/android/phone/PhoneApp;->phone:[Lcom/android/internal/telephony/Phone;

    aget-object v8, v11, v10

    .line 227
    .local v8, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "phone1_on"

    invoke-static {v11, v12, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v9, :cond_1

    move v3, v9

    .line 228
    .local v3, PhoneOnMode1:Z
    :goto_0
    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "phone2_on"

    invoke-static {v11, v12, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v9, :cond_2

    move v4, v9

    .line 229
    :goto_1
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 230
    .local v6, SimState_1:Ljava/lang/String;
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 231
    .local v7, SimState_2:Ljava/lang/String;
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 233
    .local v5, SimMaster:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "PhoneOnMode1 : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " PhoneOnMode2 : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " SimState_1 : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " SimState_2 : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " SimMaster : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/phone/DsaMain;->dsaLog(Ljava/lang/String;)V

    .line 235
    const-string v11, "1"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    :cond_0
    :goto_2
    move v9, v10

    .line 270
    :goto_3
    return v9

    .end local v3           #PhoneOnMode1:Z
    .end local v5           #SimMaster:Ljava/lang/String;
    .end local v6           #SimState_1:Ljava/lang/String;
    .end local v7           #SimState_2:Ljava/lang/String;
    :cond_1
    move v3, v10

    .line 227
    goto :goto_0

    .restart local v3       #PhoneOnMode1:Z
    :cond_2
    move v4, v10

    .line 228
    goto :goto_1

    .line 240
    .restart local v5       #SimMaster:Ljava/lang/String;
    .restart local v6       #SimState_1:Ljava/lang/String;
    .restart local v7       #SimState_2:Ljava/lang/String;
    :cond_3
    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    .line 242
    const-string v11, "0"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "0"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    goto :goto_3

    .line 251
    :cond_4
    if-nez v3, :cond_0

    .line 254
    if-eqz v4, :cond_0

    .line 256
    const-string v9, "0"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, "0"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    goto :goto_2
.end method

.method private dsaLog(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 603
    const-string v0, "DsaMain"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    return-void
.end method


# virtual methods
.method public dismissDialog()V
    .locals 2

    .prologue
    .line 299
    const-string v0, "DsaMain"

    const-string v1, "dismissDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    sget-object v0, Lcom/android/phone/DsaMain;->mWaitDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 302
    sget-object v0, Lcom/android/phone/DsaMain;->mWaitDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 303
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/DsaMain;->mWaitDialog:Landroid/app/ProgressDialog;

    .line 304
    iget-object v0, p0, Lcom/android/phone/DsaMain;->mActionBarSwitch:Landroid/widget/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 306
    :cond_0
    return-void
.end method

.method public displayDialog(I)V
    .locals 5
    .parameter "id"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 274
    const-string v0, "DsaMain"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayDialog : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iput-boolean v4, p0, Lcom/android/phone/DsaMain;->mDialogPause:Z

    .line 276
    iget-object v0, p0, Lcom/android/phone/DsaMain;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 278
    packed-switch p1, :pswitch_data_0

    .line 296
    :goto_0
    return-void

    .line 280
    :pswitch_0
    const v0, 0x7f0e07c2

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const v1, 0x7f0e0081

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p0, v0, v1, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    sput-object v0, Lcom/android/phone/DsaMain;->mWaitDialog:Landroid/app/ProgressDialog;

    .line 281
    sget-object v0, Lcom/android/phone/DsaMain;->mWaitDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 282
    sget-object v0, Lcom/android/phone/DsaMain;->mWaitDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/android/phone/DsaMain$2;

    invoke-direct {v1, p0}, Lcom/android/phone/DsaMain$2;-><init>(Lcom/android/phone/DsaMain;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto :goto_0

    .line 278
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public displayResultDialog()V
    .locals 15

    .prologue
    const v14, 0x7f04002a

    const v13, 0x7f0e0235

    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 309
    const-string v8, "DsaMain"

    const-string v9, "displayResultDialog"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-virtual {p0}, Lcom/android/phone/DsaMain;->dismissDialog()V

    .line 311
    iput-boolean v10, p0, Lcom/android/phone/DsaMain;->mDialogPause:Z

    .line 313
    new-instance v0, Lcom/android/phone/DsaResult;

    invoke-direct {v0}, Lcom/android/phone/DsaResult;-><init>()V

    .line 315
    .local v0, dsaResult:Lcom/android/phone/DsaResult;
    invoke-virtual {v0}, Lcom/android/phone/DsaResult;->CheckDsaResult()Z

    move-result v5

    .line 316
    .local v5, result:Z
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v8

    iget-object v8, v8, Lcom/android/phone/PhoneApp;->phone:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v8, v10

    .line 318
    .local v3, phone:Lcom/android/internal/telephony/Phone;
    iget-object v8, p0, Lcom/android/phone/DsaMain;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v8}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 320
    if-eqz v5, :cond_1

    .line 322
    const-string v8, "DsaMain"

    const-string v9, "displayResultDialog [Activated Success]"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "dsa_is_activate"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 326
    sget-object v8, Lcom/android/phone/DsaMain;->mPref:Landroid/content/SharedPreferences;

    const-string v9, "dsa_result_dialog_success_is_checked"

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_0

    .line 329
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    invoke-static {p0, v14, v12}, Landroid/widget/ListView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 331
    .local v2, linear:Landroid/widget/LinearLayout;
    invoke-virtual {v0, v11}, Lcom/android/phone/DsaResult;->makeResultInformation(I)Ljava/lang/String;

    move-result-object v6

    .line 332
    .local v6, successInform:Ljava/lang/String;
    const v8, 0x7f0900c5

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 333
    .local v7, successTextView:Landroid/widget/TextView;
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f0e07c2

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {p0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/android/phone/DsaMain$4;

    invoke-direct {v10, p0}, Lcom/android/phone/DsaMain$4;-><init>(Lcom/android/phone/DsaMain;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/android/phone/DsaMain$3;

    invoke-direct {v9, p0}, Lcom/android/phone/DsaMain$3;-><init>(Lcom/android/phone/DsaMain;)V

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 497
    .end local v2           #linear:Landroid/widget/LinearLayout;
    .end local v6           #successInform:Ljava/lang/String;
    .end local v7           #successTextView:Landroid/widget/TextView;
    :cond_0
    :goto_0
    return-void

    .line 359
    :cond_1
    const-string v8, "DsaMain"

    const-string v9, "displayResultDialog [Activated Failed]"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v8, p0, Lcom/android/phone/DsaMain;->mButtonPhoneNumber:Landroid/preference/Preference;

    invoke-virtual {v8, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 362
    iget-object v8, p0, Lcom/android/phone/DsaMain;->mButtonSetSimCard:Landroid/preference/Preference;

    invoke-virtual {v8, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 364
    iget-object v8, p0, Lcom/android/phone/DsaMain;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v8, v12}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 365
    iget-object v8, p0, Lcom/android/phone/DsaMain;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v8, v10}, Landroid/widget/Switch;->setChecked(Z)V

    .line 366
    iget-object v8, p0, Lcom/android/phone/DsaMain;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v8, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 368
    invoke-virtual {v0, v10}, Lcom/android/phone/DsaResult;->makeResultInformation(I)Ljava/lang/String;

    move-result-object v1

    .line 370
    .local v1, failInform:Ljava/lang/String;
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f0e07c3

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {p0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/android/phone/DsaMain$6;

    invoke-direct {v10, p0}, Lcom/android/phone/DsaMain$6;-><init>(Lcom/android/phone/DsaMain;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/android/phone/DsaMain$5;

    invoke-direct {v9, p0}, Lcom/android/phone/DsaMain$5;-><init>(Lcom/android/phone/DsaMain;)V

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 395
    .end local v1           #failInform:Ljava/lang/String;
    :cond_2
    const-string v8, "DsaMain"

    const-string v9, "displayResultDialog [Deactivated]"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    if-eqz v5, :cond_3

    .line 398
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "dsa_is_activate"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 400
    sget-object v8, Lcom/android/phone/DsaMain;->mPref:Landroid/content/SharedPreferences;

    const-string v9, "dsa_result_dialog_success_is_checked"

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_0

    .line 403
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    invoke-static {p0, v14, v12}, Landroid/widget/ListView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 405
    .restart local v2       #linear:Landroid/widget/LinearLayout;
    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Lcom/android/phone/DsaResult;->makeResultInformation(I)Ljava/lang/String;

    move-result-object v6

    .line 406
    .restart local v6       #successInform:Ljava/lang/String;
    const v8, 0x7f0900c5

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 407
    .restart local v7       #successTextView:Landroid/widget/TextView;
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f0e07c2

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {p0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/android/phone/DsaMain$8;

    invoke-direct {v10, p0}, Lcom/android/phone/DsaMain$8;-><init>(Lcom/android/phone/DsaMain;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/android/phone/DsaMain$7;

    invoke-direct {v9, p0}, Lcom/android/phone/DsaMain$7;-><init>(Lcom/android/phone/DsaMain;)V

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 433
    .end local v2           #linear:Landroid/widget/LinearLayout;
    .end local v6           #successInform:Ljava/lang/String;
    .end local v7           #successTextView:Landroid/widget/TextView;
    :cond_3
    const-string v8, "DsaMain"

    const-string v9, "displayResultDialog Fail"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    const-string v8, "SelectSimStatus"

    invoke-virtual {p0, v8, v10}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 436
    .local v4, pref:Landroid/content/SharedPreferences;
    const-string v8, "SimStatus"

    invoke-interface {v4, v8, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 474
    :cond_4
    :goto_1
    invoke-virtual {v0, v10}, Lcom/android/phone/DsaResult;->makeResultInformation(I)Ljava/lang/String;

    move-result-object v1

    .line 475
    .restart local v1       #failInform:Ljava/lang/String;
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f0e07c3

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {p0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/android/phone/DsaMain$10;

    invoke-direct {v10, p0}, Lcom/android/phone/DsaMain$10;-><init>(Lcom/android/phone/DsaMain;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/android/phone/DsaMain$9;

    invoke-direct {v9, p0}, Lcom/android/phone/DsaMain$9;-><init>(Lcom/android/phone/DsaMain;)V

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 438
    .end local v1           #failInform:Ljava/lang/String;
    :pswitch_0
    sget v8, Lcom/android/phone/DsaSetting;->dsaCFNRcResult_SIM1:I

    if-eqz v8, :cond_4

    sget v8, Lcom/android/phone/DsaSetting;->dsaCWResult_SIM1:I

    if-eqz v8, :cond_4

    sget v8, Lcom/android/phone/DsaSetting;->dsaCFNRcResult_SIM2:I

    if-eqz v8, :cond_4

    sget v8, Lcom/android/phone/DsaSetting;->dsaCWResult_SIM2:I

    if-eqz v8, :cond_4

    .line 441
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "dsa_is_activate"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 442
    iget-object v8, p0, Lcom/android/phone/DsaMain;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v8, v12}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 443
    iget-object v8, p0, Lcom/android/phone/DsaMain;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v8, v11}, Landroid/widget/Switch;->setChecked(Z)V

    .line 444
    iget-object v8, p0, Lcom/android/phone/DsaMain;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v8, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_1

    .line 449
    :pswitch_1
    sget v8, Lcom/android/phone/DsaSetting;->dsaCFNRcResult_SIM1:I

    if-eqz v8, :cond_4

    sget v8, Lcom/android/phone/DsaSetting;->dsaCWResult_SIM1:I

    if-eqz v8, :cond_4

    .line 451
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "dsa_is_activate"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 452
    iget-object v8, p0, Lcom/android/phone/DsaMain;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v8, v12}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 453
    iget-object v8, p0, Lcom/android/phone/DsaMain;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v8, v11}, Landroid/widget/Switch;->setChecked(Z)V

    .line 454
    iget-object v8, p0, Lcom/android/phone/DsaMain;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v8, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_1

    .line 459
    :pswitch_2
    sget v8, Lcom/android/phone/DsaSetting;->dsaCFNRcResult_SIM2:I

    if-eqz v8, :cond_4

    sget v8, Lcom/android/phone/DsaSetting;->dsaCWResult_SIM2:I

    if-eqz v8, :cond_4

    .line 461
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "dsa_is_activate"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 462
    iget-object v8, p0, Lcom/android/phone/DsaMain;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v8, v12}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 463
    iget-object v8, p0, Lcom/android/phone/DsaMain;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v8, v11}, Landroid/widget/Switch;->setChecked(Z)V

    .line 464
    iget-object v8, p0, Lcom/android/phone/DsaMain;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v8, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_1

    .line 436
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    .line 584
    const-string v0, "DsaMain"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckedChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    invoke-virtual {p0}, Lcom/android/phone/DsaMain;->selectSwitch()V

    .line 586
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "icicle"

    .prologue
    const/16 v7, 0x10

    const/4 v11, -0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 94
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    const-string v5, "DsaMain"

    const-string v6, "onCreate"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const v5, 0x7f06001c

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 99
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 101
    .local v4, prefSet:Landroid/preference/PreferenceScreen;
    const-string v5, "button_phone_number_key"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/DsaMain;->mButtonPhoneNumber:Landroid/preference/Preference;

    .line 102
    iget-object v5, p0, Lcom/android/phone/DsaMain;->mButtonPhoneNumber:Landroid/preference/Preference;

    invoke-virtual {v5, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 104
    const-string v5, "button_set_sim_card_key"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/DsaMain;->mButtonSetSimCard:Landroid/preference/Preference;

    .line 105
    iget-object v5, p0, Lcom/android/phone/DsaMain;->mButtonSetSimCard:Landroid/preference/Preference;

    invoke-virtual {v5, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 107
    const-string v5, "dsa_main"

    invoke-virtual {p0, v5, v9}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    sput-object v5, Lcom/android/phone/DsaMain;->mPref:Landroid/content/SharedPreferences;

    .line 108
    sget-object v5, Lcom/android/phone/DsaMain;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    sput-object v5, Lcom/android/phone/DsaMain;->mEdit:Landroid/content/SharedPreferences$Editor;

    .line 110
    new-instance v5, Lcom/android/phone/DsaSetting;

    invoke-direct {v5}, Lcom/android/phone/DsaSetting;-><init>()V

    iput-object v5, p0, Lcom/android/phone/DsaMain;->dsaset:Lcom/android/phone/DsaSetting;

    .line 113
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 114
    .local v1, dsaFilter:Landroid/content/IntentFilter;
    const-string v5, "com.android.phone.dsacomplete"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    new-instance v5, Lcom/android/phone/DsaMain$1;

    invoke-direct {v5, p0}, Lcom/android/phone/DsaMain$1;-><init>(Lcom/android/phone/DsaMain;)V

    iput-object v5, p0, Lcom/android/phone/DsaMain;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 127
    iget-object v5, p0, Lcom/android/phone/DsaMain;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 129
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 130
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0, v10}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 135
    :cond_0
    new-instance v5, Landroid/widget/Switch;

    invoke-direct {v5, p0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/phone/DsaMain;->mActionBarSwitch:Landroid/widget/Switch;

    .line 137
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0022

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 138
    .local v2, padding:I
    iget-object v5, p0, Lcom/android/phone/DsaMain;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v9, v9, v2, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 139
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v7, v7}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 141
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/DsaMain;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v7, Landroid/app/ActionBar$LayoutParams;

    const/16 v8, 0x15

    invoke-direct {v7, v11, v11, v8}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v5, v6, v7}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 146
    iget-object v5, p0, Lcom/android/phone/DsaMain;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 148
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->phone:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v5, v9

    .line 149
    .local v3, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "dsa_is_activate"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v10, :cond_1

    .line 151
    const-string v5, "DsaMain"

    const-string v6, "DSA_IS_ACTIVATE IS ON"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v5, p0, Lcom/android/phone/DsaMain;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v10}, Landroid/widget/Switch;->setChecked(Z)V

    .line 158
    :goto_0
    return-void

    .line 156
    :cond_1
    iget-object v5, p0, Lcom/android/phone/DsaMain;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v9}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 169
    const-string v0, "DsaMain"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 172
    iget-object v0, p0, Lcom/android/phone/DsaMain;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 173
    sput-boolean v2, Lcom/android/phone/DsaMain;->mGetResult:Z

    .line 174
    iput-boolean v2, p0, Lcom/android/phone/DsaMain;->mDialogPause:Z

    .line 175
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 590
    const-string v0, "DsaMain"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOptionsItemSelected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 598
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 594
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 595
    const/4 v0, 0x1

    goto :goto_0

    .line 592
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 211
    const-string v0, "DsaMain"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-virtual {p0}, Lcom/android/phone/DsaMain;->dismissDialog()V

    .line 213
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 214
    iget-object v0, p0, Lcom/android/phone/DsaMain;->mActionBarSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 215
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 179
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 180
    const-string v0, "DsaMain"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v0, p0, Lcom/android/phone/DsaMain;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 184
    iget-object v0, p0, Lcom/android/phone/DsaMain;->mButtonPhoneNumber:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 185
    iget-object v0, p0, Lcom/android/phone/DsaMain;->mButtonSetSimCard:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 193
    :goto_0
    invoke-direct {p0}, Lcom/android/phone/DsaMain;->checkDualSimMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/android/phone/DsaMain;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/phone/DsaMain;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/android/phone/DsaMain;->mButtonPhoneNumber:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 198
    iget-object v0, p0, Lcom/android/phone/DsaMain;->mButtonSetSimCard:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 201
    :cond_1
    iget-boolean v0, p0, Lcom/android/phone/DsaMain;->mDialogPause:Z

    if-eqz v0, :cond_2

    .line 203
    invoke-virtual {p0, v2}, Lcom/android/phone/DsaMain;->displayDialog(I)V

    .line 206
    :cond_2
    iget-object v0, p0, Lcom/android/phone/DsaMain;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 207
    return-void

    .line 189
    :cond_3
    iget-object v0, p0, Lcom/android/phone/DsaMain;->mButtonPhoneNumber:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 190
    iget-object v0, p0, Lcom/android/phone/DsaMain;->mButtonSetSimCard:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 162
    const-string v0, "DsaMain"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 165
    return-void
.end method

.method public selectSwitch()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 516
    const-string v4, "dsa_phone_number"

    invoke-virtual {p0, v4, v7}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 517
    .local v0, Pref:Landroid/content/SharedPreferences;
    const-string v4, "dsa_phone_number_sim1"

    invoke-interface {v0, v4, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/phone/DsaMain;->mPhoneNB1:Ljava/lang/String;

    .line 518
    const-string v4, "dsa_phone_number_sim2"

    invoke-interface {v0, v4, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/phone/DsaMain;->mPhoneNB2:Ljava/lang/String;

    .line 520
    iget-object v4, p0, Lcom/android/phone/DsaMain;->dsaNumbers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 521
    const-string v4, "DsaMain"

    const-string v5, "dsaNumbers is not empty!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget-object v4, p0, Lcom/android/phone/DsaMain;->dsaNumbers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 525
    :cond_0
    sget-object v4, Lcom/android/phone/DsaMain;->mPhoneNB1:Ljava/lang/String;

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 526
    .local v2, phoneNB1:Ljava/lang/String;
    sget-object v4, Lcom/android/phone/DsaMain;->mPhoneNB2:Ljava/lang/String;

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 528
    .local v3, phoneNB2:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/phone/DsaMain;->dsaNumbers:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 529
    iget-object v4, p0, Lcom/android/phone/DsaMain;->dsaNumbers:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    const-string v4, "DsaMain"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "selectSwitch - mActionBarSwitch.isChecked() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/DsaMain;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v6}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mPhoneNB1 : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/phone/DsaMain;->mPhoneNB1:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mPhoneNB2 : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/phone/DsaMain;->mPhoneNB2:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/DsaMain;->dsaLog(Ljava/lang/String;)V

    .line 533
    sput-boolean v8, Lcom/android/phone/DsaMain;->mGetResult:Z

    .line 534
    iget-object v4, p0, Lcom/android/phone/DsaMain;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 536
    sget-object v4, Lcom/android/phone/DsaMain;->mPhoneNB1:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/phone/DsaMain;->mPhoneNB2:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 538
    :cond_1
    iget-object v4, p0, Lcom/android/phone/DsaMain;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v9}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 539
    iget-object v4, p0, Lcom/android/phone/DsaMain;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v7}, Landroid/widget/Switch;->setChecked(Z)V

    .line 540
    iget-object v4, p0, Lcom/android/phone/DsaMain;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 580
    :goto_0
    return-void

    .line 545
    :cond_2
    const-string v4, "SelectSimStatus"

    invoke-virtual {p0, v4, v7}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 546
    const-string v4, "SimStatus"

    invoke-interface {v0, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/android/phone/DsaMain;->mSelectedSIM:I

    .line 548
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->phone:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v4, v7

    .line 549
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "dsa_selected_simside"

    sget v6, Lcom/android/phone/DsaMain;->mSelectedSIM:I

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 552
    iget-object v4, p0, Lcom/android/phone/DsaMain;->mButtonPhoneNumber:Landroid/preference/Preference;

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 553
    iget-object v4, p0, Lcom/android/phone/DsaMain;->mButtonSetSimCard:Landroid/preference/Preference;

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 556
    iget-object v4, p0, Lcom/android/phone/DsaMain;->dsaset:Lcom/android/phone/DsaSetting;

    iget-object v5, p0, Lcom/android/phone/DsaMain;->dsaNumbers:Ljava/util/ArrayList;

    sget v6, Lcom/android/phone/DsaMain;->mSelectedSIM:I

    invoke-virtual {v4, v5, v6, v8}, Lcom/android/phone/DsaSetting;->DSAactivate(Ljava/util/ArrayList;IZ)V

    .line 558
    invoke-virtual {p0, v7}, Lcom/android/phone/DsaMain;->displayDialog(I)V

    .line 579
    :goto_1
    iget-object v4, p0, Lcom/android/phone/DsaMain;->dsaNumbers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 562
    .end local v1           #phone:Lcom/android/internal/telephony/Phone;
    :cond_3
    iget-object v4, p0, Lcom/android/phone/DsaMain;->mButtonPhoneNumber:Landroid/preference/Preference;

    invoke-virtual {v4, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 563
    iget-object v4, p0, Lcom/android/phone/DsaMain;->mButtonSetSimCard:Landroid/preference/Preference;

    invoke-virtual {v4, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 565
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->phone:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v4, v7

    .line 567
    .restart local v1       #phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "dsa_is_activate"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 570
    const-string v4, "SelectSimStatus"

    invoke-virtual {p0, v4, v7}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 571
    const-string v4, "SimStatus"

    invoke-interface {v0, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/android/phone/DsaMain;->mSelectedSIM:I

    .line 573
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "dsa_selected_simside"

    sget v6, Lcom/android/phone/DsaMain;->mSelectedSIM:I

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 575
    iget-object v4, p0, Lcom/android/phone/DsaMain;->dsaset:Lcom/android/phone/DsaSetting;

    iget-object v5, p0, Lcom/android/phone/DsaMain;->dsaNumbers:Ljava/util/ArrayList;

    sget v6, Lcom/android/phone/DsaMain;->mSelectedSIM:I

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/phone/DsaSetting;->DSAactivate(Ljava/util/ArrayList;IZ)V

    .line 577
    invoke-virtual {p0, v7}, Lcom/android/phone/DsaMain;->displayDialog(I)V

    goto :goto_1
.end method
