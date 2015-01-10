.class public Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;
.super Landroid/app/DialogFragment;
.source "ContactsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/ContactsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlockSettingDialogFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;
    }
.end annotation


# static fields
.field public static final mBlcokNumberResult:[Z

.field public static mBlcoknumbersetting:[Z

.field private static mBlockSettingDialogFragment:Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;

.field public static mOriginalBlcokNumberSetting:[Z

.field private static mRejectNumbers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mPhoneNumbers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSaved:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 358
    const/4 v0, 0x0

    sput-object v0, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mBlockSettingDialogFragment:Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;

    .line 362
    new-array v0, v1, [Z

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mOriginalBlcokNumberSetting:[Z

    .line 363
    new-array v0, v1, [Z

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mBlcoknumbersetting:[Z

    .line 364
    new-array v0, v1, [Z

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mBlcokNumberResult:[Z

    return-void

    .line 362
    :array_0
    .array-data 0x1
        0x1t
        0x1t
        0x1t
    .end array-data

    .line 363
    :array_1
    .array-data 0x1
        0x1t
        0x1t
        0x1t
    .end array-data

    .line 364
    :array_2
    .array-data 0x1
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 355
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 360
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mSaved:Z

    .line 366
    return-void
.end method

.method static synthetic access$000()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 355
    sget-object v0, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mRejectNumbers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static show(Landroid/app/FragmentManager;Ljava/util/ArrayList;)V
    .locals 4
    .parameter "fragmentManager"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/FragmentManager;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 383
    .local p1, phoneNumbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 384
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "phoneNumbers"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 385
    const-string v2, "open"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 388
    :try_start_0
    new-instance v2, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;

    invoke-direct {v2}, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;-><init>()V

    sput-object v2, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mBlockSettingDialogFragment:Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;

    .line 389
    sget-object v2, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mBlockSettingDialogFragment:Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;

    invoke-virtual {v2, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 390
    sget-object v2, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mBlockSettingDialogFragment:Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;

    const-string v3, "BlockSettingDialogFragment"

    invoke-virtual {v2, p0, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 396
    :goto_0
    return-void

    .line 391
    :catch_0
    move-exception v1

    .line 392
    .local v1, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 393
    .end local v1           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    .line 394
    .local v1, e:Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public BlockNumberSettingDialog(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/app/AlertDialog;
    .locals 13
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/AlertDialog;"
        }
    .end annotation

    .prologue
    .local p2, phoneNumbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const v12, 0x7f0d03c2

    const v11, 0x7f0d0359

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 455
    sget-object v5, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mBlcokNumberResult:[Z

    sget-object v6, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mBlcokNumberResult:[Z

    sget-object v7, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mBlcokNumberResult:[Z

    aput-boolean v9, v7, v10

    aput-boolean v9, v6, v9

    aput-boolean v9, v5, v8

    .line 457
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 459
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    invoke-static {}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->makeFeature()V

    .line 461
    iget-boolean v5, p0, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mSaved:Z

    if-nez v5, :cond_1

    .line 462
    sget-object v5, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mRejectNumbers:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    .line 463
    sget-object v5, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mRejectNumbers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 467
    :goto_0
    sget-object v5, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mOriginalBlcokNumberSetting:[Z

    sget-object v6, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mBlcoknumbersetting:[Z

    aput-boolean v9, v6, v8

    aput-boolean v9, v5, v8

    .line 468
    sget-object v5, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mOriginalBlcokNumberSetting:[Z

    sget-object v6, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mBlcoknumbersetting:[Z

    aput-boolean v9, v6, v9

    aput-boolean v9, v5, v9

    .line 469
    sget-object v5, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mOriginalBlcokNumberSetting:[Z

    sget-object v6, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mBlcoknumbersetting:[Z

    aput-boolean v9, v6, v10

    aput-boolean v9, v5, v10

    .line 471
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 472
    new-instance v4, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;

    invoke-direct {v4}, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;-><init>()V

    .line 473
    .local v4, rejectValue:Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;->number:Ljava/lang/String;

    .line 474
    iput-boolean v9, v4, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;->isVoiceCallChecked:Z

    .line 475
    iput-boolean v9, v4, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;->isVideoCallChecked:Z

    .line 476
    iput-boolean v9, v4, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;->isMessageChecked:Z

    .line 477
    sget-object v5, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mRejectNumbers:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 465
    .end local v2           #i:I
    .end local v4           #rejectValue:Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sput-object v5, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mRejectNumbers:Ljava/util/ArrayList;

    goto :goto_0

    .line 481
    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_VoiceCall_EnableSeparateCallReject"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 483
    const/4 v5, 0x3

    new-array v3, v5, [Ljava/lang/CharSequence;

    const v5, 0x7f0d03c0

    invoke-virtual {p1, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v8

    const v5, 0x7f0d03c1

    invoke-virtual {p1, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v9

    invoke-virtual {p1, v12}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v10

    .line 489
    .local v3, mEntries:[Ljava/lang/CharSequence;
    iget-boolean v5, p0, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mSaved:Z

    if-nez v5, :cond_5

    .line 490
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2
    sget-object v5, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mRejectNumbers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_5

    .line 491
    sget-object v5, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mRejectNumbers:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;

    iget-object v5, v5, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;->number:Ljava/lang/String;

    invoke-static {p1, v5}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->checkVoiceCallblocked(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 492
    sget-object v5, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mOriginalBlcokNumberSetting:[Z

    sget-object v6, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mBlcoknumbersetting:[Z

    aput-boolean v8, v6, v8

    aput-boolean v8, v5, v8

    .line 493
    sget-object v5, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mRejectNumbers:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;

    iput-boolean v8, v5, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;->isVoiceCallChecked:Z

    .line 495
    :cond_2
    sget-object v5, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mRejectNumbers:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;

    iget-object v5, v5, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;->number:Ljava/lang/String;

    invoke-static {p1, v5}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->checkVideoCallblocked(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 496
    sget-object v5, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mOriginalBlcokNumberSetting:[Z

    sget-object v6, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mBlcoknumbersetting:[Z

    aput-boolean v8, v6, v9

    aput-boolean v8, v5, v9

    .line 497
    sget-object v5, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mRejectNumbers:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;

    iput-boolean v8, v5, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;->isVideoCallChecked:Z

    .line 499
    :cond_3
    sget-object v5, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mRejectNumbers:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;

    iget-object v5, v5, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;->number:Ljava/lang/String;

    invoke-static {p1, v5}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->checkMessageblocked(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 500
    sget-object v5, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mOriginalBlcokNumberSetting:[Z

    sget-object v6, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mBlcoknumbersetting:[Z

    aput-boolean v8, v6, v10

    aput-boolean v8, v5, v10

    .line 501
    sget-object v5, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mRejectNumbers:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;

    iput-boolean v8, v5, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;->isMessageChecked:Z

    .line 490
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 506
    .end local v2           #i:I
    :cond_5
    sget-object v5, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mBlcoknumbersetting:[Z

    new-instance v6, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$1;

    invoke-direct {v6, p0}, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$1;-><init>(Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;)V

    invoke-virtual {v1, v3, v5, v6}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 513
    new-instance v5, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$2;

    invoke-direct {v5, p0, p1}, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$2;-><init>(Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;Landroid/content/Context;)V

    invoke-virtual {v1, v11, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 657
    :goto_3
    const v5, 0x7f0d03be

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 658
    const v5, 0x7f0d02f8

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 659
    new-instance v5, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$5;

    invoke-direct {v5, p0}, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$5;-><init>(Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 669
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 670
    .local v0, blockNumberSettingDlg:Landroid/app/AlertDialog;
    return-object v0

    .line 582
    .end local v0           #blockNumberSettingDlg:Landroid/app/AlertDialog;
    .end local v3           #mEntries:[Ljava/lang/CharSequence;
    :cond_6
    new-array v3, v10, [Ljava/lang/CharSequence;

    const v5, 0x7f0d03bf

    invoke-virtual {p1, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v8

    invoke-virtual {p1, v12}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v9

    .line 587
    .restart local v3       #mEntries:[Ljava/lang/CharSequence;
    iget-boolean v5, p0, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mSaved:Z

    if-nez v5, :cond_9

    .line 588
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4
    sget-object v5, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mRejectNumbers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_9

    .line 589
    sget-object v5, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mRejectNumbers:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;

    iget-object v5, v5, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;->number:Ljava/lang/String;

    invoke-static {p1, v5}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->checkVoiceCallblocked(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 590
    sget-object v5, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mOriginalBlcokNumberSetting:[Z

    sget-object v6, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mBlcoknumbersetting:[Z

    aput-boolean v8, v6, v8

    aput-boolean v8, v5, v8

    .line 591
    sget-object v5, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mRejectNumbers:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;

    iput-boolean v8, v5, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;->isVoiceCallChecked:Z

    .line 593
    :cond_7
    sget-object v5, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mRejectNumbers:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;

    iget-object v5, v5, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;->number:Ljava/lang/String;

    invoke-static {p1, v5}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->checkMessageblocked(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 594
    sget-object v5, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mOriginalBlcokNumberSetting:[Z

    sget-object v6, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mBlcoknumbersetting:[Z

    aput-boolean v8, v6, v9

    aput-boolean v8, v5, v9

    .line 595
    sget-object v5, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mRejectNumbers:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;

    iput-boolean v8, v5, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$RejectValue;->isMessageChecked:Z

    .line 588
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 600
    .end local v2           #i:I
    :cond_9
    sget-object v5, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mBlcoknumbersetting:[Z

    new-instance v6, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$3;

    invoke-direct {v6, p0}, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$3;-><init>(Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;)V

    invoke-virtual {v1, v3, v5, v6}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 607
    new-instance v5, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$4;

    invoke-direct {v5, p0, p1}, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment$4;-><init>(Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;Landroid/content/Context;)V

    invoke-virtual {v1, v11, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_3
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 444
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 445
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "phoneNumbers"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mPhoneNumbers:Ljava/util/ArrayList;

    .line 446
    if-eqz p1, :cond_0

    .line 447
    const-string v1, "open"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mSaved:Z

    .line 451
    :goto_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mPhoneNumbers:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v2}, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->BlockNumberSettingDialog(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1

    .line 449
    :cond_0
    const-string v1, "open"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mSaved:Z

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 8
    .parameter "dialog"

    .prologue
    const/4 v7, 0x0

    const v6, 0x7f0d03c7

    const v5, 0x7f0d0359

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 400
    sget-object v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mBlcokNumberResult:[Z

    aget-boolean v1, v1, v4

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mBlcokNumberResult:[Z

    aget-boolean v1, v1, v3

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mBlcokNumberResult:[Z

    const/4 v2, 0x2

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_1

    .line 432
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 433
    return-void

    .line 403
    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_VoiceCall_EnableSeparateCallReject"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 405
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 406
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v5, v7}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 407
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 409
    sget-object v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mBlcokNumberResult:[Z

    aget-boolean v1, v1, v4

    if-nez v1, :cond_3

    sget-object v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mBlcokNumberResult:[Z

    aget-boolean v1, v1, v3

    if-nez v1, :cond_3

    .line 411
    const v1, 0x7f0d03c6

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 419
    :cond_2
    :goto_1
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 420
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 412
    :cond_3
    sget-object v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mBlcokNumberResult:[Z

    aget-boolean v1, v1, v4

    if-nez v1, :cond_4

    .line 414
    const v1, 0x7f0d03c4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 415
    :cond_4
    sget-object v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mBlcokNumberResult:[Z

    aget-boolean v1, v1, v3

    if-nez v1, :cond_2

    .line 417
    const v1, 0x7f0d03c5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 422
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_5
    sget-object v1, Lcom/android/contacts/ContactsUtils$BlockSettingDialogFragment;->mBlcokNumberResult:[Z

    aget-boolean v1, v1, v4

    if-nez v1, :cond_0

    .line 423
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 424
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v5, v7}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 425
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 426
    const v1, 0x7f0d03c3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 427
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 428
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 437
    const-string v0, "ContactsUtils"

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    const-string v0, "open"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 439
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 440
    return-void
.end method
