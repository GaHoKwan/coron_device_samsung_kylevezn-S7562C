.class public Lcom/android/mms/transaction/SmsReceiverService;
.super Landroid/app/Service;
.source "SmsReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/transaction/SmsReceiverService$HeadsetEventReceiver;,
        Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;
    }
.end annotation


# static fields
.field public static final ACTION_SEND_MESSAGE:Ljava/lang/String; = "com.android.mms.transaction.SEND_MESSAGE"

.field private static final ADDRESS_TRANSLATION_FAILURE_S:I = 0x1

.field private static final ADDRESS_VACANT_S:I = 0x0

.field private static final CB_MY_CHANNEL_MAX_COUNT_PREFIXED:I = 0x3e8

.field public static final CLASS_ZERO_BODY_KEY:Ljava/lang/String; = "CLASS_ZERO_BODY"

.field public static final DELIM:Ljava/lang/String; = "/"

.field public static final EXTRA_LAST_SENT_MSG:Ljava/lang/String; = "LastSentMsg"

.field public static final EXTRA_MESSAGE_SENT_SEND_NEXT:Ljava/lang/String; = "SendNextMsg"

.field public static final EXTRA_SEND_MESSAGE_INTERNATIONAL_ROAM:Ljava/lang/String; = "AutoSendWhenInDomesticCoverage"

.field private static final GROUP_SEND_LAST:I = 0x2

.field private static final GROUP_SEND_MORE:I = 0x1

.field private static final GROUP_SEND_SINGLE:I = 0x0

.field private static final GROUP_SMS_COLUMN_GROUP_ID:I = 0x1

.field private static final GROUP_SMS_COLUMN_TYPE:I = 0x0

.field public static final MESSAGE_SENT_ACTION:Ljava/lang/String; = "com.android.mms.transaction.MESSAGE_SENT"

.field private static final NETWORK_RESOURCE_SHORTAGE_S:I = 0x2

.field private static final NO_ACK:I = 0x22

.field private static final OTHER_GENERAL_PROBLEMS_MORE_FIRST_S:I = 0x6c

.field private static final OTHER_NETWORK_PROBLEM_MORE_LAST_S:I = 0x1f

.field private static final REPLACE_COLUMN_ID:I = 0x0

