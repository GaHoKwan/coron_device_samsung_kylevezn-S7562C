.class public Lcom/android/phone/InCallMenu;
.super Ljava/lang/Object;
.source "InCallMenu.java"


# static fields
.field private static ONE_HAND_ENABLED:Ljava/lang/String;


# instance fields
.field private mApp:Lcom/android/phone/PhoneApp;

.field private mChatOnID:Ljava/lang/String;

.field private mContactIdForChatOn:I

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mParticipantUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-string v0, "onehand_dialer_enabled"

    sput-object v0, Lcom/android/phone/InCallMenu;->ONE_HAND_ENABLED:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/phone/InCallScreen;)V
    .locals 2
    .parameter "inCallScreen"

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object v0, p0, Lcom/android/phone/InCallMenu;->mChatOnID:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lcom/android/phone/InCallMenu;->mParticipantUri:Ljava/lang/String;

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/InCallMenu;->mContactIdForChatOn:I

    .line 74
    const-string v0, "InCallMenu constructor..."

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/InCallMenu;->log(Ljava/lang/String;Z)V

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallMenu;->log(Ljava/lang/String;)V

    .line 77
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneApp;

    .line 79
    iput-object p1, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 80
    return-void
.end method

.method private IsActiveRcsFT()Z
    .locals 11

    .prologue
    const/4 v3, 0x0

    .line 587
    const/4 v7, 0x0

    .line 588
    .local v7, cursor:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    .line 589
    .local v8, fgCall:Lcom/android/internal/telephony/Call;
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    .line 590
    .local v6, bgCall:Lcom/android/internal/telephony/Call;
    const/4 v9, 0x0

    .line 591
    .local v9, isAvailableFT:Z
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/RcsShare;->getPhoneNumber(Lcom/android/internal/telephony/CallManager;)Ljava/lang/String;

    move-result-object v10

    .line 593
    .local v10, telNum:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 594
    invoke-static {v10}, Lcom/android/phone/RcsShare;->generateTelUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallMenu;->mParticipantUri:Ljava/lang/String;

    .line 595
    sget-object v0, Lcom/android/phone/RcsTransferConstants;->SIP_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mParticipantUri:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 596
    .local v1, queryUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/phone/RcsTransferConstants;->INCALL_SERVICE_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 598
    .end local v1           #queryUri:Landroid/net/Uri;
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isMultiCall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz v7, :cond_2

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 599
    if-nez v8, :cond_1

    .line 600
    move-object v8, v6

    .line 601
    :cond_1
    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 602
    invoke-static {v7}, Lcom/android/phone/RcsShare;->isRcsFTAvailable(Landroid/database/Cursor;)Z

    move-result v9

    .line 605
    :cond_2
    if-eqz v7, :cond_3

    .line 606
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 607
    :cond_3
    return v9
.end method

.method private getChatONIdFromContactId(I)Ljava/lang/String;
    .locals 10
    .parameter "contactId"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v9, 0x0

    .line 554
    const/4 v7, 0x0

    .line 555
    .local v7, chatONId:Ljava/lang/String;
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    .line 556
    .local v8, uriBuilder:Landroid/net/Uri$Builder;
    const-string v0, "limit"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 557
    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 558
    .local v1, chatOnUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "sync1"

    aput-object v3, v2, v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "account_type=\'com.sec.chaton\' AND contact_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 565
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 566
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 568
    :cond_0
    if-eqz v6, :cond_1

    .line 569
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 571
    :cond_1
    return-object v7
.end method

.method private handleOneHandMode()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 509
    const-string v3, "support_onehand_operation"

    invoke-static {v3}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 510
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/phone/InCallMenu;->ONE_HAND_ENABLED:Ljava/lang/String;

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    move v0, v1

    .line 512
    .local v0, isOnehandOn:Z
    :goto_0
    if-eqz v0, :cond_2

    .line 513
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/phone/InCallMenu;->ONE_HAND_ENABLED:Ljava/lang/String;

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 514
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->requestUpdateScreen()V

    .line 520
    .end local v0           #isOnehandOn:Z
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 510
    goto :goto_0

    .line 516
    .restart local v0       #isOnehandOn:Z
    :cond_2
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/phone/InCallMenu;->ONE_HAND_ENABLED:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 517
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->requestUpdateScreen()V

    goto :goto_1
.end method

