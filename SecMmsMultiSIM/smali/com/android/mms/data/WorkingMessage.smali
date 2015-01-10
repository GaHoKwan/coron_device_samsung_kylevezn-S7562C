.class public Lcom/android/mms/data/WorkingMessage;
.super Ljava/lang/Object;
.source "WorkingMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/data/WorkingMessage$MessageStatusListener;
    }
.end annotation


# static fields
.field public static final ACTION_SENDING_SMS:Ljava/lang/String; = "android.intent.action.SENDING_SMS"

.field private static final ATTACHMENT_META_COLUMNS:[Ljava/lang/String; = null

.field public static final AUDIO:I = 0x3

.field private static final CID_TEXT_:Ljava/lang/String; = "cid:text_"

.field public static final CONTENT_RESTRICTION:I = -0x5

.field public static final EMAIL:I = -0x1

.field public static final EXCEED_MAX_SLIDE_NUM:I = -0x6

.field public static final EXCEED_MAX_TEXT_COUNT:I = -0x7

.field public static final EXTRA_SMS_MESSAGE:Ljava/lang/String; = "android.mms.extra.MESSAGE"

.field public static final EXTRA_SMS_RECIPIENTS:Ljava/lang/String; = "android.mms.extra.RECIPIENTS"

.field public static final EXTRA_SMS_THREAD_ID:Ljava/lang/String; = "android.mms.extra.THREAD_ID"

.field private static final FORCE_MMS:I = 0x20

.field public static final HAS_ATTACHMENT:I = 0x4

.field public static final HAS_SUBJECT:I = 0x2

.field public static final IMAGE:I = 0x1

.field public static final IMAGE_ROTATED:I = -0x8

.field public static final IMAGE_TOO_LARGE:I = -0x4

.field private static final LENGTH_REQUIRES_MMS:I = 0x8

.field public static final LOCATION_VCARD:I = 0xa

.field public static final MESSAGE_SIZE_EXCEEDED:I = -0x2

.field private static final MMS_DATE_INDEX:I = 0x4

.field private static final MMS_DRAFT_PROJECTION:[Ljava/lang/String; = null

.field private static final MMS_ID_INDEX:I = 0x0

.field private static final MMS_MESSAGE_SIZE_INDEX:I = 0x1

.field private static final MMS_OUTBOX_PROJECTION:[Ljava/lang/String; = null

.field private static final MMS_PRIORITY:I = 0x5

.field private static final MMS_RESERVED_INDEX:I = 0x3

.field private static final MMS_SUBJECT_CS_INDEX:I = 0x2

.field private static final MMS_SUBJECT_INDEX:I = 0x1

.field public static final OK:I = 0x0

.field public static final PRIORITY_HIGH:I = 0x2

.field public static final PRIORITY_LOW:I = 0x0

.field public static final PRIORITY_NORMAL:I = 0x1

.field public static final RAW:I = 0x5

.field private static final RECIPIENTS_REQUIRE_MMS:I = 0x1

.field private static final REPLY_ALL_MULTIPLE_RECIPIENTS:I = 0x10

.field public static final SLIDESHOW:I = 0x4

.field private static final SMS_BODY_INDEX:I = 0x0

.field private static final SMS_DATE_INDEX:I = 0x2

.field private static final SMS_DRAFT_PROJECTION:[Ljava/lang/String; = null

.field private static final SMS_DRAFT_WHERE:Ljava/lang/String; = "type=3"

.field private static final SMS_PRIORITY_INDEX:I = 0x3

.field private static final SMS_RESERVED_INDEX:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Mms/WorkingMessage"

.field public static final TEXT:I = 0x0

.field private static final TEXT_EXT:Ljava/lang/String; = ".txt"

.field public static final UNKNOWN_ERROR:I = -0x1

.field public static final UNSUPPORTED_TYPE:I = -0x3

.field public static final VCAL:I = 0x7

.field public static final VCARD:I = 0x6

.field public static final VIDEO:I = 0x2

.field public static final VNOTE:I = 0x8

.field public static final VTODO:I = 0x9

.field public static mForceMmsState:Z

.field private static mPriorityLevel:I

.field private static mSignatureText:Ljava/lang/CharSequence;

.field private static sMmsEnabled:Z

.field public static splitMmsOnGoing:I


# instance fields
.field private DEBUG_LOG:Z

.field private mAttachmentType:I

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mConversation:Lcom/android/mms/data/Conversation;

.field private mDiscarded:Z

.field public mExitOnSent:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsSignatureAdded:Z

.field private mMaxEmailLen:I

.field private mMessageUri:Landroid/net/Uri;

.field private mMmsState:I

.field public mNewSlide:I

.field private mPriorityValue:I

.field private mRecipients:Ljava/lang/String;

.field private mReserveDeliveryTime:J

.field private mSender:Ljava/lang/CharSequence;

.field private mSlideshow:Lcom/android/mms/model/SlideshowModel;

.field private final mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

.field private mSubject:Ljava/lang/CharSequence;

.field private mText:[Ljava/lang/CharSequence;

.field private mWorkingRecipients:Lcom/android/mms/data/ContactList;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 192
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/android/mms/data/WorkingMessage;->sMmsEnabled:Z

    .line 198
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "m_size"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/mms/data/WorkingMessage;->MMS_OUTBOX_PROJECTION:[Ljava/lang/String;

    .line 714
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_size"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/mms/data/WorkingMessage;->ATTACHMENT_META_COLUMNS:[Ljava/lang/String;

    .line 2575
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "sub"

    aput-object v1, v0, v4

    const-string v1, "sub_cs"

    aput-object v1, v0, v5

    const-string v1, "reserved"

    aput-object v1, v0, v6

    const-string v1, "date"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "pri"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/data/WorkingMessage;->MMS_DRAFT_PROJECTION:[Ljava/lang/String;

    .line 2986
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "body"

    aput-object v1, v0, v3

    const-string v1, "reserved"

    aput-object v1, v0, v4

    const-string v1, "date"

    aput-object v1, v0, v5

    const-string v1, "pri"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/mms/data/WorkingMessage;->SMS_DRAFT_PROJECTION:[Ljava/lang/String;

    .line 4098
    sput v3, Lcom/android/mms/data/WorkingMessage;->splitMmsOnGoing:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/mms/data/WorkingMessage$MessageStatusListener;)V
    .locals 6
    .parameter "context"
    .parameter "listener"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSlideCount()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    .line 181
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mRecipients:Ljava/lang/String;

    .line 186
    iput-boolean v2, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    .line 189
    iput-wide v4, p0, Lcom/android/mms/data/WorkingMessage;->mReserveDeliveryTime:J

    .line 209
    iput v2, p0, Lcom/android/mms/data/WorkingMessage;->mMaxEmailLen:I

    .line 211
    const/16 v0, 0x81

    iput v0, p0, Lcom/android/mms/data/WorkingMessage;->mPriorityValue:I

    .line 215
    iput-boolean v2, p0, Lcom/android/mms/data/WorkingMessage;->mExitOnSent:Z

    .line 731
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/data/WorkingMessage;->mNewSlide:I

    .line 4012
    iput-boolean v3, p0, Lcom/android/mms/data/WorkingMessage;->DEBUG_LOG:Z

    .line 267
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    .line 268
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    .line 269
    iput-object p2, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    .line 270
    iput v2, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    .line 271
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    const-string v1, ""

    aput-object v1, v0, v2

    .line 272
    iput-wide v4, p0, Lcom/android/mms/data/WorkingMessage;->mReserveDeliveryTime:J

    .line 273
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIEI()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSender:Ljava/lang/CharSequence;

    .line 276
    :cond_0
    iput-boolean v2, p0, Lcom/android/mms/data/WorkingMessage;->mExitOnSent:Z

    .line 277
    sput v3, Lcom/android/mms/data/WorkingMessage;->mPriorityLevel:I

    .line 278
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Ljava/lang/String;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 98
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/data/WorkingMessage;->preSendSmsWorker(Lcom/android/mms/data/Conversation;Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"

    .prologue
    .line 98
    invoke-direct/range {p0 .. p7}, Lcom/android/mms/data/WorkingMessage;->sendMmsWorker(Lcom/android/mms/data/Conversation;Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;II)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/mms/data/WorkingMessage;JLjava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 98
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/data/WorkingMessage;->updateDraftSmsMessage(JLjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/mms/data/WorkingMessage;)Lcom/android/mms/data/WorkingMessage$MessageStatusListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/mms/data/WorkingMessage;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/android/mms/data/WorkingMessage;->deleteDraftSmsMessage(J)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/data/WorkingMessage;JZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 98
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/data/WorkingMessage;->deleteDuplicateMmsDraft(JZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/data/WorkingMessage;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/mms/data/WorkingMessage;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/mms/data/WorkingMessage;)Lcom/android/mms/model/SlideshowModel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;Lcom/android/mms/model/SlideshowModel;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 98
    invoke-static {p0, p1, p2}, Lcom/android/mms/data/WorkingMessage;->createDraftMmsMessage(Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;Lcom/android/mms/model/SlideshowModel;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/data/WorkingMessage;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 98
    invoke-static {p0, p1, p2, p3}, Lcom/android/mms/data/WorkingMessage;->updateDraftMmsMessage(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/android/mms/data/WorkingMessage;->updateReplyAllStatus(Lcom/android/mms/data/Conversation;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/mms/data/WorkingMessage;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method private addOldMedia(Lcom/android/mms/model/SlideModel;Lcom/android/mms/model/MediaModel;)V
    .locals 2
    .parameter "slide"
    .parameter "oldMedia"

    .prologue
    .line 3599
    if-eqz p2, :cond_0

    .line 3600
    invoke-virtual {p1, p2}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 3604
    :goto_0
    return-void

    .line 3602
    :cond_0
    const-string v0, "Mms/WorkingMessage"

    const-string v1, "oldMedia is null!!!"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private addressContainsEmailToMms(Lcom/android/mms/data/Conversation;Ljava/lang/String;)Z
    .locals 10
    .parameter "conv"
    .parameter "text"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2163
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGateway()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 2164
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v0

    .line 2165
    .local v0, dests:[Ljava/lang/String;
    array-length v2, v0

    .line 2166
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_4

    .line 2167
    aget-object v8, v0, v1

    invoke-static {v8}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    aget-object v8, v0, v1

    invoke-static {v8}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2169
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIS41Email()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2171
    invoke-static {p2, v7}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;Z)[I

    move-result-object v4

    .line 2178
    .local v4, params:[I
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->isAliasEnabled()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2180
    aget v8, v4, v7

    if-le v8, v6, :cond_3

    .line 2181
    invoke-direct {p0, v6, v6, v6}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    .line 2182
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->ensureSlideshow()V

    .line 2183
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->syncTextToSlideshow()V

    .line 2197
    .end local v0           #dests:[Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #length:I
    .end local v4           #params:[I
    :goto_2
    return v6

    .line 2173
    .restart local v0       #dests:[Ljava/lang/String;
    .restart local v1       #i:I
    .restart local v2       #length:I
    :cond_1
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 2174
    .local v5, s:Ljava/lang/StringBuffer;
    aget-object v8, v0, v1

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2175
    .local v3, mtext:Ljava/lang/String;
    invoke-static {v3, v7}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;Z)[I

    move-result-object v4

    .restart local v4       #params:[I
    goto :goto_1

    .line 2187
    .end local v3           #mtext:Ljava/lang/String;
    .end local v5           #s:Ljava/lang/StringBuffer;
    :cond_2
    aget v8, v4, v7

    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsToMmsTextThreshold()I

    move-result v9

    if-lt v8, v9, :cond_3

    .line 2188
    invoke-direct {p0, v6, v6, v6}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    .line 2189
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->ensureSlideshow()V

    .line 2190
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->syncTextToSlideshow()V

    goto :goto_2

    .line 2166
    .end local v4           #params:[I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #dests:[Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #length:I
    :cond_4
    move v6, v7

    .line 2197
    goto :goto_2
.end method

.method private appendMedia(IILandroid/net/Uri;Z)V
    .locals 10
    .parameter "location"
    .parameter "type"
    .parameter "uri"
    .parameter "checkCRMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x3

    const/4 v7, 0x2

    .line 3323
    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v4, 0x64

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 3324
    .local v2, sb:Ljava/lang/StringBuffer;
    const-string v4, "Mms/WorkingMessage"

    const-string v5, "appendMedia(),location="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ",type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ",uri="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ",checkCRMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 3329
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4, p1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v3

    .line 3331
    .local v3, slide:Lcom/android/mms/model/SlideModel;
    if-nez p2, :cond_1

    .line 3393
    :cond_0
    :goto_0
    return-void

    .line 3336
    :cond_1
    const/4 v0, 0x0

    .line 3337
    .local v0, media:Lcom/android/mms/model/MediaModel;
    const/4 v1, 0x0

    .line 3339
    .local v1, rawMedia:Lcom/android/mms/model/AttachmentModel;
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->syncTextToSlideshow()V

    .line 3341
    const/4 v4, 0x1

    if-ne p2, v4, :cond_4

    .line 3342
    new-instance v0, Lcom/android/mms/model/ImageModel;

    .end local v0           #media:Lcom/android/mms/model/MediaModel;
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v5

    invoke-direct {v0, v4, p3, v5}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .line 3344
    .restart local v0       #media:Lcom/android/mms/model/MediaModel;
    if-eqz p4, :cond_3

    move-object v4, v0

    .line 3345
    check-cast v4, Lcom/android/mms/model/ImageModel;

    invoke-virtual {v4}, Lcom/android/mms/model/ImageModel;->checkCreationMode()V

    :goto_1
    move-object v4, v0

    .line 3349
    check-cast v4, Lcom/android/mms/model/ImageModel;

    invoke-virtual {v4}, Lcom/android/mms/model/ImageModel;->checkResolution()V

    .line 3380
    :goto_2
    if-eqz v3, :cond_b

    if-eq p2, v9, :cond_b

    .line 3381
    invoke-virtual {v3, v0}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 3388
    :goto_3
    if-eqz v3, :cond_0

    if-eq p2, v7, :cond_2

    if-ne p2, v8, :cond_0

    .line 3389
    :cond_2
    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->getDuration()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/mms/model/SlideModel;->updateDuration(I)V

    goto :goto_0

    :cond_3
    move-object v4, v0

    .line 3347
    check-cast v4, Lcom/android/mms/model/ImageModel;

    invoke-virtual {v4}, Lcom/android/mms/model/ImageModel;->checkContentRestriction()V

    goto :goto_1

    .line 3351
    :cond_4
    if-ne p2, v7, :cond_6

    .line 3352
    new-instance v0, Lcom/android/mms/model/VideoModel;

    .end local v0           #media:Lcom/android/mms/model/MediaModel;
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v5

    invoke-direct {v0, v4, p3, v5}, Lcom/android/mms/model/VideoModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .line 3354
    .restart local v0       #media:Lcom/android/mms/model/MediaModel;
    if-eqz p4, :cond_5

    move-object v4, v0

    .line 3355
    check-cast v4, Lcom/android/mms/model/VideoModel;

    invoke-virtual {v4}, Lcom/android/mms/model/VideoModel;->checkCreationMode()V

    goto :goto_2

    :cond_5
    move-object v4, v0

    .line 3357
    check-cast v4, Lcom/android/mms/model/VideoModel;

    invoke-virtual {v4}, Lcom/android/mms/model/VideoModel;->checkContentRestriction()V

    goto :goto_2

    .line 3360
    :cond_6
    if-ne p2, v8, :cond_8

    .line 3361
    new-instance v0, Lcom/android/mms/model/AudioModel;

    .end local v0           #media:Lcom/android/mms/model/MediaModel;
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4, p3}, Lcom/android/mms/model/AudioModel;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 3363
    .restart local v0       #media:Lcom/android/mms/model/MediaModel;
    if-eqz p4, :cond_7

    move-object v4, v0

    .line 3364
    check-cast v4, Lcom/android/mms/model/AudioModel;

    invoke-virtual {v4}, Lcom/android/mms/model/AudioModel;->checkCreationMode()V

    goto :goto_2

    :cond_7
    move-object v4, v0

    .line 3366
    check-cast v4, Lcom/android/mms/model/AudioModel;

    invoke-virtual {v4}, Lcom/android/mms/model/AudioModel;->checkContentRestriction()V

    goto :goto_2

    .line 3369
    :cond_8
    const/16 v4, 0xa

    if-ne p2, v4, :cond_9

    .line 3371
    new-instance v0, Lcom/samsung/mms/model/LocationVcardModel;

    .end local v0           #media:Lcom/android/mms/model/MediaModel;
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/LayoutModel;->getTextRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v5

    invoke-direct {v0, v4, p3, v5}, Lcom/samsung/mms/model/LocationVcardModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .restart local v0       #media:Lcom/android/mms/model/MediaModel;
    goto :goto_2

    .line 3373
    :cond_9
    if-ne p2, v9, :cond_a

    .line 3374
    new-instance v1, Lcom/android/mms/model/AttachmentModel;

    .end local v1           #rawMedia:Lcom/android/mms/model/AttachmentModel;
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4, p3, p4}, Lcom/android/mms/model/AttachmentModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Z)V

    .restart local v1       #rawMedia:Lcom/android/mms/model/AttachmentModel;
    goto :goto_2

    .line 3376
    :cond_a
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "changeMedia type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", uri="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3383
    :cond_b
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4, v1}, Lcom/android/mms/model/SlideshowModel;->addAttachment(Lcom/android/mms/model/AttachmentModel;)V

    goto/16 :goto_3
.end method

.method private asyncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 3167
    const-string v0, "Mms/WorkingMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "asyncDelete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " where "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3169
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/data/WorkingMessage$6;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/mms/data/WorkingMessage$6;-><init>(Lcom/android/mms/data/WorkingMessage;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3174
    return-void
.end method

.method private asyncDeleteDraftMmsMessage(J)V
    .locals 4
    .parameter "threadId"

    .prologue
    .line 3252
    const-string v1, "Mms/WorkingMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "asyncDeleteDraftMmsMessage(),threadId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thread_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3254
    .local v0, where:Ljava/lang/String;
    sget-object v1, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/android/mms/data/WorkingMessage;->asyncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 3255
    return-void
.end method

.method private asyncSendMms(Lcom/android/mms/data/Conversation;I)V
    .locals 10
    .parameter "conv"
    .parameter "sendSimSlot"

    .prologue
    .line 2130
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    .line 2131
    .local v4, mmsUri:Landroid/net/Uri;
    const-string v0, "Mms/WorkingMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMessageUri = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2132
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v5

    .line 2134
    .local v5, persister:Lcom/google/android/mms/pdu/PduPersister;
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 2135
    .local v2, slideshow:Lcom/android/mms/model/SlideshowModel;
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Lcom/android/mms/data/WorkingMessage;->makeSendReq(Lcom/android/mms/data/Conversation;Ljava/lang/CharSequence;)Lcom/google/android/mms/pdu/SendReq;

    move-result-object v6

    .line 2137
    .local v6, sendReq:Lcom/google/android/mms/pdu/SendReq;
    sget v7, Lcom/android/mms/data/WorkingMessage;->mPriorityLevel:I

    .line 2139
    .local v7, priorityLevel:I
    new-instance v9, Ljava/lang/Thread;

    new-instance v0, Lcom/android/mms/data/WorkingMessage$2;

    move-object v1, p0

    move-object v3, p1

    move v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/android/mms/data/WorkingMessage$2;-><init>(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/model/SlideshowModel;Lcom/android/mms/data/Conversation;Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;II)V

    const-string v1, "send_mms"

    invoke-direct {v9, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 2149
    return-void
.end method

.method private asyncSendSms(Lcom/android/mms/data/Conversation;I)V
    .locals 9
    .parameter "conv"
    .parameter "sendSimSlot"

    .prologue
    const/4 v2, 0x0

    .line 2093
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsSubject()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2094
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2095
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2096
    .local v7, subText:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<subject:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2105
    .end local v7           #subText:Ljava/lang/String;
    .local v6, msgText:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getInputmode(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    .line 2109
    invoke-static {v6}, Lcom/android/mms/ui/GreekInputHandler;->convertGreekSmallLetterToCapital(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2112
    invoke-static {v6}, Lcom/android/mms/ui/GreekInputHandler;->MappingGreekCharater(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2115
    :cond_0
    move-object v3, v6

    .line 2116
    .local v3, sendMsgText:Ljava/lang/String;
    sget v4, Lcom/android/mms/data/WorkingMessage;->mPriorityLevel:I

    .line 2117
    .local v4, priority:I
    new-instance v8, Ljava/lang/Thread;

    new-instance v0, Lcom/android/mms/data/WorkingMessage$1;

    move-object v1, p0

    move-object v2, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/data/WorkingMessage$1;-><init>(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Ljava/lang/String;II)V

    const-string v1, "send_sms"

    invoke-direct {v8, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 2124
    return-void

    .line 2098
    .end local v3           #sendMsgText:Ljava/lang/String;
    .end local v4           #priority:I
    .end local v6           #msgText:Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .restart local v6       #msgText:Ljava/lang/String;
    goto :goto_0

    .line 2101
    .end local v6           #msgText:Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .restart local v6       #msgText:Ljava/lang/String;
    goto :goto_0
.end method

.method private asyncUpdateDraftMmsMessage(Lcom/android/mms/data/Conversation;)V
    .locals 9
    .parameter "conv"

    .prologue
    .line 2803
    const-string v6, "Mms/WorkingMessage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "asyncUpdateDraftMmsMessage conv="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mMessageUri="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2809
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v2

    .line 2810
    .local v2, persister:Lcom/google/android/mms/pdu/PduPersister;
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    invoke-static {p1, v6}, Lcom/android/mms/data/WorkingMessage;->makeSendReq(Lcom/android/mms/data/Conversation;Ljava/lang/CharSequence;)Lcom/google/android/mms/pdu/SendReq;

    move-result-object v3

    .line 2812
    .local v3, sendReq:Lcom/google/android/mms/pdu/SendReq;
    const-wide/16 v4, 0x0

    .line 2813
    .local v4, setReserved:J
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getReserveDeliveryTime()J

    move-result-wide v0

    .line 2814
    .local v0, deliveryTime:J
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-eqz v6, :cond_0

    .line 2815
    const-wide/16 v4, 0x1

    .line 2816
    const-wide/16 v6, 0x3e8

    div-long v6, v0, v6

    invoke-virtual {v3, v6, v7}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setDate(J)V

    .line 2818
    :cond_0
    invoke-virtual {v3, v4, v5}, Lcom/google/android/mms/pdu/SendReq;->setReserved(J)V

    .line 2820
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSignature()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2821
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/mms/data/WorkingMessage;->mIsSignatureAdded:Z

    .line 2824
    :cond_1
    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/android/mms/data/WorkingMessage$3;

    invoke-direct {v7, p0, p1, v2, v3}, Lcom/android/mms/data/WorkingMessage$3;-><init>(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 2869
    return-void
.end method

.method private asyncUpdateDraftSmsMessage(Lcom/android/mms/data/Conversation;Ljava/lang/String;)V
    .locals 4
    .parameter "conv"
    .parameter "contents"

    .prologue
    .line 3077
    const-string v1, "Mms/WorkingMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "asyncUpdateDraftSmsMessage(),conv="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3079
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAnonymousThread()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3096
    :goto_0
    return-void

    .line 3082
    :cond_0
    sget v0, Lcom/android/mms/data/WorkingMessage;->mPriorityLevel:I

    .line 3083
    .local v0, priority:I
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/mms/data/WorkingMessage$5;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/android/mms/data/WorkingMessage$5;-><init>(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Ljava/lang/String;I)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private calculateMaxEmailLength(Lcom/android/mms/data/ContactList;)V
    .locals 7
    .parameter "recipients"

    .prologue
    .line 1657
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIS41Email()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1666
    :cond_0
    return-void

    .line 1660
    :cond_1
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v4

    .line 1661
    .local v4, numbers:[Ljava/lang/String;
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/mms/data/WorkingMessage;->mMaxEmailLen:I

    .line 1662
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 1663
    .local v3, number:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    iget v6, p0, Lcom/android/mms/data/WorkingMessage;->mMaxEmailLen:I

    if-le v5, v6, :cond_2

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1664
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    iput v5, p0, Lcom/android/mms/data/WorkingMessage;->mMaxEmailLen:I

    .line 1662
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private changeMedia(IILandroid/net/Uri;Z)V
    .locals 21
    .parameter "location"
    .parameter "type"
    .parameter "uri"
    .parameter "checkCRMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 3401
    new-instance v14, Ljava/lang/StringBuffer;

    const/16 v18, 0x64

    move/from16 v0, v18

    invoke-direct {v14, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 3403
    .local v14, sb:Ljava/lang/StringBuffer;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLocationMessage()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 3404
    if-nez p3, :cond_2

    if-eqz p2, :cond_2

    .line 3595
    :cond_0
    :goto_0
    return-void

    .line 3409
    :cond_1
    if-eqz p3, :cond_0

    .line 3414
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLocationMessage()Z

    move-result v18

    if-eqz v18, :cond_3

    if-eqz p2, :cond_3

    .line 3415
    const-string v18, "Mms/WorkingMessage"

    const-string v19, "changeMedia(),location="

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v19

    const-string v20, ",type="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v19

    const-string v20, ",uri="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    const-string v20, ",checkCRMode="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3419
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v18

    if-gtz v18, :cond_5

    .line 3420
    :cond_4
    const-string v18, "Mms"

    const-string v19, "[WorkingMessage] changeMedia: no slides!"

    invoke-static/range {v18 .. v19}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3423
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v16

    .line 3424
    .local v16, slide:Lcom/android/mms/model/SlideModel;
    const/4 v8, 0x0

    .line 3425
    .local v8, media:Lcom/android/mms/model/MediaModel;
    const/4 v13, 0x0

    .line 3428
    .local v13, rawMedia:Lcom/android/mms/model/AttachmentModel;
    if-nez p2, :cond_7

    .line 3430
    if-nez p3, :cond_0

    .line 3431
    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/SlideModel;->removeImage()Z

    .line 3432
    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/SlideModel;->removeVideo()Z

    .line 3433
    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/SlideModel;->removeAudio()Z

    .line 3434
    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/SlideModel;->removeLocation()Z

    .line 3436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v15

    .line 3438
    .local v15, size:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v15, :cond_6

    .line 3440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/model/SlideModel;->removeLocation()Z

    .line 3441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/model/SlideModel;->removeImage()Z

    .line 3442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/model/SlideModel;->removeVideo()Z

    .line 3443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/model/SlideModel;->removeAudio()Z

    .line 3438
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 3446
    :cond_6
    add-int/lit8 v6, v15, -0x1

    :goto_2
    const/16 v18, 0x1

    move/from16 v0, v18

    if-lt v6, v0, :cond_0

    .line 3449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    .line 3446
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 3455
    .end local v6           #i:I
    .end local v15           #size:I
    :cond_7
    const/16 v18, 0x1

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    .line 3456
    new-instance v7, Lcom/android/mms/model/ImageModel;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    move-object/from16 v2, v19

    invoke-direct {v7, v0, v1, v2}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .line 3458
    .local v7, imageModel:Lcom/android/mms/model/ImageModel;
    move-object v8, v7

    .line 3460
    if-eqz p4, :cond_8

    .line 3461
    invoke-virtual {v7}, Lcom/android/mms/model/ImageModel;->checkCreationMode()V

    .line 3463
    :cond_8
    invoke-virtual {v7}, Lcom/android/mms/model/ImageModel;->checkContentRestriction()V

    .line 3464
    invoke-virtual {v7}, Lcom/android/mms/model/ImageModel;->checkResolution()V

    .line 3497
    .end local v7           #imageModel:Lcom/android/mms/model/ImageModel;
    :goto_3
    const/4 v10, 0x0

    .line 3498
    .local v10, oldImage:Lcom/android/mms/model/MediaModel;
    const/4 v12, 0x0

    .line 3499
    .local v12, oldVideo:Lcom/android/mms/model/MediaModel;
    const/4 v9, 0x0

    .line 3500
    .local v9, oldAudio:Lcom/android/mms/model/MediaModel;
    const/4 v11, 0x0

    .line 3501
    .local v11, oldMedia:Lcom/android/mms/model/MediaModel;
    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v18

    if-eqz v18, :cond_9

    .line 3502
    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/SlideModel;->getAudio()Lcom/android/mms/model/AudioModel;

    move-result-object v9

    .line 3504
    :cond_9
    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v18

    if-eqz v18, :cond_a

    .line 3505
    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v10

    .line 3507
    :cond_a
    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v18

    if-eqz v18, :cond_b

    .line 3508
    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v12

    .line 3512
    :cond_b
    const/16 v18, 0x5

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_19

    .line 3514
    packed-switch p2, :pswitch_data_0

    .line 3532
    const/4 v11, 0x0

    .line 3535
    :cond_c
    :goto_4
    const/16 v18, 0x3

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_16

    .line 3536
    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/SlideModel;->removeAudio()Z

    .line 3537
    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/SlideModel;->removeVideo()Z

    .line 3547
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/model/SlideshowModel;->hasLocation()Z

    move-result v18

    if-eqz v18, :cond_19

    .line 3548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v15

    .line 3550
    .restart local v15       #size:I
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_6
    if-ge v6, v15, :cond_18

    .line 3552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/model/SlideModel;->removeLocation()Z

    .line 3553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/model/SlideModel;->removeImage()Z

    .line 3550
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 3466
    .end local v6           #i:I
    .end local v9           #oldAudio:Lcom/android/mms/model/MediaModel;
    .end local v10           #oldImage:Lcom/android/mms/model/MediaModel;
    .end local v11           #oldMedia:Lcom/android/mms/model/MediaModel;
    .end local v12           #oldVideo:Lcom/android/mms/model/MediaModel;
    .end local v15           #size:I
    :cond_d
    const/16 v18, 0x2

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_f

    .line 3467
    new-instance v17, Lcom/android/mms/model/VideoModel;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p3

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/mms/model/VideoModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .line 3469
    .local v17, videoModel:Lcom/android/mms/model/VideoModel;
    move-object/from16 v8, v17

    .line 3471
    if-eqz p4, :cond_e

    .line 3472
    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/model/VideoModel;->checkCreationMode()V

    .line 3474
    :cond_e
    invoke-virtual/range {v17 .. v17}, Lcom/android/mms/model/VideoModel;->checkContentRestriction()V

    goto/16 :goto_3

    .line 3476
    .end local v17           #videoModel:Lcom/android/mms/model/VideoModel;
    :cond_f
    const/16 v18, 0x3

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_11

    .line 3477
    new-instance v4, Lcom/android/mms/model/AudioModel;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-direct {v4, v0, v1}, Lcom/android/mms/model/AudioModel;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 3478
    .local v4, audioModel:Lcom/android/mms/model/AudioModel;
    move-object v8, v4

    .line 3480
    if-eqz p4, :cond_10

    .line 3481
    invoke-virtual {v4}, Lcom/android/mms/model/AudioModel;->checkCreationMode()V

    .line 3483
    :cond_10
    invoke-virtual {v4}, Lcom/android/mms/model/AudioModel;->checkContentRestriction()V

    goto/16 :goto_3

    .line 3485
    .end local v4           #audioModel:Lcom/android/mms/model/AudioModel;
    :cond_11
    const/16 v18, 0xa

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_12

    .line 3487
    new-instance v18, Ljava/lang/IllegalArgumentException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "changeMedia type="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", uri="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 3490
    :cond_12
    const/16 v18, 0x5

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_13

    .line 3491
    new-instance v13, Lcom/android/mms/model/AttachmentModel;

    .end local v13           #rawMedia:Lcom/android/mms/model/AttachmentModel;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {v13, v0, v1, v2}, Lcom/android/mms/model/AttachmentModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Z)V

    .restart local v13       #rawMedia:Lcom/android/mms/model/AttachmentModel;
    goto/16 :goto_3

    .line 3493
    :cond_13
    new-instance v18, Ljava/lang/IllegalArgumentException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "changeMedia type="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", uri="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 3516
    .restart local v9       #oldAudio:Lcom/android/mms/model/MediaModel;
    .restart local v10       #oldImage:Lcom/android/mms/model/MediaModel;
    .restart local v11       #oldMedia:Lcom/android/mms/model/MediaModel;
    .restart local v12       #oldVideo:Lcom/android/mms/model/MediaModel;
    :pswitch_0
    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v18

    if-eqz v18, :cond_14

    .line 3517
    move-object v11, v10

    .line 3518
    :cond_14
    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v18

    if-eqz v18, :cond_c

    .line 3519
    move-object v11, v12

    goto/16 :goto_4

    .line 3522
    :pswitch_1
    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v18

    if-eqz v18, :cond_15

    .line 3523
    move-object v11, v10

    .line 3524
    :cond_15
    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v18

    if-eqz v18, :cond_c

    .line 3525
    move-object v11, v12

    goto/16 :goto_4

    .line 3528
    :pswitch_2
    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v18

    if-eqz v18, :cond_c

    .line 3529
    move-object v11, v9

    goto/16 :goto_4

    .line 3538
    :cond_16
    const/16 v18, 0x1

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_17

    .line 3539
    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/SlideModel;->removeImage()Z

    .line 3540
    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/SlideModel;->removeVideo()Z

    goto/16 :goto_5

    .line 3542
    :cond_17
    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/SlideModel;->removeImage()Z

    .line 3543
    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/SlideModel;->removeVideo()Z

    .line 3544
    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/model/SlideModel;->removeAudio()Z

    goto/16 :goto_5

    .line 3556
    .restart local v6       #i:I
    .restart local v15       #size:I
    :cond_18
    const/4 v6, 0x1

    :goto_7
    if-ge v6, v15, :cond_19

    .line 3559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    .line 3556
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 3565
    .end local v6           #i:I
    .end local v15           #size:I
    :cond_19
    const/16 v18, 0x5

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_1c

    .line 3567
    :try_start_0
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z
    :try_end_0
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/mms/ResolutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/android/mms/RotationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_0 .. :try_end_0} :catch_4

    .line 3591
    :goto_8
    const/16 v18, 0x2

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_1a

    const/16 v18, 0x3

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_1b

    .line 3592
    :cond_1a
    invoke-virtual {v8}, Lcom/android/mms/model/MediaModel;->getDuration()I

    move-result v18

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideModel;->updateDuration(I)V

    .line 3594
    :cond_1b
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/data/WorkingMessage;->syncTextToSlideshow()V

    goto/16 :goto_0

    .line 3569
    :catch_0
    move-exception v5

    .line 3570
    .local v5, e:Lcom/android/mms/UnsupportContentTypeException;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v11}, Lcom/android/mms/data/WorkingMessage;->addOldMedia(Lcom/android/mms/model/SlideModel;Lcom/android/mms/model/MediaModel;)V

    .line 3571
    new-instance v18, Lcom/android/mms/UnsupportContentTypeException;

    const-string v19, "UnsupportContentTypeException"

    invoke-direct/range {v18 .. v19}, Lcom/android/mms/UnsupportContentTypeException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 3572
    .end local v5           #e:Lcom/android/mms/UnsupportContentTypeException;
    :catch_1
    move-exception v5

    .line 3573
    .local v5, e:Lcom/android/mms/ExceedMessageSizeException;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v11}, Lcom/android/mms/data/WorkingMessage;->addOldMedia(Lcom/android/mms/model/SlideModel;Lcom/android/mms/model/MediaModel;)V

    .line 3574
    new-instance v18, Lcom/android/mms/ExceedMessageSizeException;

    const-string v19, "ExceedMessageSizeException"

    invoke-direct/range {v18 .. v19}, Lcom/android/mms/ExceedMessageSizeException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 3575
    .end local v5           #e:Lcom/android/mms/ExceedMessageSizeException;
    :catch_2
    move-exception v5

    .line 3576
    .local v5, e:Lcom/android/mms/ResolutionException;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v11}, Lcom/android/mms/data/WorkingMessage;->addOldMedia(Lcom/android/mms/model/SlideModel;Lcom/android/mms/model/MediaModel;)V

    .line 3577
    new-instance v18, Lcom/android/mms/ResolutionException;

    const-string v19, "ResolutionException"

    invoke-direct/range {v18 .. v19}, Lcom/android/mms/ResolutionException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 3578
    .end local v5           #e:Lcom/android/mms/ResolutionException;
    :catch_3
    move-exception v5

    .line 3579
    .local v5, e:Lcom/android/mms/RotationException;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v11}, Lcom/android/mms/data/WorkingMessage;->addOldMedia(Lcom/android/mms/model/SlideModel;Lcom/android/mms/model/MediaModel;)V

    .line 3580
    new-instance v18, Lcom/android/mms/RotationException;

    const-string v19, "RotationException"

    invoke-direct/range {v18 .. v19}, Lcom/android/mms/RotationException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 3581
    .end local v5           #e:Lcom/android/mms/RotationException;
    :catch_4
    move-exception v5

    .line 3582
    .local v5, e:Lcom/android/mms/ContentRestrictionException;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v11}, Lcom/android/mms/data/WorkingMessage;->addOldMedia(Lcom/android/mms/model/SlideModel;Lcom/android/mms/model/MediaModel;)V

    .line 3583
    new-instance v18, Lcom/android/mms/ContentRestrictionException;

    const-string v19, "ContentRestrictionException"

    invoke-direct/range {v18 .. v19}, Lcom/android/mms/ContentRestrictionException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 3586
    .end local v5           #e:Lcom/android/mms/ContentRestrictionException;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lcom/android/mms/model/SlideshowModel;->addAttachment(Lcom/android/mms/model/AttachmentModel;)V

    goto :goto_8

    .line 3514
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private checkMediaFileName(ILjava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "i"
    .parameter "src"

    .prologue
    .line 2325
    const/4 v1, 0x0

    .local v1, m:I
    :goto_0
    if-ge v1, p1, :cond_3

    .line 2326
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v3

    .line 2327
    .local v3, slide2:Lcom/android/mms/model/SlideModel;
    if-eqz v3, :cond_2

    .line 2328
    const/4 v2, 0x0

    .local v2, n:I
    :goto_1
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 2329
    invoke-virtual {v3, v2}, Lcom/android/mms/model/SlideModel;->get(I)Lcom/android/mms/model/MediaModel;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v2}, Lcom/android/mms/model/SlideModel;->get(I)Lcom/android/mms/model/MediaModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2330
    const/16 v4, 0x2e

    invoke-virtual {p2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 2331
    .local v0, index:I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    .line 2332
    new-instance v4, Ljava/lang/StringBuffer;

    const/4 v5, 0x0

    invoke-virtual {p2, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2335
    :goto_2
    const-string v4, "Mms/WorkingMessage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "changed file name changed, len = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2328
    .end local v0           #index:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2334
    .restart local v0       #index:I
    :cond_1
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    .line 2325
    .end local v0           #index:I
    .end local v2           #n:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 2340
    .end local v3           #slide2:Lcom/android/mms/model/SlideModel;
    :cond_3
    return-object p2
.end method

.method private static closePreOpenedFiles(Ljava/util/HashMap;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4118
    .local p0, preOpenedFiles:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/net/Uri;Ljava/io/InputStream;>;"
    if-nez p0, :cond_1

    .line 4131
    :cond_0
    return-void

    .line 4121
    :cond_1
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 4122
    .local v3, uris:Ljava/util/Set;,"Ljava/util/Set<Landroid/net/Uri;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 4123
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    .line 4124
    .local v1, is:Ljava/io/InputStream;
    if-eqz v1, :cond_2

    .line 4126
    :try_start_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4127
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private static createDraftMmsMessage(Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;Lcom/android/mms/model/SlideshowModel;)Landroid/net/Uri;
    .locals 6
    .parameter "persister"
    .parameter "sendReq"
    .parameter "slideshow"

    .prologue
    const/4 v3, 0x0

    .line 2761
    const-string v4, "Mms/WorkingMessage"

    const-string v5, "createDraftMmsMessage()"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2763
    if-eqz p2, :cond_0

    .line 2765
    :try_start_0
    invoke-virtual {p2}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v1

    .line 2766
    .local v1, pb:Lcom/google/android/mms/pdu/PduBody;
    invoke-virtual {p1, v1}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setBody(Lcom/google/android/mms/pdu/PduBody;)V

    .line 2767
    sget-object v4, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, v4}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 2768
    .local v2, res:Landroid/net/Uri;
    invoke-virtual {p2, v1}, Lcom/android/mms/model/SlideshowModel;->sync(Lcom/google/android/mms/pdu/PduBody;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2776
    .end local v1           #pb:Lcom/google/android/mms/pdu/PduBody;
    .end local v2           #res:Landroid/net/Uri;
    :goto_0
    return-object v2

    :cond_0
    move-object v2, v3

    .line 2772
    goto :goto_0

    .line 2773
    :catch_0
    move-exception v0

    .local v0, e:Lcom/google/android/mms/MmsException;
    move-object v2, v3

    .line 2774
    goto :goto_0

    .line 2775
    .end local v0           #e:Lcom/google/android/mms/MmsException;
    :catch_1
    move-exception v0

    .local v0, e:Ljava/lang/NullPointerException;
    move-object v2, v3

    .line 2776
    goto :goto_0
.end method

.method public static createEmpty(Landroid/content/Context;Lcom/android/mms/data/WorkingMessage$MessageStatusListener;)Lcom/android/mms/data/WorkingMessage;
    .locals 3
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 284
    const-string v1, "Mms/WorkingMessage"

    const-string v2, "createEmpty()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    new-instance v0, Lcom/android/mms/data/WorkingMessage;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/data/WorkingMessage;-><init>(Landroid/content/Context;Lcom/android/mms/data/WorkingMessage$MessageStatusListener;)V

    .line 288
    .local v0, msg:Lcom/android/mms/data/WorkingMessage;
    return-object v0
.end method

.method private deleteDraftSmsMessage(J)V
    .locals 5
    .parameter "threadId"

    .prologue
    .line 3245
    const-string v0, "Mms/WorkingMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteDraftSmsMessage(),threadId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3246
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Telephony$Sms$Conversations;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "type=3"

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3249
    return-void
.end method

.method private deleteDuplicateMmsDraft(JZ)V
    .locals 9
    .parameter "threadId"
    .parameter "ignoreUri"

    .prologue
    .line 2293
    const/4 v7, 0x0

    .line 2294
    .local v7, cursor:Landroid/database/Cursor;
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    .line 2295
    const-string v0, "Mms/WorkingMessage"

    const-string v1, "invalid threadId. just return"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2322
    :cond_0
    :goto_0
    return-void

    .line 2298
    :cond_1
    const/4 v8, 0x0

    .line 2299
    .local v8, uri:Landroid/net/Uri;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "thread_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2301
    .local v4, selection:Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/data/WorkingMessage;->MMS_DRAFT_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2303
    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 2304
    :cond_2
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2305
    sget-object v0, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 2306
    if-nez p3, :cond_4

    .line 2307
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2308
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v8, v0, v1}, Lcom/android/mms/data/WorkingMessage;->asyncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 2318
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 2319
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 2311
    :cond_4
    if-eqz v8, :cond_2

    .line 2312
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_1
    invoke-direct {p0, v8, v0, v1}, Lcom/android/mms/data/WorkingMessage;->asyncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2318
    :cond_5
    if-eqz v7, :cond_0

    .line 2319
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private deleteMmsMessage(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Lcom/android/mms/data/Conversation;Z)V
    .locals 6
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "conv"
    .parameter "isAsync"

    .prologue
    .line 3204
    const-string v1, "Mms/WorkingMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteMmsMessage(),uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",selection="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3205
    new-instance v0, Lcom/android/mms/data/WorkingMessage$7;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/data/WorkingMessage$7;-><init>(Lcom/android/mms/data/WorkingMessage;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Lcom/android/mms/data/Conversation;)V

    .line 3228
    .local v0, r:Ljava/lang/Runnable;
    if-eqz p5, :cond_0

    .line 3229
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 3233
    :goto_0
    return-void

    .line 3231
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private dumpWorkingRecipients()V
    .locals 5

    .prologue
    .line 1685
    const-string v2, "Mms/WorkingMessage"

    const-string v3, "-- mWorkingRecipients:"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1687
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    if-eqz v2, :cond_1

    .line 1688
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1689
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1690
    const-string v2, "Mms/WorkingMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1689
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1692
    :cond_0
    const-string v2, "Mms/WorkingMessage"

    const-string v3, ""

    invoke-static {v2, v3}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1694
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_1
    return-void
.end method

.method private ensureSlideshow()V
    .locals 3

    .prologue
    .line 901
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v2, :cond_0

    .line 910
    :goto_0
    return-void

    .line 905
    :cond_0
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/model/SlideshowModel;->createNew(Landroid/content/Context;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v1

    .line 906
    .local v1, slideshow:Lcom/android/mms/model/SlideshowModel;
    new-instance v0, Lcom/android/mms/model/SlideModel;

    invoke-direct {v0, v1}, Lcom/android/mms/model/SlideModel;-><init>(Lcom/android/mms/model/SlideshowModel;)V

    .line 907
    .local v0, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1, v0}, Lcom/android/mms/model/SlideshowModel;->add(Lcom/android/mms/model/SlideModel;)Z

    .line 908
    iput-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    goto :goto_0
.end method

.method public static load(Landroid/content/Context;Lcom/android/mms/ui/ComposeMessageFragment;Landroid/net/Uri;)Lcom/android/mms/data/WorkingMessage;
    .locals 6
    .parameter "context"
    .parameter "activity"
    .parameter "uri"

    .prologue
    .line 297
    new-instance v1, Lcom/android/mms/data/WorkingMessage;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/data/WorkingMessage;-><init>(Landroid/content/Context;Lcom/android/mms/data/WorkingMessage$MessageStatusListener;)V

    .line 298
    .local v1, msg:Lcom/android/mms/data/WorkingMessage;
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 299
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v2

    .line 301
    .local v2, persister:Lcom/google/android/mms/pdu/PduPersister;
    const-string v3, "Mms/WorkingMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "load: moving to drafts"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    :try_start_0
    sget-object v3, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, p2, v3}, Lcom/google/android/mms/pdu/PduPersister;->move(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 311
    .end local v2           #persister:Lcom/google/android/mms/pdu/PduPersister;
    :cond_0
    invoke-direct {v1, p2}, Lcom/android/mms/data/WorkingMessage;->loadFromUri(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 315
    :cond_1
    :goto_0
    return-object v1

    .line 305
    .restart local v2       #persister:Lcom/google/android/mms/pdu/PduPersister;
    :catch_0
    move-exception v0

    .line 306
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v3, "Mms/WorkingMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t move to drafts:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static load(Landroid/content/Context;Lcom/android/mms/ui/ComposeMessageFragment;Landroid/net/Uri;ZZ)Lcom/android/mms/data/WorkingMessage;
    .locals 6
    .parameter "context"
    .parameter "activity"
    .parameter "uri"
    .parameter "IsSlideshow"
    .parameter "checkCRMode"

    .prologue
    .line 321
    new-instance v1, Lcom/android/mms/data/WorkingMessage;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/data/WorkingMessage;-><init>(Landroid/content/Context;Lcom/android/mms/data/WorkingMessage$MessageStatusListener;)V

    .line 323
    .local v1, msg:Lcom/android/mms/data/WorkingMessage;
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 324
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v2

    .line 326
    .local v2, persister:Lcom/google/android/mms/pdu/PduPersister;
    const-string v3, "Mms/WorkingMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "load with CRMode : moving to drafts"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    :try_start_0
    sget-object v3, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, p2, v3}, Lcom/google/android/mms/pdu/PduPersister;->move(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .line 336
    .end local v2           #persister:Lcom/google/android/mms/pdu/PduPersister;
    :cond_0
    invoke-direct {v1, p2, p3, p4}, Lcom/android/mms/data/WorkingMessage;->loadFromUri(Landroid/net/Uri;ZZ)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 340
    :cond_1
    :goto_0
    return-object v1

    .line 330
    .restart local v2       #persister:Lcom/google/android/mms/pdu/PduPersister;
    :catch_0
    move-exception v0

    .line 331
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v3, "Mms/WorkingMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t move to drafts:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static loadDraft(Landroid/content/Context;Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/data/Conversation;)Lcom/android/mms/data/WorkingMessage;
    .locals 2
    .parameter "context"
    .parameter "activity"
    .parameter "conv"

    .prologue
    .line 489
    new-instance v0, Lcom/android/mms/data/WorkingMessage;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/data/WorkingMessage;-><init>(Landroid/content/Context;Lcom/android/mms/data/WorkingMessage$MessageStatusListener;)V

    .line 490
    .local v0, msg:Lcom/android/mms/data/WorkingMessage;
    invoke-direct {v0, p2}, Lcom/android/mms/data/WorkingMessage;->loadFromConversation(Lcom/android/mms/data/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 493
    .end local v0           #msg:Lcom/android/mms/data/WorkingMessage;
    :goto_0
    return-object v0

    .restart local v0       #msg:Lcom/android/mms/data/WorkingMessage;
    :cond_0
    invoke-static {p0, p1}, Lcom/android/mms/data/WorkingMessage;->createEmpty(Landroid/content/Context;Lcom/android/mms/data/WorkingMessage$MessageStatusListener;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    goto :goto_0
.end method

.method public static loadDraftDelete(Landroid/content/Context;Lcom/android/mms/ui/ComposeMessageFragment;Lcom/android/mms/data/Conversation;)Z
    .locals 2
    .parameter "context"
    .parameter "activity"
    .parameter "conv"

    .prologue
    .line 516
    new-instance v0, Lcom/android/mms/data/WorkingMessage;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/data/WorkingMessage;-><init>(Landroid/content/Context;Lcom/android/mms/data/WorkingMessage$MessageStatusListener;)V

    .line 517
    .local v0, msg:Lcom/android/mms/data/WorkingMessage;
    invoke-direct {v0, p2}, Lcom/android/mms/data/WorkingMessage;->loadFromConversation(Lcom/android/mms/data/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 518
    const/4 v1, 0x1

    .line 520
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadFromConversation(Lcom/android/mms/data/Conversation;)Z
    .locals 9
    .parameter "conv"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 525
    const-string v6, "Mms/WorkingMessage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadFromConversation(),conv="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v1

    .line 528
    .local v1, threadId:J
    const-wide/16 v6, 0x0

    cmp-long v6, v1, v6

    if-gtz v6, :cond_1

    .line 568
    :cond_0
    :goto_0
    return v4

    .line 533
    :cond_1
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    invoke-direct {p0, p1}, Lcom/android/mms/data/WorkingMessage;->readDraftSmsMessage(Lcom/android/mms/data/Conversation;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    .line 534
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v6, v6, v4

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    move v4, v5

    .line 535
    goto :goto_0

    .line 543
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 544
    .local v0, sb:Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-direct {p0, v6, v1, v2, v0}, Lcom/android/mms/data/WorkingMessage;->readDraftMmsMessage(Landroid/content/Context;JLjava/lang/StringBuilder;)Landroid/net/Uri;

    move-result-object v3

    .line 546
    .local v3, uri:Landroid/net/Uri;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSignature()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 547
    iput-boolean v4, p0, Lcom/android/mms/data/WorkingMessage;->mIsSignatureAdded:Z

    .line 550
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePriority()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 551
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-direct {p0, v6, v1, v2}, Lcom/android/mms/data/WorkingMessage;->readPriorityMms(Landroid/content/Context;J)V

    .line 554
    :cond_4
    if-eqz v3, :cond_0

    .line 555
    invoke-direct {p0, v3}, Lcom/android/mms/data/WorkingMessage;->loadFromUri(Landroid/net/Uri;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 558
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v6, v3}, Lcom/android/mms/data/WorkingMessage;->loadRecipients(Landroid/content/Context;Landroid/net/Uri;)V

    .line 561
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_5

    .line 562
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6, v4}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    :cond_5
    move v4, v5

    .line 564
    goto :goto_0
.end method

.method private loadFromUri(Landroid/net/Uri;)Z
    .locals 6
    .parameter "uri"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 430
    const-string v3, "Mms/WorkingMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadFromUri:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    .line 442
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->syncTextFromSlideshow()V

    .line 443
    invoke-virtual {p0, v2}, Lcom/android/mms/data/WorkingMessage;->correctAttachmentState(Z)V

    .line 445
    :goto_0
    return v1

    .line 434
    :catch_0
    move-exception v0

    .line 435
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v3, "Couldn\'t load URI %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v3, v1}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    .line 436
    goto :goto_0
.end method

.method private loadFromUri(Landroid/net/Uri;ZZ)Z
    .locals 8
    .parameter "uri"
    .parameter "IsSlideshow"
    .parameter "checkCRMode"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 451
    const-string v5, "Mms/WorkingMessage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadFromUri with CRMode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    :try_start_0
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v5, p1, p2, p3}, Lcom/android/mms/model/SlideshowModel;->createFromPduBody(Landroid/content/Context;Landroid/net/Uri;ZZ)Lcom/android/mms/model/SlideshowModel;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 454
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v5

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v6

    if-le v5, v6, :cond_0

    .line 456
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 457
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/mms/model/SlideshowModel;->createNew(Landroid/content/Context;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    .line 458
    .local v2, slideshow:Lcom/android/mms/model/SlideshowModel;
    new-instance v1, Lcom/android/mms/model/SlideModel;

    invoke-direct {v1, v2}, Lcom/android/mms/model/SlideModel;-><init>(Lcom/android/mms/model/SlideshowModel;)V

    .line 459
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v2, v1}, Lcom/android/mms/model/SlideshowModel;->add(Lcom/android/mms/model/SlideModel;)Z

    .line 461
    iput-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 463
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0045

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    .end local v1           #slide:Lcom/android/mms/model/SlideModel;
    .end local v2           #slideshow:Lcom/android/mms/model/SlideshowModel;
    :cond_0
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    .line 475
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->syncTextFromSlideshow()V

    .line 476
    invoke-virtual {p0, v4}, Lcom/android/mms/data/WorkingMessage;->correctAttachmentState(Z)V

    .line 478
    :goto_0
    return v3

    .line 467
    :catch_0
    move-exception v0

    .line 468
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v5, "Couldn\'t load URI %s"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v5, v3}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    move v3, v4

    .line 469
    goto :goto_0
.end method

.method private static makeSendReq(Lcom/android/mms/data/Conversation;Ljava/lang/CharSequence;)Lcom/google/android/mms/pdu/SendReq;
    .locals 9
    .parameter "conv"
    .parameter "subject"

    .prologue
    const/4 v8, 0x1

    .line 2683
    const/4 v0, 0x0

    .line 2684
    .local v0, dests:[Ljava/lang/String;
    if-nez p0, :cond_3

    .line 2685
    const-string v4, "Mms/WorkingMessage"

    const-string v5, "conversation is null!!!!!"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2686
    const/4 v4, 0x0

    new-array v0, v4, [Ljava/lang/String;

    .line 2691
    :goto_0
    new-instance v3, Lcom/google/android/mms/pdu/SendReq;

    invoke-direct {v3}, Lcom/google/android/mms/pdu/SendReq;-><init>()V

    .line 2692
    .local v3, req:Lcom/google/android/mms/pdu/SendReq;
    invoke-static {v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->encodeStrings([Ljava/lang/String;)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v2

    .line 2694
    .local v2, encodedNumbers:[Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableGroupMessage()Z

    move-result v4

    if-nez v4, :cond_4

    .line 2696
    if-eqz v2, :cond_0

    .line 2697
    invoke-virtual {v3, v2}, Lcom/google/android/mms/pdu/SendReq;->setTo([Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 2730
    :cond_0
    :goto_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2731
    new-instance v4, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setSubject(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 2734
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setDate(J)V

    .line 2736
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePriority()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2737
    sget v4, Lcom/android/mms/data/WorkingMessage;->mPriorityLevel:I

    if-ne v4, v8, :cond_7

    .line 2740
    const/16 v4, 0x81

    :try_start_0
    invoke-virtual {v3, v4}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setPriority(I)V
    :try_end_0
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2756
    :cond_2
    :goto_2
    return-object v3

    .line 2688
    .end local v2           #encodedNumbers:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v3           #req:Lcom/google/android/mms/pdu/SendReq;
    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2703
    .restart local v2       #encodedNumbers:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v3       #req:Lcom/google/android/mms/pdu/SendReq;
    :cond_4
    if-eqz v2, :cond_0

    .line 2705
    const-string v4, "NGM:makeSendReq:encodedNumbers"

    array-length v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2706
    array-length v4, v2

    if-ne v4, v8, :cond_5

    .line 2708
    invoke-virtual {v3, v2}, Lcom/google/android/mms/pdu/SendReq;->setTo([Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 2709
    const-string v4, "NGM:makeSendReq"

    const-string v5, "Send through to"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2713
    :cond_5
    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lcom/android/mms/data/Conversation;->isGroupMessage()Z

    move-result v4

    if-ne v4, v8, :cond_6

    .line 2715
    const-string v4, "NGM"

    const-string v5, "Multiple Recipients .... Group Message true.. Set CC"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2716
    invoke-virtual {v3, v2}, Lcom/google/android/mms/pdu/SendReq;->setCc([Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 2717
    const-string v4, "NGM:makeSendReq"

    const-string v5, "Send through CC"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2721
    :cond_6
    const-string v4, "NGM"

    const-string v5, "Multiple Recipients .... Group Message false.. Set BCC"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2722
    invoke-virtual {v3, v2}, Lcom/google/android/mms/pdu/SendReq;->setBcc([Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 2723
    const-string v4, "NGM:makeSendReq"

    const-string v5, "Send through BCC"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2741
    :catch_0
    move-exception v1

    .line 2743
    .local v1, e:Lcom/google/android/mms/InvalidHeaderValueException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 2746
    .end local v1           #e:Lcom/google/android/mms/InvalidHeaderValueException;
    :cond_7
    sget v4, Lcom/android/mms/data/WorkingMessage;->mPriorityLevel:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 2749
    const/16 v4, 0x82

    :try_start_1
    invoke-virtual {v3, v4}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setPriority(I)V
    :try_end_1
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 2750
    :catch_1
    move-exception v1

    .line 2752
    .restart local v1       #e:Lcom/google/android/mms/InvalidHeaderValueException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method private preSendSmsWorker(Lcom/android/mms/data/Conversation;Ljava/lang/String;II)V
    .locals 15
    .parameter "conv"
    .parameter "msgText"
    .parameter "priority"
    .parameter "sendSimSlot"

    .prologue
    .line 2204
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/common/userhappiness/UserHappinessSignals;->userAcceptedImeText(Landroid/content/Context;)V

    .line 2206
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v4}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onPreMessageSent()V

    .line 2212
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/Conversation;->ensureThreadId()J

    move-result-wide v1

    .line 2214
    .local v1, threadId:J
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/ContactList;->serialize()Ljava/lang/String;

    move-result-object v3

    .line 2233
    .local v3, semiSepRecipients:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mHandler:Landroid/os/Handler;

    if-eqz v4, :cond_2

    .line 2234
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v4, v7, v8, v9, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    .line 2235
    .local v14, msg:Landroid/os/Message;
    invoke-virtual {v14}, Landroid/os/Message;->sendToTarget()V

    .line 2242
    .end local v14           #msg:Landroid/os/Message;
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getReserveDeliveryTime()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v4, v7, v9

    if-lez v4, :cond_3

    .line 2243
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getReserveDeliveryTime()J

    move-result-wide v5

    .line 2244
    .local v5, deliveryTime:J
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/mms/transaction/ReservationManager;->getInstance(Landroid/content/Context;)Lcom/android/mms/transaction/ReservationManager;

    move-result-object v0

    .line 2245
    .local v0, reservationManager:Lcom/android/mms/transaction/ReservationManager;
    if-eqz v0, :cond_0

    move-object/from16 v4, p2

    move/from16 v7, p4

    .line 2246
    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/transaction/ReservationManager;->addSms(JLjava/lang/String;Ljava/lang/String;JI)J

    .line 2248
    :cond_0
    iget-boolean v4, p0, Lcom/android/mms/data/WorkingMessage;->mExitOnSent:Z

    if-nez v4, :cond_1

    .line 2249
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v4}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onMessageSent()V

    .line 2257
    .end local v0           #reservationManager:Lcom/android/mms/transaction/ReservationManager;
    .end local v5           #deliveryTime:J
    :cond_1
    :goto_1
    invoke-direct {p0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->deleteDraftSmsMessage(J)V

    .line 2258
    return-void

    .line 2237
    :cond_2
    const-string v4, "Mms/WorkingMessage"

    const-string v7, "preSendSmsWorker Handler is null"

    invoke-static {v4, v7}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v7, p0

    move-object/from16 v8, p2

    move-object v9, v3

    move-wide v10, v1

    move/from16 v12, p3

    move/from16 v13, p4

    .line 2254
    invoke-direct/range {v7 .. v13}, Lcom/android/mms/data/WorkingMessage;->sendSmsWorker(Ljava/lang/String;Ljava/lang/String;JII)V

    goto :goto_1
.end method

.method private prepareForSave(Z)V
    .locals 1
    .parameter "notify"

    .prologue
    .line 1325
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/mms/data/WorkingMessage;->prepareForSave(ZZ)V

    .line 1326
    return-void
.end method

.method private prepareForSave(ZLjava/lang/String;)V
    .locals 1
    .parameter "notify"
    .parameter "callBackNumber"

    .prologue
    const/4 v0, 0x1

    .line 1329
    if-nez p2, :cond_0

    .line 1330
    invoke-direct {p0, p1, v0}, Lcom/android/mms/data/WorkingMessage;->prepareForSave(ZZ)V

    .line 1333
    :goto_0
    return-void

    .line 1332
    :cond_0
    invoke-direct {p0, p1, v0, p2}, Lcom/android/mms/data/WorkingMessage;->prepareForSave(ZZLjava/lang/String;)V

    goto :goto_0
.end method

.method private prepareForSave(ZZ)V
    .locals 1
    .parameter "notify"
    .parameter "removeSubject"

    .prologue
    .line 1294
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->syncWorkingRecipients()V

    .line 1296
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1297
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->ensureSlideshow()V

    .line 1298
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->syncTextToSlideshow()V

    .line 1299
    if-eqz p2, :cond_0

    .line 1300
    invoke-direct {p0, p1}, Lcom/android/mms/data/WorkingMessage;->removeSubjectIfEmpty(Z)V

    .line 1301
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/mms/data/WorkingMessage;->removeAttachmentIfEmpty(Z)V

    .line 1302
    invoke-direct {p0, p1}, Lcom/android/mms/data/WorkingMessage;->removeLengthMMSIfNotOver(Z)V

    .line 1304
    :cond_1
    return-void
.end method

.method private prepareForSave(ZZLjava/lang/String;)V
    .locals 1
    .parameter "notify"
    .parameter "removeSubject"
    .parameter "callBackNumber"

    .prologue
    .line 1309
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->syncWorkingRecipients()V

    .line 1311
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1312
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->ensureSlideshow()V

    .line 1313
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->syncTextToSlideshow()V

    .line 1314
    if-eqz p3, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1315
    invoke-direct {p0, p3}, Lcom/android/mms/data/WorkingMessage;->syncCallbackNumberToSlideshow(Ljava/lang/String;)V

    .line 1316
    :cond_0
    if-eqz p2, :cond_1

    .line 1317
    invoke-direct {p0, p1}, Lcom/android/mms/data/WorkingMessage;->removeSubjectIfEmpty(Z)V

    .line 1318
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/mms/data/WorkingMessage;->removeAttachmentIfEmpty(Z)V

    .line 1319
    invoke-direct {p0, p1}, Lcom/android/mms/data/WorkingMessage;->removeLengthMMSIfNotOver(Z)V

    .line 1321
    :cond_2
    return-void
.end method

.method private readDraftMmsMessage(Landroid/content/Context;JLjava/lang/StringBuilder;)Landroid/net/Uri;
    .locals 10
    .parameter "context"
    .parameter "threadId"
    .parameter "sb"

    .prologue
    const/4 v5, 0x0

    .line 2597
    const-string v0, "Mms/WorkingMessage"

    const-string v2, "readDraftMmsMessage()"

    invoke-static {v0, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2600
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2602
    .local v1, cr:Landroid/content/ContentResolver;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thread_id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2603
    .local v4, selection:Ljava/lang/String;
    sget-object v2, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/data/WorkingMessage;->MMS_DRAFT_PROJECTION:[Ljava/lang/String;

    move-object v0, p1

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2606
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_1

    .line 2637
    :cond_0
    :goto_0
    return-object v5

    .line 2611
    :cond_1
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2612
    sget-object v0, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    .line 2614
    .local v9, uri:Landroid/net/Uri;
    const/4 v0, 0x1

    const/4 v2, 0x2

    invoke-static {v7, v0, v2}, Lcom/android/mms/ui/MessageUtils;->extractEncStrFromCursor(Landroid/database/Cursor;II)Ljava/lang/String;

    move-result-object v8

    .line 2616
    .local v8, subject:Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 2617
    invoke-virtual {p4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2619
    :cond_2
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v5, 0x1

    cmp-long v0, v2, v5

    if-nez v0, :cond_5

    .line 2620
    const/4 v0, 0x4

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v5, 0x3e8

    mul-long/2addr v2, v5

    iput-wide v2, p0, Lcom/android/mms/data/WorkingMessage;->mReserveDeliveryTime:J

    .line 2625
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePriority()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2626
    const/4 v0, 0x5

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/data/WorkingMessage;->mPriorityValue:I

    .line 2629
    :cond_3
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p2, p3, v2}, Lcom/android/mms/util/DraftCache;->setDraftState(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2633
    if-eqz v7, :cond_4

    .line 2634
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v5, v9

    goto :goto_0

    .line 2622
    :cond_5
    const-wide/16 v2, 0x0

    :try_start_1
    iput-wide v2, p0, Lcom/android/mms/data/WorkingMessage;->mReserveDeliveryTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2633
    .end local v8           #subject:Ljava/lang/String;
    .end local v9           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_6

    .line 2634
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    .line 2633
    :cond_7
    if-eqz v7, :cond_0

    .line 2634
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private readDraftSmsMessage(Lcom/android/mms/data/Conversation;)Ljava/lang/String;
    .locals 16
    .parameter "conv"

    .prologue
    .line 3001
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v14

    .line 3004
    .local v14, threadId:J
    const-string v1, "Mms/WorkingMessage"

    const-string v2, "readDraftSmsMessage()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3007
    const-wide/16 v1, 0x0

    cmp-long v1, v14, v1

    if-gtz v1, :cond_1

    .line 3008
    const-string v8, ""

    .line 3073
    :cond_0
    :goto_0
    return-object v8

    .line 3011
    :cond_1
    sget-object v1, Landroid/provider/Telephony$Sms$Conversations;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 3012
    .local v3, threadUri:Landroid/net/Uri;
    const-string v8, ""

    .line 3013
    .local v8, body:Ljava/lang/String;
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .local v12, reserved:Ljava/lang/Long;
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 3015
    .local v10, date:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/mms/data/WorkingMessage;->SMS_DRAFT_PROJECTION:[Ljava/lang/String;

    const-string v5, "type=3"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 3017
    .local v9, c:Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 3018
    .local v11, haveDraft:Z
    if-eqz v9, :cond_4

    .line 3020
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3021
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 3022
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 3023
    const/4 v1, 0x2

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 3024
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePriority()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3025
    const/4 v1, 0x3

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    sput v1, Lcom/android/mms/data/WorkingMessage;->mPriorityLevel:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3027
    :cond_2
    const/4 v11, 0x1

    .line 3030
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 3033
    :cond_4
    if-eqz v11, :cond_6

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v4, 0x1

    cmp-long v1, v1, v4

    if-nez v1, :cond_6

    .line 3034
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/mms/data/WorkingMessage;->mReserveDeliveryTime:J

    .line 3041
    :goto_1
    if-eqz v11, :cond_5

    .line 3046
    invoke-virtual/range {p0 .. p1}, Lcom/android/mms/data/WorkingMessage;->asyncDeleteDraftSmsMessage(Lcom/android/mms/data/Conversation;)V

    .line 3055
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/android/mms/data/Conversation;->setDraftState(Z)V

    .line 3057
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 3064
    invoke-static {v14, v15}, Lcom/android/mms/data/Conversation;->removeCache(J)V

    .line 3065
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v14, v15, v2}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v13

    .line 3067
    .local v13, tempConv:Lcom/android/mms/data/Conversation;
    invoke-virtual {v13}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 3068
    const-string v1, "Mms/WorkingMessage"

    const-string v2, "readDraftSmsMessage calling clearThreadId"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3069
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/Conversation;->clearThreadId()V

    goto/16 :goto_0

    .line 3030
    .end local v13           #tempConv:Lcom/android/mms/data/Conversation;
    :catchall_0
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1

    .line 3036
    :cond_6
    const-wide/16 v1, 0x0

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/android/mms/data/WorkingMessage;->mReserveDeliveryTime:J

    goto :goto_1
.end method

.method private readPriorityMms(Landroid/content/Context;J)V
    .locals 8
    .parameter "context"
    .parameter "threadId"

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 3950
    const-string v0, "Mms:app"

    invoke-static {v0, v6}, Lcom/android/mms/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3951
    const-string v0, "readCallBackNumberFromMms tid=%d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v2}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3954
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 3956
    .local v1, cr:Landroid/content/ContentResolver;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thread_id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3957
    .local v4, selection:Ljava/lang/String;
    sget-object v2, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/data/WorkingMessage;->MMS_DRAFT_PROJECTION:[Ljava/lang/String;

    move-object v0, p1

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 3963
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3968
    const/4 v0, 0x5

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/data/WorkingMessage;->mPriorityValue:I

    .line 3970
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mPriorityValue:I

    const/16 v2, 0x82

    if-ne v0, v2, :cond_2

    .line 3971
    const/4 v0, 0x2

    sput v0, Lcom/android/mms/data/WorkingMessage;->mPriorityLevel:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3977
    :cond_1
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3979
    return-void

    .line 3973
    :cond_2
    const/4 v0, 0x1

    :try_start_1
    sput v0, Lcom/android/mms/data/WorkingMessage;->mPriorityLevel:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3977
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private removeAttachmentIfEmpty(Z)V
    .locals 2
    .parameter "notify"

    .prologue
    .line 1271
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    .line 1272
    return-void
.end method

.method private removeLengthMMSIfNotOver(Z)V
    .locals 3
    .parameter "notify"

    .prologue
    const/16 v2, 0x8

    .line 1276
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGateway()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->isAliasEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1277
    :cond_0
    const/4 v0, 0x0

    .line 1278
    .local v0, mContactList:Lcom/android/mms/data/ContactList;
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    if-eqz v1, :cond_1

    .line 1279
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 1281
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/mms/data/WorkingMessage;->getMaxLengthEmailAdress(Lcom/android/mms/data/ContactList;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/mms/data/WorkingMessage;->isLengthRequiresMMS(I)Z

    move-result v1

    invoke-direct {p0, v2, v1, p1}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    .line 1285
    .end local v0           #mContactList:Lcom/android/mms/data/ContactList;
    :goto_0
    return-void

    .line 1283
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->isLengthRequiresMMS()Z

    move-result v1

    invoke-direct {p0, v2, v1, p1}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    goto :goto_0
.end method

.method private removeSubjectIfEmpty(Z)V
    .locals 1
    .parameter "notify"

    .prologue
    .line 1264
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1265
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 1267
    :cond_0
    return-void
.end method

.method private sendMmsWorker(Lcom/android/mms/data/Conversation;Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;II)V
    .locals 33
    .parameter "conv"
    .parameter "mmsUri"
    .parameter "persister"
    .parameter "slideshow"
    .parameter "sendReq"
    .parameter "priorityLevel"
    .parameter "sendSimSlot"

    .prologue
    .line 2346
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/common/userhappiness/UserHappinessSignals;->userAcceptedImeText(Landroid/content/Context;)V

    .line 2349
    const/4 v13, 0x0

    .line 2351
    .local v13, cursor:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/mms/data/WorkingMessage;->MMS_OUTBOX_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 2353
    if-eqz v13, :cond_2

    .line 2354
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSizeScaleForPendingMmsAllowed()I

    move-result v5

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v6

    mul-int/2addr v5, v6

    int-to-long v0, v5

    move-wide/from16 v21, v0

    .line 2356
    .local v21, maxMessageSize:J
    const-wide/16 v31, 0x0

    .line 2357
    .local v31, totalPendingSize:J
    :goto_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2358
    const/4 v5, 0x1

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    add-long v31, v31, v5

    goto :goto_0

    .line 2360
    :cond_0
    cmp-long v5, v31, v21

    if-ltz v5, :cond_2

    .line 2361
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/data/WorkingMessage;->unDiscard()V

    .line 2362
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v5}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onMaxPendingMessagesReached()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2367
    if-eqz v13, :cond_1

    .line 2368
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 2524
    .end local v21           #maxMessageSize:J
    .end local v31           #totalPendingSize:J
    :cond_1
    :goto_1
    return-void

    .line 2367
    :cond_2
    if-eqz v13, :cond_3

    .line 2368
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 2371
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v5}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onPreMessageSent()V

    .line 2375
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/Conversation;->ensureThreadId()J

    move-result-wide v29

    .line 2379
    .local v29, threadId:J
    const-string v5, "Mms/WorkingMessage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendMmsWorker: update draft MMS message "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2382
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAttachmentFilenameEncoding()Z

    move-result v5

    if-nez v5, :cond_d

    .line 2388
    const/16 v20, 0x0

    .line 2389
    .local v20, mCurrentSlideNum:I
    invoke-virtual/range {p4 .. p4}, Lcom/android/mms/model/SlideshowModel;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/mms/model/SlideModel;

    .line 2390
    .local v28, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual/range {v28 .. v28}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/mms/model/MediaModel;

    .line 2391
    .local v23, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual/range {v23 .. v23}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v24

    .line 2392
    .local v24, mediaSrc:Ljava/lang/String;
    const/16 v17, 0x0

    .local v17, i:I
    :goto_4
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v5

    move/from16 v0, v17

    if-ge v0, v5, :cond_7

    .line 2393
    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x21

    if-lt v5, v6, :cond_4

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x7e

    if-le v5, v6, :cond_5

    .line 2394
    :cond_4
    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5f

    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v24

    .line 2392
    :cond_5
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    .line 2367
    .end local v17           #i:I
    .end local v19           #i$:Ljava/util/Iterator;
    .end local v20           #mCurrentSlideNum:I
    .end local v23           #media:Lcom/android/mms/model/MediaModel;
    .end local v24           #mediaSrc:Ljava/lang/String;
    .end local v28           #slide:Lcom/android/mms/model/SlideModel;
    .end local v29           #threadId:J
    :catchall_0
    move-exception v5

    if-eqz v13, :cond_6

    .line 2368
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v5

    .line 2398
    .restart local v17       #i:I
    .restart local v19       #i$:Ljava/util/Iterator;
    .restart local v20       #mCurrentSlideNum:I
    .restart local v23       #media:Lcom/android/mms/model/MediaModel;
    .restart local v24       #mediaSrc:Ljava/lang/String;
    .restart local v28       #slide:Lcom/android/mms/model/SlideModel;
    .restart local v29       #threadId:J
    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->checkMediaFileName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Lcom/android/mms/model/MediaModel;->setSrc(Ljava/lang/String;)V

    goto :goto_3

    .line 2400
    .end local v17           #i:I
    .end local v23           #media:Lcom/android/mms/model/MediaModel;
    .end local v24           #mediaSrc:Ljava/lang/String;
    :cond_8
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 2402
    .end local v19           #i$:Ljava/util/Iterator;
    .end local v28           #slide:Lcom/android/mms/model/SlideModel;
    :cond_9
    invoke-virtual/range {p4 .. p4}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsSize()I

    move-result v5

    if-lez v5, :cond_d

    .line 2403
    invoke-virtual/range {p4 .. p4}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsList()Ljava/util/ArrayList;

    move-result-object v27

    .line 2404
    .local v27, rawAttachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/AttachmentModel;>;"
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/mms/model/AttachmentModel;

    .line 2405
    .local v12, attachment:Lcom/android/mms/model/AttachmentModel;
    invoke-virtual {v12}, Lcom/android/mms/model/AttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v11

    .line 2406
    .local v11, attachSrc:Ljava/lang/String;
    const/16 v17, 0x0

    .restart local v17       #i:I
    :goto_6
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    move/from16 v0, v17

    if-ge v0, v5, :cond_c

    .line 2407
    move/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x21

    if-lt v5, v6, :cond_a

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x7e

    if-le v5, v6, :cond_b

    .line 2408
    :cond_a
    move/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5f

    invoke-virtual {v11, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v11

    .line 2406
    :cond_b
    add-int/lit8 v17, v17, 0x1

    goto :goto_6

    .line 2411
    :cond_c
    invoke-virtual {v12, v11}, Lcom/android/mms/model/AttachmentModel;->setSrc(Ljava/lang/String;)V

    goto :goto_5

    .line 2420
    .end local v11           #attachSrc:Ljava/lang/String;
    .end local v12           #attachment:Lcom/android/mms/model/AttachmentModel;
    .end local v17           #i:I
    .end local v18           #i$:Ljava/util/Iterator;
    .end local v20           #mCurrentSlideNum:I
    .end local v27           #rawAttachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/AttachmentModel;>;"
    :cond_d
    if-nez p2, :cond_10

    .line 2422
    move-object/from16 v0, p3

    move-object/from16 v1, p5

    move-object/from16 v2, p4

    invoke-static {v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->createDraftMmsMessage(Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;Lcom/android/mms/model/SlideshowModel;)Landroid/net/Uri;

    move-result-object p2

    .line 2429
    :goto_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/data/WorkingMessage;->mHandler:Landroid/os/Handler;

    if-eqz v5, :cond_11

    .line 2430
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/data/WorkingMessage;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v25

    .line 2431
    .local v25, msg:Landroid/os/Message;
    invoke-virtual/range {v25 .. v25}, Landroid/os/Message;->sendToTarget()V

    .line 2438
    .end local v25           #msg:Landroid/os/Message;
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/data/WorkingMessage;->getReserveDeliveryTime()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_13

    .line 2440
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/data/WorkingMessage;->getReserveDeliveryTime()J

    move-result-wide v14

    .line 2443
    .local v14, deliveryTime:J
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v26

    .line 2444
    .local v26, multiSimNum:I
    const/4 v5, 0x1

    move/from16 v0, v26

    if-le v0, v5, :cond_12

    .line 2445
    const/4 v5, 0x2

    move/from16 v0, p7

    if-ne v0, v5, :cond_e

    .line 2446
    const-string v5, "persist.radio.calldefault.simid"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p7

    .line 2453
    :cond_e
    :goto_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/mms/transaction/ReservationManager;->getInstance(Landroid/content/Context;)Lcom/android/mms/transaction/ReservationManager;

    move-result-object v3

    .line 2454
    .local v3, reservationManager:Lcom/android/mms/transaction/ReservationManager;
    if-eqz v3, :cond_f

    .line 2455
    const-wide/16 v5, 0x3e8

    div-long v5, v14, v5

    const-wide/16 v7, 0x3e8

    mul-long/2addr v7, v5

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p4

    move/from16 v9, p7

    invoke-virtual/range {v3 .. v9}, Lcom/android/mms/transaction/ReservationManager;->addMms(Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;Lcom/android/mms/model/SlideshowModel;JI)J

    .line 2456
    move-object/from16 v0, p0

    move-wide/from16 v1, v29

    invoke-direct {v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->syncDeleteDraftMmsMessage(J)V

    .line 2457
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v5

    const/4 v6, 0x0

    move-wide/from16 v0, v29

    invoke-virtual {v5, v0, v1, v6}, Lcom/android/mms/util/DraftCache;->setDraftState(JZ)V

    .line 2458
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/mms/data/WorkingMessage;->mExitOnSent:Z

    if-nez v5, :cond_f

    .line 2459
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v5}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onMessageSent()V

    .line 2523
    .end local v3           #reservationManager:Lcom/android/mms/transaction/ReservationManager;
    .end local v14           #deliveryTime:J
    .end local v26           #multiSimNum:I
    :cond_f
    :goto_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 2425
    :cond_10
    invoke-static/range {p2 .. p5}, Lcom/android/mms/data/WorkingMessage;->updateDraftMmsMessage(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;)V

    goto :goto_7

    .line 2433
    :cond_11
    const-string v5, "Mms/WorkingMessage"

    const-string v6, "sendMmsWorker Handler is null"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 2449
    .restart local v14       #deliveryTime:J
    .restart local v26       #multiSimNum:I
    :cond_12
    const/16 p7, 0x0

    goto :goto_9

    .line 2463
    .end local v14           #deliveryTime:J
    .end local v26           #multiSimNum:I
    :cond_13
    move-object/from16 v0, p0

    move-wide/from16 v1, v29

    invoke-direct {v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->deleteDraftSmsMessage(J)V

    .line 2487
    :try_start_1
    new-instance v4, Lcom/android/mms/transaction/MmsMessageSender;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-virtual/range {p4 .. p4}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v6

    int-to-long v7, v6

    const/4 v9, 0x1

    move-object/from16 v6, p2

    move/from16 v10, p7

    invoke-direct/range {v4 .. v10}, Lcom/android/mms/transaction/MmsMessageSender;-><init>(Landroid/content/Context;Landroid/net/Uri;JII)V

    .line 2493
    .local v4, sender:Lcom/android/mms/transaction/MessageSender;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePriority()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 2495
    move/from16 v0, p6

    invoke-interface {v4, v0}, Lcom/android/mms/transaction/MessageSender;->setPriorityLevel(I)V

    .line 2497
    const/4 v5, 0x1

    sput v5, Lcom/android/mms/data/WorkingMessage;->mPriorityLevel:I

    .line 2500
    :cond_14
    move-wide/from16 v0, v29

    invoke-interface {v4, v0, v1}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z

    move-result v5

    if-nez v5, :cond_15

    .line 2503
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-static {v5, v6, v0, v7, v8}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2507
    :cond_15
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v5

    const/4 v6, 0x0

    move-wide/from16 v0, v29

    invoke-virtual {v5, v0, v1, v6}, Lcom/android/mms/util/DraftCache;->setDraftState(JZ)V

    .line 2509
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableGroupMessage()Z

    move-result v5

    if-eqz v5, :cond_16

    .line 2511
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    move-wide/from16 v0, v29

    invoke-virtual {v5, v6, v0, v1}, Lcom/android/mms/util/Recycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V

    .line 2515
    :cond_16
    invoke-static {}, Lcom/android/mms/util/Recycler;->getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    move-wide/from16 v0, v29

    invoke-virtual {v5, v6, v0, v1}, Lcom/android/mms/util/Recycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2521
    .end local v4           #sender:Lcom/android/mms/transaction/MessageSender;
    :goto_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v5}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onMessageSent()V

    goto/16 :goto_a

    .line 2516
    :catch_0
    move-exception v16

    .line 2517
    .local v16, e:Ljava/lang/Exception;
    const-string v5, "Mms/WorkingMessage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to send message: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", threadId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v29

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-static {v5, v6, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b
.end method

.method private sendSmsWorker(Ljava/lang/String;Ljava/lang/String;JII)V
    .locals 11
    .parameter "msgText"
    .parameter "semiSepRecipients"
    .parameter "threadId"
    .parameter "priority"
    .parameter "sendSimSlot"

    .prologue
    .line 2261
    const-string v2, ";"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2263
    .local v3, dests:[Ljava/lang/String;
    const-string v2, "Mms/WorkingMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendSmsWorker() sendSimSlot: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2265
    const/4 v1, 0x0

    .line 2267
    .local v1, sender:Lcom/android/mms/transaction/MessageSender;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableIEI()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2268
    new-instance v1, Lcom/android/mms/transaction/SmsMessageSender;

    .end local v1           #sender:Lcom/android/mms/transaction/MessageSender;
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mSender:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v4, p1

    move-wide v5, p3

    move/from16 v7, p5

    move/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;I)V

    .line 2273
    .restart local v1       #sender:Lcom/android/mms/transaction/MessageSender;
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePriority()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2274
    const-string v2, "Mms/WorkingMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mPriorityLevel="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/mms/data/WorkingMessage;->mPriorityLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2275
    sget v2, Lcom/android/mms/data/WorkingMessage;->mPriorityLevel:I

    invoke-interface {v1, v2}, Lcom/android/mms/transaction/MessageSender;->setPriorityLevel(I)V

    .line 2276
    const/4 v2, 0x1

    sput v2, Lcom/android/mms/data/WorkingMessage;->mPriorityLevel:I

    .line 2280
    :cond_0
    :try_start_0
    invoke-interface {v1, p3, p4}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z

    .line 2283
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v2

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4, p3, p4}, Lcom/android/mms/util/Recycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2288
    :goto_1
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v2}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onMessageSent()V

    .line 2289
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    .line 2290
    return-void

    .line 2271
    :cond_1
    new-instance v1, Lcom/android/mms/transaction/SmsMessageSender;

    .end local v1           #sender:Lcom/android/mms/transaction/MessageSender;
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    move-object v4, p1

    move-wide v5, p3

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;JII)V

    .restart local v1       #sender:Lcom/android/mms/transaction/MessageSender;
    goto :goto_0

    .line 2284
    :catch_0
    move-exception v10

    .line 2285
    .local v10, e:Ljava/lang/Exception;
    const-string v2, "Mms/WorkingMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to send SMS message, threadId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v10}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static setMmsEnable(Z)V
    .locals 0
    .parameter "isEnabled"

    .prologue
    .line 1682
    sput-boolean p0, Lcom/android/mms/data/WorkingMessage;->sMmsEnabled:Z

    .line 1683
    return-void
.end method

.method private setText(ILjava/lang/CharSequence;)V
    .locals 5
    .parameter "slideIndex"
    .parameter "s"

    .prologue
    const/4 v2, 0x0

    .line 605
    const-string v1, "Mms/WorkingMessage"

    const-string v3, "setText()"

    invoke-static {v1, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsSubject()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 608
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 609
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 612
    .local v0, content:Ljava/lang/String;
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v4

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v3, v4, v1, v2}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZZ)V

    .line 616
    .end local v0           #content:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aput-object p2, v1, p1

    .line 617
    return-void

    .restart local v0       #content:Ljava/lang/String;
    :cond_1
    move v1, v2

    .line 612
    goto :goto_0
.end method

.method private static stateString(I)Ljava/lang/String;
    .locals 3
    .parameter "state"

    .prologue
    .line 1830
    if-nez p0, :cond_0

    .line 1831
    const-string v1, "<none>"

    .line 1852
    :goto_0
    return-object v1

    .line 1833
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1834
    .local v0, sb:Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0x1

    if-lez v1, :cond_1

    .line 1835
    const-string v1, "RECIPIENTS_REQUIRE_MMS | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1836
    :cond_1
    and-int/lit8 v1, p0, 0x2

    if-lez v1, :cond_2

    .line 1837
    const-string v1, "HAS_SUBJECT | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1838
    :cond_2
    and-int/lit8 v1, p0, 0x4

    if-lez v1, :cond_3

    .line 1839
    const-string v1, "HAS_ATTACHMENT | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1840
    :cond_3
    and-int/lit8 v1, p0, 0x8

    if-lez v1, :cond_4

    .line 1841
    const-string v1, "LENGTH_REQUIRES_MMS | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1843
    :cond_4
    and-int/lit8 v1, p0, 0x10

    if-lez v1, :cond_5

    .line 1844
    const-string v1, "REPLY_ALL_MULTIPLE_RECIPIENTS | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1846
    :cond_5
    and-int/lit8 v1, p0, 0x20

    if-lez v1, :cond_6

    .line 1847
    const-string v1, "FORCE_MMS | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1849
    :cond_6
    const-string v1, "Temp_NGM"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1851
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1852
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private syncCallbackNumberToSlideshow(Ljava/lang/String;)V
    .locals 10
    .parameter "callBackNumber"

    .prologue
    const/16 v9, 0xa

    const/4 v8, 0x0

    .line 1189
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 1222
    :cond_0
    :goto_0
    return-void

    .line 1192
    :cond_1
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4, v8}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    .line 1194
    .local v2, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1196
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->getCidTextIndex(Lcom/android/mms/model/SlideshowModel;)I

    move-result v0

    .line 1197
    .local v0, index:I
    new-instance v3, Lcom/android/mms/model/TextModel;

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    const-string v5, "text/plain"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cid:text_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".txt"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v7}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/model/LayoutModel;->getTextRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V

    .line 1199
    .local v3, textModel:Lcom/android/mms/model/TextModel;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1200
    .local v1, s:Ljava/lang/StringBuffer;
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v4, v4, v8

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1202
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v4, v4, v8

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 1204
    :cond_2
    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1205
    const-string v4, "CB#:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1206
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;)V

    .line 1207
    invoke-virtual {v2, v3}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    goto :goto_0

    .line 1210
    .end local v0           #index:I
    .end local v1           #s:Ljava/lang/StringBuffer;
    .end local v3           #textModel:Lcom/android/mms/model/TextModel;
    :cond_3
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v3

    .line 1211
    .restart local v3       #textModel:Lcom/android/mms/model/TextModel;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1212
    .restart local v1       #s:Ljava/lang/StringBuffer;
    invoke-virtual {v3}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v4, v4, v8

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1214
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v4, v4, v8

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 1218
    :goto_1
    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1219
    const-string v4, "CB#:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1220
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1216
    :cond_4
    invoke-virtual {v3}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method private syncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 3177
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v1, p1, p2, p3}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3178
    return-void
.end method

.method private syncDeleteDraftMmsMessage(J)V
    .locals 5
    .parameter "threadId"

    .prologue
    .line 3258
    const-string v1, "Mms/WorkingMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syncDeleteDraftMmsMessage(),threadId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thread_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3260
    .local v0, where:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3261
    return-void
.end method

.method private syncTextFromSlideshow()V
    .locals 8

    .prologue
    .line 1230
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 1231
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v5

    .line 1232
    .local v5, slideSize:I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSlideCount()I

    move-result v1

    .line 1233
    .local v1, maxSlideSize:I
    if-le v5, v1, :cond_1

    move v2, v1

    .local v2, n:I
    move v3, v1

    .line 1234
    .end local v2           #n:I
    .local v3, n:I
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_2

    .line 1235
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6, v0}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v4

    .line 1236
    .local v4, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1237
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    .line 1234
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1233
    .end local v0           #i:I
    .end local v3           #n:I
    .end local v4           #slide:Lcom/android/mms/model/SlideModel;
    :cond_1
    move v2, v5

    .restart local v2       #n:I
    move v3, v5

    goto :goto_0

    .line 1241
    .end local v1           #maxSlideSize:I
    .end local v2           #n:I
    .end local v5           #slideSize:I
    :cond_2
    return-void
.end method

.method private syncTextToSlideshow()V
    .locals 11

    .prologue
    .line 1153
    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v7}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v7

    if-nez v7, :cond_1

    .line 1186
    :cond_0
    return-void

    .line 1156
    :cond_1
    const/4 v0, 0x0

    .line 1159
    .local v0, i:I
    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v7}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v5

    .line 1160
    .local v5, slideSize:I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSlideCount()I

    move-result v2

    .line 1161
    .local v2, maxSlideSize:I
    if-le v5, v2, :cond_4

    move v3, v2

    .line 1164
    .local v3, n:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 1165
    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v7, v0}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v4

    .line 1167
    .local v4, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v7

    if-nez v7, :cond_5

    .line 1169
    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v7}, Lcom/android/mms/ui/MessageUtils;->getCidTextIndex(Lcom/android/mms/model/SlideshowModel;)I

    move-result v1

    .line 1170
    .local v1, index:I
    new-instance v6, Lcom/android/mms/model/TextModel;

    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    const-string v8, "text/plain"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cid:text_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".txt"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v10}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/mms/model/LayoutModel;->getTextRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v10

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V

    .line 1173
    .local v6, textModel:Lcom/android/mms/model/TextModel;
    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v7, v7, v0

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1174
    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v7, v7, v0

    invoke-virtual {v6, v7}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;)V

    .line 1176
    :cond_2
    invoke-virtual {v4, v6}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 1164
    .end local v1           #index:I
    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v3           #n:I
    .end local v4           #slide:Lcom/android/mms/model/SlideModel;
    .end local v6           #textModel:Lcom/android/mms/model/TextModel;
    :cond_4
    move v3, v5

    .line 1161
    goto :goto_0

    .line 1179
    .restart local v3       #n:I
    .restart local v4       #slide:Lcom/android/mms/model/SlideModel;
    :cond_5
    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v6

    .line 1180
    .restart local v6       #textModel:Lcom/android/mms/model/TextModel;
    invoke-virtual {v6}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v7, v7, v0

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1182
    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v7, v7, v0

    invoke-virtual {v6, v7}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private syncUpdateDraftMmsMessage(Lcom/android/mms/data/Conversation;)V
    .locals 24
    .parameter "conv"

    .prologue
    .line 2874
    const-string v3, "Mms/WorkingMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "syncUpdateDraftMmsMessage conv="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mMessageUri="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2877
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v18

    .line 2878
    .local v18, persister:Lcom/google/android/mms/pdu/PduPersister;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/android/mms/data/WorkingMessage;->makeSendReq(Lcom/android/mms/data/Conversation;Ljava/lang/CharSequence;)Lcom/google/android/mms/pdu/SendReq;

    move-result-object v19

    .line 2880
    .local v19, sendReq:Lcom/google/android/mms/pdu/SendReq;
    const-wide/16 v20, 0x0

    .line 2881
    .local v20, setReserved:J
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/data/WorkingMessage;->getReserveDeliveryTime()J

    move-result-wide v14

    .line 2882
    .local v14, deliveryTime:J
    const-wide/16 v3, 0x0

    cmp-long v3, v14, v3

    if-eqz v3, :cond_0

    .line 2883
    const-wide/16 v20, 0x1

    .line 2884
    const-wide/16 v3, 0x3e8

    div-long v3, v14, v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setDate(J)V

    .line 2886
    :cond_0
    invoke-virtual/range {v19 .. v21}, Lcom/google/android/mms/pdu/SendReq;->setReserved(J)V

    .line 2888
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSignature()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2889
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/mms/data/WorkingMessage;->mIsSignatureAdded:Z

    .line 2892
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/Conversation;->ensureThreadId()J

    move-result-wide v22

    .line 2893
    .local v22, threadId:J
    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/mms/data/Conversation;->setDraftState(Z)V

    .line 2895
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/mms/data/WorkingMessage;->deleteDuplicateMmsDraft(JZ)V

    .line 2896
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-nez v3, :cond_3

    .line 2897
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v3}, Lcom/android/mms/data/WorkingMessage;->createDraftMmsMessage(Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;Lcom/android/mms/model/SlideshowModel;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    .line 2923
    :goto_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/mms/data/WorkingMessage;->asyncDeleteDraftSmsMessage(Lcom/android/mms/data/Conversation;)V

    .line 2925
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableGroupMessage()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2928
    invoke-direct/range {p0 .. p1}, Lcom/android/mms/data/WorkingMessage;->updateReplyAllStatus(Lcom/android/mms/data/Conversation;)V

    .line 2933
    :cond_2
    return-void

    .line 2901
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/data/WorkingMessage;->mmsMessageSize()I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v16, v0

    .line 2902
    .local v16, message_size:J
    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "m_size"

    aput-object v4, v6, v3

    .line 2903
    .local v6, MMS_DRAFT_PROJECTION1:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 2905
    .local v13, cursor:Landroid/database/Cursor;
    new-instance v10, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v10, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 2906
    .local v10, values:Landroid/content/ContentValues;
    const-string v3, "m_size"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2907
    if-eqz v13, :cond_5

    .line 2909
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2910
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2913
    :cond_4
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 2918
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v3, v0, v4, v1}, Lcom/android/mms/data/WorkingMessage;->updateDraftMmsMessage(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;)V

    goto :goto_0

    .line 2913
    :catchall_0
    move-exception v3

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v3
.end method

.method private syncUpdateDraftSmsMessage(Lcom/android/mms/data/Conversation;Ljava/lang/String;)V
    .locals 6
    .parameter "conv"
    .parameter "contents"

    .prologue
    .line 3099
    const-string v3, "Mms/WorkingMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "syncUpdateDraftSmsMessage(),conv="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3101
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAnonymousThread()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3116
    :cond_0
    :goto_0
    return-void

    .line 3104
    :cond_1
    sget v0, Lcom/android/mms/data/WorkingMessage;->mPriorityLevel:I

    .line 3106
    .local v0, priority:I
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->ensureThreadId()J

    move-result-wide v1

    .line 3107
    .local v1, threadId:J
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lcom/android/mms/data/Conversation;->setDraftState(Z)V

    .line 3108
    invoke-direct {p0, v1, v2, p2, v0}, Lcom/android/mms/data/WorkingMessage;->updateDraftSmsMessage(JLjava/lang/String;I)V

    .line 3110
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableGroupMessage()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3112
    invoke-direct {p0, p1}, Lcom/android/mms/data/WorkingMessage;->updateReplyAllStatus(Lcom/android/mms/data/Conversation;)V

    goto :goto_0
.end method

.method private static updateDraftMmsMessage(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;)V
    .locals 5
    .parameter "uri"
    .parameter "persister"
    .parameter "slideshow"
    .parameter "sendReq"

    .prologue
    .line 2954
    const-string v2, "Mms/WorkingMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDraftMmsMessage uri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2956
    if-nez p0, :cond_0

    .line 2957
    const-string v2, "Mms/WorkingMessage"

    const-string v3, "updateDraftMmsMessage null uri"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2982
    :goto_0
    return-void

    .line 2961
    :cond_0
    if-nez p3, :cond_1

    .line 2962
    const-string v2, "Mms/WorkingMessage"

    const-string v3, "updateDraftMmsMessage null sendReq"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2966
    :cond_1
    if-nez p2, :cond_2

    .line 2967
    const-string v2, "Mms/WorkingMessage"

    const-string v3, "updateDraftMmsMessage null slideshow"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2972
    :cond_2
    invoke-virtual {p1, p0, p3}, Lcom/google/android/mms/pdu/PduPersister;->updateHeaders(Landroid/net/Uri;Lcom/google/android/mms/pdu/SendReq;)V

    .line 2973
    invoke-virtual {p2}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v1

    .line 2976
    .local v1, pb:Lcom/google/android/mms/pdu/PduBody;
    :try_start_0
    invoke-virtual {p1, p0, v1}, Lcom/google/android/mms/pdu/PduPersister;->updateParts(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduBody;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2981
    :goto_1
    invoke-virtual {p2, v1}, Lcom/android/mms/model/SlideshowModel;->sync(Lcom/google/android/mms/pdu/PduBody;)V

    goto :goto_0

    .line 2977
    :catch_0
    move-exception v0

    .line 2978
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v2, "Mms/WorkingMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDraftMmsMessage: cannot update message "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateDraftSmsMessage(JLjava/lang/String;I)V
    .locals 10
    .parameter "threadId"
    .parameter "contents"
    .parameter "priority"

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x3

    .line 3121
    const-string v5, "Mms/WorkingMessage"

    const-string v6, "updateDraftSmsMessage tid=xxxxxx, contents=xxxxxx"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3125
    cmp-long v5, p1, v8

    if-gtz v5, :cond_0

    .line 3162
    :goto_0
    return-void

    .line 3129
    :cond_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4, v7}, Landroid/content/ContentValues;-><init>(I)V

    .line 3131
    .local v4, values:Landroid/content/ContentValues;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPList()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3132
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v5}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 3133
    const-string v5, "address"

    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v6}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/AbstractCollection;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3136
    :cond_1
    const-string v5, "thread_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3137
    const-string v5, "body"

    invoke-virtual {v4, v5, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3138
    const-string v5, "type"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3140
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnablePriority()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3141
    const-string v5, "pri"

    sget v6, Lcom/android/mms/data/WorkingMessage;->mPriorityLevel:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3144
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3145
    const-string v5, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3147
    :cond_3
    const-wide/16 v2, 0x0

    .line 3148
    .local v2, setReserved:J
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getReserveDeliveryTime()J

    move-result-wide v0

    .line 3150
    .local v0, deliveryTime:J
    cmp-long v5, v0, v8

    if-eqz v5, :cond_4

    .line 3151
    const-wide/16 v2, 0x1

    .line 3152
    const-string v5, "date"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3155
    :cond_4
    const-string v5, "reserved"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3159
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v7, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v6, v7, v4}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 3160
    invoke-direct {p0, p1, p2}, Lcom/android/mms/data/WorkingMessage;->asyncDeleteDraftMmsMessage(J)V

    .line 3161
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method private updateReplyAllStatus(Lcom/android/mms/data/Conversation;)V
    .locals 6
    .parameter "conv"

    .prologue
    const/4 v4, 0x1

    .line 2937
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v1

    .line 2938
    .local v1, threadId:J
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->isGroupMessage()Z

    move-result v0

    .line 2939
    .local v0, reply_all:Z
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 2940
    .local v3, values:Landroid/content/ContentValues;
    const-string v5, "reply_all"

    if-eqz v0, :cond_1

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2941
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-lez v4, :cond_0

    .line 2942
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/android/mms/data/WorkingMessage$4;

    invoke-direct {v5, p0, v3, v1, v2}, Lcom/android/mms/data/WorkingMessage$4;-><init>(Lcom/android/mms/data/WorkingMessage;Landroid/content/ContentValues;J)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 2948
    :cond_0
    return-void

    .line 2940
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private updateState(IZZ)V
    .locals 7
    .parameter "state"
    .parameter "on"
    .parameter "notify"

    .prologue
    const/16 v4, 0x20

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 1908
    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->sMmsEnabled:Z

    if-nez v0, :cond_1

    .line 1953
    :cond_0
    :goto_0
    return-void

    .line 1914
    :cond_1
    iget v6, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    .line 1915
    .local v6, oldState:I
    if-eqz p2, :cond_7

    .line 1916
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    .line 1923
    :goto_1
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    if-ne v0, v4, :cond_2

    and-int/lit8 v0, v6, -0x21

    if-lez v0, :cond_2

    .line 1924
    iput v5, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    .line 1928
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsSubject()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 1929
    iput v5, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    .line 1932
    :cond_3
    if-ne p1, v4, :cond_4

    if-eqz p2, :cond_4

    .line 1933
    sput-boolean v3, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    .line 1937
    :cond_4
    if-eqz p3, :cond_5

    .line 1938
    if-nez v6, :cond_8

    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    if-eqz v0, :cond_8

    .line 1939
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v0, v3}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onProtocolChanged(Z)V

    .line 1945
    :cond_5
    :goto_2
    if-eqz v6, :cond_6

    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_6

    .line 1946
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    move-object v0, p0

    move-object v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/data/WorkingMessage;->deleteMmsMessage(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Lcom/android/mms/data/Conversation;Z)V

    .line 1947
    iput-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    .line 1950
    :cond_6
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    if-eq v6, v0, :cond_0

    .line 1951
    const-string v1, "Mms/WorkingMessage"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateState: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_9

    const-string v0, "+"

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/mms/data/WorkingMessage;->stateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    invoke-static {v2}, Lcom/android/mms/data/WorkingMessage;->stateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1918
    :cond_7
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    goto :goto_1

    .line 1940
    :cond_8
    if-eqz v6, :cond_5

    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    if-nez v0, :cond_5

    .line 1941
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v0, v5}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onProtocolChanged(Z)V

    goto :goto_2

    .line 1951
    :cond_9
    const-string v0, "-"

    goto :goto_3
.end method


# virtual methods
.method public addSlide(I)Z
    .locals 9
    .parameter "slideIndex"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3607
    const-string v5, "Mms/WorkingMessage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addSlide(),slideIndex="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3609
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->ensureSlideshow()V

    .line 3610
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-nez v5, :cond_0

    .line 3645
    :goto_0
    return v3

    .line 3613
    :cond_0
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v5

    if-ne v5, v4, :cond_2

    .line 3614
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    .line 3615
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v5

    if-nez v5, :cond_2

    .line 3617
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->getCidTextIndex(Lcom/android/mms/model/SlideshowModel;)I

    move-result v0

    .line 3618
    .local v0, index:I
    new-instance v2, Lcom/android/mms/model/TextModel;

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    const-string v6, "text/plain"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cid:text_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".txt"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v8}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/model/LayoutModel;->getTextRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v8

    invoke-direct {v2, v5, v6, v7, v8}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V

    .line 3621
    .local v2, text:Lcom/android/mms/model/TextModel;
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v5, v5, v3

    if-eqz v5, :cond_1

    .line 3622
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v3, v5, v3

    invoke-virtual {v2, v3, v4}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;Z)V

    .line 3624
    :cond_1
    invoke-virtual {v1, v2}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 3627
    .end local v0           #index:I
    .end local v1           #slide:Lcom/android/mms/model/SlideModel;
    .end local v2           #text:Lcom/android/mms/model/TextModel;
    :cond_2
    new-instance v1, Lcom/android/mms/model/SlideModel;

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {v1, v3}, Lcom/android/mms/model/SlideModel;-><init>(Lcom/android/mms/model/SlideshowModel;)V

    .line 3628
    .restart local v1       #slide:Lcom/android/mms/model/SlideModel;
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->getCidTextIndex(Lcom/android/mms/model/SlideshowModel;)I

    move-result v0

    .line 3629
    .restart local v0       #index:I
    new-instance v2, Lcom/android/mms/model/TextModel;

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    const-string v5, "text/plain"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cid:text_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".txt"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v7}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/model/LayoutModel;->getTextRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v7

    invoke-direct {v2, v3, v5, v6, v7}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V

    .line 3631
    .restart local v2       #text:Lcom/android/mms/model/TextModel;
    invoke-virtual {v1, v2}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 3634
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v3

    if-ge v3, p1, :cond_3

    .line 3635
    const-string v3, "Mms/WorkingMessage"

    const-string v5, "inside mSlideshow.size()<slideIndex"

    invoke-static {v3, v5}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3636
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3, v1}, Lcom/android/mms/model/SlideshowModel;->add(Lcom/android/mms/model/SlideModel;)Z

    .line 3644
    :goto_1
    invoke-virtual {p0, v4}, Lcom/android/mms/data/WorkingMessage;->correctAttachmentState(Z)V

    move v3, v4

    .line 3645
    goto/16 :goto_0

    .line 3638
    :cond_3
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3, p1, v1}, Lcom/android/mms/model/SlideshowModel;->add(ILcom/android/mms/model/SlideModel;)V

    goto :goto_1
.end method

.method public addWorkingRecipients(Lcom/android/mms/data/ContactList;)V
    .locals 8
    .parameter "numbers"

    .prologue
    .line 1712
    new-instance v1, Lcom/android/mms/data/ContactList;

    invoke-direct {v1}, Lcom/android/mms/data/ContactList;-><init>()V

    .line 1713
    .local v1, existedRecipients:Lcom/android/mms/data/ContactList;
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1714
    :cond_0
    new-instance v6, Lcom/android/mms/data/ContactList;

    invoke-direct {v6}, Lcom/android/mms/data/ContactList;-><init>()V

    iput-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    .line 1715
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mms/data/Contact;

    .line 1716
    .local v5, number:Lcom/android/mms/data/Contact;
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1717
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1718
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1720
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 1721
    .local v0, existedRecipient:Lcom/android/mms/data/Contact;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1723
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1728
    .end local v0           #existedRecipient:Lcom/android/mms/data/Contact;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #number:Lcom/android/mms/data/Contact;
    :cond_4
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #existedRecipients:Lcom/android/mms/data/ContactList;
    check-cast v1, Lcom/android/mms/data/ContactList;

    .line 1729
    .restart local v1       #existedRecipients:Lcom/android/mms/data/ContactList;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mms/data/Contact;

    .line 1730
    .restart local v5       #number:Lcom/android/mms/data/Contact;
    const/4 v4, 0x0

    .line 1731
    .local v4, isAdded:I
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_6
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 1732
    .restart local v0       #existedRecipient:Lcom/android/mms/data/Contact;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1733
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1735
    .end local v0           #existedRecipient:Lcom/android/mms/data/Contact;
    :cond_7
    if-nez v4, :cond_5

    .line 1736
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1739
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #isAdded:I
    .end local v5           #number:Lcom/android/mms/data/Contact;
    :cond_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1740
    return-void
.end method

.method public asyncDeleteDraftSmsMessage(Lcom/android/mms/data/Conversation;)V
    .locals 5
    .parameter "conv"

    .prologue
    .line 3236
    const-string v2, "Mms/WorkingMessage"

    const-string v3, "asyncDeleteDraftSmsMessage()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3237
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    .line 3238
    .local v0, threadId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    invoke-static {}, Lcom/android/mms/data/Conversation;->getTempThreadId()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 3239
    sget-object v2, Landroid/provider/Telephony$Sms$Conversations;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "type=3"

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/android/mms/data/WorkingMessage;->asyncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 3242
    :cond_0
    return-void
.end method

.method public checkIfAddressContainsEmailToMms(Ljava/util/List;Ljava/lang/CharSequence;)Z
    .locals 12
    .parameter
    .parameter "text"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/CharSequence;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, numbers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 2049
    const/4 v5, 0x0

    .line 2050
    .local v5, requiresMms:Z
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGateway()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 2051
    const/4 v2, 0x0

    .line 2052
    .local v2, dests:[Ljava/lang/String;
    if-nez p1, :cond_5

    .line 2053
    iget-object v9, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v9}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v9

    if-nez v9, :cond_1

    :cond_0
    move v6, v5

    .line 2086
    .end local v2           #dests:[Ljava/lang/String;
    .end local v5           #requiresMms:Z
    .local v6, requiresMms:I
    :goto_0
    return v6

    .line 2056
    .end local v6           #requiresMms:I
    .restart local v2       #dests:[Ljava/lang/String;
    .restart local v5       #requiresMms:Z
    :cond_1
    iget-object v9, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v9}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v2

    .line 2062
    :goto_1
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_2
    if-ge v3, v4, :cond_3

    aget-object v1, v0, v3

    .line 2063
    .local v1, dest:Ljava/lang/String;
    invoke-static {v1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 2064
    :cond_2
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 2066
    .local v7, s:Ljava/lang/StringBuffer;
    invoke-static {}, Lcom/android/mms/MmsConfig;->isCDMANetworkRegistered()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 2067
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {p2, v11, v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLengthWithEmail(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v8

    .line 2071
    .local v8, ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :goto_3
    iget v9, v8, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    if-le v9, v10, :cond_7

    .line 2072
    const/4 v5, 0x1

    .line 2077
    .end local v1           #dest:Ljava/lang/String;
    .end local v7           #s:Ljava/lang/StringBuffer;
    .end local v8           #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_3
    if-eqz v5, :cond_8

    .line 2078
    invoke-direct {p0, v10, v10, v10}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    .line 2079
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->ensureSlideshow()V

    .line 2080
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->syncTextToSlideshow()V

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #dests:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_4
    :goto_4
    move v6, v5

    .line 2086
    .restart local v6       #requiresMms:I
    goto :goto_0

    .line 2058
    .end local v6           #requiresMms:I
    .restart local v2       #dests:[Ljava/lang/String;
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    new-array v2, v9, [Ljava/lang/String;

    .line 2059
    invoke-interface {p1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .end local v2           #dests:[Ljava/lang/String;
    check-cast v2, [Ljava/lang/String;

    .restart local v2       #dests:[Ljava/lang/String;
    goto :goto_1

    .line 2069
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #dest:Ljava/lang/String;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    .restart local v7       #s:Ljava/lang/StringBuffer;
    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {p2, v11, v9}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLengthWithEmail(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v8

    .restart local v8       #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    goto :goto_3

    .line 2062
    .end local v7           #s:Ljava/lang/StringBuffer;
    .end local v8           #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2083
    .end local v1           #dest:Ljava/lang/String;
    :cond_8
    invoke-direct {p0, v10, v11, v10}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    goto :goto_4
.end method

.method public checkMaxSlide(II)Z
    .locals 2
    .parameter "location"
    .parameter "type"

    .prologue
    .line 3291
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSlideCount()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 3292
    const/4 v0, 0x1

    .line 3294
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cloneWorkingMessage_ForSplitMmsSend(Lcom/android/mms/data/WorkingMessage;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v1, 0x0

    .line 4017
    iget v0, p1, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    iput v0, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    .line 4021
    iput-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    .line 4025
    iget-object v0, p1, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    .line 4039
    iput-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    .line 4043
    iget-object v0, p1, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    .line 4045
    iget-object v0, p1, Lcom/android/mms/data/WorkingMessage;->mRecipients:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mRecipients:Ljava/lang/String;

    .line 4047
    iget-object v0, p1, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    .line 4051
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    .line 4055
    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->sMmsEnabled:Z

    sput-boolean v0, Lcom/android/mms/data/WorkingMessage;->sMmsEnabled:Z

    .line 4061
    return-void
.end method

.method public correctAttachmentState(Z)V
    .locals 11
    .parameter "notify"

    .prologue
    const/4 v3, 0x5

    const/4 v10, 0x4

    const/4 v1, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 346
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v0, :cond_f

    .line 347
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v9

    .line 350
    .local v9, slideCount:I
    if-nez v9, :cond_4

    .line 353
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSignature()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    iput-boolean v5, p0, Lcom/android/mms/data/WorkingMessage;->mIsSignatureAdded:Z

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsSize()I

    move-result v0

    if-lez v0, :cond_3

    .line 358
    iput v3, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    .line 420
    .end local v9           #slideCount:I
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 421
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v6

    .line 422
    .local v6, persister:Lcom/google/android/mms/pdu/PduPersister;
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/android/mms/data/WorkingMessage;->makeSendReq(Lcom/android/mms/data/Conversation;Ljava/lang/CharSequence;)Lcom/google/android/mms/pdu/SendReq;

    move-result-object v7

    .line 423
    .local v7, sendReq:Lcom/google/android/mms/pdu/SendReq;
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v0, v6, v1, v7}, Lcom/android/mms/data/WorkingMessage;->updateDraftMmsMessage(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;)V

    .line 426
    .end local v6           #persister:Lcom/google/android/mms/pdu/PduPersister;
    .end local v7           #sendReq:Lcom/google/android/mms/pdu/SendReq;
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    invoke-direct {p0, v10, v0, p1}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    .line 427
    return-void

    .line 360
    .restart local v9       #slideCount:I
    :cond_3
    iput v5, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    .line 361
    iput-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 362
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 363
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    invoke-direct {p0, v0, v2, v2}, Lcom/android/mms/data/WorkingMessage;->asyncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 364
    iput-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    goto :goto_0

    .line 367
    :cond_4
    if-le v9, v1, :cond_5

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->hasLocation()Z

    move-result v0

    if-nez v0, :cond_5

    .line 368
    iput v10, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    goto :goto_0

    .line 369
    :cond_5
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->hasLocation()Z

    move-result v0

    if-ne v0, v1, :cond_6

    .line 370
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    goto :goto_0

    .line 372
    :cond_6
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0, v5}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v8

    .line 373
    .local v8, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v8}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 374
    iput v1, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    goto :goto_0

    .line 375
    :cond_7
    invoke-virtual {v8}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 376
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    goto :goto_0

    .line 377
    :cond_8
    invoke-virtual {v8}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 378
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    goto :goto_0

    .line 380
    :cond_9
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSubjectField()Z

    move-result v0

    if-nez v0, :cond_d

    .line 381
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsSize()I

    move-result v0

    if-lez v0, :cond_a

    .line 382
    iput v3, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    goto/16 :goto_0

    .line 383
    :cond_a
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->isLengthRequiresMMS()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 384
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->recipienHasEmail()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 387
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    goto/16 :goto_0

    .line 390
    :cond_b
    iput v5, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    .line 391
    iput-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 392
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 393
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    move-object v0, p0

    move-object v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/data/WorkingMessage;->deleteMmsMessage(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Lcom/android/mms/data/Conversation;Z)V

    .line 394
    iput-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    goto/16 :goto_0

    .line 398
    :cond_c
    iput v5, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    goto/16 :goto_0

    .line 400
    :cond_d
    iput v5, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    .line 402
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->isGroupMessage()Z

    move-result v0

    if-eq v0, v1, :cond_e

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsSubject()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 403
    :cond_e
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 404
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    move-object v0, p0

    move-object v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/data/WorkingMessage;->deleteMmsMessage(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Lcom/android/mms/data/Conversation;Z)V

    .line 405
    iput-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    goto/16 :goto_0

    .line 412
    .end local v8           #slide:Lcom/android/mms/model/SlideModel;
    .end local v9           #slideCount:I
    :cond_f
    iput v5, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    .line 413
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 414
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    invoke-direct {p0, v0, v2, v2}, Lcom/android/mms/data/WorkingMessage;->asyncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 415
    iput-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    goto/16 :goto_0
.end method

.method protected createPendingSmsMessage(Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 9
    .parameter "msgText"
    .parameter "semiSepRecipients"
    .parameter "threadId"
    .parameter "sendSimSlot"

    .prologue
    .line 3931
    const-string v1, ";"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 3934
    .local v2, dests:[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createPendingSmsMessage() sendSimSlot: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3937
    new-instance v0, Lcom/android/mms/transaction/SmsMessageSender;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    move-object v3, p1

    move-wide v4, p3

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;JZI)V

    .line 3939
    .local v0, sender:Lcom/android/mms/transaction/MessageSender;
    :try_start_0
    invoke-interface {v0, p3, p4}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z

    .line 3942
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3, p3, p4}, Lcom/android/mms/util/Recycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3947
    :goto_0
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v1}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onMessageSent()V

    .line 3948
    return-void

    .line 3943
    :catch_0
    move-exception v8

    .line 3944
    .local v8, e:Ljava/lang/Exception;
    const-string v1, "Mms/WorkingMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to save SMS message to pending, threadId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v8}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public createSlideshow()Lcom/android/mms/model/SlideshowModel;
    .locals 1

    .prologue
    .line 3286
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->ensureSlideshow()V

    .line 3287
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    return-object v0
.end method

.method public declared-synchronized discard()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 1571
    monitor-enter p0

    :try_start_0
    const-string v0, "Mms/WorkingMessage"

    const-string v1, "discard()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1573
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSignature()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1574
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mIsSignatureAdded:Z

    .line 1577
    :cond_0
    iget-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    if-ne v0, v2, :cond_1

    .line 1578
    const-string v0, "Mms/WorkingMessage"

    const-string v1, "already discarded"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1599
    :goto_0
    monitor-exit p0

    return-void

    .line 1583
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    .line 1586
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 1589
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    const-string v2, "msg_box=3"

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/data/WorkingMessage;->deleteMmsMessage(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Lcom/android/mms/data/Conversation;Z)V

    .line 1597
    :goto_1
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/data/Conversation;->setDraftState(Z)V

    .line 1598
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1571
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1593
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {p0, v0}, Lcom/android/mms/data/WorkingMessage;->asyncDeleteDraftSmsMessage(Lcom/android/mms/data/Conversation;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public dump()V
    .locals 3

    .prologue
    .line 1697
    const-string v0, "Mms/WorkingMessage"

    const-string v1, "WorkingMessage:"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1698
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->dumpWorkingRecipients()V

    .line 1699
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    if-eqz v0, :cond_0

    .line 1700
    const-string v0, "Mms/WorkingMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mConversation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1702
    :cond_0
    return-void
.end method

.method public expectedMessageSize()Ljava/lang/String;
    .locals 14

    .prologue
    .line 3738
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 3739
    .local v7, msgSize:Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .line 3740
    .local v6, messageSize:I
    iget-object v12, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v12, :cond_0

    .line 3741
    iget-object v12, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v12}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v12

    add-int/2addr v6, v12

    .line 3745
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSubjectField()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getSubject()Ljava/lang/CharSequence;

    move-result-object v12

    if-eqz v12, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getSubject()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v12

    if-lez v12, :cond_1

    .line 3746
    add-int/lit8 v6, v6, 0x7d

    .line 3749
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 3750
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getWorkingRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v12

    if-eqz v12, :cond_3

    .line 3751
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getWorkingRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 3752
    .local v0, c:Lcom/android/mms/data/Contact;
    if-eqz v0, :cond_2

    .line 3753
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v8

    .line 3754
    .local v8, number:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v6, v12

    goto :goto_0

    .line 3757
    .end local v0           #c:Lcom/android/mms/data/Contact;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v8           #number:Ljava/lang/String;
    :cond_3
    iget-object v12, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    if-eqz v12, :cond_5

    iget-object v12, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v12}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v12

    if-eqz v12, :cond_5

    .line 3758
    iget-object v12, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v12}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 3759
    .restart local v0       #c:Lcom/android/mms/data/Contact;
    if-eqz v0, :cond_4

    .line 3760
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v8

    .line 3761
    .restart local v8       #number:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/data/Conversation;->getTempThreadIdStr()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 3762
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v6, v12

    goto :goto_1

    .line 3780
    .end local v0           #c:Lcom/android/mms/data/Contact;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v8           #number:Ljava/lang/String;
    :cond_5
    const/16 v5, 0x36

    .line 3782
    .local v5, mediaHeaderSize:I
    iget-object v12, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v12, :cond_a

    .line 3783
    iget-object v12, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v12}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v11

    .line 3784
    .local v11, slideCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v11, :cond_9

    .line 3785
    iget-object v12, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v12, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v10

    .line 3787
    .local v10, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v10}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 3789
    invoke-virtual {v10}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v1

    .line 3790
    .local v1, fileNameSize:I
    add-int v12, v5, v1

    add-int/lit8 v12, v12, 0x28

    add-int/2addr v6, v12

    .line 3792
    .end local v1           #fileNameSize:I
    :cond_6
    invoke-virtual {v10}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 3794
    invoke-virtual {v10}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v1

    .line 3795
    .restart local v1       #fileNameSize:I
    add-int v12, v5, v1

    add-int/lit8 v12, v12, 0x28

    add-int/2addr v6, v12

    .line 3797
    .end local v1           #fileNameSize:I
    :cond_7
    invoke-virtual {v10}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 3799
    invoke-virtual {v10}, Lcom/android/mms/model/SlideModel;->getAudio()Lcom/android/mms/model/AudioModel;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v1

    .line 3800
    .restart local v1       #fileNameSize:I
    add-int v12, v5, v1

    add-int/lit8 v12, v12, 0x1c

    add-int/2addr v6, v12

    .line 3784
    .end local v1           #fileNameSize:I
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3806
    .end local v10           #slide:Lcom/android/mms/model/SlideModel;
    :cond_9
    iget-object v12, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v12}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsSize()I

    move-result v12

    if-lez v12, :cond_a

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getRawAttachmentsNameList()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_a

    .line 3807
    iget-object v12, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v12}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsSize()I

    move-result v9

    .line 3808
    .local v9, rawAttachmentCnt:I
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getRawAttachmentsNameList()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v6, v12

    .line 3809
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v9, :cond_a

    .line 3811
    add-int/lit16 v6, v6, 0x11a

    .line 3809
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 3815
    .end local v2           #i:I
    .end local v9           #rawAttachmentCnt:I
    .end local v11           #slideCount:I
    :cond_a
    if-nez v6, :cond_b

    .line 3816
    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3825
    :goto_4
    const/4 v4, 0x0

    .line 3826
    .local v4, kilobyte:Ljava/lang/String;
    iget-object v12, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a0017

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3827
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3829
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    return-object v12

    .line 3818
    .end local v4           #kilobyte:Ljava/lang/String;
    :cond_b
    add-int/lit16 v12, v6, 0x3ff

    div-int/lit16 v6, v12, 0x400

    .line 3819
    if-nez v6, :cond_c

    .line 3820
    const/4 v12, 0x1

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 3822
    :cond_c
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_4
.end method

.method public getAttachmentType()I
    .locals 1

    .prologue
    .line 3265
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    return v0
.end method

.method public getConversation()Lcom/android/mms/data/Conversation;
    .locals 1

    .prologue
    .line 1773
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    return-object v0
.end method

.method public getMaxEmailLen()I
    .locals 2

    .prologue
    .line 1778
    const-string v0, "Mms/WorkingMessage"

    const-string v1, "IS41 Email : getMaxEmailLen"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1779
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMaxEmailLen:I

    return v0
.end method

.method public getMaxLengthEmailAdress(Lcom/android/mms/data/ContactList;)I
    .locals 9
    .parameter "recipients"

    .prologue
    .line 2014
    const/4 v3, 0x0

    .line 2016
    .local v3, mMaxEmailLen:I
    if-nez p1, :cond_0

    .line 2017
    const-string v7, "Mms/WorkingMessage"

    const-string v8, "recipients is null"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v3

    .line 2044
    .end local v3           #mMaxEmailLen:I
    .local v4, mMaxEmailLen:I
    :goto_0
    return v4

    .line 2021
    .end local v4           #mMaxEmailLen:I
    .restart local v3       #mMaxEmailLen:I
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->isAliasEnabled()Z

    move-result v7

    if-nez v7, :cond_1

    .line 2022
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->containsEmail()Z

    move-result v7

    if-nez v7, :cond_2

    move v4, v3

    .line 2023
    .end local v3           #mMaxEmailLen:I
    .restart local v4       #mMaxEmailLen:I
    goto :goto_0

    .line 2025
    .end local v4           #mMaxEmailLen:I
    .restart local v3       #mMaxEmailLen:I
    :cond_1
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->containsEmail()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->containsAlias()Z

    move-result v7

    if-nez v7, :cond_2

    move v4, v3

    .line 2026
    .end local v3           #mMaxEmailLen:I
    .restart local v4       #mMaxEmailLen:I
    goto :goto_0

    .line 2029
    .end local v4           #mMaxEmailLen:I
    .restart local v3       #mMaxEmailLen:I
    :cond_2
    invoke-virtual {p1}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v6

    .line 2031
    .local v6, numbers:[Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->isAliasEnabled()Z

    move-result v7

    if-nez v7, :cond_4

    .line 2032
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_7

    aget-object v5, v0, v1

    .line 2033
    .local v5, number:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v3, :cond_3

    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2034
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    .line 2032
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2037
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v5           #number:Ljava/lang/String;
    :cond_4
    move-object v0, v6

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v2, v0

    .restart local v2       #len$:I
    const/4 v1, 0x0

    .restart local v1       #i$:I
    :goto_2
    if-ge v1, v2, :cond_7

    aget-object v5, v0, v1

    .line 2038
    .restart local v5       #number:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v3, :cond_6

    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->isEmailAddress(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2040
    :cond_5
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    .line 2037
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v5           #number:Ljava/lang/String;
    :cond_7
    move v4, v3

    .line 2044
    .end local v3           #mMaxEmailLen:I
    .restart local v4       #mMaxEmailLen:I
    goto :goto_0
.end method

.method public getMessageUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 3834
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 597
    sget v0, Lcom/android/mms/data/WorkingMessage;->mPriorityLevel:I

    return v0
.end method

.method public getRawAttachmentsNameList()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3277
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v0, :cond_0

    .line 3278
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getAttachmentList()Ljava/lang/String;

    move-result-object v0

    .line 3280
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRecipients()Ljava/lang/String;
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mRecipients:Ljava/lang/String;

    return-object v0
.end method

.method public getReserveDeliveryTime()J
    .locals 2

    .prologue
    .line 3852
    iget-wide v0, p0, Lcom/android/mms/data/WorkingMessage;->mReserveDeliveryTime:J

    return-wide v0
.end method

.method public getSender()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 4007
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSender:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSlideshow()Lcom/android/mms/model/SlideshowModel;
    .locals 1

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    return-object v0
.end method

.method public getSubject()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getText(I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "slideIndex"

    .prologue
    .line 697
    if-ltz p1, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSlideCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    .line 700
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getTextLengthFromAllSlide(I)I
    .locals 5
    .parameter "slideIndex"

    .prologue
    .line 1244
    const/4 v2, 0x0

    .line 1246
    .local v2, nLength:I
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 1247
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 1248
    if-ne v0, p1, :cond_1

    .line 1247
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1250
    :cond_1
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4, v0}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v3

    .line 1251
    .local v3, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1252
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_1

    .line 1257
    .end local v0           #i:I
    .end local v1           #n:I
    .end local v3           #slide:Lcom/android/mms/model/SlideModel;
    :cond_2
    return v2
.end method

.method public getWorkingMessageUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 4066
    iget-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "kkahn/WorkingMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWorkingMessageUri : return ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4068
    :cond_0
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getWorkingRecipients()Lcom/android/mms/data/ContactList;
    .locals 1

    .prologue
    .line 1743
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    if-eqz v0, :cond_0

    .line 1744
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    .line 1746
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAttachment()Z
    .locals 1

    .prologue
    .line 916
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsSize()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLocationAttachment()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 925
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLocationMessage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 926
    iget v1, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 927
    :cond_0
    return v0
.end method

.method public hasOnlySignatureText()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 3856
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasText()Z

    move-result v5

    if-nez v5, :cond_1

    .line 3873
    :cond_0
    :goto_0
    return v4

    .line 3860
    :cond_1
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 3862
    .local v2, prefs:Landroid/content/SharedPreferences;
    const-string v5, "pref_key_enable_signature"

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 3863
    .local v0, isSignatureEnabled:Z
    if-eqz v0, :cond_0

    .line 3867
    const-string v5, "pref_key_signature_text"

    const-string v6, ""

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3868
    .local v3, signatureText:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3872
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3873
    .local v1, linefeedAndSignature:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v4, v5, v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0
.end method

.method public hasSlideMedia()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 921
    iget v1, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSlideshow()Z
    .locals 2

    .prologue
    .line 1076
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSubject()Z
    .locals 1

    .prologue
    .line 1141
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSubjectField()Z
    .locals 1

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasText()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 711
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isAddPossible(ILcom/android/mms/model/SlideModel;)Z
    .locals 3
    .parameter "type"
    .parameter "slide"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3298
    if-ne p1, v1, :cond_1

    .line 3299
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3314
    :cond_0
    :goto_0
    return v0

    .line 3302
    :cond_1
    const/4 v2, 0x3

    if-ne p1, v2, :cond_3

    .line 3303
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    .line 3314
    goto :goto_0

    .line 3306
    :cond_3
    const/4 v2, 0x2

    if-ne p1, v2, :cond_4

    .line 3307
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 3310
    :cond_4
    const/16 v2, 0xa

    if-ne p1, v2, :cond_2

    .line 3311
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0
.end method

.method public isDiscarded()Z
    .locals 1

    .prologue
    .line 1611
    iget-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    return v0
.end method

.method public isEmptyGroupMessage()Z
    .locals 1

    .prologue
    .line 3994
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasText()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSlideshow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3995
    const/4 v0, 0x1

    .line 3997
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFakeMmsForDraft()Z
    .locals 1

    .prologue
    .line 894
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    and-int/lit8 v0, v0, 0x20

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLengthRequiresMMS()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 935
    sget v0, Lcom/android/mms/ui/ComposeMessageFragment;->mEncodingType:I

    .line 936
    .local v0, encodingType:I
    const/4 v2, 0x0

    .line 937
    .local v2, params:[I
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v5, v5, v4

    if-eqz v5, :cond_1

    .line 940
    if-nez v0, :cond_0

    .line 941
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->isContainKoreanChar(Ljava/lang/String;)Z

    move-result v1

    .line 942
    .local v1, isKoreanChar:Z
    if-eqz v1, :cond_0

    .line 943
    const/4 v0, 0x2

    .line 947
    .end local v1           #isKoreanChar:Z
    :cond_0
    if-ne v0, v3, :cond_2

    .line 948
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v5, v5, v4

    invoke-static {v5, v4, v0}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)[I

    move-result-object v2

    .line 960
    :cond_1
    :goto_0
    if-eqz v2, :cond_5

    aget v5, v2, v4

    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsToMmsTextThreshold()I

    move-result v6

    if-lt v5, v6, :cond_5

    .line 963
    :goto_1
    return v3

    .line 949
    :cond_2
    if-nez v0, :cond_3

    .line 950
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v5, v5, v4

    invoke-static {v5, v4, v0}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)[I

    move-result-object v2

    goto :goto_0

    .line 952
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableComposeTypeUI()Z

    move-result v5

    if-nez v5, :cond_4

    .line 953
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v5, v5, v4

    invoke-static {v5, v4}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)[I

    move-result-object v2

    goto :goto_0

    .line 955
    :cond_4
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/mms/ui/MessageUtils;->getStringByteSize(Ljava/lang/String;)[I

    move-result-object v2

    goto :goto_0

    :cond_5
    move v3, v4

    .line 963
    goto :goto_1
.end method

.method public isLengthRequiresMMS(I)Z
    .locals 11
    .parameter "maxEmailChars"

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 972
    sget v0, Lcom/android/mms/ui/ComposeMessageFragment;->mEncodingType:I

    .line 973
    .local v0, encodingType:I
    const/4 v2, 0x0

    .line 974
    .local v2, params:[I
    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v7, v7, v6

    if-eqz v7, :cond_1

    .line 977
    if-nez v0, :cond_0

    .line 978
    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v7, v7, v6

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/mms/ui/MessageUtils;->isContainKoreanChar(Ljava/lang/String;)Z

    move-result v1

    .line 979
    .local v1, isKoreanChar:Z
    if-eqz v1, :cond_0

    .line 980
    const/4 v0, 0x2

    .line 984
    .end local v1           #isKoreanChar:Z
    :cond_0
    if-ne v0, v5, :cond_5

    .line 985
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGateway()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    if-lez p1, :cond_4

    .line 988
    invoke-static {}, Lcom/android/mms/MmsConfig;->isCDMANetworkRegistered()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 989
    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v7, v7, v6

    invoke-static {v7, v6, p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLengthWithEmail(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v4

    .line 994
    .local v4, ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :goto_0
    new-array v3, v10, [I

    .line 995
    .local v3, ret:[I
    iget v7, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    aput v7, v3, v6

    .line 996
    iget v7, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    aput v7, v3, v5

    .line 997
    iget v7, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    aput v7, v3, v8

    .line 998
    iget v7, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    aput v7, v3, v9

    .line 999
    move-object v2, v3

    .line 1050
    .end local v3           #ret:[I
    .end local v4           #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->isAliasEnabled()Z

    move-result v7

    if-eqz v7, :cond_d

    if-lez p1, :cond_d

    .line 1051
    if-eqz v2, :cond_c

    aget v7, v2, v6

    if-le v7, v5, :cond_c

    .line 1059
    :cond_2
    :goto_2
    return v5

    .line 991
    :cond_3
    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v7, v7, v6

    invoke-static {v7, v6, v0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLengthWithEmail(Ljava/lang/CharSequence;ZII)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v4

    .restart local v4       #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    goto :goto_0

    .line 1001
    .end local v4           #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_4
    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v7, v7, v6

    invoke-static {v7, v6, v0}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)[I

    move-result-object v2

    goto :goto_1

    .line 1003
    :cond_5
    if-nez v0, :cond_8

    .line 1004
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGateway()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_7

    if-lez p1, :cond_7

    .line 1007
    invoke-static {}, Lcom/android/mms/MmsConfig;->isCDMANetworkRegistered()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1008
    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v7, v7, v6

    invoke-static {v7, v6, p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLengthWithEmail(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v4

    .line 1013
    .restart local v4       #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :goto_3
    new-array v3, v10, [I

    .line 1014
    .restart local v3       #ret:[I
    iget v7, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    aput v7, v3, v6

    .line 1015
    iget v7, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    aput v7, v3, v5

    .line 1016
    iget v7, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    aput v7, v3, v8

    .line 1017
    iget v7, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    aput v7, v3, v9

    .line 1018
    move-object v2, v3

    .line 1020
    goto :goto_1

    .line 1010
    .end local v3           #ret:[I
    .end local v4           #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_6
    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v7, v7, v6

    invoke-static {v7, v6, v0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLengthWithEmail(Ljava/lang/CharSequence;ZII)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v4

    .restart local v4       #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    goto :goto_3

    .line 1021
    .end local v4           #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_7
    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v7, v7, v6

    invoke-static {v7, v6, v0}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)[I

    move-result-object v2

    goto :goto_1

    .line 1024
    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableComposeTypeUI()Z

    move-result v7

    if-nez v7, :cond_b

    .line 1025
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGateway()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_a

    if-lez p1, :cond_a

    .line 1028
    invoke-static {}, Lcom/android/mms/MmsConfig;->isCDMANetworkRegistered()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1029
    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v7, v7, v6

    invoke-static {v7, v6, p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLengthWithEmail(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v4

    .line 1034
    .restart local v4       #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :goto_4
    new-array v3, v10, [I

    .line 1035
    .restart local v3       #ret:[I
    iget v7, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    aput v7, v3, v6

    .line 1036
    iget v7, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    aput v7, v3, v5

    .line 1037
    iget v7, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    aput v7, v3, v8

    .line 1038
    iget v7, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    aput v7, v3, v9

    .line 1039
    move-object v2, v3

    .line 1041
    goto/16 :goto_1

    .line 1031
    .end local v3           #ret:[I
    .end local v4           #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_9
    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v7, v7, v6

    invoke-static {v7, v6, v0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLengthWithEmail(Ljava/lang/CharSequence;ZII)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v4

    .restart local v4       #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    goto :goto_4

    .line 1042
    .end local v4           #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_a
    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v7, v7, v6

    invoke-static {v7, v6}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)[I

    move-result-object v2

    goto/16 :goto_1

    .line 1045
    :cond_b
    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v7, v7, v6

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/mms/ui/MessageUtils;->getStringByteSize(Ljava/lang/String;)[I

    move-result-object v2

    goto/16 :goto_1

    :cond_c
    move v5, v6

    .line 1054
    goto/16 :goto_2

    .line 1056
    :cond_d
    if-eqz v2, :cond_e

    aget v7, v2, v6

    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsToMmsTextThreshold()I

    move-result v8

    if-ge v7, v8, :cond_2

    :cond_e
    move v5, v6

    .line 1059
    goto/16 :goto_2
.end method

.method public isPendingSizeOver(Landroid/content/Context;)Z
    .locals 13
    .parameter "context"

    .prologue
    const/4 v12, 0x1

    .line 2528
    const/4 v7, 0x0

    .line 2531
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/data/WorkingMessage;->MMS_OUTBOX_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2533
    if-eqz v7, :cond_3

    .line 2534
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSizeScaleForPendingMmsAllowed()I

    move-result v0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v1

    mul-int/2addr v0, v1

    int-to-long v8, v0

    .line 2536
    .local v8, maxMessageSize:J
    const-wide/16 v10, 0x0

    .line 2537
    .local v10, totalPendingSize:J
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2538
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    add-long/2addr v10, v0

    goto :goto_0

    .line 2540
    :cond_0
    cmp-long v0, v10, v8

    if-ltz v0, :cond_3

    .line 2541
    const v0, 0x7f0a0114

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2547
    if-eqz v7, :cond_1

    .line 2548
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v12

    .end local v8           #maxMessageSize:J
    .end local v10           #totalPendingSize:J
    :cond_2
    :goto_1
    return v0

    .line 2545
    :cond_3
    const/4 v0, 0x0

    .line 2547
    if-eqz v7, :cond_2

    .line 2548
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 2547
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_4

    .line 2548
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public isSignatureAdded()Z
    .locals 1

    .prologue
    .line 3877
    iget-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mIsSignatureAdded:Z

    return v0
.end method

.method public isWorthSaving()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 864
    iget-boolean v2, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    if-ne v2, v1, :cond_1

    .line 884
    :cond_0
    :goto_0
    return v0

    .line 867
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSlideshow()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v0, v1

    .line 868
    goto :goto_0

    .line 871
    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasText()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 872
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSignature()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasOnlySignatureText()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    .line 874
    goto :goto_0

    .line 880
    :cond_5
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->isFakeMmsForDraft()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 881
    goto :goto_0
.end method

.method public loadFromUri_onlySlideshowModel(Landroid/net/Uri;)Z
    .locals 5
    .parameter "uri"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4073
    iget-boolean v3, p0, Lcom/android/mms/data/WorkingMessage;->DEBUG_LOG:Z

    if-eqz v3, :cond_0

    const-string v3, "loadFromUri %s"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {v3, v4}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4077
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4091
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->syncTextFromSlideshow()V

    .line 4093
    invoke-virtual {p0, v2}, Lcom/android/mms/data/WorkingMessage;->correctAttachmentState(Z)V

    .line 4095
    :goto_0
    return v1

    .line 4079
    :catch_0
    move-exception v0

    .line 4081
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v3, "Couldn\'t load URI %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v3, v1}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    .line 4083
    goto :goto_0
.end method

.method public loadRecipients(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 3
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 575
    const-string v1, "Mms/WorkingMessage"

    const-string v2, "loadRecipients()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    invoke-static {p2, p1}, Lcom/android/mms/ui/MessageUtils;->getRecipientsFromPDU(Landroid/net/Uri;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 578
    .local v0, recipients:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 579
    invoke-virtual {p0, v0}, Lcom/android/mms/data/WorkingMessage;->setRecipients(Ljava/lang/String;)V

    .line 581
    :cond_0
    return-void
.end method

.method public mmsMessageSize()I
    .locals 11

    .prologue
    .line 3660
    const/4 v5, 0x0

    .line 3661
    .local v5, messageSize:I
    iget-object v10, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v10, :cond_0

    .line 3662
    iget-object v10, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v10}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v10

    add-int/2addr v5, v10

    .line 3666
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSubjectField()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getSubject()Ljava/lang/CharSequence;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getSubject()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-lez v10, :cond_1

    .line 3667
    add-int/lit8 v5, v5, 0x7d

    .line 3670
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 3671
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getWorkingRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 3672
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getWorkingRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 3673
    .local v0, c:Lcom/android/mms/data/Contact;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v6

    .line 3674
    .local v6, number:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v5, v10

    .line 3675
    goto :goto_0

    .line 3676
    .end local v0           #c:Lcom/android/mms/data/Contact;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v6           #number:Ljava/lang/String;
    :cond_2
    iget-object v10, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v10}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 3677
    iget-object v10, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v10}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 3678
    .restart local v0       #c:Lcom/android/mms/data/Contact;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v6

    .line 3679
    .restart local v6       #number:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v5, v10

    .line 3680
    goto :goto_1

    .line 3695
    .end local v0           #c:Lcom/android/mms/data/Contact;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v6           #number:Ljava/lang/String;
    :cond_3
    const/16 v4, 0x36

    .line 3697
    .local v4, mediaHeaderSize:I
    iget-object v10, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v10, :cond_8

    .line 3698
    iget-object v10, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v10}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v9

    .line 3699
    .local v9, slideCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v9, :cond_7

    .line 3700
    iget-object v10, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v10, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v8

    .line 3702
    .local v8, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v8}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 3704
    invoke-virtual {v8}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    .line 3705
    .local v1, fileNameSize:I
    add-int v10, v4, v1

    add-int/lit8 v10, v10, 0x28

    add-int/2addr v5, v10

    .line 3707
    .end local v1           #fileNameSize:I
    :cond_4
    invoke-virtual {v8}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 3709
    invoke-virtual {v8}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    .line 3710
    .restart local v1       #fileNameSize:I
    add-int v10, v4, v1

    add-int/lit8 v10, v10, 0x28

    add-int/2addr v5, v10

    .line 3712
    .end local v1           #fileNameSize:I
    :cond_5
    invoke-virtual {v8}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 3714
    invoke-virtual {v8}, Lcom/android/mms/model/SlideModel;->getAudio()Lcom/android/mms/model/AudioModel;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    .line 3715
    .restart local v1       #fileNameSize:I
    add-int v10, v4, v1

    add-int/lit8 v10, v10, 0x1c

    add-int/2addr v5, v10

    .line 3699
    .end local v1           #fileNameSize:I
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3721
    .end local v8           #slide:Lcom/android/mms/model/SlideModel;
    :cond_7
    iget-object v10, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v10}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsSize()I

    move-result v10

    if-lez v10, :cond_8

    .line 3722
    iget-object v10, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v10}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsSize()I

    move-result v7

    .line 3723
    .local v7, rawAttachmentCnt:I
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getRawAttachmentsNameList()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v5, v10

    .line 3724
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v7, :cond_8

    .line 3726
    add-int/lit16 v5, v5, 0x11a

    .line 3724
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 3731
    .end local v2           #i:I
    .end local v7           #rawAttachmentCnt:I
    .end local v9           #slideCount:I
    :cond_8
    return v5
.end method

.method public readStateFromBundle(Landroid/os/Bundle;)V
    .locals 5
    .parameter "bundle"

    .prologue
    const/4 v4, 0x0

    .line 1639
    if-nez p1, :cond_0

    .line 1654
    :goto_0
    return-void

    .line 1643
    :cond_0
    const-string v3, "subject"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1644
    .local v1, subject:Ljava/lang/String;
    invoke-virtual {p0, v1, v4}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 1646
    const-string v3, "msg_uri"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 1647
    .local v2, uri:Landroid/net/Uri;
    if-eqz v2, :cond_1

    .line 1648
    invoke-direct {p0, v2}, Lcom/android/mms/data/WorkingMessage;->loadFromUri(Landroid/net/Uri;)Z

    goto :goto_0

    .line 1651
    :cond_1
    const-string v3, "sms_body"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1652
    .local v0, body:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aput-object v0, v3, v4

    goto :goto_0
.end method

.method public recipienHasEmail()Z
    .locals 1

    .prologue
    .line 1807
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_0

    .line 1808
    const/4 v0, 0x1

    .line 1810
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeFakeMmsForDraft(Z)V
    .locals 2
    .parameter "notify"

    .prologue
    const/4 v1, 0x0

    .line 1359
    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    if-nez v0, :cond_1

    .line 1367
    :cond_0
    :goto_0
    return-void

    .line 1362
    :cond_1
    sput-boolean v1, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    .line 1365
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->isFakeMmsForDraft()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1366
    const/16 v0, 0x20

    invoke-direct {p0, v0, v1, p1}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    goto :goto_0
.end method

.method public removeRecipient(Ljava/lang/String;)Z
    .locals 1
    .parameter "recipientName"

    .prologue
    .line 4111
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, p1}, Lcom/android/mms/data/Conversation;->removeRecipient(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeSlide(I)Z
    .locals 4
    .parameter "slideIndex"

    .prologue
    const/4 v3, 0x1

    .line 3649
    const-string v0, "Mms/WorkingMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeSlide(),slideIndex"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3650
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0, p1}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    .line 3651
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->syncTextFromSlideshow()V

    .line 3652
    invoke-virtual {p0, v3}, Lcom/android/mms/data/WorkingMessage;->correctAttachmentState(Z)V

    .line 3653
    return v3
.end method

.method public requiresMms()Z
    .locals 1

    .prologue
    .line 1799
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public saveAsMms(Z)Landroid/net/Uri;
    .locals 8
    .parameter "notify"

    .prologue
    const/4 v7, 0x0

    .line 1374
    const-string v4, "Mms/WorkingMessage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveAsMms(),notify="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,mConversation="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1376
    iget-boolean v4, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    if-eqz v4, :cond_0

    .line 1377
    const-string v4, "Mms/WorkingMessage"

    const-string v5, "saveAsMms() IllegalStateException : saveAsMms() called after discard()"

    invoke-static {v4, v5}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1378
    iput-boolean v7, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    .line 1385
    :cond_0
    const/16 v4, 0x20

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5, p1}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    .line 1388
    invoke-direct {p0, v7, v7}, Lcom/android/mms/data/WorkingMessage;->prepareForSave(ZZ)V

    .line 1393
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAnonymousThread()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1394
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v1

    .line 1395
    .local v1, recipient:Lcom/android/mms/data/ContactList;
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1396
    new-instance v3, Lcom/android/mms/data/ContactList;

    invoke-direct {v3}, Lcom/android/mms/data/ContactList;-><init>()V

    .line 1397
    .local v3, tempRecipients:Lcom/android/mms/data/ContactList;
    invoke-static {}, Lcom/android/mms/data/Contact;->getTemp()Lcom/android/mms/data/Contact;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1398
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v4, v3}, Lcom/android/mms/data/Conversation;->setRecipients(Lcom/android/mms/data/ContactList;)V

    .line 1408
    .end local v1           #recipient:Lcom/android/mms/data/ContactList;
    .end local v3           #tempRecipients:Lcom/android/mms/data/ContactList;
    :goto_0
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    .line 1410
    .local v0, persister:Lcom/google/android/mms/pdu/PduPersister;
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    invoke-static {v4, v5}, Lcom/android/mms/data/WorkingMessage;->makeSendReq(Lcom/android/mms/data/Conversation;Ljava/lang/CharSequence;)Lcom/google/android/mms/pdu/SendReq;

    move-result-object v2

    .line 1417
    .local v2, sendReq:Lcom/google/android/mms/pdu/SendReq;
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-nez v4, :cond_3

    .line 1418
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v0, v2, v4}, Lcom/android/mms/data/WorkingMessage;->createDraftMmsMessage(Lcom/google/android/mms/pdu/PduPersister;Lcom/google/android/mms/pdu/SendReq;Lcom/android/mms/model/SlideshowModel;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    .line 1423
    :goto_1
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    return-object v4

    .line 1400
    .end local v0           #persister:Lcom/google/android/mms/pdu/PduPersister;
    .end local v2           #sendReq:Lcom/google/android/mms/pdu/SendReq;
    .restart local v1       #recipient:Lcom/android/mms/data/ContactList;
    :cond_1
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->ensureThreadId()J

    goto :goto_0

    .line 1404
    .end local v1           #recipient:Lcom/android/mms/data/ContactList;
    :cond_2
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->ensureThreadId()J

    goto :goto_0

    .line 1420
    .restart local v0       #persister:Lcom/google/android/mms/pdu/PduPersister;
    .restart local v2       #sendReq:Lcom/google/android/mms/pdu/SendReq;
    :cond_3
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v4, v0, v5, v2}, Lcom/android/mms/data/WorkingMessage;->updateDraftMmsMessage(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;)V

    goto :goto_1
.end method

.method public saveDraft(Z)Z
    .locals 1
    .parameter "isRemoveComposer"

    .prologue
    .line 1431
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/mms/data/WorkingMessage;->saveDraft(ZZ)Z

    move-result v0

    return v0
.end method

.method public saveDraft(ZZ)Z
    .locals 11
    .parameter "isRemoveComposer"
    .parameter "forceSyncUpdate"

    .prologue
    const/4 v10, 0x1

    const/4 v4, 0x0

    .line 1435
    const-string v5, "Mms/WorkingMessage"

    const-string v6, "saveDraft()"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1437
    const/4 v1, 0x0

    .line 1440
    .local v1, isSaved:Z
    iget-boolean v5, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    if-eqz v5, :cond_0

    .line 1441
    const-string v5, "Mms/WorkingMessage"

    const-string v6, "saveDraft(),mDiscarded=true"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1504
    :goto_0
    return v4

    .line 1446
    :cond_0
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    if-nez v5, :cond_1

    .line 1447
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "saveDraft() called with no conversation"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1452
    :cond_1
    if-eqz p1, :cond_3

    .line 1453
    invoke-direct {p0, v4}, Lcom/android/mms/data/WorkingMessage;->prepareForSave(Z)V

    .line 1457
    :goto_1
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1458
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableAnonymousThread()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1459
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v2

    .line 1460
    .local v2, recipient:Lcom/android/mms/data/ContactList;
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1461
    new-instance v3, Lcom/android/mms/data/ContactList;

    invoke-direct {v3}, Lcom/android/mms/data/ContactList;-><init>()V

    .line 1462
    .local v3, tempRecipients:Lcom/android/mms/data/ContactList;
    invoke-static {}, Lcom/android/mms/data/Contact;->getTemp()Lcom/android/mms/data/Contact;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1463
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v4, v3}, Lcom/android/mms/data/Conversation;->setRecipients(Lcom/android/mms/data/ContactList;)V

    .line 1466
    .end local v2           #recipient:Lcom/android/mms/data/ContactList;
    .end local v3           #tempRecipients:Lcom/android/mms/data/ContactList;
    :cond_2
    if-eqz p2, :cond_4

    .line 1467
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-direct {p0, v4}, Lcom/android/mms/data/WorkingMessage;->syncUpdateDraftMmsMessage(Lcom/android/mms/data/Conversation;)V

    .line 1472
    :goto_2
    const/4 v1, 0x1

    .line 1503
    :goto_3
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v4, v10}, Lcom/android/mms/data/Conversation;->setDraftState(Z)V

    move v4, v1

    .line 1504
    goto :goto_0

    .line 1455
    :cond_3
    invoke-direct {p0, v4, v4}, Lcom/android/mms/data/WorkingMessage;->prepareForSave(ZZ)V

    goto :goto_1

    .line 1469
    :cond_4
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-direct {p0, v4}, Lcom/android/mms/data/WorkingMessage;->asyncUpdateDraftMmsMessage(Lcom/android/mms/data/Conversation;)V

    goto :goto_2

    .line 1474
    :cond_5
    const/4 v0, 0x0

    .line 1475
    .local v0, content:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v5, v5, v4

    if-eqz v5, :cond_6

    .line 1476
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1478
    :cond_6
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsSubject()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1479
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a001f

    new-array v8, v10, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1490
    :cond_7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 1491
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-direct {p0, v4, v0}, Lcom/android/mms/data/WorkingMessage;->asyncUpdateDraftSmsMessage(Lcom/android/mms/data/Conversation;Ljava/lang/String;)V

    .line 1492
    const/4 v1, 0x1

    goto :goto_3

    .line 1498
    :cond_8
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/android/mms/data/WorkingMessage;->asyncDeleteDraftMmsMessage(J)V

    goto :goto_3
.end method

.method public saveDraftSync(Z)Z
    .locals 9
    .parameter "isRemoveComposer"

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 1508
    const-string v3, "Mms/WorkingMessage"

    const-string v4, "saveDraftSync()"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1510
    const/4 v1, 0x0

    .line 1513
    .local v1, isSaved:Z
    iget-boolean v3, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    if-eqz v3, :cond_0

    .line 1514
    const-string v3, "Mms/WorkingMessage"

    const-string v4, "saveDraftSync(),mDiscarded=true"

    invoke-static {v3, v4}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1567
    :goto_0
    return v2

    .line 1519
    :cond_0
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    if-nez v3, :cond_1

    .line 1520
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "saveDraftSync() called with no conversation"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1525
    :cond_1
    if-eqz p1, :cond_3

    .line 1526
    invoke-direct {p0, v2}, Lcom/android/mms/data/WorkingMessage;->prepareForSave(Z)V

    .line 1530
    :goto_1
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1532
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-direct {p0, v2}, Lcom/android/mms/data/WorkingMessage;->syncUpdateDraftMmsMessage(Lcom/android/mms/data/Conversation;)V

    .line 1533
    const/4 v1, 0x1

    .line 1566
    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2, v8}, Lcom/android/mms/data/Conversation;->setDraftState(Z)V

    move v2, v1

    .line 1567
    goto :goto_0

    .line 1528
    :cond_3
    invoke-direct {p0, v2, v2}, Lcom/android/mms/data/WorkingMessage;->prepareForSave(ZZ)V

    goto :goto_1

    .line 1537
    :cond_4
    const/4 v0, 0x0

    .line 1538
    .local v0, content:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v3, v3, v2

    if-eqz v3, :cond_5

    .line 1539
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1541
    :cond_5
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsSubject()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1542
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a001f

    new-array v6, v8, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1553
    :cond_6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1554
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-direct {p0, v2, v0}, Lcom/android/mms/data/WorkingMessage;->syncUpdateDraftSmsMessage(Lcom/android/mms/data/Conversation;Ljava/lang/String;)V

    .line 1555
    const/4 v1, 0x1

    goto :goto_2
.end method

.method public saveSmsToPending(I)V
    .locals 6
    .parameter "sendSimSlot"

    .prologue
    const/4 v5, 0x0

    .line 3888
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveSmsToPending() sendSimSlot: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3892
    invoke-direct {p0, v5}, Lcom/android/mms/data/WorkingMessage;->prepareForSave(Z)V

    .line 3895
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    .line 3897
    .local v0, conv:Lcom/android/mms/data/Conversation;
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3899
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3900
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3901
    .local v2, subText:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<subject:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3906
    .end local v2           #subText:Ljava/lang/String;
    .local v1, msgText:Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/mms/data/WorkingMessage$8;

    invoke-direct {v4, p0, v0, v1, p1}, Lcom/android/mms/data/WorkingMessage$8;-><init>(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Ljava/lang/String;I)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 3924
    .end local v1           #msgText:Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/android/mms/data/RecipientIdCache;->updateNumbers(JLcom/android/mms/data/ContactList;)V

    .line 3927
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    .line 3928
    return-void

    .line 3903
    :cond_1
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #msgText:Ljava/lang/String;
    goto :goto_0
.end method

.method public send(I)V
    .locals 10
    .parameter "sendSimSlot"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1961
    const-string v5, "Mms/WorkingMessage"

    const-string v6, "send()"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->start(Ljava/lang/String;Ljava/lang/String;)V

    .line 1963
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v5}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v2

    .line 1965
    .local v2, origThreadId:J
    const/4 v0, 0x0

    .line 1966
    .local v0, callBackNumber:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCallbackNumber()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1967
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1968
    .local v4, prefs:Landroid/content/SharedPreferences;
    invoke-static {v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getCallbackEnabled(Landroid/content/SharedPreferences;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1969
    invoke-static {v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getCallbackNumber(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1970
    invoke-static {v4}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getCallbackNumber(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    .line 1979
    .end local v4           #prefs:Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCallbackNumber()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz v0, :cond_5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1981
    invoke-direct {p0, v8, v0}, Lcom/android/mms/data/WorkingMessage;->prepareForSave(ZLjava/lang/String;)V

    .line 1995
    :goto_1
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v6, v6, v9

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/mms/data/WorkingMessage;->addressContainsEmailToMms(Lcom/android/mms/data/Conversation;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1996
    :cond_1
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-direct {p0, v5, p1}, Lcom/android/mms/data/WorkingMessage;->asyncSendMms(Lcom/android/mms/data/Conversation;I)V

    .line 2002
    :goto_2
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v5}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v5

    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v7}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/android/mms/data/RecipientIdCache;->updateNumbers(JLcom/android/mms/data/ContactList;)V

    .line 2005
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v5}, Lcom/android/mms/data/Conversation;->hasDraft()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v5, v9}, Lcom/android/mms/data/Conversation;->setDraftState(Z)V

    .line 2008
    :cond_2
    iput-boolean v8, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    .line 2010
    const-string v5, "Mms/WorkingMessage"

    const-string v6, "send()"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->end(Ljava/lang/String;Ljava/lang/String;)V

    .line 2011
    return-void

    .line 1972
    .restart local v4       #prefs:Landroid/content/SharedPreferences;
    :cond_3
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 1974
    .local v1, line1Number:Ljava/lang/String;
    if-nez v1, :cond_4

    const-string v0, ""

    :goto_3
    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_3

    .line 1983
    .end local v1           #line1Number:Ljava/lang/String;
    .end local v4           #prefs:Landroid/content/SharedPreferences;
    :cond_5
    invoke-direct {p0, v8}, Lcom/android/mms/data/WorkingMessage;->prepareForSave(Z)V

    goto :goto_1

    .line 1998
    :cond_6
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-direct {p0, v5, p1}, Lcom/android/mms/data/WorkingMessage;->asyncSendSms(Lcom/android/mms/data/Conversation;I)V

    goto :goto_2
.end method

.method public setAttachment(Landroid/content/ContentResolver;IILandroid/net/Uri;ZZZ)I
    .locals 8
    .parameter "contentResolver"
    .parameter "location"
    .parameter "type"
    .parameter "dataUri"
    .parameter "append"
    .parameter "checkCRMode"
    .parameter "sendMultiple"

    .prologue
    .line 736
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLocationMessage()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 737
    if-nez p4, :cond_2

    if-eqz p3, :cond_2

    .line 738
    const/4 v3, -0x1

    .line 857
    :cond_0
    :goto_0
    return v3

    .line 742
    :cond_1
    if-nez p4, :cond_2

    .line 743
    const/4 v3, -0x1

    goto :goto_0

    .line 749
    :cond_2
    const/4 v3, 0x0

    .line 768
    .local v3, result:I
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->ensureSlideshow()V

    .line 770
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-nez v5, :cond_3

    .line 771
    const/4 v3, -0x1

    goto :goto_0

    .line 775
    :cond_3
    if-eqz p4, :cond_4

    const/4 v5, 0x1

    if-ne p3, v5, :cond_4

    invoke-virtual {p4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "/picasa/item"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 776
    const/4 v3, -0x4

    .line 777
    goto :goto_0

    .line 780
    :cond_4
    const/4 v2, 0x0

    .line 781
    .local v2, isSlideAdded:Z
    if-eqz p5, :cond_5

    .line 782
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5, p2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v5

    invoke-virtual {p0, p3, v5}, Lcom/android/mms/data/WorkingMessage;->isAddPossible(ILcom/android/mms/model/SlideModel;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 783
    add-int/lit8 p2, p2, 0x1

    .line 784
    new-instance v4, Lcom/android/mms/model/SlideModel;

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {v4, v5}, Lcom/android/mms/model/SlideModel;-><init>(Lcom/android/mms/model/SlideshowModel;)V

    .line 785
    .local v4, slide:Lcom/android/mms/model/SlideModel;
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5, p2, v4}, Lcom/android/mms/model/SlideshowModel;->add(ILcom/android/mms/model/SlideModel;)V

    .line 786
    const/4 v2, 0x1

    .line 790
    .end local v4           #slide:Lcom/android/mms/model/SlideModel;
    :cond_5
    invoke-virtual {p0, p2, p3}, Lcom/android/mms/data/WorkingMessage;->checkMaxSlide(II)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_7

    .line 791
    if-eqz v2, :cond_6

    .line 792
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5, p2}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    .line 793
    const/4 v2, 0x0

    .line 795
    :cond_6
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/mms/data/WorkingMessage;->mNewSlide:I

    .line 796
    const/4 v3, -0x6

    goto :goto_0

    .line 799
    :cond_7
    const/4 v5, 0x1

    if-ne v2, v5, :cond_9

    .line 800
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSlideCount()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .local v1, i:I
    :goto_1
    if-le v1, p2, :cond_8

    .line 801
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    add-int/lit8 v7, v1, -0x1

    aget-object v6, v6, v7

    aput-object v6, v5, v1

    .line 800
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 803
    :cond_8
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    const-string v6, ""

    aput-object v6, v5, p2

    .line 806
    .end local v1           #i:I
    :cond_9
    iput p2, p0, Lcom/android/mms/data/WorkingMessage;->mNewSlide:I

    .line 811
    if-eqz p5, :cond_d

    .line 812
    :try_start_0
    invoke-direct {p0, p2, p3, p4, p6}, Lcom/android/mms/data/WorkingMessage;->appendMedia(IILandroid/net/Uri;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/android/mms/ResolutionException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/android/mms/RotationException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_0 .. :try_end_0} :catch_6

    .line 833
    :goto_2
    if-eqz v3, :cond_b

    .line 834
    if-eqz v2, :cond_b

    .line 836
    const/4 v5, -0x1

    if-le p2, v5, :cond_a

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v5

    if-ge p2, v5, :cond_a

    .line 837
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5, p2}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    .line 838
    :cond_a
    const/4 v2, 0x0

    .line 839
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/mms/data/WorkingMessage;->mNewSlide:I

    .line 846
    :cond_b
    :goto_3
    if-nez v3, :cond_0

    .line 847
    const/4 v5, 0x5

    if-eq p3, v5, :cond_c

    .line 848
    iput p3, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    .line 851
    :cond_c
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/mms/data/WorkingMessage;->correctAttachmentState(Z)V

    .line 852
    if-nez p7, :cond_0

    .line 853
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v5, p3}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onAttachmentChanged(I)V

    goto/16 :goto_0

    .line 814
    :cond_d
    :try_start_1
    invoke-direct {p0, p2, p3, p4, p6}, Lcom/android/mms/data/WorkingMessage;->changeMedia(IILandroid/net/Uri;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/android/mms/ResolutionException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/android/mms/RotationException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_1 .. :try_end_1} :catch_6

    goto :goto_2

    .line 816
    :catch_0
    move-exception v0

    .line 817
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const/4 v3, -0x1

    .line 833
    if-eqz v3, :cond_b

    .line 834
    if-eqz v2, :cond_b

    .line 836
    const/4 v5, -0x1

    if-le p2, v5, :cond_e

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v5

    if-ge p2, v5, :cond_e

    .line 837
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5, p2}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    .line 838
    :cond_e
    const/4 v2, 0x0

    .line 839
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/mms/data/WorkingMessage;->mNewSlide:I

    goto :goto_3

    .line 818
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 819
    .local v0, e:Lcom/google/android/mms/MmsException;
    const/4 v3, -0x1

    .line 833
    if-eqz v3, :cond_b

    .line 834
    if-eqz v2, :cond_b

    .line 836
    const/4 v5, -0x1

    if-le p2, v5, :cond_f

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v5

    if-ge p2, v5, :cond_f

    .line 837
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5, p2}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    .line 838
    :cond_f
    const/4 v2, 0x0

    .line 839
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/mms/data/WorkingMessage;->mNewSlide:I

    goto :goto_3

    .line 820
    .end local v0           #e:Lcom/google/android/mms/MmsException;
    :catch_2
    move-exception v0

    .line 821
    .local v0, e:Lcom/android/mms/UnsupportContentTypeException;
    const/4 v3, -0x3

    .line 833
    if-eqz v3, :cond_b

    .line 834
    if-eqz v2, :cond_b

    .line 836
    const/4 v5, -0x1

    if-le p2, v5, :cond_10

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v5

    if-ge p2, v5, :cond_10

    .line 837
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5, p2}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    .line 838
    :cond_10
    const/4 v2, 0x0

    .line 839
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/mms/data/WorkingMessage;->mNewSlide:I

    goto :goto_3

    .line 822
    .end local v0           #e:Lcom/android/mms/UnsupportContentTypeException;
    :catch_3
    move-exception v0

    .line 823
    .local v0, e:Lcom/android/mms/ExceedMessageSizeException;
    const/4 v3, -0x2

    .line 833
    if-eqz v3, :cond_b

    .line 834
    if-eqz v2, :cond_b

    .line 836
    const/4 v5, -0x1

    if-le p2, v5, :cond_11

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v5

    if-ge p2, v5, :cond_11

    .line 837
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5, p2}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    .line 838
    :cond_11
    const/4 v2, 0x0

    .line 839
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/mms/data/WorkingMessage;->mNewSlide:I

    goto/16 :goto_3

    .line 825
    .end local v0           #e:Lcom/android/mms/ExceedMessageSizeException;
    :catch_4
    move-exception v0

    .line 826
    .local v0, e:Lcom/android/mms/ResolutionException;
    const/4 v3, -0x4

    .line 833
    if-eqz v3, :cond_b

    .line 834
    if-eqz v2, :cond_b

    .line 836
    const/4 v5, -0x1

    if-le p2, v5, :cond_12

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v5

    if-ge p2, v5, :cond_12

    .line 837
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5, p2}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    .line 838
    :cond_12
    const/4 v2, 0x0

    .line 839
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/mms/data/WorkingMessage;->mNewSlide:I

    goto/16 :goto_3

    .line 828
    .end local v0           #e:Lcom/android/mms/ResolutionException;
    :catch_5
    move-exception v0

    .line 829
    .local v0, e:Lcom/android/mms/RotationException;
    const/4 v3, -0x8

    .line 833
    if-eqz v3, :cond_b

    .line 834
    if-eqz v2, :cond_b

    .line 836
    const/4 v5, -0x1

    if-le p2, v5, :cond_13

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v5

    if-ge p2, v5, :cond_13

    .line 837
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5, p2}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    .line 838
    :cond_13
    const/4 v2, 0x0

    .line 839
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/mms/data/WorkingMessage;->mNewSlide:I

    goto/16 :goto_3

    .line 830
    .end local v0           #e:Lcom/android/mms/RotationException;
    :catch_6
    move-exception v0

    .line 831
    .local v0, e:Lcom/android/mms/ContentRestrictionException;
    const/4 v3, -0x5

    .line 833
    if-eqz v3, :cond_b

    .line 834
    if-eqz v2, :cond_b

    .line 836
    const/4 v5, -0x1

    if-le p2, v5, :cond_14

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v5

    if-ge p2, v5, :cond_14

    .line 837
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5, p2}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    .line 838
    :cond_14
    const/4 v2, 0x0

    .line 839
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/mms/data/WorkingMessage;->mNewSlide:I

    goto/16 :goto_3

    .line 833
    .end local v0           #e:Lcom/android/mms/ContentRestrictionException;
    :catchall_0
    move-exception v5

    if-eqz v3, :cond_16

    .line 834
    if-eqz v2, :cond_16

    .line 836
    const/4 v6, -0x1

    if-le p2, v6, :cond_15

    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v6

    if-ge p2, v6, :cond_15

    .line 837
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6, p2}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    .line 838
    :cond_15
    const/4 v2, 0x0

    .line 839
    const/4 v6, -0x1

    iput v6, p0, Lcom/android/mms/data/WorkingMessage;->mNewSlide:I

    :cond_16
    throw v5
.end method

.method public setAttachmentType(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 3269
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    .line 3274
    :goto_0
    return-void

    .line 3273
    :cond_0
    iput p1, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    goto :goto_0
.end method

.method public setConversation(Lcom/android/mms/data/Conversation;Z)V
    .locals 3
    .parameter "conv"
    .parameter "notify"

    .prologue
    .line 1753
    const-string v0, "Mms/WorkingMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setConversation(),before="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",after="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1755
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    .line 1759
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1761
    invoke-static {}, Lcom/android/mms/MmsConfig;->isAliasEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1762
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->containsEmail()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->containsAlias()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0, p2}, Lcom/android/mms/data/WorkingMessage;->setHasEmail(ZZ)V

    .line 1768
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/data/WorkingMessage;->calculateMaxEmailLength(Lcom/android/mms/data/ContactList;)V

    .line 1769
    return-void

    .line 1762
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1764
    :cond_3
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->containsEmail()Z

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/android/mms/data/WorkingMessage;->setHasEmail(ZZ)V

    goto :goto_1
.end method

.method public setFlag_splitMmsOnGoing(I)I
    .locals 3
    .parameter "flag"

    .prologue
    .line 4104
    sput p1, Lcom/android/mms/data/WorkingMessage;->splitMmsOnGoing:I

    .line 4105
    iget-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->DEBUG_LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "kkahn/WorkingMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFlag_splitMmsOnGoing:flag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mms/data/WorkingMessage;->splitMmsOnGoing:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4107
    :cond_0
    sget v0, Lcom/android/mms/data/WorkingMessage;->splitMmsOnGoing:I

    return v0
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 3841
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mHandler:Landroid/os/Handler;

    .line 3842
    return-void
.end method

.method public setHasEmail(ZZ)V
    .locals 2
    .parameter "hasEmail"
    .parameter "notify"

    .prologue
    const/4 v1, 0x1

    .line 1788
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGateway()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1789
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0, p2}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    .line 1793
    :goto_0
    return-void

    .line 1791
    :cond_0
    invoke-direct {p0, v1, p1, p2}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    goto :goto_0
.end method

.method public setIsSignatureAdded(Z)V
    .locals 0
    .parameter "isAdded"

    .prologue
    .line 3881
    iput-boolean p1, p0, Lcom/android/mms/data/WorkingMessage;->mIsSignatureAdded:Z

    .line 3882
    return-void
.end method

.method public setLengthRequiresMms(Z)V
    .locals 2
    .parameter "mmsRequired"

    .prologue
    const/4 v1, 0x1

    .line 1818
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1, v1}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    .line 1820
    if-eq p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1821
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->ensureSlideshow()V

    .line 1827
    :cond_1
    :goto_0
    return-void

    .line 1823
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v0, :cond_1

    .line 1824
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mms/data/WorkingMessage;->correctAttachmentState(Z)V

    goto :goto_0
.end method

.method public setMessageUriToNull()V
    .locals 8

    .prologue
    .line 498
    const/4 v7, 0x0

    .line 499
    .local v7, c:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 501
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 503
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 504
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 507
    :cond_1
    if-eqz v7, :cond_2

    .line 508
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 512
    :cond_2
    return-void

    .line 507
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 508
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public setPriority(I)V
    .locals 3
    .parameter "priority"

    .prologue
    .line 620
    const-string v0, "Mms/WorkingMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPriority : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    sput p1, Lcom/android/mms/data/WorkingMessage;->mPriorityLevel:I

    .line 622
    return-void
.end method

.method public setRecipients(Ljava/lang/String;)V
    .locals 0
    .parameter "recipients"

    .prologue
    .line 586
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mRecipients:Ljava/lang/String;

    .line 587
    return-void
.end method

.method public setReplyAllGroupConversation(ZZ)V
    .locals 2
    .parameter "group"
    .parameter "notify"

    .prologue
    const/16 v1, 0x10

    .line 3984
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, p1}, Lcom/android/mms/data/Conversation;->setGroupMessage(Z)V

    .line 3985
    if-eqz p1, :cond_0

    .line 3986
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0, p2}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    .line 3989
    :goto_0
    return-void

    .line 3988
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0, p2}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    goto :goto_0
.end method

