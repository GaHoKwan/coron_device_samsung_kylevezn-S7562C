.class public Lcom/android/phone/PreferredNetworkDetailView;
.super Landroid/preference/PreferenceActivity;
.source "PreferredNetworkDetailView.java"


# instance fields
.field private actionType:I

.field final app:Lcom/android/phone/PhoneApp;

.field editDialog:Landroid/widget/EditText;

.field mGsmAct:Landroid/preference/CheckBoxPreference;

.field mGsmCompactAct:Landroid/preference/CheckBoxPreference;

.field mHandler:Landroid/os/Handler;

.field mNetworkId:Landroid/preference/Preference;

.field mNetworkIndex:Landroid/preference/Preference;

.field mNetworkName:Landroid/preference/Preference;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field mUtranAct:Landroid/preference/CheckBoxPreference;

.field private oldId:Ljava/lang/String;

.field private oldIndex:I

.field private oldName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 134
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->app:Lcom/android/phone/PhoneApp;

    .line 140
    new-instance v0, Lcom/android/phone/PreferredNetworkDetailView$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PreferredNetworkDetailView$1;-><init>(Lcom/android/phone/PreferredNetworkDetailView;)V

    iput-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/PreferredNetworkDetailView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->actionType:I

    return v0
.end method

.method private savePreferredNetworkInfo(ILjava/lang/String;Ljava/lang/String;IIII)V
    .locals 10
    .parameter "index"
    .parameter "operator"
    .parameter "plmn"
    .parameter "gsmAct"
    .parameter "gsmCompactAct"
    .parameter "utranAct"
    .parameter "action"

    .prologue
    .line 463
    const-string v1, "PreferredNetworksDetailView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "savePreferredNetworkInfo Index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Operator: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "PLMN: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "GSM ACT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "GSM Compact ACT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Utran ACT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/PreferredNetworkDetailView;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-interface/range {v1 .. v9}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkList(ILjava/lang/String;Ljava/lang/String;IIIILandroid/os/Message;)V

    .line 479
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 167
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 169
    const v1, 0x7f040072

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 173
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->app:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->phone:[Lcom/android/internal/telephony/Phone;

    aget-object v1, v1, v4

    iput-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 177
    const-string v1, "network_index"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mNetworkIndex:Landroid/preference/Preference;

    .line 179
    const-string v1, "network_name"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mNetworkName:Landroid/preference/Preference;

    .line 181
    const-string v1, "network_id"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mNetworkId:Landroid/preference/Preference;

    .line 183
    const-string v1, "gsm_act"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmAct:Landroid/preference/CheckBoxPreference;

    .line 185
    const-string v1, "gsm_compact_act"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmCompactAct:Landroid/preference/CheckBoxPreference;

    .line 187
    const-string v1, "utran_act"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mUtranAct:Landroid/preference/CheckBoxPreference;

    .line 191
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mNetworkIndex:Landroid/preference/Preference;

    new-instance v2, Lcom/android/phone/PreferredNetworkDetailView$2;

    invoke-direct {v2, p0}, Lcom/android/phone/PreferredNetworkDetailView$2;-><init>(Lcom/android/phone/PreferredNetworkDetailView;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 204
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mNetworkName:Landroid/preference/Preference;

    new-instance v2, Lcom/android/phone/PreferredNetworkDetailView$3;

    invoke-direct {v2, p0}, Lcom/android/phone/PreferredNetworkDetailView$3;-><init>(Lcom/android/phone/PreferredNetworkDetailView;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 221
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mNetworkId:Landroid/preference/Preference;

    new-instance v2, Lcom/android/phone/PreferredNetworkDetailView$4;

    invoke-direct {v2, p0}, Lcom/android/phone/PreferredNetworkDetailView$4;-><init>(Lcom/android/phone/PreferredNetworkDetailView;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 238
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmAct:Landroid/preference/CheckBoxPreference;

    new-instance v2, Lcom/android/phone/PreferredNetworkDetailView$5;

    invoke-direct {v2, p0}, Lcom/android/phone/PreferredNetworkDetailView$5;-><init>(Lcom/android/phone/PreferredNetworkDetailView;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 256
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmCompactAct:Landroid/preference/CheckBoxPreference;

    new-instance v2, Lcom/android/phone/PreferredNetworkDetailView$6;

    invoke-direct {v2, p0}, Lcom/android/phone/PreferredNetworkDetailView$6;-><init>(Lcom/android/phone/PreferredNetworkDetailView;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 273
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mUtranAct:Landroid/preference/CheckBoxPreference;

    new-instance v2, Lcom/android/phone/PreferredNetworkDetailView$7;

    invoke-direct {v2, p0}, Lcom/android/phone/PreferredNetworkDetailView$7;-><init>(Lcom/android/phone/PreferredNetworkDetailView;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 290
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 292
    .local v0, i:Landroid/content/Intent;
    const-string v1, "type_action"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->actionType:I

    .line 294
    const-string v1, "index"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->oldIndex:I

    .line 296
    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->oldName:Ljava/lang/String;

    .line 297
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->oldName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 298
    const-string v1, ""

    iput-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->oldName:Ljava/lang/String;

    .line 300
    :cond_0
    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->oldId:Ljava/lang/String;

    .line 301
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->oldName:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 302
    const-string v1, ""

    iput-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->oldName:Ljava/lang/String;

    .line 304
    :cond_1
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mNetworkIndex:Landroid/preference/Preference;

    iget v2, p0, Lcom/android/phone/PreferredNetworkDetailView;->oldIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 306
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mNetworkName:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/phone/PreferredNetworkDetailView;->oldName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 308
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mNetworkId:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/android/phone/PreferredNetworkDetailView;->oldId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 312
    const-string v1, "act_gsm"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 314
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmAct:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0e06ce

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 316
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 327
    :goto_0
    const-string v1, "act_gsm_compact"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_3

    .line 329
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmCompactAct:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0e06d1

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 331
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmCompactAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 343
    :goto_1
    const-string v1, "act_utran"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_4

    .line 345
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mUtranAct:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0e06d4

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 347
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mUtranAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 357
    :goto_2
    return-void

    .line 319
    :cond_2
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmAct:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0e06cd

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 321
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 335
    :cond_3
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmCompactAct:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0e06d0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 337
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmCompactAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_1

    .line 351
    :cond_4
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mUtranAct:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0e06d3

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 353
    iget-object v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->mUtranAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_2
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 10
    .parameter "id"

    .prologue
    const v9, 0x7f0e0087

    .line 367
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 369
    .local v2, mContext:Landroid/content/Context;
    const-string v5, "layout_inflater"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 371
    .local v4, mInflater:Landroid/view/LayoutInflater;
    const v5, 0x7f040074

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 373
    .local v0, layout:Landroid/view/View;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 375
    .local v1, mBuilder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 377
    const v5, 0x7f0901e8

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/android/phone/PreferredNetworkDetailView;->editDialog:Landroid/widget/EditText;

    .line 378
    iget-object v5, p0, Lcom/android/phone/PreferredNetworkDetailView;->editDialog:Landroid/widget/EditText;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 380
    packed-switch p1, :pswitch_data_0

    .line 453
    :goto_0
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 455
    .local v3, mDialog:Landroid/app/Dialog;
    return-object v3

    .line 384
    .end local v3           #mDialog:Landroid/app/Dialog;
    :pswitch_0
    iget-object v5, p0, Lcom/android/phone/PreferredNetworkDetailView;->editDialog:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/phone/PreferredNetworkDetailView;->mNetworkIndex:Landroid/preference/Preference;

    invoke-virtual {v6}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    const v5, 0x7f0e06c8

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/phone/PreferredNetworkDetailView$8;

    invoke-direct {v6, p0}, Lcom/android/phone/PreferredNetworkDetailView$8;-><init>(Lcom/android/phone/PreferredNetworkDetailView;)V

    invoke-virtual {v5, v9, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 404
    :pswitch_1
    iget-object v5, p0, Lcom/android/phone/PreferredNetworkDetailView;->editDialog:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/phone/PreferredNetworkDetailView;->mNetworkName:Landroid/preference/Preference;

    invoke-virtual {v6}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    const v5, 0x7f0e06c9

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/phone/PreferredNetworkDetailView$9;

    invoke-direct {v6, p0}, Lcom/android/phone/PreferredNetworkDetailView$9;-><init>(Lcom/android/phone/PreferredNetworkDetailView;)V

    invoke-virtual {v5, v9, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 424
    :pswitch_2
    iget-object v5, p0, Lcom/android/phone/PreferredNetworkDetailView;->editDialog:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/android/phone/PreferredNetworkDetailView;->mNetworkId:Landroid/preference/Preference;

    invoke-virtual {v6}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 425
    iget-object v5, p0, Lcom/android/phone/PreferredNetworkDetailView;->editDialog:Landroid/widget/EditText;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setInputType(I)V

    .line 427
    iget-object v5, p0, Lcom/android/phone/PreferredNetworkDetailView;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/phone/PreferredNetworkDetailView$10;

    invoke-direct {v6, p0}, Lcom/android/phone/PreferredNetworkDetailView$10;-><init>(Lcom/android/phone/PreferredNetworkDetailView;)V

    const-wide/16 v7, 0xc8

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 434
    const v5, 0x7f0e06ca

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 435
    const v5, 0x7f0e06d5

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 436
    new-instance v5, Lcom/android/phone/PreferredNetworkDetailView$11;

    invoke-direct {v5, p0}, Lcom/android/phone/PreferredNetworkDetailView$11;-><init>(Lcom/android/phone/PreferredNetworkDetailView;)V

    invoke-virtual {v1, v9, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 380
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    .line 489
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 491
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f110004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 493
    iget v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->actionType:I

    if-ne v0, v2, :cond_0

    .line 494
    const v0, 0x7f09019d

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 497
    :cond_0
    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 11
    .parameter "item"

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x3

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 507
    const-string v0, "PreferredNetworksDetailView"

    const-string v1, "onOptionsItemSelected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 596
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v9

    :goto_1
    return v9

    .line 513
    :sswitch_0
    const-string v0, "PreferredNetworksDetailView"

    const-string v1, "MENU_DELETE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iget v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->oldIndex:I

    iget-object v2, p0, Lcom/android/phone/PreferredNetworkDetailView;->oldName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    move v4, v9

    :goto_2
    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmCompactAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    move v5, v9

    :goto_3
    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->mUtranAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    move v6, v9

    :goto_4
    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/phone/PreferredNetworkDetailView;->savePreferredNetworkInfo(ILjava/lang/String;Ljava/lang/String;IIII)V

    .line 527
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e06dc

    invoke-static {v0, v1, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 529
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :cond_0
    move v4, v10

    .line 515
    goto :goto_2

    :cond_1
    move v5, v10

    goto :goto_3

    :cond_2
    move v6, v10

    goto :goto_4

    .line 535
    :sswitch_1
    const-string v0, "PreferredNetworksDetailView"

    const-string v1, "MENU_SAVE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    const-string v0, "PreferredNetworksDetailView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/PreferredNetworkDetailView;->actionType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->mNetworkId:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 539
    const-string v0, "PreferredNetworksDetailView"

    const-string v1, "ok"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e06d6

    invoke-static {v0, v1, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 543
    :cond_3
    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->mNetworkId:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    .line 544
    .local v8, length:I
    const/4 v0, 0x5

    if-lt v8, v0, :cond_4

    const/4 v0, 0x6

    if-le v8, v0, :cond_5

    .line 545
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 546
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e06dd

    invoke-static {v0, v1, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 552
    :cond_5
    iget v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->actionType:I

    if-eq v0, v9, :cond_6

    .line 553
    iget v1, p0, Lcom/android/phone/PreferredNetworkDetailView;->oldIndex:I

    iget-object v2, p0, Lcom/android/phone/PreferredNetworkDetailView;->oldName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_7

    move v4, v9

    :goto_5
    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmCompactAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_8

    move v5, v9

    :goto_6
    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->mUtranAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_9

    move v6, v9

    :goto_7
    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/phone/PreferredNetworkDetailView;->savePreferredNetworkInfo(ILjava/lang/String;Ljava/lang/String;IIII)V

    .line 564
    :cond_6
    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->mNetworkIndex:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->mNetworkName:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->mNetworkId:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_a

    move v4, v9

    :goto_8
    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->mGsmCompactAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_b

    move v5, v9

    :goto_9
    iget-object v0, p0, Lcom/android/phone/PreferredNetworkDetailView;->mUtranAct:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_c

    move v6, v9

    :goto_a
    iget v7, p0, Lcom/android/phone/PreferredNetworkDetailView;->actionType:I

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/phone/PreferredNetworkDetailView;->savePreferredNetworkInfo(ILjava/lang/String;Ljava/lang/String;IIII)V

    .line 578
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 580
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0e06db

    invoke-static {v0, v1, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    :cond_7
    move v4, v10

    .line 553
    goto :goto_5

    :cond_8
    move v5, v10

    goto :goto_6

    :cond_9
    move v6, v10

    goto :goto_7

    :cond_a
    move v4, v10

    .line 564
    goto :goto_8

    :cond_b
    move v5, v10

    goto :goto_9

    :cond_c
    move v6, v10

    goto :goto_a

    .line 586
    .end local v8           #length:I
    :sswitch_2
    const-string v0, "PreferredNetworksDetailView"

    const-string v1, "MENU_DISCARD"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1

    .line 509
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09019d -> :sswitch_0
        0x7f0902e6 -> :sswitch_1
        0x7f0902e7 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 608
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 610
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 618
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 620
    return-void
.end method