.method private launchChatON()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 575
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mChatOnID:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 576
    const-string v1, "launchChatON() : mChatOnID is null"

    invoke-direct {p0, v1, v2}, Lcom/android/phone/InCallMenu;->log(Ljava/lang/String;Z)V

    .line 585
    :goto_0
    return-void

    .line 579
    :cond_0
    const-string v1, "launchChatON "

    invoke-direct {p0, v1, v2}, Lcom/android/phone/InCallMenu;->log(Ljava/lang/String;Z)V

    .line 581
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    const-string v2, "chaton://file"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 582
    .local v0, i:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 583
    const-string v1, "receiver"

    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mChatOnID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 584
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private launchMemo()V
    .locals 3

    .prologue
    .line 538
    const-string v2, "service_memo_during_call"

    invoke-static {v2}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 539
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.phone.MEMO_OPEN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 540
    .local v1, i:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 551
    :goto_0
    return-void

    .line 542
    .end local v1           #i:Landroid/content/Intent;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 543
    .restart local v1       #i:Landroid/content/Intent;
    const/high16 v2, 0x3000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 544
    const-string v2, "android.intent.action.MEMO_CREATE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 546
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 547
    :catch_0
    move-exception v0

    .line 548
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private launchMessage()V
    .locals 5

    .prologue
    .line 523
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 526
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 527
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.mms"

    const-string v4, "com.android.mms.ui.ConversationComposer"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 530
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 534
    :goto_0
    return-void

    .line 531
    :catch_0
    move-exception v0

    .line 532
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private launchRcsFileTransfer()V
    .locals 5

    .prologue
    .line 612
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 613
    .local v1, file_intent:Landroid/content/Intent;
    const-string v2, "com.samsung.rcs"

    const-string v3, "com.samsung.rcs.filetransfer.TransferContentActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 615
    const-string v2, "com.samsung.rcs.filetransfer.action.FILE_TRANSFER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 616
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 617
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mParticipantUri:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 618
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 624
    .end local v1           #file_intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 619
    :catch_0
    move-exception v0

    .line 620
    .local v0, anfe:Landroid/content/ActivityNotFoundException;
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v3, 0x7f0e065b

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 622
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FT Failed - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallMenu;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 666
    const-string v0, "InCallMenu"

    invoke-static {v0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    return-void
.end method

.method private log(Ljava/lang/String;Z)V
    .locals 1
    .parameter "msg"
    .parameter "always"

    .prologue
    .line 670
    const-string v0, "InCallMenu"

    invoke-static {v0, p1, p2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 671
    return-void
.end method


# virtual methods
.method protected clearInCallScreenReference()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 84
    return-void
.end method

.method public onPressNoiseReductionMenu()V
    .locals 8

    .prologue
    const v7, 0x7f0e0388

    const v6, 0x7f0e0387

    const v5, 0x7f0e0386

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 627
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 628
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v1

    .line 630
    .local v1, bthf:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 631
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v3}, Lcom/android/phone/RcsShare;->isShareInSession(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 632
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v3, v6, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 661
    :goto_0
    return-void

    .line 635
    :cond_0
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/RcsShare;->sendToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 636
    :cond_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 637
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v3}, Lcom/android/phone/RcsShare;->isShareInSession(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 638
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v3, v5, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 641
    :cond_2
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/RcsShare;->sendToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 642
    :cond_3
    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "noise_suppression_support_speaker"

    invoke-static {v4}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 644
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v3}, Lcom/android/phone/RcsShare;->isShareInSession(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 645
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v3, v7, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 648
    :cond_4
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/RcsShare;->sendToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 649
    :cond_5
    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->isSupportedNoiseReductionInWBMode(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->isWBMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 651
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v3}, Lcom/android/phone/RcsShare;->isShareInSession(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 652
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v4, 0x7f0e0389

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 655
    :cond_6
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v4, 0x7f0e0389

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/RcsShare;->sendToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 657
    :cond_7
    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v5, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->isNoiseSuppressionOn(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_8

    move v2, v3

    :cond_8
    invoke-static {v4, v2, v3}, Lcom/android/phone/PhoneUtils;->turnOnNoiseSuppression(Landroid/content/Context;ZZ)V

    .line 659
    iget-object v2, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->getInCallTouchUi()Lcom/android/phone/InCallTouchUi;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallTouchUi;->updateState(Lcom/android/internal/telephony/CallManager;)V

    goto/16 :goto_0
.end method

.method protected optionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 413
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- optionsItemSelected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallMenu;->log(Ljava/lang/String;)V

    .line 414
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallMenu;->log(Ljava/lang/String;)V

    .line 415
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  title: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallMenu;->log(Ljava/lang/String;)V

    .line 417
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v1, :cond_0

    .line 418
    const-string v1, "InCallMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "optionsItemSelected("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), but null mInCallScreen!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 505
    :goto_0
    return v0

    .line 422
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 501
    const-string v0, "InCallMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "optionsItemSelected:  unexpected View ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (MenuItem = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    const/4 v0, 0x0

    goto :goto_0

    .line 437
    :sswitch_0
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 441
    :sswitch_1
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f090149

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 445
    :sswitch_2
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f090155

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 449
    :sswitch_3
    invoke-direct {p0}, Lcom/android/phone/InCallMenu;->launchMessage()V

    goto :goto_0

    .line 453
    :sswitch_4
    invoke-direct {p0}, Lcom/android/phone/InCallMenu;->launchMemo()V

    goto :goto_0

    .line 458
    :sswitch_5
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f09014d

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 463
    :sswitch_6
    invoke-virtual {p0}, Lcom/android/phone/InCallMenu;->onPressNoiseReductionMenu()V

    goto :goto_0

    .line 467
    :sswitch_7
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->onPressVoiceCallEqMenu()V

    goto :goto_0

    .line 471
    :sswitch_8
    invoke-direct {p0}, Lcom/android/phone/InCallMenu;->launchChatON()V

    goto :goto_0

    .line 474
    :sswitch_9
    invoke-direct {p0}, Lcom/android/phone/InCallMenu;->launchRcsFileTransfer()V

    goto :goto_0

    .line 477
    :sswitch_a
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneApp;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.stk.start_main_activity"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 481
    :sswitch_b
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneApp;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.stk.start_main_activity2"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 484
    :sswitch_c
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->explicitCallTransfer(Lcom/android/internal/telephony/Phone;)V

    goto/16 :goto_0

    .line 489
    :sswitch_d
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f090154

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto/16 :goto_0

    .line 493
    :sswitch_e
    iget-object v1, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f09014b

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto/16 :goto_0

    .line 497
    :sswitch_f
    invoke-direct {p0}, Lcom/android/phone/InCallMenu;->handleOneHandMode()V

    goto/16 :goto_0

    .line 422
    :sswitch_data_0
    .sparse-switch
        0x7f0900a1 -> :sswitch_3
        0x7f0902c4 -> :sswitch_e
        0x7f0902c5 -> :sswitch_0
        0x7f0902c6 -> :sswitch_1
        0x7f0902c7 -> :sswitch_2
        0x7f0902c8 -> :sswitch_4
        0x7f0902c9 -> :sswitch_5
        0x7f0902ca -> :sswitch_5
        0x7f0902cb -> :sswitch_6
        0x7f0902cc -> :sswitch_6
        0x7f0902cd -> :sswitch_7
        0x7f0902ce -> :sswitch_8
        0x7f0902cf -> :sswitch_9
        0x7f0902d0 -> :sswitch_a
        0x7f0902d1 -> :sswitch_b
        0x7f0902d2 -> :sswitch_c
        0x7f0902d3 -> :sswitch_d
        0x7f0902d4 -> :sswitch_d
        0x7f0902d5 -> :sswitch_f
    .end sparse-switch
.end method

.method protected prepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 37
    .parameter "menu"

    .prologue
    .line 87
    const-string v34, "prepareOptionsMenu()..."

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/phone/InCallMenu;->log(Ljava/lang/String;)V

    .line 91
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v12

    .line 93
    .local v12, inCallControlState:Lcom/android/phone/InCallControlState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v11

    .line 94
    .local v11, fgCall:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 95
    .local v4, bgCall:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v26

    .line 99
    .local v26, rCall:Lcom/android/internal/telephony/Call;
    const-string v34, "tablet_device"

    invoke-static/range {v34 .. v34}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_1

    .line 100
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v34

    if-eqz v34, :cond_0

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v34

    if-eqz v34, :cond_1

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v34

    if-eqz v34, :cond_1

    .line 101
    :cond_0
    const/16 v34, 0x0

    .line 409
    :goto_0
    return v34

    .line 105
    :cond_1
    const-string v34, "support_easy_mode"

    invoke-static/range {v34 .. v34}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lcom/android/phone/PhoneUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v34

    if-eqz v34, :cond_2

    .line 107
    const/16 v34, 0x0

    goto :goto_0

    .line 112
    :cond_2
    const v34, 0x7f0902c7

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v16

    .line 113
    .local v16, launchContact:Landroid/view/MenuItem;
    const v34, 0x7f020547

    move-object/from16 v0, v16

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 114
    const-string v34, "no_receiver_in_call"

    invoke-static/range {v34 .. v34}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_16

    .line 115
    const/16 v34, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 121
    :goto_1
    const v34, 0x7f0902c4

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v19

    .line 122
    .local v19, mergeCalls:Landroid/view/MenuItem;
    const v34, 0x7f020558

    move-object/from16 v0, v19

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 123
    iget-boolean v0, v12, Lcom/android/phone/InCallControlState;->canMerge:Z

    move/from16 v34, v0

    if-eqz v34, :cond_17

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v34

    sget-object v35, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    if-ne v0, v1, :cond_17

    const-string v34, "voice_call_recording"

    invoke-static/range {v34 .. v34}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_3

    const-string v34, "support_merge_call"

    invoke-static/range {v34 .. v34}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_4

    :cond_3
    const-string v34, "ims_rcs"

    invoke-static/range {v34 .. v34}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_17

    invoke-static {}, Lcom/android/phone/RcsShare;->isRcsServiceAvailable()Z

    move-result v34

    if-eqz v34, :cond_17

    .line 128
    :cond_4
    const/16 v34, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 134
    :goto_2
    const v34, 0x7f0902c5

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v17

    .line 135
    .local v17, manageCofCall:Landroid/view/MenuItem;
    const v34, 0x7f020545

    move-object/from16 v0, v17

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 136
    if-eqz v11, :cond_18

    invoke-static {v11}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v34

    if-eqz v34, :cond_18

    const-string v34, "manage_conference_call_menu_disable"

    invoke-static/range {v34 .. v34}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_5

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v34

    const/16 v35, 0x2

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_18

    :cond_5
    const-string v34, "onscreen_manage_conference"

    invoke-static/range {v34 .. v34}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_18

    .line 151
    const/16 v34, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 160
    :goto_3
    const-string v34, "feature_ctc"

    invoke-static/range {v34 .. v34}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_6

    const-string v34, "feature_lgt"

    invoke-static/range {v34 .. v34}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_7

    .line 161
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v34, v0

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Lcom/android/internal/telephony/Phone;->getSimSlot()I

    move-result v34

    invoke-static/range {v34 .. v34}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v24

    .line 162
    .local v24, phoneType:I
    const/16 v34, 0x2

    move/from16 v0, v24

    move/from16 v1, v34

    if-ne v0, v1, :cond_7

    .line 163
    const/16 v34, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 169
    .end local v24           #phoneType:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    move-object/from16 v34, v0

    sget-object v35, Lcom/android/phone/InCallUiState$InCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InCallUiState$InCallScreenMode;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    if-ne v0, v1, :cond_8

    .line 170
    const/16 v34, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 173
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/android/phone/PhoneUtils;->isWebExEnabled(Landroid/content/Context;)Z

    move-result v15

    .line 174
    .local v15, isWebExEnabled:Z
    const v34, 0x7f0902c6

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 175
    .local v3, addCall:Landroid/view/MenuItem;
    const v34, 0x7f02053d

    move/from16 v0, v34

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 178
    iget-boolean v0, v12, Lcom/android/phone/InCallControlState;->canAddCall:Z

    move/from16 v34, v0

    if-eqz v34, :cond_1a

    if-nez v15, :cond_9

    const-string v34, "ims_rcs"

    invoke-static/range {v34 .. v34}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_1a

    invoke-static {}, Lcom/android/phone/RcsShare;->isRcsServiceAvailable()Z

    move-result v34

    if-eqz v34, :cond_1a

    .line 180
    :cond_9
    const/16 v34, 0x1

    move/from16 v0, v34

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 185
    :goto_4
    const-string v34, "roaming_auto_dial"

    invoke-static/range {v34 .. v34}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_a

    .line 186
    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Lcom/android/internal/telephony/Phone;->getSimSlot()I

    move-result v34

    invoke-static/range {v34 .. v34}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v24

    .line 187
    .restart local v24       #phoneType:I
    invoke-static {}, Lcom/android/phone/PhoneUtilsExt;->isRoamingArea()Ljava/lang/Boolean;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v34

    if-eqz v34, :cond_a

    const/16 v34, 0x2

    move/from16 v0, v24

    move/from16 v1, v34

    if-ne v0, v1, :cond_a

    .line 188
    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 193
    .end local v24           #phoneType:I
    :cond_a
    const v34, 0x7f0902c9

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v31

    .line 194
    .local v31, startRecord:Landroid/view/MenuItem;
    const v34, 0x7f0902ca

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v32

    .line 195
    .local v32, stopRecord:Landroid/view/MenuItem;
    const v34, 0x7f020550

    move-object/from16 v0, v31

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 196
    const v34, 0x7f020551

    move-object/from16 v0, v32

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 197
    const/16 v34, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 198
    const/16 v34, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 199
    const-string v34, "voice_call_recording"

    invoke-static/range {v34 .. v34}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_d

    .line 201
    const-string v34, "voice_call_recording_menu"

    invoke-static/range {v34 .. v34}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_b

    .line 202
    iget-boolean v0, v12, Lcom/android/phone/InCallControlState;->canAddCall:Z

    move/from16 v34, v0

    move/from16 v0, v34

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 205
    :cond_b
    if-nez v15, :cond_c

    const-string v34, "voice_call_recording_menu"

    invoke-static/range {v34 .. v34}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_c

    const-string v34, "ims_rcs"

    invoke-static/range {v34 .. v34}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_d

    invoke-static {}, Lcom/android/phone/RcsShare;->isRcsServiceAvailable()Z

    move-result v34

    if-eqz v34, :cond_d

    .line 207
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v34, v0

    if-eqz v34, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    move-object/from16 v34, v0

    invoke-static {}, Lcom/android/phone/PhoneVoiceRecorder;->isVoiceRecording()Z

    move-result v34

    if-eqz v34, :cond_1b

    const/4 v14, 0x1

    .line 209
    .local v14, isRecording:Z
    :goto_5
    if-nez v14, :cond_1c

    const/16 v34, 0x1

    :goto_6
    move-object/from16 v0, v31

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 210
    move-object/from16 v0, v32

    invoke-interface {v0, v14}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 212
    if-eqz v14, :cond_1d

    .line 213
    iget-boolean v0, v12, Lcom/android/phone/InCallControlState;->canRecord:Z

    move/from16 v34, v0

    move-object/from16 v0, v32

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 220
    .end local v14           #isRecording:Z
    :cond_d
    :goto_7
    const v34, 0x7f0900a1

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v20

    .line 221
    .local v20, message:Landroid/view/MenuItem;
    const v34, 0x7f02053e

    move-object/from16 v0, v20

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 222
    const-string v34, "menu_message"

    invoke-static/range {v34 .. v34}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v34

    if-nez v34, :cond_e

    const-string v34, "in_call_menu_message_enable"

    invoke-static/range {v34 .. v34}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_1e

    :cond_e
    const/16 v34, 0x1

    :goto_8
    move-object/from16 v0, v20

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 226
    const v34, 0x7f0902c8

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v18

    .line 227
    .local v18, memo:Landroid/view/MenuItem;
    const v34, 0x7f020546

    move-object/from16 v0, v18

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 228
    const-string v34, "use_snote_string"

    invoke-static/range {v34 .. v34}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_f

    .line 229
    const v34, 0x7f0e0374

    move-object/from16 v0, v18

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 231
    :cond_f
    const-string v34, "in_call_menu_memo_enable"

    invoke-static/range {v34 .. v34}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v34

    move-object/from16 v0, v18

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mChatOnID:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 235
    .local v25, previousChatOnID:Ljava/lang/String;
    const/16 v34, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/InCallMenu;->mChatOnID:Ljava/lang/String;

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/android/phone/PhoneUtils;->isMultiCall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v34

    if-nez v34, :cond_11

    .line 237
    if-nez v11, :cond_10

    .line 238
    move-object v11, v4

    .line 240
    :cond_10
    invoke-static {v11}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v34

    if-nez v34, :cond_11

    .line 241
    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v10

    .line 242
    .local v10, conn:Lcom/android/internal/telephony/Connection;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-static {v0, v10}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v9

    .line 243
    .local v9, ci:Lcom/android/internal/telephony/CallerInfo;
    if-eqz v9, :cond_20

    iget-boolean v0, v9, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    move/from16 v34, v0

    if-eqz v34, :cond_20

    .line 244
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/InCallMenu;->mContactIdForChatOn:I

    move/from16 v34, v0

    iget-wide v0, v9, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    move-wide/from16 v35, v0

    move-wide/from16 v0, v35

    long-to-int v0, v0

    move/from16 v35, v0

    move/from16 v0, v34

    move/from16 v1, v35

    if-eq v0, v1, :cond_1f

    .line 246
    iget-wide v0, v9, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    move-wide/from16 v34, v0

    move-wide/from16 v0, v34

    long-to-int v0, v0

    move/from16 v34, v0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/InCallMenu;->mContactIdForChatOn:I

    .line 247
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/InCallMenu;->mContactIdForChatOn:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/phone/InCallMenu;->getChatONIdFromContactId(I)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/InCallMenu;->mChatOnID:Ljava/lang/String;

    .line 257
    .end local v9           #ci:Lcom/android/internal/telephony/CallerInfo;
    .end local v10           #conn:Lcom/android/internal/telephony/Connection;
    :cond_11
    :goto_9
    const v34, 0x7f0902ce

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    .line 258
    .local v8, chatOnItem:Landroid/view/MenuItem;
    const v34, 0x7f02054d

    move/from16 v0, v34

    invoke-interface {v8, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mChatOnID:Ljava/lang/String;

    move-object/from16 v34, v0

    if-nez v34, :cond_21

    .line 260
    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-interface {v8, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 264
    :goto_a
    const v34, 0x7f0902cf

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 265
    .local v2, RcsFileTransferItem:Landroid/view/MenuItem;
    const v34, 0x7f020543

    move/from16 v0, v34

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 266
    const-string v34, "ims_rcs"

    invoke-static/range {v34 .. v34}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_24

    .line 267
    invoke-static {}, Lcom/android/phone/RcsShare;->isRcsServiceAvailable()Z

    move-result v34

    if-eqz v34, :cond_23

    .line 268
    const/16 v34, 0x1

    move/from16 v0, v34

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 269
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallMenu;->IsActiveRcsFT()Z

    move-result v34

    if-eqz v34, :cond_22

    .line 270
    const/16 v34, 0x1

    move/from16 v0, v34

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 282
    :goto_b
    const v34, 0x7f0902cd

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v33

    .line 283
    .local v33, voiceEQ:Landroid/view/MenuItem;
    const v34, 0x7f020540

    invoke-interface/range {v33 .. v34}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/android/phone/PhoneUtils;->isVoiceCallEqEnabled(Landroid/content/Context;)Z

    move-result v34

    if-eqz v34, :cond_25

    .line 285
    const/16 v34, 0x1

    invoke-interface/range {v33 .. v34}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 290
    :goto_c
    const v34, 0x7f0902cc

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v22

    .line 291
    .local v22, noiseReductionOnItem:Landroid/view/MenuItem;
    const v34, 0x7f020549

    move-object/from16 v0, v22

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 292
    const v34, 0x7f0902cb

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v21

    .line 293
    .local v21, noiseReductionOffItem:Landroid/view/MenuItem;
    const v34, 0x7f020548

    move-object/from16 v0, v21

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/android/phone/PhoneFeature;->hasNoiseSuppressionFeature(Landroid/content/Context;)Z

    move-result v34

    if-eqz v34, :cond_27

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/android/phone/PhoneUtils;->isNoiseSuppressionOn(Landroid/content/Context;)Z

    move-result v34

    if-eqz v34, :cond_26

    .line 297
    const/16 v34, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 298
    const/16 v34, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 308
    :goto_d
    const-string v34, "gsm.STK_SETUP_MENU"

    invoke-static/range {v34 .. v34}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 309
    .local v27, simService:Ljava/lang/String;
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "simService - "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/phone/InCallMenu;->log(Ljava/lang/String;)V

    .line 310
    const v34, 0x7f0902d0

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v29

    .line 311
    .local v29, simServices:Landroid/view/MenuItem;
    const v34, 0x7f02054f

    move-object/from16 v0, v29

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 312
    if-eqz v27, :cond_28

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v34

    if-lez v34, :cond_28

    const/16 v34, 0x1

    :goto_e
    move-object/from16 v0, v29

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 314
    const v34, 0x7f0902d1

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v30

    .line 316
    .local v30, simServices2:Landroid/view/MenuItem;
    const/16 v34, 0x1

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Lcom/android/internal/telephony/Phone;->getSimSlot()I

    move-result v35

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_2a

    .line 317
    const-string v34, "gsm.STK_SETUP_MENU2"

    invoke-static/range {v34 .. v34}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 318
    .local v28, simService2:Ljava/lang/String;
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "simService2 - "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/phone/InCallMenu;->log(Ljava/lang/String;)V

    .line 319
    const v34, 0x7f02054f

    move-object/from16 v0, v30

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 320
    if-eqz v28, :cond_29

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v34

    if-lez v34, :cond_29

    const/16 v34, 0x1

    :goto_f
    move-object/from16 v0, v30

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 321
    const/16 v34, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 330
    .end local v28           #simService2:Ljava/lang/String;
    :goto_10
    const v34, 0x7f0902d2

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 331
    .local v7, callTransfer:Landroid/view/MenuItem;
    const v34, 0x7f02053f

    move/from16 v0, v34

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 333
    const-string v34, "support_call_transfer"

    invoke-static/range {v34 .. v34}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_2c

    if-eqz v11, :cond_2c

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v34

    if-nez v34, :cond_2c

    if-eqz v4, :cond_2c

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v34

    if-nez v34, :cond_2c

    .line 335
    invoke-static {v11}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v34

    if-nez v34, :cond_12

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v34

    if-nez v34, :cond_12

    .line 337
    iget-boolean v0, v12, Lcom/android/phone/InCallControlState;->canTransfer:Z

    move/from16 v34, v0

    move/from16 v0, v34

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 344
    :cond_12
    :goto_11
    const v34, 0x7f0902d3

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 345
    .local v6, btHeadsetOnItem:Landroid/view/MenuItem;
    const v34, 0x7f0902d4

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 347
    .local v5, btHeadsetOffItem:Landroid/view/MenuItem;
    const-string v34, "ims_rcs"

    invoke-static/range {v34 .. v34}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_30

    .line 348
    const v34, 0x7f020537

    move/from16 v0, v34

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 349
    const v34, 0x7f020537

    move/from16 v0, v34

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 351
    invoke-static {}, Lcom/android/phone/RcsShare;->isRcsServiceAvailable()Z

    move-result v34

    if-eqz v34, :cond_2f

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v34, v0

    if-eqz v34, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v34

    if-eqz v34, :cond_2e

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v34

    if-eqz v34, :cond_2d

    .line 354
    const/16 v34, 0x1

    move/from16 v0, v34

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 355
    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 374
    :goto_12
    const v34, 0x7f0902d5

    move-object/from16 v0, p1

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v23

    .line 375
    .local v23, onehandOperation:Landroid/view/MenuItem;
    const-string v34, "support_onehand_operation"

    invoke-static/range {v34 .. v34}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_34

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v34

    sget-object v35, Lcom/android/phone/InCallMenu;->ONE_HAND_ENABLED:Ljava/lang/String;

    const/16 v36, 0x0

    invoke-static/range {v34 .. v36}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v34

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_31

    const/4 v13, 0x1

    .line 378
    .local v13, isOnehandOn:Z
    :goto_13
    if-eqz v13, :cond_32

    .line 379
    const v34, 0x7f0e037a

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 380
    const v34, 0x7f02054a

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 386
    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/phone/InCallScreen;->isPortraitMode()Z

    move-result v34

    if-eqz v34, :cond_33

    .line 387
    const/16 v34, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 395
    .end local v13           #isOnehandOn:Z
    :goto_15
    const-string v34, "ultimate_standby_mode"

    invoke-static/range {v34 .. v34}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_15

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Lcom/android/phone/PhoneApp;->isUSMEnabled()Z

    move-result v34

    if-eqz v34, :cond_15

    .line 397
    if-eqz v18, :cond_13

    .line 398
    const/16 v34, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 400
    :cond_13
    if-eqz v29, :cond_14

    .line 401
    const/16 v34, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 403
    :cond_14
    if-eqz v30, :cond_15

    .line 404
    const/16 v34, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 409
    :cond_15
    const/16 v34, 0x1

    goto/16 :goto_0

    .line 117
    .end local v2           #RcsFileTransferItem:Landroid/view/MenuItem;
    .end local v3           #addCall:Landroid/view/MenuItem;
    .end local v5           #btHeadsetOffItem:Landroid/view/MenuItem;
    .end local v6           #btHeadsetOnItem:Landroid/view/MenuItem;
    .end local v7           #callTransfer:Landroid/view/MenuItem;
    .end local v8           #chatOnItem:Landroid/view/MenuItem;
    .end local v15           #isWebExEnabled:Z
    .end local v17           #manageCofCall:Landroid/view/MenuItem;
    .end local v18           #memo:Landroid/view/MenuItem;
    .end local v19           #mergeCalls:Landroid/view/MenuItem;
    .end local v20           #message:Landroid/view/MenuItem;
    .end local v21           #noiseReductionOffItem:Landroid/view/MenuItem;
    .end local v22           #noiseReductionOnItem:Landroid/view/MenuItem;
    .end local v23           #onehandOperation:Landroid/view/MenuItem;
    .end local v25           #previousChatOnID:Ljava/lang/String;
    .end local v27           #simService:Ljava/lang/String;
    .end local v29           #simServices:Landroid/view/MenuItem;
    .end local v30           #simServices2:Landroid/view/MenuItem;
    .end local v31           #startRecord:Landroid/view/MenuItem;
    .end local v32           #stopRecord:Landroid/view/MenuItem;
    .end local v33           #voiceEQ:Landroid/view/MenuItem;
    :cond_16
    const/16 v34, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 130
    .restart local v19       #mergeCalls:Landroid/view/MenuItem;
    :cond_17
    const/16 v34, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 153
    .restart local v17       #manageCofCall:Landroid/view/MenuItem;
    :cond_18
    if-eqz v11, :cond_19

    invoke-static {v11}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v34

    if-eqz v34, :cond_19

    const-string v34, "global_network_cdma_gsm_enable"

    invoke-static/range {v34 .. v34}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v34

    if-eqz v34, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenu;->mApp:Lcom/android/phone/PhoneApp;

    move-object/from16 v34, v0

    invoke-virtual {v11}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Lcom/android/internal/telephony/Phone;->getSimSlot()I

    move-result v34

    invoke-static/range {v34 .. v34}, Lcom/android/phone/PhoneApp;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v34

    const/16 v35, 0x1

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_19

    .line 156
    const/16 v34, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 158
    :cond_19
    const/16 v34, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 182
    .restart local v3       #addCall:Landroid/view/MenuItem;
    .restart local v15       #isWebExEnabled:Z
    :cond_1a
    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 207
    .restart local v31       #startRecord:Landroid/view/MenuItem;
    .restart local v32       #stopRecord:Landroid/view/MenuItem;
    :cond_1b
    const/4 v14, 0x0

    goto/16 :goto_5

    .line 209
    .restart local v14       #isRecording:Z
    :cond_1c
    const/16 v34, 0x0

    goto/16 :goto_6

    .line 215
    :cond_1d
    iget-boolean v0, v12, Lcom/android/phone/InCallControlState;->canRecord:Z

    move/from16 v34, v0

    move-object/from16 v0, v31

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_7

    .line 222
    .end local v14           #isRecording:Z
    .restart local v20       #message:Landroid/view/MenuItem;
    :cond_1e
    const/16 v34, 0x0

    goto/16 :goto_8

    .line 249
    .restart local v9       #ci:Lcom/android/internal/telephony/CallerInfo;
    .restart local v10       #conn:Lcom/android/internal/telephony/Connection;
    .restart local v18       #memo:Landroid/view/MenuItem;
    .restart local v25       #previousChatOnID:Ljava/lang/String;
    :cond_1f
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/InCallMenu;->mChatOnID:Ljava/lang/String;

    goto/16 :goto_9

    .line 252
    :cond_20
    const/16 v34, -0x1

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/InCallMenu;->mContactIdForChatOn:I

    goto/16 :goto_9

    .line 262
    .end local v9           #ci:Lcom/android/internal/telephony/CallerInfo;
    .end local v10           #conn:Lcom/android/internal/telephony/Connection;
    .restart local v8       #chatOnItem:Landroid/view/MenuItem;
    :cond_21
    const/16 v34, 0x1

    move/from16 v0, v34

    invoke-interface {v8, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_a

    .line 272
    .restart local v2       #RcsFileTransferItem:Landroid/view/MenuItem;
    :cond_22
    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_b

    .line 275
    :cond_23
    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_b

    .line 278
    :cond_24
    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_b

    .line 287
    .restart local v33       #voiceEQ:Landroid/view/MenuItem;
    :cond_25
    const/16 v34, 0x0

    invoke-interface/range {v33 .. v34}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_c

    .line 300
    .restart local v21       #noiseReductionOffItem:Landroid/view/MenuItem;
    .restart local v22       #noiseReductionOnItem:Landroid/view/MenuItem;
    :cond_26
    const/16 v34, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 301
    const/16 v34, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_d

    .line 304
    :cond_27
    const/16 v34, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 305
    const/16 v34, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_d

    .line 312
    .restart local v27       #simService:Ljava/lang/String;
    .restart local v29       #simServices:Landroid/view/MenuItem;
    :cond_28
    const/16 v34, 0x0

    goto/16 :goto_e

    .line 320
    .restart local v28       #simService2:Ljava/lang/String;
    .restart local v30       #simServices2:Landroid/view/MenuItem;
    :cond_29
    const/16 v34, 0x0

    goto/16 :goto_f

    .line 323
    .end local v28           #simService2:Ljava/lang/String;
    :cond_2a
    if-eqz v27, :cond_2b

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v34

    if-lez v34, :cond_2b

    const/16 v34, 0x1

    :goto_16
    move-object/from16 v0, v29

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 324
    const/16 v34, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_10

    .line 323
    :cond_2b
    const/16 v34, 0x0

    goto :goto_16

    .line 340
    .restart local v7       #callTransfer:Landroid/view/MenuItem;
    :cond_2c
    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_11

    .line 357
    .restart local v5       #btHeadsetOffItem:Landroid/view/MenuItem;
    .restart local v6       #btHeadsetOnItem:Landroid/view/MenuItem;
    :cond_2d
    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 358
    const/16 v34, 0x1

    move/from16 v0, v34

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_12

    .line 361
    :cond_2e
    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 362
    const/16 v34, 0x1

    move/from16 v0, v34

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_12

    .line 365
    :cond_2f
    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 366
    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_12

    .line 369
    :cond_30
    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 370
    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-interface {v5, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_12

    .line 376
    .restart local v23       #onehandOperation:Landroid/view/MenuItem;
    :cond_31
    const/4 v13, 0x0

    goto/16 :goto_13

    .line 382
    .restart local v13       #isOnehandOn:Z
    :cond_32
    const v34, 0x7f0e0379

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 383
    const v34, 0x7f02054b

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_14

    .line 389
    :cond_33
    const/16 v34, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_15

    .line 392
    .end local v13           #isOnehandOn:Z
    :cond_34
    const/16 v34, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_15
.end method
