.class public Lcom/android/phone/DsaPhoneNumber;
.super Landroid/app/Activity;
.source "DsaPhoneNumber.java"


# static fields
.field private static mSimnumber:[Ljava/lang/String;


# instance fields
.field mEdit:Landroid/content/SharedPreferences$Editor;

.field private mFromSetupWizard:Z

.field private mIsFirst:Z

.field private mLeftSoftBtn:Landroid/widget/Button;

.field private mMenuOk:Landroid/view/MenuItem;

.field private mPhone1:Lcom/android/internal/telephony/Phone;

.field private mPhone2:Lcom/android/internal/telephony/Phone;

.field mPref:Landroid/content/SharedPreferences;

.field private mRawNumber:[Ljava/lang/String;

.field private mRightSoftBtn:Landroid/widget/Button;

.field private mSim1Changed:Ljava/lang/String;

.field private mSim1value:Landroid/widget/EditText;

.field private mSim2Changed:Ljava/lang/String;

.field private mSim2value:Landroid/widget/EditText;

.field private mSoftLayout:Landroid/widget/LinearLayout;

.field private mSoftLayoutSW:Landroid/widget/RelativeLayout;

.field private tw:Landroid/text/TextWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/phone/DsaPhoneNumber;->mSimnumber:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 60
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/internal/telephony/MultiSimPhoneFactory;->getDefaultPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/DsaPhoneNumber;->mPhone1:Lcom/android/internal/telephony/Phone;

    .line 61
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/internal/telephony/MultiSimPhoneFactory;->getDefaultPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/DsaPhoneNumber;->mPhone2:Lcom/android/internal/telephony/Phone;

    .line 64
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/DsaPhoneNumber;->mRawNumber:[Ljava/lang/String;

    .line 65
    iput-object v1, p0, Lcom/android/phone/DsaPhoneNumber;->mSim1Changed:Ljava/lang/String;

    .line 66
    iput-object v1, p0, Lcom/android/phone/DsaPhoneNumber;->mSim2Changed:Ljava/lang/String;

    .line 453
    new-instance v0, Lcom/android/phone/DsaPhoneNumber$3;

    invoke-direct {v0, p0}, Lcom/android/phone/DsaPhoneNumber$3;-><init>(Lcom/android/phone/DsaPhoneNumber;)V

    iput-object v0, p0, Lcom/android/phone/DsaPhoneNumber;->tw:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/DsaPhoneNumber;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber;->mSim1value:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/DsaPhoneNumber;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber;->mSim2value:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/DsaPhoneNumber;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/phone/DsaPhoneNumber;->mIsFirst:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/DsaPhoneNumber;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/phone/DsaPhoneNumber;->mFromSetupWizard:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/phone/DsaPhoneNumber;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber;->mRightSoftBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/DsaPhoneNumber;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber;->mLeftSoftBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/DsaPhoneNumber;)Landroid/view/MenuItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber;->mMenuOk:Landroid/view/MenuItem;

    return-object v0
.end method

.method private dsaLog(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 449
    const-string v0, "DsaPhoneNumber"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    return-void
.end method

.method private initContentView()V
    .locals 13

    .prologue
    const v12, 0x7f0900ba

    const v9, 0x7f0900b9

    const/4 v8, 0x3

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 238
    const/4 v0, 0x0

    .line 239
    .local v0, DSactive_state:Z
    const/4 v3, 0x1

    .line 243
    .local v3, everyBodyIsOn:Z
    const v6, 0x7f0900bd

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 244
    .local v1, Sim1Number:Landroid/view/View;
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 245
    .local v4, mSim1NumberText:Landroid/widget/TextView;
    const v6, 0x7f0e07ab

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 246
    invoke-virtual {v1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/android/phone/DsaPhoneNumber;->mSim1value:Landroid/widget/EditText;

    .line 247
    iget-object v6, p0, Lcom/android/phone/DsaPhoneNumber;->mSim1value:Landroid/widget/EditText;

    const v7, 0x7f0e014f

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setHint(I)V

    .line 248
    iget-object v6, p0, Lcom/android/phone/DsaPhoneNumber;->mSim1value:Landroid/widget/EditText;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setInputType(I)V

    .line 251
    const v6, 0x7f0900be

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 252
    .local v2, Sim2Number:Landroid/view/View;
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 253
    .local v5, mSim2NumberText:Landroid/widget/TextView;
    const v6, 0x7f0e07ac

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 254
    invoke-virtual {v2, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/android/phone/DsaPhoneNumber;->mSim2value:Landroid/widget/EditText;

    .line 255
    iget-object v6, p0, Lcom/android/phone/DsaPhoneNumber;->mSim2value:Landroid/widget/EditText;

    const v7, 0x7f0e014f

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setHint(I)V

    .line 256
    iget-object v6, p0, Lcom/android/phone/DsaPhoneNumber;->mSim2value:Landroid/widget/EditText;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setInputType(I)V

    .line 258
    sget-object v6, Lcom/android/phone/DsaPhoneNumber;->mSimnumber:[Ljava/lang/String;

    iget-object v7, p0, Lcom/android/phone/DsaPhoneNumber;->mPref:Landroid/content/SharedPreferences;

    const-string v8, "dsa_phone_number_sim1"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    .line 259
    sget-object v6, Lcom/android/phone/DsaPhoneNumber;->mSimnumber:[Ljava/lang/String;

    iget-object v7, p0, Lcom/android/phone/DsaPhoneNumber;->mPref:Landroid/content/SharedPreferences;

    const-string v8, "dsa_phone_number_sim2"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v11

    .line 261
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mSimnumber[0] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/phone/DsaPhoneNumber;->mSimnumber:[Ljava/lang/String;

    aget-object v7, v7, v10

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mSimnumber[1] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/phone/DsaPhoneNumber;->mSimnumber:[Ljava/lang/String;

    aget-object v7, v7, v11

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "mRawNumber[0] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/DsaPhoneNumber;->mRawNumber:[Ljava/lang/String;

    aget-object v7, v7, v10

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mRawNumber[1] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/DsaPhoneNumber;->mRawNumber:[Ljava/lang/String;

    aget-object v7, v7, v11

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/DsaPhoneNumber;->dsaLog(Ljava/lang/String;)V

    .line 263
    sget-object v6, Lcom/android/phone/DsaPhoneNumber;->mSimnumber:[Ljava/lang/String;

    aget-object v6, v6, v10

    if-nez v6, :cond_0

    .line 265
    sget-object v6, Lcom/android/phone/DsaPhoneNumber;->mSimnumber:[Ljava/lang/String;

    iget-object v7, p0, Lcom/android/phone/DsaPhoneNumber;->mRawNumber:[Ljava/lang/String;

    aget-object v7, v7, v10

    aput-object v7, v6, v10

    .line 266
    iget-object v6, p0, Lcom/android/phone/DsaPhoneNumber;->mEdit:Landroid/content/SharedPreferences$Editor;

    const-string v7, "dsa_phone_number_sim1"

    sget-object v8, Lcom/android/phone/DsaPhoneNumber;->mSimnumber:[Ljava/lang/String;

    aget-object v8, v8, v10

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 267
    iget-object v6, p0, Lcom/android/phone/DsaPhoneNumber;->mEdit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 270
    :cond_0
    sget-object v6, Lcom/android/phone/DsaPhoneNumber;->mSimnumber:[Ljava/lang/String;

    aget-object v6, v6, v11

    if-nez v6, :cond_1

    .line 272
    sget-object v6, Lcom/android/phone/DsaPhoneNumber;->mSimnumber:[Ljava/lang/String;

    iget-object v7, p0, Lcom/android/phone/DsaPhoneNumber;->mRawNumber:[Ljava/lang/String;

    aget-object v7, v7, v11

    aput-object v7, v6, v11

    .line 273
    iget-object v6, p0, Lcom/android/phone/DsaPhoneNumber;->mEdit:Landroid/content/SharedPreferences$Editor;

    const-string v7, "dsa_phone_number_sim2"

    sget-object v8, Lcom/android/phone/DsaPhoneNumber;->mSimnumber:[Ljava/lang/String;

    aget-object v8, v8, v11

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 274
    iget-object v6, p0, Lcom/android/phone/DsaPhoneNumber;->mEdit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 277
    :cond_1
    sget-object v6, Lcom/android/phone/DsaPhoneNumber;->mSimnumber:[Ljava/lang/String;

    aget-object v6, v6, v10

    if-eqz v6, :cond_2

    .line 278
    iget-object v6, p0, Lcom/android/phone/DsaPhoneNumber;->mSim1value:Landroid/widget/EditText;

    sget-object v7, Lcom/android/phone/DsaPhoneNumber;->mSimnumber:[Ljava/lang/String;

    aget-object v7, v7, v10

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v6, p0, Lcom/android/phone/DsaPhoneNumber;->mSim1value:Landroid/widget/EditText;

    sget-object v7, Lcom/android/phone/DsaPhoneNumber;->mSimnumber:[Ljava/lang/String;

    aget-object v7, v7, v10

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sget-object v8, Lcom/android/phone/DsaPhoneNumber;->mSimnumber:[Ljava/lang/String;

    aget-object v8, v8, v10

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/EditText;->setSelection(II)V

    .line 283
    :cond_2
    sget-object v6, Lcom/android/phone/DsaPhoneNumber;->mSimnumber:[Ljava/lang/String;

    aget-object v6, v6, v11

    if-eqz v6, :cond_3

    .line 284
    iget-object v6, p0, Lcom/android/phone/DsaPhoneNumber;->mSim2value:Landroid/widget/EditText;

    sget-object v7, Lcom/android/phone/DsaPhoneNumber;->mSimnumber:[Ljava/lang/String;

    aget-object v7, v7, v11

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    iget-object v6, p0, Lcom/android/phone/DsaPhoneNumber;->mSim2value:Landroid/widget/EditText;

    sget-object v7, Lcom/android/phone/DsaPhoneNumber;->mSimnumber:[Ljava/lang/String;

    aget-object v7, v7, v11

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sget-object v8, Lcom/android/phone/DsaPhoneNumber;->mSimnumber:[Ljava/lang/String;

    aget-object v8, v8, v11

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/EditText;->setSelection(II)V

    .line 288
    :cond_3
    sget-object v6, Lcom/android/phone/DsaPhoneNumber;->mSimnumber:[Ljava/lang/String;

    aget-object v6, v6, v10

    if-eqz v6, :cond_4

    sget-object v6, Lcom/android/phone/DsaPhoneNumber;->mSimnumber:[Ljava/lang/String;

    aget-object v6, v6, v11

    if-nez v6, :cond_7

    .line 290
    :cond_4
    iget-boolean v6, p0, Lcom/android/phone/DsaPhoneNumber;->mIsFirst:Z

    if-nez v6, :cond_5

    iget-boolean v6, p0, Lcom/android/phone/DsaPhoneNumber;->mFromSetupWizard:Z

    if-eqz v6, :cond_6

    .line 292
    :cond_5
    iget-object v6, p0, Lcom/android/phone/DsaPhoneNumber;->mRightSoftBtn:Landroid/widget/Button;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 311
    :goto_0
    iget-object v6, p0, Lcom/android/phone/DsaPhoneNumber;->mSim1value:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/android/phone/DsaPhoneNumber;->tw:Landroid/text/TextWatcher;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 312
    iget-object v6, p0, Lcom/android/phone/DsaPhoneNumber;->mSim2value:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/android/phone/DsaPhoneNumber;->tw:Landroid/text/TextWatcher;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 313
    return-void

    .line 296
    :cond_6
    iget-object v6, p0, Lcom/android/phone/DsaPhoneNumber;->mLeftSoftBtn:Landroid/widget/Button;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 301
    :cond_7
    iget-boolean v6, p0, Lcom/android/phone/DsaPhoneNumber;->mIsFirst:Z

    if-nez v6, :cond_8

    iget-boolean v6, p0, Lcom/android/phone/DsaPhoneNumber;->mFromSetupWizard:Z

    if-eqz v6, :cond_9

    .line 303
    :cond_8
    iget-object v6, p0, Lcom/android/phone/DsaPhoneNumber;->mRightSoftBtn:Landroid/widget/Button;

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 307
    :cond_9
    iget-object v6, p0, Lcom/android/phone/DsaPhoneNumber;->mLeftSoftBtn:Landroid/widget/Button;

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 92
    const-string v1, "DsaPhoneNumber"

    const-string v2, "onCreate()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    const v1, 0x7f040029

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 97
    const-string v1, "dsa_phone_number"

    invoke-virtual {p0, v1, v4}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/DsaPhoneNumber;->mPref:Landroid/content/SharedPreferences;

    .line 99
    iget-object v1, p0, Lcom/android/phone/DsaPhoneNumber;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/DsaPhoneNumber;->mEdit:Landroid/content/SharedPreferences$Editor;

    .line 101
    iget-object v1, p0, Lcom/android/phone/DsaPhoneNumber;->mRawNumber:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/DsaPhoneNumber;->mPhone1:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 102
    iget-object v1, p0, Lcom/android/phone/DsaPhoneNumber;->mRawNumber:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/DsaPhoneNumber;->mPhone2:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 104
    iget-object v1, p0, Lcom/android/phone/DsaPhoneNumber;->mPhone1:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/DsaPhoneNumber;->mPhone1:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/android/phone/DsaPhoneNumber;->mRawNumber:[Ljava/lang/String;

    aput-object v3, v1, v4

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/android/phone/DsaPhoneNumber;->mPhone2:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/DsaPhoneNumber;->mPhone2:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 110
    iget-object v1, p0, Lcom/android/phone/DsaPhoneNumber;->mRawNumber:[Ljava/lang/String;

    aput-object v3, v1, v5

    .line 113
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 114
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "DsaExtraInitial"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/DsaPhoneNumber;->mIsFirst:Z

    .line 115
    const-string v1, "SecSetupWizard"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/phone/DsaPhoneNumber;->mFromSetupWizard:Z

    .line 116
    const-string v1, "DsaPhoneNumber"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsFirst : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/phone/DsaPhoneNumber;->mIsFirst:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const-string v1, "DsaPhoneNumber"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SecSetupWizard : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SecSetupWizard"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const v1, 0x7f0900c2

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/phone/DsaPhoneNumber;->mSoftLayout:Landroid/widget/LinearLayout;

    .line 120
    const v1, 0x7f0900bf

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/phone/DsaPhoneNumber;->mSoftLayoutSW:Landroid/widget/RelativeLayout;

    .line 122
    iget-boolean v1, p0, Lcom/android/phone/DsaPhoneNumber;->mIsFirst:Z

    if-eqz v1, :cond_3

    .line 124
    const v1, 0x7f0900c3

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/DsaPhoneNumber;->mLeftSoftBtn:Landroid/widget/Button;

    .line 125
    iget-object v1, p0, Lcom/android/phone/DsaPhoneNumber;->mLeftSoftBtn:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 126
    const v1, 0x7f0900c4

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/DsaPhoneNumber;->mRightSoftBtn:Landroid/widget/Button;

    .line 127
    iget-object v1, p0, Lcom/android/phone/DsaPhoneNumber;->mRightSoftBtn:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 137
    :goto_0
    iget-object v1, p0, Lcom/android/phone/DsaPhoneNumber;->mLeftSoftBtn:Landroid/widget/Button;

    new-instance v2, Lcom/android/phone/DsaPhoneNumber$1;

    invoke-direct {v2, p0}, Lcom/android/phone/DsaPhoneNumber$1;-><init>(Lcom/android/phone/DsaPhoneNumber;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v1, p0, Lcom/android/phone/DsaPhoneNumber;->mRightSoftBtn:Landroid/widget/Button;

    new-instance v2, Lcom/android/phone/DsaPhoneNumber$2;

    invoke-direct {v2, p0}, Lcom/android/phone/DsaPhoneNumber$2;-><init>(Lcom/android/phone/DsaPhoneNumber;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    invoke-direct {p0}, Lcom/android/phone/DsaPhoneNumber;->initContentView()V

    .line 153
    const-string v1, "extra_init_dialog"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 155
    const-string v1, "DsaPhoneNumber"

    const-string v2, "EXTRA_INIT_DIALOG"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dsa_init_process"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 159
    :cond_2
    return-void

    .line 131
    :cond_3
    const v1, 0x7f0900c0

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/DsaPhoneNumber;->mLeftSoftBtn:Landroid/widget/Button;

    .line 132
    iget-object v1, p0, Lcom/android/phone/DsaPhoneNumber;->mLeftSoftBtn:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 133
    const v1, 0x7f0900c1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/DsaPhoneNumber;->mRightSoftBtn:Landroid/widget/Button;

    .line 134
    iget-object v1, p0, Lcom/android/phone/DsaPhoneNumber;->mRightSoftBtn:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .parameter "menu"

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x2

    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 494
    const-string v2, "DsaPhoneNumber"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreateOptionsMenu : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/phone/DsaPhoneNumber;->mIsFirst:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/phone/DsaPhoneNumber;->mFromSetupWizard:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-boolean v2, p0, Lcom/android/phone/DsaPhoneNumber;->mIsFirst:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/phone/DsaPhoneNumber;->mFromSetupWizard:Z

    if-nez v2, :cond_1

    .line 498
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 499
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 500
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 503
    :cond_0
    const v2, 0x7f0e02d5

    invoke-interface {p1, v1, v5, v5, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 505
    const v2, 0x7f0e02d4

    invoke-interface {p1, v1, v6, v5, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 508
    const v1, 0x7f0e073e

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 510
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/DsaPhoneNumber;->mMenuOk:Landroid/view/MenuItem;

    .line 511
    iget-object v1, p0, Lcom/android/phone/DsaPhoneNumber;->mMenuOk:Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/android/phone/DsaPhoneNumber;->mLeftSoftBtn:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 513
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    .line 515
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :cond_1
    return v1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 208
    const-string v0, "DsaPhoneNumber"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 211
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 215
    const-string v2, "DsaPhoneNumber"

    const-string v3, "onKeyUp"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    .line 218
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 219
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "extra_init_dialog"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 221
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dsa_init_process"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 223
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 224
    .local v0, i:Landroid/content/Intent;
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.NetworkManagement"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    const-string v2, "DsaPhoneNumber"

    const-string v3, "Network Management calling startActivity"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const-string v2, "com.android.settings.networkmanagement"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 229
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 230
    const/4 v2, 0x1

    .line 233
    .end local v0           #i:Landroid/content/Intent;
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return v2

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 520
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 522
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 535
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 524
    :sswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 528
    :sswitch_1
    invoke-virtual {p0, v2}, Lcom/android/phone/DsaPhoneNumber;->softkeyRun1(Landroid/view/View;)V

    goto :goto_0

    .line 532
    :sswitch_2
    invoke-virtual {p0, v2}, Lcom/android/phone/DsaPhoneNumber;->softkeyRun2(Landroid/view/View;)V

    goto :goto_0

    .line 522
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_1
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method public onResume()V
    .locals 6

    .prologue
    const v5, 0x7f0e07b9

    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 163
    const-string v0, "DsaPhoneNumber"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 166
    iget-boolean v0, p0, Lcom/android/phone/DsaPhoneNumber;->mFromSetupWizard:Z

    if-eqz v0, :cond_2

    .line 168
    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber;->mLeftSoftBtn:Landroid/widget/Button;

    const v1, 0x7f0e07ba

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 169
    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber;->mRightSoftBtn:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 170
    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber;->mSoftLayoutSW:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber;->mSoftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 186
    :goto_0
    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber;->mSim1value:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber;->mSim2value:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-nez v0, :cond_5

    .line 188
    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/DsaPhoneNumber;->mIsFirst:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/phone/DsaPhoneNumber;->mFromSetupWizard:Z

    if-eqz v0, :cond_4

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber;->mRightSoftBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 191
    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber;->mLeftSoftBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 204
    :goto_1
    return-void

    .line 173
    :cond_2
    iget-boolean v0, p0, Lcom/android/phone/DsaPhoneNumber;->mIsFirst:Z

    if-eqz v0, :cond_3

    .line 175
    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber;->mLeftSoftBtn:Landroid/widget/Button;

    const v1, 0x7f0e002e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 176
    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber;->mRightSoftBtn:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    .line 177
    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber;->mSoftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber;->mSoftLayoutSW:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 182
    :cond_3
    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber;->mSoftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber;->mSoftLayoutSW:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 195
    :cond_4
    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber;->mLeftSoftBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 196
    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber;->mRightSoftBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1

    .line 201
    :cond_5
    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber;->mLeftSoftBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 202
    iget-object v0, p0, Lcom/android/phone/DsaPhoneNumber;->mRightSoftBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1
.end method

.method public softkeyRun1(Landroid/view/View;)V
    .locals 7
    .parameter "target"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 317
    iget-boolean v2, p0, Lcom/android/phone/DsaPhoneNumber;->mIsFirst:Z

    if-eqz v2, :cond_1

    .line 319
    const-string v2, "DsaPhoneNumber"

    const-string v3, "softkeyRun1[Cancel]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dsa_init_process"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 321
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 322
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "extra_init_dialog"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 324
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 325
    .local v0, i:Landroid/content/Intent;
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.NetworkManagement"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    const-string v2, "DsaPhoneNumber"

    const-string v3, "Network Management calling startActivity"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const-string v2, "com.android.settings.networkmanagement"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 329
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 330
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 367
    .end local v0           #i:Landroid/content/Intent;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 368
    return-void

    .line 333
    :cond_1
    iget-boolean v2, p0, Lcom/android/phone/DsaPhoneNumber;->mFromSetupWizard:Z

    if-eqz v2, :cond_2

    .line 335
    const-string v2, "DsaPhoneNumber"

    const-string v3, "softkeyRun1[Previous]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dsa_init_process"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 353
    :cond_2
    const-string v2, "DsaPhoneNumber"

    const-string v3, "softkeyRun1[Save]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v2, p0, Lcom/android/phone/DsaPhoneNumber;->mSim1value:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/phone/DsaPhoneNumber;->mSimnumber:[Ljava/lang/String;

    aget-object v3, v3, v5

    if-eq v2, v3, :cond_3

    .line 355
    iget-object v2, p0, Lcom/android/phone/DsaPhoneNumber;->mEdit:Landroid/content/SharedPreferences$Editor;

    const-string v3, "dsa_phone_number_sim1"

    iget-object v4, p0, Lcom/android/phone/DsaPhoneNumber;->mSim1value:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 356
    iget-object v2, p0, Lcom/android/phone/DsaPhoneNumber;->mEdit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 357
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Change SIM 1 number : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/DsaPhoneNumber;->mSimnumber:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/DsaPhoneNumber;->mSim1value:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/DsaPhoneNumber;->dsaLog(Ljava/lang/String;)V

    .line 360
    :cond_3
    iget-object v2, p0, Lcom/android/phone/DsaPhoneNumber;->mSim2value:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/phone/DsaPhoneNumber;->mSimnumber:[Ljava/lang/String;

    aget-object v3, v3, v6

    if-eq v2, v3, :cond_0

    .line 361
    iget-object v2, p0, Lcom/android/phone/DsaPhoneNumber;->mEdit:Landroid/content/SharedPreferences$Editor;

    const-string v3, "dsa_phone_number_sim2"

    iget-object v4, p0, Lcom/android/phone/DsaPhoneNumber;->mSim2value:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 362
    iget-object v2, p0, Lcom/android/phone/DsaPhoneNumber;->mEdit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 363
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Change SIM 2 number : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/DsaPhoneNumber;->mSimnumber:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/DsaPhoneNumber;->mSim2value:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/DsaPhoneNumber;->dsaLog(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public softkeyRun2(Landroid/view/View;)V
    .locals 7
    .parameter "target"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 371
    iget-boolean v2, p0, Lcom/android/phone/DsaPhoneNumber;->mIsFirst:Z

    if-eqz v2, :cond_3

    .line 373
    const-string v2, "DsaPhoneNumber"

    const-string v3, "softkeyRun2[Next]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-object v2, p0, Lcom/android/phone/DsaPhoneNumber;->mSim1value:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/phone/DsaPhoneNumber;->mSimnumber:[Ljava/lang/String;

    aget-object v3, v3, v6

    if-eq v2, v3, :cond_0

    .line 376
    iget-object v2, p0, Lcom/android/phone/DsaPhoneNumber;->mEdit:Landroid/content/SharedPreferences$Editor;

    const-string v3, "dsa_phone_number_sim1"

    iget-object v4, p0, Lcom/android/phone/DsaPhoneNumber;->mSim1value:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 377
    iget-object v2, p0, Lcom/android/phone/DsaPhoneNumber;->mEdit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 378
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Change SIM 1 number : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/DsaPhoneNumber;->mSimnumber:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/DsaPhoneNumber;->mSim1value:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/DsaPhoneNumber;->dsaLog(Ljava/lang/String;)V

    .line 381
    :cond_0
    iget-object v2, p0, Lcom/android/phone/DsaPhoneNumber;->mSim2value:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/phone/DsaPhoneNumber;->mSimnumber:[Ljava/lang/String;

    aget-object v3, v3, v5

    if-eq v2, v3, :cond_1

    .line 382
    iget-object v2, p0, Lcom/android/phone/DsaPhoneNumber;->mEdit:Landroid/content/SharedPreferences$Editor;

    const-string v3, "dsa_phone_number_sim2"

    iget-object v4, p0, Lcom/android/phone/DsaPhoneNumber;->mSim2value:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 383
    iget-object v2, p0, Lcom/android/phone/DsaPhoneNumber;->mEdit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 384
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Change SIM 2 number : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/DsaPhoneNumber;->mSimnumber:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/DsaPhoneNumber;->mSim2value:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/DsaPhoneNumber;->dsaLog(Ljava/lang/String;)V

    .line 388
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 390
    .local v1, myIntent:Landroid/content/Intent;
    const-string v2, "DsaExtraInitial"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 391
    const-string v2, "com.android.phone.DsaSelectSimCard"

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 392
    const/high16 v2, 0x4000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 394
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 395
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "extra_init_dialog"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 397
    const-string v2, "extra_init_dialog"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 400
    :cond_2
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 443
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #myIntent:Landroid/content/Intent;
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 444
    return-void

    .line 404
    :cond_3
    iget-boolean v2, p0, Lcom/android/phone/DsaPhoneNumber;->mFromSetupWizard:Z

    if-eqz v2, :cond_6

    .line 406
    const-string v2, "DsaPhoneNumber"

    const-string v3, "softkeyRun2[Next]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v2, p0, Lcom/android/phone/DsaPhoneNumber;->mSim1value:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/phone/DsaPhoneNumber;->mSimnumber:[Ljava/lang/String;

    aget-object v3, v3, v6

    if-eq v2, v3, :cond_4

    .line 409
    iget-object v2, p0, Lcom/android/phone/DsaPhoneNumber;->mEdit:Landroid/content/SharedPreferences$Editor;

    const-string v3, "dsa_phone_number_sim1"

    iget-object v4, p0, Lcom/android/phone/DsaPhoneNumber;->mSim1value:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 410
    iget-object v2, p0, Lcom/android/phone/DsaPhoneNumber;->mEdit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 411
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Change SIM 1 number : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/DsaPhoneNumber;->mSimnumber:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/DsaPhoneNumber;->mSim1value:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/DsaPhoneNumber;->dsaLog(Ljava/lang/String;)V

    .line 414
    :cond_4
    iget-object v2, p0, Lcom/android/phone/DsaPhoneNumber;->mSim2value:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/phone/DsaPhoneNumber;->mSimnumber:[Ljava/lang/String;

    aget-object v3, v3, v5

    if-eq v2, v3, :cond_5

    .line 415
    iget-object v2, p0, Lcom/android/phone/DsaPhoneNumber;->mEdit:Landroid/content/SharedPreferences$Editor;

    const-string v3, "dsa_phone_number_sim2"

    iget-object v4, p0, Lcom/android/phone/DsaPhoneNumber;->mSim2value:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 416
    iget-object v2, p0, Lcom/android/phone/DsaPhoneNumber;->mEdit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 417
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Change SIM 2 number : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/DsaPhoneNumber;->mSimnumber:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/DsaPhoneNumber;->mSim2value:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/DsaPhoneNumber;->dsaLog(Ljava/lang/String;)V

    .line 436
    :cond_5
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setResult(I)V

    goto/16 :goto_0

    .line 440
    :cond_6
    const-string v2, "DsaPhoneNumber"

    const-string v3, "softkeyRun2[Cancel]"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
