.class public Lcom/android/phone/DsaSelectSimCard;
.super Landroid/app/Activity;
.source "DsaSelectSimCard.java"


# static fields
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

.field items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCurrentStatus:I

.field private mDialogPause:Z

.field private mFromSetupWizard:Z

.field private mIsFirst:Z

.field private mLeftSoftBtn:Landroid/widget/Button;

.field private mListView:Landroid/widget/ListView;

.field mListViewOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mRightSoftBtn:Landroid/widget/Button;

.field private mSoftLayout:Landroid/widget/LinearLayout;

.field private mSoftLayoutSW:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/DsaSelectSimCard;->mWaitDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 85
    iput v1, p0, Lcom/android/phone/DsaSelectSimCard;->mCurrentStatus:I

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/DsaSelectSimCard;->items:Ljava/util/ArrayList;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/DsaSelectSimCard;->dsaNumbers:Ljava/util/ArrayList;

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/DsaSelectSimCard;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 113
    iput-boolean v1, p0, Lcom/android/phone/DsaSelectSimCard;->mDialogPause:Z

    .line 590
    new-instance v0, Lcom/android/phone/DsaSelectSimCard$10;

    invoke-direct {v0, p0}, Lcom/android/phone/DsaSelectSimCard$10;-><init>(Lcom/android/phone/DsaSelectSimCard;)V

    iput-object v0, p0, Lcom/android/phone/DsaSelectSimCard;->mListViewOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/DsaSelectSimCard;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/android/phone/DsaSelectSimCard;->mCurrentStatus:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/phone/DsaSelectSimCard;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput p1, p0, Lcom/android/phone/DsaSelectSimCard;->mCurrentStatus:I

    return p1
.end method

