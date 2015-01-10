.class public Lcom/android/mms/transaction/SmsMessageSender;
.super Ljava/lang/Object;
.source "SmsMessageSender.java"

# interfaces
.implements Lcom/android/mms/transaction/MessageSender;


# static fields
.field private static final COLUMN_REPLY_PATH_PRESENT:I = 0x0

.field private static final COLUMN_SERVICE_CENTER:I = 0x1

.field private static final DEFAULT_DELIVERY_REPORT_MODE:Z = false

.field public static final SEND_FROM_CURRENT_SIM:I = 0x2

.field public static final SEND_FROM_SIM_1:I = 0x0

.field public static final SEND_FROM_SIM_2:I = 0x1

.field private static final SERVICE_CENTER_PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "Mms/SmsMessageSender"

.field private static final URI_SMS_QUEUED:Landroid/net/Uri;

.field private static final multiSimNum:I


# instance fields
.field protected mCallbackNumber:Ljava/lang/String;

.field protected final mContext:Landroid/content/Context;

.field private final mDests:[Ljava/lang/String;

.field protected mExpiry:I

.field protected mForcePending:Z

.field private mGroupId:J

.field private mLocked:Z

.field protected mMessageText:Ljava/lang/String;

.field protected final mNumberOfDests:I

.field private mOldGroupId:J

.field private mPriority:I

.field protected mPriorityLevel:I

.field protected mReplyPath:Z

.field private mRequestAppId:I

.field private mRequestMsgId:I

.field private mSendSimSlot:I

.field private mSenderAddress:Ljava/lang/String;

.field protected mServiceCenter:Ljava/lang/String;

.field protected mServiceType:I

.field protected mSimSlot:I

.field protected mThreadId:J

.field protected mTimestamp:J

.field protected mUserSelectedEncodingType:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 51
    const-string v0, "content://sms/queued"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/SmsMessageSender;->URI_SMS_QUEUED:Landroid/net/Uri;

    .line 79
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "reply_path_present"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "service_center"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/transaction/SmsMessageSender;->SERVICE_CENTER_PROJECTION:[Ljava/lang/String;

    .line 91
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v0

    sput v0, Lcom/android/mms/transaction/SmsMessageSender;->multiSimNum:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 9
    .parameter "context"
    .parameter "dests"
    .parameter "msgText"
    .parameter "threadId"
    .parameter "sendSimSlot"

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/mms/transaction/SmsMessageSender;->mReplyPath:Z

    .line 70
    const/16 v5, 0xff

    iput v5, p0, Lcom/android/mms/transaction/SmsMessageSender;->mExpiry:I

    .line 71
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/mms/transaction/SmsMessageSender;->mServiceType:I

    .line 92
    const/4 v5, 0x2

    iput v5, p0, Lcom/android/mms/transaction/SmsMessageSender;->mSendSimSlot:I

    .line 96
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/android/mms/transaction/SmsMessageSender;->mOldGroupId:J

    .line 97
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/android/mms/transaction/SmsMessageSender;->mGroupId:J

    .line 98
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/mms/transaction/SmsMessageSender;->mRequestAppId:I

    .line 99
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/mms/transaction/SmsMessageSender;->mRequestMsgId:I

    .line 101
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/mms/transaction/SmsMessageSender;->mLocked:Z

    .line 104
    const/16 v5, 0x81

    iput v5, p0, Lcom/android/mms/transaction/SmsMessageSender;->mPriorityLevel:I

    .line 126
    const/16 v5, 0x81

    iput v5, p0, Lcom/android/mms/transaction/SmsMessageSender;->mPriority:I

    .line 135
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/mms/transaction/SmsMessageSender;->mSenderAddress:Ljava/lang/String;

    .line 147
    iput-object p1, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    .line 150
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIEI()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 152
    :try_start_0
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getLocalNumber()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/transaction/SmsMessageSender;->mSenderAddress:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableEmptySms()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 159
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string p3, ""

    .end local p3
    :cond_1
    iput-object p3, p0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    .line 163
    :goto_1
    if-eqz p2, :cond_6

    .line 164
    array-length v5, p2

    iput v5, p0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    .line 165
    iget v5, p0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    .line 166
    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    invoke-static {p2, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 172
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/mms/transaction/SmsMessageSender;->mTimestamp:J

    .line 173
    iput-wide p4, p0, Lcom/android/mms/transaction/SmsMessageSender;->mThreadId:J

    .line 174
    iget-wide v5, p0, Lcom/android/mms/transaction/SmsMessageSender;->mThreadId:J

    invoke-direct {p0, v5, v6}, Lcom/android/mms/transaction/SmsMessageSender;->getOutgoingServiceCenter(J)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/transaction/SmsMessageSender;->mServiceCenter:Ljava/lang/String;

    .line 175
    iput p6, p0, Lcom/android/mms/transaction/SmsMessageSender;->mSendSimSlot:I

    .line 177
    iget-object v5, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 180
    .local v3, prefs:Landroid/content/SharedPreferences;
    iget-object v5, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getInputmode(Landroid/content/Context;)I

    move-result v5

    iput v5, p0, Lcom/android/mms/transaction/SmsMessageSender;->mUserSelectedEncodingType:I

    .line 188
    const-string v5, "persist.radio.calldefault.simid"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/mms/transaction/SmsMessageSender;->mSimSlot:I

    .line 189
    iget v5, p0, Lcom/android/mms/transaction/SmsMessageSender;->mSendSimSlot:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    .line 190
    iget v5, p0, Lcom/android/mms/transaction/SmsMessageSender;->mSendSimSlot:I

    iput v5, p0, Lcom/android/mms/transaction/SmsMessageSender;->mSimSlot:I

    .line 192
    :cond_2
    const-string v5, "MultiSIM sendMessage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendMessage mSimSlot : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/mms/transaction/SmsMessageSender;->mSimSlot:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v4, "Not Set"

    .line 196
    .local v4, smsc:Ljava/lang/String;
    const-string v2, "pref_key_manage_smsc_address"

    .line 199
    .local v2, preference_smsc:Ljava/lang/String;
    iget v5, p0, Lcom/android/mms/transaction/SmsMessageSender;->mSimSlot:I

    if-eqz v5, :cond_3

    .line 200
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_sim"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/mms/transaction/SmsMessageSender;->mSimSlot:I

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 203
    :cond_3
    const-string v5, "Not Set"

    invoke-interface {v3, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 205
    iget-object v5, p0, Lcom/android/mms/transaction/SmsMessageSender;->mServiceCenter:Ljava/lang/String;

    if-nez v5, :cond_4

    .line 206
    iput-object v4, p0, Lcom/android/mms/transaction/SmsMessageSender;->mServiceCenter:Ljava/lang/String;

    .line 210
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCallbackNumber()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-static {v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getCallbackEnabled(Landroid/content/SharedPreferences;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 211
    invoke-static {v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getCallbackNumber(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 212
    invoke-static {v3}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getCallbackNumber(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/transaction/SmsMessageSender;->mCallbackNumber:Ljava/lang/String;

    .line 221
    :goto_3
    return-void

    .line 153
    .end local v2           #preference_smsc:Ljava/lang/String;
    .end local v3           #prefs:Landroid/content/SharedPreferences;
    .end local v4           #smsc:Ljava/lang/String;
    .restart local p3
    :catch_0
    move-exception v0

    .line 154
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "Mms/SmsMessageSender"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 161
    .end local v0           #e:Ljava/lang/Exception;
    :cond_5
    iput-object p3, p0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    goto/16 :goto_1

    .line 168
    .end local p3
    :cond_6
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    .line 169
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    goto/16 :goto_2

    .line 214
    .restart local v2       #preference_smsc:Ljava/lang/String;
    .restart local v3       #prefs:Landroid/content/SharedPreferences;
    .restart local v4       #smsc:Ljava/lang/String;
    :cond_7
    iget-object v5, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, line1Number:Ljava/lang/String;
    if-nez v1, :cond_8

    const/4 v1, 0x0

    .end local v1           #line1Number:Ljava/lang/String;
    :cond_8
    iput-object v1, p0, Lcom/android/mms/transaction/SmsMessageSender;->mCallbackNumber:Ljava/lang/String;

    goto :goto_3

    .line 219
    :cond_9
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/mms/transaction/SmsMessageSender;->mCallbackNumber:Ljava/lang/String;

    goto :goto_3
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;JII)V
    .locals 7
    .parameter "context"
    .parameter "dests"
    .parameter "msgText"
    .parameter "threadId"
    .parameter "priority"
    .parameter "sendSimSlot"

    .prologue
    .line 130
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;JI)V

    .line 131
    iput p6, p0, Lcom/android/mms/transaction/SmsMessageSender;->mPriority:I

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;JIII)V
    .locals 7
    .parameter "context"
    .parameter "dests"
    .parameter "msgText"
    .parameter "threadId"
    .parameter "appId"
    .parameter "msgId"
    .parameter "sendSimSlot"

    .prologue
    .line 121
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;JI)V

    .line 122
    iput p6, p0, Lcom/android/mms/transaction/SmsMessageSender;->mRequestAppId:I

    .line 123
    iput p7, p0, Lcom/android/mms/transaction/SmsMessageSender;->mRequestMsgId:I

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;I)V
    .locals 7
    .parameter "context"
    .parameter "dests"
    .parameter "msgText"
    .parameter "threadId"
    .parameter "priority"
    .parameter "sender"
    .parameter "sendSimSlot"

    .prologue
    .line 139
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;JI)V

    .line 140
    iput p6, p0, Lcom/android/mms/transaction/SmsMessageSender;->mPriority:I

    .line 141
    iput-object p7, p0, Lcom/android/mms/transaction/SmsMessageSender;->mSenderAddress:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;JJI)V
    .locals 7
    .parameter "context"
    .parameter "dests"
    .parameter "msgText"
    .parameter "threadId"
    .parameter "oldGroupId"
    .parameter "sendSimSlot"

    .prologue
    .line 115
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;JI)V

    .line 116
    iput-wide p6, p0, Lcom/android/mms/transaction/SmsMessageSender;->mOldGroupId:J

    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;JZI)V
    .locals 7
    .parameter "context"
    .parameter "dests"
    .parameter "msgText"
    .parameter "threadId"
    .parameter "forcePending"
    .parameter "sendSimSlot"

    .prologue
    .line 109
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;JI)V

    .line 110
    iput-boolean p6, p0, Lcom/android/mms/transaction/SmsMessageSender;->mForcePending:Z

    .line 111
    return-void
