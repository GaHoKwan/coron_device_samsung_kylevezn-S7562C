.class public Lcom/android/mms/transaction/MessagingNotification;
.super Ljava/lang/Object;
.source "MessagingNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/transaction/MessagingNotification$AlertNotificationInfo;,
        Lcom/android/mms/transaction/MessagingNotification$FlashNotification;,
        Lcom/android/mms/transaction/MessagingNotification$NotificationInfoComparator;,
        Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;,
        Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;,
        Lcom/android/mms/transaction/MessagingNotification$OnCancelReceiver;,
        Lcom/android/mms/transaction/MessagingNotification$OnDeletedReceiver;
    }
.end annotation


# static fields
.field private static final BADGE_CLASSNAME:Ljava/lang/String; = "com.android.mms.ui.ConversationComposer"

.field private static final BADGE_PACKAGENAME:Ljava/lang/String; = "com.android.mms"

.field private static final BADGE_PROVIDER_PROJECTION:[Ljava/lang/String; = null

.field private static final BADGE_PROVIDER_SELECTION:Ljava/lang/String; = "package=?"

.field public static final CLASS0_SOUND_VIBRATE_NOTIFICATION_ID:I = 0x3e7

.field public static final CMAS_SOUND_PATH:Ljava/lang/String; = "android.resource://com.android.mms/raw/cmas_ringtone"

.field public static final CMAS_SOUND_PATH_LTN:Ljava/lang/String; = "android.resource://com.android.mms/raw/cmas_ringtone_ltn"

.field public static CMAS_Y:Z = false

.field private static final COLUMN_DATE:I = 0x2

.field private static final COLUMN_MMS_PRIORITY:I = 0x5

.field private static final COLUMN_MMS_SIM_SLOT:I = 0x6

.field private static final COLUMN_MSG_ID:I = 0x1

.field private static final COLUMN_SMS_ADDRESS:I = 0x4

.field private static final COLUMN_SMS_BODY:I = 0x5

.field private static final COLUMN_SMS_PRIORITY:I = 0x6

.field private static final COLUMN_SMS_SIM_SLOT:I = 0x7

.field private static final COLUMN_SUBJECT:I = 0x3

.field private static final COLUMN_SUBJECT_CS:I = 0x4

.field private static final COLUMN_THREAD_ID:I = 0x0

.field private static final COLUMN_WPM_BODY:I = 0x3

.field private static final COLUMN_WPM_SIM_SLOT:I = 0x4

.field public static final DOWNLOAD_FAILED_NOTIFICATION_ID:I = 0x213

.field private static final INFO_COMPARATOR:Lcom/android/mms/transaction/MessagingNotification$NotificationInfoComparator; = null

.field private static final IN_CONVERSATION_NOTIFICATION_VOLUME:F = 0.25f

.field private static final LOG_HISTORY_ALWAYS_URI:Landroid/net/Uri; = null

.field private static final LOG_HISTORY_URI:Landroid/net/Uri; = null

.field private static final LOG_MMS_URI:Landroid/net/Uri; = null

.field private static final LOG_SMS_URI:Landroid/net/Uri; = null

.field private static final MAX_BITMAP_DIMEN_DP:I = 0x168

.field private static final MAX_MESSAGES_TO_SHOW:I = 0x8

.field public static final MESSAGE_FAILED_NOTIFICATION_ID:I = 0x315

.field public static final MMS_BR_FOR_VLINGO:Ljava/lang/String; = "com.android.mms.MMS_BR_FOR_VLINGO"

.field private static final MMS_STATUS_PROJECTION:[Ljava/lang/String; = null

.field private static final MMS_THREAD_ID_PROJECTION:[Ljava/lang/String; = null

.field private static final NEW_DELIVERY_SM_CONSTRAINT:Ljava/lang/String; = "(type = 2 AND status = 0)"

.field private static final NEW_INCOMING_CMAS_CONSTRAINT:Ljava/lang/String; = "(address like \"%#CMAS#%\" AND read = 0)"

.field private static final NEW_INCOMING_CMAS_PRESIDENTIAL_CONSTRAINT:Ljava/lang/String; = "(address like \"%#CMAS#Presidential%\" AND read = 0)"

.field private static final NEW_INCOMING_MM_CONSTRAINT:Ljava/lang/String; = "(msg_box=1 AND read=0 AND (m_type=130 OR m_type=132))"

.field private static final NEW_INCOMING_SM_CONSTRAINT:Ljava/lang/String; = "(type = 1 AND read = 0)"

.field private static final NEW_INCOMING_SM_CONSTRAINT_CMAS_ENABLED:Ljava/lang/String; = "type = 1 AND address not like \"%#CMAS#%\" AND read = 0"

.field private static final NEW_INCOMING_WPM_CONSTRAINT:Ljava/lang/String; = "(read = 0)"

.field public static final NEW_MESSAGE_NOTIFICATION_ID_OPEN:I = 0x7b

.field private static final NOTIFICATION_CANCEL_ACTION:Ljava/lang/String; = "com.android.mms.NOTIFICATION_CANCEL_ACTION"

.field private static final NOTIFICATION_CMAS_ID:I = 0x41c

.field private static final NOTIFICATION_DELETED_ACTION:Ljava/lang/String; = "com.android.mms.NOTIFICATION_DELETED_ACTION"

.field private static final NOTIFICATION_ID:I = 0x7b

.field private static PRIORITY_SMS_HIGH:I = 0x0

.field private static PRIORITY_SMS_NORMAL:I = 0x0

.field public static final REPORT_NOTIFICATION_ID:I = 0x378

.field public static final REPORT_TYPE_MMS_DELIVERY:I = 0x1

.field public static final REPORT_TYPE_MMS_READ:I = 0x2

.field public static final REPORT_TYPE_SMS_DELIVERY:I = 0x0

.field private static final SMS_STATUS_PROJECTION:[Ljava/lang/String; = null

.field private static final SMS_THREAD_ID_PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "Mms/MessagingNotification"

.field public static final THREAD_ALL:J = -0x1L

.field public static final THREAD_NONE:J = -0x2L

.field private static final UNDELIVERED_URI:Landroid/net/Uri;

.field private static final WPM_STATUS_PROJECTION:[Ljava/lang/String;

.field public static cmasVibrator:Landroid/os/Vibrator;

.field private static lastMsgType:Ljava/lang/String;

.field public static mCmasType:Ljava/lang/String;

.field private static mDate:Ljava/lang/String;

.field public static mFlashNotification:Lcom/android/mms/transaction/MessagingNotification$FlashNotification;

.field private static mIsCmasReminder:Z

.field public static mIsOnce:Z

.field public static mIsOnceCMAS:Z

.field public static mMediaPlayer:Landroid/media/MediaPlayer;

.field private static mNotification:Landroid/app/Notification;

.field private static mOldVolume:I

.field private static mReminderCount:I

.field private static mRunnable:Ljava/lang/Runnable;

.field private static mToastHandler:Landroid/os/Handler;

.field private static sCurrentlyDisplayedThreadId:J

.field private static final sCurrentlyDisplayedThreadLock:Ljava/lang/Object;

.field private static sNotificationCancelReceiver:Lcom/android/mms/transaction/MessagingNotification$OnCancelReceiver;

.field private static sNotificationDeletedReceiver:Lcom/android/mms/transaction/MessagingNotification$OnDeletedReceiver;

.field private static sNotificationOnDeleteIntent:Landroid/content/Intent;

.field private static sPduPersister:Lcom/google/android/mms/pdu/PduPersister;

.field private static sScreenDensity:F

.field private static simSlot:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 164
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "thread_id"

    aput-object v1, v0, v3

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "date"

    aput-object v1, v0, v5

    const-string v1, "sub"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "sub_cs"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "pri"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "sim_slot"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->MMS_STATUS_PROJECTION:[Ljava/lang/String;

    .line 169
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "thread_id"

    aput-object v1, v0, v3

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "date"

    aput-object v1, v0, v5

    const-string v1, "subject"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "address"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "body"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "pri"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "sim_slot"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->SMS_STATUS_PROJECTION:[Ljava/lang/String;

    .line 188
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "thread_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->SMS_THREAD_ID_PROJECTION:[Ljava/lang/String;

    .line 189
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "thread_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->MMS_THREAD_ID_PROJECTION:[Ljava/lang/String;

    .line 191
    sput v3, Lcom/android/mms/transaction/MessagingNotification;->PRIORITY_SMS_NORMAL:I

    .line 192
    sput v5, Lcom/android/mms/transaction/MessagingNotification;->PRIORITY_SMS_HIGH:I

    .line 198
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->sCurrentlyDisplayedThreadLock:Ljava/lang/Object;

    .line 204
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "thread_id"

    aput-object v1, v0, v3

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "date"

    aput-object v1, v0, v5

    const-string v1, "body"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "sim_slot"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->WPM_STATUS_PROJECTION:[Ljava/lang/String;

    .line 242
    new-instance v0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfoComparator;

    invoke-direct {v0, v7}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfoComparator;-><init>(Lcom/android/mms/transaction/MessagingNotification$1;)V

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->INFO_COMPARATOR:Lcom/android/mms/transaction/MessagingNotification$NotificationInfoComparator;

    .line 244
    const-string v0, "content://mms-sms/undelivered"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->UNDELIVERED_URI:Landroid/net/Uri;

    .line 245
    const-string v0, "content://logs/historys"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->LOG_HISTORY_URI:Landroid/net/Uri;

    .line 246
    const-string v0, "content://com.samsung.android.providers.context.log.exchange_message/write"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->LOG_HISTORY_ALWAYS_URI:Landroid/net/Uri;

    .line 248
    const-string v0, "content://logs/sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->LOG_SMS_URI:Landroid/net/Uri;

    .line 249
    const-string v0, "content://logs/mms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->LOG_MMS_URI:Landroid/net/Uri;

    .line 253
    const-string v0, "null"

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->lastMsgType:Ljava/lang/String;

    .line 256
    sput-object v7, Lcom/android/mms/transaction/MessagingNotification;->mCmasType:Ljava/lang/String;

    .line 258
    sput-boolean v3, Lcom/android/mms/transaction/MessagingNotification;->CMAS_Y:Z

    .line 259
    sput-boolean v3, Lcom/android/mms/transaction/MessagingNotification;->mIsOnce:Z

    .line 260
    sput-boolean v3, Lcom/android/mms/transaction/MessagingNotification;->mIsOnceCMAS:Z

    .line 261
    sput v3, Lcom/android/mms/transaction/MessagingNotification;->mReminderCount:I

    .line 262
    sput-boolean v3, Lcom/android/mms/transaction/MessagingNotification;->mIsCmasReminder:Z

    .line 264
    const/4 v0, -0x1

    sput v0, Lcom/android/mms/transaction/MessagingNotification;->mOldVolume:I

    .line 275
    sput-object v7, Lcom/android/mms/transaction/MessagingNotification;->mNotification:Landroid/app/Notification;

    .line 276
    sput-object v7, Lcom/android/mms/transaction/MessagingNotification;->mRunnable:Ljava/lang/Runnable;

    .line 298
    new-instance v0, Lcom/android/mms/transaction/MessagingNotification$OnDeletedReceiver;

    invoke-direct {v0}, Lcom/android/mms/transaction/MessagingNotification$OnDeletedReceiver;-><init>()V

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->sNotificationDeletedReceiver:Lcom/android/mms/transaction/MessagingNotification$OnDeletedReceiver;

    .line 299
    new-instance v0, Lcom/android/mms/transaction/MessagingNotification$OnCancelReceiver;

    invoke-direct {v0}, Lcom/android/mms/transaction/MessagingNotification$OnCancelReceiver;-><init>()V

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->sNotificationCancelReceiver:Lcom/android/mms/transaction/MessagingNotification$OnCancelReceiver;

    .line 301
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->mToastHandler:Landroid/os/Handler;

    .line 305
    sput v3, Lcom/android/mms/transaction/MessagingNotification;->simSlot:I

    .line 3730
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "package"

    aput-object v1, v0, v3

    const-string v1, "class"

    aput-object v1, v0, v4

    const-string v1, "badgecount"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->BADGE_PROVIDER_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    return-void
.end method

.method public static SetFolderBox(Landroid/content/Intent;I)Landroid/content/Intent;
    .locals 3
    .parameter "clickIntent"
    .parameter "boxtype"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1405
    packed-switch p1, :pswitch_data_0

    .line 1419
    :pswitch_0
    const-string v0, "from_noti_outbox"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1420
    const-string v0, "from_noti_wappush"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1421
    const-string v0, "from_noti_inbox"

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1424
    :goto_0
    return-object p0

    .line 1407
    :pswitch_1
    const-string v0, "from_noti_outbox"

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1408
    const-string v0, "from_noti_wappush"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1409
    const-string v0, "from_noti_inbox"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 1413
    :pswitch_2
    const-string v0, "from_noti_outbox"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1414
    const-string v0, "from_noti_wappush"

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1415
    const-string v0, "from_noti_inbox"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 1405
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic access$100(Landroid/content/Context;[J)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    invoke-static {p0, p1}, Lcom/android/mms/transaction/MessagingNotification;->getUndeliveredMessageCount(Landroid/content/Context;[J)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/content/Context;ZLjava/lang/CharSequence;JI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 127
    invoke-static/range {p0 .. p5}, Lcom/android/mms/transaction/MessagingNotification;->updateDeliveryNotification(Landroid/content/Context;ZLjava/lang/CharSequence;JI)V

    return-void
.end method

.method static synthetic access$300(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    invoke-static {p0, p1}, Lcom/android/mms/transaction/MessagingNotification;->getAttachmentTypeString(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Landroid/content/Context;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->getNewCMASPresidentialCount(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic access$500()Landroid/app/Notification;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/android/mms/transaction/MessagingNotification;->mNotification:Landroid/app/Notification;

    return-object v0
.end method

.method private static final addAlertNotificationInfos(Landroid/content/Context;Ljava/util/Set;Ljava/util/SortedSet;)V
    .locals 21
    .parameter "context"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/SortedSet",
            "<",
            "Lcom/android/mms/transaction/MessagingNotification$AlertNotificationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3118
    .local p1, threads:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .local p2, alertNotificationSet:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Lcom/android/mms/transaction/MessagingNotification$AlertNotificationInfo;>;"
    const-string v3, "Mms/MessagingNotification"

    const-string v5, "getCmasNewMessageNotificationInfo()"

    invoke-static {v3, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3120
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 3121
    .local v4, resolver:Landroid/content/ContentResolver;
    sget-object v5, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/mms/transaction/MessagingNotification;->SMS_STATUS_PROJECTION:[Ljava/lang/String;

    const-string v7, "(address like \"%#CMAS#%\" AND read = 0)"

    const/4 v8, 0x0

    const-string v9, "date desc"

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v9}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 3124
    .local v17, cursor:Landroid/database/Cursor;
    if-nez v17, :cond_1

    .line 3166
    :cond_0
    :goto_0
    return-void

    .line 3129
    :cond_1
    :try_start_0
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_2

    .line 3163
    if-eqz v17, :cond_0

    .line 3164
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3134
    :cond_2
    const/4 v3, 0x1

    :try_start_1
    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 3135
    .local v19, msgId:J
    const/4 v3, 0x4

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 3136
    .local v7, address:Ljava/lang/String;
    const/4 v3, 0x5

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 3137
    .local v8, body:Ljava/lang/String;
    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 3138
    .local v10, threadId:J
    const/4 v3, 0x2

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 3140
    .local v12, timeMillis:J
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v3

    move-object/from16 v0, p0

    invoke-static {v0, v7, v12, v13, v3}, Lcom/android/mms/transaction/MessagingNotification;->initCmasAlertMessage(Landroid/content/Context;Ljava/lang/String;JI)V

    .line 3142
    if-eqz v7, :cond_3

    const-string v3, "#CMAS#"

    invoke-virtual {v7, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3143
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v7}, Lcom/android/mms/ui/MessageUtils;->getCmasServiceCategory(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 3146
    :cond_3
    const/16 v18, 0x0

    .line 3148
    .local v18, info:Lcom/android/mms/transaction/MessagingNotification$AlertNotificationInfo;
    const/4 v6, 0x1

    const/4 v9, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x81

    move-object/from16 v5, p0

    invoke-static/range {v5 .. v16}, Lcom/android/mms/transaction/MessagingNotification;->getNewAlertNotificationInfo(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/graphics/Bitmap;II)Lcom/android/mms/transaction/MessagingNotification$AlertNotificationInfo;

    move-result-object v18

    .line 3158
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 3159
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3160
    const-string v3, "300"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    invoke-static {v0, v1, v2, v3, v5}, Lcom/android/mms/transaction/MessagingNotification;->updateHistoryReadFlag(Landroid/content/Context;JLjava/lang/String;Z)V

    .line 3161
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-nez v3, :cond_2

    .line 3163
    if-eqz v17, :cond_0

    .line 3164
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 3163
    .end local v7           #address:Ljava/lang/String;
    .end local v8           #body:Ljava/lang/String;
    .end local v10           #threadId:J
    .end local v12           #timeMillis:J
    .end local v18           #info:Lcom/android/mms/transaction/MessagingNotification$AlertNotificationInfo;
    .end local v19           #msgId:J
    :catchall_0
    move-exception v3

    if-eqz v17, :cond_4

    .line 3164
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v3
.end method

.method private static addBlankForTTS(Landroid/content/Context;Ljava/lang/String;Ljava/lang/StringBuffer;I)V
    .locals 5
    .parameter "context"
    .parameter "title"
    .parameter "ttsInfo"
    .parameter "defaultStringId"

    .prologue
    .line 613
    invoke-static {p1}, Lcom/android/mms/transaction/MessagingNotification;->removeColon(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 634
    .local v1, recipient:Ljava/lang/String;
    invoke-static {v1}, Landroid/provider/Telephony$Mms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 636
    const-string v3, "-"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_2

    .line 637
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 639
    .local v2, ttsModulation:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 640
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_0

    .line 641
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 642
    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 639
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 646
    :cond_1
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 663
    .end local v0           #i:I
    .end local v2           #ttsModulation:Ljava/lang/StringBuffer;
    :goto_1
    return-void

    .line 650
    :cond_2
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 654
    :cond_3
    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method private static final addMmsNotificationInfos(Landroid/content/Context;Ljava/util/Set;Ljava/util/SortedSet;Landroid/content/Intent;)V
    .locals 32
    .parameter "context"
    .parameter
    .parameter
    .parameter "intent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/SortedSet",
            "<",
            "Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;",
            ">;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .prologue
    .line 975
    .local p1, threads:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .local p2, notificationSet:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 982
    .local v4, resolver:Landroid/content/ContentResolver;
    sget-object v5, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/mms/transaction/MessagingNotification;->MMS_STATUS_PROJECTION:[Ljava/lang/String;

    const-string v7, "(msg_box=1 AND read=0 AND (m_type=130 OR m_type=132))"

    const/4 v8, 0x0

    const-string v9, "date desc"

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v9}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 985
    .local v18, cursor:Landroid/database/Cursor;
    if-nez v18, :cond_1

    .line 1077
    :cond_0
    :goto_0
    return-void

    .line 990
    :cond_1
    :try_start_0
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_2

    .line 1072
    if-eqz v18, :cond_0

    .line 1073
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 1074
    const/16 v18, 0x0

    goto :goto_0

    .line 994
    :cond_2
    const/16 v22, 0x0

    .local v22, i:I
    move/from16 v23, v22

    .line 996
    .end local v22           #i:I
    .local v23, i:I
    :goto_1
    const/4 v3, 0x1

    :try_start_1
    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    .line 997
    .local v25, msgId:J
    sget-object v3, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v27

    .line 1002
    .local v27, msgUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/mms/util/AddressUtils;->getFrom(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    .line 1004
    .local v7, address:Ljava/lang/String;
    const/4 v3, 0x3

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v3, v5}, Lcom/android/mms/transaction/MessagingNotification;->getMmsSubject(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 1006
    .local v9, subject:Ljava/lang/String;
    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 1007
    .local v10, threadId:J
    const/4 v3, 0x2

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const-wide/16 v30, 0x3e8

    mul-long v5, v5, v30

    add-int/lit8 v22, v23, 0x1

    .end local v23           #i:I
    .restart local v22       #i:I
    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v30, v0

    add-long v12, v5, v30

    .line 1010
    .local v12, timeMillis:J
    const-string v3, "address"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1011
    const-string v3, "subject"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1012
    const-string v3, "com.android.mms.MMS_BR_FOR_VLINGO"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1014
    const/16 v16, 0x81

    .line 1015
    .local v16, priority:I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePriority()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1016
    const/4 v3, 0x5

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 1019
    :cond_3
    const/4 v3, 0x6

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 1020
    .local v17, simSlot:I
    const-string v3, "Mms/MessagingNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getMmsNewMessageNotificationInfo: simSlot="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1023
    const/4 v14, 0x0

    .line 1024
    .local v14, attachedPicture:Landroid/graphics/Bitmap;
    const/4 v8, 0x0

    .line 1025
    .local v8, messageBody:Ljava/lang/String;
    const/4 v15, 0x0

    .line 1027
    .local v15, attachmentType:I
    :try_start_2
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/MessagingNotification;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v28

    .line 1028
    .local v28, pdu:Lcom/google/android/mms/pdu/GenericPdu;
    if-eqz v28, :cond_5

    move-object/from16 v0, v28

    instance-of v3, v0, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    if-eqz v3, :cond_5

    .line 1029
    check-cast v28, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    .end local v28           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual/range {v28 .. v28}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/mms/model/SlideshowModel;->createFromPduBody(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v29

    .line 1031
    .local v29, slideshow:Lcom/android/mms/model/SlideshowModel;
    invoke-static/range {v29 .. v29}, Lcom/android/mms/transaction/MessagingNotification;->getAttachmentType(Lcom/android/mms/model/SlideshowModel;)I

    move-result v15

    .line 1032
    const/4 v3, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v21

    .line 1033
    .local v21, firstSlide:Lcom/android/mms/model/SlideModel;
    if-eqz v21, :cond_5

    .line 1034
    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1037
    :try_start_3
    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/model/ImageModel;->getThumbnailBitmap()Landroid/graphics/Bitmap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v14

    .line 1044
    :cond_4
    :goto_2
    :try_start_4
    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1045
    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v8

    .line 1054
    .end local v21           #firstSlide:Lcom/android/mms/model/SlideModel;
    .end local v29           #slideshow:Lcom/android/mms/model/SlideshowModel;
    :cond_5
    const/4 v6, 0x0

    move-object/from16 v5, p0

    :try_start_5
    invoke-static/range {v5 .. v17}, Lcom/android/mms/transaction/MessagingNotification;->getNewMessageNotificationInfo(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/graphics/Bitmap;III)Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    move-result-object v24

    .line 1066
    .local v24, info:Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 1067
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1069
    const-string v3, "200"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-static {v0, v1, v2, v3, v5}, Lcom/android/mms/transaction/MessagingNotification;->updateHistoryReadFlag(Landroid/content/Context;JLjava/lang/String;Z)V

    .line 1070
    .end local v24           #info:Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    :goto_3
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v3

    if-nez v3, :cond_7

    .line 1072
    if-eqz v18, :cond_0

    .line 1073
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 1074
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 1038
    .restart local v21       #firstSlide:Lcom/android/mms/model/SlideModel;
    .restart local v29       #slideshow:Lcom/android/mms/model/SlideshowModel;
    :catch_0
    move-exception v20

    .line 1039
    .local v20, ex:Ljava/lang/OutOfMemoryError;
    const/4 v14, 0x0

    .line 1042
    goto :goto_2

    .line 1040
    .end local v20           #ex:Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v19

    .line 1041
    .local v19, e:Ljava/lang/Exception;
    const/4 v14, 0x0

    goto :goto_2

    .line 1049
    .end local v19           #e:Ljava/lang/Exception;
    .end local v21           #firstSlide:Lcom/android/mms/model/SlideModel;
    .end local v29           #slideshow:Lcom/android/mms/model/SlideshowModel;
    :catch_2
    move-exception v19

    .line 1050
    .local v19, e:Lcom/google/android/mms/MmsException;
    :try_start_6
    const-string v3, "Mms/MessagingNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MmsException loading uri: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-static {v3, v5, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 1072
    .end local v7           #address:Ljava/lang/String;
    .end local v8           #messageBody:Ljava/lang/String;
    .end local v9           #subject:Ljava/lang/String;
    .end local v10           #threadId:J
    .end local v12           #timeMillis:J
    .end local v14           #attachedPicture:Landroid/graphics/Bitmap;
    .end local v15           #attachmentType:I
    .end local v16           #priority:I
    .end local v17           #simSlot:I
    .end local v19           #e:Lcom/google/android/mms/MmsException;
    .end local v22           #i:I
    .end local v25           #msgId:J
    .end local v27           #msgUri:Landroid/net/Uri;
    :catchall_0
    move-exception v3

    if-eqz v18, :cond_6

    .line 1073
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 1074
    const/16 v18, 0x0

    :cond_6
    throw v3

    .restart local v7       #address:Ljava/lang/String;
    .restart local v8       #messageBody:Ljava/lang/String;
    .restart local v9       #subject:Ljava/lang/String;
    .restart local v10       #threadId:J
    .restart local v12       #timeMillis:J
    .restart local v14       #attachedPicture:Landroid/graphics/Bitmap;
    .restart local v15       #attachmentType:I
    .restart local v16       #priority:I
    .restart local v17       #simSlot:I
    .restart local v22       #i:I
    .restart local v25       #msgId:J
    .restart local v27       #msgUri:Landroid/net/Uri;
    :cond_7
    move/from16 v23, v22

    .end local v22           #i:I
    .restart local v23       #i:I
    goto/16 :goto_1
.end method

.method private static addNotiIntentType(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .parameter "intent"

    .prologue
    .line 3885
    const/high16 v0, 0x3400

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3891
    const-string v0, "noti"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3893
    return-object p0
.end method

.method private static final addSmsNotificationInfos(Landroid/content/Context;Ljava/util/Set;Ljava/util/SortedSet;)V
    .locals 1
    .parameter "context"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/SortedSet",
            "<",
            "Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1184
    .local p1, threads:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .local p2, notificationSet:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/mms/transaction/MessagingNotification;->addSmsNotificationInfos(Landroid/content/Context;Ljava/util/Set;Ljava/util/SortedSet;Z)V

    .line 1185
    return-void
.end method

.method private static final addSmsNotificationInfos(Landroid/content/Context;Ljava/util/Set;Ljava/util/SortedSet;Z)V
    .locals 25
    .parameter "context"
    .parameter
    .parameter
    .parameter "withCmas"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/SortedSet",
            "<",
            "Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1188
    .local p1, threads:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .local p2, notificationSet:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;>;"
    const/4 v4, 0x0

    .line 1189
    .local v4, resolver:Landroid/content/ContentResolver;
    const/16 v18, 0x0

    .line 1190
    .local v18, cursor:Landroid/database/Cursor;
    const-string v3, "Mms/MessagingNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSmsNewMessageNotificationInfo(),withCmas= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1192
    if-eqz p3, :cond_1

    .line 1193
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1194
    sget-object v5, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/mms/transaction/MessagingNotification;->SMS_STATUS_PROJECTION:[Ljava/lang/String;

    const-string v7, "type = 1 AND address not like \"%#CMAS#%\" AND read = 0"

    const/4 v8, 0x0

    const-string v9, "date desc"

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v9}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 1203
    :goto_0
    if-nez v18, :cond_2

    .line 1204
    const/4 v3, 0x0

    sput v3, Lcom/android/mms/transaction/MessagingNotification;->mReminderCount:I

    .line 1258
    :cond_0
    :goto_1
    return-void

    .line 1198
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1199
    sget-object v5, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/mms/transaction/MessagingNotification;->SMS_STATUS_PROJECTION:[Ljava/lang/String;

    const-string v7, "(type = 1 AND read = 0)"

    const/4 v8, 0x0

    const-string v9, "date desc"

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v9}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    goto :goto_0

    .line 1209
    :cond_2
    :try_start_0
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1210
    const/4 v3, 0x0

    sput v3, Lcom/android/mms/transaction/MessagingNotification;->mReminderCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1255
    if-eqz v18, :cond_0

    .line 1256
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1213
    :cond_3
    const/16 v20, 0x0

    .local v20, i:I
    move/from16 v21, v20

    .line 1215
    .end local v20           #i:I
    .local v21, i:I
    :goto_2
    :try_start_1
    sget v3, Lcom/android/mms/transaction/MessagingNotification;->mReminderCount:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/android/mms/transaction/MessagingNotification;->mReminderCount:I

    .line 1216
    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    .line 1217
    .local v23, msgId:J
    const/4 v3, 0x4

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1218
    .local v7, address:Ljava/lang/String;
    const/4 v3, 0x5

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1219
    .local v8, body:Ljava/lang/String;
    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 1220
    .local v10, threadId:J
    const/4 v3, 0x2

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    add-int/lit8 v20, v21, 0x1

    .end local v21           #i:I
    .restart local v20       #i:I
    move/from16 v0, v21

    int-to-long v14, v0

    add-long v12, v5, v14

    .line 1222
    .local v12, timeMillis:J
    const/16 v16, 0x81

    .line 1224
    .local v16, priority:I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePriority()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1225
    const/4 v3, 0x6

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 1226
    sget v3, Lcom/android/mms/transaction/MessagingNotification;->PRIORITY_SMS_NORMAL:I

    move/from16 v0, v16

    if-ne v0, v3, :cond_5

    .line 1227
    const/16 v16, 0x81

    .line 1232
    :cond_4
    :goto_3
    const/4 v3, 0x7

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 1233
    .local v17, simSlot:I
    const-string v3, "Mms/MessagingNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addSmsNotificationInfos: simSlot="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1235
    const/4 v6, 0x1

    const/4 v9, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v5, p0

    invoke-static/range {v5 .. v17}, Lcom/android/mms/transaction/MessagingNotification;->getNewMessageNotificationInfo(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/graphics/Bitmap;III)Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    move-result-object v22

    .line 1247
    .local v22, info:Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 1248
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1250
    const-string v3, "300"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v23

    invoke-static {v0, v1, v2, v3, v5}, Lcom/android/mms/transaction/MessagingNotification;->updateHistoryReadFlag(Landroid/content/Context;JLjava/lang/String;Z)V

    .line 1251
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    if-nez v3, :cond_7

    .line 1255
    if-eqz v18, :cond_0

    .line 1256
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 1229
    .end local v17           #simSlot:I
    .end local v22           #info:Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    :cond_5
    const/16 v16, 0x82

    goto :goto_3

    .line 1252
    .end local v7           #address:Ljava/lang/String;
    .end local v8           #body:Ljava/lang/String;
    .end local v10           #threadId:J
    .end local v12           #timeMillis:J
    .end local v16           #priority:I
    .end local v20           #i:I
    .end local v23           #msgId:J
    :catch_0
    move-exception v19

    .line 1253
    .local v19, e:Ljava/lang/NullPointerException;
    :try_start_2
    const-string v3, "Mms/MessagingNotification"

    const-string v5, "NullPointerException - caught"

    invoke-static {v3, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1255
    if-eqz v18, :cond_0

    .line 1256
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 1255
    .end local v19           #e:Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v3

    if-eqz v18, :cond_6

    .line 1256
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v3

    .restart local v7       #address:Ljava/lang/String;
    .restart local v8       #body:Ljava/lang/String;
    .restart local v10       #threadId:J
    .restart local v12       #timeMillis:J
    .restart local v16       #priority:I
    .restart local v17       #simSlot:I
    .restart local v20       #i:I
    .restart local v22       #info:Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    .restart local v23       #msgId:J
    :cond_7
    move/from16 v21, v20

    .end local v20           #i:I
    .restart local v21       #i:I
    goto/16 :goto_2
.end method

.method private static final addWpmNotificationInfos(Landroid/content/Context;Ljava/util/Set;Ljava/util/SortedSet;)V
    .locals 19
    .parameter "context"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/SortedSet",
            "<",
            "Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1132
    .local p1, threads:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .local p2, notificationSet:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1133
    .local v3, resolver:Landroid/content/ContentResolver;
    sget-object v4, Lcom/android/mms/ui/MessageUtils;->WAP_PUSH_MESSAGE_BY_ID_CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/mms/transaction/MessagingNotification;->WPM_STATUS_PROJECTION:[Ljava/lang/String;

    const-string v6, "(read = 0)"

    const/4 v7, 0x0

    const-string v8, "date desc"

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 1137
    .local v17, cursor:Landroid/database/Cursor;
    if-nez v17, :cond_1

    .line 1179
    :cond_0
    :goto_0
    return-void

    .line 1141
    :cond_1
    :try_start_0
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    .line 1176
    if-eqz v17, :cond_0

    .line 1177
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1146
    :cond_2
    const v2, 0x7f0a01bb

    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1147
    .local v6, address:Ljava/lang/String;
    const/4 v2, 0x3

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1148
    .local v7, body:Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 1149
    .local v9, threadId:J
    const/4 v2, 0x2

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 1151
    .local v11, timeMillis:J
    const/4 v2, 0x4

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 1152
    .local v16, simSlot:I
    const-string v2, "Mms/MessagingNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addWpmNotificationInfos: simSlot="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1156
    const-string v2, "wappush"

    sput-object v2, Lcom/android/mms/transaction/MessagingNotification;->lastMsgType:Ljava/lang/String;

    .line 1160
    :cond_3
    const/4 v5, 0x1

    const/4 v8, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x81

    move-object/from16 v4, p0

    invoke-static/range {v4 .. v16}, Lcom/android/mms/transaction/MessagingNotification;->getNewMessageNotificationInfo(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/graphics/Bitmap;III)Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    move-result-object v18

    .line 1172
    .local v18, info:Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 1173
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1174
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    .line 1176
    if-eqz v17, :cond_0

    .line 1177
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1176
    .end local v6           #address:Ljava/lang/String;
    .end local v7           #body:Ljava/lang/String;
    .end local v9           #threadId:J
    .end local v11           #timeMillis:J
    .end local v16           #simSlot:I
    .end local v18           #info:Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    :catchall_0
    move-exception v2

    if-eqz v17, :cond_4

    .line 1177
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v2
.end method

.method public static blockingUpdateAllNotifications(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 704
    const-string v0, "Mms/MessagingNotification"

    const-string v1, "blockingUpdateAllNotifications()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    const-wide/16 v0, -0x2

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 710
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateSendFailedNotification(Landroid/content/Context;)V

    .line 711
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->updateDownloadFailedNotification(Landroid/content/Context;)V

    .line 712
    return-void
.end method

.method public static blockingUpdateAllNotificationsForMarkAsRead(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 714
    const-string v0, "Mms/MessagingNotification"

    const-string v1, "blockingUpdateAllNotificationsForMarkAsRead()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    const-wide/16 v0, -0x2

    invoke-static {p0, v0, v1, v2, v2}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;JZI)V

    .line 717
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateSendFailedNotification(Landroid/content/Context;)V

    .line 718
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->updateDownloadFailedNotification(Landroid/content/Context;)V

    .line 719
    return-void
.end method

.method public static blockingUpdateNewAlertIndicator(Landroid/content/Context;JZI)V
    .locals 17
    .parameter "context"
    .parameter "newMsgThreadId"
    .parameter "isStatusMessage"
    .parameter "simSlot"

    .prologue
    .line 3030
    const-string v2, "Mms/MessagingNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "blockingUpdateNewAlertIndicator(),threadId ="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ",isStatusMessage="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ",simSlot="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3032
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3100
    :cond_0
    :goto_0
    return-void

    .line 3035
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/MessagingNotification;->refreshBadgeCount(Landroid/content/Context;)I

    .line 3037
    new-instance v5, Ljava/util/TreeSet;

    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->INFO_COMPARATOR:Lcom/android/mms/transaction/MessagingNotification$NotificationInfoComparator;

    invoke-direct {v5, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 3039
    .local v5, alertNotificationSet:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Lcom/android/mms/transaction/MessagingNotification$AlertNotificationInfo;>;"
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 3040
    .local v9, intentForVlingo:Landroid/content/Intent;
    new-instance v13, Ljava/util/HashSet;

    const/4 v2, 0x4

    invoke-direct {v13, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 3042
    .local v13, threads:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    invoke-static {v0, v13, v5}, Lcom/android/mms/transaction/MessagingNotification;->addAlertNotificationInfos(Landroid/content/Context;Ljava/util/Set;Ljava/util/SortedSet;)V

    .line 3044
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/MessagingNotification;->updateAllHistoryAsRead(Landroid/content/Context;)V

    .line 3046
    const-wide/16 v15, -0x2

    cmp-long v2, p1, v15

    if-eqz v2, :cond_6

    const/4 v3, 0x1

    .line 3049
    .local v3, isNew:Z
    :goto_1
    move-wide/from16 v0, p1

    invoke-static {v0, v1, v5}, Lcom/android/mms/transaction/MessagingNotification;->findMostRecentAlertNotification(JLjava/util/SortedSet;)Lcom/android/mms/transaction/MessagingNotification$AlertNotificationInfo;

    move-result-object v6

    .line 3052
    .local v6, mostRecentNotification:Lcom/android/mms/transaction/MessagingNotification$AlertNotificationInfo;
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 3055
    .local v12, sp:Landroid/content/SharedPreferences;
    const-string v10, "pref_key_enable_notifications"

    .line 3056
    .local v10, preference_enabled:Ljava/lang/String;
    if-eqz p4, :cond_2

    .line 3057
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "_sim"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v4, p4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3061
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v2

    const/4 v4, 0x4

    if-ne v2, v4, :cond_7

    const/4 v2, 0x1

    invoke-interface {v12, v10, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_7

    .line 3064
    const v2, 0x7f0a0294

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 3066
    .local v11, presidentialCMAS:Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/MessagingNotification;->getNewCMASPresidentialCount(Landroid/content/Context;)I

    move-result v2

    if-gtz v2, :cond_3

    .line 3067
    const/16 v2, 0x41c

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 3070
    .end local v11           #presidentialCMAS:Ljava/lang/String;
    :cond_3
    :goto_2
    const/4 v2, 0x0

    sput-object v2, Lcom/android/mms/transaction/MessagingNotification;->mNotification:Landroid/app/Notification;

    .line 3071
    invoke-interface {v5}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 3072
    const-string v2, "Mms/MessagingNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "blockingUpdateNewAlertIndicator: count="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v13}, Ljava/util/Set;->size()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", newMsgThreadId="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3073
    invoke-interface {v13}, Ljava/util/Set;->size()I

    move-result v4

    move-object/from16 v2, p0

    move/from16 v7, p4

    invoke-static/range {v2 .. v7}, Lcom/android/mms/transaction/MessagingNotification;->updateAlertNotification(Landroid/content/Context;ZILjava/util/SortedSet;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;I)V

    .line 3078
    :goto_3
    sget-boolean v2, Lcom/android/mms/transaction/MessagingNotification;->mIsCmasReminder:Z

    if-eqz v2, :cond_4

    invoke-interface {v13}, Ljava/util/Set;->size()I

    move-result v2

    if-nez v2, :cond_4

    .line 3079
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/MessagingNotification;->cancelCMASAlarm(Landroid/content/Context;)V

    .line 3084
    :cond_4
    if-eqz v3, :cond_5

    .line 3085
    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/android/mms/transaction/MessagingNotification;->makeReadOutNewMessageString(Landroid/content/Context;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;)Ljava/lang/StringBuffer;

    move-result-object v14

    .line 3086
    .local v14, ttsInfo:Ljava/lang/StringBuffer;
    if-eqz v14, :cond_0

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3089
    new-instance v8, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/transaction/MessagingNotificationAlert;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3090
    .local v8, alertIntent:Landroid/content/Intent;
    const-string v2, "TTS_INFO"

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3091
    const-string v2, "IsCMASTyep"

    const/4 v4, 0x1

    invoke-virtual {v8, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3092
    const-string v2, "simSlot"

    move/from16 v0, p4

    invoke-virtual {v8, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3093
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 3095
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3096
    const-string v2, "Mms/MessagingNotification"

    const-string v4, "sendBroadcast(intentForVlingo): "

    invoke-static {v2, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3099
    .end local v8           #alertIntent:Landroid/content/Intent;
    .end local v14           #ttsInfo:Ljava/lang/StringBuffer;
    :cond_5
    invoke-static/range {p0 .. p0}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 3046
    .end local v3           #isNew:Z
    .end local v6           #mostRecentNotification:Lcom/android/mms/transaction/MessagingNotification$AlertNotificationInfo;
    .end local v10           #preference_enabled:Ljava/lang/String;
    .end local v12           #sp:Landroid/content/SharedPreferences;
    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 3069
    .restart local v3       #isNew:Z
    .restart local v6       #mostRecentNotification:Lcom/android/mms/transaction/MessagingNotification$AlertNotificationInfo;
    .restart local v10       #preference_enabled:Ljava/lang/String;
    .restart local v12       #sp:Landroid/content/SharedPreferences;
    :cond_7
    const/16 v2, 0x41c

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    goto/16 :goto_2

    .line 3075
    :cond_8
    invoke-static {}, Lcom/android/mms/transaction/MessagingNotificationAlert;->stopAlertSoundOnCall()V

    goto :goto_3
.end method

.method public static blockingUpdateNewMessageIndicator(Landroid/content/Context;JZI)V
    .locals 17
    .parameter "context"
    .parameter "newMsgThreadId"
    .parameter "isStatusMessage"
    .parameter "simSlot"

    .prologue
    .line 489
    const-string v3, "Mms/MessagingNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "blockingUpdateNewMessageIndicator(), threadId ="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ",isStatusMessage="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/MessagingNotification;->refreshBadgeCount(Landroid/content/Context;)I

    .line 507
    new-instance v6, Ljava/util/TreeSet;

    sget-object v3, Lcom/android/mms/transaction/MessagingNotification;->INFO_COMPARATOR:Lcom/android/mms/transaction/MessagingNotification$NotificationInfoComparator;

    invoke-direct {v6, v3}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 509
    .local v6, notificationSet:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;>;"
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 511
    .local v11, intentForVlingo:Landroid/content/Intent;
    new-instance v13, Ljava/util/HashSet;

    const/4 v3, 0x4

    invoke-direct {v13, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 513
    .local v13, threads:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    invoke-static {v0, v13, v6, v11}, Lcom/android/mms/transaction/MessagingNotification;->addMmsNotificationInfos(Landroid/content/Context;Ljava/util/Set;Ljava/util/SortedSet;Landroid/content/Intent;)V

    .line 514
    move-object/from16 v0, p0

    invoke-static {v0, v13, v6}, Lcom/android/mms/transaction/MessagingNotification;->addWpmNotificationInfos(Landroid/content/Context;Ljava/util/Set;Ljava/util/SortedSet;)V

    .line 518
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v3

    if-nez v3, :cond_1

    .line 519
    move-object/from16 v0, p0

    invoke-static {v0, v13, v6}, Lcom/android/mms/transaction/MessagingNotification;->addSmsNotificationInfos(Landroid/content/Context;Ljava/util/Set;Ljava/util/SortedSet;)V

    .line 526
    :goto_0
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/MessagingNotification;->updateAllHistoryAsRead(Landroid/content/Context;)V

    .line 527
    const-wide/16 v15, -0x2

    cmp-long v3, p1, v15

    if-eqz v3, :cond_2

    const/4 v4, 0x1

    .line 529
    .local v4, isNew:Z
    :goto_1
    move-wide/from16 v0, p1

    invoke-static {v0, v1, v6}, Lcom/android/mms/transaction/MessagingNotification;->findMostRecentNotification(JLjava/util/SortedSet;)Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    move-result-object v7

    .line 531
    .local v7, mostRecentNotification:Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    invoke-interface {v6}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 532
    const/16 v3, 0x7b

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 533
    invoke-static {}, Lcom/android/mms/transaction/MessagingNotificationAlert;->stopAlertSoundOnCall()V

    .line 540
    :goto_2
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v3

    const/4 v5, 0x1

    if-le v3, v5, :cond_4

    .line 541
    const/4 v12, 0x0

    .local v12, simSlotCount:I
    :goto_3
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v3

    if-ge v12, v3, :cond_5

    .line 542
    const-string v3, "Mms/MessagingNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "blockingUpdateNewMessageIndicator: simSlotCount="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", getNotificationCountBySimSlot(simSlotCount)="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v6, v12}, Lcom/android/mms/transaction/MessagingNotification;->getNotificationCountBySimSlot(Ljava/util/SortedSet;I)I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    invoke-static {v6, v12}, Lcom/android/mms/transaction/MessagingNotification;->getNotificationCountBySimSlot(Ljava/util/SortedSet;I)I

    move-result v3

    if-nez v3, :cond_0

    .line 544
    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/android/mms/transaction/MessagingNotification;->cancelAlarm(Landroid/content/Context;I)V

    .line 541
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 521
    .end local v4           #isNew:Z
    .end local v7           #mostRecentNotification:Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    .end local v12           #simSlotCount:I
    :cond_1
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v13, v6, v3}, Lcom/android/mms/transaction/MessagingNotification;->addSmsNotificationInfos(Landroid/content/Context;Ljava/util/Set;Ljava/util/SortedSet;Z)V

    goto :goto_0

    .line 527
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 535
    .restart local v4       #isNew:Z
    .restart local v7       #mostRecentNotification:Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    :cond_3
    const-string v3, "Mms/MessagingNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "blockingUpdateNewAIndicator: count="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v13}, Ljava/util/Set;->size()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", newMsgThreadId="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p1

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    invoke-interface {v13}, Ljava/util/Set;->size()I

    move-result v5

    move-object/from16 v3, p0

    move/from16 v8, p4

    invoke-static/range {v3 .. v8}, Lcom/android/mms/transaction/MessagingNotification;->updateNotification(Landroid/content/Context;ZILjava/util/SortedSet;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;I)V

    goto :goto_2

    .line 550
    :cond_4
    invoke-interface {v13}, Ljava/util/Set;->size()I

    move-result v3

    if-nez v3, :cond_5

    .line 551
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/MessagingNotification;->cancelAlarm(Landroid/content/Context;)V

    .line 557
    :cond_5
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/MessagingNotification;->getSmsNewDeliveryInfo(Landroid/content/Context;)Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;

    move-result-object v10

    .line 558
    .local v10, delivery:Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;
    if-eqz v10, :cond_6

    .line 559
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v10, v0, v1, v2}, Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;->deliver(Landroid/content/Context;ZI)V

    .line 562
    :cond_6
    if-eqz v4, :cond_a

    .line 563
    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/android/mms/transaction/MessagingNotification;->makeReadOutNewMessageString(Landroid/content/Context;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;)Ljava/lang/StringBuffer;

    move-result-object v14

    .line 564
    .local v14, ttsInfo:Ljava/lang/StringBuffer;
    if-eqz v14, :cond_7

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 583
    .end local v14           #ttsInfo:Ljava/lang/StringBuffer;
    :cond_7
    :goto_4
    return-void

    .line 567
    .restart local v14       #ttsInfo:Ljava/lang/StringBuffer;
    :cond_8
    new-instance v9, Landroid/content/Intent;

    const-class v3, Lcom/android/mms/transaction/MessagingNotificationAlert;

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 568
    .local v9, alertIntent:Landroid/content/Intent;
    const-string v3, "TTS_INFO"

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 570
    if-eqz v7, :cond_9

    invoke-static {}, Lcom/android/mms/MmsConfig;->isEnabledIndividualRingtone()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 571
    const-string v3, "SenderRingtonePath"

    iget-object v5, v7, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSender:Lcom/android/mms/data/Contact;

    invoke-virtual {v5}, Lcom/android/mms/data/Contact;->getRingtone()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 574
    :cond_9
    const-string v3, "simSlot"

    move/from16 v0, p4

    invoke-virtual {v9, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 575
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 577
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 578
    const-string v3, "Mms/MessagingNotification"

    const-string v5, "sendBroadcast(intentForVlingo): "

    invoke-static {v3, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    .end local v9           #alertIntent:Landroid/content/Intent;
    .end local v14           #ttsInfo:Ljava/lang/StringBuffer;
    :cond_a
    invoke-static/range {p0 .. p0}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    goto :goto_4
.end method

.method protected static buildTickerAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 8
    .parameter "context"
    .parameter "address"
    .parameter "subject"
    .parameter "body"

    .prologue
    const/16 v7, 0xd

    const/16 v6, 0xa

    const/16 v5, 0x20

    .line 3593
    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    .line 3595
    sget-object v1, Lcom/android/mms/transaction/MessagingNotification;->mCmasType:Ljava/lang/String;

    .line 3596
    .local v1, displayAddress:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3597
    .local v0, buf:Ljava/lang/StringBuilder;
    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3599
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 3600
    .local v2, offset:I
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3601
    invoke-virtual {p2, v6, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    .line 3602
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3603
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3606
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3607
    invoke-virtual {p3, v6, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p3

    .line 3608
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3611
    :cond_1
    new-instance v3, Landroid/text/SpannableString;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 3612
    .local v3, spanText:Landroid/text/SpannableString;
    new-instance v4, Landroid/text/style/StyleSpan;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v5, 0x0

    const/16 v6, 0x21

    invoke-virtual {v3, v4, v5, v2, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 3614
    return-object v3
.end method

.method protected static buildTickerMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 10
    .parameter "context"
    .parameter "address"
    .parameter "subject"
    .parameter "body"

    .prologue
    const/4 v9, 0x1

    const/16 v8, 0xd

    const/16 v7, 0xa

    const/16 v6, 0x20

    .line 2041
    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    .line 2043
    invoke-static {p1, v9}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2044
    .local v1, displayAddress:Ljava/lang/String;
    const-string v4, "CBmessages"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2045
    const v4, 0x7f0a0132

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2054
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePhoneNumberFormattingInMsg()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2055
    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->getFormattedNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2058
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    if-nez v1, :cond_7

    const-string v4, ""

    :goto_1
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2060
    .local v0, buf:Ljava/lang/StringBuilder;
    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u200e"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2062
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 2063
    .local v2, offset:I
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2064
    invoke-virtual {p2, v7, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v8, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    .line 2065
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2066
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2069
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 2070
    invoke-virtual {p3, v7, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v8, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p3

    .line 2071
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2074
    :cond_3
    new-instance v3, Landroid/text/SpannableString;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2075
    .local v3, spanText:Landroid/text/SpannableString;
    new-instance v4, Landroid/text/style/StyleSpan;

    invoke-direct {v4, v9}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v5, 0x0

    const/16 v6, 0x21

    invoke-virtual {v3, v4, v5, v2, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 2077
    return-object v3

    .line 2046
    .end local v0           #buf:Ljava/lang/StringBuilder;
    .end local v2           #offset:I
    .end local v3           #spanText:Landroid/text/SpannableString;
    :cond_4
    const-string v4, "Pushmessage"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2047
    const v4, 0x7f0a01bb

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2048
    :cond_5
    const-string v4, "#CMAS#CMASALL"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2049
    const v4, 0x7f0a0288

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2050
    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2051
    const v4, 0x7f0a0188

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 2058
    :cond_7
    invoke-virtual {v1, v7, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v8, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1
.end method

.method public static cancelAlarm(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 1272
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1273
    .local v0, am:Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/android/mms/transaction/AlarmReceiver;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1274
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "MessagingNotification"

    const-string v4, "remove alarm"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1275
    const/4 v3, 0x0

    const/high16 v4, 0x800

    invoke-static {p0, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1276
    .local v2, sender:Landroid/app/PendingIntent;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1277
    return-void
.end method

.method public static cancelAlarm(Landroid/content/Context;I)V
    .locals 6
    .parameter "context"
    .parameter "simSlot"

    .prologue
    .line 1280
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1281
    .local v0, am:Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/android/mms/transaction/AlarmReceiver;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1282
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "simSlot"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1283
    const-string v3, "MessagingNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remove alarm : simSlot="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1284
    const/high16 v3, 0x800

    invoke-static {p0, p1, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1285
    .local v2, sender:Landroid/app/PendingIntent;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1286
    return-void
.end method

.method public static cancelCMASAlarm(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/high16 v6, 0x4000

    const/4 v5, 0x0

    .line 1289
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1290
    .local v0, am:Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/android/mms/transaction/CmasAlarmReceiver;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1291
    .local v1, intent:Landroid/content/Intent;
    const/4 v2, 0x0

    .line 1292
    .local v2, sender:Landroid/app/PendingIntent;
    const-string v3, "MessagingNotification"

    const-string v4, "remove CMAS alarm"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1294
    sget-boolean v3, Lcom/android/mms/transaction/MessagingNotification;->mIsOnceCMAS:Z

    if-eqz v3, :cond_0

    .line 1295
    const-string v3, "ONCECMAS"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1296
    invoke-static {p0, v5, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1306
    :goto_0
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1307
    sput-boolean v5, Lcom/android/mms/transaction/MessagingNotification;->mIsOnceCMAS:Z

    .line 1308
    sput-boolean v5, Lcom/android/mms/transaction/MessagingNotification;->mIsCmasReminder:Z

    .line 1309
    return-void

    .line 1298
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->isTMOCMASFeatureEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1299
    const-string v3, "TMOCMAS"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1300
    invoke-static {p0, v5, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    goto :goto_0

    .line 1303
    :cond_1
    const/high16 v3, 0x800

    invoke-static {p0, v5, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    goto :goto_0
.end method

.method public static cancelNotification(Landroid/content/Context;I)V
    .locals 6
    .parameter "context"
    .parameter "notificationId"

    .prologue
    const/4 v5, 0x0

    .line 1350
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 1352
    .local v1, nm:Landroid/app/NotificationManager;
    invoke-virtual {v1, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1355
    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_2

    .line 1356
    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 1357
    sput-object v5, Lcom/android/mms/transaction/MessagingNotification;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 1358
    const-string v2, "Mms/MessagingNotification"

    const-string v3, "##cancelNotification called  mMediaPlayer.release()##"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1359
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_2

    .line 1360
    :cond_0
    sget v2, Lcom/android/mms/transaction/MessagingNotification;->mOldVolume:I

    if-ltz v2, :cond_2

    .line 1361
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1362
    .local v0, audioManager:Landroid/media/AudioManager;
    if-eqz v0, :cond_1

    .line 1363
    const/4 v2, 0x3

    sget v3, Lcom/android/mms/transaction/MessagingNotification;->mOldVolume:I

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1364
    :cond_1
    const/4 v2, -0x1

    sput v2, Lcom/android/mms/transaction/MessagingNotification;->mOldVolume:I

    .line 1368
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :cond_2
    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->cmasVibrator:Landroid/os/Vibrator;

    if-eqz v2, :cond_3

    .line 1369
    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->cmasVibrator:Landroid/os/Vibrator;

    invoke-virtual {v2}, Landroid/os/Vibrator;->cancel()V

    .line 1370
    sput-object v5, Lcom/android/mms/transaction/MessagingNotification;->cmasVibrator:Landroid/os/Vibrator;

    .line 1371
    const-string v2, "Mms/MessagingNotification"

    const-string v3, "##cancelNotification called  cmasVibrator.cancel()##"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1374
    :cond_3
    const-string v2, "Mms/MessagingNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancelNotification(),notificationId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1375
    return-void
.end method

.method private static checkBadgeCount(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 3757
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 3759
    .local v1, resolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/mms/data/Conversation;->getUnreadMessageCount(Landroid/content/ContentResolver;)I

    move-result v2

    .line 3760
    .local v2, unreadCount:I
    invoke-static {v1}, Lcom/android/mms/transaction/MessagingNotification;->getBadgeCount(Landroid/content/ContentResolver;)I

    move-result v0

    .line 3762
    .local v0, badgeCount:I
    const-string v3, "Mms/MessagingNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkBadgeCount unreadCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " badgeCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3763
    if-eq v2, v0, :cond_0

    .line 3764
    const-wide/16 v3, -0x2

    const/4 v5, 0x0

    invoke-static {p0, v3, v4, v5}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 3766
    :cond_0
    return-void
.end method

.method private static decideNotificationType(Landroid/content/Context;Landroid/content/SharedPreferences;Landroid/app/Notification;Lcom/android/mms/data/Contact;I)V
    .locals 22
    .parameter "context"
    .parameter "sp"
    .parameter "notification"
    .parameter "contact"
    .parameter "simSlot"

    .prologue
    .line 1932
    move-object/from16 v0, p2

    iget-object v9, v0, Landroid/app/Notification;->contactCharSeq:Ljava/lang/CharSequence;

    .line 1933
    .local v9, cbContact:Ljava/lang/CharSequence;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCBNotifications()Z

    move-result v19

    if-nez v19, :cond_0

    if-eqz v9, :cond_0

    .line 1935
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    const v20, 0x7f0a0132

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 1936
    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    iput-object v0, v1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 2036
    :goto_0
    return-void

    .line 1943
    :cond_0
    const-string v19, "Mms/MessagingNotification"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "decideNotificationType - simSlot = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1944
    const-string v12, "pref_key_backlight"

    .line 1945
    .local v12, preference_backlight:Ljava/lang/String;
    if-eqz p4, :cond_1

    .line 1946
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "_sim"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    add-int/lit8 v20, p4, 0x1

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1950
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/MessagingNotification;->isBlockingModeEnabled(Landroid/content/Context;)Z

    move-result v19

    if-nez v19, :cond_2

    .line 1951
    const/16 v19, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v12, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 1952
    .local v8, backlight:Z
    if-eqz v8, :cond_2

    .line 1954
    const-string v19, "power"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/PowerManager;

    .line 1955
    .local v11, pm:Landroid/os/PowerManager;
    const v19, 0x1000001a

    const-string v20, "New message notification LCD on"

    move/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v18

    .line 1957
    .local v18, wl:Landroid/os/PowerManager$WakeLock;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v19

    const/16 v21, 0x0

    move-wide/from16 v0, v19

    move/from16 v2, v21

    invoke-virtual {v11, v0, v1, v2}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 1958
    const-wide/16 v19, 0x1388

    invoke-virtual/range {v18 .. v20}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1962
    .end local v8           #backlight:Z
    .end local v11           #pm:Landroid/os/PowerManager;
    .end local v18           #wl:Landroid/os/PowerManager$WakeLock;
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNotificationVibrate()Z

    move-result v19

    if-eqz v19, :cond_b

    .line 1964
    const-string v19, "audio"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    .line 1965
    .local v5, audioManager:Landroid/media/AudioManager;
    const-string v19, "vibrator"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/SystemVibrator;

    .line 1968
    .local v16, vibrator:Landroid/os/SystemVibrator;
    const-string v13, "pref_key_vibrateWhen_checkbox"

    .line 1969
    .local v13, preference_vibrate:Ljava/lang/String;
    if-eqz p4, :cond_3

    .line 1970
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "_sim"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    add-int/lit8 v20, p4, 0x1

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1974
    :cond_3
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v19

    if-eqz v19, :cond_6

    invoke-virtual {v5}, Landroid/media/AudioManager;->isRecordActive()Z

    move-result v19

    if-nez v19, :cond_6

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v13, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    if-eqz v19, :cond_6

    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/MessagingNotification;->isBlockingModeEnabled(Landroid/content/Context;)Z

    move-result v19

    if-nez v19, :cond_6

    .line 1981
    const-string v19, "voip"

    invoke-static/range {v19 .. v19}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v17

    .line 1982
    .local v17, voipInterfaceService:Landroid/os/IVoIPInterface;
    const/4 v4, 0x0

    .line 1983
    .local v4, alertOnChatonCallMode:Z
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "alertoncall_mode"

    const/16 v21, 0x1

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 1985
    .local v3, alertOnCallMode:I
    if-eqz v17, :cond_4

    .line 1986
    :try_start_0
    invoke-interface/range {v17 .. v17}, Landroid/os/IVoIPInterface;->getVoIPInCallAlert()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 1993
    :cond_4
    :goto_1
    invoke-static {}, Lcom/android/mms/transaction/MessagingNotification;->isOnCall()Z

    move-result v19

    if-nez v19, :cond_5

    invoke-static {}, Lcom/android/mms/transaction/MessagingNotification;->isOnChatonCall()Z

    move-result v19

    if-eqz v19, :cond_a

    .line 1995
    :cond_5
    const-string v19, "Mms/MessagingNotification"

    const-string v20, "MessagingNotification vibrate: Block this in SPR On Alert on Call State"

    invoke-static/range {v19 .. v20}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2017
    .end local v3           #alertOnCallMode:I
    .end local v4           #alertOnChatonCallMode:Z
    .end local v13           #preference_vibrate:Ljava/lang/String;
    .end local v16           #vibrator:Landroid/os/SystemVibrator;
    .end local v17           #voipInterfaceService:Landroid/os/IVoIPInterface;
    :cond_6
    :goto_2
    const/4 v14, 0x0

    .line 2019
    .local v14, ringtoneStr:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->isEnabledIndividualRingtone()Z

    move-result v19

    if-eqz v19, :cond_7

    if-eqz p3, :cond_7

    .line 2020
    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/data/Contact;->getRingtone()Ljava/lang/String;

    move-result-object v14

    .line 2022
    :cond_7
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 2024
    if-nez p4, :cond_10

    .line 2025
    const-string v19, "pref_key_ringtone"

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2032
    :cond_8
    :goto_3
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_9

    .line 2033
    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/android/mms/ui/MessageUtils;->checkRingtoneIsValid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2035
    :cond_9
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_11

    const/16 v19, 0x0

    :goto_4
    move-object/from16 v0, v19

    move-object/from16 v1, p2

    iput-object v0, v1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    goto/16 :goto_0

    .line 1988
    .end local v14           #ringtoneStr:Ljava/lang/String;
    .restart local v3       #alertOnCallMode:I
    .restart local v4       #alertOnChatonCallMode:Z
    .restart local v13       #preference_vibrate:Ljava/lang/String;
    .restart local v16       #vibrator:Landroid/os/SystemVibrator;
    .restart local v17       #voipInterfaceService:Landroid/os/IVoIPInterface;
    :catch_0
    move-exception v10

    .line 1989
    .local v10, e:Landroid/os/RemoteException;
    invoke-virtual {v10}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 1997
    .end local v10           #e:Landroid/os/RemoteException;
    :cond_a
    const-string v19, "Mms/MessagingNotification"

    const-string v20, "MessagingNotification vibrate: true"

    invoke-static/range {v19 .. v20}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1998
    const/16 v19, 0x11

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/SystemVibrator;->vibrateNotification(I)V

    goto :goto_2

    .line 2003
    .end local v3           #alertOnCallMode:I
    .end local v4           #alertOnChatonCallMode:Z
    .end local v5           #audioManager:Landroid/media/AudioManager;
    .end local v13           #preference_vibrate:Ljava/lang/String;
    .end local v16           #vibrator:Landroid/os/SystemVibrator;
    .end local v17           #voipInterfaceService:Landroid/os/IVoIPInterface;
    :cond_b
    const-string v19, "audio"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    .line 2004
    .restart local v5       #audioManager:Landroid/media/AudioManager;
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v15

    .line 2005
    .local v15, vibrateSetting:I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "vibrate_in_silent"

    const/16 v21, 0x1

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    const/4 v7, 0x1

    .line 2006
    .local v7, bVibrateSilent:Z
    :goto_5
    invoke-virtual {v5}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_f

    const/4 v6, 0x1

    .line 2007
    .local v6, bNowSilent:Z
    :goto_6
    const-string v19, "Mms/MessagingNotification"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "vibrateSetting="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", bVibrateSilent="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", bNowSilent="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2009
    if-eqz v6, :cond_c

    if-nez v7, :cond_d

    :cond_c
    if-nez v6, :cond_6

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v15, v0, :cond_6

    .line 2011
    :cond_d
    const-string v19, "Mms/MessagingNotification"

    const-string v20, "vibrate: true"

    invoke-static/range {v19 .. v20}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2012
    move-object/from16 v0, p2

    iget v0, v0, Landroid/app/Notification;->defaults:I

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    move-object/from16 v1, p2

    iput v0, v1, Landroid/app/Notification;->defaults:I

    .line 2013
    const/16 v19, 0x11

    move/from16 v0, v19

    move-object/from16 v1, p2

    iput v0, v1, Landroid/app/Notification;->haptic:I

    goto/16 :goto_2

    .line 2005
    .end local v6           #bNowSilent:Z
    .end local v7           #bVibrateSilent:Z
    :cond_e
    const/4 v7, 0x0

    goto :goto_5

    .line 2006
    .restart local v7       #bVibrateSilent:Z
    :cond_f
    const/4 v6, 0x0

    goto :goto_6

    .line 2027
    .end local v7           #bVibrateSilent:Z
    .end local v15           #vibrateSetting:I
    .restart local v14       #ringtoneStr:Ljava/lang/String;
    :cond_10
    const-string v19, "pref_key_ringtone_sim2"

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_3

    .line 2035
    :cond_11
    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    goto/16 :goto_4
.end method

.method private static final dp2Pixels(I)I
    .locals 2
    .parameter "dip"

    .prologue
    .line 1101
    int-to-float v0, p0

    sget v1, Lcom/android/mms/transaction/MessagingNotification;->sScreenDensity:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private static findMostRecentAlertNotification(JLjava/util/SortedSet;)Lcom/android/mms/transaction/MessagingNotification$AlertNotificationInfo;
    .locals 6
    .parameter "threadId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/SortedSet",
            "<",
            "Lcom/android/mms/transaction/MessagingNotification$AlertNotificationInfo;",
            ">;)",
            "Lcom/android/mms/transaction/MessagingNotification$AlertNotificationInfo;"
        }
    .end annotation

    .prologue
    .line 1857
    .local p2, alertNotificationSet:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Lcom/android/mms/transaction/MessagingNotification$AlertNotificationInfo;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/SortedSet;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 1858
    :cond_0
    const/4 v4, 0x0

    .line 1878
    :goto_0
    return-object v4

    .line 1860
    :cond_1
    const-wide/16 v4, -0x2

    cmp-long v4, p0, v4

    if-nez v4, :cond_2

    .line 1861
    invoke-interface {p2}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/transaction/MessagingNotification$AlertNotificationInfo;

    goto :goto_0

    .line 1863
    :cond_2
    const/4 v2, 0x0

    .line 1864
    .local v2, mostRecentNotification:Lcom/android/mms/transaction/MessagingNotification$AlertNotificationInfo;
    invoke-interface {p2}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/transaction/MessagingNotification$AlertNotificationInfo;

    .line 1866
    .local v3, temp:Lcom/android/mms/transaction/MessagingNotification$AlertNotificationInfo;
    :try_start_0
    invoke-virtual {v3}, Lcom/android/mms/transaction/MessagingNotification$AlertNotificationInfo;->getThreadId()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    cmp-long v4, v4, p0

    if-nez v4, :cond_3

    .line 1867
    move-object v2, v3

    .line 1875
    .end local v3           #temp:Lcom/android/mms/transaction/MessagingNotification$AlertNotificationInfo;
    :cond_4
    if-nez v2, :cond_5

    .line 1876
    invoke-interface {p2}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #mostRecentNotification:Lcom/android/mms/transaction/MessagingNotification$AlertNotificationInfo;
    check-cast v2, Lcom/android/mms/transaction/MessagingNotification$AlertNotificationInfo;

    .restart local v2       #mostRecentNotification:Lcom/android/mms/transaction/MessagingNotification$AlertNotificationInfo;
    :cond_5
    move-object v4, v2

    .line 1878
    goto :goto_0

    .line 1870
    .restart local v3       #temp:Lcom/android/mms/transaction/MessagingNotification$AlertNotificationInfo;
    :catch_0
    move-exception v0

    .line 1871
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "Mms/MessagingNotification"

    const-string v5, "findMostRecentNotification - Catch Exception:"

    invoke-static {v4, v5, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private static findMostRecentNotification(JLjava/util/SortedSet;)Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    .locals 6
    .parameter "threadId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/SortedSet",
            "<",
            "Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;",
            ">;)",
            "Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;"
        }
    .end annotation

    .prologue
    .line 1832
    .local p2, notificationSet:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/SortedSet;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 1833
    :cond_0
    const/4 v4, 0x0

    .line 1853
    :goto_0
    return-object v4

    .line 1835
    :cond_1
    const-wide/16 v4, -0x2

    cmp-long v4, p0, v4

    if-nez v4, :cond_2

    .line 1836
    invoke-interface {p2}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    goto :goto_0

    .line 1838
    :cond_2
    const/4 v2, 0x0

    .line 1839
    .local v2, mostRecentNotification:Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    invoke-interface {p2}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    .line 1841
    .local v3, temp:Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    :try_start_0
    invoke-virtual {v3}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getThreadId()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    cmp-long v4, v4, p0

    if-nez v4, :cond_3

    .line 1842
    move-object v2, v3

    .line 1850
    .end local v3           #temp:Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    :cond_4
    if-nez v2, :cond_5

    .line 1851
    invoke-interface {p2}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #mostRecentNotification:Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    check-cast v2, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    .restart local v2       #mostRecentNotification:Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    :cond_5
    move-object v4, v2

    .line 1853
    goto :goto_0

    .line 1845
    .restart local v3       #temp:Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    :catch_0
    move-exception v0

    .line 1846
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "Mms/MessagingNotification"

    const-string v5, "findMostRecentNotification - Catch Exception:"

    invoke-static {v4, v5, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private static formatSenders(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/lang/CharSequence;
    .locals 9
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;",
            ">;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .prologue
    .local p1, senders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;>;"
    const/4 v8, 0x0

    .line 911
    new-instance v3, Landroid/text/style/TextAppearanceSpan;

    const v7, 0x7f0c000a

    invoke-direct {v3, p0, v7}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 914
    .local v3, notificationSenderSpan:Landroid/text/style/TextAppearanceSpan;
    const v7, 0x7f0a04d9

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 915
    .local v5, separator:Ljava/lang/String;
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 916
    .local v6, spannableStringBuilder:Landroid/text/SpannableStringBuilder;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 917
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 918
    if-lez v0, :cond_0

    .line 919
    invoke-virtual {v6, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 921
    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    iget-object v4, v7, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSender:Lcom/android/mms/data/Contact;

    .line 922
    .local v4, sender:Lcom/android/mms/data/Contact;
    const/4 v2, 0x0

    .line 923
    .local v2, name:Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/mms/data/Contact;->getFormattedName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 924
    invoke-virtual {v4}, Lcom/android/mms/data/Contact;->getFormattedName()Ljava/lang/String;

    move-result-object v2

    .line 928
    :goto_1
    invoke-virtual {v6, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 917
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 926
    :cond_1
    const v7, 0x7f0a0188

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 930
    .end local v2           #name:Ljava/lang/String;
    .end local v4           #sender:Lcom/android/mms/data/Contact;
    :cond_2
    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    invoke-virtual {v6, v3, v8, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 931
    return-object v6
.end method

.method private static getAttachmentType(Lcom/android/mms/model/SlideshowModel;)I
    .locals 5
    .parameter "slideshow"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1081
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    .line 1083
    .local v1, slideCount:I
    if-nez v1, :cond_1

    .line 1097
    :cond_0
    :goto_0
    return v2

    .line 1085
    :cond_1
    if-le v1, v3, :cond_2

    .line 1086
    const/4 v2, 0x4

    goto :goto_0

    .line 1088
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 1089
    .local v0, slide:Lcom/android/mms/model/SlideModel;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v3

    .line 1090
    goto :goto_0

    .line 1091
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1092
    const/4 v2, 0x2

    goto :goto_0

    .line 1093
    :cond_4
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1094
    const/4 v2, 0x3

    goto :goto_0
.end method

.method private static getAttachmentTypeString(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 5
    .parameter "context"
    .parameter "attachmentType"

    .prologue
    const/4 v4, 0x0

    .line 939
    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v3, 0x7f0c000b

    invoke-direct {v1, p0, v3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 941
    .local v1, notificationAttachmentSpan:Landroid/text/style/TextAppearanceSpan;
    const/4 v0, 0x0

    .line 942
    .local v0, id:I
    packed-switch p1, :pswitch_data_0

    .line 956
    :goto_0
    if-lez v0, :cond_0

    .line 957
    new-instance v2, Landroid/text/SpannableString;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 959
    .local v2, spannableString:Landroid/text/SpannableString;
    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v3

    invoke-virtual {v2, v1, v4, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 963
    .end local v2           #spannableString:Landroid/text/SpannableString;
    :goto_1
    return-object v2

    .line 944
    :pswitch_0
    const v0, 0x7f0a00d9

    .line 945
    goto :goto_0

    .line 947
    :pswitch_1
    const v0, 0x7f0a00d7

    .line 948
    goto :goto_0

    .line 950
    :pswitch_2
    const v0, 0x7f0a04d7

    .line 951
    goto :goto_0

    .line 953
    :pswitch_3
    const v0, 0x7f0a00d5

    goto :goto_0

    .line 963
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 942
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static getBadgeCount(Landroid/content/ContentResolver;)I
    .locals 9
    .parameter "resolver"

    .prologue
    const/4 v8, 0x0

    .line 3738
    const/4 v6, 0x0

    .line 3740
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/sec/android/touchwiz/app/BadgeNotification$Apps;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->BADGE_PROVIDER_PROJECTION:[Ljava/lang/String;

    const-string v3, "package=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v5, "com.android.mms"

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3743
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3744
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 3749
    if-eqz v6, :cond_0

    .line 3750
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3753
    :cond_0
    :goto_0
    return v0

    .line 3749
    :cond_1
    if-eqz v6, :cond_2

    .line 3750
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    move v0, v8

    .line 3753
    goto :goto_0

    .line 3746
    :catch_0
    move-exception v7

    .line 3747
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "Mms/MessagingNotification"

    const-string v1, "getBadgeCount has exception"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3749
    if-eqz v6, :cond_2

    .line 3750
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 3749
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 3750
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static getDeleteIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 335
    sget-object v0, Lcom/android/mms/transaction/MessagingNotification;->sNotificationOnDeleteIntent:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 337
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.mms.NOTIFICATION_DELETED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->sNotificationOnDeleteIntent:Landroid/content/Intent;

    .line 340
    :cond_0
    sget-object v0, Lcom/android/mms/transaction/MessagingNotification;->sNotificationOnDeleteIntent:Landroid/content/Intent;

    return-object v0
.end method

.method private static getDownloadFailedMessageCount(Landroid/content/Context;)I
    .locals 9
    .parameter "context"

    .prologue
    .line 2299
    const/4 v7, 0x0

    .line 2300
    .local v7, c:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 2302
    .local v8, count:I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "m_type="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0x82

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " AND "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "st"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0x87

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 2311
    if-nez v7, :cond_1

    .line 2312
    const/4 v0, 0x0

    .line 2316
    if-eqz v7, :cond_0

    .line 2317
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2318
    const/4 v7, 0x0

    .line 2321
    :cond_0
    :goto_0
    return v0

    .line 2314
    :cond_1
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    .line 2316
    if-eqz v7, :cond_2

    .line 2317
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2318
    const/4 v7, 0x0

    :cond_2
    move v0, v8

    .line 2321
    goto :goto_0

    .line 2316
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 2317
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2318
    const/4 v7, 0x0

    :cond_3
    throw v0
.end method

.method private static getMmsDeliveryReportText(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "status"

    .prologue
    .line 2446
    packed-switch p1, :pswitch_data_0

    .line 2455
    :pswitch_0
    const v0, 0x7f0a00cb

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 2449
    :pswitch_1
    const v0, 0x7f0a00d1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2451
    :pswitch_2
    const v0, 0x7f0a00cd

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2453
    :pswitch_3
    const v0, 0x7f0a0116

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2446
    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getMmsReadReportText(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "status"

    .prologue
    const v1, 0x7f0a00cc

    .line 2460
    packed-switch p1, :pswitch_data_0

    .line 2473
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 2462
    :pswitch_0
    const v0, 0x7f0a00c9

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2466
    :pswitch_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsSendingForChn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0a0389

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2470
    :cond_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2460
    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getMmsSubject(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter "sub"
    .parameter "charset"

    .prologue
    .line 2084
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v0, p1, p0}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static final getNewAlertNotificationInfo(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/graphics/Bitmap;II)Lcom/android/mms/transaction/MessagingNotification$AlertNotificationInfo;
    .locals 22
    .parameter "context"
    .parameter "isSms"
    .parameter "address"
    .parameter "body"
    .parameter "subject"
    .parameter "threadId"
    .parameter "timeMillis"
    .parameter "attachmentBitmap"
    .parameter "attachmentType"
    .parameter "priority"

    .prologue
    .line 3180
    const/4 v6, 0x0

    .line 3185
    .local v6, clickIntent:Landroid/content/Intent;
    const-string v19, ""

    .line 3186
    .local v19, presidentialCMAS:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    .line 3187
    const v4, 0x7f0a0294

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 3192
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasPresidentialThreaded()Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/android/mms/transaction/MessagingNotification;->mCmasType:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3193
    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/CMASViewer;->createIntentForNoti(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v6

    .line 3199
    :goto_1
    invoke-static {v6}, Lcom/android/mms/transaction/MessagingNotification;->addNotiIntentType(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v6

    .line 3201
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1, v4, v5}, Lcom/android/mms/transaction/MessagingNotification;->buildTickerAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v21

    .line 3202
    .local v21, tickerAlert:Ljava/lang/CharSequence;
    const/16 v20, 0x0

    .line 3203
    .local v20, senderInfo:Ljava/lang/String;
    const/4 v12, 0x0

    .line 3205
    .local v12, senderInfoName:Ljava/lang/String;
    if-eqz v21, :cond_0

    .line 3206
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    .line 3207
    const/4 v4, 0x0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 3210
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/transaction/MessagingNotification;->buildTickerAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 3211
    .local v9, ticker:Ljava/lang/CharSequence;
    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v14

    .line 3212
    .local v14, contact:Lcom/android/mms/data/Contact;
    new-instance v4, Lcom/android/mms/transaction/MessagingNotification$AlertNotificationInfo;

    const/4 v5, 0x1

    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-wide/from16 v10, p7

    move-wide/from16 v16, p5

    move/from16 v18, p11

    invoke-direct/range {v4 .. v18}, Lcom/android/mms/transaction/MessagingNotification$AlertNotificationInfo;-><init>(ZLandroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;JLjava/lang/String;Landroid/graphics/Bitmap;Lcom/android/mms/data/Contact;IJI)V

    return-object v4

    .line 3189
    .end local v9           #ticker:Ljava/lang/CharSequence;
    .end local v12           #senderInfoName:Ljava/lang/String;
    .end local v14           #contact:Lcom/android/mms/data/Contact;
    .end local v20           #senderInfo:Ljava/lang/String;
    .end local v21           #tickerAlert:Ljava/lang/CharSequence;
    :cond_1
    const v4, 0x7f0a02bc

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    goto :goto_0

    .line 3196
    :cond_2
    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v6

    goto :goto_1
.end method

.method private static getNewCMASCount(Landroid/content/Context;)I
    .locals 9
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    .line 3006
    const-string v0, "Mms/MessagingNotification"

    const-string v2, "getNewCMASCount()"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3007
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3023
    :cond_0
    :goto_0
    return v7

    .line 3010
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 3011
    .local v1, resolver:Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/transaction/MessagingNotification;->SMS_STATUS_PROJECTION:[Ljava/lang/String;

    const-string v4, "(address like \"%#CMAS#%\" AND read = 0)"

    const/4 v5, 0x0

    const-string v6, "date desc"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 3014
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_0

    .line 3018
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 3019
    .local v7, count:I
    const-string v0, "Mms/MessagingNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNewCMASCount() count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3022
    if-eqz v8, :cond_0

    .line 3023
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3022
    .end local v7           #count:I
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    .line 3023
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private static getNewCMASPresidentialCount(Landroid/content/Context;)I
    .locals 9
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    .line 3861
    const-string v0, "Mms/MessagingNotification"

    const-string v2, "getNewCMASPresidentialCount()"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3862
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3877
    :cond_0
    :goto_0
    return v7

    .line 3865
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 3866
    .local v1, resolver:Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/transaction/MessagingNotification;->SMS_STATUS_PROJECTION:[Ljava/lang/String;

    const-string v4, "(address like \"%#CMAS#Presidential%\" AND read = 0)"

    const/4 v5, 0x0

    const-string v6, "date desc"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 3869
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_0

    .line 3873
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 3874
    .local v7, count:I
    const-string v0, "Mms/MessagingNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNewCMASPresidentialCount() count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3877
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v7           #count:I
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static getNewMessageCount(Landroid/content/Context;)I
    .locals 7
    .parameter "context"

    .prologue
    .line 408
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->getNewSmsCount(Landroid/content/Context;)I

    move-result v2

    .line 409
    .local v2, smsCount:I
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->getNewMmsCount(Landroid/content/Context;)I

    move-result v1

    .line 410
    .local v1, mmsCount:I
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->getNewWpmCount(Landroid/content/Context;)I

    move-result v3

    .line 411
    .local v3, wpmCount:I
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->getNewCMASCount(Landroid/content/Context;)I

    move-result v0

    .line 413
    .local v0, cmasCount:I
    const-string v4, "Mms/MessagingNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getNewMessageCount() smsCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mmsCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " wpmCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " cmasCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    add-int v4, v2, v1

    add-int/2addr v4, v3

    add-int/2addr v4, v0

    return v4
.end method

.method private static final getNewMessageNotificationInfo(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/graphics/Bitmap;III)Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    .locals 22
    .parameter "context"
    .parameter "isSms"
    .parameter "address"
    .parameter "body"
    .parameter "subject"
    .parameter "threadId"
    .parameter "timeMillis"
    .parameter "attachmentBitmap"
    .parameter "attachmentType"
    .parameter "priority"
    .parameter "simSlot"

    .prologue
    .line 1323
    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v6

    .line 1325
    .local v6, clickIntent:Landroid/content/Intent;
    invoke-static {v6}, Lcom/android/mms/transaction/MessagingNotification;->addNotiIntentType(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v6

    .line 1326
    const-string v4, "isFromRecvNoti"

    const/4 v5, 0x1

    invoke-virtual {v6, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1328
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1, v4, v5}, Lcom/android/mms/transaction/MessagingNotification;->buildTickerMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v21

    .line 1329
    .local v21, tickerAlert:Ljava/lang/CharSequence;
    const/16 v20, 0x0

    .line 1330
    .local v20, senderInfo:Ljava/lang/String;
    const/4 v12, 0x0

    .line 1331
    .local v12, senderInfoName:Ljava/lang/String;
    if-eqz v21, :cond_0

    .line 1332
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    .line 1333
    const/4 v4, 0x0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 1336
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/transaction/MessagingNotification;->buildTickerMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 1337
    .local v9, ticker:Ljava/lang/CharSequence;
    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v14

    .line 1340
    .local v14, contact:Lcom/android/mms/data/Contact;
    const-string v4, "CBmessages"

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1341
    const v4, 0x7f0a0132

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v14

    .line 1344
    :cond_1
    new-instance v4, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    move/from16 v5, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-wide/from16 v10, p7

    move-object/from16 v13, p9

    move/from16 v15, p10

    move-wide/from16 v16, p5

    move/from16 v18, p11

    move/from16 v19, p12

    invoke-direct/range {v4 .. v19}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;-><init>(ZLandroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;JLjava/lang/String;Landroid/graphics/Bitmap;Lcom/android/mms/data/Contact;IJII)V

    return-object v4
.end method

.method public static getNewMmsCount(Landroid/content/Context;)I
    .locals 9
    .parameter "context"

    .prologue
    .line 446
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 447
    .local v1, resolver:Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/transaction/MessagingNotification;->MMS_STATUS_PROJECTION:[Ljava/lang/String;

    const-string v4, "(msg_box=1 AND read=0 AND (m_type=130 OR m_type=132))"

    const/4 v5, 0x0

    const-string v6, "date desc"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 450
    .local v8, mmsCursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 452
    .local v7, mmsCount:I
    if-eqz v8, :cond_0

    .line 453
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 456
    :cond_0
    if-eqz v8, :cond_1

    .line 457
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 459
    :cond_1
    return v7

    .line 456
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    .line 457
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static getNewSmsCount(Landroid/content/Context;)I
    .locals 10
    .parameter "context"

    .prologue
    .line 417
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 418
    .local v1, resolver:Landroid/content/ContentResolver;
    const/4 v9, 0x0

    .line 421
    .local v9, smsCursor:Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 422
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/transaction/MessagingNotification;->SMS_STATUS_PROJECTION:[Ljava/lang/String;

    const-string v4, "type = 1 AND address not like \"%#CMAS#%\" AND read = 0"

    const/4 v5, 0x0

    const-string v6, "date desc"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 434
    :goto_0
    const/4 v8, 0x0

    .line 436
    .local v8, smsCount:I
    if-eqz v9, :cond_0

    .line 437
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    .line 440
    :cond_0
    if-eqz v9, :cond_1

    .line 441
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 443
    :cond_1
    return v8

    .line 425
    .end local v8           #smsCount:I
    :cond_2
    :try_start_2
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/transaction/MessagingNotification;->SMS_STATUS_PROJECTION:[Ljava/lang/String;

    const-string v4, "(type = 1 AND read = 0)"

    const/4 v5, 0x0

    const-string v6, "date desc"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v9

    goto :goto_0

    .line 429
    :catch_0
    move-exception v7

    .line 431
    .local v7, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v7}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 440
    .end local v7           #e:Ljava/lang/IllegalStateException;
    .restart local v8       #smsCount:I
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_3

    .line 441
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static getNewWpmCount(Landroid/content/Context;)I
    .locals 9
    .parameter "context"

    .prologue
    .line 462
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 463
    .local v1, resolver:Landroid/content/ContentResolver;
    sget-object v2, Lcom/android/mms/ui/MessageUtils;->WAP_PUSH_MESSAGE_BY_ID_CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/transaction/MessagingNotification;->WPM_STATUS_PROJECTION:[Ljava/lang/String;

    const-string v4, "(read = 0)"

    const/4 v5, 0x0

    const-string v6, "date desc"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 467
    .local v8, wpmCursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 469
    .local v7, wpmCount:I
    if-eqz v8, :cond_0

    .line 470
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 473
    :cond_0
    if-eqz v8, :cond_1

    .line 474
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 476
    :cond_1
    return v7

    .line 473
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    .line 474
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private static declared-synchronized getNotificationCountBySimSlot(Ljava/util/SortedSet;I)I
    .locals 10
    .parameter
    .parameter "simSlot"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet",
            "<",
            "Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 3914
    .local p0, notificationSet:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;>;"
    const-class v5, Lcom/android/mms/transaction/MessagingNotification;

    monitor-enter v5

    const/4 v0, 0x0

    .line 3916
    .local v0, count:I
    :try_start_0
    invoke-interface {p0}, Ljava/util/SortedSet;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 3917
    const/4 v4, 0x0

    .line 3934
    :goto_0
    monitor-exit v5

    return v4

    .line 3919
    :cond_0
    :try_start_1
    invoke-interface {p0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 3921
    .local v3, notifications:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;>;"
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_2

    .line 3923
    :try_start_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    .line 3925
    .local v2, notificationInfo:Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    invoke-virtual {v2}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->getSimSlot()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-wide v6

    int-to-long v8, p1

    cmp-long v4, v6, v8

    if-nez v4, :cond_1

    .line 3926
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3928
    .end local v2           #notificationInfo:Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    :catch_0
    move-exception v1

    .line 3929
    .local v1, e:Ljava/lang/Exception;
    :try_start_3
    const-string v4, "Mms/MessagingNotification"

    const-string v6, "getNotificationCountBySimSlot - Catch Exception:"

    invoke-static {v4, v6, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 3914
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #notifications:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .restart local v3       #notifications:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;>;"
    :cond_2
    move v4, v0

    .line 3934
    goto :goto_0
.end method

.method public static getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;
    .locals 1
    .parameter "context"

    .prologue
    .line 344
    sget-object v0, Lcom/android/mms/transaction/MessagingNotification;->sPduPersister:Lcom/google/android/mms/pdu/PduPersister;

    if-nez v0, :cond_0

    .line 345
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->sPduPersister:Lcom/google/android/mms/pdu/PduPersister;

    .line 348
    :cond_0
    sget-object v0, Lcom/android/mms/transaction/MessagingNotification;->sPduPersister:Lcom/google/android/mms/pdu/PduPersister;

    return-object v0
.end method

.method private static getSmsDeliveryReportText(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "status"

    .prologue
    .line 2427
    sparse-switch p1, :sswitch_data_0

    .line 2441
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 2429
    :sswitch_0
    const v0, 0x7f0a00d1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2431
    :sswitch_1
    const v0, 0x7f0a00cb

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2433
    :sswitch_2
    const v0, 0x7f0a00c8

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2437
    :sswitch_3
    const v0, 0x7f0a0116

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2427
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x20 -> :sswitch_2
        0x40 -> :sswitch_1
        0x46 -> :sswitch_3
    .end sparse-switch
.end method

.method private static final getSmsNewDeliveryInfo(Landroid/content/Context;)Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;
    .locals 9
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 1105
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1106
    .local v1, resolver:Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/transaction/MessagingNotification;->SMS_STATUS_PROJECTION:[Ljava/lang/String;

    const-string v4, "(type = 2 AND status = 0)"

    const-string v6, "date desc"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1109
    .local v8, cursor:Landroid/database/Cursor;
    if-nez v8, :cond_1

    .line 1125
    :cond_0
    :goto_0
    return-object v5

    .line 1113
    :cond_1
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 1123
    if-eqz v8, :cond_0

    .line 1124
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1125
    const/4 v8, 0x0

    goto :goto_0

    .line 1116
    :cond_2
    const/4 v0, 0x4

    :try_start_1
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1118
    .local v7, address:Ljava/lang/String;
    const-string v0, "Mms/MessagingNotification"

    const-string v2, "getSmsNewDeliveryInfo"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    new-instance v5, Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;

    const v0, 0x7f0a00dd

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v7, v2, v3

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0xbb8

    invoke-direct {v5, v0, v2, v3}, Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;-><init>(Ljava/lang/CharSequence;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1123
    if-eqz v8, :cond_0

    .line 1124
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1125
    const/4 v8, 0x0

    goto :goto_0

    .line 1123
    .end local v7           #address:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 1124
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1125
    const/4 v8, 0x0

    :cond_3
    throw v0
.end method

.method public static getSmsThreadId(Landroid/content/Context;Landroid/net/Uri;)J
    .locals 10
    .parameter "context"
    .parameter "uri"

    .prologue
    const-wide/16 v8, -0x2

    const/4 v4, 0x0

    .line 2501
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/mms/transaction/MessagingNotification;->SMS_THREAD_ID_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v2, p1

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2510
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_1

    move-wide v0, v8

    .line 2522
    :cond_0
    :goto_0
    return-wide v0

    .line 2515
    :cond_1
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2516
    const-string v0, "thread_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 2521
    if-eqz v7, :cond_0

    .line 2522
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2521
    :cond_2
    if-eqz v7, :cond_3

    .line 2522
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    move-wide v0, v8

    goto :goto_0

    .line 2521
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 2522
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private static getSystemService(Ljava/lang/String;)Landroid/app/AlarmManager;
    .locals 1
    .parameter "alarmService"

    .prologue
    .line 1883
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getThreadId(Landroid/content/Context;Landroid/net/Uri;)J
    .locals 10
    .parameter "context"
    .parameter "uri"

    .prologue
    const-wide/16 v8, -0x2

    const/4 v4, 0x0

    .line 2559
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/mms/transaction/MessagingNotification;->MMS_THREAD_ID_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v2, p1

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2568
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_1

    move-wide v0, v8

    .line 2580
    :cond_0
    :goto_0
    return-wide v0

    .line 2573
    :cond_1
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2574
    const-string v0, "thread_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 2579
    if-eqz v7, :cond_0

    .line 2580
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2579
    :cond_2
    if-eqz v7, :cond_3

    .line 2580
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    move-wide v0, v8

    goto :goto_0

    .line 2579
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 2580
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private static getUndeliveredMessageCount(Landroid/content/Context;[J)I
    .locals 13
    .parameter "context"
    .parameter "threadIdResult"

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x1

    const/4 v7, 0x0

    .line 2202
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->UNDELIVERED_URI:Landroid/net/Uri;

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "thread_id"

    aput-object v0, v3, v7

    const-string v4, "read=0"

    move-object v0, p0

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 2206
    .local v10, undeliveredCursor:Landroid/database/Cursor;
    if-nez v10, :cond_1

    .line 2247
    :cond_0
    :goto_0
    return v7

    .line 2209
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 2210
    .local v7, count:I
    const-wide/16 v11, 0x0

    .line 2212
    .local v11, undeliveredThreadId:J
    if-eqz p1, :cond_9

    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2213
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 2214
    invoke-static {p0, v11, v12}, Lcom/android/mms/transaction/MessagingNotification;->isValidThreadId(Landroid/content/Context;J)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2215
    const/4 v0, 0x0

    aput-wide v11, p1, v0

    .line 2228
    :cond_2
    :goto_1
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_9

    .line 2230
    const/4 v0, 0x0

    aget-wide v8, p1, v0

    .line 2231
    .local v8, firstId:J
    :cond_3
    :goto_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_8

    if-lez v7, :cond_8

    .line 2232
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 2233
    invoke-static {p0, v11, v12}, Lcom/android/mms/transaction/MessagingNotification;->isValidThreadId(Landroid/content/Context;J)Z

    move-result v0

    if-nez v0, :cond_7

    .line 2234
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 2217
    .end local v8           #firstId:J
    :cond_4
    add-int/lit8 v7, v7, -0x1

    .line 2218
    :goto_3
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    if-lez v7, :cond_2

    .line 2219
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 2220
    invoke-static {p0, v11, v12}, Lcom/android/mms/transaction/MessagingNotification;->isValidThreadId(Landroid/content/Context;J)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2221
    const/4 v0, 0x0

    aput-wide v11, p1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 2244
    :catchall_0
    move-exception v0

    if-eqz v10, :cond_5

    .line 2245
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 2224
    :cond_6
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    .line 2235
    .restart local v8       #firstId:J
    :cond_7
    cmp-long v0, v11, v8

    if-eqz v0, :cond_3

    .line 2236
    const-wide/16 v8, 0x0

    goto :goto_2

    .line 2240
    :cond_8
    const/4 v0, 0x1

    :try_start_1
    aput-wide v8, p1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2244
    .end local v8           #firstId:J
    :cond_9
    if-eqz v10, :cond_0

    .line 2245
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static getWpmThreadId(Landroid/content/Context;Landroid/net/Uri;)J
    .locals 10
    .parameter "context"
    .parameter "uri"

    .prologue
    const-wide/16 v8, -0x2

    const/4 v4, 0x0

    .line 2527
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/mms/transaction/MessagingNotification;->SMS_THREAD_ID_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v2, p1

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2536
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_1

    move-wide v0, v8

    .line 2548
    :cond_0
    :goto_0
    return-wide v0

    .line 2541
    :cond_1
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2542
    const-string v0, "thread_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 2547
    if-eqz v7, :cond_0

    .line 2548
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2547
    :cond_2
    if-eqz v7, :cond_3

    .line 2548
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    move-wide v0, v8

    goto :goto_0

    .line 2547
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 2548
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 315
    const-string v2, "Mms/MessagingNotification"

    const-string v3, "init()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const-string v2, "Mms/MessagingNotification"

    const-string v3, "init start"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 319
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "com.android.mms.NOTIFICATION_DELETED_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 322
    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->sNotificationDeletedReceiver:Lcom/android/mms/transaction/MessagingNotification$OnDeletedReceiver;

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 325
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 326
    .local v0, cancelIntentFilter:Landroid/content/IntentFilter;
    const-string v2, "com.android.mms.NOTIFICATION_CANCEL_ACTION"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 327
    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->sNotificationCancelReceiver:Lcom/android/mms/transaction/MessagingNotification$OnCancelReceiver;

    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 329
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->checkBadgeCount(Landroid/content/Context;)V

    .line 331
    const-string v2, "Mms/MessagingNotification"

    const-string v3, "init end"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->t(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    return-void
.end method

.method private static initCmasAlertMessage(Landroid/content/Context;Ljava/lang/String;JI)V
    .locals 4
    .parameter "context"
    .parameter "address"
    .parameter "timeMillis"
    .parameter "count"

    .prologue
    .line 3104
    const-string v1, "Mms/MessagingNotification"

    const-string v2, "initCmasAlertMessage() address is "

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3106
    const v0, 0x80b10

    .line 3110
    .local v0, format_flags:I
    invoke-static {p0, p2, p3, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/mms/transaction/MessagingNotification;->mDate:Ljava/lang/String;

    .line 3111
    if-lez p4, :cond_0

    .line 3112
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->getCmasServiceCategory(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/mms/transaction/MessagingNotification;->mCmasType:Ljava/lang/String;

    .line 3113
    const-string v1, "Mms/MessagingNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initCmasAlertMessage() mCmasType is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/mms/transaction/MessagingNotification;->mCmasType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3115
    :cond_0
    return-void
.end method

.method public static isBlockingModeEnabled(Landroid/content/Context;)Z
    .locals 14
    .parameter "context"

    .prologue
    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 1889
    const/4 v1, 0x0

    .line 1890
    .local v1, UNCHECK:I
    const/4 v0, 0x1

    .line 1892
    .local v0, CHECK:I
    const/4 v7, 0x0

    .line 1894
    .local v7, isEnabled:Z
    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportDormantMode()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1896
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "dormant_switch_onoff"

    invoke-static {v10, v11, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 1897
    .local v6, isBlockingModeOn:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "dormant_disable_notifications"

    invoke-static {v10, v11, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 1899
    .local v8, isNotificationChecked:I
    if-ne v8, v12, :cond_0

    if-ne v6, v12, :cond_0

    .line 1901
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "dormant_always"

    invoke-static {v10, v11, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 1903
    .local v5, isBlockingModeAlways:I
    if-ne v5, v12, :cond_1

    .line 1904
    const/4 v7, 0x1

    .line 1927
    .end local v5           #isBlockingModeAlways:I
    .end local v6           #isBlockingModeOn:I
    .end local v8           #isNotificationChecked:I
    :cond_0
    :goto_0
    return v7

    .line 1906
    .restart local v5       #isBlockingModeAlways:I
    .restart local v6       #isBlockingModeOn:I
    .restart local v8       #isNotificationChecked:I
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 1907
    .local v2, c:Ljava/util/Calendar;
    const/16 v10, 0xb

    invoke-virtual {v2, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    mul-int/lit8 v10, v10, 0x3c

    const/16 v11, 0xc

    invoke-virtual {v2, v11}, Ljava/util/Calendar;->get(I)I

    move-result v11

    add-int v3, v10, v11

    .line 1909
    .local v3, curTime:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "dormant_start_hour"

    invoke-static {v10, v11, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    mul-int/lit8 v10, v10, 0x3c

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "dormant_start_min"

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    add-int v9, v10, v11

    .line 1911
    .local v9, startTime:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "dormant_end_hour"

    invoke-static {v10, v11, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    mul-int/lit8 v10, v10, 0x3c

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "dormant_end_min"

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    add-int v4, v10, v11

    .line 1914
    .local v4, endTime:I
    if-ge v9, v4, :cond_2

    .line 1915
    if-lt v3, v9, :cond_0

    if-ge v3, v4, :cond_0

    .line 1916
    const/4 v7, 0x1

    goto :goto_0

    .line 1918
    :cond_2
    if-le v9, v4, :cond_4

    .line 1919
    if-lt v3, v4, :cond_3

    if-lt v3, v9, :cond_0

    .line 1920
    :cond_3
    const/4 v7, 0x1

    goto :goto_0

    .line 1922
    :cond_4
    const/4 v7, 0x1

    goto :goto_0
.end method

.method public static isFailedToDeliver(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    const/4 v0, 0x0

    .line 2487
    if-eqz p0, :cond_0

    const-string v1, "undelivered_flag"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isFailedToDownload(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    const/4 v0, 0x0

    .line 2491
    if-eqz p0, :cond_0

    const-string v1, "failed_download_flag"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static isOnCall()Z
    .locals 1

    .prologue
    .line 3897
    invoke-static {}, Lcom/android/mms/util/TelephonyUtils;->isCallOffhook()Z

    move-result v0

    return v0
.end method

.method private static isOnChatonCall()Z
    .locals 3

    .prologue
    .line 3902
    :try_start_0
    const-string v2, "voip"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IVoIPInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoIPInterface;

    move-result-object v1

    .line 3903
    .local v1, voipInterfaceService:Landroid/os/IVoIPInterface;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/os/IVoIPInterface;->isVoIPDialing()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Landroid/os/IVoIPInterface;->isVoIPActivated()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    .line 3905
    :cond_0
    const/4 v2, 0x1

    .line 3910
    :goto_0
    return v2

    .line 3907
    :catch_0
    move-exception v0

    .line 3908
    .local v0, e1:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 3910
    .end local v0           #e1:Landroid/os/RemoteException;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isValidThreadId(Landroid/content/Context;J)Z
    .locals 2
    .parameter "context"
    .parameter "threadId"

    .prologue
    .line 2251
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static makeReadOutNewMessageString(Landroid/content/Context;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;)Ljava/lang/StringBuffer;
    .locals 6
    .parameter "context"
    .parameter "info"

    .prologue
    .line 586
    if-nez p1, :cond_1

    .line 587
    const/4 v2, 0x0

    .line 609
    :cond_0
    :goto_0
    return-object v2

    .line 589
    :cond_1
    const/4 v1, 0x0

    .line 591
    .local v1, readOutNewMessageNotification:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "driving_mode_message_notification"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 593
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 595
    .local v2, readOutText:Ljava/lang/StringBuffer;
    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 596
    iget-object v3, p1, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mTitle:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 597
    const v3, 0x7f0a01a2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 599
    :cond_2
    const v0, 0x7f0a01a1

    .line 601
    .local v0, defaultStringId:I
    iget-boolean v3, p1, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mIsSms:Z

    if-eqz v3, :cond_3

    .line 602
    const v0, 0x7f0a01a0

    .line 605
    :cond_3
    iget-object v3, p1, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mTitle:Ljava/lang/String;

    invoke-static {p0, v3, v2, v0}, Lcom/android/mms/transaction/MessagingNotification;->addBlankForTTS(Landroid/content/Context;Ljava/lang/String;Ljava/lang/StringBuffer;I)V

    goto :goto_0
.end method

.method public static nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V
    .locals 3
    .parameter "context"
    .parameter "threadId"
    .parameter "isStatusMessage"

    .prologue
    .line 375
    :try_start_0
    const-string v1, "Mms/MessagingNotification"

    const-string v2, "nonBlockingUpdateNewMessageIndicator()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/mms/transaction/MessagingNotification$1;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/mms/transaction/MessagingNotification$1;-><init>(Landroid/content/Context;JZ)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    :goto_0
    return-void

    .line 383
    :catch_0
    move-exception v0

    .line 384
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Mms/MessagingNotification"

    const-string v2, "nonBlockingUpdateNewMessageIndicator Thread Error"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static nonBlockingUpdateSendFailedNotification(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 391
    new-instance v0, Lcom/android/mms/transaction/MessagingNotification$2;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/MessagingNotification$2;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/MessagingNotification$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 405
    return-void
.end method

.method public static notifyDownloadFailed(Landroid/content/Context;JI)V
    .locals 6
    .parameter "context"
    .parameter "threadId"
    .parameter "simSlot"

    .prologue
    const/4 v1, 0x1

    .line 2091
    move-object v0, p0

    move-wide v2, p1

    move v4, v1

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/mms/transaction/MessagingNotification;->notifyFailed(Landroid/content/Context;ZJZI)V

    .line 2092
    return-void
.end method

.method private static notifyFailed(Landroid/content/Context;ZJZI)V
    .locals 17
    .parameter "context"
    .parameter "isDownload"
    .parameter "threadId"
    .parameter "noisy"
    .parameter "simSlot"

    .prologue
    .line 2104
    const-string v13, "Mms/MessagingNotification"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "notifyFailed(),isDownload="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",threadId="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-wide/from16 v0, p2

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ",noisy="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p4

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2108
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 2113
    .local v10, sp:Landroid/content/SharedPreferences;
    const-string v13, "Mms/MessagingNotification"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "notifyFailed - simSlot = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p5

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2114
    const-string v9, "pref_key_enable_notifications"

    .line 2115
    .local v9, preference_enabled:Ljava/lang/String;
    if-eqz p5, :cond_0

    .line 2116
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "_sim"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    add-int/lit8 v14, p5, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2120
    :cond_0
    const/4 v13, 0x1

    invoke-interface {v10, v9, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 2122
    .local v3, enabled:Z
    if-nez v3, :cond_1

    .line 2123
    const-string v13, "Mms/MessagingNotification"

    const-string v14, "NOTIFICATION_ENABLED - false"

    invoke-static {v13, v14}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2194
    :goto_0
    return-void

    .line 2127
    :cond_1
    const-string v13, "notification"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    .line 2137
    .local v6, nm:Landroid/app/NotificationManager;
    const/4 v13, 0x2

    new-array v5, v13, [J

    fill-array-data v5, :array_0

    .line 2140
    .local v5, msgThreadId:[J
    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/android/mms/transaction/MessagingNotification;->getUndeliveredMessageCount(Landroid/content/Context;[J)I

    move-result v12

    .line 2142
    .local v12, totalFailedCount:I
    new-instance v4, Landroid/content/Intent;

    const-class v13, Lcom/android/mms/ui/ConversationComposer;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2143
    .local v4, failedIntent:Landroid/content/Intent;
    new-instance v7, Landroid/app/Notification;

    invoke-direct {v7}, Landroid/app/Notification;-><init>()V

    .line 2146
    .local v7, notification:Landroid/app/Notification;
    const/4 v13, 0x1

    if-le v12, v13, :cond_3

    .line 2147
    const v13, 0x7f0a00e0

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2148
    .local v2, description:Ljava/lang/String;
    const v13, 0x7f0a00e1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2175
    .local v11, title:Ljava/lang/String;
    :goto_1
    invoke-static {v4}, Lcom/android/mms/transaction/MessagingNotification;->addNotiIntentType(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v4

    .line 2176
    const-string v13, "isFailedNoti"

    const/4 v14, 0x1

    invoke-virtual {v4, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2178
    const/4 v13, 0x0

    const/high16 v14, 0x800

    move-object/from16 v0, p0

    invoke-static {v0, v13, v4, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 2180
    .local v8, pendingIntent:Landroid/app/PendingIntent;
    const v13, 0x7f020323

    iput v13, v7, Landroid/app/Notification;->icon:I

    .line 2181
    iput-object v11, v7, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 2182
    move-object/from16 v0, p0

    invoke-virtual {v7, v0, v11, v2, v8}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 2184
    if-eqz p4, :cond_2

    .line 2185
    const/4 v13, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-static {v0, v10, v7, v13, v1}, Lcom/android/mms/transaction/MessagingNotification;->decideNotificationType(Landroid/content/Context;Landroid/content/SharedPreferences;Landroid/app/Notification;Lcom/android/mms/data/Contact;I)V

    .line 2188
    :cond_2
    if-eqz p1, :cond_9

    .line 2189
    const/16 v13, 0x213

    invoke-virtual {v6, v13, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 2193
    :goto_2
    invoke-static/range {p0 .. p0}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    goto :goto_0

    .line 2150
    .end local v2           #description:Ljava/lang/String;
    .end local v8           #pendingIntent:Landroid/app/PendingIntent;
    .end local v11           #title:Ljava/lang/String;
    :cond_3
    if-eqz p1, :cond_4

    const v13, 0x7f0a00f4

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2152
    .restart local v11       #title:Ljava/lang/String;
    :goto_3
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getfailedcase()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 2154
    const v13, 0x7f0a0524

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2155
    .restart local v2       #description:Ljava/lang/String;
    const/4 v13, 0x0

    invoke-static {v13}, Lcom/android/mms/ui/MessageUtils;->setfailedcase(Z)V

    .line 2160
    :goto_4
    if-eqz p1, :cond_6

    .line 2162
    const-string v13, "failed_download_flag"

    const/4 v14, 0x1

    invoke-virtual {v4, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2172
    :goto_5
    const-string v13, "thread_id"

    move-wide/from16 v0, p2

    invoke-virtual {v4, v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_1

    .line 2150
    .end local v2           #description:Ljava/lang/String;
    .end local v11           #title:Ljava/lang/String;
    :cond_4
    const v13, 0x7f0a00f5

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    .line 2158
    .restart local v11       #title:Ljava/lang/String;
    :cond_5
    const v13, 0x7f0a00f6

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #description:Ljava/lang/String;
    goto :goto_4

    .line 2164
    :cond_6
    if-gtz v12, :cond_7

    .line 2165
    const/16 v13, 0x315

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 2168
    :cond_7
    const/4 v13, 0x0

    aget-wide v13, v5, v13

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-eqz v13, :cond_8

    const/4 v13, 0x0

    aget-wide p2, v5, v13

    .line 2169
    :goto_6
    const-string v13, "undelivered_flag"

    const/4 v14, 0x1

    invoke-virtual {v4, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_5

    .line 2168
    :cond_8
    const-wide/16 p2, 0x0

    goto :goto_6

    .line 2191
    .restart local v8       #pendingIntent:Landroid/app/PendingIntent;
    :cond_9
    const/16 v13, 0x315

    invoke-virtual {v6, v13, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_2

    .line 2137
    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static notifySendFailed(Landroid/content/Context;I)V
    .locals 6
    .parameter "context"
    .parameter "simSlot"

    .prologue
    const/4 v1, 0x0

    .line 2095
    const-wide/16 v2, 0x0

    move-object v0, p0

    move v4, v1

    move v5, p1

    invoke-static/range {v0 .. v5}, Lcom/android/mms/transaction/MessagingNotification;->notifyFailed(Landroid/content/Context;ZJZI)V

    .line 2096
    return-void
.end method

.method public static notifySendFailed(Landroid/content/Context;ZI)V
    .locals 6
    .parameter "context"
    .parameter "noisy"
    .parameter "simSlot"

    .prologue
    .line 2099
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-object v0, p0

    move v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/android/mms/transaction/MessagingNotification;->notifyFailed(Landroid/content/Context;ZJZI)V

    .line 2100
    return-void
.end method

.method private static playCmasTone(Landroid/content/Context;)V
    .locals 10
    .parameter "mContext"

    .prologue
    const/4 v9, 0x7

    const/4 v8, 0x6

    .line 3810
    const/4 v4, 0x0

    .line 3811
    .local v4, ringtoneStr:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v5

    if-eq v5, v8, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v5

    if-ne v5, v9, :cond_7

    .line 3812
    :cond_0
    const-string v4, "android.resource://com.android.mms/raw/cmas_ringtone_ltn"

    .line 3815
    :goto_0
    if-eqz v4, :cond_9

    .line 3817
    :try_start_0
    sget-object v5, Lcom/android/mms/transaction/MessagingNotification;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v5, :cond_3

    .line 3818
    sget-object v5, Lcom/android/mms/transaction/MessagingNotification;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->reset()V

    .line 3819
    sget-object v5, Lcom/android/mms/transaction/MessagingNotification;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->release()V

    .line 3820
    const/4 v5, 0x0

    sput-object v5, Lcom/android/mms/transaction/MessagingNotification;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 3822
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v5

    if-eq v5, v8, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v5

    if-ne v5, v9, :cond_3

    .line 3823
    :cond_1
    sget v5, Lcom/android/mms/transaction/MessagingNotification;->mOldVolume:I

    if-ltz v5, :cond_3

    .line 3824
    const-string v5, "audio"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 3825
    .local v0, audioManager:Landroid/media/AudioManager;
    if-eqz v0, :cond_2

    .line 3826
    const/4 v5, 0x3

    sget v6, Lcom/android/mms/transaction/MessagingNotification;->mOldVolume:I

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v6, v7}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 3827
    :cond_2
    const/4 v5, -0x1

    sput v5, Lcom/android/mms/transaction/MessagingNotification;->mOldVolume:I

    .line 3831
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :cond_3
    new-instance v5, Landroid/media/MediaPlayer;

    invoke-direct {v5}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v5, Lcom/android/mms/transaction/MessagingNotification;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 3832
    sget-object v5, Lcom/android/mms/transaction/MessagingNotification;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v5, :cond_6

    .line 3833
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 3834
    .local v3, mediaURI:Landroid/net/Uri;
    sget-object v5, Lcom/android/mms/transaction/MessagingNotification;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5, p0, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 3835
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v5

    if-eq v5, v8, :cond_4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v5

    if-ne v5, v9, :cond_5

    .line 3836
    :cond_4
    const-string v5, "audio"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 3838
    .restart local v0       #audioManager:Landroid/media/AudioManager;
    if-eqz v0, :cond_5

    .line 3839
    sget-boolean v5, Lcom/android/mms/ui/MessageUtils;->mIsHeadsetPlugged:Z

    if-eqz v5, :cond_8

    const/16 v1, 0x9

    .line 3840
    .local v1, desiredVolume:I
    :goto_1
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    sput v5, Lcom/android/mms/transaction/MessagingNotification;->mOldVolume:I

    .line 3841
    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v1, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 3844
    .end local v0           #audioManager:Landroid/media/AudioManager;
    .end local v1           #desiredVolume:I
    :cond_5
    sget-object v5, Lcom/android/mms/transaction/MessagingNotification;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->prepare()V

    .line 3845
    sget-object v5, Lcom/android/mms/transaction/MessagingNotification;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->start()V

    .line 3848
    const-string v5, "Mms/MessagingNotification"

    const-string v6, "Am now in playing"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3858
    .end local v3           #mediaURI:Landroid/net/Uri;
    :cond_6
    :goto_2
    return-void

    .line 3814
    :cond_7
    const-string v4, "android.resource://com.android.mms/raw/cmas_ringtone"

    goto/16 :goto_0

    .line 3839
    .restart local v0       #audioManager:Landroid/media/AudioManager;
    .restart local v3       #mediaURI:Landroid/net/Uri;
    :cond_8
    const/4 v5, 0x3

    :try_start_1
    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    goto :goto_1

    .line 3851
    .end local v0           #audioManager:Landroid/media/AudioManager;
    .end local v3           #mediaURI:Landroid/net/Uri;
    :catch_0
    move-exception v2

    .line 3852
    .local v2, ex:Ljava/lang/Exception;
    const-string v5, "Mms/MessagingNotification"

    const-string v6, "Exception in tree click"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 3855
    .end local v2           #ex:Ljava/lang/Exception;
    :cond_9
    const-string v5, "Mms/MessagingNotification"

    const-string v6, "Ringtone str not found"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private static playInConversationNotificationSound(Landroid/content/Context;I)V
    .locals 9
    .parameter "context"
    .parameter "simSlot"

    .prologue
    .line 680
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 683
    .local v8, sp:Landroid/content/SharedPreferences;
    const-string v6, "pref_key_ringtone"

    .line 684
    .local v6, preference_ringtone:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 685
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "_sim"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 689
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v8, v6, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 690
    .local v7, ringtoneStr:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 697
    :goto_0
    return-void

    .line 694
    :cond_1
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 695
    .local v2, ringtoneUri:Landroid/net/Uri;
    new-instance v0, Lcom/android/mms/transaction/NotificationPlayer;

    const-string v1, "Mms:app"

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/NotificationPlayer;-><init>(Ljava/lang/String;)V

    .line 696
    .local v0, player:Lcom/android/mms/transaction/NotificationPlayer;
    const/4 v3, 0x0

    const/4 v4, 0x5

    const/high16 v5, 0x3e80

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/transaction/NotificationPlayer;->play(Landroid/content/Context;Landroid/net/Uri;ZIF)V

    goto :goto_0
.end method

.method private static playToneViaHeadset(Landroid/content/Context;I)V
    .locals 8
    .parameter "context"
    .parameter "simSlot"

    .prologue
    const/4 v7, 0x0

    .line 3775
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 3778
    .local v4, sp:Landroid/content/SharedPreferences;
    const-string v2, "pref_key_ringtone"

    .line 3779
    .local v2, preference_ringtone:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 3780
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_sim"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, p1, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3784
    :cond_0
    invoke-interface {v4, v2, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3785
    .local v3, ringtoneStr:Ljava/lang/String;
    const-string v5, "audio"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 3786
    .local v0, audioManager:Landroid/media/AudioManager;
    const-string v5, "Mms/MessagingNotification"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "playToneViaHeadset(), cmasHeadsetUri = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3789
    :try_start_0
    sget-object v5, Lcom/android/mms/transaction/MessagingNotification;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v5, :cond_1

    .line 3790
    sget-object v5, Lcom/android/mms/transaction/MessagingNotification;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->release()V

    .line 3791
    const/4 v5, 0x0

    sput-object v5, Lcom/android/mms/transaction/MessagingNotification;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 3794
    :cond_1
    new-instance v5, Landroid/media/MediaPlayer;

    invoke-direct {v5}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v5, Lcom/android/mms/transaction/MessagingNotification;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 3796
    sget-object v5, Lcom/android/mms/transaction/MessagingNotification;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v5, :cond_2

    .line 3797
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 3798
    sget-object v5, Lcom/android/mms/transaction/MessagingNotification;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, p0, v6}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 3799
    sget-object v5, Lcom/android/mms/transaction/MessagingNotification;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 3801
    sget-object v5, Lcom/android/mms/transaction/MessagingNotification;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->prepare()V

    .line 3802
    sget-object v5, Lcom/android/mms/transaction/MessagingNotification;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3807
    :cond_2
    :goto_0
    return-void

    .line 3804
    :catch_0
    move-exception v1

    .line 3805
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "Mms/MessagingNotification"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "playToneViaHeadset() caught Exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static refreshBadgeCount(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 3768
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->getNewMessageCount(Landroid/content/Context;)I

    move-result v0

    .line 3769
    .local v0, unreadCount:I
    const-string v1, "Mms/MessagingNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshBadgeCount unreadCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3770
    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->setBadge(Landroid/content/Context;I)V

    .line 3772
    return v0
.end method

.method private static removeColon(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "title"

    .prologue
    .line 666
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 667
    .local v1, recipient:Ljava/lang/StringBuilder;
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 669
    .local v0, colonIndex:I
    if-ltz v0, :cond_0

    .line 670
    add-int/lit8 v2, v0, 0x1

    const-string v3, ""

    invoke-virtual {v1, v0, v2, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static setBadge(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "count"

    .prologue
    .line 2586
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2591
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_0
    const-string v2, "com.android.mms"

    const-string v3, "com.android.mms.ui.ConversationComposer"

    invoke-static {v0, v2, v3, p1}, Lcom/sec/android/touchwiz/app/BadgeNotification$Apps;->setBadgeCount(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2592
    const-string v2, "Mms/MessagingNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setBadgeCount(),count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2596
    :goto_0
    return-void

    .line 2593
    :catch_0
    move-exception v1

    .line 2594
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v2, "Mms/MessagingNotification"

    const-string v3, "BadgeProvider wasn\'t installed"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static setCmasAlert(Landroid/content/Context;Landroid/app/Notification;I)V
    .locals 17
    .parameter "context"
    .parameter "notification"
    .parameter "simSlot"

    .prologue
    .line 3619
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 3621
    .local v10, sp:Landroid/content/SharedPreferences;
    const-string v14, "power"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/PowerManager;

    .line 3622
    .local v8, pm:Landroid/os/PowerManager;
    const v14, 0x1000001a

    const-string v15, "New message notification LCD on"

    invoke-virtual {v8, v14, v15}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v13

    .line 3624
    .local v13, wl:Landroid/os/PowerManager$WakeLock;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v14, v15, v0}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 3625
    const-wide/16 v14, 0x2af8

    invoke-virtual {v13, v14, v15}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 3628
    const-string v14, "audio"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    .line 3630
    .local v3, audioManager:Landroid/media/AudioManager;
    const/4 v14, 0x0

    move-object/from16 v0, p1

    iput-object v14, v0, Landroid/app/Notification;->vibrate:[J

    .line 3631
    const/4 v7, 0x0

    .line 3633
    .local v7, cmasVibrate:Z
    const/4 v6, 0x0

    .line 3634
    .local v6, cmasAudio:Z
    const/4 v2, 0x0

    .line 3636
    .local v2, Is_USCC:Z
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v14

    const/4 v15, 0x5

    if-ne v14, v15, :cond_0

    .line 3637
    const/4 v2, 0x1

    .line 3641
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->isTMOCMASFeatureEnabled()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 3642
    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v14

    if-nez v14, :cond_6

    .line 3643
    sget-object v14, Lcom/android/mms/transaction/MessagingNotification;->cmasVibrator:Landroid/os/Vibrator;

    if-nez v14, :cond_5

    .line 3644
    const-string v14, "vibrator"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/Vibrator;

    sput-object v14, Lcom/android/mms/transaction/MessagingNotification;->cmasVibrator:Landroid/os/Vibrator;

    .line 3665
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_9

    .line 3669
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableNotificationVibrate()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 3670
    const-string v14, "pref_key_vibrateWhen_checkbox"

    const/4 v15, 0x0

    invoke-interface {v10, v14, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 3681
    :cond_2
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->isTMOCMASFeatureEnabled()Z

    move-result v14

    if-eqz v14, :cond_b

    .line 3683
    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v14

    if-nez v14, :cond_3

    invoke-static {}, Lcom/android/mms/transaction/CmasAlarmReceiver;->getReminderCount()I

    move-result v14

    const/4 v15, -0x1

    if-le v14, v15, :cond_3

    .line 3685
    sget-object v14, Lcom/android/mms/transaction/MessagingNotification;->cmasVibrator:Landroid/os/Vibrator;

    const/16 v15, 0xc

    new-array v15, v15, [J

    fill-array-data v15, :array_0

    const/16 v16, -0x1

    invoke-virtual/range {v14 .. v16}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 3698
    :cond_3
    :goto_2
    const-string v9, "android.resource://com.android.mms/raw/cmas_ringtone"

    .line 3700
    .local v9, ringtoneStr:Ljava/lang/String;
    sget-boolean v14, Lcom/android/mms/ui/MessageUtils;->mIsHeadsetPlugged:Z

    const/4 v15, 0x1

    if-ne v14, v15, :cond_f

    invoke-virtual {v3}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v14

    if-eqz v14, :cond_f

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v14

    const/4 v15, 0x4

    if-ne v14, v15, :cond_f

    .line 3702
    const/4 v14, 0x0

    move-object/from16 v0, p1

    iput-object v14, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 3703
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->playToneViaHeadset(Landroid/content/Context;I)V

    .line 3728
    :cond_4
    :goto_3
    return-void

    .line 3646
    .end local v9           #ringtoneStr:Ljava/lang/String;
    :cond_5
    sget-object v14, Lcom/android/mms/transaction/MessagingNotification;->cmasVibrator:Landroid/os/Vibrator;

    invoke-virtual {v14}, Landroid/os/Vibrator;->cancel()V

    goto :goto_0

    .line 3649
    :cond_6
    sget-object v14, Lcom/android/mms/transaction/MessagingNotification;->cmasVibrator:Landroid/os/Vibrator;

    if-eqz v14, :cond_1

    .line 3652
    sget-object v14, Lcom/android/mms/transaction/MessagingNotification;->cmasVibrator:Landroid/os/Vibrator;

    invoke-virtual {v14}, Landroid/os/Vibrator;->cancel()V

    .line 3653
    const/4 v14, 0x0

    sput-object v14, Lcom/android/mms/transaction/MessagingNotification;->cmasVibrator:Landroid/os/Vibrator;

    goto :goto_0

    .line 3657
    :cond_7
    sget-object v14, Lcom/android/mms/transaction/MessagingNotification;->cmasVibrator:Landroid/os/Vibrator;

    if-nez v14, :cond_8

    .line 3658
    const-string v14, "vibrator"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/Vibrator;

    sput-object v14, Lcom/android/mms/transaction/MessagingNotification;->cmasVibrator:Landroid/os/Vibrator;

    goto :goto_0

    .line 3660
    :cond_8
    sget-object v14, Lcom/android/mms/transaction/MessagingNotification;->cmasVibrator:Landroid/os/Vibrator;

    invoke-virtual {v14}, Landroid/os/Vibrator;->cancel()V

    goto :goto_0

    .line 3674
    :cond_9
    invoke-static {}, Lcom/android/mms/MmsConfig;->isTMOCMASFeatureEnabled()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 3675
    const/4 v7, 0x0

    goto :goto_1

    .line 3678
    :cond_a
    const-string v14, "pref_key_cmas_vibrateWhen_checkbox"

    const/4 v15, 0x1

    invoke-interface {v10, v14, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    goto :goto_1

    .line 3687
    :cond_b
    if-eqz v2, :cond_c

    if-eqz v7, :cond_c

    .line 3688
    sget-object v14, Lcom/android/mms/transaction/MessagingNotification;->cmasVibrator:Landroid/os/Vibrator;

    const/16 v15, 0xc

    new-array v15, v15, [J

    fill-array-data v15, :array_1

    const/16 v16, -0x1

    invoke-virtual/range {v14 .. v16}, Landroid/os/Vibrator;->vibrate([JI)V

    goto :goto_2

    .line 3689
    :cond_c
    if-eqz v7, :cond_e

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v14

    const/4 v15, 0x6

    if-eq v14, v15, :cond_d

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v14

    const/4 v15, 0x7

    if-ne v14, v15, :cond_e

    .line 3690
    :cond_d
    sget-object v11, Lcom/android/mms/transaction/MessagingNotification;->cmasVibrator:Landroid/os/Vibrator;

    check-cast v11, Landroid/os/SystemVibrator;

    .line 3691
    .local v11, systemVibrator:Landroid/os/SystemVibrator;
    const/16 v14, 0xc

    new-array v14, v14, [J

    fill-array-data v14, :array_2

    const/4 v15, 0x0

    invoke-virtual {v11}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v11, v14, v15, v0}, Landroid/os/SystemVibrator;->vibrate([JII)V

    goto/16 :goto_2

    .line 3693
    .end local v11           #systemVibrator:Landroid/os/SystemVibrator;
    :cond_e
    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v14

    if-eqz v14, :cond_3

    if-eqz v7, :cond_3

    .line 3694
    sget-object v14, Lcom/android/mms/transaction/MessagingNotification;->cmasVibrator:Landroid/os/Vibrator;

    const/16 v15, 0xc

    new-array v15, v15, [J

    fill-array-data v15, :array_3

    const/16 v16, -0x1

    invoke-virtual/range {v14 .. v16}, Landroid/os/Vibrator;->vibrate([JI)V

    goto/16 :goto_2

    .line 3704
    .restart local v9       #ringtoneStr:Ljava/lang/String;
    :cond_f
    if-eqz v2, :cond_11

    .line 3705
    const-string v14, "pref_key_cmas_audioWhen_checkbox"

    const/4 v15, 0x1

    invoke-interface {v10, v14, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 3706
    if-eqz v6, :cond_10

    .line 3707
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/MessagingNotification;->playCmasTone(Landroid/content/Context;)V

    .line 3709
    :cond_10
    const/4 v14, 0x0

    move-object/from16 v0, p1

    iput-object v14, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    goto/16 :goto_3

    .line 3711
    :cond_11
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v14

    const/4 v15, 0x6

    if-eq v14, v15, :cond_12

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v14

    const/4 v15, 0x7

    if-ne v14, v15, :cond_15

    .line 3712
    :cond_12
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/MessagingNotification;->playCmasTone(Landroid/content/Context;)V

    .line 3716
    :goto_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->isTMOCMASFeatureEnabled()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v14

    if-eqz v14, :cond_4

    .line 3718
    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v12

    .line 3719
    .local v12, vibrateSetting:I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "vibrate_in_silent"

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_17

    const/4 v5, 0x1

    .line 3720
    .local v5, bVibrateSilent:Z
    :goto_5
    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v14

    const/4 v15, 0x2

    if-eq v14, v15, :cond_18

    const/4 v4, 0x1

    .line 3721
    .local v4, bNowSilent:Z
    :goto_6
    if-eqz v4, :cond_13

    if-nez v5, :cond_14

    :cond_13
    if-nez v4, :cond_4

    const/4 v14, 0x1

    if-ne v12, v14, :cond_4

    .line 3723
    :cond_14
    const/16 v14, 0xc

    new-array v14, v14, [J

    fill-array-data v14, :array_4

    move-object/from16 v0, p1

    iput-object v14, v0, Landroid/app/Notification;->vibrate:[J

    goto/16 :goto_3

    .line 3714
    .end local v4           #bNowSilent:Z
    .end local v5           #bVibrateSilent:Z
    .end local v12           #vibrateSetting:I
    :cond_15
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_16

    const/4 v14, 0x0

    :goto_7
    move-object/from16 v0, p1

    iput-object v14, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    goto :goto_4

    :cond_16
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    goto :goto_7

    .line 3719
    .restart local v12       #vibrateSetting:I
    :cond_17
    const/4 v5, 0x0

    goto :goto_5

    .line 3720
    .restart local v5       #bVibrateSilent:Z
    :cond_18
    const/4 v4, 0x0

    goto :goto_6

    .line 3685
    nop

    :array_0
    .array-data 0x8
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x7t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x7t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 3688
    :array_1
    .array-data 0x8
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x7t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x7t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 3691
    :array_2
    .array-data 0x8
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x7t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x7t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 3694
    :array_3
    .array-data 0x8
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x7t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x7t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 3723
    :array_4
    .array-data 0x8
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x7t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x7t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static setCurrentlyDisplayedThreadId(J)V
    .locals 2
    .parameter "threadId"

    .prologue
    .line 360
    sget-object v1, Lcom/android/mms/transaction/MessagingNotification;->sCurrentlyDisplayedThreadLock:Ljava/lang/Object;

    monitor-enter v1

    .line 361
    :try_start_0
    sput-wide p0, Lcom/android/mms/transaction/MessagingNotification;->sCurrentlyDisplayedThreadId:J

    .line 362
    monitor-exit v1

    .line 363
    return-void

    .line 362
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static updateAlertNotification(Landroid/content/Context;ZILjava/util/SortedSet;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;I)V
    .locals 51
    .parameter "context"
    .parameter "isNew"
    .parameter "uniqueThreadCount"
    .parameter
    .parameter "mostRecentNotification"
    .parameter "simSlot"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "ZI",
            "Ljava/util/SortedSet",
            "<",
            "Lcom/android/mms/transaction/MessagingNotification$AlertNotificationInfo;",
            ">;",
            "Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 3231
    .local p3, alertNotificationSet:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Lcom/android/mms/transaction/MessagingNotification$AlertNotificationInfo;>;"
    const-string v4, "Mms/MessagingNotification"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "updateAlertNotification(),isNew="

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, ", simSlot="

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-static {v4, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3233
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v42

    .line 3236
    .local v42, sp:Landroid/content/SharedPreferences;
    const-string v39, "pref_key_enable_notifications"

    .line 3237
    .local v39, preference_enabled:Ljava/lang/String;
    if-eqz p5, :cond_0

    .line 3238
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v47, "_sim"

    move-object/from16 v0, v47

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v47, p5, 0x1

    move/from16 v0, v47

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    .line 3242
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v4

    const/16 v47, 0x4

    move/from16 v0, v47

    if-ne v4, v0, :cond_3

    const/4 v4, 0x1

    move-object/from16 v0, v42

    move-object/from16 v1, v39

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_3

    .line 3245
    const-string v40, ""

    .line 3246
    .local v40, presidentialCMAS:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v4

    const/16 v47, 0x4

    move/from16 v0, v47

    if-ne v4, v0, :cond_2

    .line 3247
    const v4, 0x7f0a0294

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v40

    .line 3252
    :goto_0
    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mTitle:Ljava/lang/String;

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 3587
    .end local v40           #presidentialCMAS:Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 3249
    .restart local v40       #presidentialCMAS:Ljava/lang/String;
    :cond_2
    const v4, 0x7f0a02bc

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v40

    goto :goto_0

    .line 3257
    .end local v40           #presidentialCMAS:Ljava/lang/String;
    :cond_3
    invoke-interface/range {p3 .. p3}, Ljava/util/SortedSet;->size()I

    move-result v29

    .line 3260
    .local v29, messageCount:I
    new-instance v4, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p4

    iget-wide v0, v0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mTimeMillis:J

    move-wide/from16 v47, v0

    move-wide/from16 v0, v47

    invoke-virtual {v4, v0, v1}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v33

    .line 3262
    .local v33, noti:Landroid/app/Notification$Builder;
    if-eqz p1, :cond_4

    .line 3263
    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mTicker:Ljava/lang/CharSequence;

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 3277
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v41

    .line 3278
    .local v41, res:Landroid/content/res/Resources;
    const/16 v43, 0x0

    .line 3279
    .local v43, title:Ljava/lang/String;
    const/4 v13, 0x0

    .line 3281
    .local v13, avatar:Landroid/graphics/Bitmap;
    const/4 v4, 0x1

    move/from16 v0, p2

    if-le v0, v4, :cond_d

    .line 3282
    new-instance v27, Landroid/content/Intent;

    invoke-direct/range {v27 .. v27}, Landroid/content/Intent;-><init>()V

    .line 3283
    .local v27, mainActivityIntent:Landroid/content/Intent;
    const-string v4, "android.intent.action.MAIN"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3284
    invoke-static/range {v27 .. v27}, Lcom/android/mms/transaction/MessagingNotification;->addNotiIntentType(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v27

    .line 3285
    const-string v4, "com.android.mms"

    const-string v47, "com.android.mms.ui.ConversationComposer"

    move-object/from16 v0, v27

    move-object/from16 v1, v47

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3287
    const v4, 0x7f0a00df

    const/16 v47, 0x1

    move/from16 v0, v47

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v49

    aput-object v49, v47, v48

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v4, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v43

    .line 3316
    :goto_2
    const/16 v34, 0x0

    .line 3318
    .local v34, notiIconId:I
    const-string v4, "Mms/MessagingNotification"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "Temp : mostRecentNotification.mSender.getNumber() = "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSender:Lcom/android/mms/data/Contact;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v48

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-static {v4, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3320
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v4

    const/16 v47, 0x4

    move/from16 v0, v47

    if-ne v4, v0, :cond_10

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSender:Lcom/android/mms/data/Contact;

    invoke-virtual {v4}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v4

    const-string v47, "President"

    move-object/from16 v0, v47

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/MessagingNotification;->getNewCMASPresidentialCount(Landroid/content/Context;)I

    move-result v4

    if-lez v4, :cond_10

    if-nez p1, :cond_10

    .line 3322
    :cond_5
    const v34, 0x7f020031

    .line 3330
    :goto_3
    invoke-virtual/range {v33 .. v34}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 3332
    const-string v4, "notification"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/app/NotificationManager;

    .line 3334
    .local v31, nm:Landroid/app/NotificationManager;
    new-instance v10, Ljava/lang/StringBuffer;

    sget-object v4, Lcom/android/mms/transaction/MessagingNotification;->mDate:Ljava/lang/String;

    invoke-direct {v10, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 3335
    .local v10, CMASDescription:Ljava/lang/StringBuffer;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v4

    const/16 v47, 0x6

    move/from16 v0, v47

    if-eq v4, v0, :cond_6

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v4

    const/16 v47, 0x7

    move/from16 v0, v47

    if-eq v4, v0, :cond_6

    .line 3336
    const-string v4, "     -CMAS"

    invoke-virtual {v10, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3339
    :cond_6
    new-instance v11, Ljava/lang/StringBuffer;

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mTitle:Ljava/lang/String;

    invoke-direct {v11, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 3340
    .local v11, CMASTitle:Ljava/lang/StringBuffer;
    const-string v4, " ("

    invoke-virtual {v11, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3341
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3342
    const-string v4, ")"

    invoke-virtual {v11, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3344
    const/4 v4, 0x0

    const/high16 v47, 0x800

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v47

    invoke-static {v0, v4, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v38

    .line 3347
    .local v38, pendingIntent:Landroid/app/PendingIntent;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasNotiDateDescription()Z

    move-result v4

    const/16 v47, 0x1

    move/from16 v0, v47

    if-ne v4, v0, :cond_13

    .line 3348
    move-object/from16 v0, v33

    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    const-string v47, "android.message"

    move-object/from16 v0, v47

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->addKind(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v4

    const/16 v47, 0x0

    move/from16 v0, v47

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 3362
    :goto_4
    const-string v4, "pref_key_emergency_alert_reminder"

    const-string v47, "0"

    move-object/from16 v0, v42

    move-object/from16 v1, v47

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 3363
    .local v46, value:Ljava/lang/String;
    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 3365
    .local v12, alertCount:I
    sget-boolean v4, Lcom/android/mms/transaction/MessagingNotification;->mIsCmasReminder:Z

    if-eqz v4, :cond_7

    .line 3366
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/MessagingNotification;->cancelCMASAlarm(Landroid/content/Context;)V

    .line 3369
    :cond_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->isTMOCMASFeatureEnabled()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 3370
    const-string v4, "Mms/MessagingNotification"

    const-string v47, "START TMO Reminder"

    move-object/from16 v0, v47

    invoke-static {v4, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3371
    invoke-static {}, Lcom/android/mms/transaction/CmasAlarmReceiver;->getReminderCount()I

    move-result v4

    const/16 v47, 0x2

    move/from16 v0, v47

    if-lt v4, v0, :cond_14

    .line 3372
    const-string v4, "Mms/MessagingNotification"

    const-string v47, "START TMO Reminder"

    move-object/from16 v0, v47

    invoke-static {v4, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3419
    :cond_8
    :goto_5
    const/16 v16, 0x0

    .line 3420
    .local v16, defaults:I
    or-int/lit8 v16, v16, 0x4

    .line 3421
    move-object/from16 v0, v33

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 3424
    const/4 v4, 0x0

    invoke-static {}, Lcom/android/mms/transaction/MessagingNotification;->getDeleteIntent()Landroid/content/Intent;

    move-result-object v47

    const/16 v48, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move/from16 v2, v48

    invoke-static {v0, v4, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 3428
    const/4 v4, 0x1

    move/from16 v0, v29

    if-ne v0, v4, :cond_19

    .line 3432
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->formatBigMessage(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 3434
    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mAttachmentBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_18

    .line 3437
    new-instance v4, Landroid/app/Notification$BigPictureStyle;

    move-object/from16 v0, v33

    invoke-direct {v4, v0}, Landroid/app/Notification$BigPictureStyle;-><init>(Landroid/app/Notification$Builder;)V

    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mAttachmentBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    invoke-virtual {v4, v0}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v4

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->formatPictureMessage(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-virtual {v4, v0}, Landroid/app/Notification$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification$BigPictureStyle;->build()Landroid/app/Notification;

    move-result-object v35

    .line 3520
    .local v35, notification:Landroid/app/Notification;
    :goto_6
    if-eqz p1, :cond_22

    .line 3521
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move/from16 v2, p5

    invoke-static {v0, v1, v2}, Lcom/android/mms/transaction/MessagingNotification;->setCmasAlert(Landroid/content/Context;Landroid/app/Notification;I)V

    .line 3524
    move-object/from16 v0, v35

    iget-object v4, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-eqz v4, :cond_9

    .line 3525
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 3526
    const-string v4, "GATE"

    const-string v47, "<GATE-M>SMS_AUDIBLE_ALERT_IND</GATE-M>"

    move-object/from16 v0, v47

    invoke-static {v4, v0}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3529
    :cond_9
    const-string v4, "Mms/MessagingNotification"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "New message, updateNotification() sound path = "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    move-object/from16 v48, v0

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-static {v4, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3539
    :goto_7
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v4

    const/16 v47, 0x4

    move/from16 v0, v47

    if-ne v4, v0, :cond_a

    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/MessagingNotification;->getNewCMASPresidentialCount(Landroid/content/Context;)I

    move-result v4

    if-lez v4, :cond_a

    .line 3541
    const/4 v4, 0x1

    move-object/from16 v0, v35

    iput v4, v0, Landroid/app/Notification;->commonValue:I

    .line 3545
    :cond_a
    invoke-static {}, Lcom/android/mms/MmsConfig;->isTMOCMASFeatureEnabled()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 3546
    invoke-static {}, Lcom/android/mms/transaction/CmasAlarmReceiver;->getReminderCount()I

    move-result v4

    const/16 v47, 0x2

    move/from16 v0, v47

    if-lt v4, v0, :cond_23

    .line 3547
    const/4 v4, -0x1

    invoke-static {v4}, Lcom/android/mms/transaction/CmasAlarmReceiver;->setReminderCount(I)V

    .line 3554
    :cond_b
    :goto_8
    move/from16 v0, v29

    move-object/from16 v1, v35

    iput v0, v1, Landroid/app/Notification;->missedCount:I

    .line 3556
    const/16 v4, 0x41c

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    invoke-virtual {v0, v4, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 3558
    sput-object v35, Lcom/android/mms/transaction/MessagingNotification;->mNotification:Landroid/app/Notification;

    .line 3560
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v4

    const/16 v47, 0x4

    move/from16 v0, v47

    if-ne v4, v0, :cond_1

    .line 3562
    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSender:Lcom/android/mms/data/Contact;

    invoke-virtual {v4}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v4

    const-string v47, "President"

    move-object/from16 v0, v47

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/MessagingNotification;->getNewCMASPresidentialCount(Landroid/content/Context;)I

    move-result v4

    if-lez v4, :cond_1

    .line 3563
    sget-object v4, Lcom/android/mms/transaction/MessagingNotification;->mRunnable:Ljava/lang/Runnable;

    if-eqz v4, :cond_c

    .line 3564
    sget-object v4, Lcom/android/mms/transaction/MessagingNotification;->mToastHandler:Landroid/os/Handler;

    sget-object v47, Lcom/android/mms/transaction/MessagingNotification;->mRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, v47

    invoke-virtual {v4, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3565
    const/4 v4, 0x0

    sput-object v4, Lcom/android/mms/transaction/MessagingNotification;->mRunnable:Ljava/lang/Runnable;

    .line 3567
    :cond_c
    sget-object v4, Lcom/android/mms/transaction/MessagingNotification;->mToastHandler:Landroid/os/Handler;

    new-instance v47, Lcom/android/mms/transaction/MessagingNotification$4;

    invoke-direct/range {v47 .. v47}, Lcom/android/mms/transaction/MessagingNotification$4;-><init>()V

    sput-object v47, Lcom/android/mms/transaction/MessagingNotification;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v48, 0x4268

    move-object/from16 v0, v47

    move-wide/from16 v1, v48

    invoke-virtual {v4, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 3289
    .end local v10           #CMASDescription:Ljava/lang/StringBuffer;
    .end local v11           #CMASTitle:Ljava/lang/StringBuffer;
    .end local v12           #alertCount:I
    .end local v16           #defaults:I
    .end local v27           #mainActivityIntent:Landroid/content/Intent;
    .end local v31           #nm:Landroid/app/NotificationManager;
    .end local v34           #notiIconId:I
    .end local v35           #notification:Landroid/app/Notification;
    .end local v38           #pendingIntent:Landroid/app/PendingIntent;
    .end local v46           #value:Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mTitle:Ljava/lang/String;

    move-object/from16 v43, v0

    .line 3291
    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSender:Lcom/android/mms/data/Contact;

    const/16 v47, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v4, v0, v1}, Lcom/android/mms/data/Contact;->getAvatar(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    check-cast v15, Landroid/graphics/drawable/BitmapDrawable;

    .line 3293
    .local v15, contactDrawable:Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v15, :cond_f

    .line 3296
    invoke-virtual {v15}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v13

    .line 3297
    if-eqz v13, :cond_f

    .line 3298
    const v4, 0x1050006

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    .line 3299
    .local v18, idealIconHeight:I
    const v4, 0x1050005

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v19

    .line 3301
    .local v19, idealIconWidth:I
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move/from16 v0, v18

    if-ge v4, v0, :cond_e

    .line 3303
    const/4 v4, 0x1

    move/from16 v0, v19

    move/from16 v1, v18

    invoke-static {v13, v0, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 3306
    :cond_e
    if-eqz v13, :cond_f

    .line 3307
    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 3311
    .end local v18           #idealIconHeight:I
    .end local v19           #idealIconWidth:I
    :cond_f
    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mClickIntent:Landroid/content/Intent;

    move-object/from16 v27, v0

    .restart local v27       #mainActivityIntent:Landroid/content/Intent;
    goto/16 :goto_2

    .line 3323
    .end local v15           #contactDrawable:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v34       #notiIconId:I
    :cond_10
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v4

    const/16 v47, 0x4

    move/from16 v0, v47

    if-ne v4, v0, :cond_11

    .line 3324
    const v34, 0x7f020321

    goto/16 :goto_3

    .line 3325
    :cond_11
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v4

    const/16 v47, 0x3

    move/from16 v0, v47

    if-ne v4, v0, :cond_12

    .line 3326
    const v34, 0x7f02031f

    goto/16 :goto_3

    .line 3328
    :cond_12
    const v34, 0x7f02031e

    goto/16 :goto_3

    .line 3354
    .restart local v10       #CMASDescription:Ljava/lang/StringBuffer;
    .restart local v11       #CMASTitle:Ljava/lang/StringBuffer;
    .restart local v31       #nm:Landroid/app/NotificationManager;
    .restart local v38       #pendingIntent:Landroid/app/PendingIntent;
    :cond_13
    move-object/from16 v0, v33

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    const-string v47, "android.message"

    move-object/from16 v0, v47

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->addKind(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v4

    const/16 v47, 0x0

    move/from16 v0, v47

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    goto/16 :goto_4

    .line 3375
    .restart local v12       #alertCount:I
    .restart local v46       #value:Ljava/lang/String;
    :cond_14
    const-string v4, "Mms/MessagingNotification"

    const-string v47, "START TMO Reminder"

    move-object/from16 v0, v47

    invoke-static {v4, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3376
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/mms/transaction/MessagingNotification;->mIsCmasReminder:Z

    .line 3377
    invoke-static {}, Lcom/android/mms/transaction/CmasAlarmReceiver;->getReminderCount()I

    move-result v26

    .line 3378
    .local v26, mTMOreminderCount:I
    add-int/lit8 v4, v26, 0x1

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v24, v4, 0x1

    .line 3379
    .local v24, interval:I
    const-string v4, "alarm"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    .line 3380
    .local v3, am:Landroid/app/AlarmManager;
    new-instance v23, Landroid/content/Intent;

    const-class v4, Lcom/android/mms/transaction/CmasAlarmReceiver;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3381
    .local v23, intent:Landroid/content/Intent;
    const-string v4, "TMOCMAS"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3382
    const/4 v4, 0x0

    const/high16 v47, 0x4000

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v47

    invoke-static {v0, v4, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 3383
    .local v9, sender:Landroid/app/PendingIntent;
    const-string v4, "Mms/MessagingNotification"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "next interval = "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-static {v4, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3384
    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v47

    mul-int/lit8 v49, v24, 0x3c

    move/from16 v0, v49

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v49, v0

    move/from16 v0, v49

    int-to-long v0, v0

    move-wide/from16 v49, v0

    add-long v47, v47, v49

    move-wide/from16 v0, v47

    invoke-virtual {v3, v4, v0, v1, v9}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_5

    .line 3387
    .end local v3           #am:Landroid/app/AlarmManager;
    .end local v9           #sender:Landroid/app/PendingIntent;
    .end local v23           #intent:Landroid/content/Intent;
    .end local v24           #interval:I
    .end local v26           #mTMOreminderCount:I
    :cond_15
    if-eqz v12, :cond_8

    .line 3389
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/mms/transaction/MessagingNotification;->mIsCmasReminder:Z

    .line 3391
    const-string v4, "MessagingNotification"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "mIsOnce = "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    sget-boolean v48, Lcom/android/mms/transaction/MessagingNotification;->mIsOnceCMAS:Z

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-static {v4, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3392
    const/4 v4, 0x1

    if-ne v12, v4, :cond_17

    .line 3393
    sget-boolean v4, Lcom/android/mms/transaction/MessagingNotification;->mIsOnceCMAS:Z

    if-nez v4, :cond_16

    .line 3395
    const-string v4, "MessagingNotification"

    const-string v47, "this is not mIsOnceCMAS"

    move-object/from16 v0, v47

    invoke-static {v4, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3397
    const-string v4, "alarm"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    .line 3398
    .restart local v3       #am:Landroid/app/AlarmManager;
    new-instance v23, Landroid/content/Intent;

    const-class v4, Lcom/android/mms/transaction/CmasAlarmReceiver;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3399
    .restart local v23       #intent:Landroid/content/Intent;
    const-string v4, "ONCECMAS"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3400
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/mms/transaction/MessagingNotification;->mIsOnceCMAS:Z

    .line 3401
    const/4 v4, 0x0

    const/high16 v47, 0x4000

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v47

    invoke-static {v0, v4, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 3402
    .restart local v9       #sender:Landroid/app/PendingIntent;
    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v47

    const-wide/32 v49, 0x1d4c0

    add-long v47, v47, v49

    move-wide/from16 v0, v47

    invoke-virtual {v3, v4, v0, v1, v9}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 3415
    .end local v3           #am:Landroid/app/AlarmManager;
    .end local v9           #sender:Landroid/app/PendingIntent;
    .end local v23           #intent:Landroid/content/Intent;
    :cond_16
    :goto_9
    const-string v4, "MessagingNotification"

    const-string v47, "Suman Test of notification.bRepeat"

    move-object/from16 v0, v47

    invoke-static {v4, v0}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 3406
    :cond_17
    const-string v4, "MessagingNotification"

    const-string v47, "every 2 sec"

    move-object/from16 v0, v47

    invoke-static {v4, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3407
    const-string v4, "alarm"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    .line 3408
    .restart local v3       #am:Landroid/app/AlarmManager;
    new-instance v23, Landroid/content/Intent;

    const-class v4, Lcom/android/mms/transaction/CmasAlarmReceiver;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3409
    .restart local v23       #intent:Landroid/content/Intent;
    const/4 v4, 0x0

    const/high16 v47, 0x800

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v47

    invoke-static {v0, v4, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 3410
    .restart local v9       #sender:Landroid/app/PendingIntent;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v47

    mul-int/lit8 v4, v12, 0x3c

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v0, v4

    move-wide/from16 v49, v0

    add-long v5, v47, v49

    .line 3411
    .local v5, startTime:J
    mul-int/lit8 v4, v12, 0x3c

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v7, v4

    .line 3412
    .local v7, cycleTime:J
    const-string v4, "MessagingNotification"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "startTime = "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-static {v4, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3413
    const/4 v4, 0x0

    invoke-virtual/range {v3 .. v9}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_9

    .line 3444
    .end local v3           #am:Landroid/app/AlarmManager;
    .end local v5           #startTime:J
    .end local v7           #cycleTime:J
    .end local v9           #sender:Landroid/app/PendingIntent;
    .end local v23           #intent:Landroid/content/Intent;
    .restart local v16       #defaults:I
    :cond_18
    new-instance v4, Landroid/app/Notification$BigTextStyle;

    move-object/from16 v0, v33

    invoke-direct {v4, v0}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->formatBigMessage(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-virtual {v4, v0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v35

    .restart local v35       #notification:Landroid/app/Notification;
    goto/16 :goto_6

    .line 3450
    .end local v35           #notification:Landroid/app/Notification;
    :cond_19
    const/4 v4, 0x1

    move/from16 v0, p2

    if-ne v0, v4, :cond_1e

    .line 3454
    new-instance v14, Landroid/text/SpannableStringBuilder;

    invoke-direct {v14}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 3455
    .local v14, buf:Landroid/text/SpannableStringBuilder;
    move/from16 v0, v29

    new-array v4, v0, [Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Ljava/util/SortedSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    .line 3456
    .local v22, infos:[Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v25, v0

    .line 3457
    .local v25, len:I
    add-int/lit8 v17, v25, -0x1

    .local v17, i:I
    :goto_a
    if-ltz v17, :cond_1b

    .line 3458
    aget-object v21, v22, v17

    .line 3460
    .local v21, info:Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->formatBigMessage(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v14, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3462
    if-eqz v17, :cond_1a

    .line 3463
    const/16 v4, 0xa

    invoke-virtual {v14, v4}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 3457
    :cond_1a
    add-int/lit8 v17, v17, -0x1

    goto :goto_a

    .line 3467
    .end local v21           #info:Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    :cond_1b
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCmasNotiDateDescription()Z

    move-result v4

    const/16 v47, 0x1

    move/from16 v0, v47

    if-ne v4, v0, :cond_1c

    .line 3468
    move-object/from16 v0, v33

    invoke-virtual {v0, v10}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 3474
    :goto_b
    new-instance v4, Landroid/app/Notification$BigTextStyle;

    move-object/from16 v0, v33

    invoke-direct {v4, v0}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v4, v14}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v47

    if-nez v13, :cond_1d

    const/4 v4, 0x0

    :goto_c
    move-object/from16 v0, v47

    invoke-virtual {v0, v4}, Landroid/app/Notification$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v35

    .line 3480
    .restart local v35       #notification:Landroid/app/Notification;
    goto/16 :goto_6

    .line 3470
    .end local v35           #notification:Landroid/app/Notification;
    :cond_1c
    const v4, 0x7f0a04d6

    const/16 v47, 0x1

    move/from16 v0, v47

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v49

    aput-object v49, v47, v48

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v4, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_b

    .line 3474
    :cond_1d
    const-string v4, " "

    goto :goto_c

    .line 3482
    .end local v14           #buf:Landroid/text/SpannableStringBuilder;
    .end local v17           #i:I
    .end local v22           #infos:[Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    .end local v25           #len:I
    :cond_1e
    new-instance v45, Ljava/util/HashSet;

    move-object/from16 v0, v45

    move/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 3483
    .local v45, uniqueThreads:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 3484
    .local v30, mostRecentNotifPerThread:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;>;"
    invoke-interface/range {p3 .. p3}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v37

    .line 3486
    .local v37, notifications:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/mms/transaction/MessagingNotification$AlertNotificationInfo;>;"
    :cond_1f
    :goto_d
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20

    .line 3487
    invoke-interface/range {v37 .. v37}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    .line 3488
    .local v36, notificationInfo:Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    move-object/from16 v0, v36

    iget-wide v0, v0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mThreadId:J

    move-wide/from16 v47, v0

    invoke-static/range {v47 .. v48}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 3489
    move-object/from16 v0, v36

    iget-wide v0, v0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mThreadId:J

    move-wide/from16 v47, v0

    invoke-static/range {v47 .. v48}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3490
    move-object/from16 v0, v30

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 3495
    .end local v36           #notificationInfo:Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    :cond_20
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->formatSenders(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/lang/CharSequence;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 3496
    new-instance v20, Landroid/app/Notification$InboxStyle;

    move-object/from16 v0, v20

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/app/Notification$InboxStyle;-><init>(Landroid/app/Notification$Builder;)V

    .line 3508
    .local v20, inboxStyle:Landroid/app/Notification$InboxStyle;
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v44

    .line 3509
    .local v44, uniqueThreadMessageCount:I
    const/16 v4, 0x8

    move/from16 v0, v44

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v28

    .line 3511
    .local v28, maxMessages:I
    const/16 v17, 0x0

    .restart local v17       #i:I
    :goto_e
    move/from16 v0, v17

    move/from16 v1, v28

    if-ge v0, v1, :cond_21

    .line 3512
    move-object/from16 v0, v30

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    .line 3513
    .restart local v21       #info:Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->formatInboxMessage(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/app/Notification$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    .line 3511
    add-int/lit8 v17, v17, 0x1

    goto :goto_e

    .line 3515
    .end local v21           #info:Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    :cond_21
    invoke-virtual/range {v20 .. v20}, Landroid/app/Notification$InboxStyle;->build()Landroid/app/Notification;

    move-result-object v35

    .line 3516
    .restart local v35       #notification:Landroid/app/Notification;
    const-string v4, "Mms/MessagingNotification"

    const-string v47, "updateNotification: multi messages, showing inboxStyle notification"

    move-object/from16 v0, v47

    invoke-static {v4, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 3532
    .end local v17           #i:I
    .end local v20           #inboxStyle:Landroid/app/Notification$InboxStyle;
    .end local v28           #maxMessages:I
    .end local v30           #mostRecentNotifPerThread:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;>;"
    .end local v37           #notifications:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/mms/transaction/MessagingNotification$AlertNotificationInfo;>;"
    .end local v44           #uniqueThreadMessageCount:I
    .end local v45           #uniqueThreads:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_22
    const-string v4, "notification"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/app/NotificationManager;

    .line 3534
    .local v32, nm1:Landroid/app/NotificationManager;
    const/16 v4, 0x41c

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 3536
    const-string v4, "Mms/MessagingNotification"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "updateNotification() sound path = "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v35

    iget-object v0, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    move-object/from16 v48, v0

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-static {v4, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 3549
    .end local v32           #nm1:Landroid/app/NotificationManager;
    :cond_23
    invoke-static {}, Lcom/android/mms/transaction/CmasAlarmReceiver;->getReminderCount()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Lcom/android/mms/transaction/CmasAlarmReceiver;->setReminderCount(I)V

    goto/16 :goto_8
.end method

.method private static updateAllHistoryAsRead(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    .line 2917
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLogs()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2938
    :goto_0
    return-void

    .line 2920
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2922
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v2, "logtype=? OR logtype=?"

    .line 2923
    .local v2, selection:Ljava/lang/String;
    const/4 v5, 0x2

    new-array v3, v5, [Ljava/lang/String;

    const-string v5, "200"

    aput-object v5, v3, v7

    const/4 v5, 0x1

    const-string v6, "300"

    aput-object v6, v3, v5

    .line 2927
    .local v3, selectionArg:[Ljava/lang/String;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 2928
    .local v4, value:Landroid/content/ContentValues;
    const-string v5, "new"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2931
    :try_start_0
    sget-object v5, Lcom/android/mms/transaction/MessagingNotification;->LOG_HISTORY_URI:Landroid/net/Uri;

    invoke-virtual {v1, v5, v4, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2937
    :goto_1
    const-string v5, "Mms/MessagingNotification"

    const-string v6, "updateAllHistoryAsRead()"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2932
    :catch_0
    move-exception v0

    .line 2933
    .local v0, e:Landroid/database/sqlite/SQLiteDiskIOException;
    const-string v5, "Mms/MessagingNotification"

    const-string v6, "updateAllHistoryAsRead() caught SQLiteDiskIOException, e"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2934
    .end local v0           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_1
    move-exception v0

    .line 2935
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    const-string v5, "Mms/MessagingNotification"

    const-string v6, "updateAllHistoryAsRead() Catch a SQLiteException: "

    invoke-static {v5, v6, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static updateAlwaysHistoryForMms(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 18
    .parameter "context"
    .parameter "newUri"

    .prologue
    .line 2645
    invoke-static/range {p0 .. p0}, Lcom/android/mms/MmsConfig;->isContextProviderForAlways(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2646
    const/4 v1, 0x0

    .line 2713
    :cond_0
    :goto_0
    return v1

    .line 2648
    :cond_1
    const/4 v13, 0x0

    .line 2650
    .local v13, isSpam:Z
    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "msg_box"

    aput-object v3, v4, v1

    .line 2654
    .local v4, MMS_PROJECTION:[Ljava/lang/String;
    if-nez p1, :cond_2

    .line 2655
    const/4 v1, 0x0

    goto :goto_0

    .line 2658
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2659
    .local v2, resolver:Landroid/content/ContentResolver;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    invoke-static/range {v1 .. v7}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 2660
    .local v11, cursor:Landroid/database/Cursor;
    if-nez v11, :cond_3

    .line 2661
    const/4 v1, 0x0

    goto :goto_0

    .line 2665
    :cond_3
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_4

    .line 2666
    const/4 v1, 0x0

    .line 2710
    if-eqz v11, :cond_0

    .line 2711
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2669
    :cond_4
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v15, v1

    .line 2675
    .local v15, type:J
    const-wide/16 v5, 0x1

    cmp-long v1, v15, v5

    if-nez v1, :cond_5

    .line 2676
    invoke-static/range {p0 .. p1}, Lcom/android/mms/util/AddressUtils;->getFromMulti(Landroid/content/Context;Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v9

    .line 2685
    .local v9, addresses:[Ljava/lang/String;
    :goto_1
    move-object v10, v9

    .local v10, arr$:[Ljava/lang/String;
    array-length v14, v10

    .local v14, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    :goto_2
    if-ge v12, v14, :cond_b

    aget-object v8, v10, v12

    .line 2686
    .local v8, address:Ljava/lang/String;
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 2688
    .local v17, value:Landroid/content/ContentValues;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2689
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v8, v1}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->isSpam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    .line 2691
    const-string v1, "Mms/MessagingNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateHistoryForMms(),isSpam="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " address ="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2693
    if-eqz v13, :cond_7

    .line 2694
    const/4 v1, 0x0

    .line 2710
    if-eqz v11, :cond_0

    .line 2711
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2677
    .end local v8           #address:Ljava/lang/String;
    .end local v9           #addresses:[Ljava/lang/String;
    .end local v10           #arr$:[Ljava/lang/String;
    .end local v12           #i$:I
    .end local v14           #len$:I
    .end local v17           #value:Landroid/content/ContentValues;
    :cond_5
    const-wide/16 v5, 0x2

    cmp-long v1, v15, v5

    if-nez v1, :cond_6

    .line 2678
    :try_start_2
    invoke-static/range {p0 .. p1}, Lcom/android/mms/util/AddressUtils;->getToMulti(Landroid/content/Context;Landroid/net/Uri;)[Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v9

    .restart local v9       #addresses:[Ljava/lang/String;
    goto :goto_1

    .line 2680
    .end local v9           #addresses:[Ljava/lang/String;
    :cond_6
    const/4 v1, 0x0

    .line 2710
    if-eqz v11, :cond_0

    .line 2711
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2697
    .restart local v8       #address:Ljava/lang/String;
    .restart local v9       #addresses:[Ljava/lang/String;
    .restart local v10       #arr$:[Ljava/lang/String;
    .restart local v12       #i$:I
    .restart local v14       #len$:I
    .restart local v17       #value:Landroid/content/ContentValues;
    :cond_7
    :try_start_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2698
    const-string v1, "contact_address"

    const-string v3, "-1"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2702
    :goto_3
    const-string v3, "type"

    const-wide/16 v5, 0x1

    cmp-long v1, v15, v5

    if-nez v1, :cond_a

    const/4 v1, 0x1

    :goto_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2704
    const-string v1, "app_id"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2706
    sget-object v1, Lcom/android/mms/transaction/MessagingNotification;->LOG_HISTORY_ALWAYS_URI:Landroid/net/Uri;

    move-object/from16 v0, v17

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2707
    const-string v1, "Mms/MessagingNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateAlwaysHistoryForMms(),len="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2685
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 2700
    :cond_8
    const-string v1, "contact_address"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 2710
    .end local v8           #address:Ljava/lang/String;
    .end local v9           #addresses:[Ljava/lang/String;
    .end local v10           #arr$:[Ljava/lang/String;
    .end local v12           #i$:I
    .end local v14           #len$:I
    .end local v15           #type:J
    .end local v17           #value:Landroid/content/ContentValues;
    :catchall_0
    move-exception v1

    if-eqz v11, :cond_9

    .line 2711
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v1

    .line 2702
    .restart local v8       #address:Ljava/lang/String;
    .restart local v9       #addresses:[Ljava/lang/String;
    .restart local v10       #arr$:[Ljava/lang/String;
    .restart local v12       #i$:I
    .restart local v14       #len$:I
    .restart local v15       #type:J
    .restart local v17       #value:Landroid/content/ContentValues;
    :cond_a
    const/4 v1, 0x0

    goto :goto_4

    .line 2710
    .end local v8           #address:Ljava/lang/String;
    .end local v17           #value:Landroid/content/ContentValues;
    :cond_b
    if-eqz v11, :cond_c

    .line 2711
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 2713
    :cond_c
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public static updateAlwaysHistoryForSms(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 14
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v4, 0x0

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 2600
    invoke-static {p0}, Lcom/android/mms/MmsConfig;->isContextProviderForAlways(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v12

    .line 2640
    :goto_0
    return v0

    .line 2603
    :cond_0
    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "address"

    aput-object v0, v3, v12

    const-string v0, "type"

    aput-object v0, v3, v13

    .line 2608
    .local v3, SMS_PROJECTION:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .local v1, resolver:Landroid/content/ContentResolver;
    move-object v0, p0

    move-object v2, p1

    move-object v5, v4

    move-object v6, v4

    .line 2609
    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2610
    .local v8, cursor:Landroid/database/Cursor;
    if-nez v8, :cond_1

    move v0, v12

    .line 2611
    goto :goto_0

    .line 2615
    :cond_1
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 2637
    if-eqz v8, :cond_2

    .line 2638
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v12

    goto :goto_0

    .line 2619
    :cond_3
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2620
    .local v7, address:Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v9, v0

    .line 2623
    .local v9, type:J
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 2625
    .local v11, value:Landroid/content/ContentValues;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2626
    const-string v0, "contact_address"

    const-string v2, "-1"

    invoke-virtual {v11, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2630
    :goto_1
    const-string v0, "type"

    const-wide/16 v4, 0x1

    cmp-long v2, v9, v4

    if-nez v2, :cond_4

    move v12, v13

    :cond_4
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2632
    const-string v0, "app_id"

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2634
    sget-object v0, Lcom/android/mms/transaction/MessagingNotification;->LOG_HISTORY_ALWAYS_URI:Landroid/net/Uri;

    invoke-virtual {v1, v0, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2635
    const-string v0, "Mms/MessagingNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateAlwaysHistoryForSms(),len="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2637
    if-eqz v8, :cond_5

    .line 2638
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_5
    move v0, v13

    .line 2640
    goto/16 :goto_0

    .line 2628
    :cond_6
    :try_start_2
    const-string v0, "contact_address"

    invoke-virtual {v11, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 2637
    .end local v7           #address:Ljava/lang/String;
    .end local v9           #type:J
    .end local v11           #value:Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_7

    .line 2638
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0
.end method

.method public static updateCMASRepeatNotifications(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 1262
    const-wide/16 v0, -0x1

    invoke-static {p0, v0, v1, v2, v2}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewAlertIndicator(Landroid/content/Context;JZI)V

    .line 1263
    invoke-static {p0}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    .line 1264
    return-void
.end method

.method public static updateClass0SoundnVibrate(Landroid/content/Context;I)V
    .locals 7
    .parameter "context"
    .parameter "simSlot"

    .prologue
    .line 2325
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 2326
    .local v1, notification:Landroid/app/Notification;
    const-string v4, "notification"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 2327
    .local v0, nm:Landroid/app/NotificationManager;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 2330
    .local v3, sp:Landroid/content/SharedPreferences;
    const-string v4, "Mms/MessagingNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateClass0SoundnVibrate - simSlot = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2331
    const-string v2, "pref_key_enable_notifications"

    .line 2332
    .local v2, preference_enabled:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 2333
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_sim"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2337
    :cond_0
    const/4 v4, 0x1

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2343
    :goto_0
    return-void

    .line 2341
    :cond_1
    const/4 v4, 0x0

    invoke-static {p0, v3, v1, v4, p1}, Lcom/android/mms/transaction/MessagingNotification;->decideNotificationType(Landroid/content/Context;Landroid/content/SharedPreferences;Landroid/app/Notification;Lcom/android/mms/data/Contact;I)V

    .line 2342
    const/16 v4, 0x3e7

    invoke-virtual {v0, v4, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method private static updateDeliveryNotification(Landroid/content/Context;ZLjava/lang/CharSequence;JI)V
    .locals 5
    .parameter "context"
    .parameter "isStatusMessage"
    .parameter "message"
    .parameter "timeMillis"
    .parameter "simSlot"

    .prologue
    .line 1379
    if-nez p1, :cond_1

    .line 1401
    :cond_0
    :goto_0
    return-void

    .line 1382
    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1385
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "Mms/MessagingNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDeliveryNotification - simSlot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1386
    const-string v0, "pref_key_enable_notifications"

    .line 1387
    .local v0, preference_enabled:Ljava/lang/String;
    if-eqz p5, :cond_2

    .line 1388
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_sim"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p5, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1392
    :cond_2
    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1396
    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->mToastHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/mms/transaction/MessagingNotification$3;

    invoke-direct {v3, p0, p2, p3, p4}, Lcom/android/mms/transaction/MessagingNotification$3;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;J)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static updateDownloadFailedNotification(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 2479
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->getDownloadFailedMessageCount(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 2480
    const-string v0, "Mms/MessagingNotification"

    const-string v1, "updateDownloadFailedNotification()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2481
    const/16 v0, 0x213

    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 2482
    invoke-static {p0}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    .line 2484
    :cond_0
    return-void
.end method

.method public static updateHistoryForMms(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)Z
    .locals 32
    .parameter "context"
    .parameter "newUri"
    .parameter "oldUri"

    .prologue
    .line 2807
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLogs()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2808
    const/4 v2, 0x0

    .line 2913
    :cond_0
    :goto_0
    return v2

    .line 2810
    :cond_1
    const/4 v14, 0x0

    .line 2812
    .local v14, isSpam:Z
    const/4 v2, 0x7

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "_id"

    aput-object v4, v5, v2

    const/4 v2, 0x1

    const-string v4, "date"

    aput-object v4, v5, v2

    const/4 v2, 0x2

    const-string v4, "msg_box"

    aput-object v4, v5, v2

    const/4 v2, 0x3

    const-string v4, "sub"

    aput-object v4, v5, v2

    const/4 v2, 0x4

    const-string v4, "sub_cs"

    aput-object v4, v5, v2

    const/4 v2, 0x5

    const-string v4, "read"

    aput-object v4, v5, v2

    const/4 v2, 0x6

    const-string v4, "sim_slot"

    aput-object v4, v5, v2

    .line 2822
    .local v5, MMS_PROJECTION:[Ljava/lang/String;
    if-nez p1, :cond_2

    .line 2823
    const/4 v2, 0x0

    goto :goto_0

    .line 2826
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2827
    .local v3, resolver:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 2828
    .local v12, cursor:Landroid/database/Cursor;
    if-nez v12, :cond_3

    .line 2829
    const/4 v2, 0x0

    goto :goto_0

    .line 2833
    :cond_3
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_4

    .line 2834
    const/4 v2, 0x0

    .line 2910
    if-eqz v12, :cond_0

    .line 2911
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2836
    :cond_4
    const-wide/16 v18, 0x0

    .line 2837
    .local v18, oldMsgId:J
    const/4 v2, 0x0

    :try_start_1
    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 2838
    .local v16, msgId:J
    const/4 v2, 0x1

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-wide/16 v30, 0x3e8

    mul-long v25, v6, v30

    .line 2839
    .local v25, timeMillis:J
    const/4 v2, 0x3

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v2, v4}, Lcom/android/mms/transaction/MessagingNotification;->getMmsSubject(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v24

    .line 2840
    .local v24, subject:Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v0, v2

    move-wide/from16 v27, v0

    .line 2841
    .local v27, type:J
    const/4 v2, 0x5

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 2844
    .local v20, read:I
    const/16 v23, 0x0

    .line 2845
    .local v23, sim:I
    const/4 v2, 0x6

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 2846
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isOneSIMcardsInsertedInSlot2()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2847
    const/16 v23, 0x1

    .line 2848
    :cond_5
    const-string v2, "Mms/MessagingNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateHistoryForMms sim :"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2855
    const-wide/16 v6, 0x1

    cmp-long v2, v27, v6

    if-nez v2, :cond_7

    .line 2856
    invoke-static/range {p0 .. p1}, Lcom/android/mms/util/AddressUtils;->getFromMulti(Landroid/content/Context;Landroid/net/Uri;)[Ljava/lang/String;

    move-result-object v10

    .line 2865
    .local v10, addresses:[Ljava/lang/String;
    :goto_1
    if-eqz p2, :cond_6

    .line 2866
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    .line 2869
    :cond_6
    const-string v21, "logtype=? AND ( messageid=? OR messageid=?)"

    .line 2870
    .local v21, selection:Ljava/lang/String;
    const/4 v2, 0x3

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/4 v2, 0x0

    const-string v4, "200"

    aput-object v4, v22, v2

    const/4 v2, 0x1

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v22, v2

    const/4 v2, 0x2

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v22, v2

    .line 2874
    .local v22, selectionArg:[Ljava/lang/String;
    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->LOG_HISTORY_URI:Landroid/net/Uri;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v3, v2, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2878
    move-object v11, v10

    .local v11, arr$:[Ljava/lang/String;
    array-length v15, v11

    .local v15, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    :goto_2
    if-ge v13, v15, :cond_f

    aget-object v9, v11, v13

    .line 2879
    .local v9, address:Ljava/lang/String;
    new-instance v29, Landroid/content/ContentValues;

    invoke-direct/range {v29 .. v29}, Landroid/content/ContentValues;-><init>()V

    .line 2881
    .local v29, value:Landroid/content/ContentValues;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2882
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v9, v2}, Lcom/android/mms/spam/SpamFilter$SpamFilterCache;->isSpam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    .line 2884
    const-string v2, "Mms/MessagingNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateHistoryForMms(),isSpam="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " address ="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2886
    if-eqz v14, :cond_9

    .line 2887
    const/4 v2, 0x0

    .line 2910
    if-eqz v12, :cond_0

    .line 2911
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2857
    .end local v9           #address:Ljava/lang/String;
    .end local v10           #addresses:[Ljava/lang/String;
    .end local v11           #arr$:[Ljava/lang/String;
    .end local v13           #i$:I
    .end local v15           #len$:I
    .end local v21           #selection:Ljava/lang/String;
    .end local v22           #selectionArg:[Ljava/lang/String;
    .end local v29           #value:Landroid/content/ContentValues;
    :cond_7
    const-wide/16 v6, 0x2

    cmp-long v2, v27, v6

    if-nez v2, :cond_8

    .line 2858
    :try_start_2
    invoke-static/range {p0 .. p1}, Lcom/android/mms/util/AddressUtils;->getToMulti(Landroid/content/Context;Landroid/net/Uri;)[Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v10

    .restart local v10       #addresses:[Ljava/lang/String;
    goto :goto_1

    .line 2860
    .end local v10           #addresses:[Ljava/lang/String;
    :cond_8
    const/4 v2, 0x0

    .line 2910
    if-eqz v12, :cond_0

    .line 2911
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2890
    .restart local v9       #address:Ljava/lang/String;
    .restart local v10       #addresses:[Ljava/lang/String;
    .restart local v11       #arr$:[Ljava/lang/String;
    .restart local v13       #i$:I
    .restart local v15       #len$:I
    .restart local v21       #selection:Ljava/lang/String;
    .restart local v22       #selectionArg:[Ljava/lang/String;
    .restart local v29       #value:Landroid/content/ContentValues;
    :cond_9
    :try_start_3
    const-string v2, "date"

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2891
    const-string v4, "type"

    const-wide/16 v6, 0x1

    cmp-long v2, v27, v6

    if-nez v2, :cond_b

    const/4 v2, 0x1

    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2892
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 2893
    const-string v2, "number"

    const-string v4, "-1"

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2897
    :goto_4
    const-string v2, "messageid"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2898
    const-string v2, "m_subject"

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2899
    const-string v4, "new"

    if-nez v20, :cond_e

    const/4 v2, 0x1

    :goto_5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2900
    const-string v2, "sim_id"

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2902
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2903
    const-string v2, "Mms/MessagingNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateHistoryForMms value :"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2906
    :cond_a
    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->LOG_MMS_URI:Landroid/net/Uri;

    move-object/from16 v0, v29

    invoke-virtual {v3, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2907
    const-string v2, "Mms/MessagingNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateHistoryForMms(),len="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2878
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 2891
    :cond_b
    const/4 v2, 0x2

    goto/16 :goto_3

    .line 2895
    :cond_c
    const-string v2, "number"

    move-object/from16 v0, v29

    invoke-virtual {v0, v2, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 2910
    .end local v9           #address:Ljava/lang/String;
    .end local v10           #addresses:[Ljava/lang/String;
    .end local v11           #arr$:[Ljava/lang/String;
    .end local v13           #i$:I
    .end local v15           #len$:I
    .end local v16           #msgId:J
    .end local v18           #oldMsgId:J
    .end local v20           #read:I
    .end local v21           #selection:Ljava/lang/String;
    .end local v22           #selectionArg:[Ljava/lang/String;
    .end local v23           #sim:I
    .end local v24           #subject:Ljava/lang/String;
    .end local v25           #timeMillis:J
    .end local v27           #type:J
    .end local v29           #value:Landroid/content/ContentValues;
    :catchall_0
    move-exception v2

    if-eqz v12, :cond_d

    .line 2911
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_d
    throw v2

    .line 2899
    .restart local v9       #address:Ljava/lang/String;
    .restart local v10       #addresses:[Ljava/lang/String;
    .restart local v11       #arr$:[Ljava/lang/String;
    .restart local v13       #i$:I
    .restart local v15       #len$:I
    .restart local v16       #msgId:J
    .restart local v18       #oldMsgId:J
    .restart local v20       #read:I
    .restart local v21       #selection:Ljava/lang/String;
    .restart local v22       #selectionArg:[Ljava/lang/String;
    .restart local v23       #sim:I
    .restart local v24       #subject:Ljava/lang/String;
    .restart local v25       #timeMillis:J
    .restart local v27       #type:J
    .restart local v29       #value:Landroid/content/ContentValues;
    :cond_e
    const/4 v2, 0x0

    goto :goto_5

    .line 2910
    .end local v9           #address:Ljava/lang/String;
    .end local v29           #value:Landroid/content/ContentValues;
    :cond_f
    if-eqz v12, :cond_10

    .line 2911
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 2913
    :cond_10
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method public static updateHistoryForSms(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 23
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 2719
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLogs()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2720
    const/4 v2, 0x0

    .line 2802
    :cond_0
    :goto_0
    return v2

    .line 2722
    :cond_1
    const/4 v2, 0x7

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "_id"

    aput-object v4, v5, v2

    const/4 v2, 0x1

    const-string v4, "date"

    aput-object v4, v5, v2

    const/4 v2, 0x2

    const-string v4, "address"

    aput-object v4, v5, v2

    const/4 v2, 0x3

    const-string v4, "body"

    aput-object v4, v5, v2

    const/4 v2, 0x4

    const-string v4, "type"

    aput-object v4, v5, v2

    const/4 v2, 0x5

    const-string v4, "read"

    aput-object v4, v5, v2

    const/4 v2, 0x6

    const-string v4, "sim_slot"

    aput-object v4, v5, v2

    .line 2732
    .local v5, SMS_PROJECTION:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2733
    .local v3, resolver:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 2734
    .local v11, cursor:Landroid/database/Cursor;
    if-nez v11, :cond_2

    .line 2735
    const/4 v2, 0x0

    goto :goto_0

    .line 2739
    :cond_2
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_3

    .line 2740
    const/4 v2, 0x0

    .line 2799
    if-eqz v11, :cond_0

    .line 2800
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2743
    :cond_3
    const/4 v2, 0x0

    :try_start_1
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 2744
    .local v12, msgId:J
    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 2745
    .local v18, timeMillis:J
    const/4 v2, 0x2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2746
    .local v9, address:Ljava/lang/String;
    const/4 v2, 0x3

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2747
    .local v10, body:Ljava/lang/String;
    const/4 v2, 0x4

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v0, v2

    move-wide/from16 v20, v0

    .line 2748
    .local v20, type:J
    const/4 v2, 0x5

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 2750
    .local v14, read:I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v2

    const/4 v4, 0x6

    if-eq v2, v4, :cond_4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getCMASProvider()I

    move-result v2

    const/4 v4, 0x7

    if-ne v2, v4, :cond_5

    :cond_4
    if-eqz v9, :cond_5

    const-string v2, "#CMAS#"

    invoke-virtual {v9, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2752
    const-string v9, "Mensaje de Alerta"

    .line 2756
    :cond_5
    const/16 v17, 0x0

    .line 2757
    .local v17, sim:I
    const/4 v2, 0x6

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 2758
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isOneSIMcardsInsertedInSlot2()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2759
    const/16 v17, 0x1

    .line 2760
    :cond_6
    const-string v2, "Mms/MessagingNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateHistoryForSms sim :"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2763
    if-eqz v10, :cond_7

    .line 2764
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v4, 0x32

    if-le v2, v4, :cond_7

    .line 2765
    const/4 v2, 0x0

    const/16 v4, 0x32

    invoke-virtual {v10, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 2768
    :cond_7
    const-string v15, "logtype=? AND messageid=?"

    .line 2769
    .local v15, selection:Ljava/lang/String;
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v2, 0x0

    const-string v4, "300"

    aput-object v4, v16, v2

    const/4 v2, 0x1

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v16, v2

    .line 2773
    .local v16, selectionArg:[Ljava/lang/String;
    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->LOG_HISTORY_URI:Landroid/net/Uri;

    move-object/from16 v0, v16

    invoke-virtual {v3, v2, v15, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2775
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 2777
    .local v22, value:Landroid/content/ContentValues;
    const-string v2, "date"

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2778
    const-string v4, "type"

    const-wide/16 v6, 0x1

    cmp-long v2, v20, v6

    if-nez v2, :cond_b

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2779
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 2780
    const-string v2, "number"

    const-string v4, "-1"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2784
    :goto_2
    const-string v2, "messageid"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2785
    const-string v2, "m_content"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2786
    const-string v4, "new"

    if-nez v14, :cond_e

    const/4 v2, 0x1

    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2787
    const-string v2, "sim_id"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2789
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2790
    const-string v2, "Mms/MessagingNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateHistoryForSms value :"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2793
    :cond_8
    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->LOG_SMS_URI:Landroid/net/Uri;

    move-object/from16 v0, v22

    invoke-virtual {v3, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2795
    if-eqz v9, :cond_9

    .line 2796
    const-string v2, "Mms/MessagingNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateHistoryForSms(),len="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2799
    :cond_9
    if-eqz v11, :cond_a

    .line 2800
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 2802
    :cond_a
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2778
    :cond_b
    const/4 v2, 0x2

    goto/16 :goto_1

    .line 2782
    :cond_c
    :try_start_2
    const-string v2, "number"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    .line 2799
    .end local v9           #address:Ljava/lang/String;
    .end local v10           #body:Ljava/lang/String;
    .end local v12           #msgId:J
    .end local v14           #read:I
    .end local v15           #selection:Ljava/lang/String;
    .end local v16           #selectionArg:[Ljava/lang/String;
    .end local v17           #sim:I
    .end local v18           #timeMillis:J
    .end local v20           #type:J
    .end local v22           #value:Landroid/content/ContentValues;
    :catchall_0
    move-exception v2

    if-eqz v11, :cond_d

    .line 2800
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_d
    throw v2

    .line 2786
    .restart local v9       #address:Ljava/lang/String;
    .restart local v10       #body:Ljava/lang/String;
    .restart local v12       #msgId:J
    .restart local v14       #read:I
    .restart local v15       #selection:Ljava/lang/String;
    .restart local v16       #selectionArg:[Ljava/lang/String;
    .restart local v17       #sim:I
    .restart local v18       #timeMillis:J
    .restart local v20       #type:J
    .restart local v22       #value:Landroid/content/ContentValues;
    :cond_e
    const/4 v2, 0x0

    goto :goto_3
.end method

.method private static updateHistoryReadFlag(Landroid/content/Context;JLjava/lang/String;Z)V
    .locals 8
    .parameter "context"
    .parameter "msgId"
    .parameter "logType"
    .parameter "bRead"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2942
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLogs()Z

    move-result v7

    if-nez v7, :cond_0

    .line 2965
    :goto_0
    return-void

    .line 2945
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2947
    .local v1, resolver:Landroid/content/ContentResolver;
    const-string v2, "logtype=? AND messageid=?"

    .line 2948
    .local v2, selection:Ljava/lang/String;
    const/4 v7, 0x2

    new-array v3, v7, [Ljava/lang/String;

    aput-object p3, v3, v5

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    .line 2952
    .local v3, selectionArg:[Ljava/lang/String;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 2953
    .local v4, value:Landroid/content/ContentValues;
    const-string v7, "new"

    if-eqz p4, :cond_1

    :goto_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2955
    :try_start_0
    sget-object v5, Lcom/android/mms/transaction/MessagingNotification;->LOG_HISTORY_URI:Landroid/net/Uri;

    invoke-virtual {v1, v5, v4, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2964
    :goto_2
    const-string v5, "Mms/MessagingNotification"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateHistoryReadFlag(),messageid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move v5, v6

    .line 2953
    goto :goto_1

    .line 2956
    :catch_0
    move-exception v0

    .line 2957
    .local v0, e:Landroid/database/sqlite/SQLiteDiskIOException;
    const-string v5, "Mms/MessagingNotification"

    const-string v6, "updateHistoryReadFlag() caught SQLiteDiskIOException, e"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2958
    .end local v0           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_1
    move-exception v0

    .line 2959
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    const-string v5, "Mms/MessagingNotification"

    const-string v6, "updateHistoryReadFlag() Catch a SQLiteException: "

    invoke-static {v5, v6, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 2961
    .end local v0           #e:Landroid/database/sqlite/SQLiteException;
    :catch_2
    move-exception v0

    .line 2962
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v5, "Mms/MessagingNotification"

    const-string v6, "updateHistoryReadFlag() Catch a IllegalStateException: "

    invoke-static {v5, v6, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private static updateNotification(Landroid/content/Context;ZILjava/util/SortedSet;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;)V
    .locals 6
    .parameter "context"
    .parameter "isNew"
    .parameter "uniqueThreadCount"
    .parameter
    .parameter "mostRecentNotification"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "ZI",
            "Ljava/util/SortedSet",
            "<",
            "Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;",
            ">;",
            "Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1436
    .local p3, notificationSet:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/mms/transaction/MessagingNotification;->updateNotification(Landroid/content/Context;ZILjava/util/SortedSet;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;I)V

    .line 1437
    return-void
.end method

.method private static updateNotification(Landroid/content/Context;ZILjava/util/SortedSet;Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;I)V
    .locals 53
    .parameter "context"
    .parameter "isNew"
    .parameter "uniqueThreadCount"
    .parameter
    .parameter "mostRecentNotification"
    .parameter "simSlot"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "ZI",
            "Ljava/util/SortedSet",
            "<",
            "Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;",
            ">;",
            "Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 1445
    .local p3, notificationSet:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;>;"
    const-string v5, "Mms/MessagingNotification"

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "updateNotification(),isNew="

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, ", simSlot = "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, v49

    invoke-static {v5, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1447
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v44

    .line 1450
    .local v44, sp:Landroid/content/SharedPreferences;
    const-string v40, "pref_key_enable_notifications"

    .line 1451
    .local v40, preference_enabled:Ljava/lang/String;
    if-eqz p5, :cond_0

    .line 1452
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v40

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v49, "_sim"

    move-object/from16 v0, v49

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v49, p5, 0x1

    move/from16 v0, v49

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    .line 1456
    :cond_0
    const/4 v5, 0x1

    move-object/from16 v0, v44

    move-object/from16 v1, v40

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez p4, :cond_2

    .line 1457
    :cond_1
    const-string v5, "Mms/MessagingNotification"

    const-string v49, "updateNotification: notifications turned off in prefs or mostRecentNotification is null, bailing"

    move-object/from16 v0, v49

    invoke-static {v5, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1782
    :goto_0
    return-void

    .line 1460
    :cond_2
    const/16 v5, 0x7b

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 1463
    const-string v41, "pref_key_enable_preview_message"

    .line 1464
    .local v41, preference_preview:Ljava/lang/String;
    if-eqz p5, :cond_3

    .line 1465
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v41

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v49, "_sim"

    move-object/from16 v0, v49

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v49, p5, 0x1

    move/from16 v0, v49

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    .line 1470
    :cond_3
    const/4 v5, 0x0

    move-object/from16 v0, v44

    move-object/from16 v1, v41

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v27

    .line 1473
    .local v27, isPreviewEnabled:Z
    invoke-interface/range {p3 .. p3}, Ljava/util/SortedSet;->size()I

    move-result v31

    .line 1478
    .local v31, messageCount:I
    new-instance v5, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p4

    iget-wide v0, v0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mTimeMillis:J

    move-wide/from16 v49, v0

    move-wide/from16 v0, v49

    invoke-virtual {v5, v0, v1}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v35

    .line 1482
    .local v35, noti:Landroid/app/Notification$Builder;
    const v5, 0x7f0a008e

    const/16 v49, 0x1

    move/from16 v0, v49

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v49, v0

    const/16 v50, 0x0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v51

    aput-object v51, v49, v50

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 1484
    .local v16, description:Ljava/lang/String;
    if-eqz p1, :cond_4

    .line 1485
    if-nez v27, :cond_b

    .line 1486
    move-object/from16 v0, v35

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1504
    :cond_4
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v43

    .line 1505
    .local v43, res:Landroid/content/res/Resources;
    const/16 v45, 0x0

    .line 1506
    .local v45, title:Ljava/lang/String;
    const/4 v12, 0x0

    .line 1508
    .local v12, avatar:Landroid/graphics/Bitmap;
    const/4 v5, 0x1

    move/from16 v0, p2

    if-le v0, v5, :cond_d

    .line 1509
    new-instance v29, Landroid/content/Intent;

    invoke-direct/range {v29 .. v29}, Landroid/content/Intent;-><init>()V

    .line 1510
    .local v29, mainActivityIntent:Landroid/content/Intent;
    const-string v5, "android.intent.action.MAIN"

    move-object/from16 v0, v29

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1511
    invoke-static/range {v29 .. v29}, Lcom/android/mms/transaction/MessagingNotification;->addNotiIntentType(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v29

    .line 1512
    const-string v5, "com.android.mms"

    const-string v49, "com.android.mms.ui.ConversationComposer"

    move-object/from16 v0, v29

    move-object/from16 v1, v49

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1516
    if-nez v27, :cond_c

    .line 1517
    const/high16 v5, 0x7f0a

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v45

    .line 1555
    :goto_2
    move-object/from16 v0, p4

    iget v5, v0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mPriority:I

    const/16 v49, 0x82

    move/from16 v0, v49

    if-eq v5, v0, :cond_11

    .line 1556
    const v5, 0x7f020324

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1560
    :goto_3
    const-string v5, "notification"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/app/NotificationManager;

    .line 1563
    .local v33, nm:Landroid/app/NotificationManager;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1564
    sget-object v5, Lcom/android/mms/transaction/MessagingNotification;->lastMsgType:Ljava/lang/String;

    const-string v49, "wappush"

    move-object/from16 v0, v49

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1565
    const/4 v5, 0x4

    move-object/from16 v0, v29

    invoke-static {v0, v5}, Lcom/android/mms/transaction/MessagingNotification;->SetFolderBox(Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object v29

    .line 1570
    :cond_5
    const-string v5, "null"

    sput-object v5, Lcom/android/mms/transaction/MessagingNotification;->lastMsgType:Ljava/lang/String;

    .line 1574
    :cond_6
    const/4 v5, 0x0

    const/high16 v49, 0x800

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v49

    invoke-static {v0, v5, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v39

    .line 1577
    .local v39, pendingIntent:Landroid/app/PendingIntent;
    move-object/from16 v0, v35

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    move-object/from16 v0, v39

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    const-string v49, "android.message"

    move-object/from16 v0, v49

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->addKind(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v5

    const/16 v49, 0x0

    move/from16 v0, v49

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 1585
    const-string v42, "pref_key_msg_reminder_alert"

    .line 1586
    .local v42, preference_reminder:Ljava/lang/String;
    if-eqz p5, :cond_7

    .line 1587
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v49, "_sim"

    move-object/from16 v0, v49

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v49, p5, 0x1

    move/from16 v0, v49

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    .line 1591
    :cond_7
    const-string v5, "0"

    move-object/from16 v0, v44

    move-object/from16 v1, v42

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    .line 1592
    .local v48, value:Ljava/lang/String;
    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 1594
    .local v11, alertCount:I
    const/4 v5, 0x1

    if-le v11, v5, :cond_8

    .line 1595
    const-string v5, "MessagingNotification"

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "every"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v49

    const-string v50, "sec"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, v49

    invoke-static {v5, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1596
    const-string v5, "alarm"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AlarmManager;

    .line 1597
    .local v4, am:Landroid/app/AlarmManager;
    new-instance v24, Landroid/content/Intent;

    const-class v5, Lcom/android/mms/transaction/AlarmReceiver;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1598
    .local v24, intent:Landroid/content/Intent;
    const-string v5, "simSlot"

    move-object/from16 v0, v24

    move/from16 v1, p5

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1599
    const/high16 v5, 0x800

    move-object/from16 v0, p0

    move/from16 v1, p5

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 1600
    .local v10, sender:Landroid/app/PendingIntent;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v49

    mul-int/lit8 v5, v11, 0x3c

    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v0, v5

    move-wide/from16 v51, v0

    add-long v6, v49, v51

    .line 1601
    .local v6, startTime:J
    mul-int/lit8 v5, v11, 0x3c

    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v8, v5

    .line 1602
    .local v8, cycleTime:J
    const-string v5, "MessagingNotification"

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "startTime = "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v49

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, v49

    invoke-static {v5, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1603
    const/4 v5, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 1604
    const-string v5, "MessagingNotification"

    const-string v49, "Suman Test of notification.bRepeat"

    move-object/from16 v0, v49

    invoke-static {v5, v0}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1608
    .end local v4           #am:Landroid/app/AlarmManager;
    .end local v6           #startTime:J
    .end local v8           #cycleTime:J
    .end local v10           #sender:Landroid/app/PendingIntent;
    .end local v24           #intent:Landroid/content/Intent;
    :cond_8
    const/4 v15, 0x0

    .line 1609
    .local v15, defaults:I
    or-int/lit8 v15, v15, 0x4

    .line 1610
    move-object/from16 v0, v35

    invoke-virtual {v0, v15}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 1613
    const/4 v5, 0x0

    invoke-static {}, Lcom/android/mms/transaction/MessagingNotification;->getDeleteIntent()Landroid/content/Intent;

    move-result-object v49

    const/16 v50, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-static {v0, v5, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1617
    const/4 v5, 0x1

    move/from16 v0, v31

    if-ne v0, v5, :cond_15

    .line 1623
    if-nez v27, :cond_13

    .line 1624
    const v5, 0x7f0a0277

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1626
    move-object/from16 v0, p4

    iget-object v5, v0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mAttachmentBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_12

    .line 1627
    new-instance v5, Landroid/app/Notification$BigTextStyle;

    move-object/from16 v0, v35

    invoke-direct {v5, v0}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    const v49, 0x7f0a0277

    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, v49

    invoke-virtual {v5, v0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v36

    .line 1741
    .local v36, notification:Landroid/app/Notification;
    :goto_4
    if-eqz p1, :cond_1f

    .line 1742
    move-object/from16 v0, p4

    iget-object v5, v0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSender:Lcom/android/mms/data/Contact;

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    move-object/from16 v2, v36

    move/from16 v3, p5

    invoke-static {v0, v1, v2, v5, v3}, Lcom/android/mms/transaction/MessagingNotification;->decideNotificationType(Landroid/content/Context;Landroid/content/SharedPreferences;Landroid/app/Notification;Lcom/android/mms/data/Contact;I)V

    .line 1745
    move-object/from16 v0, v36

    iget-object v5, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-eqz v5, :cond_9

    .line 1746
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1747
    const-string v5, "GATE"

    const-string v49, "<GATE-M>SMS_AUDIBLE_ALERT_IND</GATE-M>"

    move-object/from16 v0, v49

    invoke-static {v5, v0}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1750
    :cond_9
    const-string v5, "Mms/MessagingNotification"

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "New message, updateNotification() sound path = "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    move-object/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, v49

    invoke-static {v5, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1760
    :goto_5
    move/from16 v0, v31

    move-object/from16 v1, v36

    iput v0, v1, Landroid/app/Notification;->missedCount:I

    .line 1763
    if-eqz p1, :cond_20

    .line 1764
    move-object/from16 v0, p4

    iget-wide v0, v0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mThreadId:J

    move-wide/from16 v49, v0

    move-wide/from16 v0, v49

    long-to-int v5, v0

    int-to-long v0, v5

    move-wide/from16 v49, v0

    move-wide/from16 v0, v49

    move-object/from16 v2, v36

    iput-wide v0, v2, Landroid/app/Notification;->threadId:J

    .line 1765
    move-object/from16 v0, p4

    iget-object v5, v0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSender:Lcom/android/mms/data/Contact;

    invoke-virtual {v5}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v36

    iput-object v5, v0, Landroid/app/Notification;->contactCharSeq:Ljava/lang/CharSequence;

    .line 1772
    :goto_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportFlashNotification()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1773
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v49, "flash_notification"

    const/16 v50, 0x0

    move-object/from16 v0, v49

    move/from16 v1, v50

    invoke-static {v5, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const/16 v49, 0x1

    move/from16 v0, v49

    if-ne v5, v0, :cond_21

    const/16 v25, 0x1

    .line 1774
    .local v25, isEnableFlashNoti:Z
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v49, "torch_light"

    const/16 v50, 0x1

    move-object/from16 v0, v49

    move/from16 v1, v50

    invoke-static {v5, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const/16 v49, 0x1

    move/from16 v0, v49

    if-ne v5, v0, :cond_22

    const/16 v26, 0x1

    .line 1775
    .local v26, isEnableTorch:Z
    :goto_8
    if-eqz v25, :cond_a

    if-nez v26, :cond_a

    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/MessagingNotification;->isBlockingModeEnabled(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 1776
    new-instance v5, Lcom/android/mms/transaction/MessagingNotification$FlashNotification;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/mms/transaction/MessagingNotification$FlashNotification;-><init>(Landroid/content/Context;)V

    sput-object v5, Lcom/android/mms/transaction/MessagingNotification;->mFlashNotification:Lcom/android/mms/transaction/MessagingNotification$FlashNotification;

    .line 1777
    sget-object v5, Lcom/android/mms/transaction/MessagingNotification;->mFlashNotification:Lcom/android/mms/transaction/MessagingNotification$FlashNotification;

    const/16 v49, 0x1

    move/from16 v0, v49

    invoke-virtual {v5, v0}, Lcom/android/mms/transaction/MessagingNotification$FlashNotification;->setDaemon(Z)V

    .line 1778
    sget-object v5, Lcom/android/mms/transaction/MessagingNotification;->mFlashNotification:Lcom/android/mms/transaction/MessagingNotification$FlashNotification;

    invoke-virtual {v5}, Lcom/android/mms/transaction/MessagingNotification$FlashNotification;->start()V

    .line 1781
    .end local v25           #isEnableFlashNoti:Z
    .end local v26           #isEnableTorch:Z
    :cond_a
    const/16 v5, 0x7b

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v5, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 1488
    .end local v11           #alertCount:I
    .end local v12           #avatar:Landroid/graphics/Bitmap;
    .end local v15           #defaults:I
    .end local v29           #mainActivityIntent:Landroid/content/Intent;
    .end local v33           #nm:Landroid/app/NotificationManager;
    .end local v36           #notification:Landroid/app/Notification;
    .end local v39           #pendingIntent:Landroid/app/PendingIntent;
    .end local v42           #preference_reminder:Ljava/lang/String;
    .end local v43           #res:Landroid/content/res/Resources;
    .end local v45           #title:Ljava/lang/String;
    .end local v48           #value:Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p4

    iget-object v5, v0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mTicker:Ljava/lang/CharSequence;

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto/16 :goto_1

    .line 1519
    .restart local v12       #avatar:Landroid/graphics/Bitmap;
    .restart local v29       #mainActivityIntent:Landroid/content/Intent;
    .restart local v43       #res:Landroid/content/res/Resources;
    .restart local v45       #title:Ljava/lang/String;
    :cond_c
    const v5, 0x7f0a00df

    const/16 v49, 0x1

    move/from16 v0, v49

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v49, v0

    const/16 v50, 0x0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v51

    aput-object v51, v49, v50

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v45

    goto/16 :goto_2

    .line 1523
    .end local v29           #mainActivityIntent:Landroid/content/Intent;
    :cond_d
    if-nez v27, :cond_10

    .line 1524
    const/high16 v5, 0x7f0a

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v45

    .line 1529
    :goto_9
    move-object/from16 v0, p4

    iget v5, v0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mPriority:I

    const/16 v49, 0x82

    move/from16 v0, v49

    if-eq v5, v0, :cond_f

    .line 1530
    move-object/from16 v0, p4

    iget-object v5, v0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSender:Lcom/android/mms/data/Contact;

    const/16 v49, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v5, v0, v1}, Lcom/android/mms/data/Contact;->getAvatar(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    check-cast v14, Landroid/graphics/drawable/BitmapDrawable;

    .line 1531
    .local v14, contactDrawable:Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v14, :cond_f

    if-eqz v27, :cond_f

    .line 1534
    invoke-virtual {v14}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v12

    .line 1535
    if-eqz v12, :cond_f

    .line 1536
    const v5, 0x1050006

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v19

    .line 1538
    .local v19, idealIconHeight:I
    const v5, 0x1050006

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    .line 1540
    .local v20, idealIconWidth:I
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    move/from16 v0, v19

    if-ge v5, v0, :cond_e

    .line 1542
    const/4 v5, 0x1

    move/from16 v0, v20

    move/from16 v1, v19

    invoke-static {v12, v0, v1, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 1544
    :cond_e
    if-eqz v12, :cond_f

    .line 1545
    move-object/from16 v0, v35

    invoke-virtual {v0, v12}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 1550
    .end local v14           #contactDrawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v19           #idealIconHeight:I
    .end local v20           #idealIconWidth:I
    :cond_f
    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mClickIntent:Landroid/content/Intent;

    move-object/from16 v29, v0

    .restart local v29       #mainActivityIntent:Landroid/content/Intent;
    goto/16 :goto_2

    .line 1526
    .end local v29           #mainActivityIntent:Landroid/content/Intent;
    :cond_10
    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mTitle:Ljava/lang/String;

    move-object/from16 v45, v0

    goto :goto_9

    .line 1558
    .restart local v29       #mainActivityIntent:Landroid/content/Intent;
    :cond_11
    const v5, 0x7f020327

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    goto/16 :goto_3

    .line 1632
    .restart local v11       #alertCount:I
    .restart local v15       #defaults:I
    .restart local v33       #nm:Landroid/app/NotificationManager;
    .restart local v39       #pendingIntent:Landroid/app/PendingIntent;
    .restart local v42       #preference_reminder:Ljava/lang/String;
    .restart local v48       #value:Ljava/lang/String;
    :cond_12
    new-instance v5, Landroid/app/Notification$BigTextStyle;

    move-object/from16 v0, v35

    invoke-direct {v5, v0}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    const v49, 0x7f0a0277

    move-object/from16 v0, p0

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, v49

    invoke-virtual {v5, v0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v36

    .restart local v36       #notification:Landroid/app/Notification;
    goto/16 :goto_4

    .line 1637
    .end local v36           #notification:Landroid/app/Notification;
    :cond_13
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->formatBigMessage(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1639
    move-object/from16 v0, p4

    iget-object v5, v0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mAttachmentBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_14

    .line 1642
    new-instance v5, Landroid/app/Notification$BigPictureStyle;

    move-object/from16 v0, v35

    invoke-direct {v5, v0}, Landroid/app/Notification$BigPictureStyle;-><init>(Landroid/app/Notification$Builder;)V

    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mAttachmentBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    invoke-virtual {v5, v0}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v5

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->formatPictureMessage(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v49

    move-object/from16 v0, v49

    invoke-virtual {v5, v0}, Landroid/app/Notification$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification$BigPictureStyle;->build()Landroid/app/Notification;

    move-result-object v36

    .restart local v36       #notification:Landroid/app/Notification;
    goto/16 :goto_4

    .line 1649
    .end local v36           #notification:Landroid/app/Notification;
    :cond_14
    new-instance v5, Landroid/app/Notification$BigTextStyle;

    move-object/from16 v0, v35

    invoke-direct {v5, v0}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->formatBigMessage(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v49

    move-object/from16 v0, v49

    invoke-virtual {v5, v0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v36

    .restart local v36       #notification:Landroid/app/Notification;
    goto/16 :goto_4

    .line 1656
    .end local v36           #notification:Landroid/app/Notification;
    :cond_15
    const/4 v5, 0x1

    move/from16 v0, p2

    if-ne v0, v5, :cond_1a

    .line 1660
    new-instance v13, Landroid/text/SpannableStringBuilder;

    invoke-direct {v13}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1662
    .local v13, buf:Landroid/text/SpannableStringBuilder;
    :try_start_0
    move/from16 v0, v31

    new-array v5, v0, [Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Ljava/util/SortedSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    .line 1664
    .local v23, infos:[Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v28, v0

    .line 1665
    .local v28, len:I
    add-int/lit8 v18, v28, -0x1

    .local v18, i:I
    :goto_a
    if-ltz v18, :cond_17

    .line 1666
    aget-object v22, v23, v18

    .line 1668
    .local v22, info:Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->formatBigMessage(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v13, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1670
    if-eqz v18, :cond_16

    .line 1671
    const/16 v5, 0xa

    invoke-virtual {v13, v5}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1665
    :cond_16
    add-int/lit8 v18, v18, -0x1

    goto :goto_a

    .line 1674
    .end local v18           #i:I
    .end local v22           #info:Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    .end local v23           #infos:[Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    .end local v28           #len:I
    :catch_0
    move-exception v17

    .line 1675
    .local v17, e:Ljava/lang/Exception;
    const-string v5, "Mms/MessagingNotification"

    const-string v49, "sNotificationSet toArray caused exception."

    move-object/from16 v0, v49

    invoke-static {v5, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1676
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V

    .line 1679
    .end local v17           #e:Ljava/lang/Exception;
    :cond_17
    if-nez v27, :cond_18

    .line 1680
    const v5, 0x7f0a04d6

    const/16 v49, 0x1

    move/from16 v0, v49

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v49, v0

    const/16 v50, 0x0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v51

    aput-object v51, v49, v50

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1681
    new-instance v5, Landroid/app/Notification$BigTextStyle;

    move-object/from16 v0, v35

    invoke-direct {v5, v0}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    const v49, 0x7f0a04d6

    const/16 v50, 0x1

    move/from16 v0, v50

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v50, v0

    const/16 v51, 0x0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v52

    aput-object v52, v50, v51

    move-object/from16 v0, p0

    move/from16 v1, v49

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, v49

    invoke-virtual {v5, v0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v36

    .restart local v36       #notification:Landroid/app/Notification;
    goto/16 :goto_4

    .line 1686
    .end local v36           #notification:Landroid/app/Notification;
    :cond_18
    const v5, 0x7f0a04d6

    const/16 v49, 0x1

    move/from16 v0, v49

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v49, v0

    const/16 v50, 0x0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v51

    aput-object v51, v49, v50

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1687
    new-instance v5, Landroid/app/Notification$BigTextStyle;

    move-object/from16 v0, v35

    invoke-direct {v5, v0}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v5, v13}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v49

    if-nez v12, :cond_19

    const/4 v5, 0x0

    :goto_b
    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Landroid/app/Notification$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v36

    .restart local v36       #notification:Landroid/app/Notification;
    goto/16 :goto_4

    .end local v36           #notification:Landroid/app/Notification;
    :cond_19
    const-string v5, " "

    goto :goto_b

    .line 1693
    .end local v13           #buf:Landroid/text/SpannableStringBuilder;
    :cond_1a
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 1695
    .local v32, mostRecentNotifPerThread:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;>;"
    new-instance v47, Ljava/util/HashSet;

    move-object/from16 v0, v47

    move/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 1697
    .local v47, uniqueThreads:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-interface/range {p3 .. p3}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v38

    .line 1698
    .local v38, notifications:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;>;"
    :cond_1b
    :goto_c
    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 1699
    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    .line 1700
    .local v37, notificationInfo:Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    move-object/from16 v0, v37

    iget-wide v0, v0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mThreadId:J

    move-wide/from16 v49, v0

    invoke-static/range {v49 .. v50}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1b

    .line 1701
    move-object/from16 v0, v37

    iget-wide v0, v0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mThreadId:J

    move-wide/from16 v49, v0

    invoke-static/range {v49 .. v50}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1702
    move-object/from16 v0, v32

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 1707
    .end local v37           #notificationInfo:Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    :cond_1c
    if-nez v27, :cond_1d

    .line 1708
    const v5, 0x7f0a04d6

    const/16 v49, 0x1

    move/from16 v0, v49

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v49, v0

    const/16 v50, 0x0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v51

    aput-object v51, v49, v50

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1709
    new-instance v5, Landroid/app/Notification$BigTextStyle;

    move-object/from16 v0, v35

    invoke-direct {v5, v0}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    const v49, 0x7f0a04d6

    const/16 v50, 0x1

    move/from16 v0, v50

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v50, v0

    const/16 v51, 0x0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v52

    aput-object v52, v50, v51

    move-object/from16 v0, p0

    move/from16 v1, v49

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, v49

    invoke-virtual {v5, v0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v36

    .restart local v36       #notification:Landroid/app/Notification;
    goto/16 :goto_4

    .line 1715
    .end local v36           #notification:Landroid/app/Notification;
    :cond_1d
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->formatSenders(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/lang/CharSequence;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1716
    new-instance v21, Landroid/app/Notification$InboxStyle;

    move-object/from16 v0, v21

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Landroid/app/Notification$InboxStyle;-><init>(Landroid/app/Notification$Builder;)V

    .line 1728
    .local v21, inboxStyle:Landroid/app/Notification$InboxStyle;
    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v46

    .line 1729
    .local v46, uniqueThreadMessageCount:I
    const/16 v5, 0x8

    move/from16 v0, v46

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v30

    .line 1731
    .local v30, maxMessages:I
    const/16 v18, 0x0

    .restart local v18       #i:I
    :goto_d
    move/from16 v0, v18

    move/from16 v1, v30

    if-ge v0, v1, :cond_1e

    .line 1732
    move-object/from16 v0, v32

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    .line 1733
    .restart local v22       #info:Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->formatInboxMessage(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/app/Notification$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    .line 1731
    add-int/lit8 v18, v18, 0x1

    goto :goto_d

    .line 1736
    .end local v22           #info:Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    :cond_1e
    invoke-virtual/range {v21 .. v21}, Landroid/app/Notification$InboxStyle;->build()Landroid/app/Notification;

    move-result-object v36

    .restart local v36       #notification:Landroid/app/Notification;
    goto/16 :goto_4

    .line 1753
    .end local v18           #i:I
    .end local v21           #inboxStyle:Landroid/app/Notification$InboxStyle;
    .end local v30           #maxMessages:I
    .end local v32           #mostRecentNotifPerThread:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;>;"
    .end local v38           #notifications:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;>;"
    .end local v46           #uniqueThreadMessageCount:I
    .end local v47           #uniqueThreads:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_1f
    const-string v5, "notification"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/app/NotificationManager;

    .line 1754
    .local v34, nm1:Landroid/app/NotificationManager;
    const/16 v5, 0x7b

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1756
    invoke-static {}, Lcom/android/mms/transaction/MessagingNotificationAlert;->stopAlertSoundOnCall()V

    .line 1757
    const-string v5, "Mms/MessagingNotification"

    new-instance v49, Ljava/lang/StringBuilder;

    invoke-direct/range {v49 .. v49}, Ljava/lang/StringBuilder;-><init>()V

    const-string v50, "updateNotification() sound path = "

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v49

    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    move-object/from16 v50, v0

    invoke-virtual/range {v49 .. v50}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, v49

    invoke-static {v5, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1767
    .end local v34           #nm1:Landroid/app/NotificationManager;
    :cond_20
    const/4 v5, 0x0

    move-object/from16 v0, v36

    iput-object v5, v0, Landroid/app/Notification;->contactCharSeq:Ljava/lang/CharSequence;

    goto/16 :goto_6

    .line 1773
    :cond_21
    const/16 v25, 0x0

    goto/16 :goto_7

    .line 1774
    .restart local v25       #isEnableFlashNoti:Z
    :cond_22
    const/16 v26, 0x0

    goto/16 :goto_8
.end method

.method public static updateRepeatNotifications(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "simSlot"

    .prologue
    .line 1267
    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;JZI)V

    .line 1268
    invoke-static {p0}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    .line 1269
    return-void
.end method

.method public static updateReportNotification(Landroid/content/Context;IIJLjava/lang/String;I)V
    .locals 17
    .parameter "context"
    .parameter "type"
    .parameter "status"
    .parameter "threadId"
    .parameter "address"
    .parameter "simSlot"

    .prologue
    .line 2347
    new-instance v11, Ljava/lang/StringBuffer;

    const/16 v14, 0x64

    invoke-direct {v11, v14}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 2348
    .local v11, sb:Ljava/lang/StringBuffer;
    const-string v14, "Mms/MessagingNotification"

    const-string v15, "updateReportNotification(),type="

    invoke-virtual {v11, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v15

    const-string v16, ",status="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v15

    const-string v16, ",threadId="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2352
    new-instance v7, Landroid/app/Notification;

    invoke-direct {v7}, Landroid/app/Notification;-><init>()V

    .line 2353
    .local v7, notification:Landroid/app/Notification;
    const-string v14, "notification"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    .line 2358
    .local v6, nm:Landroid/app/NotificationManager;
    packed-switch p1, :pswitch_data_0

    .line 2375
    const-string v10, ""

    .line 2424
    .local v10, reportStatusText:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 2360
    .end local v10           #reportStatusText:Ljava/lang/String;
    :pswitch_0
    const v14, 0x7f0a00d3

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 2361
    .local v13, title:Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->getSmsDeliveryReportText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    .line 2362
    .restart local v10       #reportStatusText:Ljava/lang/String;
    const v14, 0x7f020322

    iput v14, v7, Landroid/app/Notification;->icon:I

    .line 2379
    :goto_1
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 2382
    const-string v5, ""

    .line 2384
    .local v5, displayAddress:Ljava/lang/String;
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 2385
    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    .line 2386
    const/4 v14, 0x1

    move-object/from16 v0, p5

    invoke-static {v0, v14}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v5

    .line 2389
    :cond_1
    const/4 v4, 0x0

    .line 2391
    .local v4, description:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isLocaleRTL()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 2392
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "\u202a"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\u202c : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2396
    :goto_2
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageFragment;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v3

    .line 2397
    .local v3, clickIntent:Landroid/content/Intent;
    invoke-static {v3}, Lcom/android/mms/transaction/MessagingNotification;->addNotiIntentType(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v3

    .line 2399
    const/4 v14, 0x0

    const/high16 v15, 0x800

    move-object/from16 v0, p0

    invoke-static {v0, v14, v3, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 2401
    .local v8, pendingIntent:Landroid/app/PendingIntent;
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 2404
    .local v12, sp:Landroid/content/SharedPreferences;
    const-string v14, "Mms/MessagingNotification"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "updateReportNotification - simSlot = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p6

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2405
    const-string v9, "pref_key_enable_notifications"

    .line 2406
    .local v9, preference_enabled:Ljava/lang/String;
    if-eqz p6, :cond_2

    .line 2407
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "_sim"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    add-int/lit8 v15, p6, 0x1

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2411
    :cond_2
    const/4 v14, 0x1

    invoke-interface {v12, v9, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 2415
    const/16 v14, 0x378

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 2417
    iput-object v13, v7, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 2419
    move-object/from16 v0, p0

    invoke-virtual {v7, v0, v13, v4, v8}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 2421
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-static {v0, v12, v7, v14, v1}, Lcom/android/mms/transaction/MessagingNotification;->decideNotificationType(Landroid/content/Context;Landroid/content/SharedPreferences;Landroid/app/Notification;Lcom/android/mms/data/Contact;I)V

    .line 2423
    const/16 v14, 0x378

    invoke-virtual {v6, v14, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 2365
    .end local v3           #clickIntent:Landroid/content/Intent;
    .end local v4           #description:Ljava/lang/String;
    .end local v5           #displayAddress:Ljava/lang/String;
    .end local v8           #pendingIntent:Landroid/app/PendingIntent;
    .end local v9           #preference_enabled:Ljava/lang/String;
    .end local v10           #reportStatusText:Ljava/lang/String;
    .end local v12           #sp:Landroid/content/SharedPreferences;
    .end local v13           #title:Ljava/lang/String;
    :pswitch_1
    const v14, 0x7f0a00d3

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 2366
    .restart local v13       #title:Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->getMmsDeliveryReportText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    .line 2367
    .restart local v10       #reportStatusText:Ljava/lang/String;
    const v14, 0x7f020322

    iput v14, v7, Landroid/app/Notification;->icon:I

    goto/16 :goto_1

    .line 2370
    .end local v10           #reportStatusText:Ljava/lang/String;
    .end local v13           #title:Ljava/lang/String;
    :pswitch_2
    const v14, 0x7f0a00d4

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 2371
    .restart local v13       #title:Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->getMmsReadReportText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    .line 2372
    .restart local v10       #reportStatusText:Ljava/lang/String;
    const v14, 0x7f020326

    iput v14, v7, Landroid/app/Notification;->icon:I

    goto/16 :goto_1

    .line 2394
    .restart local v4       #description:Ljava/lang/String;
    .restart local v5       #displayAddress:Ljava/lang/String;
    :cond_3
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    .line 2358
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static updateSendFailedNotification(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 2269
    const-string v0, "Mms/MessagingNotification"

    const-string v1, "updateSendFailedNotification()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2271
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->getUndeliveredMessageCount(Landroid/content/Context;[J)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 2272
    const/16 v0, 0x315

    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 2276
    :goto_0
    return-void

    .line 2274
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->notifySendFailed(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public static updateSendFailedNotificationForThread(Landroid/content/Context;J)V
    .locals 5
    .parameter "context"
    .parameter "threadId"

    .prologue
    .line 2283
    const/4 v1, 0x2

    new-array v0, v1, [J

    fill-array-data v0, :array_0

    .line 2285
    .local v0, msgThreadId:[J
    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->getUndeliveredMessageCount(Landroid/content/Context;[J)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    aget-wide v1, v0, v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 2288
    const/16 v1, 0x315

    invoke-static {p0, v1}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 2291
    :cond_0
    invoke-static {p0}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    .line 2292
    return-void

    .line 2283
    nop

    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method
