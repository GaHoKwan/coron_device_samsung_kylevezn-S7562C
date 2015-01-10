.class public Lcom/android/mms/ui/ClassZeroActivity;
.super Landroid/app/Activity;
.source "ClassZeroActivity.java"


# static fields
.field private static final DEFAULT_TIMER:J = 0x493e0L

.field private static final ON_AUTO_SAVE:I = 0x1

.field private static final REPLACE_COLUMN_ID:I = 0x0

.field private static final REPLACE_PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "Mms/display_00"

.field private static final TIMER_FIRE:Ljava/lang/String; = "timer_fire"


# instance fields
.field mBody:Ljava/lang/String;

.field private final mCancelListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDialog:Landroid/app/AlertDialog;

.field private mHandler:Landroid/os/Handler;

.field private mMessage:Landroid/telephony/SmsMessage;

.field private mMessageQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mRead:Z

.field private final mSaveListener:Landroid/content/DialogInterface$OnClickListener;

.field protected mSimSlot:I

.field private mTimerSet:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 69
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "address"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "protocol"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/ClassZeroActivity;->REPLACE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 64
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 79
    iput-object v2, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessage:Landroid/telephony/SmsMessage;

    .line 81
    iput-object v2, p0, Lcom/android/mms/ui/ClassZeroActivity;->mBody:Ljava/lang/String;

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mRead:Z

    .line 91
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mTimerSet:J

    .line 92
    iput-object v2, p0, Lcom/android/mms/ui/ClassZeroActivity;->mDialog:Landroid/app/AlertDialog;

    .line 94
    iput-object v2, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessageQueue:Ljava/util/ArrayList;

    .line 96
    new-instance v0, Lcom/android/mms/ui/ClassZeroActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ClassZeroActivity$1;-><init>(Lcom/android/mms/ui/ClassZeroActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mHandler:Landroid/os/Handler;

    .line 281
    new-instance v0, Lcom/android/mms/ui/ClassZeroActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ClassZeroActivity$2;-><init>(Lcom/android/mms/ui/ClassZeroActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    .line 289
    new-instance v0, Lcom/android/mms/ui/ClassZeroActivity$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ClassZeroActivity$3;-><init>(Lcom/android/mms/ui/ClassZeroActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mSaveListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$002(Lcom/android/mms/ui/ClassZeroActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/mms/ui/ClassZeroActivity;->mRead:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/mms/ui/ClassZeroActivity;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/ClassZeroActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/mms/ui/ClassZeroActivity;->cancelNotification()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/ui/ClassZeroActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/mms/ui/ClassZeroActivity;->saveMessage()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/ui/ClassZeroActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/mms/ui/ClassZeroActivity;->processNextMessage()V

    return-void
.end method

.method private cancelNotification()V
    .locals 1

    .prologue
    .line 161
    const/16 v0, 0x3e7

    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 162
    return-void
.end method

.method private displayZeroMessage(Landroid/content/Intent;Z)V
    .locals 14
    .parameter "msgIntent"
    .parameter "isQueue"

    .prologue
    .line 195
    const-string v11, "pdu"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v8

    .line 196
    .local v8, pdu:[B
    const-string v11, "format"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 197
    .local v1, format:Ljava/lang/String;
    const-string v11, "body"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 198
    .local v3, messagebody:Ljava/lang/String;
    invoke-static {v8, v1}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v9

    .line 201
    .local v9, rawMessage:Landroid/telephony/SmsMessage;
    iput-object v9, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessage:Landroid/telephony/SmsMessage;

    .line 203
    iput-object v3, p0, Lcom/android/mms/ui/ClassZeroActivity;->mBody:Ljava/lang/String;

    .line 205
    iget-object v11, p0, Lcom/android/mms/ui/ClassZeroActivity;->mBody:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 206
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 246
    :goto_0
    return-void

    .line 210
    :cond_0
    iget-object v11, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessage:Landroid/telephony/SmsMessage;

    invoke-virtual {v11}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v7

    .line 212
    .local v7, number:Ljava/lang/String;
    const/4 v4, 0x0

    .line 214
    .local v4, name:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_2

    .line 215
    const/4 v11, 0x1

    invoke-static {v7, v11}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v4

    .line 220
    :goto_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const v12, 0x7f0a00a9

    invoke-virtual {p0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 222
    .local v2, from:Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 224
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v11, 0x7f0a0106

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 226
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveClassZeroMessage()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 227
    const v11, 0x7f0a010f

    iget-object v12, p0, Lcom/android/mms/ui/ClassZeroActivity;->mSaveListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 230
    :cond_1
    const/high16 v11, 0x104

    iget-object v12, p0, Lcom/android/mms/ui/ClassZeroActivity;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 231
    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 233
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    const v12, 0x7f030015

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 234
    .local v10, view:Landroid/widget/LinearLayout;
    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 235
    const v11, 0x7f0e0063

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iget-object v12, p0, Lcom/android/mms/ui/ClassZeroActivity;->mBody:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    const v11, 0x7f0e0064

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    const v11, 0x7f0e0063

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const/16 v12, 0x1e

    invoke-static {v11, v12}, Lcom/android/mms/util/UIUtils;->addLinks(Landroid/widget/TextView;I)V

    .line 238
    const v11, 0x7f0e0063

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const-string v12, "#00AEEF"

    invoke-static {v12}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 239
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v11

    iput-object v11, p0, Lcom/android/mms/ui/ClassZeroActivity;->mDialog:Landroid/app/AlertDialog;

    .line 240
    iget-object v11, p0, Lcom/android/mms/ui/ClassZeroActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v11}, Landroid/app/Dialog;->show()V

    .line 242
    iget v11, p0, Lcom/android/mms/ui/ClassZeroActivity;->mSimSlot:I

    invoke-static {p0, v11}, Lcom/android/mms/transaction/MessagingNotification;->updateClass0SoundnVibrate(Landroid/content/Context;I)V

    .line 244
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 245
    .local v5, now:J
    const-wide/32 v11, 0x493e0

    add-long/2addr v11, v5

    iput-wide v11, p0, Lcom/android/mms/ui/ClassZeroActivity;->mTimerSet:J

    goto/16 :goto_0

    .line 217
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v2           #from:Ljava/lang/String;
    .end local v5           #now:J
    .end local v10           #view:Landroid/widget/LinearLayout;
    :cond_2
    const v11, 0x7f0a0188

    invoke-virtual {p0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1
.end method

.method private extractContentValues(Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;
    .locals 7
    .parameter "sms"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 301
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 303
    .local v1, values:Landroid/content/ContentValues;
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 304
    const-string v2, "address"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    :goto_0
    const-string v2, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 311
    const-string v2, "protocol"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 312
    const-string v5, "read"

    iget-boolean v2, p0, Lcom/android/mms/ui/ClassZeroActivity;->mRead:Z

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 313
    const-string v5, "seen"

    iget-boolean v2, p0, Lcom/android/mms/ui/ClassZeroActivity;->mRead:Z

    if-eqz v2, :cond_3

    move v2, v3

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 315
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getPseudoSubject()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 316
    const-string v2, "subject"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getPseudoSubject()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    :cond_0
    const-string v2, "reply_path_present"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->isReplyPathPresent()Z

    move-result v5

    if-eqz v5, :cond_4

    :goto_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 319
    const-string v2, "service_center"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iget v2, p0, Lcom/android/mms/ui/ClassZeroActivity;->mSimSlot:I

    invoke-static {v2}, Lcom/android/mms/MmsConfig;->getIMSIbySimSlot(I)Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, imsi:Ljava/lang/String;
    const-string v2, "sim_imsi"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    return-object v1

    .line 306
    .end local v0           #imsi:Ljava/lang/String;
    :cond_1
    const-string v2, "address"

    const v5, 0x7f0a0188

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v2, v4

    .line 312
    goto :goto_1

    :cond_3
    move v2, v4

    .line 313
    goto :goto_2

    :cond_4
    move v3, v4

    .line 318
    goto :goto_3
.end method

.method private processNextMessage()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 127
    const-string v0, "Mms/display_00"

    const-string v1, "processNextMessage()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessageQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 129
    const-string v0, "Mms/display_00"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processNextMessage() : mMessageQueue.size()("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessageQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessageQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 131
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessageQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ClassZeroActivity;->displayZeroMessage(Landroid/content/Intent;Z)V

    goto :goto_0
.end method

.method private queueMsgFromIntent(Landroid/content/Intent;)Z
    .locals 3
    .parameter "msgIntent"

    .prologue
    .line 111
    const-string v1, "Mms/display_00"

    const-string v2, "queueMsgFromIntent()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v1, "body"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, body:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    iget-object v1, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessageQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 118
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 120
    :cond_0
    const/4 v1, 0x0

    .line 123
    :goto_0
    return v1

    .line 122
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessageQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private replaceMessage(Landroid/telephony/SmsMessage;)Landroid/net/Uri;
    .locals 18
    .parameter "sms"

    .prologue
    .line 330
    invoke-direct/range {p0 .. p1}, Lcom/android/mms/ui/ClassZeroActivity;->extractContentValues(Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;

    move-result-object v10

    .line 332
    .local v10, values:Landroid/content/ContentValues;
    const-string v1, "body"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ClassZeroActivity;->mBody:Ljava/lang/String;

    invoke-virtual {v10, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 335
    .local v2, resolver:Landroid/content/ContentResolver;
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v16

    .line 336
    .local v16, originatingAddress:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result v17

    .line 337
    .local v17, protocolIdentifier:I
    const-string v5, "address = ? AND protocol = ?"

    .line 338
    .local v5, selection:Ljava/lang/String;
    const/4 v1, 0x2

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v16, v6, v1

    const/4 v1, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v1

    .line 342
    .local v6, selectionArgs:[Ljava/lang/String;
    sget-object v3, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/mms/ui/ClassZeroActivity;->REPLACE_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 346
    .local v13, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 347
    const/4 v1, 0x0

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 348
    .local v14, messageId:J
    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    .line 350
    .local v9, messageUri:Landroid/net/Uri;
    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    move-object v8, v2

    invoke-static/range {v7 .. v12}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 356
    .end local v9           #messageUri:Landroid/net/Uri;
    .end local v14           #messageId:J
    :goto_0
    return-object v9

    .line 354
    :cond_0
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 356
    invoke-direct/range {p0 .. p1}, Lcom/android/mms/ui/ClassZeroActivity;->storeMessage(Landroid/telephony/SmsMessage;)Landroid/net/Uri;

    move-result-object v9

    goto :goto_0

    .line 354
    :catchall_0
    move-exception v1

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private saveMessage()V
    .locals 4

    .prologue
    .line 138
    const/4 v0, 0x0

    .line 139
    .local v0, messageUri:Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessage:Landroid/telephony/SmsMessage;

    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->isReplace()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 140
    iget-object v3, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessage:Landroid/telephony/SmsMessage;

    invoke-direct {p0, v3}, Lcom/android/mms/ui/ClassZeroActivity;->replaceMessage(Landroid/telephony/SmsMessage;)Landroid/net/Uri;

    move-result-object v0

    .line 144
    :goto_0
    iget-boolean v3, p0, Lcom/android/mms/ui/ClassZeroActivity;->mRead:Z

    if-nez v3, :cond_0

    if-eqz v0, :cond_0

    .line 145
    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->getSmsThreadId(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v1

    .line 146
    .local v1, threadId:J
    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 148
    .end local v1           #threadId:J
    :cond_0
    return-void

    .line 142
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessage:Landroid/telephony/SmsMessage;

    invoke-direct {p0, v3}, Lcom/android/mms/ui/ClassZeroActivity;->storeMessage(Landroid/telephony/SmsMessage;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method private storeMessage(Landroid/telephony/SmsMessage;)Landroid/net/Uri;
    .locals 4
    .parameter "sms"

    .prologue
    .line 361
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ClassZeroActivity;->extractContentValues(Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;

    move-result-object v1

    .line 362
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "body"

    iget-object v3, p0, Lcom/android/mms/ui/ClassZeroActivity;->mBody:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 367
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, v2, v1}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 166
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 167
    invoke-virtual {p0, v4}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 168
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f020371

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 170
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessageQueue:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessageQueue:Ljava/util/ArrayList;

    .line 174
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "simSlot"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mSimSlot:I

    .line 175
    const-string v0, "Mms/display_00"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClassZeroActivity: mSimSlot="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/ClassZeroActivity;->mSimSlot:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ClassZeroActivity;->queueMsgFromIntent(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 179
    const-string v0, "Mms/display_00"

    const-string v1, "onCreate : (!queueMsgFromIntent(getIntent()))(false)"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_1
    :goto_0
    return-void

    .line 183
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessageQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 184
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessageQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-direct {p0, v0, v3}, Lcom/android/mms/ui/ClassZeroActivity;->displayZeroMessage(Landroid/content/Intent;Z)V

    .line 187
    :cond_3
    if-eqz p1, :cond_1

    .line 188
    const-string v0, "timer_fire"

    iget-wide v1, p0, Lcom/android/mms/ui/ClassZeroActivity;->mTimerSet:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mTimerSet:J

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "msgIntent"

    .prologue
    .line 152
    const-string v0, "Mms/display_00"

    const-string v1, "onNewIntent()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mSimSlot:I

    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->updateClass0SoundnVibrate(Landroid/content/Context;I)V

    .line 157
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ClassZeroActivity;->queueMsgFromIntent(Landroid/content/Intent;)Z

    .line 158
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 265
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 266
    const-string v0, "timer_fire"

    iget-wide v1, p0, Lcom/android/mms/ui/ClassZeroActivity;->mTimerSet:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 270
    return-void
.end method

.method protected onStart()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 250
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 251
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 252
    .local v0, now:J
    iget-wide v2, p0, Lcom/android/mms/ui/ClassZeroActivity;->mTimerSet:J

    cmp-long v2, v2, v0

    if-gtz v2, :cond_0

    .line 254
    iget-object v2, p0, Lcom/android/mms/ui/ClassZeroActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 261
    :goto_0
    return-void

    .line 256
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/ClassZeroActivity;->mHandler:Landroid/os/Handler;

    iget-wide v3, p0, Lcom/android/mms/ui/ClassZeroActivity;->mTimerSet:J

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 274
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 275
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 279
    return-void
.end method