.method public setReserveDeliveryTime(J)V
    .locals 0
    .parameter "deliverytime"

    .prologue
    .line 3847
    iput-wide p1, p0, Lcom/android/mms/data/WorkingMessage;->mReserveDeliveryTime:J

    .line 3848
    return-void
.end method

.method public setSender(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 4003
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mSender:Ljava/lang/CharSequence;

    .line 4004
    return-void
.end method

.method public setSubject(Ljava/lang/CharSequence;Z)V
    .locals 9
    .parameter "s"
    .parameter "notify"

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1088
    const-string v3, "Mms/WorkingMessage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setSubject(),s="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",notify="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/mms/Log;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    if-eqz p1, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableLimitOnMmsSubjectByByte()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1091
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSubjectLength()I

    move-result v6

    invoke-static {v3, v6}, Lcom/android/mms/ui/MessageUtils;->getCuttedStringByByteLength(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    .line 1098
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSmsSubject()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1099
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasText()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1100
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v6

    if-eqz p1, :cond_5

    move v3, v4

    :goto_1
    invoke-virtual {p0, v8, v6, v3, p2}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZZ)V

    .line 1108
    :cond_0
    :goto_2
    if-eqz p1, :cond_2

    .line 1109
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->ensureSlideshow()V

    .line 1110
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v3

    if-ne v3, v4, :cond_2

    .line 1111
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3, v5}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    .line 1112
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1114
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->getCidTextIndex(Lcom/android/mms/model/SlideshowModel;)I

    move-result v0

    .line 1115
    .local v0, index:I
    new-instance v2, Lcom/android/mms/model/TextModel;

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    const-string v6, "text/plain"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cid:text_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".txt"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v8}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/model/LayoutModel;->getTextRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v8

    invoke-direct {v2, v3, v6, v7, v8}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V

    .line 1118
    .local v2, text:Lcom/android/mms/model/TextModel;
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v3, v3, v5

    if-eqz v3, :cond_1

    .line 1119
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    aget-object v3, v3, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;Z)V

    .line 1121
    :cond_1
    invoke-virtual {v1, v2}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 1125
    .end local v0           #index:I
    .end local v1           #slide:Lcom/android/mms/model/SlideModel;
    .end local v2           #text:Lcom/android/mms/model/TextModel;
    :cond_2
    return-void

    .line 1092
    :cond_3
    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSubjectLength()I

    move-result v6

    if-le v3, v6, :cond_4

    .line 1093
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSubjectLength()I

    move-result v3

    invoke-interface {p1, v5, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 1095
    :cond_4
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    goto/16 :goto_0

    :cond_5
    move v3, v5

    .line 1100
    goto :goto_1

    .line 1102
    :cond_6
    if-eqz p1, :cond_8

    .line 1103
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_7

    move v3, v4

    :goto_3
    invoke-direct {p0, v8, v3, p2}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    goto/16 :goto_2

    :cond_7
    move v3, v5

    goto :goto_3

    .line 1104
    :cond_8
    if-nez p1, :cond_0

    .line 1105
    if-eqz p1, :cond_9

    move v3, v4

    :goto_4
    invoke-direct {p0, v8, v3, p2}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    goto/16 :goto_2

    :cond_9
    move v3, v5

    goto :goto_4
.end method

.method public setWorkingRecipients(Lcom/android/mms/data/ContactList;)V
    .locals 2
    .parameter "numbers"

    .prologue
    .line 1675
    new-instance v0, Lcom/android/mms/data/ContactList;

    invoke-direct {v0}, Lcom/android/mms/data/ContactList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    .line 1676
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    .line 1677
    const-string v0, "Mms/WorkingMessage"

    const-string v1, "setWorkingRecipients"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1679
    invoke-direct {p0, p1}, Lcom/android/mms/data/WorkingMessage;->calculateMaxEmailLength(Lcom/android/mms/data/ContactList;)V

    .line 1680
    return-void
.end method

.method public syncWorkingRecipients()V
    .locals 3

    .prologue
    .line 1341
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsSendingForChn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1342
    const-string v0, "kkahn/WorkingMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncWorkingRecipients()>splitMmsOnGoing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mms/data/WorkingMessage;->splitMmsOnGoing:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1344
    sget v0, Lcom/android/mms/data/WorkingMessage;->splitMmsOnGoing:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1353
    :cond_0
    :goto_0
    return-void

    .line 1349
    :cond_1
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    if-eqz v0, :cond_0

    .line 1350
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/Conversation;->setRecipients(Lcom/android/mms/data/ContactList;)V

    .line 1351
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Lcom/android/mms/data/ContactList;

    goto :goto_0
.end method

.method public unDiscard()V
    .locals 2

    .prologue
    .line 1602
    const-string v0, "Mms/WorkingMessage"

    const-string v1, "unDiscard"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1604
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    .line 1605
    return-void
.end method

.method public updateState(IZZZ)V
    .locals 7
    .parameter "state"
    .parameter "attachment_on"
    .parameter "on"
    .parameter "notify"

    .prologue
    const/16 v4, 0x20

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 1857
    sget-boolean v0, Lcom/android/mms/data/WorkingMessage;->sMmsEnabled:Z

    if-nez v0, :cond_1

    .line 1897
    :cond_0
    :goto_0
    return-void

    .line 1863
    :cond_1
    iget v6, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    .line 1864
    .local v6, oldState:I
    if-eqz p3, :cond_6

    if-eqz p2, :cond_6

    .line 1865
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    .line 1872
    :goto_1
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    if-ne v0, v4, :cond_2

    and-int/lit8 v0, v6, -0x21

    if-lez v0, :cond_2

    .line 1873
    iput v5, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    .line 1875
    :cond_2
    if-ne p1, v4, :cond_3

    if-eqz p3, :cond_3

    .line 1876
    sput-boolean v3, Lcom/android/mms/data/WorkingMessage;->mForceMmsState:Z

    .line 1880
    :cond_3
    if-eqz p4, :cond_4

    .line 1881
    if-nez v6, :cond_7

    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    if-eqz v0, :cond_7

    .line 1882
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v0, v3}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onProtocolChanged(Z)V

    .line 1888
    :cond_4
    :goto_2
    if-eqz v6, :cond_5

    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_5

    .line 1889
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    move-object v0, p0

    move-object v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/data/WorkingMessage;->deleteMmsMessage(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Lcom/android/mms/data/Conversation;Z)V

    .line 1890
    iput-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    .line 1893
    :cond_5
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    if-eq v6, v0, :cond_0

    .line 1895
    const-string v1, "Mms/WorkingMessage"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateState: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p3, :cond_8

    const-string v0, "+"

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/mms/data/WorkingMessage;->stateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    invoke-static {v2}, Lcom/android/mms/data/WorkingMessage;->stateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1867
    :cond_6
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    goto :goto_1

    .line 1883
    :cond_7
    if-eqz v6, :cond_4

    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    if-nez v0, :cond_4

    .line 1884
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v0, v5}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onProtocolChanged(Z)V

    goto :goto_2

    .line 1895
    :cond_8
    const-string v0, "-"

    goto :goto_3