.end method

.method public static addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;ZZJLandroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4
    .parameter "resolver"
    .parameter "uri"
    .parameter "address"
    .parameter "body"
    .parameter "subject"
    .parameter "simSlot"
    .parameter "date"
    .parameter "read"
    .parameter "deliveryReport"
    .parameter "threadId"
    .parameter "extensionValues"

    .prologue
    .line 543
    new-instance v1, Landroid/content/ContentValues;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 544
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "address"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    const-string v2, "body"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    const-string v2, "subject"

    invoke-virtual {v1, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    const-string v2, "sim_slot"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 549
    if-eqz p6, :cond_0

    const-string v2, "date"

    invoke-virtual {v1, v2, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 550
    :cond_0
    const-string v3, "read"

    if-eqz p7, :cond_4

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 552
    invoke-static {p5}, Lcom/android/mms/MmsConfig;->getIMSIbySimSlot(I)Ljava/lang/String;

    move-result-object v0

    .line 554
    .local v0, imsi:Ljava/lang/String;
    const-string v2, "sim_imsi"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    if-eqz p8, :cond_1

    const-string v2, "status"

    const/16 v3, 0x20

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 557
    :cond_1
    const-wide/16 v2, -0x1

    cmp-long v2, p9, v2

    if-eqz v2, :cond_2

    const-string v2, "thread_id"

    invoke-static {p9, p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 560
    :cond_2
    if-eqz p11, :cond_3

    invoke-virtual {v1, p11}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 562
    :cond_3
    invoke-virtual {p0, p1, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    return-object v2

    .line 550
    .end local v0           #imsi:Ljava/lang/String;
    :cond_4
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0
.end method

.method private static addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJLandroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4
    .parameter "resolver"
    .parameter "uri"
    .parameter "address"
    .parameter "body"
    .parameter "subject"
    .parameter "date"
    .parameter "read"
    .parameter "deliveryReport"
    .parameter "threadId"
    .parameter "extensionValues"

    .prologue
    const/4 v3, 0x0

    .line 484
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 485
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "address"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    const-string v1, "body"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    const-string v1, "subject"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    if-eqz p5, :cond_0

    const-string v1, "date"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 489
    :cond_0
    const-string v2, "read"

    if-eqz p6, :cond_4

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 490
    if-eqz p7, :cond_1

    const-string v1, "status"

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 491
    :cond_1
    const-wide/16 v1, -0x1

    cmp-long v1, p8, v1

    if-eqz v1, :cond_2

    const-string v1, "thread_id"

    invoke-static {p8, p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 492
    :cond_2
    const-string v1, "reserved"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 495
    if-eqz p10, :cond_3

    invoke-virtual {v0, p10}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 497
    :cond_3
    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 489
    :cond_4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method private static addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJLandroid/content/ContentValues;I)Landroid/net/Uri;
    .locals 4
    .parameter "resolver"
    .parameter "uri"
    .parameter "address"
    .parameter "body"
    .parameter "subject"
    .parameter "date"
    .parameter "read"
    .parameter "deliveryReport"
    .parameter "threadId"
    .parameter "extensionValues"
    .parameter "priority"

    .prologue
    const/4 v3, 0x0

    .line 512
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 513
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "address"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    const-string v1, "body"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    const-string v1, "subject"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    if-eqz p5, :cond_0

    const-string v1, "date"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 517
    :cond_0
    const-string v2, "read"

    if-eqz p6, :cond_4

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 518
    if-eqz p7, :cond_1

    const-string v1, "status"

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 519
    :cond_1
    const-wide/16 v1, -0x1

    cmp-long v1, p8, v1

    if-eqz v1, :cond_2

    const-string v1, "thread_id"

    invoke-static {p8, p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 520
    :cond_2
    const-string v1, "reserved"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 523
    if-eqz p10, :cond_3

    invoke-virtual {v0, p10}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 525
    :cond_3
    const-string v1, "pri"

    invoke-static {p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 527
    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 517
    :cond_4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method private static getBGSenderValues(JI)Landroid/content/ContentValues;
    .locals 3
    .parameter "appId"
    .parameter "msgID"

    .prologue
    .line 453
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 454
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "app_id"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 455
    const-string v1, "msg_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 457
    return-object v0
.end method

.method private static getCallbackValues(Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 2
    .parameter "callbackNumber"

    .prologue
    .line 461
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 462
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "callback_number"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    return-object v0
.end method

.method private static getGroupValues(JI)Landroid/content/ContentValues;
    .locals 3
    .parameter "groupId"
    .parameter "hidden"

    .prologue
    .line 442
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 443
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "group_id"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 444
    const-string v1, "hidden"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 446
    return-object v0
.end method

.method private static getLockedValues(Z)Landroid/content/ContentValues;
    .locals 3
    .parameter "locked"

    .prologue
    .line 468
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 469
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "locked"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 470
    return-object v0
.end method

.method private getOutgoingServiceCenter(J)Ljava/lang/String;
    .locals 11
    .parameter "threadId"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 578
    const/4 v7, 0x0

    .line 582
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/transaction/SmsMessageSender;->SERVICE_CENTER_PROJECTION:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "thread_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "date DESC"

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 586
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 593
    :cond_0
    if-eqz v7, :cond_1

    .line 594
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v9

    :cond_2
    :goto_0
    return-object v0

    .line 590
    :cond_3
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v8, v0, :cond_4

    .line 591
    .local v8, replyPathPresent:Z
    :goto_1
    if-eqz v8, :cond_5

    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 593
    :goto_2
    if-eqz v7, :cond_2

    .line 594
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v8           #replyPathPresent:Z
    :cond_4
    move v8, v10

    .line 590
    goto :goto_1

    .restart local v8       #replyPathPresent:Z
    :cond_5
    move-object v0, v9

    .line 591
    goto :goto_2

    .line 593
    .end local v8           #replyPathPresent:Z
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_6

    .line 594
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method private queueMessage(J)Z
    .locals 33
    .parameter "token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 260
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    if-nez v2, :cond_1

    .line 262
    :cond_0
    new-instance v2, Lcom/google/android/mms/MmsException;

    const-string v3, "Null message body or dest."

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 266
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableEmoji()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 267
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->convertCharToSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    .line 270
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableKoreanSpecialCharacter()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 271
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->convertCharaterforKOR(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    .line 273
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v31

    .line 274
    .local v31, prefs:Landroid/content/SharedPreferences;
    const-string v2, "pref_key_sms_delivery_reports"

    const/4 v3, 0x0

    move-object/from16 v0, v31

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 278
    .local v9, requestDeliveryReport:Z
    const/16 v32, 0x0

    .line 280
    .local v32, uri:Landroid/net/Uri;
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 281
    .local v12, extensionValues:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mCallbackNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mCallbackNumber:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/mms/transaction/SmsMessageSender;->getCallbackValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 282
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mRequestAppId:I

    if-lez v2, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mRequestMsgId:I

    if-lez v2, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mRequestAppId:I

    int-to-long v2, v2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/mms/transaction/SmsMessageSender;->mRequestMsgId:I

    invoke-static {v2, v3, v5}, Lcom/android/mms/transaction/SmsMessageSender;->getBGSenderValues(JI)Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 284
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mLocked:Z

    invoke-static {v2}, Lcom/android/mms/transaction/SmsMessageSender;->getLockedValues(Z)Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 288
    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIEI()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 289
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mSenderAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 291
    .local v4, temp:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/mms/transaction/SmsMessageSender;->URI_SMS_QUEUED:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/mms/transaction/SmsMessageSender;->mTimestamp:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/mms/transaction/SmsMessageSender;->mThreadId:J

    invoke-static/range {v2 .. v12}, Lcom/android/mms/transaction/SmsMessageSender;->addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJLandroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v32

    .line 327
    .end local v4           #temp:Ljava/lang/String;
    :goto_0
    if-eqz v32, :cond_6

    .line 328
    invoke-virtual/range {v32 .. v32}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mGroupId:J

    .line 329
    :cond_6
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mGroupId:J

    const/4 v5, 0x1

    invoke-static {v2, v3, v5}, Lcom/android/mms/transaction/SmsMessageSender;->getGroupValues(JI)Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    const/4 v3, 0x1

    if-gt v2, v3, :cond_7

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mOldGroupId:J

    const-wide/16 v5, 0x0

    cmp-long v2, v2, v5

    if-lez v2, :cond_8

    .line 336
    :cond_7
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mGroupId:J

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/mms/transaction/SmsMessageSender;->mOldGroupId:J

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v5, v6}, Lcom/android/mms/transaction/SmsMessageSender;->updateGroupSms(JJ)V

    .line 339
    :cond_8
    const/16 v29, 0x1

    .local v29, i:I
    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    move/from16 v0, v29

    if-ge v0, v2, :cond_d

    .line 348
    :try_start_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIEI()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 349
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v3, v3, v29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mSenderAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 351
    .local v15, tempAddress:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    sget-object v14, Lcom/android/mms/transaction/SmsMessageSender;->URI_SMS_QUEUED:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mTimestamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/transaction/SmsMessageSender;->mThreadId:J

    move-wide/from16 v21, v0

    move/from16 v20, v9

    move-object/from16 v23, v12

    invoke-static/range {v13 .. v23}, Lcom/android/mms/transaction/SmsMessageSender;->addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJLandroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 339
    .end local v15           #tempAddress:Ljava/lang/String;
    :goto_3
    add-int/lit8 v29, v29, 0x1

    goto :goto_2

    .line 301
    .end local v29           #i:I
    :cond_9
    :try_start_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePriority()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 302
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    sget-object v14, Lcom/android/mms/transaction/SmsMessageSender;->URI_SMS_QUEUED:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v15, v2, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mTimestamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/transaction/SmsMessageSender;->mThreadId:J

    move-wide/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/transaction/SmsMessageSender;->mPriorityLevel:I

    move/from16 v24, v0

    move/from16 v20, v9

    move-object/from16 v23, v12

    invoke-static/range {v13 .. v24}, Lcom/android/mms/transaction/SmsMessageSender;->addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJLandroid/content/ContentValues;I)Landroid/net/Uri;

    move-result-object v32

    goto/16 :goto_0

    .line 314
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    sget-object v14, Lcom/android/mms/transaction/SmsMessageSender;->URI_SMS_QUEUED:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v15, v2, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/transaction/SmsMessageSender;->mSimSlot:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mTimestamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/transaction/SmsMessageSender;->mThreadId:J

    move-wide/from16 v22, v0

    move/from16 v21, v9

    move-object/from16 v24, v12

    invoke-static/range {v13 .. v24}, Lcom/android/mms/transaction/SmsMessageSender;->addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;ZZJLandroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v32

    goto/16 :goto_0

    .line 331
    :catch_0
    move-exception v28

    .line 332
    .local v28, e:Landroid/database/sqlite/SQLiteException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    move-object/from16 v0, v28

    invoke-static {v2, v0}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto/16 :goto_1

    .line 361
    .end local v28           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v29       #i:I
    :cond_b
    :try_start_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePriority()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 362
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    sget-object v17, Lcom/android/mms/transaction/SmsMessageSender;->URI_SMS_QUEUED:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v18, v2, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mTimestamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    const/16 v22, 0x1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/transaction/SmsMessageSender;->mThreadId:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/transaction/SmsMessageSender;->mPriorityLevel:I

    move/from16 v27, v0

    move/from16 v23, v9

    move-object/from16 v26, v12

    invoke-static/range {v16 .. v27}, Lcom/android/mms/transaction/SmsMessageSender;->addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJLandroid/content/ContentValues;I)Landroid/net/Uri;
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_3

    .line 388
    :catch_1
    move-exception v28

    .line 389
    .restart local v28       #e:Landroid/database/sqlite/SQLiteException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    move-object/from16 v0, v28

    invoke-static {v2, v0}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto/16 :goto_3

    .line 375
    .end local v28           #e:Landroid/database/sqlite/SQLiteException;
    :cond_c
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    sget-object v17, Lcom/android/mms/transaction/SmsMessageSender;->URI_SMS_QUEUED:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v18, v2, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/transaction/SmsMessageSender;->mSimSlot:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mTimestamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/transaction/SmsMessageSender;->mThreadId:J

    move-wide/from16 v25, v0

    move/from16 v24, v9

    move-object/from16 v27, v12

    invoke-static/range {v16 .. v27}, Lcom/android/mms/transaction/SmsMessageSender;->addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;ZZJLandroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_3

    .line 396
    :cond_d
    new-instance v30, Landroid/content/Intent;

    const-string v2, "com.android.mms.transaction.SEND_MESSAGE"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    const-class v6, Lcom/android/mms/transaction/SmsReceiver;

    move-object/from16 v0, v30

    invoke-direct {v0, v2, v3, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 397
    .local v30, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mForcePending:Z

    if-eqz v2, :cond_e

    const-string v2, "AutoSendWhenInDomesticCoverage"

    const/4 v3, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 399
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 401
    const/4 v2, 0x0

    return v2
.end method

.method private updateGroupSms(JJ)V
    .locals 7
    .parameter "groupId"
    .parameter "oldGroupId"

    .prologue
    const/4 v6, 0x0

    .line 242
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 243
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "group_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 244
    const-string v2, "group_type"

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 246
    iget-object v2, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v1, v4, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 248
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-lez v2, :cond_0

    .line 249
    const-string v2, "group_type"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 250
    const-string v2, "hidden"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 251
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(group_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND type!="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, selection:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1, v0, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 255
    .end local v0           #selection:Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public queueMessageForPending(J)Z
    .locals 14
    .parameter "threadId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 407
    iget-object v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    if-nez v0, :cond_1

    .line 409
    :cond_0
    new-instance v0, Lcom/google/android/mms/MmsException;

    const-string v1, "Null message body or dest."

    invoke-direct {v0, v1}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 412
    :cond_1
    iget-object v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 413
    .local v13, prefs:Landroid/content/SharedPreferences;
    const-string v0, "pref_key_sms_delivery_reports"

    const/4 v1, 0x0

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 417
    .local v7, requestDeliveryReport:Z
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    iget v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    if-ge v11, v0, :cond_2

    .line 419
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://sms/queued"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v2, v2, v11

    iget-object v3, p0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    const/4 v4, 0x0

    iget-wide v5, p0, Lcom/android/mms/transaction/SmsMessageSender;->mTimestamp:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x1

    iget-wide v8, p0, Lcom/android/mms/transaction/SmsMessageSender;->mThreadId:J

    invoke-static/range {v0 .. v9}, Landroid/provider/Telephony$Sms;->addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJ)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 425
    :catch_0
    move-exception v10

    .line 426
    .local v10, e:Landroid/database/sqlite/SQLiteException;
    iget-object v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v0, v10}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_1

    .line 430
    .end local v10           #e:Landroid/database/sqlite/SQLiteException;
    :cond_2
    new-instance v12, Landroid/content/Intent;

    const-string v0, "com.android.mms.transaction.SEND_MESSAGE"

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/mms/transaction/SmsReceiver;

    invoke-direct {v12, v0, v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 434
    .local v12, intent:Landroid/content/Intent;
    const-string v0, "AutoSendWhenInDomesticCoverage"

    const/4 v1, 0x1

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 435
    iget-object v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 437
    const/4 v0, 0x0

    return v0
.end method

.method public sendMessage(J)Z
    .locals 1
    .parameter "token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 236
    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/SmsMessageSender;->queueMessage(J)Z

    move-result v0

    return v0
.end method

.method public setLocked(Z)V
    .locals 0
    .parameter "locked"

    .prologue
    .line 227
    iput-boolean p1, p0, Lcom/android/mms/transaction/SmsMessageSender;->mLocked:Z

    .line 228
    return-void
.end method

.method public setPriorityLevel(I)V
    .locals 0
    .parameter "priority"

    .prologue
    .line 601
    iput p1, p0, Lcom/android/mms/transaction/SmsMessageSender;->mPriorityLevel:I

    .line 602
    return-void
.end method