.field private static final REPLACE_PROJECTION:[Ljava/lang/String; = null

.field private static final SAFETY_MESSAGE_KIDS_SAFE_ADDRESS:Ljava/lang/String; = "address"

.field private static final SAFETY_MESSAGE_SEND_KIDS_SAFE:Ljava/lang/String; = "android.intent.action.SAFETY_MESSAGE_SEND_KIDS_SAFE"

.field private static final SEND_COLUMN_ADDRESS:I = 0x2

.field private static final SEND_COLUMN_BODY:I = 0x3

.field private static final SEND_COLUMN_CALLBACK_NUMBER:I = 0x5

.field private static final SEND_COLUMN_GROUP_ID:I = 0x6

.field private static final SEND_COLUMN_ID:I = 0x0

.field private static final SEND_COLUMN_PRIORITY:I = 0x6

.field private static final SEND_COLUMN_SIM_SLOT:I = 0x7

.field private static final SEND_COLUMN_STATUS:I = 0x4

.field private static final SEND_COLUMN_THREAD_ID:I = 0x1

.field private static final SEND_PROJECTION:[Ljava/lang/String; = null

.field private static final SEND_PROJECTION_FOR_CHANGE_SENDER:[Ljava/lang/String; = null

.field private static final SMS_ORIGINATION_DENIED_S:I = 0x61

.field private static final TAG:Ljava/lang/String; = "Mms/SmsReceiverService"

.field private static final TERMINATION_DENIED_S:I = 0x62

.field private static final USER_DATA_SIZE_ERROR_S:I = 0x64

.field private static isNumberVIP:Z

.field private static mSending:Z

.field private static mSeviceState1:I

.field private static mSeviceState2:I

.field private static final multiSimNum:I


# instance fields
.field private final GROUP_SMS_PROJECTION:[Ljava/lang/String;

.field private mCausecode:I

.field private mGroupSendingStatus:I

.field private mMessage:Ljava/lang/String;

.field mPhoneStatelistener:Landroid/telephony/PhoneStateListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRecipient:Ljava/lang/String;

.field private mResultCode:I

.field private mServiceHandler:Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;

.field private mServiceLooper:Landroid/os/Looper;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public mToastHandler:Landroid/os/Handler;

.field protected userSelectedEncodingType:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 143
    sput-boolean v3, Lcom/android/mms/transaction/SmsReceiverService;->isNumberVIP:Z

    .line 159
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "thread_id"

    aput-object v1, v0, v4

    const-string v1, "address"

    aput-object v1, v0, v5

    const-string v1, "body"

    aput-object v1, v0, v6

    const-string v1, "status"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "callback_number"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "pri"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "sim_slot"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/transaction/SmsReceiverService;->SEND_PROJECTION:[Ljava/lang/String;

    .line 171
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "thread_id"

    aput-object v1, v0, v4

    const-string v1, "address"

    aput-object v1, v0, v5

    const-string v1, "body"

    aput-object v1, v0, v6

    const-string v1, "status"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "callback_number"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "group_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/transaction/SmsReceiverService;->SEND_PROJECTION_FOR_CHANGE_SENDER:[Ljava/lang/String;

    .line 225
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v0

    sput v0, Lcom/android/mms/transaction/SmsReceiverService;->multiSimNum:I

    .line 227
    sput v3, Lcom/android/mms/transaction/SmsReceiverService;->mSeviceState1:I

    .line 228
    sput v3, Lcom/android/mms/transaction/SmsReceiverService;->mSeviceState2:I

    .line 1398
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "address"

    aput-object v1, v0, v4

    const-string v1, "protocol"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/mms/transaction/SmsReceiverService;->REPLACE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 134
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 182
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mToastHandler:Landroid/os/Handler;

    .line 231
    new-instance v0, Lcom/android/mms/transaction/SmsReceiverService$HeadsetEventReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/mms/transaction/SmsReceiverService$HeadsetEventReceiver;-><init>(Lcom/android/mms/transaction/SmsReceiverService;Lcom/android/mms/transaction/SmsReceiverService$1;)V

    iput-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 837
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "group_id"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->GROUP_SMS_PROJECTION:[Ljava/lang/String;

    .line 2120
    new-instance v0, Lcom/android/mms/transaction/SmsReceiverService$5;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/SmsReceiverService$5;-><init>(Lcom/android/mms/transaction/SmsReceiverService;)V

    iput-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mPhoneStatelistener:Landroid/telephony/PhoneStateListener;

    .line 2157
    return-void
.end method

.method private EncodeNonGSMCharater(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "msgText"

    .prologue
    .line 2207
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getInputmode(Landroid/content/Context;)I

    move-result v7

    iput v7, p0, Lcom/android/mms/transaction/SmsReceiverService;->userSelectedEncodingType:I

    .line 2209
    iget v7, p0, Lcom/android/mms/transaction/SmsReceiverService;->userSelectedEncodingType:I

    if-nez v7, :cond_5

    .line 2211
    move-object v0, p1

    .line 2212
    .local v0, Tempbuff:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2214
    .local v4, stringBuilder:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v1, v7, :cond_4

    .line 2215
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 2217
    .local v6, v:C
    const/16 v7, 0x3130

    if-ge v7, v6, :cond_0

    const/16 v7, 0x318d

    if-lt v6, v7, :cond_1

    :cond_0
    const v7, 0xabff

    if-ge v7, v6, :cond_2

    const v7, 0xd7a4

    if-ge v6, v7, :cond_2

    .line 2218
    :cond_1
    const/4 v7, 0x2

    iput v7, p0, Lcom/android/mms/transaction/SmsReceiverService;->userSelectedEncodingType:I

    move-object v2, p1

    .line 2233
    .end local v0           #Tempbuff:Ljava/lang/String;
    .end local v1           #i:I
    .end local v4           #stringBuilder:Ljava/lang/StringBuilder;
    .end local v6           #v:C
    .end local p1
    .local v2, msgText:Ljava/lang/String;
    :goto_1
    return-object v2

    .line 2221
    .end local v2           #msgText:Ljava/lang/String;
    .restart local v0       #Tempbuff:Ljava/lang/String;
    .restart local v1       #i:I
    .restart local v4       #stringBuilder:Ljava/lang/StringBuilder;
    .restart local v6       #v:C
    .restart local p1
    :cond_2
    invoke-static {v6}, Lcom/android/internal/telephony/GsmAlphabet;->convertEachCharacter(C)C

    move-result v5

    .line 2222
    .local v5, temp:C
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 2223
    .local v3, s:Ljava/lang/StringBuffer;
    const v7, 0xfeff

    if-ne v7, v5, :cond_3

    .line 2225
    const/16 v5, 0x3f

    .line 2226
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "Unavialable to show"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2229
    :cond_3
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2214
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2231
    .end local v3           #s:Ljava/lang/StringBuffer;
    .end local v5           #temp:C
    .end local v6           #v:C
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .end local v0           #Tempbuff:Ljava/lang/String;
    .end local v1           #i:I
    .end local v4           #stringBuilder:Ljava/lang/StringBuilder;
    :cond_5
    move-object v2, p1

    .line 2233
    .end local p1
    .restart local v2       #msgText:Ljava/lang/String;
    goto :goto_1
.end method

.method public static FilterCLRF(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "source"

    .prologue
    .line 1791
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .line 1792
    .local v1, i:I
    const/4 v0, 0x0

    .line 1793
    .local v0, count:I
    add-int/lit8 v3, v1, 0x1

    .line 1795
    .local v3, total:I
    :goto_0
    if-lez v1, :cond_1

    .line 1796
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xd

    if-eq v4, v5, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_1

    .line 1797
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 1800
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1803
    :cond_1
    const/4 v4, 0x0

    sub-int v5, v3, v0

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1804
    .local v2, ret:Ljava/lang/String;
    return-object v2
.end method

.method static synthetic access$100(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/SmsReceiverService;->handleSmsSent(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/SmsReceiverService;->handleErrCodeForGetCbReceived(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/SmsReceiverService;->handleCbSettingsAvailable(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/SmsReceiverService;->handleSIMStatus(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/SmsReceiverService;->handleSmsServiceCenter(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Context;[Landroid/telephony/SmsMessage;IZ)Landroid/net/Uri;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 134
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/transaction/SmsReceiverService;->storeMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;IZ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/mms/transaction/SmsReceiverService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/SmsReceiverService;->handlePCWLockMessage(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/mms/transaction/SmsReceiverService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mCausecode:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/mms/transaction/SmsReceiverService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mRecipient:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/mms/transaction/SmsReceiverService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/mms/transaction/SmsReceiverService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/SmsReceiverService;->sendPCWLockMessage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/SmsReceiverService;->handleSmsReceived(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/transaction/SmsReceiverService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/android/mms/transaction/SmsReceiverService;->handleBootCompleted()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/SmsReceiverService;->handleServiceStateChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/transaction/SmsReceiverService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/android/mms/transaction/SmsReceiverService;->registerForRoamingStatusChanges()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/transaction/SmsReceiverService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/android/mms/transaction/SmsReceiverService;->handleSendMessage()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/SmsReceiverService;->handleRoamingStatusChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/SmsReceiverService;->handleSmsCbReceived(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/mms/transaction/SmsReceiverService;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/SmsReceiverService;->handleErrCodeForSetCbReceived(Landroid/content/Intent;)V

    return-void
.end method

.method private clearCBMessages()V
    .locals 5

    .prologue
    .line 1985
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "read= 0 and protocol= 5"

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1987
    return-void
.end method

.method private displayClassZeroMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;Ljava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "msgs"
    .parameter "format"

    .prologue
    .line 1762
    const/4 v5, 0x0

    aget-object v3, p2, v5

    .line 1764
    .local v3, sms:Landroid/telephony/SmsMessage;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1765
    .local v0, body:Ljava/lang/StringBuilder;
    array-length v2, p2

    .line 1767
    .local v2, pduCount:I
    const/4 v5, 0x1

    if-ne v2, v5, :cond_1

    .line 1768
    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1778
    :cond_0
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/android/mms/ui/ClassZeroActivity;

    invoke-direct {v5, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "pdu"

    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getPdu()[B

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "format"

    invoke-virtual {v5, v6, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "body"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/mms/transaction/SmsReceiverService;->FilterCLRF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "simSlot"

    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getSimIdentifier()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5

    const/high16 v6, 0x1800

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v4

    .line 1786
    .local v4, smsDialogIntent:Landroid/content/Intent;
    invoke-virtual {p1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1787
    return-void

    .line 1770
    .end local v4           #smsDialogIntent:Landroid/content/Intent;
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1771
    aget-object v3, p2, v1

    .line 1772
    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1770
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private extractContentValues(Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;
    .locals 7
    .parameter "sms"

    .prologue
    const/4 v3, 0x0

    .line 1691
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1694
    .local v2, values:Landroid/content/ContentValues;
    const-string v4, "ril.sms.gcf-mode"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1696
    .local v0, GcfMode:Ljava/lang/String;
    const-string v4, "On"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1697
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3

    .line 1698
    const-string v4, "Mms/SmsReceiverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sms.getOriginatingAddress() :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1699
    const-string v4, "address"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1719
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsServerTime()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1720
    const-string v4, "date"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1729
    :goto_1
    const-string v4, "date_sent"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1730
    const-string v4, "protocol"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1731
    const-string v4, "read"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1732
    const-string v4, "seen"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1733
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getPseudoSubject()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 1734
    const-string v4, "subject"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getPseudoSubject()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1737
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePriority()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1738
    const-string v4, "Mms/SmsReceiverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "extractContentValues priority = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getMessagePriority()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1739
    const-string v4, "pri"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getMessagePriority()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1742
    :cond_1
    const-string v4, "reply_path_present"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->isReplyPathPresent()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v3, 0x1

    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1743
    const-string v3, "service_center"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1746
    const-string v3, "sim_slot"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getSimIdentifier()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1747
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getSimIdentifier()I

    move-result v3

    invoke-static {v3}, Lcom/android/mms/MmsConfig;->getIMSIbySimSlot(I)Ljava/lang/String;

    move-result-object v1

    .line 1749
    .local v1, imsi:Ljava/lang/String;
    const-string v3, "sim_imsi"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1752
    return-object v2

    .line 1701
    .end local v1           #imsi:Ljava/lang/String;
    :cond_3
    const-string v4, "Mms/SmsReceiverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sms.getDisplayOriginatingAddress(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1704
    const-string v4, "address"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1707
    :cond_4
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1708
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1709
    const-string v4, "address"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1711
    :cond_5
    const-string v4, "address"

    const v5, 0x7f0a0188

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1714
    :cond_6
    const-string v4, "address"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1724
    :cond_7
    const-string v4, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_1
.end method

.method private handleBootCompleted()V
    .locals 10

    .prologue
    const-wide/16 v6, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1313
    const-string v4, "Mms/SmsReceiverService"

    const-string v5, "handleBootCompleted()"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 1327
    invoke-direct {p0, v9}, Lcom/android/mms/transaction/SmsReceiverService;->handlePCWLockMessage(Z)V

    .line 1330
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAnonymousThread()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1331
    invoke-static {}, Lcom/android/mms/data/Conversation;->deleteTempConversation()V

    .line 1338
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/transaction/SmsReceiverService;->moveOutboxMessagesToFailedBox()I

    move-result v0

    .line 1339
    .local v0, numMoved:I
    if-lez v0, :cond_1

    .line 1340
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v9, v8}, Lcom/android/mms/transaction/MessagingNotification;->notifySendFailed(Landroid/content/Context;ZI)V

    .line 1344
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->sendFirstQueuedMessage()V

    .line 1352
    invoke-static {p0, v6, v7, v8, v8}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;JZI)V

    .line 1354
    invoke-static {p0, v6, v7, v8, v8}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewAlertIndicator(Landroid/content/Context;JZI)V

    .line 1358
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSegmentedSms()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_3

    .line 1361
    :cond_2
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v3

    .line 1362
    .local v3, smsManager:Landroid/telephony/SmsManager;
    const-class v4, Landroid/telephony/SmsManager;

    const-string v5, "setCDMASmsReassembly"

    new-array v6, v9, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Lcom/android/mms/util/MethodReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1363
    .local v1, setCDMASmsReassembly:Ljava/lang/reflect/Method;
    if-eqz v3, :cond_3

    .line 1364
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1365
    .local v2, sharedpref:Landroid/content/SharedPreferences;
    new-array v4, v9, [Ljava/lang/Object;

    const-string v5, "pref_key_sms_reassembly"

    invoke-interface {v2, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v1, v4}, Lcom/android/mms/util/MethodReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1370
    .end local v1           #setCDMASmsReassembly:Ljava/lang/reflect/Method;
    .end local v2           #sharedpref:Landroid/content/SharedPreferences;
    .end local v3           #smsManager:Landroid/telephony/SmsManager;
    :cond_3
    const-string v4, "Mms/SmsReceiverService"

    const-string v5, "handleBootCompleted()"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 1371
    return-void
.end method

.method private handleCbSettingsAvailable(Landroid/content/Intent;)V
    .locals 23
    .parameter "intent"

    .prologue
    .line 1870
    const-string v20, "simSlot"

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    .line 1871
    .local v18, simSlot:I
    invoke-static/range {v18 .. v18}, Landroid/telephony/MultiSimSmsManager;->getDefault(I)Landroid/telephony/SmsManager;

    move-result-object v19

    .line 1872
    .local v19, smsManager:Landroid/telephony/SmsManager;
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 1873
    .local v4, context:Landroid/content/Context;
    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 1874
    .local v14, sharedpref:Landroid/content/SharedPreferences;
    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 1879
    .local v8, editor:Landroid/content/SharedPreferences$Editor;
    const-string v20, "Mms/SmsReceiverService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "handleCbSettingsAvailable - simSlot = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1881
    invoke-virtual/range {v19 .. v19}, Landroid/telephony/SmsManager;->getCbSettings()Landroid/telephony/gsm/CbConfig;

    move-result-object v3

    .line 1882
    .local v3, cbConfig:Landroid/telephony/gsm/CbConfig;
    if-nez v3, :cond_2

    .line 1883
    const-string v20, "Mms/SmsReceiverService"

    const-string v21, "smsManager.getCbSettings() = null."

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1884
    const/16 v17, 0x3e8

    .line 1916
    .local v17, simChMaxCount:I
    :cond_0
    :goto_0
    move/from16 v0, v18

    invoke-static {v4, v0}, Lcom/android/mms/ui/ChannelUtils;->getChannelId(Landroid/content/Context;I)[S

    move-result-object v11

    .line 1919
    .local v11, myChIDs:[S
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-static {v4, v0}, Lcom/android/mms/ui/MessageUtils;->isSimActive(Landroid/content/Context;I)Z

    move-result v15

    .line 1920
    .local v15, simActive1:Z
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-static {v4, v0}, Lcom/android/mms/ui/MessageUtils;->isSimActive(Landroid/content/Context;I)Z

    move-result v16

    .line 1921
    .local v16, simActive2:Z
    const-string v20, "Mms/SmsReceiverService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[CB] handleCbSettingsAvailable() simActive1="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", simActive2="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1923
    sget v20, Lcom/android/mms/transaction/SmsReceiverService;->multiSimNum:I

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_1

    .line 1924
    if-nez v15, :cond_1

    if-eqz v16, :cond_1

    if-nez v18, :cond_1

    .line 1925
    const/16 v18, 0x1

    .line 1929
    :cond_1
    sget v20, Lcom/android/mms/transaction/SmsReceiverService;->multiSimNum:I

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_6

    if-eqz v18, :cond_6

    .line 1930
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "pref_cb_my_channel_enabled_count_sim"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    add-int/lit8 v21, v18, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1931
    .local v12, preference_count:Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "pref_cb_my_channel_max_count_sim"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    add-int/lit8 v21, v18, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1933
    .local v13, preference_max:Ljava/lang/String;
    array-length v0, v11

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-interface {v8, v12, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1934
    move/from16 v0, v17

    invoke-interface {v8, v13, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1941
    .end local v12           #preference_count:Ljava/lang/String;
    .end local v13           #preference_max:Ljava/lang/String;
    :goto_1
    const-string v20, "pref_sim_ready_status"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1942
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1944
    move/from16 v0, v18

    invoke-static {v4, v14, v0}, Lcom/android/mms/ui/ChannelUtils;->setCbSettings(Landroid/content/Context;Landroid/content/SharedPreferences;I)V

    .line 1945
    return-void

    .line 1887
    .end local v11           #myChIDs:[S
    .end local v15           #simActive1:Z
    .end local v16           #simActive2:Z
    .end local v17           #simChMaxCount:I
    :cond_2
    iget-char v0, v3, Landroid/telephony/gsm/CbConfig;->msgIdMaxCount:C

    move/from16 v17, v0

    .line 1888
    .restart local v17       #simChMaxCount:I
    move/from16 v0, v18

    invoke-static {v4, v0}, Lcom/android/mms/ui/ChannelUtils;->getChannels(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v7

    .line 1889
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 1890
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v5

    .line 1891
    .local v5, curChCount:I
    move/from16 v0, v18

    invoke-static {v4, v0}, Lcom/android/mms/ui/ChannelUtils;->getCheckedCount(Landroid/content/Context;I)I

    move-result v6

    .line 1893
    .local v6, curCheckedChCount:I
    :try_start_0
    const-string v20, "Mms/SmsReceiverService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "curChCount = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "curCheckedChCount = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1894
    const-string v20, "Mms/SmsReceiverService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "simChMaxCount = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "cbConfig.msgIdCount = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget v0, v3, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1895
    iget v0, v3, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    move/from16 v20, v0

    add-int v20, v20, v6

    move/from16 v0, v20

    move/from16 v1, v17

    if-le v0, v1, :cond_3

    .line 1896
    move/from16 v0, v18

    invoke-static {v4, v0}, Lcom/android/mms/ui/ChannelUtils;->getChannelId(Landroid/content/Context;I)[S

    move-result-object v11

    .line 1897
    .restart local v11       #myChIDs:[S
    const/4 v10, 0x0

    .local v10, j:I
    :goto_2
    if-ge v10, v5, :cond_3

    .line 1898
    aget-short v20, v11, v10

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v18

    invoke-static {v4, v0, v1, v2}, Lcom/android/mms/ui/ChannelUtils;->updateSubscription(Landroid/content/Context;III)V

    .line 1897
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 1901
    .end local v10           #j:I
    .end local v11           #myChIDs:[S
    :cond_3
    const/4 v9, 0x0

    .local v9, i:I
    :goto_3
    iget v0, v3, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v9, v0, :cond_5

    .line 1902
    iget-object v0, v3, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    move-object/from16 v20, v0

    aget-short v20, v20, v9

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-static {v4, v0, v1}, Lcom/android/mms/ui/ChannelUtils;->isChannelAvailable(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 1903
    iget-object v0, v3, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    move-object/from16 v20, v0

    aget-short v20, v20, v9

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v18

    invoke-static {v4, v0, v1, v2}, Lcom/android/mms/ui/ChannelUtils;->updateSubscription(Landroid/content/Context;III)V

    .line 1901
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1906
    :cond_4
    iget-object v0, v3, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    move-object/from16 v20, v0

    aget-short v20, v20, v9

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v18

    invoke-static {v4, v0, v1, v2}, Lcom/android/mms/ui/ChannelUtils;->addChannel(Landroid/content/Context;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    .line 1911
    .end local v9           #i:I
    :catchall_0
    move-exception v20

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v20

    .restart local v9       #i:I
    :cond_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1938
    .end local v5           #curChCount:I
    .end local v6           #curCheckedChCount:I
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v9           #i:I
    .restart local v11       #myChIDs:[S
    .restart local v15       #simActive1:Z
    .restart local v16       #simActive2:Z
    :cond_6
    const-string v20, "pref_cb_my_channel_enabled_count"

    array-length v0, v11

    move/from16 v21, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1939
    const-string v20, "pref_cb_my_channel_max_count"

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_1
.end method

.method private handleErrCodeForGetCbReceived(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 1973
    const-string v2, "getRsp"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 1975
    .local v0, messages:Ljava/io/Serializable;
    instance-of v2, v0, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 1976
    check-cast v1, Lcom/android/internal/telephony/CommandException;

    .line 1977
    .local v1, result:Lcom/android/internal/telephony/CommandException;
    const-string v2, "Mms/SmsReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CB] error code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1981
    .end local v1           #result:Lcom/android/internal/telephony/CommandException;
    :goto_0
    return-void

    .line 1979
    :cond_0
    const-string v2, "Mms/SmsReceiverService"

    const-string v3, "[CB] error code = Unknown Object received "

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleErrCodeForSetCbReceived(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 1859
    const-string v2, "setRsp"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 1861
    .local v0, messages:Ljava/io/Serializable;
    instance-of v2, v0, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 1862
    check-cast v1, Lcom/android/internal/telephony/CommandException;

    .line 1863
    .local v1, result:Lcom/android/internal/telephony/CommandException;
    const-string v2, "Mms/SmsReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CB] error code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1867
    .end local v1           #result:Lcom/android/internal/telephony/CommandException;
    :goto_0
    return-void

    .line 1865
    :cond_0
    const-string v2, "Mms/SmsReceiverService"

    const-string v3, "[CB] error code = Unknown Object received "

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handlePCWLockMessage(Z)V
    .locals 4
    .parameter "isBootComplete"

    .prologue
    .line 2141
    const/16 v0, 0x14

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_pcw_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2142
    const-string v0, "Mms/SmsReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PCW LOCK. Send Lock message. BootComplete : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2144
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_pcw_phone"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mRecipient:Ljava/lang/String;

    .line 2145
    if-eqz p1, :cond_1

    .line 2146
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a024e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mMessage:Ljava/lang/String;

    .line 2152
    :goto_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 2153
    iget-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/mms/transaction/SmsReceiverService;->mPhoneStatelistener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 2155
    :cond_0
    return-void

    .line 2148
    :cond_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a024d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mMessage:Ljava/lang/String;

    goto :goto_0
.end method

.method private handleRoamingStatusChanged(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 531
    const-string v1, "status"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 533
    .local v0, currentRoam:Ljava/lang/String;
    const-string v1, "Mms/SmsReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_ROAMING_STATUS_CHANGED : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    const-string v1, "home"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 536
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->sendFirstQueuedMessage()V

    .line 538
    :cond_0
    return-void
.end method

.method private handleSIMStatus(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    .line 1948
    const-string v4, "Mms/SmsReceiverService"

    const-string v5, "handleSIMStatus()"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1949
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    .line 1951
    .local v1, cscFeature:Lcom/sec/android/app/CscFeature;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1952
    .local v3, sharedpref:Landroid/content/SharedPreferences;
    const-string v4, "ss"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1954
    .local v0, SIM_STATUS:Ljava/lang/String;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1956
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "Mms/SmsReceiverService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleSIMStatus(): SIM_STATUS = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1957
    const-string v4, "ABSENT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1958
    const-string v4, "pref_sim_ready_status"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1959
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1970
    :cond_0
    :goto_0
    return-void

    .line 1960
    :cond_1
    const-string v4, "READY"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1961
    const-string v4, "pref_sim_ready_status"

    const/4 v5, 0x1

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1962
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 1963
    :cond_2
    const-string v4, "LOADED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1965
    const-string v4, "CscFeature_Contact_EnableDynCallerIdMatchingDigitWithAutoSim"

    invoke-virtual {v1, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1966
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->getLTNContactsMatchLength(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Lcom/android/mms/MmsConfig;->setContactMatchCliDigit(I)V

    goto :goto_0
.end method

.method private handleSendMessage()V
    .locals 3

    .prologue
    .line 542
    const-string v0, "Mms/SmsReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSendMessage mSending = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/mms/transaction/SmsReceiverService;->mSending:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    sget-boolean v0, Lcom/android/mms/transaction/SmsReceiverService;->mSending:Z

    if-nez v0, :cond_0

    .line 544
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->sendFirstQueuedMessage()V

    .line 546
    :cond_0
    return-void
.end method

.method private handleServiceStateChanged(Landroid/content/Intent;)V
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    .line 481
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v0

    .line 484
    .local v0, serviceState:Landroid/telephony/ServiceState;
    sget v2, Lcom/android/mms/transaction/SmsReceiverService;->multiSimNum:I

    if-le v2, v5, :cond_2

    .line 485
    const-string v2, "simSlot"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 486
    .local v1, simSlot:I
    const-string v2, "Mms/SmsReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SMS]handleServiceStateChanged() simSlot: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    if-ne v1, v5, :cond_1

    .line 489
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    sput v2, Lcom/android/mms/transaction/SmsReceiverService;->mSeviceState2:I

    .line 494
    :goto_0
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-nez v2, :cond_0

    .line 495
    invoke-virtual {p0, v1}, Lcom/android/mms/transaction/SmsReceiverService;->sendFirstQueuedMessage(I)V

    .line 508
    .end local v1           #simSlot:I
    :cond_0
    :goto_1
    const-string v2, "Mms/SmsReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SMS]handleServiceStateChanged() mSeviceState1: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/mms/transaction/SmsReceiverService;->mSeviceState1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mSeviceState2: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/mms/transaction/SmsReceiverService;->mSeviceState2:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    return-void

    .line 491
    .restart local v1       #simSlot:I
    :cond_1
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    sput v2, Lcom/android/mms/transaction/SmsReceiverService;->mSeviceState1:I

    goto :goto_0

    .line 501
    .end local v1           #simSlot:I
    :cond_2
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    sput v2, Lcom/android/mms/transaction/SmsReceiverService;->mSeviceState1:I

    .line 503
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-nez v2, :cond_0

    .line 504
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->sendFirstQueuedMessage()V

    goto :goto_1
.end method

.method private handleSmsCbReceived(Landroid/content/Intent;)V
    .locals 12
    .parameter "intent"

    .prologue
    const/4 v11, 0x0

    .line 1828
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1829
    .local v4, sharedpref:Landroid/content/SharedPreferences;
    const-string v8, "simSlot"

    invoke-virtual {p1, v8, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 1830
    .local v5, simSlot:I
    const-string v8, "pref_key_cb_settings_activation"

    invoke-interface {v4, v8, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1833
    .local v0, activation:Z
    sget v8, Lcom/android/mms/transaction/SmsReceiverService;->multiSimNum:I

    const/4 v9, 0x1

    if-le v8, v9, :cond_0

    if-eqz v5, :cond_0

    .line 1834
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "pref_key_cb_settings_activation_sim"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v5, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1835
    .local v3, preference_activation:Ljava/lang/String;
    invoke-interface {v4, v3, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1839
    .end local v3           #preference_activation:Ljava/lang/String;
    :cond_0
    const-string v8, "Mms/SmsReceiverService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Activation : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " MmsConfig.getEnableCBMessage()="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCBMessage()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1840
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCBMessage()Z

    move-result v8

    if-nez v8, :cond_2

    .line 1855
    :cond_1
    :goto_0
    return-void

    .line 1843
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 1844
    .local v1, extras:Landroid/os/Bundle;
    if-nez v1, :cond_3

    .line 1845
    const-string v8, "Mms/SmsReceiverService"

    const-string v9, "received SMS_CB_RECEIVED_ACTION with no extras!"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1849
    :cond_3
    invoke-direct {p0, p0, v1, v5}, Lcom/android/mms/transaction/SmsReceiverService;->storeCbMessage(Landroid/content/Context;Landroid/os/Bundle;I)Landroid/net/Uri;

    move-result-object v2

    .line 1851
    .local v2, messageUri:Landroid/net/Uri;
    if-eqz v2, :cond_1

    .line 1852
    invoke-static {p0, v2}, Lcom/android/mms/transaction/MessagingNotification;->getSmsThreadId(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v6

    .line 1853
    .local v6, threadId:J
    invoke-static {p0, v6, v7, v11, v5}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;JZI)V

    goto :goto_0
.end method

.method private handleSmsReceived(Landroid/content/Intent;I)V
    .locals 20
    .parameter "intent"
    .parameter "error"

    .prologue
    .line 1208
    const-string v3, "Mms/SmsReceiverService"

    const-string v4, "handleSmsReceived()"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1209
    invoke-static/range {p1 .. p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v5

    .line 1210
    .local v5, msgs:[Landroid/telephony/SmsMessage;
    const-string v3, "format"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1211
    .local v7, format:Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v5, v3

    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v9

    .line 1213
    .local v9, body:Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v15, v5, v3

    .line 1215
    .local v15, sms:Landroid/telephony/SmsMessage;
    const-string v3, "Mms/SmsReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleSmsReceived() - "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v15}, Landroid/telephony/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
    new-instance v12, Lcom/android/mms/transaction/MTMessageParser;

    invoke-direct {v12}, Lcom/android/mms/transaction/MTMessageParser;-><init>()V

    .line 1219
    .local v12, mtparser:Lcom/android/mms/transaction/MTMessageParser;
    invoke-virtual {v15}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/transaction/MTMessageParser;->messageParser(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 1310
    :cond_0
    :goto_0
    return-void

    .line 1224
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->isAllowTextMessaging(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1225
    const-string v3, "Mms/SmsReceiverService"

    const-string v4, "Discard SMS by IT Policy"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1229
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPList()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1231
    invoke-virtual {v15}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/mms/util/SecurityMailboxUtils;->isNumberInVIPList(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    sput-boolean v3, Lcom/android/mms/transaction/SmsReceiverService;->isNumberVIP:Z

    .line 1232
    const-string v3, "Mms/SmsReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isNumberVIP = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v6, Lcom/android/mms/transaction/SmsReceiverService;->isNumberVIP:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    sget-boolean v3, Lcom/android/mms/transaction/SmsReceiverService;->isNumberVIP:Z

    if-nez v3, :cond_0

    .line 1239
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsDiscardPrefix()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    if-eqz v9, :cond_4

    .line 1240
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsDiscardPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1241
    const-string v3, "Mms/SmsReceiverService"

    const-string v4, "discard sms body by prefix"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1247
    :cond_4
    invoke-virtual {v15}, Landroid/telephony/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v3

    sget-object v4, Landroid/telephony/SmsMessage$MessageClass;->CLASS_2:Landroid/telephony/SmsMessage$MessageClass;

    if-ne v3, v4, :cond_5

    .line 1248
    new-instance v10, Landroid/content/Intent;

    const-string v3, "android.intent.action.REFRESH_SIM_LIST"

    invoke-direct {v10, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1249
    .local v10, class2Intent:Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1252
    .end local v10           #class2Intent:Landroid/content/Intent;
    :cond_5
    const/4 v13, 0x0

    .line 1253
    .local v13, number:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIEI()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1254
    invoke-virtual {v15}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v13

    .line 1258
    :goto_1
    invoke-virtual {v15}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v16

    .line 1259
    .local v16, text:Ljava/lang/String;
    const/4 v8, 0x0

    .line 1261
    .local v8, isSpam:Z
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v13}, Lcom/android/mms/ui/MessageUtils;->isEmergencyContact(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1263
    new-instance v19, Landroid/content/Intent;

    invoke-direct/range {v19 .. v19}, Landroid/content/Intent;-><init>()V

    .line 1264
    .local v19, triger:Landroid/content/Intent;
    const-string v3, "android.intent.action.SAFETY_MESSAGE_SEND_KIDS_SAFE"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1265
    const-string v3, "address"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1266
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1269
    .end local v19           #triger:Landroid/content/Intent;
    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPModeApplication()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_b

    .line 1270
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-static {v3, v13, v0}, Lcom/android/mms/ui/MessageUtils;->SpamMessageFilterForVIPMode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    :goto_2
    move-object/from16 v3, p0

    move-object/from16 v4, p0

    move/from16 v6, p2

    .line 1275
    invoke-direct/range {v3 .. v8}, Lcom/android/mms/transaction/SmsReceiverService;->insertMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;ILjava/lang/String;Z)Landroid/net/Uri;

    move-result-object v11

    .line 1277
    .local v11, messageUri:Landroid/net/Uri;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1279
    const-string v3, "Mms/SmsReceiverService"

    const-string v4, "handleSmsReceived..."

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1280
    const-string v4, "Mms/SmsReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleSmsReceived"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v15}, Landroid/telephony/SmsMessage;->isReplace()Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "(replace)"

    :goto_3
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " messageUri: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", address: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v15}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", body: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v15}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1287
    :cond_7
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1289
    const-string v3, "GATE"

    const-string v4, "<GATE-M>INCOMING_MSG</GATE-M>"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    const-string v3, "GATE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<GATE-M>SMSSENDERINFO:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v15}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "</GATE-M>"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    :cond_8
    if-eqz v11, :cond_9

    if-nez v8, :cond_9

    .line 1294
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/android/mms/transaction/MessagingNotification;->getSmsThreadId(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v17

    .line 1295
    .local v17, threadId:J
    const/4 v3, 0x0

    invoke-virtual {v15}, Landroid/telephony/SmsMessage;->getSimIdentifier()I

    move-result v4

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;JZI)V

    .line 1297
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/android/mms/transaction/MessagingNotification;->updateHistoryForSms(Landroid/content/Context;Landroid/net/Uri;)Z

    .line 1298
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/android/mms/transaction/MessagingNotification;->updateAlwaysHistoryForSms(Landroid/content/Context;Landroid/net/Uri;)Z

    .line 1299
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "sms"

    invoke-static {v3, v11, v13, v4}, Lcom/android/mms/ui/MessageUtils;->sendNotiToOtherApp(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 1302
    .end local v17           #threadId:J
    :cond_9
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPModeApplication()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1303
    if-eqz v11, :cond_0

    if-eqz v8, :cond_0

    .line 1304
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/android/mms/transaction/MessagingNotification;->updateHistoryForSms(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v14

    .line 1305
    .local v14, result:Z
    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/android/mms/transaction/MessagingNotification;->updateAlwaysHistoryForSms(Landroid/content/Context;Landroid/net/Uri;)Z

    goto/16 :goto_0

    .line 1256
    .end local v8           #isSpam:Z
    .end local v11           #messageUri:Landroid/net/Uri;
    .end local v14           #result:Z
    .end local v16           #text:Ljava/lang/String;
    :cond_a
    invoke-virtual {v15}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_1

    .line 1272
    .restart local v8       #isSpam:Z
    .restart local v16       #text:Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v13, v1}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->isSpam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    goto/16 :goto_2

    .line 1280
    .restart local v11       #messageUri:Landroid/net/Uri;
    :cond_c
    const-string v3, ""

    goto/16 :goto_3
.end method

.method private handleSmsSent(Landroid/content/Intent;I)V
    .locals 15
    .parameter "intent"
    .parameter "error"

    .prologue
    .line 912
    const-string v1, "Mms/SmsReceiverService"

    const-string v3, "handleSmsSent()"

    invoke-static {v1, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 915
    .local v2, uri:Landroid/net/Uri;
    const-string v1, "Mms/SmsReceiverService"

    const-string v3, "handleSmsSent set mSending to false"

    invoke-static {v1, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/mms/transaction/SmsReceiverService;->mSending:Z

    .line 919
    const-string v1, "LastSentMsg"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    .line 923
    .local v10, lastSentMsg:Z
    iget v1, p0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    invoke-direct {p0, v2, v1}, Lcom/android/mms/transaction/SmsReceiverService;->updateGroupType(Landroid/net/Uri;I)Z

    move-result v14

    .line 925
    .local v14, updated:Z
    const-string v1, "Mms/SmsReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSmsSent lastSentMsg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    const-string v1, "simSlot"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 929
    .local v13, simSlot:I
    if-nez v10, :cond_2

    .line 930
    const/4 v9, 0x0

    .line 932
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "type"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 935
    const/4 v11, 0x0

    .line 937
    .local v11, messageBoxType:I
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 938
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 941
    :cond_0
    const/4 v1, 0x5

    if-eq v11, v1, :cond_1

    const/4 v1, 0x2

    if-ne v11, v1, :cond_9

    .line 942
    :cond_1
    const-string v1, "Mms/SmsReceiverService"

    const-string v3, "concatenated message order is wrong..."

    invoke-static {v1, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    const/4 v1, 0x2

    if-ne v11, v1, :cond_8

    iget v1, p0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_8

    .line 944
    const-string v1, "Mms/SmsReceiverService"

    const-string v3, "need to update messagebox to fail in case of being out of order."

    invoke-static {v1, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 953
    :goto_0
    if-eqz v9, :cond_2

    .line 954
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 959
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v11           #messageBoxType:I
    :cond_2
    iget v1, p0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_d

    .line 960
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 961
    const-string v1, "Mms/SmsReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSmsSent sending uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    :cond_3
    if-eqz v10, :cond_4

    .line 965
    move/from16 v0, p2

    invoke-direct {p0, v2, v0}, Lcom/android/mms/transaction/SmsReceiverService;->moveMessagetoSentBox(Landroid/net/Uri;I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 966
    const-string v1, "Mms/SmsReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSmsSent: failed to move message "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to sent folder"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    :cond_4
    const/4 v7, -0x1

    .line 971
    .local v7, app_id:I
    const/4 v12, -0x1

    .line 973
    .local v12, msg_id:I
    if-eqz v10, :cond_6

    .line 974
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->sendFirstQueuedMessage()V

    .line 975
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "app_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "msg_id"

    aput-object v5, v3, v4

    const-string v4, "app_id>0"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 978
    .restart local v9       #cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_6

    .line 980
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 981
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 982
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v12

    .line 985
    :cond_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 990
    .end local v9           #cursor:Landroid/database/Cursor;
    :cond_6
    if-lez v7, :cond_b

    .line 991
    new-instance v8, Landroid/content/Intent;

    const-string v1, "com.android.mms.transaction.MESSAGE_STATUS_CHANGED"

    invoke-direct {v8, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 992
    .local v8, broadintent:Landroid/content/Intent;
    const-string v1, "com.android.mms.transaction.MESSAGE_STATUS"

    const/4 v3, 0x2

    invoke-virtual {v8, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 993
    const-string v1, "com.android.mms.transaction.MESSAGE_TYPE"

    const/4 v3, 0x0

    invoke-virtual {v8, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 994
    const-string v1, "com.android.mms.transaction.MESSAGE_APP_ID"

    invoke-virtual {v8, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 995
    const-string v1, "com.android.mms.transaction.MESSAGE_MSG_ID"

    invoke-virtual {v8, v1, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 997
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1090
    .end local v7           #app_id:I
    .end local v8           #broadintent:Landroid/content/Intent;
    .end local v12           #msg_id:I
    :cond_7
    :goto_1
    return-void

    .line 946
    .restart local v9       #cursor:Landroid/database/Cursor;
    .restart local v11       #messageBoxType:I
    :cond_8
    :try_start_2
    const-string v1, "Mms/SmsReceiverService"

    const-string v3, "no need to update."

    invoke-static {v1, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 953
    if-eqz v9, :cond_7

    .line 954
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 950
    :cond_9
    const/4 v1, 0x1

    :try_start_3
    sput-boolean v1, Lcom/android/mms/transaction/SmsReceiverService;->mSending:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 953
    .end local v11           #messageBoxType:I
    :catchall_0
    move-exception v1

    if-eqz v9, :cond_a

    .line 954
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v1

    .line 985
    .restart local v7       #app_id:I
    .restart local v12       #msg_id:I
    :catchall_1
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1

    .line 1000
    .end local v9           #cursor:Landroid/database/Cursor;
    :cond_b
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1001
    const-string v1, "GATE"

    const-string v3, "<GATE-M>SMS_SENT_SUCCESS</GATE-M>"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    :cond_c
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateSendFailedNotification(Landroid/content/Context;)V

    .line 1005
    invoke-static {p0, v2}, Lcom/android/mms/transaction/MessagingNotification;->updateHistoryForSms(Landroid/content/Context;Landroid/net/Uri;)Z

    .line 1006
    invoke-static {p0, v2}, Lcom/android/mms/transaction/MessagingNotification;->updateAlwaysHistoryForSms(Landroid/content/Context;Landroid/net/Uri;)Z

    .line 1008
    invoke-static {p0}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    goto :goto_1

    .line 1010
    .end local v7           #app_id:I
    .end local v12           #msg_id:I
    :cond_d
    iget v1, p0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_e

    iget v1, p0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_11

    .line 1012
    :cond_e
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1013
    const-string v1, "Mms/SmsReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSmsSent: no service, queuing message w/ uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    :cond_f
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1020
    const-string v1, "GATE"

    const-string v3, "<GATE-M>SMS_MSG_ERROR</GATE-M>"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    :cond_10
    invoke-direct {p0}, Lcom/android/mms/transaction/SmsReceiverService;->registerForServiceStateChanges()V

    .line 1024
    const/4 v1, 0x6

    move/from16 v0, p2

    invoke-static {p0, v2, v1, v0}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    .line 1025
    iget-object v1, p0, Lcom/android/mms/transaction/SmsReceiverService;->mToastHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/mms/transaction/SmsReceiverService$1;

    invoke-direct {v3, p0}, Lcom/android/mms/transaction/SmsReceiverService$1;-><init>(Lcom/android/mms/transaction/SmsReceiverService;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 1031
    :cond_11
    iget v1, p0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    const/4 v3, 0x6

    if-ne v1, v3, :cond_12

    .line 1034
    move/from16 v0, p2

    invoke-direct {p0, v2, v0, v14, v13}, Lcom/android/mms/transaction/SmsReceiverService;->messageFailedToSend(Landroid/net/Uri;IZI)V

    .line 1036
    iget-object v1, p0, Lcom/android/mms/transaction/SmsReceiverService;->mToastHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/mms/transaction/SmsReceiverService$2;

    invoke-direct {v3, p0}, Lcom/android/mms/transaction/SmsReceiverService$2;-><init>(Lcom/android/mms/transaction/SmsReceiverService;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 1044
    :cond_12
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableDSAC()Z

    move-result v1

    if-eqz v1, :cond_13

    iget v1, p0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    const/4 v3, 0x7

    if-ne v1, v3, :cond_13

    .line 1047
    const-string v1, "Mms/SmsReceiverService"

    const-string v3, "handleSmsSent : DSAC Failure "

    invoke-static {v1, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    const/4 v1, 0x5

    move/from16 v0, p2

    invoke-static {p0, v2, v1, v0}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    .line 1049
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v1, v3, v13}, Lcom/android/mms/transaction/MessagingNotification;->notifySendFailed(Landroid/content/Context;ZI)V

    .line 1050
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->sendFirstQueuedMessage()V

    .line 1052
    iget-object v1, p0, Lcom/android/mms/transaction/SmsReceiverService;->mToastHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/mms/transaction/SmsReceiverService$3;

    invoke-direct {v3, p0}, Lcom/android/mms/transaction/SmsReceiverService$3;-><init>(Lcom/android/mms/transaction/SmsReceiverService;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 1083
    :cond_13
    move/from16 v0, p2

    invoke-direct {p0, v2, v0, v14, v13}, Lcom/android/mms/transaction/SmsReceiverService;->messageFailedToSend(Landroid/net/Uri;IZI)V

    .line 1086
    if-eqz v10, :cond_7

    .line 1087
    invoke-virtual {p0}, Lcom/android/mms/transaction/SmsReceiverService;->sendFirstQueuedMessage()V

    goto/16 :goto_1
.end method

.method private handleSmsServiceCenter(Landroid/content/Intent;)V
    .locals 12
    .parameter "intent"

    .prologue
    const/4 v11, 0x0

    .line 429
    const-string v8, "smsc"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 432
    .local v0, Smsc:[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 433
    const-string v8, "Mms/SmsReceiverService"

    const-string v9, "[SMS]handleSmsServiceCenter : Smsc == null"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    :goto_0
    return-void

    .line 438
    :cond_0
    const-string v8, "Mms/SmsReceiverService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[SMS]handleSmsServiceCenter"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v0, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 442
    .local v4, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 444
    .local v1, editprefs:Landroid/content/SharedPreferences$Editor;
    aget-object v8, v0, v11

    const-string v9, "NotSet"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 445
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a012b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 447
    .local v2, not_set:Ljava/lang/String;
    const-string v8, "pref_key_manage_smsc_address"

    invoke-interface {v1, v8, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 475
    .end local v2           #not_set:Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 450
    :cond_2
    sget v8, Lcom/android/mms/transaction/SmsReceiverService;->multiSimNum:I

    const/4 v9, 0x1

    if-le v8, v9, :cond_5

    .line 451
    const-string v3, "pref_key_manage_smsc_address"

    .line 452
    .local v3, preference_smsc:Ljava/lang/String;
    const-string v8, "simSlot"

    invoke-virtual {p1, v8, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 453
    .local v5, simSlot:I
    const-string v8, "Mms/SmsReceiverService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "handleSmsServiceCenter - simSlot = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    if-eqz v5, :cond_3

    .line 455
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_sim"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v5, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 458
    :cond_3
    const/4 v6, 0x0

    .local v6, simSlotNum:I
    :goto_2
    sget v8, Lcom/android/mms/transaction/SmsReceiverService;->multiSimNum:I

    if-ge v6, v8, :cond_4

    .line 459
    const-string v8, "Not Set"

    invoke-interface {v4, v3, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 460
    .local v7, smsc:Ljava/lang/String;
    const-string v8, "Mms/SmsReceiverService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[SMS]RIL_REQUEST_GET_SMSC_ADDRESS   handleSmsServiceCenter (before)  get from Preference ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 463
    .end local v7           #smsc:Ljava/lang/String;
    :cond_4
    aget-object v8, v0, v11

    invoke-interface {v1, v3, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 464
    const-string v8, "Mms/SmsReceiverService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[SMS]RIL_REQUEST_GET_SMSC_ADDRESS   handleSmsServiceCenter   write into Preference "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    const/4 v6, 0x0

    :goto_3
    sget v8, Lcom/android/mms/transaction/SmsReceiverService;->multiSimNum:I

    if-ge v6, v8, :cond_1

    .line 467
    const-string v8, "Not Set"

    invoke-interface {v4, v3, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 468
    .restart local v7       #smsc:Ljava/lang/String;
    const-string v8, "Mms/SmsReceiverService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[SMS]RIL_REQUEST_GET_SMSC_ADDRESS   handleSmsServiceCenter (after)  get from Preference ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 473
    .end local v3           #preference_smsc:Ljava/lang/String;
    .end local v5           #simSlot:I
    .end local v6           #simSlotNum:I
    .end local v7           #smsc:Ljava/lang/String;
    :cond_5
    const-string v8, "pref_key_manage_smsc_address"

    aget-object v9, v0, v11

    invoke-interface {v1, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_1
.end method

.method private insertMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;ILjava/lang/String;Z)Landroid/net/Uri;
    .locals 3
    .parameter "context"
    .parameter "msgs"
    .parameter "error"
    .parameter "format"
    .parameter "isSpam"

    .prologue
    .line 1412
    const-string v1, "Mms/SmsReceiverService"

    const-string v2, "insertMessage()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1414
    const/4 v1, 0x0

    aget-object v0, p2, v1

    .line 1416
    .local v0, sms:Landroid/telephony/SmsMessage;
    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v1

    sget-object v2, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    if-ne v1, v2, :cond_0

    .line 1417
    invoke-direct {p0, p1, p2, p4}, Lcom/android/mms/transaction/SmsReceiverService;->displayClassZeroMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;Ljava/lang/String;)V

    .line 1418
    const/4 v1, 0x0

    .line 1422
    :goto_0
    return-object v1

    .line 1419
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->isReplace()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1420
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/mms/transaction/SmsReceiverService;->replaceMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;IZ)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 1422
    :cond_1
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/mms/transaction/SmsReceiverService;->storeMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;IZ)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method private messageFailedToSend(Landroid/net/Uri;IZI)V
    .locals 10
    .parameter "uri"
    .parameter "error"
    .parameter "needToNotify"
    .parameter "mSimSlot"

    .prologue
    .line 1140
    const-string v0, "Mms/SmsReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "messageFailedToSend msg failed uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSimSlot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    const/4 v0, 0x5

    invoke-static {p0, p1, v0, p2}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    .line 1144
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "app_id"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "msg_id"

    aput-object v3, v2, v1

    const-string v3, "app_id>0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1147
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v6, -0x1

    .line 1148
    .local v6, app_id:I
    const/4 v9, -0x1

    .line 1149
    .local v9, msg_id:I
    if-eqz v8, :cond_1

    .line 1151
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1152
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 1153
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    .line 1156
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1160
    :cond_1
    if-lez v6, :cond_3

    .line 1161
    new-instance v7, Landroid/content/Intent;

    const-string v0, "com.android.mms.transaction.MESSAGE_STATUS_CHANGED"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1162
    .local v7, broadintent:Landroid/content/Intent;
    const-string v0, "com.android.mms.transaction.MESSAGE_STATUS"

    const/4 v1, 0x5

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1163
    const-string v0, "com.android.mms.transaction.MESSAGE_TYPE"

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1164
    const-string v0, "com.android.mms.transaction.MESSAGE_APP_ID"

    invoke-virtual {v7, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1165
    const-string v0, "com.android.mms.transaction.MESSAGE_MSG_ID"

    invoke-virtual {v7, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1167
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1172
    .end local v7           #broadintent:Landroid/content/Intent;
    :cond_2
    :goto_0
    return-void

    .line 1156
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1169
    :cond_3
    if-eqz p3, :cond_2

    .line 1170
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1, p4}, Lcom/android/mms/transaction/MessagingNotification;->notifySendFailed(Landroid/content/Context;ZI)V

    goto :goto_0
.end method

.method private messageFailedtoDisplay(ILjava/lang/String;)V
    .locals 2
    .parameter "error"
    .parameter "destAddr"

    .prologue
    .line 1094
    iput p1, p0, Lcom/android/mms/transaction/SmsReceiverService;->mCausecode:I

    .line 1096
    iget-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mToastHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/transaction/SmsReceiverService$4;

    invoke-direct {v1, p0, p2}, Lcom/android/mms/transaction/SmsReceiverService$4;-><init>(Lcom/android/mms/transaction/SmsReceiverService;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1135
    return-void
.end method

.method private moveMessagetoSentBox(Landroid/net/Uri;I)Z
    .locals 10
    .parameter "uri"
    .parameter "error"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1175
    const-string v0, "Mms/SmsReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveMessagetoSentBox(uri, error) uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    const/4 v6, 0x0

    .line 1179
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "type"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1182
    const/4 v7, 0x0

    .line 1184
    .local v7, messageBoxType:I
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1185
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1188
    :cond_0
    const/4 v0, 0x5

    if-ne v7, v0, :cond_2

    .line 1189
    const-string v0, "Mms/SmsReceiverService"

    const-string v1, "do not need update message box."

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1198
    if-eqz v6, :cond_1

    .line 1199
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v8

    .line 1202
    :goto_0
    return v0

    .line 1193
    :cond_2
    const/4 v0, 0x2

    :try_start_1
    invoke-static {p0, p1, v0, p2}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1194
    const-string v0, "Mms/SmsReceiverService"

    const-string v1, "move failed"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1198
    if-eqz v6, :cond_3

    .line 1199
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v0, v8

    goto :goto_0

    .line 1198
    :cond_4
    if-eqz v6, :cond_5

    .line 1199
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    move v0, v9

    .line 1202
    goto :goto_0

    .line 1198
    .end local v7           #messageBoxType:I
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    .line 1199
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method private moveOutboxMessagesToFailedBox()I
    .locals 7

    .prologue
    .line 1378
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x3

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 1380
    .local v3, values:Landroid/content/ContentValues;
    const-string v0, "type"

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1381
    const-string v0, "error_code"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1382
    const-string v0, "read"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1384
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Sms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "type = 4"

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 1389
    .local v6, messageCount:I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1390
    const-string v0, "Mms/SmsReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveOutboxMessagesToFailedBox messageCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1392
    :cond_0
    return v6
.end method

.method private registerForRoamingStatusChanges()V
    .locals 4

    .prologue
    .line 2071
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2072
    .local v0, context:Landroid/content/Context;
    invoke-direct {p0}, Lcom/android/mms/transaction/SmsReceiverService;->unRegisterForRoamingStatusChanges()V

    .line 2074
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 2077
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.ACTION_ROAMING_STATUS_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2078
    const-string v2, "Mms/SmsReceiverService"

    const-string v3, "registerForRoamingStatusChanges"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2081
    invoke-static {}, Lcom/android/mms/transaction/SmsReceiver;->getInstance()Lcom/android/mms/transaction/SmsReceiver;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2082
    return-void
.end method

.method private registerForServiceStateChanges()V
    .locals 4

    .prologue
    .line 2045
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2046
    .local v0, context:Landroid/content/Context;
    invoke-direct {p0}, Lcom/android/mms/transaction/SmsReceiverService;->unRegisterForServiceStateChanges()V

    .line 2048
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 2049
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2050
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2051
    const-string v2, "Mms/SmsReceiverService"

    const-string v3, "registerForServiceStateChanges"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2054
    :cond_0
    invoke-static {}, Lcom/android/mms/transaction/SmsReceiver;->getInstance()Lcom/android/mms/transaction/SmsReceiver;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2055
    return-void
.end method

.method public static replaceCarriageReturn(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "s"

    .prologue
    .line 1512
    const-string v0, "\r\n"

    const-string v1, "\n"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 1513
    const/16 v0, 0xd

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static replaceFormFeeds(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "s"

    .prologue
    .line 1506
    const/16 v0, 0xc

    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private replaceMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;IZ)Landroid/net/Uri;
    .locals 26
    .parameter "context"
    .parameter "msgs"
    .parameter "error"
    .parameter "isSpam"

    .prologue
    .line 1434
    const-string v3, "Mms/SmsReceiverService"

    const-string v6, "replaceMessage()"

    invoke-static {v3, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1435
    const/4 v3, 0x0

    aget-object v24, p2, v3

    .line 1436
    .local v24, sms:Landroid/telephony/SmsMessage;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/SmsReceiverService;->extractContentValues(Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;

    move-result-object v12

    .line 1439
    .local v12, values:Landroid/content/ContentValues;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 1440
    .local v15, body:Ljava/lang/StringBuilder;
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v22, v0

    .line 1442
    .local v22, pduCount:I
    const/16 v17, 0x0

    .local v17, i:I
    :goto_0
    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_0

    .line 1443
    aget-object v24, p2, v17

    .line 1444
    invoke-virtual/range {v24 .. v24}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1442
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 1448
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSOSPrefix()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1449
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/transaction/SmsReceiverService;->FilterCLRF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1450
    .local v20, msgBody:Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->isSosMessage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1451
    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/MessageUtils;->getMessageFromSos(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1453
    :cond_1
    const-string v3, "body"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/transaction/SmsReceiverService;->FilterCLRF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1462
    .end local v20           #msgBody:Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCallbackNumber()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1463
    const-string v3, "callback_number"

    invoke-virtual/range {v24 .. v24}, Landroid/telephony/SmsMessage;->getCallbackNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1466
    :cond_2
    const-string v3, "error_code"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v12, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1468
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1469
    .local v4, resolver:Landroid/content/ContentResolver;
    invoke-virtual/range {v24 .. v24}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v21

    .line 1470
    .local v21, originatingAddress:Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result v23

    .line 1471
    .local v23, protocolIdentifier:I
    const-string v7, "address = ? AND protocol = ?"

    .line 1473
    .local v7, selection:Ljava/lang/String;
    const/4 v3, 0x2

    new-array v8, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v21, v8, v3

    const/4 v3, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v3

    .line 1477
    .local v8, selectionArgs:[Ljava/lang/String;
    sget-object v5, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    .line 1478
    .local v5, inboxUri:Landroid/net/Uri;
    sget-object v25, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    .line 1479
    .local v25, smsUri:Landroid/net/Uri;
    if-eqz p4, :cond_3

    .line 1480
    sget-object v5, Lcom/android/mms/spam/SpamFilter;->SPAM_SMS_INBOX_CONTENT_URI:Landroid/net/Uri;

    .line 1481
    sget-object v25, Lcom/android/mms/spam/SpamFilter;->SPAM_SMS_CONTENT_URI:Landroid/net/Uri;

    .line 1484
    :cond_3
    sget-object v6, Lcom/android/mms/transaction/SmsReceiverService;->REPLACE_PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    move-object/from16 v3, p1

    invoke-static/range {v3 .. v9}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 1487
    .local v16, cursor:Landroid/database/Cursor;
    if-eqz v16, :cond_7

    .line 1489
    :try_start_0
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1490
    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 1491
    .local v18, messageId:J
    move-object/from16 v0, v25

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    .line 1493
    .local v11, messageUri:Landroid/net/Uri;
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v9, p1

    move-object v10, v4

    invoke-static/range {v9 .. v14}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1497
    if-eqz v16, :cond_4

    .line 1498
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1501
    .end local v11           #messageUri:Landroid/net/Uri;
    .end local v18           #messageId:J
    :cond_4
    :goto_2
    return-object v11

    .line 1455
    .end local v4           #resolver:Landroid/content/ContentResolver;
    .end local v5           #inboxUri:Landroid/net/Uri;
    .end local v7           #selection:Ljava/lang/String;
    .end local v8           #selectionArgs:[Ljava/lang/String;
    .end local v16           #cursor:Landroid/database/Cursor;
    .end local v21           #originatingAddress:Ljava/lang/String;
    .end local v23           #protocolIdentifier:I
    .end local v25           #smsUri:Landroid/net/Uri;
    :cond_5
    const-string v3, "body"

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/transaction/SmsReceiverService;->FilterCLRF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1497
    .restart local v4       #resolver:Landroid/content/ContentResolver;
    .restart local v5       #inboxUri:Landroid/net/Uri;
    .restart local v7       #selection:Ljava/lang/String;
    .restart local v8       #selectionArgs:[Ljava/lang/String;
    .restart local v16       #cursor:Landroid/database/Cursor;
    .restart local v21       #originatingAddress:Ljava/lang/String;
    .restart local v23       #protocolIdentifier:I
    .restart local v25       #smsUri:Landroid/net/Uri;
    :cond_6
    if-eqz v16, :cond_7

    .line 1498
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1501
    :cond_7
    invoke-direct/range {p0 .. p4}, Lcom/android/mms/transaction/SmsReceiverService;->storeMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;IZ)Landroid/net/Uri;

    move-result-object v11

    goto :goto_2

    .line 1497
    :catchall_0
    move-exception v3

    if-eqz v16, :cond_8

    .line 1498
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v3
.end method

.method private retrySendSMSMessage(Landroid/content/Context;Landroid/net/Uri;I)V
    .locals 14
    .parameter "context"
    .parameter "uri"
    .parameter "error"

    .prologue
    .line 2170
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2171
    .local v2, resolver:Landroid/content/ContentResolver;
    sget-object v4, Lcom/android/mms/transaction/SmsReceiverService;->SEND_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "date ASC"

    move-object v1, p0

    move-object/from16 v3, p2

    invoke-static/range {v1 .. v7}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2173
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_2

    .line 2175
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2176
    const/4 v1, 0x3

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2177
    .local v11, msgText:Ljava/lang/String;
    invoke-direct {p0, v11}, Lcom/android/mms/transaction/SmsReceiverService;->EncodeNonGSMCharater(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2178
    const/4 v10, 0x0

    .line 2179
    .local v10, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v13

    .line 2181
    .local v13, smsManager:Landroid/telephony/SmsManager;
    iget v1, p0, Lcom/android/mms/transaction/SmsReceiverService;->userSelectedEncodingType:I

    invoke-virtual {v13, v11, v1}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v10

    .line 2185
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    .line 2186
    .local v9, messageCount:I
    const/4 v1, 0x1

    if-le v9, v1, :cond_1

    .line 2190
    if-eqz v8, :cond_0

    .line 2191
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2201
    .end local v9           #messageCount:I
    .end local v10           #messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11           #msgText:Ljava/lang/String;
    .end local v13           #smsManager:Landroid/telephony/SmsManager;
    :cond_0
    :goto_0
    return-void

    .line 2190
    :cond_1
    if-eqz v8, :cond_2

    .line 2191
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2196
    :cond_2
    new-instance v12, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/RetryActivity;

    invoke-direct {v12, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2197
    .local v12, retryIntent:Landroid/content/Intent;
    const/high16 v1, 0x1800

    invoke-virtual {v12, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2198
    const-string v1, "uri"

    move-object/from16 v0, p2

    invoke-virtual {v12, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2199
    const-string v1, "error"

    move/from16 v0, p3

    invoke-virtual {v12, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2200
    invoke-virtual {p1, v12}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2190
    .end local v12           #retryIntent:Landroid/content/Intent;
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_3

    .line 2191
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method

.method private sendPCWLockMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter "recipient"
    .parameter "message"

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 2099
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 2101
    .local v0, smsManager:Landroid/telephony/SmsManager;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "connectivity"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/ConnectivityManager;

    .line 2103
    .local v10, conManager:Landroid/net/ConnectivityManager;
    if-nez v10, :cond_1

    .line 2104
    const-string v1, "Mms/SmsReceiverService"

    const-string v2, "sendPCWLockMessage : conManager is null"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2117
    :cond_0
    :goto_0
    return-void

    .line 2108
    :cond_1
    if-eqz p2, :cond_2

    .line 2109
    invoke-virtual {v0, p2}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 2110
    .local v3, sendMessage:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v7, 0xff

    const/4 v9, 0x2

    move-object v1, p1

    move-object v4, v2

    move-object v5, v2

    move v8, v6

    invoke-virtual/range {v0 .. v9}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIII)V

    .line 2112
    const-string v1, "Mms/SmsReceiverService"

    const-string v2, "sendPCWLockMessage : send SMS complete."

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2115
    .end local v3           #sendMessage:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    iget-object v1, p0, Lcom/android/mms/transaction/SmsReceiverService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    .line 2116
    iget-object v1, p0, Lcom/android/mms/transaction/SmsReceiverService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/mms/transaction/SmsReceiverService;->mPhoneStatelistener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v1, v2, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0
.end method

.method private serviceStateAvailable(I)Z
    .locals 4
    .parameter "simSlot"

    .prologue
    .line 513
    const/4 v0, 0x0

    .line 515
    .local v0, isServiceAvailable:Z
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 516
    sget v1, Lcom/android/mms/transaction/SmsReceiverService;->mSeviceState2:I

    if-nez v1, :cond_0

    .line 517
    const/4 v0, 0x1

    .line 523
    :cond_0
    :goto_0
    const-string v1, "Mms/SmsReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SMS]serviceStateAvailable() simSlot: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isServiceAvailable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    return v0

    .line 519
    :cond_1
    sget v1, Lcom/android/mms/transaction/SmsReceiverService;->mSeviceState1:I

    if-nez v1, :cond_0

    .line 520
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private storeCbMessage(Landroid/content/Context;Landroid/os/Bundle;I)Landroid/net/Uri;
    .locals 12
    .parameter "context"
    .parameter "extras"
    .parameter "simSlot"

    .prologue
    const/4 v8, 0x0

    .line 1990
    const-string v9, "Mms/SmsReceiverService"

    const-string v10, "storeCbMessage()"

    invoke-static {v9, v10}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1992
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1995
    .local v7, values:Landroid/content/ContentValues;
    const-string v9, "Mms/SmsReceiverService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "storeCbMessage : CB is received via simSlot "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1996
    const-string v9, "sim_slot"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1998
    invoke-static {p3}, Lcom/android/mms/MmsConfig;->getIMSIbySimSlot(I)Ljava/lang/String;

    move-result-object v4

    .line 1999
    .local v4, imsi:Ljava/lang/String;
    const-string v9, "sim_imsi"

    invoke-virtual {v7, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2002
    const-string v9, "message"

    invoke-virtual {p2, v9}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SmsCbMessage;

    .line 2004
    .local v5, message:Landroid/telephony/SmsCbMessage;
    if-nez v5, :cond_1

    .line 2005
    const-string v9, "Mms/SmsReceiverService"

    const-string v10, "received SMS_CB_RECEIVED_ACTION with no message extra"

    invoke-static {v9, v10}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2040
    :cond_0
    :goto_0
    return-object v8

    .line 2009
    :cond_1
    new-instance v1, Landroid/telephony/CellBroadcastMessage;

    invoke-direct {v1, v5}, Landroid/telephony/CellBroadcastMessage;-><init>(Landroid/telephony/SmsCbMessage;)V

    .line 2011
    .local v1, cbm:Landroid/telephony/CellBroadcastMessage;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDisableSavingInbox4CBChannel()Ljava/lang/String;

    move-result-object v2

    .line 2012
    .local v2, disableCBChannel:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 2013
    invoke-virtual {v1}, Landroid/telephony/CellBroadcastMessage;->getServiceCategory()I

    move-result v9

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-eq v9, v10, :cond_0

    .line 2019
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCBChannel4DisplayInStatusBar()Ljava/lang/String;

    move-result-object v3

    .line 2020
    .local v3, enableDirectDisplayCBCh:Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 2021
    invoke-virtual {v1}, Landroid/telephony/CellBroadcastMessage;->getServiceCategory()I

    move-result v9

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-ne v9, v10, :cond_3

    .line 2023
    new-instance v0, Landroid/content/Intent;

    const-string v9, "com.sec.android.app.mms.SMS_CB_DIRECT_DISPLAY_RECEIVED"

    invoke-direct {v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2024
    .local v0, cbintent:Landroid/content/Intent;
    const-string v9, "cbMsgBody"

    invoke-virtual {v5}, Landroid/telephony/SmsCbMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2025
    const-string v9, "simSlot"

    invoke-virtual {v0, v9, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2027
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 2032
    .end local v0           #cbintent:Landroid/content/Intent;
    :cond_3
    const-string v8, "body"

    invoke-virtual {v5}, Landroid/telephony/SmsCbMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2034
    const-string v8, "address"

    const-string v9, "CBmessages"

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2035
    const-string v8, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2036
    const-string v8, "protocol"

    const/4 v9, 0x5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2037
    const-string v8, "read"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2039
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 2040
    .local v6, resolver:Landroid/content/ContentResolver;
    sget-object v8, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, v6, v8, v7}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v8

    goto :goto_0
.end method

.method private storeMessage(Landroid/content/Context;[Landroid/telephony/SmsMessage;IZ)Landroid/net/Uri;
    .locals 24
    .parameter "context"
    .parameter "msgs"
    .parameter "error"
    .parameter "isSpam"

    .prologue
    .line 1517
    const-string v20, "Mms/SmsReceiverService"

    const-string v21, "storeMessage()"

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1518
    const/16 v20, 0x0

    aget-object v17, p2, v20

    .line 1520
    .local v17, sms:Landroid/telephony/SmsMessage;
    const/4 v13, 0x0

    .line 1524
    .local v13, not_supported_port_message:Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1525
    .local v5, body:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/SmsReceiverService;->extractContentValues(Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;

    move-result-object v19

    .line 1526
    .local v19, values:Landroid/content/ContentValues;
    const-string v20, "error_code"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1528
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCallbackNumber()Z

    move-result v20

    if-eqz v20, :cond_0

    .line 1529
    const-string v20, "Mms/SmsReceiverService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "store message callback = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/SmsMessage;->getCallbackNumber()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1530
    const-string v20, "callback_number"

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/SmsMessage;->getCallbackNumber()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1533
    :cond_0
    move-object/from16 v0, p2

    array-length v14, v0

    .line 1536
    .local v14, pduCount:I
    invoke-virtual/range {v17 .. v17}, Landroid/telephony/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v7

    .line 1538
    .local v7, header:Lcom/android/internal/telephony/SmsHeader;
    if-eqz v7, :cond_2

    iget-object v0, v7, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    .line 1539
    iget-object v0, v7, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v15, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 1540
    .local v15, port:I
    const/16 v20, 0x1580

    move/from16 v0, v20

    if-eq v15, v0, :cond_1

    const/16 v20, 0x1581

    move/from16 v0, v20

    if-eq v15, v0, :cond_1

    const/16 v20, 0x1582

    move/from16 v0, v20

    if-eq v15, v0, :cond_1

    const/16 v20, 0x1583

    move/from16 v0, v20

    if-eq v15, v0, :cond_1

    const/16 v20, 0x1585

    move/from16 v0, v20

    if-eq v15, v0, :cond_1

    const/16 v20, 0x1586

    move/from16 v0, v20

    if-eq v15, v0, :cond_1

    const/16 v20, 0x1589

    move/from16 v0, v20

    if-eq v15, v0, :cond_1

    const/16 v20, 0x158a

    move/from16 v0, v20

    if-eq v15, v0, :cond_1

    const/16 v20, 0x15e1

    move/from16 v0, v20

    if-eq v15, v0, :cond_1

    const/16 v20, 0x15e3

    move/from16 v0, v20

    if-eq v15, v0, :cond_1

    const/16 v20, 0x2134

    move/from16 v0, v20

    if-eq v15, v0, :cond_1

    const/16 v20, 0x2135

    move/from16 v0, v20

    if-eq v15, v0, :cond_1

    const/16 v20, 0x2136

    move/from16 v0, v20

    if-eq v15, v0, :cond_1

    const/16 v20, 0x2340

    move/from16 v0, v20

    if-eq v15, v0, :cond_1

    const/16 v20, 0x23f5

    move/from16 v0, v20

    if-ne v15, v0, :cond_b

    .line 1545
    :cond_1
    const-string v20, "<<"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1546
    const v20, 0x7f0a0167

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1547
    const-string v20, ">>\n"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1549
    const/4 v13, 0x1

    .line 1556
    .end local v15           #port:I
    :cond_2
    if-nez v13, :cond_3

    .line 1557
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v14, v0, :cond_e

    .line 1563
    invoke-virtual/range {v17 .. v17}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v12

    .line 1565
    .local v12, msgBody:Ljava/lang/String;
    if-nez v12, :cond_c

    .line 1567
    const-string v20, "<<"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1568
    const v20, 0x7f0a0167

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1569
    const-string v20, ">>\n"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1596
    .end local v12           #msgBody:Ljava/lang/String;
    :cond_3
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSOSPrefix()Z

    move-result v20

    if-eqz v20, :cond_10

    .line 1597
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/mms/transaction/SmsReceiverService;->FilterCLRF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1599
    .restart local v12       #msgBody:Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/MessageUtils;->isSosMessage(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 1600
    invoke-static {v12}, Lcom/android/mms/ui/MessageUtils;->getMessageFromSos(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1603
    :cond_4
    const-string v20, "body"

    invoke-virtual {v12}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/mms/transaction/SmsReceiverService;->FilterCLRF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1613
    .end local v12           #msgBody:Ljava/lang/String;
    :goto_1
    const-string v20, "thread_id"

    invoke-virtual/range {v19 .. v20}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v18

    .line 1614
    .local v18, threadId:Ljava/lang/Long;
    const-string v20, "address"

    invoke-virtual/range {v19 .. v20}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1616
    .local v4, address:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_11

    .line 1617
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-static {v4, v0}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v6

    .line 1618
    .local v6, cacheContact:Lcom/android/mms/data/Contact;
    if-eqz v6, :cond_5

    .line 1620
    invoke-virtual {v6}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_5

    .line 1621
    invoke-virtual {v6, v4}, Lcom/android/mms/data/Contact;->setNumber(Ljava/lang/String;)V

    .line 1622
    invoke-virtual {v6}, Lcom/android/mms/data/Contact;->reload()V

    .line 1636
    .end local v6           #cacheContact:Lcom/android/mms/data/Contact;
    :cond_5
    :goto_2
    if-eqz v18, :cond_6

    const-wide/16 v20, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    cmp-long v20, v20, v22

    if-nez v20, :cond_7

    :cond_6
    if-eqz v4, :cond_7

    if-nez p4, :cond_7

    .line 1637
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    .line 1638
    const-string v20, "thread_id"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1641
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    .line 1642
    .local v16, resolver:Landroid/content/ContentResolver;
    const/4 v10, 0x0

    .line 1644
    .local v10, insertedUri:Landroid/net/Uri;
    sget-object v9, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    .line 1645
    .local v9, inboxUri:Landroid/net/Uri;
    if-eqz p4, :cond_8

    .line 1646
    sget-object v9, Lcom/android/mms/spam/SpamFilter;->SPAM_SMS_INBOX_CONTENT_URI:Landroid/net/Uri;

    .line 1649
    :cond_8
    const-string v20, "ril.sms.gcf-mode"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1651
    .local v3, GcfMode:Ljava/lang/String;
    const-string v20, "On"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_14

    .line 1652
    const-string v20, "Mms/SmsReceiverService"

    const-string v21, "GCF Mode On"

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1653
    sget v20, Lcom/android/mms/MmsConfig;->SMS_DB_COUNT:I

    add-int/lit8 v20, v20, 0x1

    sput v20, Lcom/android/mms/MmsConfig;->SMS_DB_COUNT:I

    .line 1655
    sget v20, Lcom/android/mms/MmsConfig;->SMS_DB_COUNT:I

    const/16 v21, 0x1e

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_13

    .line 1656
    const-string v20, "Mms/SmsReceiverService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "MmsConfig.SMS_DB_COUNT : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget v22, Lcom/android/mms/MmsConfig;->SMS_DB_COUNT:I

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1658
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    invoke-static {v0, v1, v9, v2}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    .line 1661
    sget v20, Lcom/android/mms/MmsConfig;->SMS_DB_COUNT:I

    const/16 v21, 0x1e

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    .line 1662
    new-instance v11, Landroid/content/Intent;

    const-string v20, "android.intent.action.GCF_DEVICE_STORAGE_LOW"

    move-object/from16 v0, v20

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1663
    .local v11, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 1678
    .end local v11           #intent:Landroid/content/Intent;
    :cond_9
    :goto_3
    if-nez p4, :cond_a

    .line 1680
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    invoke-virtual/range {v20 .. v23}, Lcom/android/mms/util/Recycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V

    .line 1683
    .end local v3           #GcfMode:Ljava/lang/String;
    .end local v4           #address:Ljava/lang/String;
    .end local v9           #inboxUri:Landroid/net/Uri;
    .end local v10           #insertedUri:Landroid/net/Uri;
    .end local v16           #resolver:Landroid/content/ContentResolver;
    .end local v18           #threadId:Ljava/lang/Long;
    :cond_a
    :goto_4
    return-object v10

    .line 1551
    .restart local v15       #port:I
    :cond_b
    const/4 v10, 0x0

    goto :goto_4

    .line 1571
    .end local v15           #port:I
    .restart local v12       #msgBody:Ljava/lang/String;
    :cond_c
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableReplacingCarriageReturnIntoNewLine()Z

    move-result v20

    if-eqz v20, :cond_d

    .line 1572
    invoke-virtual/range {v17 .. v17}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/mms/transaction/SmsReceiverService;->replaceFormFeeds(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/mms/transaction/SmsReceiverService;->replaceCarriageReturn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1575
    :cond_d
    invoke-virtual/range {v17 .. v17}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/mms/transaction/SmsReceiverService;->replaceFormFeeds(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1581
    .end local v12           #msgBody:Ljava/lang/String;
    :cond_e
    const/4 v8, 0x0

    .local v8, i:I
    :goto_5
    if-ge v8, v14, :cond_3

    .line 1582
    aget-object v17, p2, v8

    .line 1583
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableReplacingCarriageReturnIntoNewLine()Z

    move-result v20

    if-eqz v20, :cond_f

    .line 1584
    invoke-virtual/range {v17 .. v17}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/mms/transaction/SmsReceiverService;->replaceFormFeeds(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/mms/transaction/SmsReceiverService;->replaceCarriageReturn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1581
    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 1587
    :cond_f
    invoke-virtual/range {v17 .. v17}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/mms/transaction/SmsReceiverService;->replaceFormFeeds(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 1605
    .end local v8           #i:I
    :cond_10
    const-string v20, "body"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/mms/transaction/SmsReceiverService;->FilterCLRF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1628
    .restart local v4       #address:Ljava/lang/String;
    .restart local v18       #threadId:Ljava/lang/Long;
    :cond_11
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v20

    if-eqz v20, :cond_12

    .line 1629
    const-string v20, "address"

    const-string v21, ""

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1631
    :cond_12
    new-instance v4, Ljava/lang/String;

    .end local v4           #address:Ljava/lang/String;
    const-string v20, "Unknown"

    move-object/from16 v0, v20

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1632
    .restart local v4       #address:Ljava/lang/String;
    const-string v20, "address"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1666
    .restart local v3       #GcfMode:Ljava/lang/String;
    .restart local v9       #inboxUri:Landroid/net/Uri;
    .restart local v10       #insertedUri:Landroid/net/Uri;
    .restart local v16       #resolver:Landroid/content/ContentResolver;
    :cond_13
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 1670
    :cond_14
    const-string v20, "Mms/SmsReceiverService"

    const-string v21, "GCF Mode Off"

    invoke-static/range {v20 .. v21}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1671
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    invoke-static {v0, v1, v9, v2}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    goto/16 :goto_3
.end method

.method private static translateResultCode(I)Ljava/lang/String;
    .locals 1
    .parameter "resultCode"

    .prologue
    .line 282
    packed-switch p0, :pswitch_data_0

    .line 298
    :pswitch_0
    const-string v0, "Unknown error code"

    :goto_0
    return-object v0

    .line 284
    :pswitch_1
    const-string v0, "Activity.RESULT_OK"

    goto :goto_0

    .line 286
    :pswitch_2
    const-string v0, "SmsManager.RESULT_ERROR_GENERIC_FAILURE"

    goto :goto_0

    .line 288
    :pswitch_3
    const-string v0, "SmsManager.RESULT_ERROR_RADIO_OFF"

    goto :goto_0

    .line 290
    :pswitch_4
    const-string v0, "SmsManager.RESULT_ERROR_NULL_PDU"

    goto :goto_0

    .line 292
    :pswitch_5
    const-string v0, "SmsManager.RESULT_ERROR_NO_SERVICE"

    goto :goto_0

    .line 294
    :pswitch_6
    const-string v0, "SmsManager.RESULT_ERROR_LIMIT_EXCEEDED"

    goto :goto_0

    .line 296
    :pswitch_7
    const-string v0, "SmsManager.RESULT_ERROR_FDN_CHECK_FAILURE"

    goto :goto_0

    .line 282
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private unRegisterForRoamingStatusChanges()V
    .locals 3

    .prologue
    .line 2086
    const-string v1, "Mms/SmsReceiverService"

    const-string v2, "unRegisterForRoamingStatusChanges"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2089
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2090
    .local v0, context:Landroid/content/Context;
    invoke-static {}, Lcom/android/mms/transaction/SmsReceiver;->getInstance()Lcom/android/mms/transaction/SmsReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2094
    .end local v0           #context:Landroid/content/Context;
    :goto_0
    return-void

    .line 2091
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private unRegisterForServiceStateChanges()V
    .locals 3

    .prologue
    .line 2058
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2059
    const-string v1, "Mms/SmsReceiverService"

    const-string v2, "unRegisterForServiceStateChanges"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2062
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2063
    .local v0, context:Landroid/content/Context;
    invoke-static {}, Lcom/android/mms/transaction/SmsReceiver;->getInstance()Lcom/android/mms/transaction/SmsReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2067
    .end local v0           #context:Landroid/content/Context;
    :goto_0
    return-void

    .line 2064
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private updateGroupType(Landroid/net/Uri;I)Z
    .locals 17
    .parameter "uri"
    .parameter "resultCode"

    .prologue
    .line 847
    const/4 v2, 0x6

    move/from16 v0, p2

    if-ne v0, v2, :cond_1

    .line 848
    const/4 v2, 0x1

    .line 906
    :cond_0
    :goto_0
    return v2

    .line 850
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 851
    .local v1, context:Landroid/content/Context;
    if-nez v1, :cond_2

    .line 852
    const/4 v2, 0x1

    goto :goto_0

    .line 854
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v13

    .line 855
    .local v13, msgId:Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 856
    const/4 v2, 0x1

    goto :goto_0

    .line 858
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "group_id=(SELECT group_id FROM sms WHERE _id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") AND _id!="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 860
    .local v5, selection:Ljava/lang/String;
    const/4 v9, 0x0

    .line 862
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SmsReceiverService;->GROUP_SMS_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 865
    if-eqz v9, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_5

    .line 866
    :cond_4
    const/4 v2, 0x1

    .line 902
    if-eqz v9, :cond_0

    .line 903
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 868
    :cond_5
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 869
    const/4 v8, 0x0

    .line 870
    .local v8, count:I
    const/4 v12, 0x0

    .line 871
    .local v12, isFailed:Z
    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 873
    .local v10, group_id:J
    :cond_6
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 874
    .local v15, type:I
    packed-switch v15, :pswitch_data_0

    .line 881
    :goto_1
    :pswitch_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_6

    .line 883
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRilSmsAddressSeperator()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 884
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v8, v2, :cond_7

    .line 885
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/mms/transaction/SmsReceiverService;->mGroupSendingStatus:I

    .line 889
    :cond_7
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-ge v8, v2, :cond_8

    .line 890
    const/4 v2, 0x0

    .line 902
    if-eqz v9, :cond_0

    .line 903
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 876
    :pswitch_1
    const/4 v12, 0x1

    .line 878
    :pswitch_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 892
    :cond_8
    const/4 v14, 0x5

    .line 893
    .local v14, newType:I
    if-nez v12, :cond_9

    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_9

    .line 894
    const/4 v14, 0x2

    .line 896
    :cond_9
    :try_start_2
    new-instance v16, Landroid/content/ContentValues;

    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 897
    .local v16, values:Landroid/content/ContentValues;
    const-string v2, "group_type"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 898
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0, v4, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 902
    .end local v8           #count:I
    .end local v10           #group_id:J
    .end local v12           #isFailed:Z
    .end local v14           #newType:I
    .end local v15           #type:I
    .end local v16           #values:Landroid/content/ContentValues;
    :cond_a
    if-eqz v9, :cond_b

    .line 903
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 906
    :cond_b
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 902
    :catchall_0
    move-exception v2

    if-eqz v9, :cond_c

    .line 903
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v2

    .line 874
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 315
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 243
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "Mms/SmsReceiverService"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 244
    .local v1, thread:Landroid/os/HandlerThread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 246
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/transaction/SmsReceiverService;->mServiceLooper:Landroid/os/Looper;

    .line 247
    new-instance v2, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;

    iget-object v3, p0, Lcom/android/mms/transaction/SmsReceiverService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v2, p0, v3}, Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;-><init>(Lcom/android/mms/transaction/SmsReceiverService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/mms/transaction/SmsReceiverService;->mServiceHandler:Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;

    .line 249
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 250
    .local v0, intentFilter:Landroid/content/IntentFilter;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/transaction/SmsReceiverService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 251
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 309
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/transaction/SmsReceiverService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 310
    iget-object v0, p0, Lcom/android/mms/transaction/SmsReceiverService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 311
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v2, 0x0

    .line 261
    if-eqz p1, :cond_1

    .line 262
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, action:Ljava/lang/String;
    const-string v3, "com.android.mms.transaction.MESSAGE_SENT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 264
    if-eqz p1, :cond_0

    const-string v3, "result"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    :cond_0
    iput v2, p0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    .line 268
    .end local v0           #action:Ljava/lang/String;
    :cond_1
    iget v2, p0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    if-eqz v2, :cond_2

    .line 269
    const-string v2, "Mms/SmsReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStart: #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mResultCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/mms/transaction/SmsReceiverService;->mResultCode:I

    invoke-static {v4}, Lcom/android/mms/transaction/SmsReceiverService;->translateResultCode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    :cond_2
    iget-object v2, p0, Lcom/android/mms/transaction/SmsReceiverService;->mServiceHandler:Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 274
    .local v1, msg:Landroid/os/Message;
    iput p3, v1, Landroid/os/Message;->arg1:I

    .line 275
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 276
    iget-object v2, p0, Lcom/android/mms/transaction/SmsReceiverService;->mServiceHandler:Lcom/android/mms/transaction/SmsReceiverService$ServiceHandler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 277
    const/4 v2, 0x2

    return v2
.end method

.method public declared-synchronized sendFirstQueuedMessage()V
    .locals 32

    .prologue
    .line 693
    monitor-enter p0

    :try_start_0
    const-string v2, "Mms/SmsReceiverService"

    const-string v6, "sendFirstQueuedMessage()"

    invoke-static {v2, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    const/16 v30, 0x1

    .line 697
    .local v30, success:Z
    const-string v2, "content://sms/queued"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 698
    .local v4, uri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 699
    .local v3, resolver:Landroid/content/ContentResolver;
    sget-object v5, Lcom/android/mms/transaction/SmsReceiverService;->SEND_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "date ASC"

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v25

    .line 712
    .local v25, c:Landroid/database/Cursor;
    if-eqz v25, :cond_3

    .line 714
    :try_start_1
    sget v2, Lcom/android/mms/transaction/SmsReceiverService;->multiSimNum:I

    const/4 v6, 0x1

    if-le v2, v6, :cond_a

    .line 715
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 716
    const/4 v8, 0x0

    .line 717
    .local v8, msgText:Ljava/lang/String;
    const/4 v7, 0x0

    .line 718
    .local v7, address:Ljava/lang/String;
    const/16 v31, 0x0

    .line 719
    .local v31, threadId:I
    const/16 v29, 0x0

    .line 720
    .local v29, status:I
    const/16 v28, 0x0

    .line 722
    .local v28, msgId:I
    const/4 v2, 0x5

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 724
    .local v22, callbackNumber:Ljava/lang/String;
    const/16 v27, 0x0

    .local v27, i:I
    :goto_0
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->getCount()I

    move-result v2

    move/from16 v0, v27

    if-ge v0, v2, :cond_2

    .line 725
    const-string v2, "Mms/SmsReceiverService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sendFirstQueuedMessage() DB SIM id: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v9, 0x7

    move-object/from16 v0, v25

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    const-string v2, "Mms/SmsReceiverService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sendFirstQueuedMessage() index: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    const/4 v2, 0x7

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/mms/transaction/SmsReceiverService;->serviceStateAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 730
    const/4 v2, 0x3

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 731
    const/4 v2, 0x2

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 732
    const/4 v2, 0x1

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    .line 733
    const/4 v2, 0x4

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    .line 734
    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 736
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    move/from16 v0, v28

    int-to-long v9, v0

    invoke-static {v2, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    .line 743
    .local v12, msgUri:Landroid/net/Uri;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePriority()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 744
    const/4 v2, 0x6

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 745
    .local v13, priority:I
    new-instance v5, Lcom/android/mms/transaction/SmsSingleRecipientSender;

    move/from16 v0, v31

    int-to-long v9, v0

    const/16 v2, 0x20

    move/from16 v0, v29

    if-ne v0, v2, :cond_5

    const/4 v11, 0x1

    :goto_1
    const/4 v2, 0x7

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v14}, Lcom/android/mms/transaction/SmsSingleRecipientSender;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JZLandroid/net/Uri;II)V

    .line 751
    .end local v13           #priority:I
    .local v5, sender:Lcom/android/mms/transaction/SmsMessageSender;
    :goto_2
    sget v2, Lcom/android/mms/transaction/SmsReceiverService;->multiSimNum:I

    const/4 v6, 0x1

    if-le v2, v6, :cond_0

    .line 752
    const/4 v2, 0x7

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v5, Lcom/android/mms/transaction/SmsMessageSender;->mSimSlot:I

    .line 755
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 756
    const-string v2, "Mms/SmsReceiverService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sendFirstQueuedMessage "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ", address: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ", threadId: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ", body: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 760
    :cond_1
    const-wide/16 v9, -0x1

    :try_start_2
    invoke-virtual {v5, v9, v10}, Lcom/android/mms/transaction/SmsSingleRecipientSender;->sendMessage(J)Z

    .line 761
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/mms/transaction/SmsReceiverService;->mSending:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_0

    .line 822
    .end local v5           #sender:Lcom/android/mms/transaction/SmsMessageSender;
    .end local v7           #address:Ljava/lang/String;
    .end local v8           #msgText:Ljava/lang/String;
    .end local v12           #msgUri:Landroid/net/Uri;
    .end local v22           #callbackNumber:Ljava/lang/String;
    .end local v27           #i:I
    .end local v28           #msgId:I
    .end local v29           #status:I
    .end local v31           #threadId:I
    :cond_2
    :goto_3
    :try_start_3
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 825
    :cond_3
    if-eqz v30, :cond_4

    .line 828
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->unRegisterForServiceStateChanges()V

    .line 829
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRoamGuard()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 830
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->unRegisterForRoamingStatusChanges()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 833
    :cond_4
    monitor-exit p0

    return-void

    .line 745
    .restart local v7       #address:Ljava/lang/String;
    .restart local v8       #msgText:Ljava/lang/String;
    .restart local v12       #msgUri:Landroid/net/Uri;
    .restart local v13       #priority:I
    .restart local v22       #callbackNumber:Ljava/lang/String;
    .restart local v27       #i:I
    .restart local v28       #msgId:I
    .restart local v29       #status:I
    .restart local v31       #threadId:I
    :cond_5
    const/4 v11, 0x0

    goto :goto_1

    .line 747
    .end local v13           #priority:I
    :cond_6
    :try_start_4
    new-instance v5, Lcom/android/mms/transaction/SmsSingleRecipientSender;

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const/16 v2, 0x20

    move/from16 v0, v29

    if-ne v0, v2, :cond_7

    const/16 v20, 0x1

    :goto_4
    const/16 v23, 0x81

    const/4 v2, 0x7

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    move-object v14, v5

    move-object/from16 v15, p0

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move-object/from16 v21, v12

    invoke-direct/range {v14 .. v24}, Lcom/android/mms/transaction/SmsSingleRecipientSender;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JZLandroid/net/Uri;Ljava/lang/String;II)V

    .restart local v5       #sender:Lcom/android/mms/transaction/SmsMessageSender;
    goto/16 :goto_2

    .end local v5           #sender:Lcom/android/mms/transaction/SmsMessageSender;
    :cond_7
    const/16 v20, 0x0

    goto :goto_4

    .line 762
    .restart local v5       #sender:Lcom/android/mms/transaction/SmsMessageSender;
    :catch_0
    move-exception v26

    .line 763
    .local v26, e:Lcom/google/android/mms/MmsException;
    const-string v2, "Mms/SmsReceiverService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sendFirstQueuedMessage: failed to send message "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ", caught "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v26

    invoke-static {v2, v6, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 765
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/mms/transaction/SmsReceiverService;->mSending:Z

    .line 766
    const/4 v2, 0x1

    const/4 v6, 0x1

    iget v9, v5, Lcom/android/mms/transaction/SmsMessageSender;->mSimSlot:I

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2, v6, v9}, Lcom/android/mms/transaction/SmsReceiverService;->messageFailedToSend(Landroid/net/Uri;IZI)V

    .line 767
    const/16 v30, 0x0

    .line 769
    goto :goto_3

    .line 772
    .end local v5           #sender:Lcom/android/mms/transaction/SmsMessageSender;
    .end local v12           #msgUri:Landroid/net/Uri;
    .end local v26           #e:Lcom/google/android/mms/MmsException;
    :cond_8
    const/16 v30, 0x0

    .line 773
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_9

    .line 774
    const-string v2, "Mms/SmsReceiverService"

    const-string v6, "sendFirstQueuedMessage() moveToNext false"

    invoke-static {v2, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 822
    .end local v7           #address:Ljava/lang/String;
    .end local v8           #msgText:Ljava/lang/String;
    .end local v22           #callbackNumber:Ljava/lang/String;
    .end local v27           #i:I
    .end local v28           #msgId:I
    .end local v29           #status:I
    .end local v31           #threadId:I
    :catchall_0
    move-exception v2

    :try_start_5
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 693
    .end local v3           #resolver:Landroid/content/ContentResolver;
    .end local v4           #uri:Landroid/net/Uri;
    .end local v25           #c:Landroid/database/Cursor;
    .end local v30           #success:Z
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2

    .line 724
    .restart local v3       #resolver:Landroid/content/ContentResolver;
    .restart local v4       #uri:Landroid/net/Uri;
    .restart local v7       #address:Ljava/lang/String;
    .restart local v8       #msgText:Ljava/lang/String;
    .restart local v22       #callbackNumber:Ljava/lang/String;
    .restart local v25       #c:Landroid/database/Cursor;
    .restart local v27       #i:I
    .restart local v28       #msgId:I
    .restart local v29       #status:I
    .restart local v30       #success:Z
    .restart local v31       #threadId:I
    :cond_9
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_0

    .line 782
    .end local v7           #address:Ljava/lang/String;
    .end local v8           #msgText:Ljava/lang/String;
    .end local v22           #callbackNumber:Ljava/lang/String;
    .end local v27           #i:I
    .end local v28           #msgId:I
    .end local v29           #status:I
    .end local v31           #threadId:I
    :cond_a
    :try_start_6
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 783
    const/4 v2, 0x3

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 784
    .restart local v8       #msgText:Ljava/lang/String;
    const/4 v2, 0x2

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 785
    .restart local v7       #address:Ljava/lang/String;
    const/4 v2, 0x1

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    .line 786
    .restart local v31       #threadId:I
    const/4 v2, 0x4

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    .line 787
    .restart local v29       #status:I
    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 788
    .restart local v28       #msgId:I
    const/4 v2, 0x5

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 790
    .restart local v22       #callbackNumber:Ljava/lang/String;
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    move/from16 v0, v28

    int-to-long v9, v0

    invoke-static {v2, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    .line 796
    .restart local v12       #msgUri:Landroid/net/Uri;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePriority()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 797
    const/4 v2, 0x6

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 798
    .restart local v13       #priority:I
    new-instance v5, Lcom/android/mms/transaction/SmsSingleRecipientSender;

    move/from16 v0, v31

    int-to-long v9, v0

    const/16 v2, 0x20

    move/from16 v0, v29

    if-ne v0, v2, :cond_c

    const/4 v11, 0x1

    :goto_5
    const/4 v2, 0x7

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v14}, Lcom/android/mms/transaction/SmsSingleRecipientSender;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JZLandroid/net/Uri;II)V

    .line 804
    .end local v13           #priority:I
    .restart local v5       #sender:Lcom/android/mms/transaction/SmsMessageSender;
    :goto_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 805
    const-string v2, "Mms/SmsReceiverService"

    const-string v6, "sendFirstQueuedMessage..."

    invoke-static {v2, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    const-string v2, "Mms/SmsReceiverService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sendFirstQueuedMessage "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ", address: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ", threadId: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ", body: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 810
    :cond_b
    const-wide/16 v9, -0x1

    :try_start_7
    invoke-virtual {v5, v9, v10}, Lcom/android/mms/transaction/SmsSingleRecipientSender;->sendMessage(J)Z

    .line 811
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/mms/transaction/SmsReceiverService;->mSending:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_3

    .line 812
    :catch_1
    move-exception v26

    .line 813
    .restart local v26       #e:Lcom/google/android/mms/MmsException;
    :try_start_8
    const-string v2, "Mms/SmsReceiverService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sendFirstQueuedMessage: failed to send message "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ", caught "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v26

    invoke-static {v2, v6, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 815
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/mms/transaction/SmsReceiverService;->mSending:Z

    .line 816
    const/4 v2, 0x1

    const/4 v6, 0x1

    iget v9, v5, Lcom/android/mms/transaction/SmsMessageSender;->mSimSlot:I

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2, v6, v9}, Lcom/android/mms/transaction/SmsReceiverService;->messageFailedToSend(Landroid/net/Uri;IZI)V

    .line 817
    const/16 v30, 0x0

    goto/16 :goto_3

    .line 798
    .end local v5           #sender:Lcom/android/mms/transaction/SmsMessageSender;
    .end local v26           #e:Lcom/google/android/mms/MmsException;
    .restart local v13       #priority:I
    :cond_c
    const/4 v11, 0x0

    goto/16 :goto_5

    .line 800
    .end local v13           #priority:I
    :cond_d
    new-instance v5, Lcom/android/mms/transaction/SmsSingleRecipientSender;

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const/16 v2, 0x20

    move/from16 v0, v29

    if-ne v0, v2, :cond_e

    const/16 v20, 0x1

    :goto_7
    const/16 v23, 0x81

    const/4 v2, 0x7

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    move-object v14, v5

    move-object/from16 v15, p0

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move-object/from16 v21, v12

    invoke-direct/range {v14 .. v24}, Lcom/android/mms/transaction/SmsSingleRecipientSender;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JZLandroid/net/Uri;Ljava/lang/String;II)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .restart local v5       #sender:Lcom/android/mms/transaction/SmsMessageSender;
    goto/16 :goto_6

    .end local v5           #sender:Lcom/android/mms/transaction/SmsMessageSender;
    :cond_e
    const/16 v20, 0x0

    goto :goto_7
.end method

.method public declared-synchronized sendFirstQueuedMessage(I)V
    .locals 32
    .parameter "simSlot"

    .prologue
    .line 549
    monitor-enter p0

    :try_start_0
    const-string v2, "Mms/SmsReceiverService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sendFirstQueuedMessage() slot"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    const/16 v30, 0x1

    .line 553
    .local v30, success:Z
    const-string v2, "content://sms/queued"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 554
    .local v4, uri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 555
    .local v3, resolver:Landroid/content/ContentResolver;
    sget-object v5, Lcom/android/mms/transaction/SmsReceiverService;->SEND_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "date ASC"

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v25

    .line 568
    .local v25, c:Landroid/database/Cursor;
    if-eqz v25, :cond_3

    .line 570
    :try_start_1
    sget v2, Lcom/android/mms/transaction/SmsReceiverService;->multiSimNum:I

    const/4 v6, 0x1

    if-le v2, v6, :cond_a

    .line 571
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 572
    const/4 v8, 0x0

    .line 573
    .local v8, msgText:Ljava/lang/String;
    const/4 v7, 0x0

    .line 574
    .local v7, address:Ljava/lang/String;
    const/16 v31, 0x0

    .line 575
    .local v31, threadId:I
    const/16 v29, 0x0

    .line 576
    .local v29, status:I
    const/16 v28, 0x0

    .line 578
    .local v28, msgId:I
    const/4 v2, 0x5

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 580
    .local v22, callbackNumber:Ljava/lang/String;
    const/16 v27, 0x0

    .local v27, i:I
    :goto_0
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->getCount()I

    move-result v2

    move/from16 v0, v27

    if-ge v0, v2, :cond_2

    .line 581
    const-string v2, "Mms/SmsReceiverService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sendFirstQueuedMessage() DB SIM id: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v9, 0x7

    move-object/from16 v0, v25

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    const-string v2, "Mms/SmsReceiverService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sendFirstQueuedMessage() index: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    const/4 v2, 0x7

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/mms/transaction/SmsReceiverService;->serviceStateAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x7

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move/from16 v0, p1

    if-ne v2, v0, :cond_8

    .line 586
    const/4 v2, 0x3

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 587
    const/4 v2, 0x2

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 588
    const/4 v2, 0x1

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    .line 589
    const/4 v2, 0x4

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    .line 590
    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 592
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    move/from16 v0, v28

    int-to-long v9, v0

    invoke-static {v2, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    .line 599
    .local v12, msgUri:Landroid/net/Uri;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePriority()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 600
    const/4 v2, 0x6

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 601
    .local v13, priority:I
    new-instance v5, Lcom/android/mms/transaction/SmsSingleRecipientSender;

    move/from16 v0, v31

    int-to-long v9, v0

    const/16 v2, 0x20

    move/from16 v0, v29

    if-ne v0, v2, :cond_5

    const/4 v11, 0x1

    :goto_1
    const/4 v2, 0x7

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v14}, Lcom/android/mms/transaction/SmsSingleRecipientSender;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JZLandroid/net/Uri;II)V

    .line 607
    .end local v13           #priority:I
    .local v5, sender:Lcom/android/mms/transaction/SmsMessageSender;
    :goto_2
    sget v2, Lcom/android/mms/transaction/SmsReceiverService;->multiSimNum:I

    const/4 v6, 0x1

    if-le v2, v6, :cond_0

    .line 608
    const/4 v2, 0x7

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v5, Lcom/android/mms/transaction/SmsMessageSender;->mSimSlot:I

    .line 611
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 612
    const-string v2, "Mms/SmsReceiverService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sendFirstQueuedMessage "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ", address: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ", threadId: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ", body: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 616
    :cond_1
    const-wide/16 v9, -0x1

    :try_start_2
    invoke-virtual {v5, v9, v10}, Lcom/android/mms/transaction/SmsSingleRecipientSender;->sendMessage(J)Z

    .line 617
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/mms/transaction/SmsReceiverService;->mSending:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_0

    .line 678
    .end local v5           #sender:Lcom/android/mms/transaction/SmsMessageSender;
    .end local v7           #address:Ljava/lang/String;
    .end local v8           #msgText:Ljava/lang/String;
    .end local v12           #msgUri:Landroid/net/Uri;
    .end local v22           #callbackNumber:Ljava/lang/String;
    .end local v27           #i:I
    .end local v28           #msgId:I
    .end local v29           #status:I
    .end local v31           #threadId:I
    :cond_2
    :goto_3
    :try_start_3
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 681
    :cond_3
    if-eqz v30, :cond_4

    .line 684
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->unRegisterForServiceStateChanges()V

    .line 685
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRoamGuard()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 686
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/SmsReceiverService;->unRegisterForRoamingStatusChanges()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 689
    :cond_4
    monitor-exit p0

    return-void

    .line 601
    .restart local v7       #address:Ljava/lang/String;
    .restart local v8       #msgText:Ljava/lang/String;
    .restart local v12       #msgUri:Landroid/net/Uri;
    .restart local v13       #priority:I
    .restart local v22       #callbackNumber:Ljava/lang/String;
    .restart local v27       #i:I
    .restart local v28       #msgId:I
    .restart local v29       #status:I
    .restart local v31       #threadId:I
    :cond_5
    const/4 v11, 0x0

    goto :goto_1

    .line 603
    .end local v13           #priority:I
    :cond_6
    :try_start_4
    new-instance v5, Lcom/android/mms/transaction/SmsSingleRecipientSender;

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const/16 v2, 0x20

    move/from16 v0, v29

    if-ne v0, v2, :cond_7

    const/16 v20, 0x1

    :goto_4
    const/16 v23, 0x81

    const/4 v2, 0x7

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    move-object v14, v5

    move-object/from16 v15, p0

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move-object/from16 v21, v12

    invoke-direct/range {v14 .. v24}, Lcom/android/mms/transaction/SmsSingleRecipientSender;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JZLandroid/net/Uri;Ljava/lang/String;II)V

    .restart local v5       #sender:Lcom/android/mms/transaction/SmsMessageSender;
    goto/16 :goto_2

    .end local v5           #sender:Lcom/android/mms/transaction/SmsMessageSender;
    :cond_7
    const/16 v20, 0x0

    goto :goto_4

    .line 618
    .restart local v5       #sender:Lcom/android/mms/transaction/SmsMessageSender;
    :catch_0
    move-exception v26

    .line 619
    .local v26, e:Lcom/google/android/mms/MmsException;
    const-string v2, "Mms/SmsReceiverService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sendFirstQueuedMessage: failed to send message "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ", caught "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v26

    invoke-static {v2, v6, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 621
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/mms/transaction/SmsReceiverService;->mSending:Z

    .line 622
    const/4 v2, 0x1

    const/4 v6, 0x1

    iget v9, v5, Lcom/android/mms/transaction/SmsMessageSender;->mSimSlot:I

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2, v6, v9}, Lcom/android/mms/transaction/SmsReceiverService;->messageFailedToSend(Landroid/net/Uri;IZI)V

    .line 623
    const/16 v30, 0x0

    .line 625
    goto :goto_3

    .line 628
    .end local v5           #sender:Lcom/android/mms/transaction/SmsMessageSender;
    .end local v12           #msgUri:Landroid/net/Uri;
    .end local v26           #e:Lcom/google/android/mms/MmsException;
    :cond_8
    const/16 v30, 0x0

    .line 629
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_9

    .line 630
    const-string v2, "Mms/SmsReceiverService"

    const-string v6, "sendFirstQueuedMessage() moveToNext false"

    invoke-static {v2, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 678
    .end local v7           #address:Ljava/lang/String;
    .end local v8           #msgText:Ljava/lang/String;
    .end local v22           #callbackNumber:Ljava/lang/String;
    .end local v27           #i:I
    .end local v28           #msgId:I
    .end local v29           #status:I
    .end local v31           #threadId:I
    :catchall_0
    move-exception v2

    :try_start_5
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 549
    .end local v3           #resolver:Landroid/content/ContentResolver;
    .end local v4           #uri:Landroid/net/Uri;
    .end local v25           #c:Landroid/database/Cursor;
    .end local v30           #success:Z
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2

    .line 580
    .restart local v3       #resolver:Landroid/content/ContentResolver;
    .restart local v4       #uri:Landroid/net/Uri;
    .restart local v7       #address:Ljava/lang/String;
    .restart local v8       #msgText:Ljava/lang/String;
    .restart local v22       #callbackNumber:Ljava/lang/String;
    .restart local v25       #c:Landroid/database/Cursor;
    .restart local v27       #i:I
    .restart local v28       #msgId:I
    .restart local v29       #status:I
    .restart local v30       #success:Z
    .restart local v31       #threadId:I
    :cond_9
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_0

    .line 638
    .end local v7           #address:Ljava/lang/String;
    .end local v8           #msgText:Ljava/lang/String;
    .end local v22           #callbackNumber:Ljava/lang/String;
    .end local v27           #i:I
    .end local v28           #msgId:I
    .end local v29           #status:I
    .end local v31           #threadId:I
    :cond_a
    :try_start_6
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 639
    const/4 v2, 0x3

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 640
    .restart local v8       #msgText:Ljava/lang/String;
    const/4 v2, 0x2

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 641
    .restart local v7       #address:Ljava/lang/String;
    const/4 v2, 0x1

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    .line 642
    .restart local v31       #threadId:I
    const/4 v2, 0x4

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    .line 643
    .restart local v29       #status:I
    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 644
    .restart local v28       #msgId:I
    const/4 v2, 0x5

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 646
    .restart local v22       #callbackNumber:Ljava/lang/String;
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    move/from16 v0, v28

    int-to-long v9, v0

    invoke-static {v2, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    .line 652
    .restart local v12       #msgUri:Landroid/net/Uri;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePriority()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 653
    const/4 v2, 0x6

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 654
    .restart local v13       #priority:I
    new-instance v5, Lcom/android/mms/transaction/SmsSingleRecipientSender;

    move/from16 v0, v31

    int-to-long v9, v0

    const/16 v2, 0x20

    move/from16 v0, v29

    if-ne v0, v2, :cond_c

    const/4 v11, 0x1

    :goto_5
    const/4 v2, 0x7

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v14}, Lcom/android/mms/transaction/SmsSingleRecipientSender;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JZLandroid/net/Uri;II)V

    .line 660
    .end local v13           #priority:I
    .restart local v5       #sender:Lcom/android/mms/transaction/SmsMessageSender;
    :goto_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 661
    const-string v2, "Mms/SmsReceiverService"

    const-string v6, "sendFirstQueuedMessage..."

    invoke-static {v2, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    const-string v2, "Mms/SmsReceiverService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sendFirstQueuedMessage "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ", address: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ", threadId: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ", body: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 666
    :cond_b
    const-wide/16 v9, -0x1

    :try_start_7
    invoke-virtual {v5, v9, v10}, Lcom/android/mms/transaction/SmsSingleRecipientSender;->sendMessage(J)Z

    .line 667
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/mms/transaction/SmsReceiverService;->mSending:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_3

    .line 668
    :catch_1
    move-exception v26

    .line 669
    .restart local v26       #e:Lcom/google/android/mms/MmsException;
    :try_start_8
    const-string v2, "Mms/SmsReceiverService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sendFirstQueuedMessage: failed to send message "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ", caught "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v26

    invoke-static {v2, v6, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 671
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/mms/transaction/SmsReceiverService;->mSending:Z

    .line 672
    const/4 v2, 0x1

    const/4 v6, 0x1

    iget v9, v5, Lcom/android/mms/transaction/SmsMessageSender;->mSimSlot:I

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2, v6, v9}, Lcom/android/mms/transaction/SmsReceiverService;->messageFailedToSend(Landroid/net/Uri;IZI)V

    .line 673
    const/16 v30, 0x0

    goto/16 :goto_3

    .line 654
    .end local v5           #sender:Lcom/android/mms/transaction/SmsMessageSender;
    .end local v26           #e:Lcom/google/android/mms/MmsException;
    .restart local v13       #priority:I
    :cond_c
    const/4 v11, 0x0

    goto/16 :goto_5

    .line 656
    .end local v13           #priority:I
    :cond_d
    new-instance v5, Lcom/android/mms/transaction/SmsSingleRecipientSender;

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const/16 v2, 0x20

    move/from16 v0, v29

    if-ne v0, v2, :cond_e

    const/16 v20, 0x1

    :goto_7
    const/16 v23, 0x81

    const/4 v2, 0x7

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    move-object v14, v5

    move-object/from16 v15, p0

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move-object/from16 v21, v12

    invoke-direct/range {v14 .. v24}, Lcom/android/mms/transaction/SmsSingleRecipientSender;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JZLandroid/net/Uri;Ljava/lang/String;II)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .restart local v5       #sender:Lcom/android/mms/transaction/SmsMessageSender;
    goto/16 :goto_6

    .end local v5           #sender:Lcom/android/mms/transaction/SmsMessageSender;
    :cond_e
    const/16 v20, 0x0

    goto :goto_7
.end method