.end method

.method public updateText(ILjava/lang/CharSequence;)I
    .locals 12
    .parameter "slideIndex"
    .parameter "s"

    .prologue
    const/4 v11, 0x1

    .line 629
    const-string v7, "Mms/WorkingMessage"

    const-string v8, "changeSlideText()"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    const/4 v2, 0x0

    .line 631
    .local v2, result:I
    if-eqz p2, :cond_1

    .line 632
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 637
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v7, :cond_3

    .line 638
    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v7, p1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v3

    .line 647
    .local v3, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v7

    if-nez v7, :cond_2

    .line 648
    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v7}, Lcom/android/mms/ui/MessageUtils;->getCidTextIndex(Lcom/android/mms/model/SlideshowModel;)I

    move-result v1

    .line 649
    .local v1, index:I
    new-instance v4, Lcom/android/mms/model/TextModel;

    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mContext:Landroid/content/Context;

    const-string v8, "text/plain"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cid:text_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".txt"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v10}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/mms/model/LayoutModel;->getTextRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v10

    invoke-direct {v4, v7, v8, v9, v10}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V

    .line 651
    .local v4, text:Lcom/android/mms/model/TextModel;
    invoke-virtual {v4}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v6

    .line 652
    .local v6, textString:Ljava/lang/String;
    invoke-virtual {v4, p2, v11}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;Z)V

    .line 654
    :try_start_0
    invoke-virtual {v3, v4}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z
    :try_end_0
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 688
    .end local v1           #index:I
    .end local v3           #slide:Lcom/android/mms/model/SlideModel;
    .end local v4           #text:Lcom/android/mms/model/TextModel;
    .end local v6           #textString:Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/android/mms/data/WorkingMessage;->setText(ILjava/lang/CharSequence;)V

    .line 689
    return v2

    .line 634
    :cond_1
    const-string p2, ""

    goto :goto_0

    .line 655
    .restart local v1       #index:I
    .restart local v3       #slide:Lcom/android/mms/model/SlideModel;
    .restart local v4       #text:Lcom/android/mms/model/TextModel;
    .restart local v6       #textString:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 656
    .local v0, e:Lcom/android/mms/ExceedMessageSizeException;
    const/4 v2, -0x2

    .line 657
    invoke-virtual {v4, v6, v11}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;Z)V

    .line 658
    invoke-virtual {v3, v4}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 659
    move-object p2, v6

    goto :goto_1

    .line 663
    .end local v0           #e:Lcom/android/mms/ExceedMessageSizeException;
    .end local v1           #index:I
    .end local v4           #text:Lcom/android/mms/model/TextModel;
    .end local v6           #textString:Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v5

    .line 664
    .local v5, textModel:Lcom/android/mms/model/TextModel;
    invoke-virtual {v5}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v6

    .line 666
    .restart local v6       #textString:Ljava/lang/String;
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7, v5}, Lcom/android/mms/model/SlideModel;->replaceText(Ljava/lang/String;Lcom/android/mms/model/TextModel;)V
    :try_end_1
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 667
    :catch_1
    move-exception v0

    .line 668
    .restart local v0       #e:Lcom/android/mms/ExceedMessageSizeException;
    const/4 v2, -0x2

    .line 669
    move-object p2, v6

    goto :goto_1

    .line 672
    .end local v0           #e:Lcom/android/mms/ExceedMessageSizeException;
    .end local v3           #slide:Lcom/android/mms/model/SlideModel;
    .end local v5           #textModel:Lcom/android/mms/model/TextModel;
    .end local v6           #textString:Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v7, :cond_0

    .line 676
    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v7, p1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v3

    .line 677
    .restart local v3       #slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 678
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v5

    .line 679
    .restart local v5       #textModel:Lcom/android/mms/model/TextModel;
    invoke-virtual {v5}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v6

    .line 681
    .restart local v6       #textString:Ljava/lang/String;
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7, v5}, Lcom/android/mms/model/SlideModel;->replaceText(Ljava/lang/String;Lcom/android/mms/model/TextModel;)V
    :try_end_2
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 682
    :catch_2
    move-exception v0

    .line 683
    .restart local v0       #e:Lcom/android/mms/ExceedMessageSizeException;
    const/4 v2, -0x2

    .line 684
    move-object p2, v6

    goto :goto_1
.end method

.method public writeStateToBundle(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 1621
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1622
    const-string v0, "subject"

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1625
    :cond_0
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 1626
    const-string v0, "msg_uri"

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1630
    :cond_1
    :goto_0
    return-void

    .line 1627
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasText()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1628
    const-string v0, "sms_body"

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mText:[Ljava/lang/CharSequence;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
