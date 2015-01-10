.class public Lcom/android/mms/ui/NoConfirmationSendService;
.super Landroid/app/IntentService;
.source "NoConfirmationSendService.java"


# static fields
.field public static final SEND_NO_CONFIRM_INTENT_ACTION:Ljava/lang/String; = "com.android.mms.intent.action.SENDTO_NO_CONFIRMATION"

.field private static final TAG:Ljava/lang/String; = "Mms/NoConfirmationSendService"


# instance fields
.field public mToastHandler:Landroid/os/Handler;

.field private final sDPMToast:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/android/mms/ui/NoConfirmationSendService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 54
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/mms/ui/NoConfirmationSendService;->sDPMToast:I

    .line 130
    new-instance v0, Lcom/android/mms/ui/NoConfirmationSendService$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/NoConfirmationSendService$1;-><init>(Lcom/android/mms/ui/NoConfirmationSendService;)V

    iput-object v0, p0, Lcom/android/mms/ui/NoConfirmationSendService;->mToastHandler:Landroid/os/Handler;

    .line 47
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/IntentService;->setIntentRedelivery(Z)V

    .line 48
    return-void
.end method

.method private static getOrCreateThreadId(Landroid/content/Context;[Ljava/lang/String;)J
    .locals 7
    .parameter "context"
    .parameter "dests"

    .prologue
    .line 122
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 123
    .local v3, recipients:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 124
    .local v4, s:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 125
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 127
    .end local v4           #s:Ljava/lang/String;
    :cond_1
    invoke-static {p0, v3}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v5

    return-wide v5
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 17
    .parameter "intent"

    .prologue
    .line 58
    const-string v3, "NoConfirmationSendService onHandleIntent"

    invoke-static {v3}, Lcom/android/mms/ui/ConversationComposer;->log(Ljava/lang/String;)V

    .line 60
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    .line 61
    .local v9, action:Ljava/lang/String;
    const-string v3, "com.android.mms.intent.action.SENDTO_NO_CONFIRMATION"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "NoConfirmationSendService onHandleIntent wrong action: "

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/ui/ConversationComposer;->log(Ljava/lang/String;)V

    .line 119
    :goto_0
    return-void

    .line 67
    :cond_0
    const-string v3, "device_policy"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/admin/DevicePolicyManager;

    .line 69
    .local v13, mDPM:Landroid/app/admin/DevicePolicyManager;
    const/4 v3, 0x0

    invoke-virtual {v13, v3}, Landroid/app/admin/DevicePolicyManager;->getAllowTextMessaging(Landroid/content/ComponentName;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 70
    const-string v3, "Mms/NoConfirmationSendService"

    const-string v15, "message sending is disabled"

    invoke-static {v3, v15}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/NoConfirmationSendService;->mToastHandler:Landroid/os/Handler;

    const/16 v15, 0x64

    invoke-virtual {v3, v15}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    .line 76
    .local v11, extras:Landroid/os/Bundle;
    if-nez v11, :cond_2

    .line 77
    const-string v3, "Called to send SMS but no extras"

    invoke-static {v3}, Lcom/android/mms/ui/ConversationComposer;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_2
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 83
    .local v5, message:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v12

    .line 84
    .local v12, intentUri:Landroid/net/Uri;
    invoke-static {v12}, Lcom/android/mms/data/Conversation;->getRecipients(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v14

    .line 86
    .local v14, recipients:Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 87
    const-string v3, "Recipient(s) cannot be empty"

    invoke-static {v3}, Lcom/android/mms/ui/ConversationComposer;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :cond_3
    const-string v3, "showUI"

    const/4 v15, 0x0

    invoke-virtual {v11, v3, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 91
    const-string v3, "com.android.mms.ui.ComposeMessageActivityNoLockScreen"

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    const/high16 v3, 0x1000

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 93
    invoke-virtual/range {p0 .. p1}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 95
    :cond_4
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 96
    const-string v3, "Message cannot be empty"

    invoke-static {v3}, Lcom/android/mms/ui/ConversationComposer;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :cond_5
    const-string v3, ";"

    invoke-static {v14, v3}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 104
    .local v4, dests:[Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/mms/ui/NoConfirmationSendService;->getOrCreateThreadId(Landroid/content/Context;[Ljava/lang/String;)J

    move-result-wide v6

    .line 106
    .local v6, threadId:J
    const-string v3, "simSlot"

    const/4 v15, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 108
    .local v8, sendSimSlot:I
    new-instance v2, Lcom/android/mms/transaction/SmsMessageSender;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;JI)V

    .line 114
    .local v2, smsMessageSender:Lcom/android/mms/transaction/SmsMessageSender;
    :try_start_0
    invoke-virtual {v2, v6, v7}, Lcom/android/mms/transaction/SmsMessageSender;->sendMessage(J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 115
    :catch_0
    move-exception v10

    .line 116
    .local v10, e:Ljava/lang/Exception;
    const-string v3, "Mms/NoConfirmationSendService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Failed to send SMS message, threadId="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v3, v15, v10}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method
