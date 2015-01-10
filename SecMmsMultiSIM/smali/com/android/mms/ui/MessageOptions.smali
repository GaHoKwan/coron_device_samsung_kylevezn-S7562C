.class public Lcom/android/mms/ui/MessageOptions;
.super Ljava/lang/Object;
.source "MessageOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessageOptions$CancelMessageListener;,
        Lcom/android/mms/ui/MessageOptions$SendNowListener;,
        Lcom/android/mms/ui/MessageOptions$RestoreMessageListener;,
        Lcom/android/mms/ui/MessageOptions$RestoreSpamTask;,
        Lcom/android/mms/ui/MessageOptions$AttachCancelListener;,
        Lcom/android/mms/ui/MessageOptions$AttachOkListener;,
        Lcom/android/mms/ui/MessageOptions$FileEndWithFilter;,
        Lcom/android/mms/ui/MessageOptions$BackgroundQueryHandler;,
        Lcom/android/mms/ui/MessageOptions$DeleteMessageListener;,
        Lcom/android/mms/ui/MessageOptions$CreationOkListener;,
        Lcom/android/mms/ui/MessageOptions$ResendGroupSmsListener;
    }
.end annotation


# static fields
.field private static final ALL_THREADS_PROJECTION:[Ljava/lang/String; = null

.field static final COLUMN_ID:I = 0x0

.field static final COLUMN_MMS_MESSAGE_BOX:I = 0x2

.field static final COLUMN_MMS_MESSAGE_TYPE:I = 0x1

.field static final COLUMN_SMS_ADDRESS:I = 0x2

.field static final COLUMN_SMS_DATE:I = 0x3

.field static final COLUMN_SMS_ERROR_CODE:I = 0x4

.field static final COLUMN_SMS_PRIORITY:I = 0x6

.field static final COLUMN_SMS_TYPE:I = 0x1

.field public static final CONTENT_RESTRICTION:I = -0x5

.field public static final COPY_TO_SIM_FAIL:I = 0x1

.field public static final COPY_TO_SIM_FUL:I = 0x3

.field public static final COPY_TO_SIM_INVALID_FORMAT:I = 0x4

.field public static final COPY_TO_SIM_LMS:I = 0x5

.field public static final COPY_TO_SIM_MMS:I = 0x6

.field public static final COPY_TO_SIM_NOTAVAILABLE:I = 0x2

.field public static final COPY_TO_SIM_SUCCESS:I = 0x0

.field private static final DELETE_MESSAGE_TOKEN:I = 0x25e4

.field public static final IMAGE_TOO_LARGE:I = -0x4

.field public static final LAUNCH_DEFAULT:I = 0x0

.field public static final LAUNCH_FROM_CONTACT_HISTORY:I = 0x1

.field public static final LAUNCH_FROM_FOLDER_VIEW:I = 0x2

.field public static final LAUNCH_FROM_MISSED_WIDGET:I = 0x3

.field public static final LAUNCH_FROM_SEARCHLIST_ON_FOLDER_VIEW:I = 0x4

.field public static final MENU_ADD_ADDRESS_TO_CONTACTS:I = 0x1b

.field private static final MENU_ATTACHMENT_LIST:I = 0x23

.field public static final MENU_BLOCK_NUMBER_SETTING:I = 0x29

.field private static final MENU_CALL_RECIPIENT:I = 0x2a

.field private static final MENU_CANCEL_MESSAGE:I = 0x27

.field private static final MENU_COPY_MESSAGE_TEXT:I = 0x18

.field private static final MENU_COPY_MESSAGE_TO_SIM:I = 0x1f

.field private static final MENU_COPY_TO_SDCARD:I = 0x21

.field public static final MENU_DELETE_MESSAGE:I = 0x12

.field private static final MENU_DELIVERY_REPORT:I = 0x14

.field public static final MENU_DOWNLOAD_MESSAGE:I = 0x25

.field private static final MENU_EDIT_MESSAGE:I = 0xe

.field private static final MENU_FORWARD_MESSAGE:I = 0x15

.field private static final MENU_LOCK_MESSAGE:I = 0x1c

.field private static final MENU_REGISTER_TO_CALENDAR:I = 0x22

.field public static final MENU_REPLY_MESSAGE:I = 0x20

.field private static final MENU_REPLY_TO_ALL:I = 0x24

.field private static final MENU_RESEND_MESSAGE:I = 0x1e

.field private static final MENU_RESTORE_MESSAGE:I = 0x28

.field private static final MENU_SAVE_RINGTONE:I = 0x2d

.field private static final MENU_SEND_NOW:I = 0x26

.field public static final MENU_UNBLOCK_NUMBER_SETTING:I = 0x2c

.field public static final MENU_UNLOCK_MESSAGE:I = 0x1d

.field private static final MENU_VIDEO_CALL_RECIPIENT:I = 0x2b

.field public static final MENU_VIEW_CONTACT:I = 0x1a

.field private static final MENU_VIEW_MESSAGE_DETAILS:I = 0x11

.field public static final MESSAGE_SIZE_EXCEEDED:I = -0x2

.field public static final OK:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Mms/MessageOptions"

.field public static final UNKNOWN_ERROR:I = -0x1

.field public static final UNSUPPORTED_TYPE:I = -0x3

.field public static deleteDialog:Landroid/app/AlertDialog;

.field public static detailDialog:Landroid/app/AlertDialog;

.field public static detailDialogSpam:Landroid/app/AlertDialog;

.field static mLaunchApp:I

.field static mType:Ljava/lang/String;

.field static msgId:J

.field public static sReplyLaunched:Z

.field private static final sResIdRegisterCalendar:I


# instance fields
.field private final LOW_STORAGE_THRESHOLD:J

.field private TargetDirectory:Ljava/io/File;

.field public isLockedMessageList:Z

.field mActivity:Landroid/app/Activity;

.field private mAddressToCall:Ljava/lang/String;

.field mBackgroundQueryHandler:Lcom/android/mms/ui/MessageOptions$BackgroundQueryHandler;

.field mClipExMgr:Landroid/sec/clipboard/ClipboardExManager;

.field private mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

.field mContentResolver:Landroid/content/ContentResolver;

.field mContext:Landroid/content/Context;

.field private mCurSlideLocation:I

.field private mEditField:Landroid/widget/EditText;

.field private mEmptyNameToast:Landroid/widget/Toast;

.field mMsgItem:Lcom/android/mms/ui/MessageItem;

.field private mNegativeButton:Landroid/widget/Button;

.field private mPositiveButton:Landroid/widget/Button;

.field private mRecipients:Lcom/android/mms/data/ContactList;

.field private mSendNowAddr:Ljava/lang/String;

.field private mSendNowBody:Ljava/lang/String;

.field protected mSendNowConfirmDialog:Landroid/content/DialogInterface;

.field private mSendNowLocked:Z

.field private mSendNowSize:J

.field private mSendNowThreadId:J

.field private mSendNowType:Ljava/lang/String;

.field private mSendNowUri:Landroid/net/Uri;

.field private mSendSimSlot:I

.field private mTargetDirectory:Ljava/lang/String;

.field private mTitle:Landroid/widget/TextView;

.field private mTitleIcon:Landroid/widget/ImageView;

.field private mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

.field private numberList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final sb:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 267
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSPannerLabelCaleder()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0a04b2

    :goto_0
    sput v0, Lcom/android/mms/ui/MessageOptions;->sResIdRegisterCalendar:I

    .line 698
    sput-object v3, Lcom/android/mms/ui/MessageOptions;->detailDialog:Landroid/app/AlertDialog;

    .line 699
    sput-object v3, Lcom/android/mms/ui/MessageOptions;->detailDialogSpam:Landroid/app/AlertDialog;

    .line 1609
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "date"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/MessageOptions;->ALL_THREADS_PROJECTION:[Ljava/lang/String;

    .line 2115
    sput-object v3, Lcom/android/mms/ui/MessageOptions;->deleteDialog:Landroid/app/AlertDialog;

    return-void

    .line 267
    :cond_0
    const v0, 0x7f0a04b3

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/ui/ComposeMessageFragment;)V
    .locals 6
    .parameter "context"
    .parameter "thisContext"
    .parameter "msg"
    .parameter "compose"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageOptions;->sb:Ljava/lang/StringBuilder;

    .line 227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageOptions;->numberList:Ljava/util/ArrayList;

    .line 247
    iput-boolean v3, p0, Lcom/android/mms/ui/MessageOptions;->isLockedMessageList:Z

    .line 277
    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowType:Ljava/lang/String;

    .line 278
    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowAddr:Ljava/lang/String;

    .line 279
    iput-wide v4, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowThreadId:J

    .line 280
    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowBody:Ljava/lang/String;

    .line 281
    iput-wide v4, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowSize:J

    .line 282
    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowUri:Landroid/net/Uri;

    .line 283
    iput-boolean v3, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowLocked:Z

    .line 284
    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mAddressToCall:Ljava/lang/String;

    .line 285
    iput v3, p0, Lcom/android/mms/ui/MessageOptions;->mSendSimSlot:I

    .line 641
    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mRecipients:Lcom/android/mms/data/ContactList;

    .line 2420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getExternalSdCardStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Backup/vMessage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mTargetDirectory:Ljava/lang/String;

    .line 2422
    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->TargetDirectory:Ljava/io/File;

    .line 2480
    iput-wide v4, p0, Lcom/android/mms/ui/MessageOptions;->LOW_STORAGE_THRESHOLD:J

    .line 3033
    iput v3, p0, Lcom/android/mms/ui/MessageOptions;->mCurSlideLocation:I

    .line 334
    iput-object p1, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    .line 335
    iput-object p2, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    .line 336
    iput-object p3, p0, Lcom/android/mms/ui/MessageOptions;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 337
    iput-object p4, p0, Lcom/android/mms/ui/MessageOptions;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    .line 338
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "thisActivity"
    .parameter "msgItem"
    .parameter "messageId"
    .parameter "type"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageOptions;->sb:Ljava/lang/StringBuilder;

    .line 227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageOptions;->numberList:Ljava/util/ArrayList;

    .line 247
    iput-boolean v3, p0, Lcom/android/mms/ui/MessageOptions;->isLockedMessageList:Z

    .line 277
    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowType:Ljava/lang/String;

    .line 278
    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowAddr:Ljava/lang/String;

    .line 279
    iput-wide v4, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowThreadId:J

    .line 280
    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowBody:Ljava/lang/String;

    .line 281
    iput-wide v4, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowSize:J

    .line 282
    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowUri:Landroid/net/Uri;

    .line 283
    iput-boolean v3, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowLocked:Z

    .line 284
    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mAddressToCall:Ljava/lang/String;

    .line 285
    iput v3, p0, Lcom/android/mms/ui/MessageOptions;->mSendSimSlot:I

    .line 641
    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mRecipients:Lcom/android/mms/data/ContactList;

    .line 2420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getExternalSdCardStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Backup/vMessage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mTargetDirectory:Ljava/lang/String;

    .line 2422
    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->TargetDirectory:Ljava/io/File;

    .line 2480
    iput-wide v4, p0, Lcom/android/mms/ui/MessageOptions;->LOW_STORAGE_THRESHOLD:J

    .line 3033
    iput v3, p0, Lcom/android/mms/ui/MessageOptions;->mCurSlideLocation:I

    .line 299
    iput-object p1, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    .line 300
    iput-object p2, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    .line 301
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    .line 302
    sput-wide p4, Lcom/android/mms/ui/MessageOptions;->msgId:J

    .line 303
    sput-object p6, Lcom/android/mms/ui/MessageOptions;->mType:Ljava/lang/String;

    .line 304
    iput-object p3, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    .line 307
    sput v3, Lcom/android/mms/ui/MessageOptions;->mLaunchApp:I

    .line 309
    new-instance v0, Lcom/android/mms/ui/MessageOptions$BackgroundQueryHandler;

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/MessageOptions$BackgroundQueryHandler;-><init>(Lcom/android/mms/ui/MessageOptions;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mBackgroundQueryHandler:Lcom/android/mms/ui/MessageOptions$BackgroundQueryHandler;

    .line 311
    const-string v0, "Mms/MessageOptions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLaunchApp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mms/ui/MessageOptions;->mLaunchApp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/mms/ui/MessageItem;JLjava/lang/String;I)V
    .locals 6
    .parameter "context"
    .parameter "thisActivity"
    .parameter "msgItem"
    .parameter "messageId"
    .parameter "type"
    .parameter "launchMode"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageOptions;->sb:Ljava/lang/StringBuilder;

    .line 227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageOptions;->numberList:Ljava/util/ArrayList;

    .line 247
    iput-boolean v3, p0, Lcom/android/mms/ui/MessageOptions;->isLockedMessageList:Z

    .line 277
    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowType:Ljava/lang/String;

    .line 278
    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowAddr:Ljava/lang/String;

    .line 279
    iput-wide v4, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowThreadId:J

    .line 280
    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowBody:Ljava/lang/String;

    .line 281
    iput-wide v4, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowSize:J

    .line 282
    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowUri:Landroid/net/Uri;

    .line 283
    iput-boolean v3, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowLocked:Z

    .line 284
    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mAddressToCall:Ljava/lang/String;

    .line 285
    iput v3, p0, Lcom/android/mms/ui/MessageOptions;->mSendSimSlot:I

    .line 641
    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mRecipients:Lcom/android/mms/data/ContactList;

    .line 2420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getExternalSdCardStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Backup/vMessage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mTargetDirectory:Ljava/lang/String;

    .line 2422
    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->TargetDirectory:Ljava/io/File;

    .line 2480
    iput-wide v4, p0, Lcom/android/mms/ui/MessageOptions;->LOW_STORAGE_THRESHOLD:J

    .line 3033
    iput v3, p0, Lcom/android/mms/ui/MessageOptions;->mCurSlideLocation:I

    .line 317
    iput-object p1, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    .line 318
    iput-object p2, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    .line 319
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    .line 320
    sput-wide p4, Lcom/android/mms/ui/MessageOptions;->msgId:J

    .line 321
    sput-object p6, Lcom/android/mms/ui/MessageOptions;->mType:Ljava/lang/String;

    .line 322
    iput-object p3, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    .line 325
    sput p7, Lcom/android/mms/ui/MessageOptions;->mLaunchApp:I

    .line 327
    new-instance v0, Lcom/android/mms/ui/MessageOptions$BackgroundQueryHandler;

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/MessageOptions$BackgroundQueryHandler;-><init>(Lcom/android/mms/ui/MessageOptions;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mBackgroundQueryHandler:Lcom/android/mms/ui/MessageOptions$BackgroundQueryHandler;

    .line 329
    const-string v0, "Mms/MessageOptions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLaunchApp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mms/ui/MessageOptions;->mLaunchApp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    return-void
.end method

.method public static MultipleCopyMessageToSIM(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;I)I
    .locals 19
    .parameter "context"
    .parameter "time"
    .parameter "body"
    .parameter "address"
    .parameter "BoxId"

    .prologue
    .line 3193
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static/range {p4 .. p4}, Lcom/android/mms/ui/MessageUtils;->isValidSmsAddress(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 3194
    :cond_0
    const/4 v14, 0x4

    .line 3264
    :cond_1
    :goto_0
    return v14

    .line 3197
    :cond_2
    const/4 v14, 0x1

    .line 3204
    .local v14, ret_value:I
    new-instance v18, Landroid/text/format/Time;

    invoke-direct/range {v18 .. v18}, Landroid/text/format/Time;-><init>()V

    .line 3205
    .local v18, ts:Landroid/text/format/Time;
    move-object/from16 v0, v18

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 3206
    invoke-virtual/range {v18 .. v18}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v15

    .line 3208
    .local v15, stime:Ljava/lang/String;
    const-string v4, "Mms/MessageOptions"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[MultipleCopyMessageToSIM] stime : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3210
    const/4 v4, 0x2

    const/16 v6, 0x8

    invoke-virtual {v15, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 3211
    .local v16, temp_date:Ljava/lang/String;
    const/16 v4, 0x9

    const/16 v6, 0xf

    invoke-virtual {v15, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 3213
    .local v17, temp_time:Ljava/lang/String;
    const-string v4, "Mms/MessageOptions"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[MultipleCopyMessageToSIM] temp_date : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3214
    const-string v4, "Mms/MessageOptions"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[MultipleCopyMessageToSIM] temp_date : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3216
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3218
    .local v8, mTimestamp:Ljava/lang/String;
    const-string v4, "Mms/MessageOptions"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "timestamp : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3220
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v3

    .line 3222
    .local v3, smsManager:Landroid/telephony/SmsManager;
    const/4 v10, 0x0

    .line 3223
    .local v10, messageCount:I
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 3224
    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    .line 3225
    .local v11, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 3228
    .end local v11           #messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 3229
    .local v12, prefs:Landroid/content/SharedPreferences;
    const-string v4, "pref_key_manage_smsc_address"

    const-string v6, "Not Set"

    invoke-interface {v12, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3231
    .local v5, sca:Ljava/lang/String;
    const/4 v4, 0x1

    if-le v10, v4, :cond_4

    .line 3232
    const/4 v14, 0x5

    goto/16 :goto_0

    .line 3236
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSMSP()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3237
    invoke-virtual {v3}, Landroid/telephony/SmsManager;->getSMSPAvailable()Z

    move-result v4

    if-nez v4, :cond_5

    .line 3238
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 3242
    :cond_5
    const-string v4, "Mms/MessageOptions"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[MultipleCopyMessageToSIM] Copy Address : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3243
    if-nez p4, :cond_6

    .line 3244
    const/4 v14, 0x4

    goto/16 :goto_0

    .line 3248
    :cond_6
    :try_start_0
    const-string v4, "Mms/MessageOptions"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[MultipleCopyMessageToSIM] Copy body : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v4, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    .line 3249
    invoke-virtual/range {v3 .. v8}, Landroid/telephony/SmsManager;->MakeSimPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    .line 3250
    .local v13, result:I
    const/4 v4, 0x1

    if-eq v13, v4, :cond_7

    const/4 v4, 0x2

    if-ne v13, v4, :cond_8

    .line 3251
    :cond_7
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 3253
    :cond_8
    const/4 v4, 0x3

    if-ne v13, v4, :cond_9

    .line 3254
    const/4 v14, 0x3

    goto/16 :goto_0

    .line 3256
    :cond_9
    if-nez v13, :cond_1

    .line 3257
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 3259
    .end local v13           #result:I
    :catch_0
    move-exception v9

    .line 3260
    .local v9, e:Ljava/lang/NumberFormatException;
    const-string v4, "Mms/MessageOptions"

    const-string v6, "NumberFormatException :"

    invoke-static {v4, v6, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3261
    const v4, 0x7f0a0025

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MessageOptions;Lcom/android/mms/ui/MessageItem;[Ljava/lang/String;Lcom/android/mms/data/Conversation;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 174
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/MessageOptions;->resendGroupSmsMessageItem(Lcom/android/mms/ui/MessageItem;[Ljava/lang/String;Lcom/android/mms/data/Conversation;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/ui/MessageOptions;Lcom/android/mms/ui/MessageItem;ZLcom/google/android/mms/pdu/SendReq;Ljava/lang/String;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 174
    invoke-direct/range {p0 .. p6}, Lcom/android/mms/ui/MessageOptions;->forwardMessageStartActivityForMms(Lcom/android/mms/ui/MessageItem;ZLcom/google/android/mms/pdu/SendReq;Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/MessageOptions;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowBody:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/mms/ui/MessageOptions;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowBody:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/MessageOptions;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 174
    iget-wide v0, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowSize:J

    return-wide v0
.end method

.method static synthetic access$1102(Lcom/android/mms/ui/MessageOptions;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 174
    iput-wide p1, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowSize:J

    return-wide p1
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/MessageOptions;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowLocked:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/mms/ui/MessageOptions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 174
    iput-boolean p1, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowLocked:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/MessageOptions;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 174
    iget v0, p0, Lcom/android/mms/ui/MessageOptions;->mSendSimSlot:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/mms/ui/MessageOptions;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 174
    iput p1, p0, Lcom/android/mms/ui/MessageOptions;->mSendSimSlot:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/mms/ui/MessageOptions;Lcom/android/mms/ui/MessageItem;ZLcom/google/android/mms/pdu/SendReq;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 174
    invoke-direct/range {p0 .. p5}, Lcom/android/mms/ui/MessageOptions;->forwardMessageStartActivityForMms(Lcom/android/mms/ui/MessageItem;ZLcom/google/android/mms/pdu/SendReq;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/ui/MessageOptions;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/android/mms/ui/MessageOptions;->finishViewerCheckFolderViewMode()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/ui/MessageOptions;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/mms/ui/MessageOptions;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/mms/ui/MessageOptions;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/mms/ui/MessageOptions;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/mms/ui/MessageOptions;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowAddr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/mms/ui/MessageOptions;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowAddr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/mms/ui/MessageOptions;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 174
    iget-wide v0, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowThreadId:J

    return-wide v0
.end method

.method static synthetic access$902(Lcom/android/mms/ui/MessageOptions;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 174
    iput-wide p1, p0, Lcom/android/mms/ui/MessageOptions;->mSendNowThreadId:J

    return-wide p1
.end method

.method private buildFileNumber(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .parameter "prefix"
    .parameter "num"

    .prologue
    .line 2545
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 2546
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2554
    .local v0, t:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 2547
    .end local v0           #t:Ljava/lang/String;
    :cond_0
    const/16 v1, 0xb

    if-ge p2, v1, :cond_1

    .line 2548
    add-int/lit8 p2, p2, -0x1

    .line 2549
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #t:Ljava/lang/String;
    goto :goto_0

    .line 2551
    .end local v0           #t:Ljava/lang/String;
    :cond_1
    add-int/lit8 p2, p2, -0x1

    .line 2552
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #t:Ljava/lang/String;
    goto :goto_0
.end method

.method private checkAvailableStorage()Z
    .locals 4

    .prologue
    .line 2483
    invoke-direct {p0}, Lcom/android/mms/ui/MessageOptions;->getAvailableStorage()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 2484
    const/4 v0, 0x1

    .line 2485
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkCRForRawAttachment()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 2107
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/model/CarrierContentRestriction;->getMmsCreationMode(Landroid/content/Context;)I

    move-result v0

    .line 2109
    .local v0, creationMode:I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    .line 2111
    :cond_0
    new-instance v1, Lcom/android/mms/ContentRestrictionException;

    const-string v2, "Raw Attachment"

    invoke-direct {v1, v2}, Lcom/android/mms/ContentRestrictionException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2113
    :cond_1
    return-void
.end method

.method private checkFileNumber(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 4
    .parameter "title"
    .parameter "context"

    .prologue
    .line 2536
    const/4 v1, 0x0

    .line 2537
    .local v1, files:[Ljava/io/File;
    new-instance v0, Lcom/android/mms/ui/MessageOptions$FileEndWithFilter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".vmg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/mms/ui/MessageOptions$FileEndWithFilter;-><init>(Lcom/android/mms/ui/MessageOptions;Ljava/lang/String;)V

    .line 2539
    .local v0, filenameFilter:Ljava/io/FilenameFilter;
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->TargetDirectory:Ljava/io/File;

    invoke-virtual {v2, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 2540
    if-eqz v1, :cond_0

    array-length v2, v1

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private checkMsgCount(J)I
    .locals 9
    .parameter "threadId"

    .prologue
    .line 1855
    const/4 v8, -0x1

    .line 1856
    .local v8, retVal:I
    const/4 v6, 0x0

    .line 1859
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1860
    .local v1, contentThreadUri:Landroid/net/Uri;
    if-nez v1, :cond_0

    .line 1861
    const/4 v8, 0x0

    .line 1863
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/mms/ui/MessageOptions;->ALL_THREADS_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 1869
    .end local v1           #contentThreadUri:Landroid/net/Uri;
    :goto_0
    if-eqz v6, :cond_1

    .line 1876
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    .line 1879
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1882
    :cond_1
    const-string v0, "Mms/MessageOptions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkMsgCount : retVal="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1883
    return v8

    .line 1865
    :catch_0
    move-exception v7

    .line 1866
    .local v7, e:Ljava/lang/NullPointerException;
    const-string v0, "Mms/MessageOptions"

    const-string v2, "exception : NullPointerException @ forwardMessage"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1879
    .end local v7           #e:Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static closeDeleteDialog()V
    .locals 1

    .prologue
    .line 3027
    sget-object v0, Lcom/android/mms/ui/MessageOptions;->deleteDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 3028
    sget-object v0, Lcom/android/mms/ui/MessageOptions;->deleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3029
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/MessageOptions;->deleteDialog:Landroid/app/AlertDialog;

    .line 3031
    :cond_0
    return-void
.end method

.method public static closeDetailDialog()V
    .locals 1

    .prologue
    .line 3036
    sget-object v0, Lcom/android/mms/ui/MessageOptions;->detailDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 3037
    sget-object v0, Lcom/android/mms/ui/MessageOptions;->detailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3038
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/MessageOptions;->detailDialog:Landroid/app/AlertDialog;

    .line 3040
    :cond_0
    return-void
.end method

.method public static closeDetailSpamDialog()V
    .locals 1

    .prologue
    .line 3043
    sget-object v0, Lcom/android/mms/ui/MessageOptions;->detailDialogSpam:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 3044
    sget-object v0, Lcom/android/mms/ui/MessageOptions;->detailDialogSpam:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3045
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/MessageOptions;->detailDialogSpam:Landroid/app/AlertDialog;

    .line 3047
    :cond_0
    return-void
.end method

.method private confirmCancelDialog(Landroid/content/DialogInterface$OnClickListener;Z)V
    .locals 3
    .parameter "listener"
    .parameter "locked"

    .prologue
    .line 2956
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2957
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0a017a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2958
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 2959
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2960
    if-eqz p2, :cond_0

    const v1, 0x7f0a049c

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2962
    const v1, 0x104000a

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2963
    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2964
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2965
    return-void

    .line 2960
    :cond_0
    const v1, 0x7f0a049b

    goto :goto_0
.end method

.method private confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;Z)V
    .locals 3
    .parameter "listener"
    .parameter "locked"

    .prologue
    .line 2117
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2118
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0a009a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2120
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2121
    if-eqz p2, :cond_0

    const v1, 0x7f0a009d

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2123
    const v1, 0x104000a

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2124
    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2125
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    sput-object v1, Lcom/android/mms/ui/MessageOptions;->deleteDialog:Landroid/app/AlertDialog;

    .line 2126
    sget-object v1, Lcom/android/mms/ui/MessageOptions;->deleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 2127
    return-void

    .line 2121
    :cond_0
    const v1, 0x7f0a009c

    goto :goto_0
.end method

.method private confirmRestoreDialog(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 2800
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2801
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0a0365

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2802
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 2803
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2804
    const v1, 0x7f0a0368

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2805
    const v1, 0x104000a

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2806
    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2807
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2808
    return-void
.end method

.method private convertAddress(Ljava/lang/String;J)Ljava/lang/String;
    .locals 6
    .parameter "address"
    .parameter "messageId"

    .prologue
    .line 2083
    iget-object v5, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v5, v5, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2084
    iget-object v5, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    invoke-static {v5, p2, p3}, Lcom/android/mms/ui/MessageUtils;->getViewTitleStrings(Landroid/content/Context;J)Ljava/util/ArrayList;

    move-result-object v4

    .line 2086
    .local v4, phoneNumbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2087
    .local v0, displayAddress:Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2088
    .local v2, numberCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 2089
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2090
    .local v3, phoneNumber:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2092
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2093
    :cond_0
    add-int/lit8 v5, v2, -0x1

    if-eq v1, v5, :cond_1

    .line 2094
    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2088
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2098
    .end local v3           #phoneNumber:Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2102
    .end local v0           #displayAddress:Ljava/lang/StringBuilder;
    .end local v1           #i:I
    .end local v2           #numberCount:I
    .end local v4           #phoneNumbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local p1
    :cond_3
    return-object p1
.end method

.method private createAttachmentDialog(ZJLjava/util/ArrayList;)V
    .locals 11
    .parameter "bSave"
    .parameter "msgId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZJ",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/AttachmentModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2600
    .local p4, showAttachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/AttachmentModel;>;"
    new-instance v6, Lcom/android/mms/ui/AttachmentListAdapter;

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    const v1, 0x7f03000f

    invoke-direct {v6, v0, v1, p4}, Lcom/android/mms/ui/AttachmentListAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    .line 2602
    .local v6, a:Lcom/android/mms/ui/AttachmentListAdapter;
    new-instance v8, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-direct {v8, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2603
    .local v8, b:Landroid/app/AlertDialog$Builder;
    const v0, 0x7f0a016a

    invoke-virtual {v8, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2604
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2606
    if-eqz p1, :cond_0

    .line 2607
    const v10, 0x7f0a010f

    new-instance v0, Lcom/android/mms/ui/MessageOptions$AttachOkListener;

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object v1, p0

    move v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/MessageOptions$AttachOkListener;-><init>(Lcom/android/mms/ui/MessageOptions;Landroid/content/Context;ZJ)V

    invoke-virtual {v8, v10, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2613
    :goto_0
    const v0, 0x7f0a006b

    new-instance v1, Lcom/android/mms/ui/MessageOptions$AttachCancelListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/mms/ui/MessageOptions$AttachCancelListener;-><init>(Lcom/android/mms/ui/MessageOptions;Lcom/android/mms/ui/MessageOptions$1;)V

    invoke-virtual {v8, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2614
    new-instance v0, Lcom/android/mms/ui/MessageOptions$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageOptions$5;-><init>(Lcom/android/mms/ui/MessageOptions;)V

    invoke-virtual {v8, v6, v0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2622
    new-instance v0, Lcom/android/mms/ui/MessageOptions$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageOptions$6;-><init>(Lcom/android/mms/ui/MessageOptions;)V

    invoke-virtual {v8, v0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 2657
    :try_start_0
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    .line 2658
    .local v7, attachListDialog:Landroid/app/AlertDialog;
    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    .line 2659
    const/4 v0, -0x1

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/android/mms/ui/AttachmentListAdapter;->setSaveButton(Landroid/widget/Button;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2664
    .end local v7           #attachListDialog:Landroid/app/AlertDialog;
    :goto_1
    return-void

    .line 2609
    :cond_0
    const v10, 0x7f0a003e

    new-instance v0, Lcom/android/mms/ui/MessageOptions$AttachOkListener;

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object v1, p0

    move v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/MessageOptions$AttachOkListener;-><init>(Lcom/android/mms/ui/MessageOptions;Landroid/content/Context;ZJ)V

    invoke-virtual {v8, v10, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 2660
    :catch_0
    move-exception v9

    .line 2662
    .local v9, e:Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private deleteFailedMsg(Lcom/android/mms/ui/MessageItem;)V
    .locals 9
    .parameter "msgItem"

    .prologue
    const/4 v8, 0x0

    .line 1896
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v2

    .line 1897
    .local v2, threadId:J
    invoke-direct {p0, v2, v3}, Lcom/android/mms/ui/MessageOptions;->checkMsgCount(J)I

    move-result v1

    .line 1898
    .local v1, messageCount:I
    const/4 v5, 0x1

    if-ne v1, v5, :cond_0

    .line 1899
    iget-object v5, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    const/4 v6, 0x0

    invoke-static {v5, v2, v3, v6}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 1900
    .local v0, conversation:Lcom/android/mms/data/Conversation;
    invoke-virtual {v0, v2, v3}, Lcom/android/mms/data/Conversation;->clearThreadId(J)V

    .line 1901
    iget-object v5, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/android/mms/data/Conversation;->init(Landroid/content/Context;)V

    .line 1904
    .end local v0           #conversation:Lcom/android/mms/data/Conversation;
    :cond_0
    const-string v5, "sms"

    iget-object v6, p1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1906
    sget-object v5, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v6, p1, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 1907
    .local v4, uri:Landroid/net/Uri;
    iget-object v5, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    iget-object v6, p0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v5, v6, v4, v8, v8}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1913
    .end local v4           #uri:Landroid/net/Uri;
    :cond_1
    :goto_0
    return-void

    .line 1909
    :cond_2
    const-string v5, "mms"

    iget-object v6, p1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1910
    sget-object v5, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v6, p1, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 1911
    .restart local v4       #uri:Landroid/net/Uri;
    iget-object v5, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    iget-object v6, p0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v5, v6, v4, v8, v8}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private finishViewerCheckFolderViewMode()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 2189
    const-string v0, "Mms/MessageOptions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finishViewerCheckFolderViewMode(), mLaunchApp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mms/ui/MessageOptions;->mLaunchApp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2190
    sget v0, Lcom/android/mms/ui/MessageOptions;->mLaunchApp:I

    if-eq v0, v3, :cond_5

    .line 2192
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSinglePageSlideView()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2193
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/android/mms/ui/SlideshowActivity;

    if-eqz v0, :cond_1

    .line 2195
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setResult(I)V

    .line 2196
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 2227
    :cond_0
    :goto_0
    return-void

    .line 2197
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/android/mms/ui/MmsSinglePageActivity;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/android/mms/ui/SmsViewerActivity;

    if-eqz v0, :cond_0

    .line 2198
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 2201
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/android/mms/ui/SlideshowActivity;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/android/mms/ui/MmsSinglePageActivity;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/android/mms/ui/SmsViewerActivity;

    if-eqz v0, :cond_0

    .line 2202
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 2214
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/android/mms/ui/BoxListViewActivity;

    if-eqz v0, :cond_6

    .line 2215
    const-string v0, "Mms/MessageOptions"

    const-string v1, "finishViewerCheckFolderViewMode()[1] BoxListViewActivity"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2216
    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSinglePageSlideView()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/android/mms/ui/SlideshowActivity;

    if-eqz v0, :cond_7

    .line 2217
    const-string v0, "Mms/MessageOptions"

    const-string v1, "finishViewerCheckFolderViewMode()[2] SlideshowActivity"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2219
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setResult(I)V

    .line 2220
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 2222
    :cond_7
    const-string v0, "Mms/MessageOptions"

    const-string v1, "finishViewerCheckFolderViewMode()[3]"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2224
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method private forwardMessageStartActivityForMms(Lcom/android/mms/ui/MessageItem;ZLcom/google/android/mms/pdu/SendReq;Ljava/lang/String;Z)V
    .locals 10
    .parameter "msgItem"
    .parameter "IsSlideshow"
    .parameter "sendReq"
    .parameter "subject"
    .parameter "checkCRMode"

    .prologue
    const/4 v9, 0x1

    .line 1981
    const-string v5, "Mms/MessageOptions"

    const-string v6, "forwardMessageStartActivityForMms()"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1983
    new-instance v1, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    const-class v6, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1984
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "exit_on_sent"

    invoke-virtual {v1, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1985
    const-string v5, "forwarded_message"

    invoke-virtual {v1, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1986
    const/4 v4, 0x0

    .line 1988
    .local v4, uri:Landroid/net/Uri;
    :try_start_0
    iget-object v5, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v2

    .line 1989
    .local v2, persister:Lcom/google/android/mms/pdu/PduPersister;
    sget-object v5, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, p3, v5}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1996
    const-string v5, "msg_uri"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1997
    const-string v5, "subject"

    invoke-virtual {v1, v5, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1998
    const-string v5, "IsSlide"

    invoke-virtual {v1, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1999
    const-string v5, "checkCRMode"

    invoke-virtual {v1, v5, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2000
    iget-boolean v5, p0, Lcom/android/mms/ui/MessageOptions;->isLockedMessageList:Z

    if-eq v5, v9, :cond_0

    iget-wide v5, p1, Lcom/android/mms/ui/MessageItem;->mReserved:J

    const-wide/16 v7, 0x1

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    .line 2001
    :cond_0
    const-string v5, "locked_message_list"

    invoke-virtual {v1, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2002
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMenuInsertSenderInfoWhenFwdMsg()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageFragment;->isInsertSenderInfoWhenFwdMsgEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2003
    iget-object v5, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-static {v5, p1}, Lcom/android/mms/ui/MessageUtils;->getSenderInformation(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v3

    .line 2004
    .local v3, senderInformation:Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 2005
    const-string v5, "sender_information"

    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2007
    .end local v3           #senderInformation:Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    const-string v6, "com.android.mms.ui.ForwardMessageActivity"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 2009
    iget-object v5, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 2010
    .end local v2           #persister:Lcom/google/android/mms/pdu/PduPersister;
    :goto_0
    return-void

    .line 1990
    :catch_0
    move-exception v0

    .line 1991
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v5, "Mms/MessageOptions"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to copy message: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1992
    iget-object v5, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    const v6, 0x7f0a0056

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private forwardMessageStartActivityForMms(Lcom/android/mms/ui/MessageItem;ZLcom/google/android/mms/pdu/SendReq;Ljava/lang/String;ZZ)V
    .locals 11
    .parameter "msgItem"
    .parameter "IsSlideshow"
    .parameter "sendReq"
    .parameter "subject"
    .parameter "checkCRMode"
    .parameter "editMsg"

    .prologue
    .line 2017
    const-string v7, "Mms/MessageOptions"

    const-string v8, "forwardMessageStartActivityForMms()#2"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2019
    new-instance v3, Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    const-class v8, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2020
    .local v3, intent:Landroid/content/Intent;
    const-string v7, "exit_on_sent"

    const/4 v8, 0x1

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2021
    const-string v7, "forwarded_message"

    const/4 v8, 0x1

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2023
    const/4 v7, 0x1

    move/from16 v0, p6

    if-ne v0, v7, :cond_0

    .line 2024
    iget-object v7, p1, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    iget-wide v8, p1, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-direct {p0, v7, v8, v9}, Lcom/android/mms/ui/MessageOptions;->convertAddress(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    .line 2027
    .local v1, address:Ljava/lang/String;
    const-string v7, "recipients"

    invoke-virtual {v3, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2028
    const-string v7, "edit_message"

    const/4 v8, 0x1

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2031
    sget v7, Lcom/android/mms/ui/MessageOptions;->mLaunchApp:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 2032
    const-string v7, "fromFolderView"

    const/4 v8, 0x1

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2036
    .end local v1           #address:Ljava/lang/String;
    :cond_0
    const/4 v6, 0x0

    .line 2038
    .local v6, uri:Landroid/net/Uri;
    :try_start_0
    iget-object v7, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v4

    .line 2039
    .local v4, persister:Lcom/google/android/mms/pdu/PduPersister;
    sget-object v7, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, p3, v7}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 2046
    const-string v7, "msg_uri"

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2047
    const-string v7, "subject"

    invoke-virtual {v3, v7, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2048
    const-string v7, "IsSlide"

    invoke-virtual {v3, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2049
    const-string v7, "checkCRMode"

    move/from16 v0, p5

    invoke-virtual {v3, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2050
    const/4 v7, 0x1

    move/from16 v0, p6

    if-ne v0, v7, :cond_1

    .line 2051
    iget-wide v7, p1, Lcom/android/mms/ui/MessageItem;->mReserved:J

    const-wide/16 v9, 0x1

    cmp-long v7, v7, v9

    if-nez v7, :cond_1

    .line 2052
    const-string v7, "reserved"

    const/4 v8, 0x1

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2053
    const-string v7, "reservedTime"

    iget-wide v8, p1, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    invoke-virtual {v3, v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2056
    :cond_1
    iget-boolean v7, p0, Lcom/android/mms/ui/MessageOptions;->isLockedMessageList:Z

    const/4 v8, 0x1

    if-eq v7, v8, :cond_2

    iget-wide v7, p1, Lcom/android/mms/ui/MessageItem;->mReserved:J

    const-wide/16 v9, 0x1

    cmp-long v7, v7, v9

    if-nez v7, :cond_3

    .line 2057
    :cond_2
    const-string v7, "locked_message_list"

    const/4 v8, 0x1

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2059
    :cond_3
    if-nez p6, :cond_4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMenuInsertSenderInfoWhenFwdMsg()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-static {v7}, Lcom/android/mms/ui/ComposeMessageFragment;->isInsertSenderInfoWhenFwdMsgEnabled(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2062
    iget-object v7, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-static {v7, p1}, Lcom/android/mms/ui/MessageUtils;->getSenderInformation(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v5

    .line 2063
    .local v5, senderInformation:Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 2064
    const-string v7, "sender_information"

    invoke-virtual {v3, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2066
    .end local v5           #senderInformation:Ljava/lang/String;
    :cond_4
    iget-object v7, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    const-string v8, "com.android.mms.ui.ForwardMessageActivity"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 2068
    iget-object v7, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 2071
    const/4 v7, 0x1

    move/from16 v0, p6

    if-ne v0, v7, :cond_5

    .line 2072
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageOptions;->deleteFailedMsg(Lcom/android/mms/ui/MessageItem;)V

    .line 2074
    invoke-direct {p0}, Lcom/android/mms/ui/MessageOptions;->finishViewerCheckFolderViewMode()V

    .line 2077
    .end local v4           #persister:Lcom/google/android/mms/pdu/PduPersister;
    :cond_5
    :goto_0
    return-void

    .line 2040
    :catch_0
    move-exception v2

    .line 2041
    .local v2, e:Lcom/google/android/mms/MmsException;
    const-string v7, "Mms/MessageOptions"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to copy message: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2042
    iget-object v7, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    const v8, 0x7f0a0056

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private getAvailableStorage()J
    .locals 6

    .prologue
    .line 2489
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 2490
    .local v0, AvailableStorage:Ljava/lang/String;
    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 2491
    .local v1, stat:Landroid/os/StatFs;
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    return-wide v2
.end method

.method private getCallableRecipient()Ljava/lang/String;
    .locals 4

    .prologue
    .line 627
    invoke-direct {p0}, Lcom/android/mms/ui/MessageOptions;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    .line 629
    .local v1, recipients:Lcom/android/mms/data/ContactList;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 630
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 632
    .local v0, contact:Lcom/android/mms/data/Contact;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->isEmail()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->isPhoneNumber()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 633
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mAddressToCall:Ljava/lang/String;

    .line 634
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    .line 638
    .end local v0           #contact:Lcom/android/mms/data/Contact;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getCurSlideBody()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1109
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 1121
    :cond_0
    :goto_0
    return-object v0

    .line 1115
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    iget v3, p0, Lcom/android/mms/ui/MessageOptions;->mCurSlideLocation:I

    invoke-virtual {v2, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v1

    .line 1116
    .local v1, textModel:Lcom/android/mms/model/TextModel;
    if-eqz v1, :cond_0

    .line 1120
    invoke-virtual {v1}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v0

    .line 1121
    .local v0, result:Ljava/lang/String;
    goto :goto_0
.end method

.method private getFailedAddress(J)[Ljava/lang/String;
    .locals 11
    .parameter "groupId"

    .prologue
    .line 1341
    const/4 v10, 0x0

    .line 1342
    .local v10, dests:[Ljava/lang/String;
    const/4 v9, 0x0

    .line 1343
    .local v9, cursor:Landroid/database/Cursor;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "group_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1346
    .local v4, selection:Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "address"

    aput-object v6, v3, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1351
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1352
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v10, v0, [Ljava/lang/String;

    .line 1353
    const/4 v7, 0x0

    .local v7, count:I
    move v8, v7

    .line 1355
    .end local v7           #count:I
    .local v8, count:I
    :goto_0
    add-int/lit8 v7, v8, 0x1

    .end local v8           #count:I
    .restart local v7       #count:I
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v10, v8

    .line 1356
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 1359
    .end local v7           #count:I
    :cond_0
    if-eqz v9, :cond_1

    .line 1360
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1363
    :cond_1
    return-object v10

    .line 1359
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_2

    .line 1360
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1359
    :cond_2
    throw v0

    .restart local v7       #count:I
    :cond_3
    move v8, v7

    .end local v7           #count:I
    .restart local v8       #count:I
    goto :goto_0
.end method

.method private getNameWithoutEscape(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "title"

    .prologue
    .line 2495
    const/16 v2, 0xb

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "\\"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "/"

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, ":"

    aput-object v3, v0, v2

    const/4 v2, 0x3

    const-string v3, "*"

    aput-object v3, v0, v2

    const/4 v2, 0x4

    const-string v3, "?"

    aput-object v3, v0, v2

    const/4 v2, 0x5

    const-string v3, "\""

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "<"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string v3, ">"

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const-string v3, "|"

    aput-object v3, v0, v2

    const/16 v2, 0x9

    const-string v3, ";"

    aput-object v3, v0, v2

    const/16 v2, 0xa

    const-string v3, "\n"

    aput-object v3, v0, v2

    .line 2498
    .local v0, INVALID_CHAR:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 2499
    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_1

    .line 2501
    const-string v2, "\\\\"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ":"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "[*]"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "[?]"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\""

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "<"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ">"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "[|]"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ";"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2508
    :cond_0
    return-object p1

    .line 2498
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getRecipients()Lcom/android/mms/data/ContactList;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 646
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mRecipients:Lcom/android/mms/data/ContactList;

    if-nez v1, :cond_0

    .line 648
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v1, v1, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 649
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v2, v2, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    invoke-static {v1, v2, v3}, Lcom/android/mms/ui/MessageUtils;->getAddressByThreadId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 651
    .local v0, recipients:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 652
    invoke-static {v0, v5, v5}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mRecipients:Lcom/android/mms/data/ContactList;

    .line 657
    .end local v0           #recipients:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mRecipients:Lcom/android/mms/data/ContactList;

    return-object v1
.end method

.method private getRecordFileName(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;
    .locals 7
    .parameter "msgItem"

    .prologue
    .line 2512
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v5, "yyMMdd_HHmm_S"

    invoke-direct {v1, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2513
    .local v1, df:Ljava/text/SimpleDateFormat;
    iget-wide v5, p1, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2515
    .local v0, date:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2516
    .local v3, fileName:Ljava/lang/StringBuilder;
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2517
    const-string v5, "_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2519
    const-string v2, ""

    .line 2520
    .local v2, displayname:Ljava/lang/String;
    iget-object v5, p1, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/mms/ui/MessageOptions;->getNameWithoutEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2521
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2523
    const/4 v4, 0x1

    .line 2526
    .local v4, num:I
    :goto_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v4}, Lcom/android/mms/ui/MessageOptions;->buildFileNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v5, v6}, Lcom/android/mms/ui/MessageOptions;->checkFileNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2527
    add-int/lit8 v4, v4, 0x1

    .line 2528
    goto :goto_0

    .line 2532
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v4}, Lcom/android/mms/ui/MessageOptions;->buildFileNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private hasBody()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 611
    const/4 v0, 0x0

    .line 613
    .local v0, hasBody:Z
    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 614
    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v3, v3, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    .line 621
    :goto_0
    const-string v1, "Mms/MessageOptions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasBody = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    return v0

    :cond_0
    move v0, v2

    .line 614
    goto :goto_0

    .line 615
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 616
    invoke-direct {p0}, Lcom/android/mms/ui/MessageOptions;->getCurSlideBody()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    :goto_1
    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    .line 618
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSingleSms(Lcom/android/mms/ui/MessageItem;)Z
    .locals 5
    .parameter "msgItem"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2574
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v1

    .line 2577
    .local v1, smsManager:Landroid/telephony/SmsManager;
    iget-object v4, p0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 2583
    :cond_0
    :goto_0
    return v2

    .line 2580
    :cond_1
    iget-object v4, p0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2581
    .local v0, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gt v4, v3, :cond_0

    move v2, v3

    .line 2583
    goto :goto_0
.end method

.method private islockmessage(Ljava/lang/String;)Z
    .locals 10
    .parameter "type"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 664
    const/4 v7, 0x0

    .line 666
    .local v7, islocked:Z
    const-string v0, "mms"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 667
    new-array v2, v5, [Ljava/lang/String;

    const-string v0, "locked"

    aput-object v0, v2, v4

    .line 670
    .local v2, PROJECTION:[Ljava/lang/String;
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-wide v4, Lcom/android/mms/ui/MessageOptions;->msgId:J

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 671
    .local v1, messageUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 681
    .local v6, cursor:Landroid/database/Cursor;
    :goto_0
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 682
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v8

    .line 683
    .local v8, islocked_long:J
    const-wide/16 v3, 0x1

    cmp-long v0, v8, v3

    if-nez v0, :cond_0

    .line 684
    const/4 v7, 0x1

    .line 688
    .end local v8           #islocked_long:J
    :cond_0
    if-eqz v6, :cond_1

    .line 689
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 692
    :cond_1
    return v7

    .line 674
    .end local v1           #messageUri:Landroid/net/Uri;
    .end local v2           #PROJECTION:[Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_2
    new-array v2, v5, [Ljava/lang/String;

    const-string v0, "locked"

    aput-object v0, v2, v4

    .line 677
    .restart local v2       #PROJECTION:[Ljava/lang/String;
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-wide v4, Lcom/android/mms/ui/MessageOptions;->msgId:J

    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 678
    .restart local v1       #messageUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .restart local v6       #cursor:Landroid/database/Cursor;
    goto :goto_0

    .line 688
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 689
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 688
    :cond_3
    throw v0
.end method

.method private launchOrMoveBackToComposerForReply()V
    .locals 8

    .prologue
    .line 1084
    iget-object v5, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v3

    .line 1085
    .local v3, threadId:J
    iget-object v5, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-static {v5, v3, v4}, Lcom/android/mms/ui/ComposeMessageFragment;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v1

    .line 1086
    .local v1, intent:Landroid/content/Intent;
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-gtz v5, :cond_0

    .line 1087
    const-string v5, "address"

    iget-object v6, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v6, v6, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1090
    :cond_0
    const/4 v2, 0x0

    .line 1091
    .local v2, launchInNewTask:Z
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLockedMsgManager()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1092
    iget-object v5, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "requestLockedMessageView"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1093
    .local v0, fromLockedMsgManager:Z
    if-eqz v0, :cond_1

    .line 1094
    const/4 v2, 0x1

    .line 1098
    .end local v0           #fromLockedMsgManager:Z
    :cond_1
    if-eqz v2, :cond_2

    .line 1099
    const/high16 v5, 0x1000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1100
    iget-object v5, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    const-string v6, "com.android.mms.ui.ReplyMessageActivity"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 1105
    :goto_0
    iget-object v5, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1106
    return-void

    .line 1102
    :cond_2
    const/high16 v5, 0x400

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static notifyFolderViewerClose()V
    .locals 1

    .prologue
    .line 702
    sget-object v0, Lcom/android/mms/ui/MessageOptions;->detailDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/mms/ui/MessageOptions;->detailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 703
    sget-object v0, Lcom/android/mms/ui/MessageOptions;->detailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 704
    :cond_0
    return-void
.end method

.method private openNewcomposerStartActivityForMms(Ljava/util/ArrayList;ZZ)V
    .locals 7
    .parameter
    .parameter "checkCRMode"
    .parameter "setFocusRecipient"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .local p1, numList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3143
    const-string v3, "Mms/MessageOptions"

    const-string v4, "openNewcomposerStartActivityForMms()"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3144
    const/4 v2, 0x0

    .line 3146
    .local v2, subject:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    const-class v4, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3147
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "add_recipient_message"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3148
    const-string v3, "sendto"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3150
    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->getSubject()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3151
    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v3}, Lcom/android/mms/data/WorkingMessage;->getSubject()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3153
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSubjectLength()I

    move-result v1

    .line 3154
    .local v1, maxSubjectLength:I
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v1, :cond_0

    .line 3155
    invoke-virtual {v2, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 3158
    .end local v1           #maxSubjectLength:I
    :cond_0
    const-string v3, "msg_uri"

    iget-object v4, p0, Lcom/android/mms/ui/MessageOptions;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v4}, Lcom/android/mms/data/WorkingMessage;->getMessageUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3159
    const-string v3, "subject"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3161
    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v3, v5}, Lcom/android/mms/data/WorkingMessage;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3162
    const-string v3, "sms_body"

    iget-object v4, p0, Lcom/android/mms/ui/MessageOptions;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v4, v5}, Lcom/android/mms/data/WorkingMessage;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3164
    :cond_1
    const-string v3, "checkCRMode"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3165
    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->getWorkingMessage()Lcom/android/mms/data/WorkingMessage;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Lcom/android/mms/data/WorkingMessage;->saveDraft(ZZ)Z

    .line 3166
    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageFragment;->resetDraftMessage()V

    .line 3167
    invoke-static {v6}, Lcom/android/mms/model/SlideshowModel;->setAddAttachmentSlideForCompose(Z)V

    .line 3168
    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v3, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->onNewIntent(Landroid/content/Intent;)V

    .line 3169
    return-void
.end method

.method private resendGroupSmsMessageItem(Lcom/android/mms/ui/MessageItem;[Ljava/lang/String;Lcom/android/mms/data/Conversation;)V
    .locals 11
    .parameter "msgItem"
    .parameter "dests"
    .parameter "conversation"

    .prologue
    .line 1410
    const-wide/16 v4, 0x0

    .line 1411
    .local v4, threadId:J
    if-nez p3, :cond_1

    .line 1412
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v4

    .line 1416
    :goto_0
    const-wide/16 v1, 0x0

    cmp-long v1, v4, v1

    if-nez v1, :cond_2

    .line 1417
    const-string v1, "Mms/MessageOptions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to send SMS message, threadId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1442
    :cond_0
    :goto_1
    return-void

    .line 1414
    :cond_1
    invoke-virtual {p3}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v4

    goto :goto_0

    .line 1421
    :cond_2
    const-string v1, "Mms/MessageOptions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resendGroupSmsMessageItem() msgItem.mSimSlot: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/mms/ui/MessageItem;->mSimSlot:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1422
    new-instance v0, Lcom/android/mms/transaction/SmsMessageSender;

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    iget-wide v6, p1, Lcom/android/mms/ui/MessageItem;->mGroupId:J

    iget v8, p1, Lcom/android/mms/ui/MessageItem;->mSimSlot:I

    move-object v2, p2

    invoke-direct/range {v0 .. v8}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;JJI)V

    .local v0, sender:Lcom/android/mms/transaction/MessageSender;
    move-object v1, v0

    .line 1423
    check-cast v1, Lcom/android/mms/transaction/SmsMessageSender;

    iget-boolean v2, p1, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    invoke-virtual {v1, v2}, Lcom/android/mms/transaction/SmsMessageSender;->setLocked(Z)V

    .line 1425
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePriority()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1426
    const-string v1, "Mms/MessageOptions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PriorityLevel="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/mms/ui/MessageItem;->mSMSPriority:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1427
    iget v1, p1, Lcom/android/mms/ui/MessageItem;->mSMSPriority:I

    invoke-interface {v0, v1}, Lcom/android/mms/transaction/MessageSender;->setPriorityLevel(I)V

    .line 1430
    :cond_3
    :try_start_0
    invoke-interface {v0, v4, v5}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1435
    :goto_2
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->SMS_GROUP_CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p1, Lcom/android/mms/ui/MessageItem;->mGroupId:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 1436
    .local v10, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "type=5"

    const/4 v6, 0x0

    invoke-static {v1, v2, v10, v3, v6}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1439
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/android/mms/ui/MessageOptions;->mLaunchApp:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1440
    invoke-direct {p0}, Lcom/android/mms/ui/MessageOptions;->finishViewerCheckFolderViewMode()V

    goto :goto_1

    .line 1431
    .end local v10           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v9

    .line 1432
    .local v9, e:Ljava/lang/Exception;
    const-string v1, "Mms/MessageOptions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to send SMS message, threadId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private resendMmsMessageItem(Lcom/android/mms/ui/MessageItem;)V
    .locals 17
    .parameter "msgItem"

    .prologue
    .line 1295
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v13

    .line 1296
    .local v13, threadId:J
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    .line 1298
    .local v12, mmsUri:Landroid/net/Uri;
    const/4 v8, 0x0

    .line 1300
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "m_size"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1304
    if-eqz v8, :cond_3

    .line 1305
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSizeScaleForPendingMmsAllowed()I

    move-result v2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v3

    mul-int/2addr v2, v3

    int-to-long v10, v2

    .line 1307
    .local v10, maxMessageSize:J
    const-wide/16 v15, 0x0

    .line 1308
    .local v15, totalPendingSize:J
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1309
    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    add-long/2addr v15, v2

    goto :goto_0

    .line 1311
    :cond_0
    cmp-long v2, v15, v10

    if-ltz v2, :cond_3

    .line 1312
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0114

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1318
    if-eqz v8, :cond_1

    .line 1319
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1337
    .end local v10           #maxMessageSize:J
    .end local v15           #totalPendingSize:J
    :cond_1
    :goto_1
    return-void

    .line 1318
    :catchall_0
    move-exception v2

    if-eqz v8, :cond_2

    .line 1319
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1318
    :cond_2
    throw v2

    :cond_3
    if-eqz v8, :cond_4

    .line 1319
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1323
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->updatePendingStatus()V

    .line 1324
    new-instance v1, Lcom/android/mms/transaction/MmsMessageSender;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    int-to-long v4, v3

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/mms/ui/MessageItem;->mSimSlot:I

    move-object v3, v12

    invoke-direct/range {v1 .. v6}, Lcom/android/mms/transaction/MmsMessageSender;-><init>(Landroid/content/Context;Landroid/net/Uri;JI)V

    .line 1326
    .local v1, sender:Lcom/android/mms/transaction/MessageSender;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePriority()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1327
    const-string v2, "Mms/MessageOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PriorityLevel="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/mms/ui/MessageItem;->mMMSPriority:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1328
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/mms/ui/MessageItem;->mMMSPriority:I

    invoke-interface {v1, v2}, Lcom/android/mms/transaction/MessageSender;->setPriorityLevel(I)V

    .line 1331
    :cond_5
    :try_start_1
    invoke-interface {v1, v13, v14}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1332
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v12, v4, v5}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1334
    :catch_0
    move-exception v9

    .line 1335
    .local v9, e:Ljava/lang/Exception;
    const-string v2, "Mms/MessageOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to send message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", threadId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1
.end method

.method private resendSmsMessageItem(Lcom/android/mms/ui/MessageItem;)V
    .locals 13
    .parameter "msgItem"

    .prologue
    const/4 v12, 0x0

    .line 1257
    const-string v1, "Mms/MessageOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resendSmsMessageItem(),msgItem="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1259
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v4

    .line 1260
    .local v4, threadId:J
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    aput-object v3, v2, v1

    .line 1262
    .local v2, dests:[Ljava/lang/String;
    const-string v1, "Mms/MessageOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resendSmsMessageItem() msgItem.mSimSlot: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, p1, Lcom/android/mms/ui/MessageItem;->mSimSlot:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1266
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v1

    if-ge v8, v1, :cond_1

    .line 1267
    invoke-static {v8}, Lcom/android/mms/MmsConfig;->getIMSIbySimSlot(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v8}, Lcom/android/mms/MmsConfig;->getIMSIbySimSlot(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mSimImsi:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1268
    const-string v1, "Mms/MessageOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resendSmsMessageItem() msgItem.mSimSlot: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, p1, Lcom/android/mms/ui/MessageItem;->mSimSlot:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1269
    iput v8, p1, Lcom/android/mms/ui/MessageItem;->mSimSlot:I

    .line 1266
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1275
    :cond_1
    new-instance v0, Lcom/android/mms/transaction/SmsMessageSender;

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    iget-object v3, p1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    iget v6, p1, Lcom/android/mms/ui/MessageItem;->mSimSlot:I

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;JI)V

    .local v0, sender:Lcom/android/mms/transaction/MessageSender;
    move-object v1, v0

    .line 1277
    check-cast v1, Lcom/android/mms/transaction/SmsMessageSender;

    iget-boolean v3, p1, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    invoke-virtual {v1, v3}, Lcom/android/mms/transaction/SmsMessageSender;->setLocked(Z)V

    .line 1279
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePriority()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1280
    const-string v1, "Mms/MessageOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PriorityLevel="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, p1, Lcom/android/mms/ui/MessageItem;->mSMSPriority:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1281
    iget v1, p1, Lcom/android/mms/ui/MessageItem;->mSMSPriority:I

    invoke-interface {v0, v1}, Lcom/android/mms/transaction/MessageSender;->setPriorityLevel(I)V

    .line 1284
    :cond_2
    :try_start_0
    invoke-interface {v0, v4, v5}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1290
    :goto_1
    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v10, p1, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v1, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    .line 1291
    .local v9, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v1, v3, v9, v12, v12}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1292
    return-void

    .line 1285
    .end local v9           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v7

    .line 1286
    .local v7, e:Ljava/lang/Exception;
    const-string v1, "Mms/MessageOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to send SMS message, threadId="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private setLockIcon(Z)V
    .locals 1
    .parameter "isLock"

    .prologue
    .line 2722
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/android/mms/ui/MessageViewerInterface;

    if-eqz v0, :cond_0

    .line 2723
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iput-boolean p1, v0, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    .line 2724
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/MessageViewerInterface;

    invoke-interface {v0, p1}, Lcom/android/mms/ui/MessageViewerInterface;->updateMessageLockIcon(Z)V

    .line 2726
    :cond_0
    return-void
.end method

.method private tryToResendGroupSms(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;Z)V
    .locals 13
    .parameter "msgItem"
    .parameter "conversation"
    .parameter "closeActivity"

    .prologue
    .line 1387
    iget-wide v0, p1, Lcom/android/mms/ui/MessageItem;->mGroupId:J

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/MessageOptions;->getFailedAddress(J)[Ljava/lang/String;

    move-result-object v3

    .line 1388
    .local v3, dests:[Ljava/lang/String;
    if-nez v3, :cond_0

    .line 1407
    :goto_0
    return-void

    .line 1391
    :cond_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1392
    .local v11, recipients:Ljava/lang/StringBuilder;
    move-object v6, v3

    .local v6, arr$:[Ljava/lang/String;
    array-length v9, v6

    .local v9, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_1
    if-ge v8, v9, :cond_2

    aget-object v10, v6, v8

    .line 1393
    .local v10, recipient:Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1394
    const-string v0, ", "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1396
    :cond_1
    invoke-static {v10}, Lcom/android/mms/data/Contact;->getContactName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1392
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1399
    .end local v10           #recipient:Ljava/lang/String;
    :cond_2
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-direct {v7, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1400
    .local v7, builder:Landroid/app/AlertDialog$Builder;
    const v0, 0x7f0a023d

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1401
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a023e

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v11, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1403
    const v12, 0x7f0a01e7

    new-instance v0, Lcom/android/mms/ui/MessageOptions$ResendGroupSmsListener;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/MessageOptions$ResendGroupSmsListener;-><init>(Lcom/android/mms/ui/MessageOptions;Lcom/android/mms/ui/MessageItem;[Ljava/lang/String;Lcom/android/mms/data/Conversation;Z)V

    invoke-virtual {v7, v12, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1405
    const v0, 0x7f0a01e9

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1406
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method


# virtual methods
.method public ReplyAllMessage(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;Ljava/util/ArrayList;)V
    .locals 6
    .parameter "context"
    .parameter "msgItem"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/mms/ui/MessageItem;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, recipients:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const v5, 0x7f0a004b

    const/4 v4, 0x1

    .line 1918
    const/4 v0, 0x0

    .line 1920
    .local v0, TempSubject:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSubject()Z

    move-result v2

    if-eq v2, v4, :cond_2

    .line 1921
    iget-object v2, p2, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1922
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1923
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1933
    :cond_0
    :goto_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1934
    .local v1, replyallIntent:Landroid/content/Intent;
    const-string v2, "sendto"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1935
    iget-object v2, p2, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1936
    const-string v2, "subject"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1938
    :cond_1
    const-string v2, "replyAll"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1939
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1940
    const-string v2, "smsto:"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1941
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1942
    return-void

    .line 1926
    .end local v1           #replyallIntent:Landroid/content/Intent;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1928
    iget-object v2, p2, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1929
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public SpamOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2753
    iget-object v5, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-nez v5, :cond_0

    .line 2775
    :goto_0
    return v3

    .line 2757
    :cond_0
    const/4 v2, 0x0

    .line 2758
    .local v2, uri:Landroid/net/Uri;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    .line 2772
    :sswitch_0
    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {p0, v3, v6, v4}, Lcom/android/mms/ui/MessageOptions;->viewSpamMessageDetail(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;Z)V

    move v3, v4

    .line 2773
    goto :goto_0

    .line 2760
    :sswitch_1
    new-instance v1, Lcom/android/mms/ui/MessageOptions$RestoreMessageListener;

    invoke-direct {v1, p0, v6}, Lcom/android/mms/ui/MessageOptions$RestoreMessageListener;-><init>(Lcom/android/mms/ui/MessageOptions;Lcom/android/mms/ui/MessageOptions$1;)V

    .line 2761
    .local v1, Rl:Lcom/android/mms/ui/MessageOptions$RestoreMessageListener;
    invoke-direct {p0, v1}, Lcom/android/mms/ui/MessageOptions;->confirmRestoreDialog(Landroid/content/DialogInterface$OnClickListener;)V

    move v3, v4

    .line 2762
    goto :goto_0

    .line 2764
    .end local v1           #Rl:Lcom/android/mms/ui/MessageOptions$RestoreMessageListener;
    :sswitch_2
    const-string v5, "mms"

    iget-object v6, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v6, v6, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2765
    sget-object v5, Landroid/provider/Telephony$SpamMms;->CONTENT_URI:Landroid/net/Uri;

    sget-wide v6, Lcom/android/mms/ui/MessageOptions;->msgId:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 2768
    :goto_1
    new-instance v0, Lcom/android/mms/ui/MessageOptions$DeleteMessageListener;

    invoke-direct {v0, p0, v2, v3}, Lcom/android/mms/ui/MessageOptions$DeleteMessageListener;-><init>(Lcom/android/mms/ui/MessageOptions;Landroid/net/Uri;Z)V

    .line 2769
    .local v0, Dl:Lcom/android/mms/ui/MessageOptions$DeleteMessageListener;
    invoke-direct {p0, v0, v3}, Lcom/android/mms/ui/MessageOptions;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;Z)V

    move v3, v4

    .line 2770
    goto :goto_0

    .line 2767
    .end local v0           #Dl:Lcom/android/mms/ui/MessageOptions$DeleteMessageListener;
    :cond_1
    sget-object v5, Landroid/provider/Telephony$SpamSms;->CONTENT_URI:Landroid/net/Uri;

    sget-wide v6, Lcom/android/mms/ui/MessageOptions;->msgId:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    goto :goto_1

    .line 2758
    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x12 -> :sswitch_2
        0x28 -> :sswitch_1
    .end sparse-switch
.end method

.method public addChnRecomposeOption(Landroid/view/Menu;)V
    .locals 7
    .parameter "menu"

    .prologue
    const/4 v6, 0x0

    .line 2982
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    if-eqz v2, :cond_4

    .line 2989
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v2, v2, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    .line 2990
    const-string v1, ""

    .line 2991
    .local v1, szRecipients:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v3, v3, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    invoke-static {v2, v3, v4}, Lcom/android/mms/ui/MessageUtils;->getAddressByThreadId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 2993
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2994
    const-string v2, ";"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2995
    .local v0, dests:[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 2996
    aget-object v2, v0, v6

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    aget-object v2, v0, v6

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->isValidSmsAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3002
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v2, v2, Lcom/android/mms/ui/MessageItem;->mReserved:J

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableScheduledMessage()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3003
    :cond_0
    const/16 v2, 0xe

    const v3, 0x7f0a00b7

    invoke-interface {p1, v6, v2, v6, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f0200c0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3006
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->isVoiceCallAvailabe(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3007
    const/16 v2, 0x2a

    const v3, 0x7f0a0009

    invoke-interface {p1, v6, v2, v6, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f0200b1

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3010
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVideoCall()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3016
    :cond_3
    aget-object v2, v0, v6

    iput-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mAddressToCall:Ljava/lang/String;

    .line 3022
    .end local v0           #dests:[Ljava/lang/String;
    .end local v1           #szRecipients:Ljava/lang/String;
    :cond_4
    return-void
.end method

.method public confirmRegisterAsSpamNumber()V
    .locals 3

    .prologue
    .line 3173
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3174
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0a039a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 3175
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 3176
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 3177
    const v1, 0x7f0a03a7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 3178
    const v1, 0x104000a

    new-instance v2, Lcom/android/mms/ui/MessageOptions$7;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/MessageOptions$7;-><init>(Lcom/android/mms/ui/MessageOptions;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3186
    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3187
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3188
    return-void
.end method

.method public copyMessageToSDCARD(Lcom/android/mms/ui/MessageItem;)V
    .locals 3
    .parameter "msgItem"

    .prologue
    const/4 v2, 0x0

    .line 2425
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0, p1}, Lcom/android/mms/ui/MessageOptions;->writeFile(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2426
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a00cb

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2432
    :goto_0
    return-void

    .line 2429
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a034b

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public copyMessageToSIM(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;I)V
    .locals 30
    .parameter "msgItem"
    .parameter "conversation"
    .parameter "simLoc"

    .prologue
    .line 2262
    const-string v6, "Mms/MessageOptions"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "copyMessageToSIM(),msgItem="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-static {v6, v0}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2264
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableScheduledMessage()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mReserved:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x1

    cmp-long v6, v26, v28

    if-nez v6, :cond_0

    .line 2265
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const v27, 0x7f0a049d

    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v6, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 2417
    :goto_0
    return-void

    .line 2270
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v7

    .line 2271
    .local v7, mboxId:I
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    .line 2277
    .local v4, str:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    move-wide/from16 v22, v0

    .line 2278
    .local v22, time:J
    new-instance v25, Landroid/text/format/Time;

    invoke-direct/range {v25 .. v25}, Landroid/text/format/Time;-><init>()V

    .line 2279
    .local v25, ts:Landroid/text/format/Time;
    move-object/from16 v0, v25

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 2280
    invoke-virtual/range {v25 .. v25}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v18

    .line 2282
    .local v18, stime:Ljava/lang/String;
    const-string v6, "Mms/MessageOptions"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "stime : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-static {v6, v0}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2284
    const/4 v6, 0x2

    const/16 v26, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v26

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 2285
    .local v20, temp_date:Ljava/lang/String;
    const/16 v6, 0x9

    const/16 v26, 0xf

    move-object/from16 v0, v18

    move/from16 v1, v26

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .line 2287
    .local v21, temp_time:Ljava/lang/String;
    const-string v6, "Mms/MessageOptions"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "temp_date : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-static {v6, v0}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2288
    const-string v6, "Mms/MessageOptions"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "temp_date : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-static {v6, v0}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2290
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2292
    .local v8, mTimestamp:Ljava/lang/String;
    const-string v6, "Mms/MessageOptions"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "timestamp : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-static {v6, v0}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2296
    invoke-static/range {p3 .. p3}, Landroid/telephony/MultiSimSmsManager;->getDefault(I)Landroid/telephony/SmsManager;

    move-result-object v3

    .line 2299
    .local v3, smsManager:Landroid/telephony/SmsManager;
    invoke-virtual {v3, v4}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v15

    .line 2300
    .local v15, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 2302
    .local v14, messageCount:I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 2305
    .local v16, prefs:Landroid/content/SharedPreferences;
    const/4 v6, 0x1

    move/from16 v0, p3

    if-ne v0, v6, :cond_1

    .line 2306
    const-string v6, "pref_key_manage_smsc_address_sim2"

    const-string v26, "Not Set"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-interface {v0, v6, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2311
    .local v5, sca:Ljava/lang/String;
    :goto_1
    const/4 v6, 0x1

    if-le v14, v6, :cond_2

    .line 2312
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const v27, 0x7f0a0024

    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v6, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 2308
    .end local v5           #sca:Ljava/lang/String;
    :cond_1
    const-string v6, "pref_key_manage_smsc_address"

    const-string v26, "Not Set"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-interface {v0, v6, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #sca:Ljava/lang/String;
    goto :goto_1

    .line 2318
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSMSP()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2319
    invoke-virtual {v3}, Landroid/telephony/SmsManager;->getSMSPAvailable()Z

    move-result v6

    if-nez v6, :cond_3

    .line 2320
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const v27, 0x7f0a0024

    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v6, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 2328
    :cond_3
    const/4 v10, 0x0

    .line 2329
    .local v10, dests:[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/ui/MessageItem;->isGroupSms()Z

    move-result v6

    if-eqz v6, :cond_4

    if-eqz p2, :cond_4

    .line 2330
    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v10

    .line 2336
    :goto_2
    if-nez v10, :cond_5

    .line 2337
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const v27, 0x7f0a0025

    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v6, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 2332
    :cond_4
    const/4 v6, 0x1

    new-array v10, v6, [Ljava/lang/String;

    .end local v10           #dests:[Ljava/lang/String;
    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v10, v6

    .restart local v10       #dests:[Ljava/lang/String;
    goto :goto_2

    .line 2342
    :cond_5
    const/16 v24, 0x0

    .line 2343
    .local v24, totalResult:I
    const/4 v12, 0x0

    .line 2344
    .local v12, failedCount:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_3
    array-length v6, v10

    if-ge v13, v6, :cond_b

    .line 2346
    :try_start_0
    aget-object v6, v10, v13

    if-eqz v6, :cond_6

    aget-object v6, v10, v13

    invoke-static {v6}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 2347
    :cond_6
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const v27, 0x7f0a0025

    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v6, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2380
    :catch_0
    move-exception v11

    .line 2381
    .local v11, e:Ljava/lang/NumberFormatException;
    const-string v6, "Mms/MessageOptions"

    const-string v26, "NumberFormatException :"

    move-object/from16 v0, v26

    invoke-static {v6, v0, v11}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2382
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const v27, 0x7f0a0025

    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v6, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 2344
    .end local v11           #e:Ljava/lang/NumberFormatException;
    :cond_7
    :goto_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 2353
    :cond_8
    if-eqz v4, :cond_9

    if-nez v5, :cond_a

    .line 2354
    :cond_9
    :try_start_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const v27, 0x7f0a0024

    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v6, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 2359
    :cond_a
    aget-object v6, v10, v13

    invoke-virtual/range {v3 .. v8}, Landroid/telephony/SmsManager;->MakeSimPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result v17

    .line 2360
    .local v17, result:I
    const-string v6, "Mms/MessageOptions"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "copyMessageToSIM() i="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " result="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-static {v6, v0}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2362
    if-eqz v17, :cond_7

    .line 2367
    const/4 v6, 0x3

    move/from16 v0, v17

    if-ne v0, v6, :cond_c

    .line 2368
    array-length v6, v10
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    sub-int/2addr v6, v13

    add-int/2addr v12, v6

    .line 2369
    move/from16 v24, v17

    .line 2388
    .end local v17           #result:I
    :cond_b
    :goto_5
    const-string v6, "Mms/MessageOptions"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "copyMessageToSIM() totalResult="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-static {v6, v0}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2389
    if-nez v24, :cond_f

    .line 2390
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const v27, 0x7f0a025b

    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v26

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v6, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 2371
    .restart local v17       #result:I
    :cond_c
    const/4 v6, 0x1

    move/from16 v0, v17

    if-eq v0, v6, :cond_d

    const/4 v6, 0x2

    move/from16 v0, v17

    if-ne v0, v6, :cond_e

    .line 2372
    :cond_d
    move/from16 v24, v17

    goto :goto_5

    .line 2375
    :cond_e
    move/from16 v24, v17

    .line 2376
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_4

    .line 2391
    .end local v17           #result:I
    :cond_f
    const/4 v6, 0x1

    move/from16 v0, v24

    if-eq v0, v6, :cond_10

    const/4 v6, 0x2

    move/from16 v0, v24

    if-ne v0, v6, :cond_13

    .line 2392
    :cond_10
    new-instance v9, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-direct {v9, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2393
    .local v9, builder:Landroid/app/AlertDialog$Builder;
    const v6, 0x7f0a01f5

    invoke-virtual {v9, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2394
    const/4 v6, 0x2

    move/from16 v0, v24

    if-ne v0, v6, :cond_12

    .line 2395
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const v27, 0x7f0a00b6

    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v26, " "

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const v27, 0x7f0a0493

    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2399
    :cond_11
    :goto_6
    const v6, 0x7f0a01e7

    const/16 v26, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v9, v6, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2400
    sget-object v6, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v9, v6}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 2401
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 2396
    :cond_12
    const/4 v6, 0x1

    move/from16 v0, v24

    if-ne v0, v6, :cond_11

    .line 2397
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const v27, 0x7f0a00b6

    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v26, " "

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const v27, 0x7f0a0494

    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_6

    .line 2403
    .end local v9           #builder:Landroid/app/AlertDialog$Builder;
    :cond_13
    new-instance v9, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-direct {v9, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2404
    .restart local v9       #builder:Landroid/app/AlertDialog$Builder;
    array-length v6, v10

    sub-int v19, v6, v12

    .line 2405
    .local v19, successCount:I
    if-nez v19, :cond_14

    .line 2406
    const v6, 0x7f0a023f

    invoke-virtual {v9, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2407
    const v6, 0x7f0a0240

    invoke-virtual {v9, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2412
    :goto_7
    const v6, 0x7f0a01e7

    const/16 v26, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v9, v6, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2413
    sget-object v6, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v9, v6}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 2414
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 2409
    :cond_14
    const v6, 0x7f0a0241

    invoke-virtual {v9, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2410
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    const v26, 0x7f0a0242

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    const/16 v28, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    move/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v6, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_7
.end method

.method public copyToClipboard(Ljava/lang/String;)V
    .locals 5
    .parameter "str"

    .prologue
    .line 1211
    if-nez p1, :cond_0

    .line 1212
    const-string v2, "Mms/MessageOptions"

    const-string v3, "copyToClipboard(),str null"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1222
    :goto_0
    return-void

    .line 1216
    :cond_0
    const-string v2, "Mms/MessageOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "copyToClipboard(),len="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    const-string v3, "clipboardEx"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/ClipboardExManager;

    .line 1219
    .local v0, clipEx:Landroid/sec/clipboard/ClipboardExManager;
    new-instance v1, Landroid/sec/clipboard/data/list/ClipboardDataText;

    invoke-direct {v1}, Landroid/sec/clipboard/data/list/ClipboardDataText;-><init>()V

    .line 1220
    .local v1, clipdata:Landroid/sec/clipboard/data/list/ClipboardDataText;
    invoke-virtual {v1, p1}, Landroid/sec/clipboard/data/list/ClipboardDataText;->SetText(Ljava/lang/CharSequence;)Z

    .line 1221
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v2, v1}, Landroid/sec/clipboard/ClipboardExManager;->setData(Landroid/content/Context;Landroid/sec/clipboard/data/ClipboardData;)Z

    goto :goto_0
.end method

.method public createOptionsMenu(Landroid/view/Menu;)V
    .locals 21
    .parameter "menu"

    .prologue
    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    .line 606
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    invoke-interface/range {p1 .. p1}, Landroid/view/Menu;->clear()V

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mReserved:J

    move-wide/from16 v17, v0

    const-wide/16 v19, 0x1

    cmp-long v17, v17, v19

    if-nez v17, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableScheduledMessage()Z

    move-result v17

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/ui/MessageItem;->isDraftMessage()Z

    move-result v17

    if-nez v17, :cond_2

    .line 349
    const/16 v17, 0x0

    const/16 v18, 0x26

    const/16 v19, 0x0

    const v20, 0x7f0a03d9

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v17

    const v18, 0x7f0200df

    invoke-interface/range {v17 .. v18}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 352
    const/16 v17, 0x0

    const/16 v18, 0x27

    const/16 v19, 0x0

    const v20, 0x7f0a03da

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v17

    const v18, 0x7f0200b2

    invoke-interface/range {v17 .. v18}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 356
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageItem;->mIsCMASSms:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 357
    const/16 v17, 0x0

    const/16 v18, 0x12

    const/16 v19, 0x0

    const v20, 0x7f0a00bb

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v17

    const v18, 0x7f0200ba

    invoke-interface/range {v17 .. v18}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 362
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageItem;->mIsCbSms:Z

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 363
    const/16 v17, 0x0

    const/16 v18, 0x12

    const/16 v19, 0x0

    const v20, 0x7f0a00ba

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v17

    const v18, 0x7f0200ba

    invoke-interface/range {v17 .. v18}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 366
    const/16 v17, 0x0

    const/16 v18, 0x18

    const/16 v19, 0x0

    const v20, 0x7f0a0022

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v17

    const v18, 0x7f0200b7

    invoke-interface/range {v17 .. v18}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 373
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 375
    sget v17, Lcom/android/mms/ui/MessageOptions;->mLaunchApp:I

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/ui/MessageItem;->isDraftMessage()Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 377
    const/16 v17, 0x0

    const/16 v18, 0x12

    const/16 v19, 0x0

    const v20, 0x7f0a00bb

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v17

    const v18, 0x7f0200ba

    invoke-interface/range {v17 .. v18}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 384
    :cond_5
    const-string v17, "wpm"

    sget-object v18, Lcom/android/mms/ui/MessageOptions;->mType:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 385
    const/16 v17, 0x0

    const/16 v18, 0x12

    const/16 v19, 0x0

    const v20, 0x7f0a00ba

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v17

    const v18, 0x7f0200ba

    invoke-interface/range {v17 .. v18}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 387
    const/16 v17, 0x0

    const/16 v18, 0x18

    const/16 v19, 0x0

    const v20, 0x7f0a0022

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v17

    const v18, 0x7f0200b7

    invoke-interface/range {v17 .. v18}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 393
    :cond_6
    sget v17, Lcom/android/mms/ui/MessageOptions;->mLaunchApp:I

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v17

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    move/from16 v17, v0

    const/16 v18, 0x82

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v17

    if-nez v17, :cond_7

    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/mms/util/DownloadManager;->getState(Landroid/net/Uri;)I

    move-result v17

    const/16 v18, 0x81

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_7

    .line 399
    const/16 v17, 0x0

    const/16 v18, 0x25

    const/16 v19, 0x0

    const v20, 0x7f0a001d

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v17

    const v18, 0x7f0200bc

    invoke-interface/range {v17 .. v18}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 405
    :cond_7
    const-string v17, "wpm"

    sget-object v18, Lcom/android/mms/ui/MessageOptions;->mType:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 406
    const/16 v17, 0x0

    const/16 v18, 0x12

    const/16 v19, 0x0

    const v20, 0x7f0a00ba

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v17

    const v18, 0x7f0200ba

    invoke-interface/range {v17 .. v18}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 408
    const/16 v17, 0x0

    const/16 v18, 0x18

    const/16 v19, 0x0

    const v20, 0x7f0a0022

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v17

    const v18, 0x7f0200b7

    invoke-interface/range {v17 .. v18}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 413
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/ui/MessageItem;->isInboxMessage()Z

    move-result v17

    if-eqz v17, :cond_a

    .line 414
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableUnknownAddressToNullInDB()Z

    move-result v17

    if-eqz v17, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_a

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/mms/ui/MessageUtils;->isLocalNumber(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_a

    .line 416
    const/16 v17, 0x0

    const/16 v18, 0x20

    const/16 v19, 0x0

    const v20, 0x7f0a00b9

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v17

    const v18, 0x7f0200d6

    invoke-interface/range {v17 .. v18}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 421
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v17

    if-eqz v17, :cond_b

    .line 422
    const/16 v17, 0x0

    const/16 v18, 0x1e

    const/16 v19, 0x0

    const v20, 0x7f0a00b8

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v17

    const v18, 0x7f0200d7

    invoke-interface/range {v17 .. v18}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 427
    :cond_b
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAllContextMenuInMsgViewer()Z

    move-result v17

    if-eqz v17, :cond_c

    .line 428
    invoke-virtual/range {p0 .. p1}, Lcom/android/mms/ui/MessageOptions;->addChnRecomposeOption(Landroid/view/Menu;)V

    .line 433
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v17

    if-eqz v17, :cond_d

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v17, v0

    if-eqz v17, :cond_19

    .line 435
    const/16 v17, 0x0

    const/16 v18, 0x23

    const/16 v19, 0x0

    const v20, 0x7f0a016a

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v17

    const v18, 0x7f0200d9

    invoke-interface/range {v17 .. v18}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 436
    invoke-static {}, Lcom/android/mms/MmsConfig;->isDisableSaveRingtone()Z

    move-result v17

    if-eqz v17, :cond_d

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    move-wide/from16 v18, v0

    invoke-static/range {v17 .. v19}, Lcom/android/mms/ui/MessageUtils;->isDrmRingtoneWithRights(Landroid/content/Context;J)Z

    move-result v17

    if-eqz v17, :cond_d

    .line 438
    const/16 v17, 0x0

    const/16 v18, 0x2d

    const/16 v19, 0x0

    const v20, 0x7f0a04d0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v17

    const v18, 0x7f0200d9

    invoke-interface/range {v17 .. v18}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 454
    :cond_d
    :goto_1
    sget-object v17, Lcom/android/mms/ui/MessageOptions;->mType:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/mms/ui/MessageOptions;->islockmessage(Ljava/lang/String;)Z

    move-result v11

    .line 455
    .local v11, islocked:Z
    if-eqz v11, :cond_1a

    .line 456
    const/16 v17, 0x0

    const/16 v18, 0x1d

    const/16 v19, 0x0

    const v20, 0x7f0a00bd

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v17

    const v18, 0x7f0200e3

    invoke-interface/range {v17 .. v18}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 462
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mReserved:J

    move-wide/from16 v17, v0

    const-wide/16 v19, 0x1

    cmp-long v17, v17, v19

    if-eqz v17, :cond_e

    .line 463
    const/16 v17, 0x0

    const/16 v18, 0x12

    const/16 v19, 0x0

    const v20, 0x7f0a00ba

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v17

    const v18, 0x7f0200ba

    invoke-interface/range {v17 .. v18}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 475
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v17

    if-eqz v17, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_10

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v17

    if-eqz v17, :cond_11

    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/MessageOptions;->getCurSlideBody()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_11

    .line 477
    :cond_10
    const/16 v17, 0x0

    const/16 v18, 0x18

    const/16 v19, 0x0

    const v20, 0x7f0a0022

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v17

    const v18, 0x7f0200b7

    invoke-interface/range {v17 .. v18}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 483
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v17

    if-nez v17, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v17

    if-eqz v17, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v17

    if-eqz v17, :cond_13

    .line 484
    :cond_12
    const/16 v17, 0x0

    const/16 v18, 0x15

    const/16 v19, 0x0

    const v20, 0x7f0a001c

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v17

    const v18, 0x7f0200c3

    invoke-interface/range {v17 .. v18}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 487
    :cond_13
    const/16 v17, 0x2a

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v17

    if-nez v17, :cond_14

    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/MessageOptions;->getCallableRecipient()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_14

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/mms/ui/MessageUtils;->isVoiceCallAvailabe(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_14

    .line 489
    const/16 v17, 0x0

    const/16 v18, 0x2a

    const/16 v19, 0x0

    const v20, 0x7f0a0009

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v17

    const v18, 0x7f0200b1

    invoke-interface/range {v17 .. v18}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 497
    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/MessageOptions;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v14

    .line 498
    .local v14, recipients:Lcom/android/mms/data/ContactList;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v17, v0

    const-string v18, "com.android.contacts"

    invoke-static/range {v17 .. v18}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v17, v0

    const-string v18, "com.android.jcontacts"

    invoke-static/range {v17 .. v18}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_17

    :cond_15
    if-eqz v14, :cond_17

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_17

    .line 500
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/MessageOptions;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/mms/data/Contact;

    .line 501
    .local v8, contact:Lcom/android/mms/data/Contact;
    invoke-virtual {v8}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v17

    if-eqz v17, :cond_1b

    .line 502
    new-instance v10, Landroid/content/Intent;

    const-string v17, "android.intent.action.VIEW"

    invoke-virtual {v8}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 503
    .local v10, intent:Landroid/content/Intent;
    const/high16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 504
    invoke-static {}, Lcom/android/mms/MmsConfig;->getContactReplacePackageAs()Ljava/lang/String;

    move-result-object v17

    const-string v18, "com.android.jcontacts"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_16

    .line 505
    const-string v17, "com.android.jcontacts"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 507
    :cond_16
    const/16 v17, 0x0

    const/16 v18, 0x1a

    const/16 v19, 0x0

    const v20, 0x7f0a0067

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v17

    const v18, 0x7f0200b5

    invoke-interface/range {v17 .. v18}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v10}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 521
    .end local v8           #contact:Lcom/android/mms/data/Contact;
    .end local v10           #intent:Landroid/content/Intent;
    :cond_17
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v17

    if-eqz v17, :cond_20

    .line 523
    const/4 v13, 0x0

    .line 525
    .local v13, mSimAvailableNum:I
    const/4 v15, 0x0

    .local v15, simSlotNum:I
    :goto_4
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v17

    move/from16 v0, v17

    if-ge v15, v0, :cond_1c

    .line 526
    invoke-static {v15}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v17

    if-eqz v17, :cond_18

    invoke-static {v15}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/MultiSimTelephonyManager;->getSimState()I

    move-result v17

    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_18

    .line 527
    add-int/lit8 v13, v13, 0x1

    .line 525
    :cond_18
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 443
    .end local v11           #islocked:Z
    .end local v13           #mSimAvailableNum:I
    .end local v14           #recipients:Lcom/android/mms/data/ContactList;
    .end local v15           #simSlotNum:I
    :cond_19
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v17, v0

    sget-object v18, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-wide v19, Lcom/android/mms/ui/MessageOptions;->msgId:J

    invoke-static/range {v18 .. v20}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v16

    .line 445
    .local v16, slideshow:Lcom/android/mms/model/SlideshowModel;
    if-eqz v16, :cond_d

    .line 446
    const/16 v17, 0x0

    const/16 v18, 0x23

    const/16 v19, 0x0

    const v20, 0x7f0a016a

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 448
    .end local v16           #slideshow:Lcom/android/mms/model/SlideshowModel;
    :catch_0
    move-exception v17

    goto/16 :goto_1

    .line 459
    .restart local v11       #islocked:Z
    :cond_1a
    const/16 v17, 0x0

    const/16 v18, 0x1c

    const/16 v19, 0x0

    const v20, 0x7f0a00bc

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v17

    const v18, 0x7f0200c9

    invoke-interface/range {v17 .. v18}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 509
    .restart local v8       #contact:Lcom/android/mms/data/Contact;
    .restart local v14       #recipients:Lcom/android/mms/data/ContactList;
    :cond_1b
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/MessageOptions;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/mms/data/Contact;

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v6

    .line 510
    .local v6, address:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/mms/ui/MessageUtils;->createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    .line 511
    .restart local v10       #intent:Landroid/content/Intent;
    const/16 v17, 0x0

    const/16 v18, 0x1b

    const/16 v19, 0x0

    const v20, 0x7f0a0068

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v17

    const v18, 0x7f0200af

    invoke-interface/range {v17 .. v18}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v0, v10}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 529
    .end local v6           #address:Ljava/lang/String;
    .end local v8           #contact:Lcom/android/mms/data/Contact;
    .end local v10           #intent:Landroid/content/Intent;
    .restart local v13       #mSimAvailableNum:I
    .restart local v15       #simSlotNum:I
    :cond_1c
    const-string v17, "Mms/MessageOptions"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "showItemContextMenu() mSimAvailableNum = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCopyToSim()Z

    move-result v17

    if-eqz v17, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mReserved:J

    move-wide/from16 v17, v0

    const-wide/16 v19, 0x1

    cmp-long v17, v17, v19

    if-eqz v17, :cond_1e

    if-lez v13, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/mms/ui/MessageOptions;->isSingleSms(Lcom/android/mms/ui/MessageItem;)Z

    move-result v17

    if-eqz v17, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1e

    .line 537
    :cond_1d
    const/16 v17, 0x0

    const/16 v18, 0x1f

    const/16 v19, 0x0

    const v20, 0x7f0a0023

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v17

    const v18, 0x7f0200b9

    invoke-interface/range {v17 .. v18}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 541
    :cond_1e
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveVMessage()Z

    move-result v17

    if-eqz v17, :cond_20

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/mms/ui/MessageOptions;->isSingleSms(Lcom/android/mms/ui/MessageItem;)Z

    move-result v17

    if-eqz v17, :cond_20

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isExternalSdCardMounted()Z

    move-result v17

    if-eqz v17, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mReserved:J

    move-wide/from16 v17, v0

    const-wide/16 v19, 0x0

    cmp-long v17, v17, v19

    if-nez v17, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_20

    .line 546
    :cond_1f
    const/16 v17, 0x0

    const/16 v18, 0x21

    const/16 v19, 0x0

    const v20, 0x7f0a0349

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v17

    const v18, 0x7f0200b8

    invoke-interface/range {v17 .. v18}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 552
    .end local v13           #mSimAvailableNum:I
    .end local v15           #simSlotNum:I
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v17

    if-eqz v17, :cond_21

    .line 555
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableReplyAll()Z

    move-result v17

    if-eqz v17, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v17

    if-eqz v17, :cond_21

    .line 556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->numberList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-static/range {v17 .. v19}, Lcom/android/mms/ui/MessageUtils;->getReplyAllCount(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;Ljava/util/ArrayList;)Z

    move-result v17

    if-eqz v17, :cond_21

    .line 557
    const/16 v17, 0x0

    const/16 v18, 0x24

    const/16 v19, 0x0

    const v20, 0x7f0a0268

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v17

    const v18, 0x7f0200d6

    invoke-interface/range {v17 .. v18}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 565
    :cond_21
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSPlanner()Z

    move-result v17

    if-eqz v17, :cond_22

    .line 566
    const/4 v9, 0x0

    .line 567
    .local v9, info:Landroid/content/pm/ApplicationInfo;
    const/4 v12, 0x0

    .line 568
    .local v12, label:Ljava/lang/String;
    const-string v5, "/system/app/SecCalendarProvider.apk"

    .line 569
    .local v5, TWCalendarApk:Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 570
    .local v7, checkTWCalendar:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_22

    .line 571
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRegisterCalendar()Z

    move-result v17

    if-eqz v17, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v17, v0

    const-string v18, "com.android.calendar"

    invoke-static/range {v17 .. v18}, Lcom/android/mms/util/PackageInfo;->isEnabledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/ui/MessageItem;->isInboxMessage()Z

    move-result v17

    if-eqz v17, :cond_22

    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/MessageOptions;->hasBody()Z

    move-result v17

    if-eqz v17, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/mms/MmsConfig;->isUltimateStandbyModeOn(Landroid/content/Context;)Z

    move-result v17

    if-nez v17, :cond_22

    .line 575
    const/16 v17, 0x0

    const/16 v18, 0x22

    const/16 v19, 0x0

    sget v20, Lcom/android/mms/ui/MessageOptions;->sResIdRegisterCalendar:I

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v17

    const v18, 0x7f0200ec

    invoke-interface/range {v17 .. v18}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 585
    .end local v5           #TWCalendarApk:Ljava/lang/String;
    .end local v7           #checkTWCalendar:Ljava/io/File;
    .end local v9           #info:Landroid/content/pm/ApplicationInfo;
    .end local v12           #label:Ljava/lang/String;
    :cond_22
    const/16 v17, 0x0

    const/16 v18, 0x11

    const/16 v19, 0x0

    const v20, 0x7f0a0014

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v17

    const v18, 0x7f0200c6

    invoke-interface/range {v17 .. v18}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/ui/MessageItem;->isInboxMessage()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackList()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 590
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v17

    if-eqz v17, :cond_23

    .line 591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/provider/Telephony$Mms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 592
    const/16 v17, 0x0

    const/16 v18, 0x29

    const/16 v19, 0x0

    const v20, 0x7f0a03a2

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v17

    const v18, 0x7f0200b0

    invoke-interface/range {v17 .. v18}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 595
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/android/mms/ui/MessageUtils;->SpamNumberisAlreadInUse(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_24

    .line 597
    const/16 v17, 0x0

    const/16 v18, 0x2c

    const/16 v19, 0x0

    const v20, 0x7f0a039b

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v17

    const v18, 0x7f0200e4

    invoke-interface/range {v17 .. v18}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 599
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageItem;->mIsCMASSms:Z

    move/from16 v17, v0

    if-nez v17, :cond_0

    .line 600
    const/16 v17, 0x0

    const/16 v18, 0x29

    const/16 v19, 0x0

    const v20, 0x7f0a039a

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v17

    const v18, 0x7f0200d3

    invoke-interface/range {v17 .. v18}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_0
.end method

.method public createSpamOptionsMenu(Landroid/view/Menu;)V
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 2737
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 2739
    const/16 v0, 0x28

    const v1, 0x7f0a0365

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200e8

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2742
    const/16 v0, 0x12

    const v1, 0x7f0a00bb

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200ba

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2745
    const/16 v0, 0x11

    const v1, 0x7f0a0014

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200c6

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2748
    return-void
.end method

.method public forwardMessage(ZLcom/android/mms/ui/MessageItem;)V
    .locals 25
    .parameter "IsSlideshow"
    .parameter "msgItem"

    .prologue
    .line 1456
    const-string v2, "Mms/MessageOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "forwardMessage(),msgItem="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1458
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/mms/model/SlideshowModel;->setAddAttachmentSlideForCompose(Z)V

    .line 1459
    const-string v2, "mms"

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1460
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Setting_EnableUSM"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/mms/MmsConfig;->isUltimateStandbyModeOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1461
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->showUsmWarningDialog(Landroid/app/Activity;)V

    .line 1605
    :goto_0
    return-void

    .line 1464
    :cond_0
    new-instance v5, Lcom/google/android/mms/pdu/SendReq;

    invoke-direct {v5}, Lcom/google/android/mms/pdu/SendReq;-><init>()V

    .line 1466
    .local v5, sendReq:Lcom/google/android/mms/pdu/SendReq;
    const/4 v6, 0x0

    .line 1468
    .local v6, subject:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSubject()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1469
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1470
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    const v4, 0x7f0a0049

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1471
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1481
    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSubjectLength()I

    move-result v17

    .line 1482
    .local v17, maxSubjectLength:I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLimitOnMmsSubjectByByte()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1483
    move/from16 v0, v17

    invoke-static {v6, v0}, Lcom/android/mms/ui/MessageUtils;->getCuttedStringByByteLength(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 1488
    :cond_2
    :goto_2
    if-eqz v6, :cond_3

    .line 1489
    new-instance v2, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v2, v6}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setSubject(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 1492
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAnonymousThread()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1493
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/android/mms/pdu/EncodedStringValue;

    const/4 v3, 0x0

    new-instance v4, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-static {}, Lcom/android/mms/data/Conversation;->getTempThreadIdStr()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    aput-object v4, v2, v3

    invoke-virtual {v5, v2}, Lcom/google/android/mms/pdu/SendReq;->setTo([Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 1495
    :cond_4
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Lcom/android/mms/model/SlideshowModel;->makeCopy(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setBody(Lcom/google/android/mms/pdu/PduBody;)V

    .line 1497
    const/16 v19, 0x0

    .line 1498
    .local v19, result:I
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v22, v0

    .line 1500
    .local v22, slideShow:Lcom/android/mms/model/SlideshowModel;
    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/model/SlideshowModel;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/mms/model/SlideModel;

    .line 1501
    .local v21, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :cond_6
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/mms/model/MediaModel;

    .line 1503
    .local v18, media:Lcom/android/mms/model/MediaModel;
    :try_start_0
    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/model/MediaModel;->isImage()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1504
    move-object/from16 v0, v18

    check-cast v0, Lcom/android/mms/model/ImageModel;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/mms/model/ImageModel;->checkCreationMode()V

    .line 1505
    check-cast v18, Lcom/android/mms/model/ImageModel;

    .end local v18           #media:Lcom/android/mms/model/MediaModel;
    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/model/ImageModel;->checkContentRestriction()V
    :try_end_0
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/mms/ResolutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_3

    .line 1513
    :catch_0
    move-exception v12

    .line 1514
    .local v12, e:Lcom/android/mms/UnsupportContentTypeException;
    const/16 v19, -0x3

    .line 1521
    goto :goto_3

    .line 1474
    .end local v12           #e:Lcom/android/mms/UnsupportContentTypeException;
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v17           #maxSubjectLength:I
    .end local v19           #result:I
    .end local v21           #slide:Lcom/android/mms/model/SlideModel;
    .end local v22           #slideShow:Lcom/android/mms/model/SlideshowModel;
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    const v4, 0x7f0a0049

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1476
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1477
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 1484
    .restart local v17       #maxSubjectLength:I
    :cond_8
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    move/from16 v0, v17

    if-le v2, v0, :cond_2

    .line 1485
    const/4 v2, 0x0

    move/from16 v0, v17

    invoke-virtual {v6, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_2

    .line 1506
    .restart local v15       #i$:Ljava/util/Iterator;
    .restart local v18       #media:Lcom/android/mms/model/MediaModel;
    .restart local v19       #result:I
    .restart local v21       #slide:Lcom/android/mms/model/SlideModel;
    .restart local v22       #slideShow:Lcom/android/mms/model/SlideshowModel;
    :cond_9
    :try_start_1
    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/model/MediaModel;->isAudio()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1507
    move-object/from16 v0, v18

    check-cast v0, Lcom/android/mms/model/AudioModel;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/mms/model/AudioModel;->checkCreationMode()V

    .line 1508
    check-cast v18, Lcom/android/mms/model/AudioModel;

    .end local v18           #media:Lcom/android/mms/model/MediaModel;
    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/model/AudioModel;->checkContentRestriction()V

    goto/16 :goto_3

    .line 1515
    :catch_1
    move-exception v12

    .line 1516
    .local v12, e:Lcom/android/mms/ExceedMessageSizeException;
    const/16 v19, -0x2

    .line 1521
    goto/16 :goto_3

    .line 1509
    .end local v12           #e:Lcom/android/mms/ExceedMessageSizeException;
    .restart local v18       #media:Lcom/android/mms/model/MediaModel;
    :cond_a
    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/model/MediaModel;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1510
    move-object/from16 v0, v18

    check-cast v0, Lcom/android/mms/model/VideoModel;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/mms/model/VideoModel;->checkCreationMode()V

    .line 1511
    check-cast v18, Lcom/android/mms/model/VideoModel;

    .end local v18           #media:Lcom/android/mms/model/MediaModel;
    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/model/VideoModel;->checkContentRestriction()V
    :try_end_1
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/android/mms/ResolutionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_3

    .line 1517
    :catch_2
    move-exception v12

    .line 1518
    .local v12, e:Lcom/android/mms/ResolutionException;
    const/16 v19, -0x4

    .line 1521
    goto/16 :goto_3

    .line 1519
    .end local v12           #e:Lcom/android/mms/ResolutionException;
    :catch_3
    move-exception v12

    .line 1520
    .local v12, e:Lcom/android/mms/ContentRestrictionException;
    const/16 v19, -0x5

    goto/16 :goto_3

    .line 1525
    .end local v12           #e:Lcom/android/mms/ContentRestrictionException;
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v21           #slide:Lcom/android/mms/model/SlideModel;
    :cond_b
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsList()Ljava/util/ArrayList;

    move-result-object v9

    .line 1527
    .local v9, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/AttachmentModel;>;"
    if-eqz v9, :cond_e

    .line 1528
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1529
    .local v8, attachCount:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_4
    if-ge v13, v8, :cond_e

    .line 1532
    :try_start_2
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/AttachmentModel;

    invoke-virtual {v2}, Lcom/android/mms/model/AttachmentModel;->getContentType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/x-vNote"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/AttachmentModel;

    invoke-virtual {v2}, Lcom/android/mms/model/AttachmentModel;->getContentType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/x-vtodo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1534
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/MessageOptions;->checkCRForRawAttachment()V
    :try_end_2
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lcom/android/mms/ResolutionException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_2 .. :try_end_2} :catch_7

    .line 1529
    :cond_d
    :goto_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 1537
    :catch_4
    move-exception v12

    .line 1538
    .local v12, e:Lcom/android/mms/UnsupportContentTypeException;
    const/16 v19, -0x3

    .line 1545
    goto :goto_5

    .line 1539
    .end local v12           #e:Lcom/android/mms/UnsupportContentTypeException;
    :catch_5
    move-exception v12

    .line 1540
    .local v12, e:Lcom/android/mms/ExceedMessageSizeException;
    const/16 v19, -0x2

    .line 1545
    goto :goto_5

    .line 1541
    .end local v12           #e:Lcom/android/mms/ExceedMessageSizeException;
    :catch_6
    move-exception v12

    .line 1542
    .local v12, e:Lcom/android/mms/ResolutionException;
    const/16 v19, -0x4

    .line 1545
    goto :goto_5

    .line 1543
    .end local v12           #e:Lcom/android/mms/ResolutionException;
    :catch_7
    move-exception v12

    .line 1544
    .local v12, e:Lcom/android/mms/ContentRestrictionException;
    const/16 v19, -0x5

    goto :goto_5

    .line 1549
    .end local v8           #attachCount:I
    .end local v12           #e:Lcom/android/mms/ContentRestrictionException;
    .end local v13           #i:I
    :cond_e
    const/4 v2, -0x5

    move/from16 v0, v19

    if-eq v0, v2, :cond_f

    const/4 v2, -0x4

    move/from16 v0, v19

    if-ne v0, v2, :cond_13

    .line 1550
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/mms/model/CarrierContentRestriction;->getMmsCreationMode(Landroid/content/Context;)I

    move-result v11

    .line 1553
    .local v11, creationMode:I
    const/4 v2, 0x1

    if-ne v11, v2, :cond_10

    .line 1554
    new-instance v10, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-direct {v10, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1555
    .local v10, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x1010355

    invoke-virtual {v10, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 1556
    const v2, 0x7f0a00a7

    invoke-virtual {v10, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1557
    const v2, 0x7f0a0176

    invoke-virtual {v10, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1558
    const v2, 0x7f0a006a

    new-instance v3, Lcom/android/mms/ui/MessageOptions$CreationOkListener;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v3, v0, v1, v5, v6}, Lcom/android/mms/ui/MessageOptions$CreationOkListener;-><init>(Lcom/android/mms/ui/MessageOptions;Lcom/android/mms/ui/MessageItem;Lcom/google/android/mms/pdu/SendReq;Ljava/lang/String;)V

    invoke-virtual {v10, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1559
    const v2, 0x7f0a006b

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1560
    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 1561
    .end local v10           #builder:Landroid/app/AlertDialog$Builder;
    :cond_10
    if-nez v11, :cond_12

    .line 1562
    new-instance v10, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-direct {v10, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1563
    .restart local v10       #builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0200ed

    invoke-virtual {v10, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1564
    const/4 v2, -0x4

    move/from16 v0, v19

    if-ne v0, v2, :cond_11

    .line 1565
    const v2, 0x7f0a0043

    invoke-virtual {v10, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1569
    :goto_6
    const v2, 0x7f0a0180

    invoke-virtual {v10, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1570
    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v10, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1571
    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 1567
    :cond_11
    const v2, 0x7f0a012c

    invoke-virtual {v10, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_6

    .line 1573
    .end local v10           #builder:Landroid/app/AlertDialog$Builder;
    :cond_12
    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move/from16 v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/mms/ui/MessageOptions;->forwardMessageStartActivityForMms(Lcom/android/mms/ui/MessageItem;ZLcom/google/android/mms/pdu/SendReq;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1577
    .end local v11           #creationMode:I
    :cond_13
    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move/from16 v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/mms/ui/MessageOptions;->forwardMessageStartActivityForMms(Lcom/android/mms/ui/MessageItem;ZLcom/google/android/mms/pdu/SendReq;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1581
    .end local v5           #sendReq:Lcom/google/android/mms/pdu/SendReq;
    .end local v6           #subject:Ljava/lang/String;
    .end local v9           #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/AttachmentModel;>;"
    .end local v17           #maxSubjectLength:I
    .end local v19           #result:I
    .end local v22           #slideShow:Lcom/android/mms/model/SlideshowModel;
    :cond_14
    new-instance v16, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    const-class v3, Lcom/android/mms/ui/ConversationComposer;

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1582
    .local v16, intent:Landroid/content/Intent;
    const-string v2, "exit_on_sent"

    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1583
    const-string v2, "forwarded_message"

    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1587
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsForwardPrefix()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1588
    const-string v2, "sms_body"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    const v7, 0x7f0a0049

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1599
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/MessageOptions;->isLockedMessageList:Z

    const/4 v3, 0x1

    if-eq v2, v3, :cond_15

    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/android/mms/ui/MessageItem;->mReserved:J

    const-wide/16 v23, 0x1

    cmp-long v2, v2, v23

    if-nez v2, :cond_16

    .line 1600
    :cond_15
    const-string v2, "locked_message_list"

    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1601
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    const-string v3, "com.android.mms.ui.ForwardMessageActivity"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 1602
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1589
    :cond_17
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMenuInsertSenderInfoWhenFwdMsg()Z

    move-result v2

    if-eqz v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->isInsertSenderInfoWhenFwdMsgEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1590
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p2

    invoke-static {v2, v0}, Lcom/android/mms/ui/MessageUtils;->getSenderInformation(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v20

    .line 1591
    .local v20, senderInformation:Ljava/lang/String;
    if-eqz v20, :cond_18

    .line 1592
    const-string v2, "sms_body"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_7

    .line 1594
    :cond_18
    const-string v2, "sms_body"

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_7

    .line 1597
    .end local v20           #senderInformation:Ljava/lang/String;
    :cond_19
    const-string v2, "sms_body"

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_7
.end method

.method public forwardMessage(ZLcom/android/mms/ui/MessageItem;Z)V
    .locals 30
    .parameter "IsSlideshow"
    .parameter "msgItem"
    .parameter "editMsg"

    .prologue
    .line 1614
    const-string v2, "Mms/MessageOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "forwardMessage()#2,msgItem="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1617
    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_0

    .line 1642
    :cond_0
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/mms/model/SlideshowModel;->setAddAttachmentSlideForCompose(Z)V

    .line 1643
    const-string v2, "mms"

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1644
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Setting_EnableUSM"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/mms/MmsConfig;->isUltimateStandbyModeOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1645
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->showUsmWarningDialog(Landroid/app/Activity;)V

    .line 1850
    :cond_1
    :goto_0
    return-void

    .line 1648
    :cond_2
    new-instance v5, Lcom/google/android/mms/pdu/SendReq;

    invoke-direct {v5}, Lcom/google/android/mms/pdu/SendReq;-><init>()V

    .line 1650
    .local v5, sendReq:Lcom/google/android/mms/pdu/SendReq;
    const/4 v6, 0x0

    .line 1652
    .local v6, subject:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSubject()Z

    move-result v2

    if-nez v2, :cond_a

    .line 1653
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 1654
    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_9

    .line 1655
    const-string v6, ""

    .line 1658
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1671
    :cond_3
    :goto_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSubjectLength()I

    move-result v22

    .line 1672
    .local v22, maxSubjectLength:I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLimitOnMmsSubjectByByte()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1673
    move/from16 v0, v22

    invoke-static {v6, v0}, Lcom/android/mms/ui/MessageUtils;->getCuttedStringByByteLength(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 1678
    :cond_4
    :goto_3
    if-eqz v6, :cond_5

    .line 1679
    new-instance v2, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v2, v6}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setSubject(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 1682
    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAnonymousThread()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1683
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/android/mms/pdu/EncodedStringValue;

    const/4 v3, 0x0

    new-instance v4, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-static {}, Lcom/android/mms/data/Conversation;->getTempThreadIdStr()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    aput-object v4, v2, v3

    invoke-virtual {v5, v2}, Lcom/google/android/mms/pdu/SendReq;->setTo([Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 1685
    :cond_6
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Lcom/android/mms/model/SlideshowModel;->makeCopy(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setBody(Lcom/google/android/mms/pdu/PduBody;)V

    .line 1687
    const/16 v26, 0x0

    .line 1688
    .local v26, result:I
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v29, v0

    .line 1690
    .local v29, slideShow:Lcom/android/mms/model/SlideshowModel;
    invoke-virtual/range {v29 .. v29}, Lcom/android/mms/model/SlideshowModel;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_7
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/mms/model/SlideModel;

    .line 1691
    .local v28, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual/range {v28 .. v28}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    :cond_8
    :goto_4
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/mms/model/MediaModel;

    .line 1693
    .local v23, media:Lcom/android/mms/model/MediaModel;
    :try_start_0
    invoke-virtual/range {v23 .. v23}, Lcom/android/mms/model/MediaModel;->isImage()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1694
    move-object/from16 v0, v23

    check-cast v0, Lcom/android/mms/model/ImageModel;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/mms/model/ImageModel;->checkCreationMode()V

    .line 1695
    check-cast v23, Lcom/android/mms/model/ImageModel;

    .end local v23           #media:Lcom/android/mms/model/MediaModel;
    invoke-virtual/range {v23 .. v23}, Lcom/android/mms/model/ImageModel;->checkContentRestriction()V
    :try_end_0
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/mms/ResolutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_4

    .line 1703
    :catch_0
    move-exception v15

    .line 1704
    .local v15, e:Lcom/android/mms/UnsupportContentTypeException;
    const/16 v26, -0x3

    .line 1711
    goto :goto_4

    .line 1657
    .end local v15           #e:Lcom/android/mms/UnsupportContentTypeException;
    .end local v18           #i$:Ljava/util/Iterator;
    .end local v22           #maxSubjectLength:I
    .end local v26           #result:I
    .end local v28           #slide:Lcom/android/mms/model/SlideModel;
    .end local v29           #slideShow:Lcom/android/mms/model/SlideshowModel;
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    const v4, 0x7f0a0049

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 1661
    :cond_a
    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_b

    .line 1662
    const-string v6, ""

    .line 1666
    :goto_5
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 1667
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_2

    .line 1664
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    const v4, 0x7f0a0049

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    .line 1674
    .restart local v22       #maxSubjectLength:I
    :cond_c
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    move/from16 v0, v22

    if-le v2, v0, :cond_4

    .line 1675
    const/4 v2, 0x0

    move/from16 v0, v22

    invoke-virtual {v6, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_3

    .line 1696
    .restart local v18       #i$:Ljava/util/Iterator;
    .restart local v23       #media:Lcom/android/mms/model/MediaModel;
    .restart local v26       #result:I
    .restart local v28       #slide:Lcom/android/mms/model/SlideModel;
    .restart local v29       #slideShow:Lcom/android/mms/model/SlideshowModel;
    :cond_d
    :try_start_1
    invoke-virtual/range {v23 .. v23}, Lcom/android/mms/model/MediaModel;->isAudio()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1697
    move-object/from16 v0, v23

    check-cast v0, Lcom/android/mms/model/AudioModel;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/mms/model/AudioModel;->checkCreationMode()V

    .line 1698
    check-cast v23, Lcom/android/mms/model/AudioModel;

    .end local v23           #media:Lcom/android/mms/model/MediaModel;
    invoke-virtual/range {v23 .. v23}, Lcom/android/mms/model/AudioModel;->checkContentRestriction()V

    goto/16 :goto_4

    .line 1705
    :catch_1
    move-exception v15

    .line 1706
    .local v15, e:Lcom/android/mms/ExceedMessageSizeException;
    const/16 v26, -0x2

    .line 1711
    goto/16 :goto_4

    .line 1699
    .end local v15           #e:Lcom/android/mms/ExceedMessageSizeException;
    .restart local v23       #media:Lcom/android/mms/model/MediaModel;
    :cond_e
    invoke-virtual/range {v23 .. v23}, Lcom/android/mms/model/MediaModel;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1700
    move-object/from16 v0, v23

    check-cast v0, Lcom/android/mms/model/VideoModel;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/mms/model/VideoModel;->checkCreationMode()V

    .line 1701
    check-cast v23, Lcom/android/mms/model/VideoModel;

    .end local v23           #media:Lcom/android/mms/model/MediaModel;
    invoke-virtual/range {v23 .. v23}, Lcom/android/mms/model/VideoModel;->checkContentRestriction()V
    :try_end_1
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/android/mms/ResolutionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_4

    .line 1707
    :catch_2
    move-exception v15

    .line 1708
    .local v15, e:Lcom/android/mms/ResolutionException;
    const/16 v26, -0x4

    .line 1711
    goto/16 :goto_4

    .line 1709
    .end local v15           #e:Lcom/android/mms/ResolutionException;
    :catch_3
    move-exception v15

    .line 1710
    .local v15, e:Lcom/android/mms/ContentRestrictionException;
    const/16 v26, -0x5

    goto/16 :goto_4

    .line 1715
    .end local v15           #e:Lcom/android/mms/ContentRestrictionException;
    .end local v18           #i$:Ljava/util/Iterator;
    .end local v28           #slide:Lcom/android/mms/model/SlideModel;
    :cond_f
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsList()Ljava/util/ArrayList;

    move-result-object v11

    .line 1717
    .local v11, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/AttachmentModel;>;"
    if-eqz v11, :cond_12

    .line 1718
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 1719
    .local v10, attachCount:I
    const/16 v16, 0x0

    .local v16, i:I
    :goto_6
    move/from16 v0, v16

    if-ge v0, v10, :cond_12

    .line 1722
    :try_start_2
    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/AttachmentModel;

    invoke-virtual {v2}, Lcom/android/mms/model/AttachmentModel;->getContentType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/x-vNote"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/AttachmentModel;

    invoke-virtual {v2}, Lcom/android/mms/model/AttachmentModel;->getContentType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/x-vtodo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1724
    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/MessageOptions;->checkCRForRawAttachment()V
    :try_end_2
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lcom/android/mms/ResolutionException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_2 .. :try_end_2} :catch_7

    .line 1719
    :cond_11
    :goto_7
    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    .line 1727
    :catch_4
    move-exception v15

    .line 1728
    .local v15, e:Lcom/android/mms/UnsupportContentTypeException;
    const/16 v26, -0x3

    .line 1735
    goto :goto_7

    .line 1729
    .end local v15           #e:Lcom/android/mms/UnsupportContentTypeException;
    :catch_5
    move-exception v15

    .line 1730
    .local v15, e:Lcom/android/mms/ExceedMessageSizeException;
    const/16 v26, -0x2

    .line 1735
    goto :goto_7

    .line 1731
    .end local v15           #e:Lcom/android/mms/ExceedMessageSizeException;
    :catch_6
    move-exception v15

    .line 1732
    .local v15, e:Lcom/android/mms/ResolutionException;
    const/16 v26, -0x4

    .line 1735
    goto :goto_7

    .line 1733
    .end local v15           #e:Lcom/android/mms/ResolutionException;
    :catch_7
    move-exception v15

    .line 1734
    .local v15, e:Lcom/android/mms/ContentRestrictionException;
    const/16 v26, -0x5

    goto :goto_7

    .line 1739
    .end local v10           #attachCount:I
    .end local v15           #e:Lcom/android/mms/ContentRestrictionException;
    .end local v16           #i:I
    :cond_12
    const/4 v2, -0x5

    move/from16 v0, v26

    if-eq v0, v2, :cond_13

    const/4 v2, -0x4

    move/from16 v0, v26

    if-ne v0, v2, :cond_17

    .line 1740
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/mms/model/CarrierContentRestriction;->getMmsCreationMode(Landroid/content/Context;)I

    move-result v13

    .line 1743
    .local v13, creationMode:I
    const/4 v2, 0x1

    if-ne v13, v2, :cond_14

    .line 1744
    new-instance v12, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-direct {v12, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1746
    .local v12, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x1010355

    invoke-virtual {v12, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 1747
    const v2, 0x7f0a00a7

    invoke-virtual {v12, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1748
    const v2, 0x7f0a0176

    invoke-virtual {v12, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1749
    const v2, 0x7f0a006a

    new-instance v3, Lcom/android/mms/ui/MessageOptions$CreationOkListener;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v3, v0, v1, v5, v6}, Lcom/android/mms/ui/MessageOptions$CreationOkListener;-><init>(Lcom/android/mms/ui/MessageOptions;Lcom/android/mms/ui/MessageItem;Lcom/google/android/mms/pdu/SendReq;Ljava/lang/String;)V

    invoke-virtual {v12, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1751
    const v2, 0x7f0a006b

    const/4 v3, 0x0

    invoke-virtual {v12, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1752
    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 1753
    .end local v12           #builder:Landroid/app/AlertDialog$Builder;
    :cond_14
    if-nez v13, :cond_16

    .line 1754
    new-instance v12, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-direct {v12, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1756
    .restart local v12       #builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0200ed

    invoke-virtual {v12, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1757
    const/4 v2, -0x4

    move/from16 v0, v26

    if-ne v0, v2, :cond_15

    .line 1758
    const v2, 0x7f0a0043

    invoke-virtual {v12, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1762
    :goto_8
    const v2, 0x7f0a0180

    invoke-virtual {v12, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1763
    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v12, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1764
    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 1760
    :cond_15
    const v2, 0x7f0a012c

    invoke-virtual {v12, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_8

    .line 1767
    .end local v12           #builder:Landroid/app/AlertDialog$Builder;
    :cond_16
    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move/from16 v4, p1

    move/from16 v8, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/mms/ui/MessageOptions;->forwardMessageStartActivityForMms(Lcom/android/mms/ui/MessageItem;ZLcom/google/android/mms/pdu/SendReq;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 1773
    .end local v13           #creationMode:I
    :cond_17
    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move/from16 v4, p1

    move/from16 v8, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/mms/ui/MessageOptions;->forwardMessageStartActivityForMms(Lcom/android/mms/ui/MessageItem;ZLcom/google/android/mms/pdu/SendReq;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 1778
    .end local v5           #sendReq:Lcom/google/android/mms/pdu/SendReq;
    .end local v6           #subject:Ljava/lang/String;
    .end local v11           #attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/AttachmentModel;>;"
    .end local v22           #maxSubjectLength:I
    .end local v26           #result:I
    .end local v29           #slideShow:Lcom/android/mms/model/SlideshowModel;
    :cond_18
    new-instance v19, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    const-class v3, Lcom/android/mms/ui/ConversationComposer;

    move-object/from16 v0, v19

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1779
    .local v19, intent:Landroid/content/Intent;
    const-string v2, "exit_on_sent"

    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1780
    const-string v2, "forwarded_message"

    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1784
    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_1b

    .line 1785
    const-string v2, "sms_body"

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1800
    :goto_9
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v2

    const-string v3, "history_searchView"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v21

    .line 1801
    .local v21, mFromSearchView:Landroid/content/SharedPreferences;
    const-string v2, "FromSearchView"

    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1802
    const-string v2, "FromNestedSearchActivity"

    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1807
    :cond_19
    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_22

    .line 1810
    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/ui/MessageItem;->isGroupSms()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 1811
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/android/mms/ui/MessageItem;->mGroupId:J

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/mms/ui/MessageOptions;->getFailedAddress(J)[Ljava/lang/String;

    move-result-object v14

    .line 1812
    .local v14, dests:[Ljava/lang/String;
    if-eqz v14, :cond_1

    .line 1815
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    .line 1816
    .local v25, recipients:Ljava/lang/StringBuilder;
    move-object v9, v14

    .local v9, arr$:[Ljava/lang/String;
    array-length v0, v9

    move/from16 v20, v0

    .local v20, len$:I
    const/16 v17, 0x0

    .local v17, i$:I
    :goto_a
    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_1f

    aget-object v24, v9, v17

    .line 1817
    .local v24, recipient:Ljava/lang/String;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_1a

    .line 1818
    const-string v2, ", "

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1820
    :cond_1a
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1816
    add-int/lit8 v17, v17, 0x1

    goto :goto_a

    .line 1787
    .end local v9           #arr$:[Ljava/lang/String;
    .end local v14           #dests:[Ljava/lang/String;
    .end local v17           #i$:I
    .end local v20           #len$:I
    .end local v21           #mFromSearchView:Landroid/content/SharedPreferences;
    .end local v24           #recipient:Ljava/lang/String;
    .end local v25           #recipients:Ljava/lang/StringBuilder;
    :cond_1b
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsForwardPrefix()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1788
    const-string v2, "sms_body"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    const v7, 0x7f0a0049

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_9

    .line 1789
    :cond_1c
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMenuInsertSenderInfoWhenFwdMsg()Z

    move-result v2

    if-eqz v2, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/mms/ui/ComposeMessageFragment;->isInsertSenderInfoWhenFwdMsgEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1790
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p2

    invoke-static {v2, v0}, Lcom/android/mms/ui/MessageUtils;->getSenderInformation(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v27

    .line 1791
    .local v27, senderInformation:Ljava/lang/String;
    if-eqz v27, :cond_1d

    .line 1792
    const-string v2, "sms_body"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_9

    .line 1794
    :cond_1d
    const-string v2, "sms_body"

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_9

    .line 1796
    .end local v27           #senderInformation:Ljava/lang/String;
    :cond_1e
    const-string v2, "sms_body"

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_9

    .line 1822
    .restart local v9       #arr$:[Ljava/lang/String;
    .restart local v14       #dests:[Ljava/lang/String;
    .restart local v17       #i$:I
    .restart local v20       #len$:I
    .restart local v21       #mFromSearchView:Landroid/content/SharedPreferences;
    .restart local v25       #recipients:Ljava/lang/StringBuilder;
    :cond_1f
    const-string v2, "recipients"

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1827
    .end local v9           #arr$:[Ljava/lang/String;
    .end local v14           #dests:[Ljava/lang/String;
    .end local v17           #i$:I
    .end local v20           #len$:I
    .end local v25           #recipients:Ljava/lang/StringBuilder;
    :goto_b
    const-string v2, "edit_message"

    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1830
    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/android/mms/ui/MessageItem;->mReserved:J

    const-wide/16 v7, 0x1

    cmp-long v2, v2, v7

    if-nez v2, :cond_20

    .line 1831
    const-string v2, "reserved"

    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1832
    const-string v2, "reservedTime"

    move-object/from16 v0, p2

    iget-wide v3, v0, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1835
    :cond_20
    sget v2, Lcom/android/mms/ui/MessageOptions;->mLaunchApp:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_21

    .line 1836
    const-string v2, "fromFolderView"

    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1838
    :cond_21
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/mms/ui/MessageOptions;->deleteFailedMsg(Lcom/android/mms/ui/MessageItem;)V

    .line 1839
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/MessageOptions;->finishViewerCheckFolderViewMode()V

    .line 1841
    :cond_22
    const/high16 v2, 0x1000

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1844
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/ui/MessageOptions;->isLockedMessageList:Z

    const/4 v3, 0x1

    if-eq v2, v3, :cond_23

    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/android/mms/ui/MessageItem;->mReserved:J

    const-wide/16 v7, 0x1

    cmp-long v2, v2, v7

    if-nez v2, :cond_24

    .line 1845
    :cond_23
    const-string v2, "locked_message_list"

    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1847
    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    const-string v3, "com.android.mms.ui.ForwardMessageActivity"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 1848
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1825
    :cond_25
    const-string v2, "recipients"

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_b
.end method

.method public getCurrentSlideLocation()I
    .locals 1

    .prologue
    .line 3054
    iget v0, p0, Lcom/android/mms/ui/MessageOptions;->mCurSlideLocation:I

    return v0
.end method

.method public isPlayerStop(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 2729
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_1

    .line 2730
    :cond_0
    const/4 v0, 0x1

    .line 2732
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lockMessage(Lcom/android/mms/ui/MessageItem;Z)V
    .locals 7
    .parameter "msgItem"
    .parameter "locked"

    .prologue
    const/4 v3, 0x1

    .line 2231
    const-string v4, "Mms/MessageOptions"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lockMessage(),msgItem="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",locked="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2234
    const-string v4, "sms"

    iget-object v5, p1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2235
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isGroupSms()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2236
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->SMS_GROUP_CONTENT_URI:Landroid/net/Uri;

    .line 2246
    .local v1, uri:Landroid/net/Uri;
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAllContextMenuInMsgViewer()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2247
    iput-boolean p2, p1, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    .line 2250
    :cond_0
    iget-wide v4, p1, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v1, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 2251
    .local v0, lockUri:Landroid/net/Uri;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 2252
    .local v2, values:Landroid/content/ContentValues;
    const-string v4, "locked"

    if-eqz p2, :cond_4

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2254
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/mms/ui/MessageOptions$4;

    invoke-direct {v4, p0, v0, v2}, Lcom/android/mms/ui/MessageOptions$4;-><init>(Lcom/android/mms/ui/MessageOptions;Landroid/net/Uri;Landroid/content/ContentValues;)V

    const-string v5, "lockMessage"

    invoke-direct {v3, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 2259
    return-void

    .line 2238
    .end local v0           #lockUri:Landroid/net/Uri;
    .end local v1           #uri:Landroid/net/Uri;
    .end local v2           #values:Landroid/content/ContentValues;
    :cond_1
    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    .restart local v1       #uri:Landroid/net/Uri;
    goto :goto_0

    .line 2239
    .end local v1           #uri:Landroid/net/Uri;
    :cond_2
    const-string v4, "mms"

    iget-object v5, p1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2240
    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    .restart local v1       #uri:Landroid/net/Uri;
    goto :goto_0

    .line 2242
    .end local v1           #uri:Landroid/net/Uri;
    :cond_3
    sget-object v1, Lcom/android/mms/ui/MessageUtils;->WAP_PUSH_MESSAGE_BY_ID_CONTENT_URI:Landroid/net/Uri;

    .restart local v1       #uri:Landroid/net/Uri;
    goto :goto_0

    .line 2252
    .restart local v0       #lockUri:Landroid/net/Uri;
    .restart local v2       #values:Landroid/content/ContentValues;
    :cond_4
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public openNewComposer(Ljava/util/ArrayList;Z)V
    .locals 4
    .parameter
    .parameter "setFocusRecipient"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, numList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 3124
    const-string v1, "Mms/MessageOptions"

    const-string v2, "openNewComposer"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3125
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-nez v1, :cond_0

    .line 3126
    const-string v1, "Mms/MessageOptions"

    const-string v2, "openNewComposer mWorkingMessage is null."

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3139
    :goto_0
    return-void

    .line 3129
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3130
    invoke-direct {p0, p1, v3, p2}, Lcom/android/mms/ui/MessageOptions;->openNewcomposerStartActivityForMms(Ljava/util/ArrayList;ZZ)V

    goto :goto_0

    .line 3132
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/android/mms/ui/ConversationComposer;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3133
    .local v0, addIntent:Landroid/content/Intent;
    const-string v1, "add_recipient_message"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3134
    const-string v1, "sendto"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 3135
    const-string v1, "sms_body"

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v2, v3}, Lcom/android/mms/data/WorkingMessage;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3136
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1}, Lcom/android/mms/ui/ComposeMessageFragment;->resetDraftMessage()V

    .line 3137
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mComposer:Lcom/android/mms/ui/ComposeMessageFragment;

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/ComposeMessageFragment;->onNewIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public optionItemSelected(Landroid/view/MenuItem;)Z
    .locals 38
    .parameter "item"

    .prologue
    .line 709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v32, v0

    if-nez v32, :cond_0

    .line 710
    const/16 v32, 0x0

    .line 1079
    :goto_0
    return v32

    .line 712
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v32

    packed-switch v32, :pswitch_data_0

    .line 1079
    :pswitch_0
    const/16 v32, 0x0

    goto :goto_0

    .line 715
    :pswitch_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v32

    if-eqz v32, :cond_4

    .line 717
    sget v32, Lcom/android/mms/ui/MessageOptions;->mLaunchApp:I

    const/16 v33, 0x3

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_1

    .line 719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v32, v0

    const-wide/16 v33, 0x0

    invoke-static/range {v32 .. v34}, Lcom/android/mms/ui/ComposeMessageFragment;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v14

    .line 720
    .local v14, intent:Landroid/content/Intent;
    const-string v32, "address"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v14}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 722
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/app/Activity;->finish()V

    .line 740
    .end local v14           #intent:Landroid/content/Intent;
    :goto_1
    const/16 v32, 0x1

    goto :goto_0

    .line 724
    :cond_1
    sget v32, Lcom/android/mms/ui/MessageOptions;->mLaunchApp:I

    const/16 v33, 0x2

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_2

    sget v32, Lcom/android/mms/ui/MessageOptions;->mLaunchApp:I

    const/16 v33, 0x4

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_3

    .line 725
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v32, v0

    const-wide/16 v33, 0x0

    invoke-static/range {v32 .. v34}, Lcom/android/mms/ui/ComposeMessageFragment;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v14

    .line 726
    .restart local v14       #intent:Landroid/content/Intent;
    const-string v32, "address"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 727
    const-string v32, "exit_on_sent"

    const/16 v33, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 728
    const-string v32, "fromFolderView"

    const/16 v33, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 729
    const-string v32, "replyComposer"

    const/16 v33, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 730
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v14}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 732
    .end local v14           #intent:Landroid/content/Intent;
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/MessageOptions;->launchOrMoveBackToComposerForReply()V

    goto :goto_1

    .line 737
    :cond_4
    const/16 v32, 0x1

    sput-boolean v32, Lcom/android/mms/ui/MessageOptions;->sReplyLaunched:Z

    .line 738
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/MessageOptions;->launchOrMoveBackToComposerForReply()V

    goto :goto_1

    .line 744
    :pswitch_2
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v22

    .line 745
    .local v22, multiSimNum:I
    const-string v32, "persist.sys.dataprefer.simid"

    const/16 v33, 0x0

    invoke-static/range {v32 .. v33}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v19

    .line 748
    .local v19, mDataSimSlot:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mSimSlot:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/mms/MmsConfig;->getIMSIbySimSlot(I)Ljava/lang/String;

    move-result-object v20

    .line 750
    .local v20, mSystemImsi:Ljava/lang/String;
    const/16 v32, 0x1

    move/from16 v0, v22

    move/from16 v1, v32

    if-le v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v32

    if-eqz v32, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mSimSlot:I

    move/from16 v32, v0

    move/from16 v0, v32

    move/from16 v1, v19

    if-eq v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSimImsi:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_5

    .line 752
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v32

    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput-boolean v0, v1, Lcom/android/mms/MmsApp;->mDataSwitchDialog:Z

    .line 754
    new-instance v32, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v33, v0

    invoke-direct/range {v32 .. v33}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v33, 0x1080027

    invoke-virtual/range {v32 .. v33}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v32

    const v33, 0x7f0a04bf

    invoke-virtual/range {v32 .. v33}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v32

    const v33, 0x7f0a04be

    invoke-virtual/range {v32 .. v33}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v32

    const v33, 0x7f0a006a

    new-instance v34, Lcom/android/mms/ui/MessageOptions$1;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/mms/ui/MessageOptions$1;-><init>(Lcom/android/mms/ui/MessageOptions;)V

    invoke-virtual/range {v32 .. v34}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v32

    const v33, 0x7f0a006b

    const/16 v34, 0x0

    invoke-virtual/range {v32 .. v34}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 775
    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v32

    if-eqz v32, :cond_9

    .line 777
    sget v32, Lcom/android/mms/ui/MessageOptions;->mLaunchApp:I

    const/16 v33, 0x2

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_8

    .line 780
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/ui/MessageOptions;->resendMessage(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;Z)Z

    .line 781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    instance-of v0, v0, Lcom/android/mms/ui/BoxListViewActivity;

    move/from16 v32, v0

    if-eqz v32, :cond_7

    .line 783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v32, v0

    check-cast v32, Lcom/android/mms/ui/BoxListViewActivity;

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Lcom/android/mms/ui/BoxListViewActivity;->notifyBoxDataChanged(Z)V

    .line 798
    :cond_6
    :goto_2
    const/16 v32, 0x1

    goto/16 :goto_0

    .line 786
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/mms/ui/MessageItem;->isGroupSms()Z

    move-result v32

    if-nez v32, :cond_6

    .line 787
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/MessageOptions;->finishViewerCheckFolderViewMode()V

    goto :goto_2

    .line 791
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const/16 v34, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/ui/MessageOptions;->resendMessage(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;Z)Z

    goto :goto_2

    .line 795
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const/16 v34, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/ui/MessageOptions;->resendMessage(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;Z)Z

    goto :goto_2

    .line 801
    .end local v19           #mDataSimSlot:I
    .end local v20           #mSystemImsi:Ljava/lang/String;
    .end local v22           #multiSimNum:I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v32

    if-nez v32, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/mms/ui/MessageItem;->isWpm()Z

    move-result v32

    if-eqz v32, :cond_c

    .line 802
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageOptions;->copyToClipboard(Ljava/lang/String;)V

    .line 806
    :cond_b
    :goto_3
    const/16 v32, 0x1

    goto/16 :goto_0

    .line 803
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v32

    if-eqz v32, :cond_b

    .line 804
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/MessageOptions;->getCurSlideBody()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageOptions;->copyToClipboard(Ljava/lang/String;)V

    goto :goto_3

    .line 808
    :pswitch_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCopyToSim()Z

    move-result v32

    if-eqz v32, :cond_d

    .line 811
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v22

    .line 812
    .restart local v22       #multiSimNum:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-static/range {v32 .. v33}, Lcom/android/mms/ui/MessageUtils;->isSimActive(Landroid/content/Context;I)Z

    move-result v26

    .line 813
    .local v26, sim_1_active:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    invoke-static/range {v32 .. v33}, Lcom/android/mms/ui/MessageUtils;->isSimActive(Landroid/content/Context;I)Z

    move-result v27

    .line 814
    .local v27, sim_2_active:Z
    const-string v32, "Mms/MessageOptions"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "sim_1_active: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " sim_2_active: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    const/16 v32, 0x1

    move/from16 v0, v22

    move/from16 v1, v32

    if-le v0, v1, :cond_e

    if-eqz v26, :cond_e

    if-eqz v27, :cond_e

    .line 819
    new-instance v10, Lcom/android/mms/ui/CopyToSimSelectorAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v33, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-direct {v10, v0, v1}, Lcom/android/mms/ui/CopyToSimSelectorAdapter;-><init>(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;)V

    .line 821
    .local v10, copyToSimSelectorAdapter:Lcom/android/mms/ui/CopyToSimSelectorAdapter;
    new-instance v7, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-direct {v7, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 822
    .local v7, builder:Landroid/app/AlertDialog$Builder;
    const v32, 0x7f0a0023

    move/from16 v0, v32

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 823
    new-instance v32, Lcom/android/mms/ui/MessageOptions$2;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v10}, Lcom/android/mms/ui/MessageOptions$2;-><init>(Lcom/android/mms/ui/MessageOptions;Lcom/android/mms/ui/CopyToSimSelectorAdapter;)V

    move-object/from16 v0, v32

    invoke-virtual {v7, v10, v0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 830
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 844
    .end local v7           #builder:Landroid/app/AlertDialog$Builder;
    .end local v10           #copyToSimSelectorAdapter:Lcom/android/mms/ui/CopyToSimSelectorAdapter;
    .end local v22           #multiSimNum:I
    .end local v26           #sim_1_active:Z
    .end local v27           #sim_2_active:Z
    :cond_d
    :goto_4
    const/16 v32, 0x1

    goto/16 :goto_0

    .line 833
    .restart local v22       #multiSimNum:I
    .restart local v26       #sim_1_active:Z
    .restart local v27       #sim_2_active:Z
    :cond_e
    const/16 v32, 0x1

    move/from16 v0, v22

    move/from16 v1, v32

    if-le v0, v1, :cond_f

    if-nez v26, :cond_f

    if-eqz v27, :cond_f

    .line 834
    const-string v32, "Mms/MessageOptions"

    const-string v33, "MENU_COPY_MESSAGE_TO_SIM > SIM2"

    invoke-static/range {v32 .. v33}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const/16 v34, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/ui/MessageOptions;->copyMessageToSIM(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;I)V

    goto :goto_4

    .line 837
    :cond_f
    const-string v32, "Mms/MessageOptions"

    const-string v33, "MENU_COPY_MESSAGE_TO_SIM > SIM1"

    invoke-static/range {v32 .. v33}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/ui/MessageOptions;->copyMessageToSIM(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;I)V

    goto :goto_4

    .line 847
    .end local v22           #multiSimNum:I
    .end local v26           #sim_1_active:Z
    .end local v27           #sim_2_active:Z
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageOptions;->copyMessageToSDCARD(Lcom/android/mms/ui/MessageItem;)V

    .line 848
    const/16 v32, 0x1

    goto/16 :goto_0

    .line 855
    :pswitch_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAllContextMenuInMsgViewer()Z

    move-result v32

    if-eqz v32, :cond_11

    .line 856
    const/4 v15, 0x0

    .line 857
    .local v15, isSlideTmp:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    instance-of v0, v0, Lcom/android/mms/ui/SlideshowActivity;

    move/from16 v32, v0

    if-eqz v32, :cond_10

    .line 858
    const/4 v15, 0x1

    .line 861
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v15, v1, v2}, Lcom/android/mms/ui/MessageOptions;->forwardMessage(ZLcom/android/mms/ui/MessageItem;Z)V

    .line 867
    .end local v15           #isSlideTmp:Z
    :goto_6
    const/16 v32, 0x1

    goto/16 :goto_0

    .line 860
    .restart local v15       #isSlideTmp:Z
    :cond_10
    const/4 v15, 0x0

    goto :goto_5

    .line 864
    .end local v15           #isSlideTmp:Z
    :cond_11
    const/16 v32, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    move/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/MessageOptions;->forwardMessage(ZLcom/android/mms/ui/MessageItem;)V

    goto :goto_6

    .line 870
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const/16 v34, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/ui/MessageOptions;->viewMessageDetail(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;Z)V

    .line 871
    const/16 v32, 0x1

    goto/16 :goto_0

    .line 873
    :pswitch_8
    sget-object v32, Lcom/android/mms/ui/MessageOptions;->mType:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/mms/ui/MessageOptions;->islockmessage(Ljava/lang/String;)Z

    move-result v16

    .line 874
    .local v16, islocked:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    move-object/from16 v31, v0

    .line 875
    .local v31, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/mms/ui/MessageItem;->isGroupSms()Z

    move-result v32

    if-eqz v32, :cond_12

    .line 876
    sget-object v32, Lcom/android/mms/ui/MessageUtils;->SMS_GROUP_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v33

    invoke-static/range {v32 .. v34}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v31

    .line 877
    :cond_12
    new-instance v17, Lcom/android/mms/ui/MessageOptions$DeleteMessageListener;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    move/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/android/mms/ui/MessageOptions$DeleteMessageListener;-><init>(Lcom/android/mms/ui/MessageOptions;Landroid/net/Uri;Z)V

    .line 878
    .local v17, l:Lcom/android/mms/ui/MessageOptions$DeleteMessageListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/MessageOptions;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;Z)V

    .line 879
    const/16 v32, 0x1

    goto/16 :goto_0

    .line 882
    .end local v16           #islocked:Z
    .end local v17           #l:Lcom/android/mms/ui/MessageOptions$DeleteMessageListener;
    .end local v31           #uri:Landroid/net/Uri;
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    sget-wide v34, Lcom/android/mms/ui/MessageOptions;->msgId:J

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v33

    move-wide/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/mms/ui/MessageOptions;->showAttachmentList(Lcom/android/mms/model/SlideshowModel;ZJ)V

    .line 883
    const/16 v32, 0x1

    goto/16 :goto_0

    .line 886
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    move-wide/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    move-wide/from16 v36, v0

    invoke-static/range {v35 .. v37}, Lcom/android/mms/ui/MessageUtils;->saveRingtone(Landroid/content/Context;J)Z

    move-result v35

    invoke-static/range {v32 .. v35}, Lcom/android/mms/ui/MessageUtils;->getDrmMimeSavedStringRsrc(Landroid/content/Context;JZ)I

    move-result v24

    .line 888
    .local v24, resId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v24

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/Toast;->show()V

    .line 889
    const/16 v32, 0x1

    goto/16 :goto_0

    .line 893
    .end local v24           #resId:I
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->numberList:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/ui/MessageOptions;->ReplyAllMessage(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;Ljava/util/ArrayList;)V

    .line 894
    const/16 v32, 0x1

    goto/16 :goto_0

    .line 899
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/MessageOptions;->lockMessage(Lcom/android/mms/ui/MessageItem;Z)V

    .line 900
    const/16 v32, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/mms/ui/MessageOptions;->setLockIcon(Z)V

    .line 901
    const/16 v32, 0x1

    goto/16 :goto_0

    .line 904
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/MessageOptions;->lockMessage(Lcom/android/mms/ui/MessageItem;Z)V

    .line 905
    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/mms/ui/MessageOptions;->setLockIcon(Z)V

    .line 906
    const/16 v32, 0x1

    goto/16 :goto_0

    .line 909
    :pswitch_e
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v14

    .line 910
    .restart local v14       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v32, v0

    const/16 v33, 0x1b

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v0, v14, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 911
    const/16 v32, 0x1

    goto/16 :goto_0

    .line 914
    .end local v14           #intent:Landroid/content/Intent;
    :pswitch_f
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v14

    .line 915
    .restart local v14       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v14}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 916
    const/16 v32, 0x1

    goto/16 :goto_0

    .line 921
    .end local v14           #intent:Landroid/content/Intent;
    :pswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/mms/MmsConfig;->isUltimateStandbyModeOn(Landroid/content/Context;)Z

    move-result v32

    if-eqz v32, :cond_13

    .line 922
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/android/mms/ui/MessageUtils;->showUsmWarningDialog(Landroid/app/Activity;)V

    .line 923
    const/16 v32, 0x1

    goto/16 :goto_0

    .line 925
    :cond_13
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getAvailableStorage()J

    move-result-wide v32

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v34

    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v34, v0

    cmp-long v32, v32, v34

    if-gez v32, :cond_14

    .line 926
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    const v33, 0x7f0a0196

    invoke-virtual/range {v32 .. v33}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 927
    .local v29, unableToDownload:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/Toast;->show()V

    .line 948
    .end local v29           #unableToDownload:Ljava/lang/String;
    :goto_7
    const/16 v32, 0x1

    goto/16 :goto_0

    .line 942
    :cond_14
    new-instance v14, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    const-class v33, Lcom/android/mms/transaction/TransactionService;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-direct {v14, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 943
    .restart local v14       #intent:Landroid/content/Intent;
    const-string v32, "uri"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 944
    const-string v32, "type"

    const/16 v33, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v33

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 945
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v14}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_7

    .line 955
    .end local v14           #intent:Landroid/content/Intent;
    :pswitch_11
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAllContextMenuInMsgViewer()Z

    move-result v32

    if-eqz v32, :cond_16

    .line 956
    const/4 v15, 0x0

    .line 957
    .restart local v15       #isSlideTmp:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    instance-of v0, v0, Lcom/android/mms/ui/SlideshowActivity;

    move/from16 v32, v0

    if-eqz v32, :cond_17

    .line 958
    const/4 v15, 0x1

    .line 962
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    move/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_15

    .line 963
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageOptions;->isLockedMessageList:Z

    .line 965
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v15, v1, v2}, Lcom/android/mms/ui/MessageOptions;->forwardMessage(ZLcom/android/mms/ui/MessageItem;Z)V

    .line 966
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageOptions;->isLockedMessageList:Z

    .line 970
    .end local v15           #isSlideTmp:Z
    :cond_16
    const/16 v32, 0x1

    goto/16 :goto_0

    .line 960
    .restart local v15       #isSlideTmp:Z
    :cond_17
    const/4 v15, 0x0

    goto :goto_8

    .line 976
    .end local v15           #isSlideTmp:Z
    :pswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-static/range {v32 .. v33}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v9

    .line 978
    .local v9, contact:Lcom/android/mms/data/Contact;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableBlackListForCHN()Z

    move-result v32

    if-eqz v32, :cond_18

    .line 979
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-static {v0, v9}, Lcom/android/mms/ui/MessageUtils;->createblockNumberSettingDialog(Landroid/content/Context;Lcom/android/mms/data/Contact;)V

    .line 982
    :goto_9
    const/16 v32, 0x1

    goto/16 :goto_0

    .line 981
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageOptions;->confirmRegisterAsSpamNumber()V

    goto :goto_9

    .line 987
    .end local v9           #contact:Lcom/android/mms/data/Contact;
    :pswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-static/range {v32 .. v33}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v30

    .line 988
    .local v30, unblockContact:Lcom/android/mms/data/Contact;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v32, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/android/mms/ui/MessageUtils;->unregisterSpamNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_19

    .line 989
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v32, v0

    const v33, 0x7f0a039d

    const/16 v34, 0x0

    invoke-static/range {v32 .. v34}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/widget/Toast;->show()V

    .line 990
    :cond_19
    const/16 v32, 0x1

    goto/16 :goto_0

    .line 994
    .end local v30           #unblockContact:Lcom/android/mms/data/Contact;
    :pswitch_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v32

    if-eqz v32, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v33, v0

    const v34, 0x7f0a0011

    invoke-virtual/range {v33 .. v34}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_1d

    .line 995
    const/16 v21, 0x0

    .line 997
    .local v21, msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v32

    move-object/from16 v0, v32

    check-cast v0, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    move-object/from16 v21, v0
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1001
    :goto_a
    invoke-virtual/range {v21 .. v21}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v28

    .line 1002
    .local v28, to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    .line 1004
    .local v25, sb:Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    .line 1005
    .local v11, count:I
    if-eqz v28, :cond_1c

    .line 1006
    move-object/from16 v6, v28

    .local v6, arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    array-length v0, v6

    move/from16 v18, v0

    .local v18, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    :goto_b
    move/from16 v0, v18

    if-ge v13, v0, :cond_1b

    aget-object v23, v6, v13

    .line 1007
    .local v23, recipient:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-lez v11, :cond_1a

    .line 1008
    const-string v32, ", "

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1010
    :cond_1a
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/android/mms/data/Contact;->getContactName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1011
    add-int/lit8 v11, v11, 0x1

    .line 1006
    add-int/lit8 v13, v13, 0x1

    goto :goto_b

    .line 998
    .end local v6           #arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v11           #count:I
    .end local v13           #i$:I
    .end local v18           #len$:I
    .end local v23           #recipient:Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v25           #sb:Ljava/lang/StringBuilder;
    .end local v28           #to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_0
    move-exception v12

    .line 999
    .local v12, e:Lcom/google/android/mms/MmsException;
    const-string v32, "Mms/MessageOptions"

    const-string v33, "Failed to load the message: "

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-static {v0, v1, v12}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    .line 1013
    .end local v12           #e:Lcom/google/android/mms/MmsException;
    .restart local v6       #arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v11       #count:I
    .restart local v13       #i$:I
    .restart local v18       #len$:I
    .restart local v25       #sb:Ljava/lang/StringBuilder;
    .restart local v28       #to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_1b
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1037
    .end local v6           #arr$:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v13           #i$:I
    .end local v18           #len$:I
    .end local v21           #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    .end local v28           #to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .local v5, address:Ljava/lang/String;
    :goto_c
    new-instance v32, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v33, v0

    invoke-direct/range {v32 .. v33}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v33, 0x1010355

    invoke-virtual/range {v32 .. v33}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v32

    const v33, 0x7f0a0177

    invoke-virtual/range {v32 .. v33}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v33, v0

    const v34, 0x7f0a03db

    invoke-virtual/range {v33 .. v34}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v33

    const-string v34, "%s"

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v32

    const v33, 0x7f0a006a

    new-instance v34, Lcom/android/mms/ui/MessageOptions$SendNowListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v35, v0

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    move-object/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/MessageOptions$SendNowListener;-><init>(Lcom/android/mms/ui/MessageOptions;Lcom/android/mms/ui/MessageItem;)V

    invoke-virtual/range {v32 .. v34}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v32

    const v33, 0x7f0a006b

    const/16 v34, 0x0

    invoke-virtual/range {v32 .. v34}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v32

    sget-object v33, Lcom/android/mms/ui/MessageUtils;->mSearchBlockListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual/range {v32 .. v33}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageOptions;->mSendNowConfirmDialog:Landroid/content/DialogInterface;

    .line 1044
    const/16 v32, 0x1

    goto/16 :goto_0

    .line 1016
    .end local v5           #address:Ljava/lang/String;
    .restart local v21       #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    .restart local v28       #to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v32, v0

    const v33, 0x7f0a016f

    invoke-virtual/range {v32 .. v33}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #address:Ljava/lang/String;
    goto :goto_c

    .line 1021
    .end local v5           #address:Ljava/lang/String;
    .end local v11           #count:I
    .end local v21           #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    .end local v25           #sb:Ljava/lang/StringBuilder;
    .end local v28           #to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_1d
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    .line 1022
    .restart local v25       #sb:Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    .line 1024
    .restart local v11       #count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v32, v0

    const-string v33, ";"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .local v6, arr$:[Ljava/lang/String;
    array-length v0, v6

    move/from16 v18, v0

    .restart local v18       #len$:I
    const/4 v13, 0x0

    .restart local v13       #i$:I
    :goto_d
    move/from16 v0, v18

    if-ge v13, v0, :cond_20

    aget-object v23, v6, v13

    .line 1025
    .local v23, recipient:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v32

    if-eqz v32, :cond_1e

    .line 1024
    :goto_e
    add-int/lit8 v13, v13, 0x1

    goto :goto_d

    .line 1028
    :cond_1e
    if-lez v11, :cond_1f

    .line 1029
    const-string v32, ", "

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1031
    :cond_1f
    invoke-static/range {v23 .. v23}, Lcom/android/mms/data/Contact;->getContactName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1032
    add-int/lit8 v11, v11, 0x1

    goto :goto_e

    .line 1034
    .end local v23           #recipient:Ljava/lang/String;
    :cond_20
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .restart local v5       #address:Ljava/lang/String;
    goto/16 :goto_c

    .line 1047
    .end local v5           #address:Ljava/lang/String;
    .end local v6           #arr$:[Ljava/lang/String;
    .end local v11           #count:I
    .end local v13           #i$:I
    .end local v18           #len$:I
    .end local v25           #sb:Ljava/lang/StringBuilder;
    :pswitch_15
    sget-object v32, Lcom/android/mms/ui/MessageOptions;->mType:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/mms/ui/MessageOptions;->islockmessage(Ljava/lang/String;)Z

    move-result v16

    .line 1048
    .restart local v16       #islocked:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    move-object/from16 v31, v0

    .line 1049
    .restart local v31       #uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/mms/ui/MessageItem;->isGroupSms()Z

    move-result v32

    if-eqz v32, :cond_21

    .line 1050
    sget-object v32, Lcom/android/mms/ui/MessageUtils;->SMS_GROUP_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v33

    invoke-static/range {v32 .. v34}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v31

    .line 1051
    :cond_21
    new-instance v17, Lcom/android/mms/ui/MessageOptions$CancelMessageListener;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    move/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/android/mms/ui/MessageOptions$CancelMessageListener;-><init>(Lcom/android/mms/ui/MessageOptions;Landroid/net/Uri;Z)V

    .line 1052
    .local v17, l:Lcom/android/mms/ui/MessageOptions$CancelMessageListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/MessageOptions;->confirmCancelDialog(Landroid/content/DialogInterface$OnClickListener;Z)V

    .line 1054
    const/16 v32, 0x1

    goto/16 :goto_0

    .line 1057
    .end local v16           #islocked:Z
    .end local v17           #l:Lcom/android/mms/ui/MessageOptions$CancelMessageListener;
    .end local v31           #uri:Landroid/net/Uri;
    :pswitch_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mAddressToCall:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v32

    if-nez v32, :cond_22

    .line 1058
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mAddressToCall:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-static/range {v32 .. v33}, Lcom/android/mms/ui/MessageUtils;->makeCall(Landroid/content/Context;Ljava/lang/String;)V

    .line 1059
    :cond_22
    const/16 v32, 0x1

    goto/16 :goto_0

    .line 1062
    :pswitch_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mAddressToCall:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v32

    if-nez v32, :cond_23

    .line 1063
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mAddressToCall:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-static/range {v32 .. v33}, Lcom/android/mms/ui/MessageUtils;->makeVideoCall(Landroid/content/Context;Ljava/lang/String;)V

    .line 1064
    :cond_23
    const/16 v32, 0x1

    goto/16 :goto_0

    .line 1068
    :pswitch_18
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableRegisterCalendar()Z

    move-result v32

    if-eqz v32, :cond_24

    .line 1069
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v32

    if-eqz v32, :cond_25

    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/MessageOptions;->getCurSlideBody()Ljava/lang/String;

    move-result-object v8

    .line 1070
    .local v8, calendarstr:Ljava/lang/String;
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-static {v0, v8}, Lcom/android/mms/ui/MessageUtils;->registerToCalendar(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1071
    if-eqz v8, :cond_24

    .line 1072
    const-string v32, "Mms/MessageOptions"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "register calendar,len = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    .end local v8           #calendarstr:Ljava/lang/String;
    :cond_24
    const/16 v32, 0x1

    goto/16 :goto_0

    .line 1069
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v8, v0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    goto :goto_f

    .line 712
    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_c
        :pswitch_d
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_18
        :pswitch_9
        :pswitch_b
        :pswitch_10
        :pswitch_14
        :pswitch_15
        :pswitch_0
        :pswitch_12
        :pswitch_16
        :pswitch_17
        :pswitch_13
        :pswitch_a
    .end packed-switch
.end method

.method public resendMessage(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;Z)Z
    .locals 5
    .parameter "msgItem"
    .parameter "conversation"
    .parameter "closeActivity"

    .prologue
    const/4 v1, 0x1

    .line 1225
    const-string v2, "Mms/MessageOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resendMessage(),msgItem="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1231
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    const-string v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 1234
    .local v0, mDPM:Landroid/app/admin/DevicePolicyManager;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->getAllowTextMessaging(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1235
    const-string v2, "Mms/MessageOptions"

    const-string v3, "message sending is disabled"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1236
    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0a01a6

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1253
    :goto_0
    return v1

    .line 1242
    :cond_0
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1243
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageOptions;->resendMmsMessageItem(Lcom/android/mms/ui/MessageItem;)V

    .line 1244
    if-eqz p3, :cond_1

    .line 1245
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 1253
    :cond_1
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1246
    :cond_2
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isGroupSms()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1247
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/MessageOptions;->tryToResendGroupSms(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;Z)V

    goto :goto_1

    .line 1249
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MessageOptions;->resendSmsMessageItem(Lcom/android/mms/ui/MessageItem;)V

    .line 1250
    if-eqz p3, :cond_1

    .line 1251
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_1
.end method

.method public setCurrentSlideLocation(I)V
    .locals 0
    .parameter "slideLocation"

    .prologue
    .line 3050
    iput p1, p0, Lcom/android/mms/ui/MessageOptions;->mCurSlideLocation:I

    .line 3051
    return-void
.end method

.method public showAttachmentList(Lcom/android/mms/model/SlideshowModel;ZJ)V
    .locals 4
    .parameter "slideshow"
    .parameter "bSave"
    .parameter "msgId"

    .prologue
    .line 2587
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->getMessageUri()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/samsung/mms/content/MmsPartExport;->getMmsAttachmentsAsModelList(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 2590
    .local v0, showAttachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/AttachmentModel;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_0

    .line 2591
    iget-object v1, p0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0a016b

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2595
    :goto_0
    return-void

    .line 2593
    :cond_0
    invoke-direct {p0, p2, p3, p4, v0}, Lcom/android/mms/ui/MessageOptions;->createAttachmentDialog(ZJLjava/util/ArrayList;)V

    goto :goto_0
.end method

.method public startViewer(Lcom/android/mms/ui/MessageItem;)V
    .locals 10
    .parameter "msgItem"

    .prologue
    const/high16 v9, 0x2400

    const/4 v8, 0x1

    .line 3059
    const/4 v0, 0x0

    .line 3060
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v2

    .line 3061
    .local v2, msgId:J
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getThreadId()J

    move-result-wide v4

    .line 3065
    .local v4, threadId:J
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isWpm()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3066
    :cond_0
    iget-boolean v6, p1, Lcom/android/mms/ui/MessageItem;->mIsCMASSms:Z

    if-nez v6, :cond_2

    .line 3067
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    const-class v7, Lcom/android/mms/ui/SmsViewerActivity;

    invoke-direct {v0, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3068
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v6, "msgId"

    invoke-virtual {v0, v6, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3069
    const-string v6, "thread_id"

    invoke-virtual {v0, v6, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3070
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isWpm()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3071
    const-string v6, "isWapPush"

    invoke-virtual {v0, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3072
    :cond_1
    iget-object v6, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 3121
    :cond_2
    :goto_0
    return-void

    .line 3076
    :cond_3
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v6

    if-eqz v6, :cond_2

    iget v6, p1, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    const/16 v7, 0x82

    if-eq v6, v7, :cond_2

    .line 3078
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSinglePageSlideView()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 3079
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    const-class v7, Lcom/android/mms/ui/MmsSinglePageActivity;

    invoke-direct {v0, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3081
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3082
    const-string v6, "msgId"

    invoke-virtual {v0, v6, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3083
    const-string v6, "thread_id"

    invoke-virtual {v0, v6, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3084
    iget-object v6, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 3086
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLocationMessage()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v6, :cond_5

    iget-object v6, p1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6}, Lcom/android/mms/model/SlideshowModel;->hasLocation()Z

    move-result v6

    if-ne v6, v8, :cond_5

    .line 3088
    iget-object v6, p1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6}, Lcom/android/mms/model/SlideshowModel;->getLocationModel()Lcom/samsung/mms/model/LocationVcardModel;

    move-result-object v1

    .line 3089
    .local v1, locModel:Lcom/samsung/mms/model/LocationVcardModel;
    if-eqz v1, :cond_2

    .line 3091
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    const-class v7, Lcom/samsung/mms/location/LocationMapActivity;

    invoke-direct {v0, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3092
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v6, "extra_startup_flag"

    const/4 v7, 0x4

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3094
    const-string v6, "extra_map_url"

    invoke-virtual {v1}, Lcom/samsung/mms/model/LocationVcardModel;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3095
    const-string v6, "extra_selected_place"

    invoke-virtual {v1}, Lcom/samsung/mms/model/LocationVcardModel;->getPlaceBytes()[B

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 3097
    iget-object v6, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 3110
    .end local v1           #locModel:Lcom/samsung/mms/model/LocationVcardModel;
    :cond_5
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    const-class v7, Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct {v0, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3112
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3114
    const-string v6, "selectText"

    const-string v7, "selectTextLaunch"

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3115
    const-string v6, "msgId"

    invoke-virtual {v0, v6, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3116
    const-string v6, "thread_id"

    invoke-virtual {v0, v6, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3117
    iget-object v6, p0, Lcom/android/mms/ui/MessageOptions;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public viewMessageDetail(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;Z)V
    .locals 26
    .parameter "msgItem"
    .parameter "conversation"
    .parameter "isView"

    .prologue
    .line 1125
    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "m_type"

    aput-object v5, v4, v2

    const/4 v2, 0x2

    const-string v5, "msg_box"

    aput-object v5, v4, v2

    .line 1130
    .local v4, PROJECTION_Mms:[Ljava/lang/String;
    const/4 v2, 0x7

    new-array v12, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v12, v2

    const/4 v2, 0x1

    const-string v5, "type"

    aput-object v5, v12, v2

    const/4 v2, 0x2

    const-string v5, "address"

    aput-object v5, v12, v2

    const/4 v2, 0x3

    const-string v5, "date"

    aput-object v5, v12, v2

    const/4 v2, 0x4

    const-string v5, "error_code"

    aput-object v5, v12, v2

    const/4 v2, 0x5

    const-string v5, "group_id"

    aput-object v5, v12, v2

    const/4 v2, 0x6

    const-string v5, "pri"

    aput-object v5, v12, v2

    .line 1142
    .local v12, PROJECTION_Sms:[Ljava/lang/String;
    const/16 v19, 0x0

    .line 1143
    .local v19, address:Ljava/lang/String;
    const-string v8, "sms_id = ? AND sms._id = sms_id AND cmas.thread_id = ?"

    .line 1145
    .local v8, SELECTION_SMS_CMAS_OPTION:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 1147
    invoke-virtual/range {p2 .. p2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    const-string v5, ", "

    invoke-virtual {v2, v5}, Lcom/android/mms/data/ContactList;->formatNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1149
    :cond_0
    const-string v2, "mms"

    sget-object v5, Lcom/android/mms/ui/MessageOptions;->mType:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1150
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-wide v5, Lcom/android/mms/ui/MessageOptions;->msgId:J

    invoke-static {v2, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 1151
    .local v3, messageUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1170
    .local v14, cursor:Landroid/database/Cursor;
    :goto_0
    if-eqz v14, :cond_1

    .line 1172
    :try_start_0
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1173
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget v15, v2, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v18

    move/from16 v17, p3

    invoke-static/range {v13 .. v18}, Lcom/android/mms/ui/MessageUtils;->getMessageDetails(Landroid/content/Context;Landroid/database/Cursor;ILcom/android/mms/ui/MessageItem;ZZ)Ljava/lang/String;

    move-result-object v23

    .line 1176
    .local v23, messageDetails:Ljava/lang/String;
    new-instance v20, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1179
    .local v20, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0a00a4

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v5, 0x7f0a01e7

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1183
    invoke-virtual/range {v20 .. v20}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    sput-object v2, Lcom/android/mms/ui/MessageOptions;->detailDialog:Landroid/app/AlertDialog;

    .line 1185
    sget-object v2, Lcom/android/mms/ui/MessageOptions;->detailDialog:Landroid/app/AlertDialog;

    new-instance v5, Lcom/android/mms/ui/MessageOptions$3;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/mms/ui/MessageOptions$3;-><init>(Lcom/android/mms/ui/MessageOptions;)V

    invoke-virtual {v2, v5}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1197
    sget-object v2, Lcom/android/mms/ui/MessageOptions;->detailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1202
    if-eqz v14, :cond_1

    .line 1203
    .end local v20           #builder:Landroid/app/AlertDialog$Builder;
    .end local v23           #messageDetails:Ljava/lang/String;
    :goto_1
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1207
    :cond_1
    return-void

    .line 1154
    .end local v3           #messageUri:Landroid/net/Uri;
    .end local v14           #cursor:Landroid/database/Cursor;
    :cond_2
    const/16 v22, 0x0

    .line 1155
    .local v22, isCmas:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v0, v2, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    move-wide/from16 v24, v0

    .line 1157
    .local v24, threadId:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-boolean v0, v2, Lcom/android/mms/ui/MessageItem;->mIsCMASSms:Z

    move/from16 v22, v0

    .line 1159
    if-eqz v22, :cond_3

    .line 1160
    sget-object v2, Landroid/provider/Telephony$Cmas;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v24

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 1161
    .restart local v3       #messageUri:Landroid/net/Uri;
    const/4 v2, 0x2

    new-array v9, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-wide v5, Lcom/android/mms/ui/MessageOptions;->msgId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v2

    const/4 v2, 0x1

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v2

    .line 1162
    .local v9, selectionArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v7, Lcom/android/mms/ui/CMASViewer;->PROJECTION_SMS_CMAS:[Ljava/lang/String;

    const-string v10, "date DESC"

    move-object v6, v3

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1164
    .restart local v14       #cursor:Landroid/database/Cursor;
    goto/16 :goto_0

    .line 1165
    .end local v3           #messageUri:Landroid/net/Uri;
    .end local v9           #selectionArgs:[Ljava/lang/String;
    .end local v14           #cursor:Landroid/database/Cursor;
    :cond_3
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-wide v5, Lcom/android/mms/ui/MessageOptions;->msgId:J

    invoke-static {v2, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 1166
    .restart local v3       #messageUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v11, v3

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .restart local v14       #cursor:Landroid/database/Cursor;
    goto/16 :goto_0

    .line 1199
    .end local v22           #isCmas:Z
    .end local v24           #threadId:J
    :catch_0
    move-exception v21

    .line 1200
    .local v21, e:Landroid/view/WindowManager$BadTokenException;
    :try_start_1
    const-string v2, "Mms/MessageOptions"

    const-string v5, "Failed view message details"

    move-object/from16 v0, v21

    invoke-static {v2, v5, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1202
    if-eqz v14, :cond_1

    goto :goto_1

    .end local v21           #e:Landroid/view/WindowManager$BadTokenException;
    :catchall_0
    move-exception v2

    if-eqz v14, :cond_4

    .line 1203
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1202
    :cond_4
    throw v2
.end method

.method public viewSpamMessageDetail(Lcom/android/mms/ui/MessageItem;Lcom/android/mms/data/Conversation;Z)V
    .locals 27
    .parameter "msgItem"
    .parameter "conversation"
    .parameter "isView"

    .prologue
    .line 2811
    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "m_type"

    aput-object v5, v4, v2

    const/4 v2, 0x2

    const-string v5, "msg_box"

    aput-object v5, v4, v2

    .line 2816
    .local v4, PROJECTION_Mms:[Ljava/lang/String;
    const/4 v2, 0x7

    new-array v12, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "_id"

    aput-object v5, v12, v2

    const/4 v2, 0x1

    const-string v5, "type"

    aput-object v5, v12, v2

    const/4 v2, 0x2

    const-string v5, "address"

    aput-object v5, v12, v2

    const/4 v2, 0x3

    const-string v5, "date"

    aput-object v5, v12, v2

    const/4 v2, 0x4

    const-string v5, "error_code"

    aput-object v5, v12, v2

    const/4 v2, 0x5

    const-string v5, "group_id"

    aput-object v5, v12, v2

    const/4 v2, 0x6

    const-string v5, "pri"

    aput-object v5, v12, v2

    .line 2828
    .local v12, PROJECTION_Sms:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-object v2, v2, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {v2, v5}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v21

    .line 2829
    .local v21, contact:Lcom/android/mms/data/Contact;
    const/16 v19, 0x0

    .line 2831
    .local v19, address:Ljava/lang/String;
    const-string v2, "mms"

    sget-object v5, Lcom/android/mms/ui/MessageOptions;->mType:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2832
    sget-object v2, Landroid/provider/Telephony$SpamMms;->CONTENT_URI:Landroid/net/Uri;

    sget-wide v5, Lcom/android/mms/ui/MessageOptions;->msgId:J

    invoke-static {v2, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 2833
    .local v3, messageUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 2852
    .local v14, cursor:Landroid/database/Cursor;
    :goto_0
    if-eqz v14, :cond_0

    .line 2854
    :try_start_0
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2855
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget v15, v2, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    invoke-virtual {v2}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v18

    move/from16 v17, p3

    invoke-static/range {v13 .. v18}, Lcom/android/mms/ui/MessageUtils;->getMessageDetails(Landroid/content/Context;Landroid/database/Cursor;ILcom/android/mms/ui/MessageItem;ZZ)Ljava/lang/String;

    move-result-object v24

    .line 2858
    .local v24, messageDetails:Ljava/lang/String;
    new-instance v20, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2859
    .local v20, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0a00a4

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v5, 0x104000a

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2863
    invoke-virtual/range {v20 .. v20}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    sput-object v2, Lcom/android/mms/ui/MessageOptions;->detailDialogSpam:Landroid/app/AlertDialog;

    .line 2864
    sget-object v2, Lcom/android/mms/ui/MessageOptions;->detailDialogSpam:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2869
    if-eqz v14, :cond_0

    .line 2870
    .end local v20           #builder:Landroid/app/AlertDialog$Builder;
    .end local v24           #messageDetails:Ljava/lang/String;
    :goto_1
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 2874
    :cond_0
    return-void

    .line 2836
    .end local v3           #messageUri:Landroid/net/Uri;
    .end local v14           #cursor:Landroid/database/Cursor;
    :cond_1
    const/16 v23, 0x0

    .line 2837
    .local v23, isCmas:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-wide v0, v2, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    move-wide/from16 v25, v0

    .line 2839
    .local v25, threadId:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageOptions;->mMsgItem:Lcom/android/mms/ui/MessageItem;

    iget-boolean v0, v2, Lcom/android/mms/ui/MessageItem;->mIsCMASSms:Z

    move/from16 v23, v0

    .line 2841
    if-eqz v23, :cond_2

    .line 2842
    sget-object v2, Landroid/provider/Telephony$Cmas;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v25

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 2843
    .restart local v3       #messageUri:Landroid/net/Uri;
    const/4 v2, 0x1

    new-array v9, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v2

    .line 2844
    .local v9, selectionArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v7, Lcom/android/mms/ui/CMASViewer;->PROJECTION_SMS_CMAS:[Ljava/lang/String;

    const-string v8, "sms._id = sms_id AND cmas.thread_id = ?"

    const-string v10, "date DESC"

    move-object v6, v3

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 2846
    .restart local v14       #cursor:Landroid/database/Cursor;
    goto/16 :goto_0

    .line 2847
    .end local v3           #messageUri:Landroid/net/Uri;
    .end local v9           #selectionArgs:[Ljava/lang/String;
    .end local v14           #cursor:Landroid/database/Cursor;
    :cond_2
    sget-object v2, Lcom/android/mms/spam/SpamFilter;->SPAM_SMS_CONTENT_URI:Landroid/net/Uri;

    sget-wide v5, Lcom/android/mms/ui/MessageOptions;->msgId:J

    invoke-static {v2, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 2848
    .restart local v3       #messageUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/ui/MessageOptions;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v11, v3

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .restart local v14       #cursor:Landroid/database/Cursor;
    goto/16 :goto_0

    .line 2866
    .end local v23           #isCmas:Z
    .end local v25           #threadId:J
    :catch_0
    move-exception v22

    .line 2867
    .local v22, e:Landroid/view/WindowManager$BadTokenException;
    :try_start_1
    const-string v2, "Mms/MessageOptions"

    const-string v5, "Failed view message details"

    move-object/from16 v0, v22

    invoke-static {v2, v5, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2869
    if-eqz v14, :cond_0

    goto :goto_1

    .end local v22           #e:Landroid/view/WindowManager$BadTokenException;
    :catchall_0
    move-exception v2

    if-eqz v14, :cond_3

    .line 2870
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 2869
    :cond_3
    throw v2
.end method

.method public writeFile(Landroid/content/Context;Lcom/android/mms/ui/MessageItem;)Z
    .locals 10
    .parameter "mContext"
    .parameter "msgItem"

    .prologue
    .line 2436
    const/4 v1, 0x0

    .line 2440
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/ui/MessageOptions;->checkAvailableStorage()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-nez v7, :cond_1

    .line 2467
    if-eqz v1, :cond_0

    .line 2469
    :try_start_1
    throw v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 2477
    :cond_0
    :goto_0
    const/4 v7, 0x0

    :goto_1
    return v7

    .line 2444
    :cond_1
    :try_start_2
    iget-object v7, p0, Lcom/android/mms/ui/MessageOptions;->TargetDirectory:Ljava/io/File;

    if-nez v7, :cond_2

    .line 2445
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/android/mms/ui/MessageOptions;->mTargetDirectory:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/mms/ui/MessageOptions;->TargetDirectory:Ljava/io/File;

    .line 2448
    :cond_2
    iget-object v7, p0, Lcom/android/mms/ui/MessageOptions;->TargetDirectory:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_3

    .line 2449
    iget-object v7, p0, Lcom/android/mms/ui/MessageOptions;->TargetDirectory:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 2452
    :cond_3
    new-instance v0, Ljava/io/File;

    iget-object v7, p0, Lcom/android/mms/ui/MessageOptions;->TargetDirectory:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p2}, Lcom/android/mms/ui/MessageOptions;->getRecordFileName(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".vmg"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2454
    .local v0, file:Ljava/io/File;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 2456
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_3
    new-instance v6, Lcom/android/mms/ui/VMessage;

    invoke-direct {v6, p1}, Lcom/android/mms/ui/VMessage;-><init>(Landroid/content/Context;)V

    .line 2457
    .local v6, vmg:Lcom/android/mms/ui/VMessage;
    invoke-virtual {v6, p2}, Lcom/android/mms/ui/VMessage;->createVMessage(Lcom/android/mms/ui/MessageItem;)Ljava/lang/String;

    move-result-object v4

    .line 2459
    .local v4, str:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/OutputStream;->write([B)V

    .line 2460
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_8

    .line 2462
    const/4 v7, 0x1

    .line 2467
    if-eqz v2, :cond_4

    .line 2469
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    :cond_4
    :goto_2
    move-object v1, v2

    .line 2462
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_1

    .line 2464
    .end local v0           #file:Ljava/io/File;
    .end local v4           #str:Ljava/lang/String;
    .end local v6           #vmg:Lcom/android/mms/ui/VMessage;
    :catch_0
    move-exception v5

    .line 2465
    .local v5, t:Ljava/lang/Throwable;
    :goto_3
    :try_start_5
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2467
    if-eqz v1, :cond_0

    .line 2469
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 2470
    :catch_1
    move-exception v3

    .line 2471
    .local v3, ie:Ljava/io/IOException;
    const-string v7, "Mms/MessageOptions"

    const-string v8, "Couldn\'t close fileoutputstream"

    .end local v5           #t:Ljava/lang/Throwable;
    :goto_4
    invoke-static {v7, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2467
    .end local v3           #ie:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_5
    if-eqz v1, :cond_5

    .line 2469
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 2467
    :cond_5
    :goto_6
    throw v7

    .line 2470
    :catch_2
    move-exception v3

    .line 2471
    .restart local v3       #ie:Ljava/io/IOException;
    const-string v8, "Mms/MessageOptions"

    const-string v9, "Couldn\'t close fileoutputstream"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 2472
    .end local v3           #ie:Ljava/io/IOException;
    :catch_3
    move-exception v8

    goto :goto_6

    :catch_4
    move-exception v7

    goto/16 :goto_0

    .line 2470
    :catch_5
    move-exception v3

    .line 2471
    .restart local v3       #ie:Ljava/io/IOException;
    const-string v7, "Mms/MessageOptions"

    const-string v8, "Couldn\'t close fileoutputstream"

    goto :goto_4

    .line 2470
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .end local v3           #ie:Ljava/io/IOException;
    .restart local v0       #file:Ljava/io/File;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    .restart local v4       #str:Ljava/lang/String;
    .restart local v6       #vmg:Lcom/android/mms/ui/VMessage;
    :catch_6
    move-exception v3

    .line 2471
    .restart local v3       #ie:Ljava/io/IOException;
    const-string v8, "Mms/MessageOptions"

    const-string v9, "Couldn\'t close fileoutputstream"

    invoke-static {v8, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 2472
    .end local v3           #ie:Ljava/io/IOException;
    :catch_7
    move-exception v8

    goto :goto_2

    .line 2467
    .end local v4           #str:Ljava/lang/String;
    .end local v6           #vmg:Lcom/android/mms/ui/VMessage;
    :catchall_1
    move-exception v7

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_5

    .line 2464
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :catch_8
    move-exception v5

    move-object v1, v2

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    goto :goto_3
.end method