.method private dsaLog(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 587
    const-string v0, "DsaSelectSimCard"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    return-void
.end method


# virtual methods
.method public dismissDialog()V
    .locals 2

    .prologue
    .line 455
    const-string v0, "DsaSelectSimCard"

    const-string v1, "dismissDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    sget-object v0, Lcom/android/phone/DsaSelectSimCard;->mWaitDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 458
    sget-object v0, Lcom/android/phone/DsaSelectSimCard;->mWaitDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 459
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/DsaSelectSimCard;->mWaitDialog:Landroid/app/ProgressDialog;

    .line 461
    :cond_0
    return-void
.end method

.method public displayDialog(I)V
    .locals 7
    .parameter "id"

    .prologue
    const v6, 0x7f0e07c2

    const v5, 0x7f0e0081

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 415
    const-string v0, "DsaSelectSimCard"

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

    .line 416
    iput-boolean v3, p0, Lcom/android/phone/DsaSelectSimCard;->mDialogPause:Z

    .line 418
    packed-switch p1, :pswitch_data_0

    .line 452
    :goto_0
    return-void

    .line 420
    :pswitch_0
    invoke-virtual {p0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p0, v0, v1, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    sput-object v0, Lcom/android/phone/DsaSelectSimCard;->mWaitDialog:Landroid/app/ProgressDialog;

    .line 421
    sget-object v0, Lcom/android/phone/DsaSelectSimCard;->mWaitDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 422
    sget-object v0, Lcom/android/phone/DsaSelectSimCard;->mWaitDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/android/phone/DsaSelectSimCard$4;

    invoke-direct {v1, p0}, Lcom/android/phone/DsaSelectSimCard$4;-><init>(Lcom/android/phone/DsaSelectSimCard;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto :goto_0

    .line 436
    :pswitch_1
    invoke-virtual {p0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p0, v0, v1, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    sput-object v0, Lcom/android/phone/DsaSelectSimCard;->mWaitDialog:Landroid/app/ProgressDialog;

    .line 437
    sget-object v0, Lcom/android/phone/DsaSelectSimCard;->mWaitDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 438
    sget-object v0, Lcom/android/phone/DsaSelectSimCard;->mWaitDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/android/phone/DsaSelectSimCard$5;

    invoke-direct {v1, p0}, Lcom/android/phone/DsaSelectSimCard$5;-><init>(Lcom/android/phone/DsaSelectSimCard;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto :goto_0

    .line 418
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public displayResultDialog()V
    .locals 14

    .prologue
    const v13, 0x7f0e0235

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 464
    const-string v9, "DsaSelectSimCard"

    const-string v10, "displayResultDialog"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    invoke-virtual {p0}, Lcom/android/phone/DsaSelectSimCard;->dismissDialog()V

    .line 466
    iput-boolean v11, p0, Lcom/android/phone/DsaSelectSimCard;->mDialogPause:Z

    .line 468
    new-instance v0, Lcom/android/phone/DsaResult;

    invoke-direct {v0}, Lcom/android/phone/DsaResult;-><init>()V

    .line 469
    .local v0, dsaResult:Lcom/android/phone/DsaResult;
    invoke-virtual {v0}, Lcom/android/phone/DsaResult;->CheckDsaResult()Z

    move-result v5

    .line 471
    .local v5, result:Z
    if-eqz v5, :cond_1

    .line 473
    const-string v9, "DsaSelectSimCard"

    const-string v10, "displayResultDialog [Activated Success]"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    const-string v9, "dsa_main"

    invoke-virtual {p0, v9, v11}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 476
    .local v4, pref:Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v9

    iget-object v9, v9, Lcom/android/phone/PhoneApp;->phone:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v9, v11

    .line 478
    .local v3, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "dsa_is_activate"

    invoke-static {v9, v10, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 480
    invoke-virtual {v0, v12}, Lcom/android/phone/DsaResult;->makeResultInformation(I)Ljava/lang/String;

    move-result-object v6

    .line 482
    .local v6, successInform:Ljava/lang/String;
    const-string v9, "dsa_result_dialog_success_is_checked"

    invoke-interface {v4, v9, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_0

    .line 484
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 485
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v9, 0x7f04002a

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 486
    .local v8, view:Landroid/view/View;
    const v9, 0x7f0900c5

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 487
    .local v7, successTextView:Landroid/widget/TextView;
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 489
    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-direct {v9, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v10, 0x7f0e07c2

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    new-instance v10, Lcom/android/phone/DsaSelectSimCard$7;

    invoke-direct {v10, p0}, Lcom/android/phone/DsaSelectSimCard$7;-><init>(Lcom/android/phone/DsaSelectSimCard;)V

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {p0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/android/phone/DsaSelectSimCard$6;

    invoke-direct {v11, p0}, Lcom/android/phone/DsaSelectSimCard$6;-><init>(Lcom/android/phone/DsaSelectSimCard;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 565
    .end local v2           #inflater:Landroid/view/LayoutInflater;
    .end local v3           #phone:Lcom/android/internal/telephony/Phone;
    .end local v4           #pref:Landroid/content/SharedPreferences;
    .end local v6           #successInform:Ljava/lang/String;
    .end local v7           #successTextView:Landroid/widget/TextView;
    .end local v8           #view:Landroid/view/View;
    :goto_0
    return-void

    .line 524
    .restart local v3       #phone:Lcom/android/internal/telephony/Phone;
    .restart local v4       #pref:Landroid/content/SharedPreferences;
    .restart local v6       #successInform:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 529
    .end local v3           #phone:Lcom/android/internal/telephony/Phone;
    .end local v4           #pref:Landroid/content/SharedPreferences;
    .end local v6           #successInform:Ljava/lang/String;
    :cond_1
    const-string v9, "DsaSelectSimCard"

    const-string v10, "displayResultDialog [Activated Failed]"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    invoke-virtual {v0, v11}, Lcom/android/phone/DsaResult;->makeResultInformation(I)Ljava/lang/String;

    move-result-object v1

    .line 532
    .local v1, failInform:Ljava/lang/String;
    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-direct {v9, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v10, 0x7f0e07c3

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    new-instance v10, Lcom/android/phone/DsaSelectSimCard$9;

    invoke-direct {v10, p0}, Lcom/android/phone/DsaSelectSimCard$9;-><init>(Lcom/android/phone/DsaSelectSimCard;)V

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {p0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/android/phone/DsaSelectSimCard$8;

    invoke-direct {v11, p0}, Lcom/android/phone/DsaSelectSimCard$8;-><init>(Lcom/android/phone/DsaSelectSimCard;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const v10, 0x7f0e07c0

    const/16 v9, 0x8

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 116
    const-string v3, "DsaSelectSimCard"

    const-string v4, "onCreate"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 119
    const v3, 0x7f04002b

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setContentView(I)V

    .line 121
    const v3, 0x7f0e07bc

    invoke-virtual {p0, v3}, Landroid/app/Activity;->setTitle(I)V

    .line 125
    iget-object v3, p0, Lcom/android/phone/DsaSelectSimCard;->items:Ljava/util/ArrayList;

    const v4, 0x7f0e07bf

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v3, p0, Lcom/android/phone/DsaSelectSimCard;->items:Ljava/util/ArrayList;

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0, v10, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v3, p0, Lcom/android/phone/DsaSelectSimCard;->items:Ljava/util/ArrayList;

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0, v10, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v3, 0x7f040093

    iget-object v4, p0, Lcom/android/phone/DsaSelectSimCard;->items:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 133
    .local v0, Adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v3, 0x7f0900c6

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/android/phone/DsaSelectSimCard;->mListView:Landroid/widget/ListView;

    .line 134
    iget-object v3, p0, Lcom/android/phone/DsaSelectSimCard;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v6}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 138
    iget-object v3, p0, Lcom/android/phone/DsaSelectSimCard;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 139
    iget-object v3, p0, Lcom/android/phone/DsaSelectSimCard;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/android/phone/DsaSelectSimCard;->mListViewOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 142
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 143
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "DsaExtraInitial"

    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/phone/DsaSelectSimCard;->mIsFirst:Z

    .line 144
    const-string v3, "SecSetupWizard"

    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/phone/DsaSelectSimCard;->mFromSetupWizard:Z

    .line 145
    const-string v3, "DsaSelectSimCard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mIsFirst : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/phone/DsaSelectSimCard;->mIsFirst:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mFromSetupWizard : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/phone/DsaSelectSimCard;->mFromSetupWizard:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const v3, 0x7f0900c2

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/phone/DsaSelectSimCard;->mSoftLayout:Landroid/widget/LinearLayout;

    .line 148
    const v3, 0x7f0900bf

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/android/phone/DsaSelectSimCard;->mSoftLayoutSW:Landroid/widget/RelativeLayout;

    .line 150
    iget-boolean v3, p0, Lcom/android/phone/DsaSelectSimCard;->mIsFirst:Z

    if-eqz v3, :cond_2

    .line 152
    const v3, 0x7f0900c9

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/phone/DsaSelectSimCard;->mLeftSoftBtn:Landroid/widget/Button;

    .line 153
    iget-object v3, p0, Lcom/android/phone/DsaSelectSimCard;->mLeftSoftBtn:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 154
    const v3, 0x7f0900ca

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/phone/DsaSelectSimCard;->mRightSoftBtn:Landroid/widget/Button;

    .line 155
    iget-object v3, p0, Lcom/android/phone/DsaSelectSimCard;->mRightSoftBtn:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 165
    :goto_0
    iget-object v3, p0, Lcom/android/phone/DsaSelectSimCard;->mLeftSoftBtn:Landroid/widget/Button;

    new-instance v4, Lcom/android/phone/DsaSelectSimCard$1;

    invoke-direct {v4, p0}, Lcom/android/phone/DsaSelectSimCard$1;-><init>(Lcom/android/phone/DsaSelectSimCard;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v3, p0, Lcom/android/phone/DsaSelectSimCard;->mRightSoftBtn:Landroid/widget/Button;

    new-instance v4, Lcom/android/phone/DsaSelectSimCard$2;

    invoke-direct {v4, p0}, Lcom/android/phone/DsaSelectSimCard$2;-><init>(Lcom/android/phone/DsaSelectSimCard;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    new-instance v3, Lcom/android/phone/DsaSetting;

    invoke-direct {v3}, Lcom/android/phone/DsaSetting;-><init>()V

    iput-object v3, p0, Lcom/android/phone/DsaSelectSimCard;->dsaset:Lcom/android/phone/DsaSetting;

    .line 184
    iget-boolean v3, p0, Lcom/android/phone/DsaSelectSimCard;->mIsFirst:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/phone/DsaSelectSimCard;->mFromSetupWizard:Z

    if-eqz v3, :cond_4

    .line 186
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 187
    .local v1, dsaFilter:Landroid/content/IntentFilter;
    const-string v3, "com.android.phone.dsacomplete"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 189
    new-instance v3, Lcom/android/phone/DsaSelectSimCard$3;

    invoke-direct {v3, p0}, Lcom/android/phone/DsaSelectSimCard$3;-><init>(Lcom/android/phone/DsaSelectSimCard;)V

    iput-object v3, p0, Lcom/android/phone/DsaSelectSimCard;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 196
    iget-object v3, p0, Lcom/android/phone/DsaSelectSimCard;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 198
    iget-object v3, p0, Lcom/android/phone/DsaSelectSimCard;->mLeftSoftBtn:Landroid/widget/Button;

    const v4, 0x7f0e07ba

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 199
    iget-object v3, p0, Lcom/android/phone/DsaSelectSimCard;->mRightSoftBtn:Landroid/widget/Button;

    const v4, 0x7f0e07bb

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 201
    iget-boolean v3, p0, Lcom/android/phone/DsaSelectSimCard;->mFromSetupWizard:Z

    if-eqz v3, :cond_3

    .line 203
    iget-object v3, p0, Lcom/android/phone/DsaSelectSimCard;->mSoftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 204
    iget-object v3, p0, Lcom/android/phone/DsaSelectSimCard;->mSoftLayoutSW:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 218
    .end local v1           #dsaFilter:Landroid/content/IntentFilter;
    :cond_1
    :goto_1
    return-void

    .line 159
    :cond_2
    const v3, 0x7f0900c7

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/phone/DsaSelectSimCard;->mLeftSoftBtn:Landroid/widget/Button;

    .line 160
    iget-object v3, p0, Lcom/android/phone/DsaSelectSimCard;->mLeftSoftBtn:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 161
    const v3, 0x7f0900c8

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/phone/DsaSelectSimCard;->mRightSoftBtn:Landroid/widget/Button;

    .line 162
    iget-object v3, p0, Lcom/android/phone/DsaSelectSimCard;->mRightSoftBtn:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 206
    .restart local v1       #dsaFilter:Landroid/content/IntentFilter;
    :cond_3
    iget-boolean v3, p0, Lcom/android/phone/DsaSelectSimCard;->mIsFirst:Z

    if-eqz v3, :cond_1

    .line 208
    iget-object v3, p0, Lcom/android/phone/DsaSelectSimCard;->mSoftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 209
    iget-object v3, p0, Lcom/android/phone/DsaSelectSimCard;->mSoftLayoutSW:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 215
    .end local v1           #dsaFilter:Landroid/content/IntentFilter;
    :cond_4
    iget-object v3, p0, Lcom/android/phone/DsaSelectSimCard;->mSoftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    .line 216
    iget-object v3, p0, Lcom/android/phone/DsaSelectSimCard;->mSoftLayoutSW:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter "menu"

    .prologue
    const/4 v6, 0x6

    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 603
    const-string v2, "DsaSelectSimCard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreateOptionsMenu : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/phone/DsaSelectSimCard;->mIsFirst:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/phone/DsaSelectSimCard;->mFromSetupWizard:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    iget-boolean v2, p0, Lcom/android/phone/DsaSelectSimCard;->mIsFirst:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/phone/DsaSelectSimCard;->mFromSetupWizard:Z

    if-nez v2, :cond_1

    .line 607
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 608
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 609
    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 612
    :cond_0
    const v2, 0x7f0e02d5

    invoke-interface {p1, v1, v5, v5, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 614
    const/4 v2, 0x2

    const v3, 0x7f0e02d4

    invoke-interface {p1, v1, v2, v5, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 617
    const v1, 0x7f0e073e

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 618
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    .line 620
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :cond_1
    return v1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 250
    const-string v0, "DsaSelectSimCard"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/DsaSelectSimCard;->mDialogPause:Z

    .line 252
    iget-boolean v0, p0, Lcom/android/phone/DsaSelectSimCard;->mIsFirst:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/DsaSelectSimCard;->mFromSetupWizard:Z

    if-eqz v0, :cond_1

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/android/phone/DsaSelectSimCard;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 256
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 257
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 261
    const-string v3, "DsaSelectSimCard"

    const-string v4, "onKeyUp"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const/4 v3, 0x4

    if-ne p1, v3, :cond_2

    .line 265
    iget-boolean v3, p0, Lcom/android/phone/DsaSelectSimCard;->mIsFirst:Z

    if-eqz v3, :cond_1

    .line 267
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 268
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 270
    .local v1, myIntent:Landroid/content/Intent;
    const-string v3, "DsaExtraInitial"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 271
    const-string v3, "extra_init_dialog"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 273
    const-string v3, "extra_init_dialog"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 275
    :cond_0
    const/high16 v3, 0x4000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 276
    const-string v3, "com.android.phone.DsaPhoneNumber"

    invoke-virtual {v1, p0, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 298
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #myIntent:Landroid/content/Intent;
    :goto_0
    return v2

    .line 280
    :cond_1
    iget-boolean v2, p0, Lcom/android/phone/DsaSelectSimCard;->mFromSetupWizard:Z

    if-eqz v2, :cond_2

    .line 298
    :cond_2
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

    .line 625
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 627
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 640
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 629
    :sswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 633
    :sswitch_1
    invoke-virtual {p0, v2}, Lcom/android/phone/DsaSelectSimCard;->softkeyRun1(Landroid/view/View;)V

    goto :goto_0

    .line 637
    :sswitch_2
    invoke-virtual {p0, v2}, Lcom/android/phone/DsaSelectSimCard;->softkeyRun2(Landroid/view/View;)V

    goto :goto_0

    .line 627
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_1
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 243
    const-string v0, "DsaSelectSimCard"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-virtual {p0}, Lcom/android/phone/DsaSelectSimCard;->dismissDialog()V

    .line 245
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 246
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 227
    const-string v1, "DsaSelectSimCard"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 231
    const-string v1, "SelectSimStatus"

    invoke-virtual {p0, v1, v3}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 232
    .local v0, pref:Landroid/content/SharedPreferences;
    iget-object v1, p0, Lcom/android/phone/DsaSelectSimCard;->mListView:Landroid/widget/ListView;

    const-string v2, "SimStatus"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2, v4}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 233
    const-string v1, "SimStatus"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/DsaSelectSimCard;->mCurrentStatus:I

    .line 235
    iget-boolean v1, p0, Lcom/android/phone/DsaSelectSimCard;->mDialogPause:Z

    if-eqz v1, :cond_0

    .line 237
    invoke-virtual {p0, v4}, Lcom/android/phone/DsaSelectSimCard;->displayDialog(I)V

    .line 239
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 222
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 223
    return-void
.end method

.method public softkeyRun1(Landroid/view/View;)V
    .locals 8
    .parameter "target"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 306
    iget-boolean v4, p0, Lcom/android/phone/DsaSelectSimCard;->mIsFirst:Z

    if-eqz v4, :cond_1

    .line 308
    const-string v4, "DsaSelectSimCard"

    const-string v5, "softkeyRun1[PREVIOUS]"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 310
    .local v1, intent:Landroid/content/Intent;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 312
    .local v2, myIntent:Landroid/content/Intent;
    const-string v4, "DsaExtraInitial"

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 313
    const-string v4, "extra_init_dialog"

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 315
    const-string v4, "extra_init_dialog"

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 317
    :cond_0
    const-string v4, "com.android.phone.DsaPhoneNumber"

    invoke-virtual {v2, p0, v4}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 348
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #myIntent:Landroid/content/Intent;
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 350
    return-void

    .line 320
    :cond_1
    iget-boolean v4, p0, Lcom/android/phone/DsaSelectSimCard;->mFromSetupWizard:Z

    if-eqz v4, :cond_2

    .line 322
    const-string v4, "DsaSelectSimCard"

    const-string v5, "softkeyRun1[PREVIOUS]"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 338
    :cond_2
    const-string v4, "DsaSelectSimCard"

    const-string v5, "softkeyRun1[SAVE]"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    const-string v4, "SelectSimStatus"

    invoke-virtual {p0, v4, v6}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 341
    .local v3, pref:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 343
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v4, "SimStatus"

    iget v5, p0, Lcom/android/phone/DsaSelectSimCard;->mCurrentStatus:I

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 344
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 346
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "dsa_selected_simside"

    iget v6, p0, Lcom/android/phone/DsaSelectSimCard;->mCurrentStatus:I

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public softkeyRun2(Landroid/view/View;)V
    .locals 14
    .parameter "target"

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 354
    iget-boolean v8, p0, Lcom/android/phone/DsaSelectSimCard;->mIsFirst:Z

    if-nez v8, :cond_0

    iget-boolean v8, p0, Lcom/android/phone/DsaSelectSimCard;->mFromSetupWizard:Z

    if-eqz v8, :cond_3

    .line 356
    :cond_0
    const-string v8, "DsaSelectSimCard"

    const-string v9, "softkeyRun2[Finish]"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    const-string v8, "dsa_main"

    invoke-virtual {p0, v8, v11}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 359
    .local v7, pref:Landroid/content/SharedPreferences;
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 361
    .local v1, edit:Landroid/content/SharedPreferences$Editor;
    const-string v8, "SelectSimStatus"

    invoke-virtual {p0, v8, v11}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 362
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 363
    const-string v8, "SimStatus"

    iget v9, p0, Lcom/android/phone/DsaSelectSimCard;->mCurrentStatus:I

    invoke-interface {v1, v8, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 364
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 366
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "dsa_selected_simside"

    iget v10, p0, Lcom/android/phone/DsaSelectSimCard;->mCurrentStatus:I

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 368
    const-string v8, "dsa_Initial"

    invoke-virtual {p0, v8, v11}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 369
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 370
    const-string v8, "dsa_IsFirst"

    invoke-interface {v1, v8, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 371
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 373
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "dsa_is_first"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 376
    const-string v8, "dsa_phone_number"

    invoke-virtual {p0, v8, v11}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 377
    .local v0, Pref:Landroid/content/SharedPreferences;
    const-string v8, "dsa_phone_number_sim1"

    invoke-interface {v0, v8, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 378
    .local v3, mPhoneNB1:Ljava/lang/String;
    const-string v8, "dsa_phone_number_sim2"

    invoke-interface {v0, v8, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 380
    .local v4, mPhoneNB2:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/phone/DsaSelectSimCard;->dsaNumbers:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    .line 381
    const-string v8, "DsaSelectSimCard"

    const-string v9, "dsaNumbers is not empty!!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget-object v8, p0, Lcom/android/phone/DsaSelectSimCard;->dsaNumbers:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 385
    :cond_1
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 386
    .local v5, phoneNB1:Ljava/lang/String;
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 388
    .local v6, phoneNB2:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/phone/DsaSelectSimCard;->dsaNumbers:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    iget-object v8, p0, Lcom/android/phone/DsaSelectSimCard;->dsaNumbers:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mPhoneNB1 : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mPhoneNB2 : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mCurrentStatus : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/phone/DsaSelectSimCard;->mCurrentStatus:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/phone/DsaSelectSimCard;->dsaLog(Ljava/lang/String;)V

    .line 392
    iget-object v8, p0, Lcom/android/phone/DsaSelectSimCard;->dsaset:Lcom/android/phone/DsaSetting;

    iget-object v9, p0, Lcom/android/phone/DsaSelectSimCard;->dsaNumbers:Ljava/util/ArrayList;

    iget v10, p0, Lcom/android/phone/DsaSelectSimCard;->mCurrentStatus:I

    invoke-virtual {v8, v9, v10, v12}, Lcom/android/phone/DsaSetting;->DSAactivate(Ljava/util/ArrayList;IZ)V

    .line 394
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 395
    .local v2, intent:Landroid/content/Intent;
    const-string v8, "extra_init_dialog"

    invoke-virtual {v2, v8, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 397
    invoke-virtual {p0, v12}, Lcom/android/phone/DsaSelectSimCard;->displayDialog(I)V

    .line 398
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "dsa_init_process"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 411
    .end local v0           #Pref:Landroid/content/SharedPreferences;
    .end local v1           #edit:Landroid/content/SharedPreferences$Editor;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #mPhoneNB1:Ljava/lang/String;
    .end local v4           #mPhoneNB2:Ljava/lang/String;
    .end local v5           #phoneNB1:Ljava/lang/String;
    .end local v6           #phoneNB2:Ljava/lang/String;
    .end local v7           #pref:Landroid/content/SharedPreferences;
    :goto_0
    iget-object v8, p0, Lcom/android/phone/DsaSelectSimCard;->dsaNumbers:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 412
    return-void

    .line 402
    .restart local v0       #Pref:Landroid/content/SharedPreferences;
    .restart local v1       #edit:Landroid/content/SharedPreferences$Editor;
    .restart local v2       #intent:Landroid/content/Intent;
    .restart local v3       #mPhoneNB1:Ljava/lang/String;
    .restart local v4       #mPhoneNB2:Ljava/lang/String;
    .restart local v5       #phoneNB1:Ljava/lang/String;
    .restart local v6       #phoneNB2:Ljava/lang/String;
    .restart local v7       #pref:Landroid/content/SharedPreferences;
    :cond_2
    invoke-virtual {p0, v11}, Lcom/android/phone/DsaSelectSimCard;->displayDialog(I)V

    goto :goto_0

    .line 408
    .end local v0           #Pref:Landroid/content/SharedPreferences;
    .end local v1           #edit:Landroid/content/SharedPreferences$Editor;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #mPhoneNB1:Ljava/lang/String;
    .end local v4           #mPhoneNB2:Ljava/lang/String;
    .end local v5           #phoneNB1:Ljava/lang/String;
    .end local v6           #phoneNB2:Ljava/lang/String;
    .end local v7           #pref:Landroid/content/SharedPreferences;
    :cond_3
    const-string v8, "DsaSelectSimCard"

    const-string v9, "softkeyRun2[Cancel]"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
