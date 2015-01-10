.class public Lcom/android/mms/ui/MessageItem;
.super Ljava/lang/Object;
.source "MessageItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessageItem$DeliveryStatus;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = null

.field public static final TYPE_MMS:Ljava/lang/String; = "mms"

.field public static final TYPE_SMS:Ljava/lang/String; = "sms"

.field public static final TYPE_WPM:Ljava/lang/String; = "wpm"


# instance fields
.field mAddress:Ljava/lang/String;

.field mAttachmentCount:I

.field mAttachmentType:I

.field mBody:Ljava/lang/String;

.field private mBoxId:I

.field mCachedFormattedMessage:Ljava/lang/CharSequence;

.field mCachedTopFormattedMessage:Ljava/lang/CharSequence;

.field mCallbackNumber:Ljava/lang/String;

.field mContact:Ljava/lang/String;

.field final mContext:Landroid/content/Context;

.field mDeliverCount:I

.field mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

.field mErrorCode:I

.field mErrorType:I

.field mExpireDate:Ljava/lang/String;

.field mFailedCount:I

.field mFirstAttachItemType:I

.field mFirstAttachName:Ljava/lang/String;

.field mGroupId:J

.field mGroupMessage:Z

.field mGroupType:I

.field mHasAttachment:Z

.field mHasDrmContents:Z

.field mHasSeperator:Z

.field mHighlight:Ljava/util/regex/Pattern;

.field mIncomingGroupMessage:Z

.field mIsCMASSms:Z

.field mIsCbSms:Z

.field mIsSpam:Z

.field mLastSendingState:Z

.field mLayoutType:I

.field mLinkUrl:Ljava/lang/String;

.field mLocked:Z

.field mMMSPriority:I

.field mMMSRead:I

.field mMessageSize:I

.field mMessageType:I

.field mMessageUri:Landroid/net/Uri;

.field final mMsgId:J

.field mReadReport:Z

.field mRequestCount:I

.field public mReserved:J

.field mSMSPriority:I

.field mSMSRead:I

.field mServiceCategory:I

.field mSimImsi:Ljava/lang/String;

.field mSimSlot:I

.field mSimSlotForIcon:I

.field mSlideshow:Lcom/android/mms/model/SlideshowModel;

.field mSubject:Ljava/lang/String;

.field mTeleserviceId:I

.field final mThreadId:J

.field mTimeMills:J

.field mTimestamp:Ljava/lang/String;

.field final mType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const-string v0, "Mms/MessageItem"

    sput-object v0, Lcom/android/mms/ui/MessageItem;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;Ljava/util/regex/Pattern;ZZ)V
    .locals 37
    .parameter "context"
    .parameter "type"
    .parameter "cursor"
    .parameter "columnsMap"
    .parameter "highlight"
    .parameter "isSpam"
    .parameter "addAttachmentSlide"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 176
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 134
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mIncomingGroupMessage:Z

    .line 135
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mGroupMessage:Z

    .line 136
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mFailedCount:I

    .line 137
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mRequestCount:I

    .line 138
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mDeliverCount:I

    .line 156
    const-wide/16 v30, 0x0

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/mms/ui/MessageItem;->mGroupId:J

    .line 157
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mGroupType:I

    .line 168
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mIsSpam:Z

    .line 177
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    .line 178
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgId:I

    move/from16 v30, v0

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    .line 179
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mHighlight:Ljava/util/regex/Pattern;

    .line 180
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    .line 181
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnThreadId:I

    move/from16 v30, v0

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    .line 182
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mHasSeperator:Z

    .line 183
    move/from16 v0, p6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mIsSpam:Z

    .line 186
    const/16 v30, -0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mSimSlotForIcon:I

    .line 188
    :try_start_0
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSimImsi:I

    move/from16 v30, v0

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mSimImsi:Ljava/lang/String;

    .line 190
    const/16 v21, 0x0

    .local v21, simSlotNum:I
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v30

    move/from16 v0, v21

    move/from16 v1, v30

    if-ge v0, v1, :cond_2

    .line 191
    invoke-static/range {v21 .. v21}, Lcom/android/mms/MmsConfig;->getIMSIbySimSlot(I)Ljava/lang/String;

    move-result-object v11

    .line 193
    .local v11, imsi:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getTransactionLoggable()Z

    move-result v30

    if-eqz v30, :cond_0

    .line 194
    sget-object v30, Lcom/android/mms/ui/MessageItem;->TAG:Ljava/lang/String;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "MessageItem() simSlotNum: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ", mSimImsi: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSimImsi:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ", imsi: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSimImsi:Ljava/lang/String;

    move-object/from16 v30, v0

    if-eqz v30, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSimImsi:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_1

    .line 198
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mSimSlotForIcon:I

    .line 200
    if-nez v21, :cond_1

    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->isOneSIMcardsInsertedInSlot2()Z

    move-result v30

    if-eqz v30, :cond_1

    .line 201
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mSimSlotForIcon:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :cond_1
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 205
    .end local v11           #imsi:Ljava/lang/String;
    .end local v21           #simSlotNum:I
    :catch_0
    move-exception v8

    .line 206
    .local v8, e:Ljava/lang/NullPointerException;
    sget-object v30, Lcom/android/mms/ui/MessageItem;->TAG:Ljava/lang/String;

    const-string v31, "mColumnSimImsi is null!!!"

    invoke-static/range {v30 .. v31}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .end local v8           #e:Ljava/lang/NullPointerException;
    :cond_2
    const-string v30, "sms"

    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_11

    .line 211
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mReadReport:Z

    .line 213
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsStatus:I

    move/from16 v30, v0

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    .line 214
    .local v23, status:J
    const-wide/16 v30, -0x1

    cmp-long v30, v23, v30

    if-nez v30, :cond_8

    sget-object v30, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->NONE:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    .line 219
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageItem;->mIsSpam:Z

    move/from16 v30, v0

    if-eqz v30, :cond_b

    sget-object v30, Lcom/android/mms/spam/SpamFilter;->SPAM_SMS_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    move-wide/from16 v31, v0

    invoke-static/range {v30 .. v32}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    .line 222
    :goto_2
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsType:I

    move/from16 v30, v0

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    .line 223
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsAddress:I

    move/from16 v30, v0

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    .line 224
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsRead:I

    move/from16 v30, v0

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mSMSRead:I

    .line 225
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsPriority:I

    move/from16 v30, v0

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mSMSPriority:I

    .line 226
    const-string v30, "CBmessages"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mIsCbSms:Z

    .line 229
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCmas()Z

    move-result v30

    if-eqz v30, :cond_c

    .line 231
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnCmasServiceCategory:I

    move/from16 v30, v0

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mServiceCategory:I

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v30, v0

    if-eqz v30, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v30, v0

    const-string v31, "#CMAS#"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v30

    if-nez v30, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mServiceCategory:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/mms/transaction/CmasReceiverService;->isCmasMessage(I)Z

    move-result v30

    if-eqz v30, :cond_5

    .line 237
    :cond_4
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mIsCMASSms:Z

    .line 244
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/provider/Telephony$Sms;->isOutgoingFolder(I)Z

    move-result v30

    if-eqz v30, :cond_d

    .line 245
    const v30, 0x7f0a0011

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 246
    .local v12, meString:Ljava/lang/String;
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    .line 253
    .end local v12           #meString:Ljava/lang/String;
    :goto_4
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsBody:I

    move/from16 v30, v0

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    .line 254
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsCallback:I

    move/from16 v30, v0

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mCallbackNumber:Ljava/lang/String;

    .line 256
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsDate:I

    move/from16 v30, v0

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    .line 257
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageItem;->isOutgoingMessage()Z

    move-result v30

    if-nez v30, :cond_6

    .line 258
    const v30, 0x7f0a0015

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    move-wide/from16 v33, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v33

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->formatTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    move-object/from16 v0, p1

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mTimestamp:Ljava/lang/String;

    .line 261
    :cond_6
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsLocked:I

    move/from16 v30, v0

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    if-eqz v30, :cond_10

    const/16 v30, 0x1

    :goto_5
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    .line 262
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsErrorCode:I

    move/from16 v30, v0

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mErrorCode:I

    .line 263
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsReserved:I

    move/from16 v30, v0

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v30, v0

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/mms/ui/MessageItem;->mReserved:J

    .line 266
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsGroupId:I

    move/from16 v30, v0

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/mms/ui/MessageItem;->mGroupId:J

    .line 267
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsGroupType:I

    move/from16 v30, v0

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mGroupType:I

    .line 270
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsTeleserviceId:I

    move/from16 v30, v0

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mTeleserviceId:I

    .line 271
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsLinkUrl:I

    move/from16 v30, v0

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mLinkUrl:Ljava/lang/String;

    .line 273
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsSimSlot:I

    move/from16 v30, v0

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mSimSlot:I

    .line 478
    .end local v23           #status:J
    :cond_7
    :goto_6
    return-void

    .line 215
    .restart local v23       #status:J
    :cond_8
    const-wide/16 v30, 0x40

    cmp-long v30, v23, v30

    if-ltz v30, :cond_9

    sget-object v30, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->FAILED:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    goto/16 :goto_1

    .line 216
    :cond_9
    const-wide/16 v30, 0x20

    cmp-long v30, v23, v30

    if-ltz v30, :cond_a

    sget-object v30, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->PENDING:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    goto/16 :goto_1

    .line 217
    :cond_a
    sget-object v30, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->RECEIVED:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    goto/16 :goto_1

    .line 220
    :cond_b
    sget-object v30, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    move-wide/from16 v31, v0

    invoke-static/range {v30 .. v32}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    goto/16 :goto_2

    .line 240
    :cond_c
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mIsCMASSms:Z

    goto/16 :goto_3

    .line 247
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageItem;->mIsCbSms:Z

    move/from16 v30, v0

    if-eqz v30, :cond_e

    .line 248
    const v30, 0x7f0a0132

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    goto/16 :goto_4

    .line 251
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-eqz v30, :cond_f

    const-string v30, ""

    :goto_7
    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    goto/16 :goto_4

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-static/range {v30 .. v31}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v30

    goto :goto_7

    .line 261
    :cond_10
    const/16 v30, 0x0

    goto/16 :goto_5

    .line 275
    .end local v23           #status:J
    :cond_11
    const-string v30, "mms"

    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_28

    .line 276
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/MessageItem;->mIsSpam:Z

    move/from16 v30, v0

    if-eqz v30, :cond_13

    .line 277
    sget-object v30, Landroid/provider/Telephony$SpamMms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    move-wide/from16 v31, v0

    invoke-static/range {v30 .. v32}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    .line 281
    :goto_8
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsMessageBox:I

    move/from16 v30, v0

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    .line 282
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsMessageType:I

    move/from16 v30, v0

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    .line 284
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsRead:I

    move/from16 v30, v0

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mMMSRead:I

    .line 285
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsPriority:I

    move/from16 v30, v0

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mMMSPriority:I

    .line 286
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsErrorType:I

    move/from16 v30, v0

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mErrorType:I

    .line 287
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsSubject:I

    move/from16 v30, v0

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 288
    .local v25, subject:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_12

    .line 293
    new-instance v27, Lcom/google/android/mms/pdu/EncodedStringValue;

    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsSubjectCharset:I

    move/from16 v30, v0

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    move-object/from16 v0, v27

    move/from16 v1, v30

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(ILjava/lang/String;)V

    .line 295
    .local v27, v:Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual/range {v27 .. v27}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    .line 297
    .end local v27           #v:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_12
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsLocked:I

    move/from16 v30, v0

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    if-eqz v30, :cond_14

    const/16 v30, 0x1

    :goto_9
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    .line 298
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsReserved:I

    move/from16 v30, v0

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v30, v0

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/mms/ui/MessageItem;->mReserved:J

    .line 300
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsSimSlot:I

    move/from16 v30, v0

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mSimSlot:I

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v16

    .line 304
    .local v16, p:Lcom/google/android/mms/pdu/PduPersister;
    const/16 v30, 0x82

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    move/from16 v31, v0

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_15

    .line 305
    sget-object v30, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->NONE:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    move-object/from16 v30, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v15

    check-cast v15, Lcom/google/android/mms/pdu/NotificationInd;

    .line 307
    .local v15, notifInd:Lcom/google/android/mms/pdu/NotificationInd;
    invoke-virtual {v15}, Lcom/google/android/mms/pdu/NotificationInd;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/MessageItem;->interpretFrom(Lcom/google/android/mms/pdu/EncodedStringValue;Landroid/net/Uri;)V

    .line 309
    new-instance v30, Ljava/lang/String;

    invoke-virtual {v15}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    .line 310
    invoke-virtual {v15}, Lcom/google/android/mms/pdu/NotificationInd;->getMessageSize()J

    move-result-wide v30

    move-wide/from16 v0, v30

    long-to-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    .line 311
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsDate:I

    move/from16 v30, v0

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    const-wide/16 v32, 0x3e8

    mul-long v30, v30, v32

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    .line 312
    const v30, 0x7f0a0016

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual {v15}, Lcom/google/android/mms/pdu/NotificationInd;->getExpiry()J

    move-result-wide v33

    const-wide/16 v35, 0x3e8

    mul-long v33, v33, v35

    const/16 v35, 0x1

    move-object/from16 v0, p1

    move-wide/from16 v1, v33

    move/from16 v3, v35

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    move-object/from16 v0, p1

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mExpireDate:Ljava/lang/String;

    .line 430
    .end local v15           #notifInd:Lcom/google/android/mms/pdu/NotificationInd;
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/MessageItem;->isOutgoingMessage()Z

    move-result v30

    if-nez v30, :cond_7

    .line 431
    const v30, 0x7f0a0015

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    move-wide/from16 v33, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v33

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->formatTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    move-object/from16 v0, p1

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mTimestamp:Ljava/lang/String;

    goto/16 :goto_6

    .line 279
    .end local v16           #p:Lcom/google/android/mms/pdu/PduPersister;
    .end local v25           #subject:Ljava/lang/String;
    :cond_13
    sget-object v30, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    move-wide/from16 v31, v0

    invoke-static/range {v30 .. v32}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    goto/16 :goto_8

    .line 297
    .restart local v25       #subject:Ljava/lang/String;
    :cond_14
    const/16 v30, 0x0

    goto/16 :goto_9

    .line 315
    .restart local v16       #p:Lcom/google/android/mms/pdu/PduPersister;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    move-object/from16 v30, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v13

    check-cast v13, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    .line 318
    .local v13, msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMmsSendingForChn()Z

    move-result v30

    if-eqz v30, :cond_16

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v30

    invoke-direct {v0, v13, v1, v2}, Lcom/android/mms/ui/MessageItem;->ensureValidityMultimediaMessagePdu(Lcom/google/android/mms/pdu/MultimediaMessagePdu;Lcom/google/android/mms/pdu/PduPersister;Landroid/net/Uri;)Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    move-result-object v13

    .line 326
    :cond_16
    invoke-virtual {v13}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v30

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    move/from16 v2, p7

    invoke-static {v0, v1, v2}, Lcom/android/mms/model/SlideshowModel;->createFromPduBody(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;Z)Lcom/android/mms/model/SlideshowModel;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/mms/model/SlideshowModel;->isRawAttachmentPresent()Z

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mHasAttachment:Z

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/mms/model/SlideshowModel;->isDrmContentsPresent()Z

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mHasDrmContents:Z

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/mms/ui/MessageUtils;->getAttachmentType(Lcom/android/mms/model/SlideshowModel;)I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mAttachmentType:I

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsSize()I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mAttachmentCount:I

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/android/mms/model/LayoutModel;->getLayoutType()I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mLayoutType:I

    .line 337
    const/16 v17, 0x0

    .line 338
    .local v17, rawAttachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/AttachmentModel;>;"
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mAttachmentCount:I

    move/from16 v30, v0

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_17

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsList()Ljava/util/ArrayList;

    move-result-object v17

    .line 340
    const/16 v30, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/mms/model/AttachmentModel;

    invoke-virtual/range {v30 .. v30}, Lcom/android/mms/model/AttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mFirstAttachName:Ljava/lang/String;

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/mms/ui/MessageUtils;->getFirstAttachmentType(Lcom/android/mms/model/SlideshowModel;)I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mFirstAttachItemType:I

    .line 345
    :cond_17
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableGroupMessage()Z

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_1a

    .line 347
    invoke-virtual {v13}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getCc()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v28

    .line 348
    .local v28, values1:[Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual {v13}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v29

    .line 349
    .local v29, values2:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v28, :cond_18

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v30, v0

    if-gtz v30, :cond_19

    :cond_18
    if-eqz v29, :cond_1a

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v30, v0

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_1a

    .line 350
    :cond_19
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mGroupMessage:Z

    .line 355
    .end local v28           #values1:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v29           #values2:[Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    move/from16 v30, v0

    const/16 v31, 0x84

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_22

    move-object/from16 v20, v13

    .line 356
    check-cast v20, Lcom/google/android/mms/pdu/RetrieveConf;

    .line 357
    .local v20, retrieveConf:Lcom/google/android/mms/pdu/RetrieveConf;
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/RetrieveConf;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/MessageItem;->interpretFrom(Lcom/google/android/mms/pdu/EncodedStringValue;Landroid/net/Uri;)V

    .line 359
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableGroupMessage()Z

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_1d

    .line 360
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/RetrieveConf;->getCc()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v30

    if-eqz v30, :cond_1b

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/RetrieveConf;->getCc()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v30

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v30, v0

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-gt v0, v1, :cond_1c

    :cond_1b
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/RetrieveConf;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v30

    if-eqz v30, :cond_21

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/RetrieveConf;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v30

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v30, v0

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_21

    .line 362
    :cond_1c
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mIncomingGroupMessage:Z

    .line 367
    :cond_1d
    :goto_b
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getDate()J

    move-result-wide v30

    const-wide/16 v32, 0x3e8

    mul-long v30, v30, v32

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    .line 373
    .end local v13           #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    .end local v20           #retrieveConf:Lcom/google/android/mms/pdu/RetrieveConf;
    :goto_c
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsDeliveryReport:I

    move/from16 v30, v0

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 374
    .local v18, report:Ljava/lang/String;
    if-eqz v18, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v30, v0

    const v31, 0x7f0a0011

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_23

    .line 376
    :cond_1e
    sget-object v30, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->NONE:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    .line 392
    :goto_d
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsReadReport:I

    move/from16 v30, v0

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 393
    if-eqz v18, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v30, v0

    const v31, 0x7f0a0011

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_25

    .line 395
    :cond_1f
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mReadReport:Z

    .line 408
    :goto_e
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v22

    .line 409
    .local v22, slide:Lcom/android/mms/model/SlideModel;
    if-eqz v22, :cond_20

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v30

    if-eqz v30, :cond_20

    .line 410
    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v26

    .line 411
    .local v26, tm:Lcom/android/mms/model/TextModel;
    invoke-virtual/range {v26 .. v26}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v30

    if-eqz v30, :cond_27

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    const v31, 0x7f0a0020

    invoke-virtual/range {v30 .. v31}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_3

    .line 427
    .end local v22           #slide:Lcom/android/mms/model/SlideModel;
    .end local v26           #tm:Lcom/android/mms/model/TextModel;
    :cond_20
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    goto/16 :goto_a

    .line 364
    .end local v18           #report:Ljava/lang/String;
    .restart local v13       #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    .restart local v20       #retrieveConf:Lcom/google/android/mms/pdu/RetrieveConf;
    :cond_21
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mIncomingGroupMessage:Z

    goto/16 :goto_b

    .line 369
    .end local v20           #retrieveConf:Lcom/google/android/mms/pdu/RetrieveConf;
    :cond_22
    const v30, 0x7f0a0011

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    .line 370
    check-cast v13, Lcom/google/android/mms/pdu/SendReq;

    .end local v13           #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    invoke-virtual {v13}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getDate()J

    move-result-wide v30

    const-wide/16 v32, 0x3e8

    mul-long v30, v30, v32

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    goto/16 :goto_c

    .line 380
    .restart local v18       #report:Ljava/lang/String;
    :cond_23
    :try_start_2
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 381
    .local v19, reportInt:I
    const/16 v30, 0x80

    move/from16 v0, v19

    move/from16 v1, v30

    if-ne v0, v1, :cond_24

    .line 382
    sget-object v30, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->RECEIVED:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_d

    .line 386
    .end local v19           #reportInt:I
    :catch_1
    move-exception v14

    .line 387
    .local v14, nfe:Ljava/lang/NumberFormatException;
    sget-object v30, Lcom/android/mms/ui/MessageItem;->TAG:Ljava/lang/String;

    const-string v31, "Value for delivery report was invalid."

    invoke-static/range {v30 .. v31}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    sget-object v30, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->NONE:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    goto/16 :goto_d

    .line 384
    .end local v14           #nfe:Ljava/lang/NumberFormatException;
    .restart local v19       #reportInt:I
    :cond_24
    :try_start_3
    sget-object v30, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->NONE:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_d

    .line 399
    .end local v19           #reportInt:I
    :cond_25
    :try_start_4
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 400
    .restart local v19       #reportInt:I
    const/16 v30, 0x80

    move/from16 v0, v19

    move/from16 v1, v30

    if-ne v0, v1, :cond_26

    const/16 v30, 0x1

    :goto_10
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mReadReport:Z
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_e

    .line 401
    .end local v19           #reportInt:I
    :catch_2
    move-exception v14

    .line 402
    .restart local v14       #nfe:Ljava/lang/NumberFormatException;
    sget-object v30, Lcom/android/mms/ui/MessageItem;->TAG:Ljava/lang/String;

    const-string v31, "Value for read report was invalid."

    invoke-static/range {v30 .. v31}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mReadReport:Z

    goto/16 :goto_e

    .line 400
    .end local v14           #nfe:Ljava/lang/NumberFormatException;
    .restart local v19       #reportInt:I
    :cond_26
    const/16 v30, 0x0

    goto :goto_10

    .line 414
    .end local v19           #reportInt:I
    .restart local v22       #slide:Lcom/android/mms/model/SlideModel;
    .restart local v26       #tm:Lcom/android/mms/model/TextModel;
    :cond_27
    :try_start_5
    invoke-virtual/range {v26 .. v26}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_f

    .line 422
    .end local v22           #slide:Lcom/android/mms/model/SlideModel;
    .end local v26           #tm:Lcom/android/mms/model/TextModel;
    :catch_3
    move-exception v8

    .line 423
    .local v8, e:Ljava/lang/IndexOutOfBoundsException;
    sget-object v30, Lcom/android/mms/ui/MessageItem;->TAG:Ljava/lang/String;

    const-string v31, "MMS has zero slides"

    invoke-static/range {v30 .. v31}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f

    .line 435
    .end local v8           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v16           #p:Lcom/google/android/mms/pdu/PduPersister;
    .end local v17           #rawAttachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/AttachmentModel;>;"
    .end local v18           #report:Ljava/lang/String;
    .end local v25           #subject:Ljava/lang/String;
    :cond_28
    const-string v30, "wpm"

    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_2c

    .line 436
    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mReadReport:Z

    .line 437
    sget-object v30, Lcom/android/mms/ui/MessageItem$DeliveryStatus;->NONE:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    .line 438
    sget-object v30, Lcom/android/mms/ui/MessageUtils;->WAP_PUSH_MESSAGE_BY_ID_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    move-wide/from16 v31, v0

    invoke-static/range {v30 .. v32}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    .line 442
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    .line 443
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsAddress:I

    move/from16 v30, v0

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    .line 444
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsRead:I

    move/from16 v30, v0

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/MessageItem;->mSMSRead:I

    .line 446
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsBody:I

    move/from16 v30, v0

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 447
    .local v4, body:Ljava/lang/String;
    const-wide/16 v9, 0x0

    .line 449
    .local v9, expiredTime:J
    :try_start_6
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnWpmSiExpires:I

    move/from16 v30, v0

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Long;->longValue()J
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_4

    move-result-wide v9

    .line 454
    :goto_11
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 455
    .local v5, calnow:Ljava/util/Calendar;
    const/16 v30, 0xe

    const/16 v31, 0x0

    move/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v5, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 456
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 458
    .local v6, currentTime:J
    const-wide/16 v30, 0x0

    cmp-long v30, v9, v30

    if-lez v30, :cond_29

    cmp-long v30, v6, v9

    if-ltz v30, :cond_29

    .line 459
    const v30, 0x7f0a0278

    move-object/from16 v0, p1

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    .line 470
    :goto_12
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsDate:I

    move/from16 v30, v0

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    .line 471
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsLocked:I

    move/from16 v30, v0

    move-object/from16 v0, p3

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    if-eqz v30, :cond_2b

    const/16 v30, 0x1

    :goto_13
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/mms/ui/MessageItem;->mLocked:Z

    .line 473
    const v30, 0x7f0a0015

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/ui/MessageItem;->mTimeMills:J

    move-wide/from16 v33, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v33

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->formatTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    move-object/from16 v0, p1

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mTimestamp:Ljava/lang/String;

    goto/16 :goto_6

    .line 450
    .end local v5           #calnow:Ljava/util/Calendar;
    .end local v6           #currentTime:J
    :catch_4
    move-exception v14

    .line 451
    .restart local v14       #nfe:Ljava/lang/NumberFormatException;
    sget-object v30, Lcom/android/mms/ui/MessageItem;->TAG:Ljava/lang/String;

    const-string v31, "only SI message has Expires Value not SL :  expiredTime set 0 "

    invoke-static/range {v30 .. v31}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11

    .line 461
    .end local v14           #nfe:Ljava/lang/NumberFormatException;
    .restart local v5       #calnow:Ljava/util/Calendar;
    .restart local v6       #currentTime:J
    :cond_29
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-nez v30, :cond_2a

    .line 462
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsBody:I

    move/from16 v31, v0

    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "\n"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    .line 467
    :goto_14
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnWpmHref:I

    move/from16 v31, v0

    move-object/from16 v0, p3

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    goto/16 :goto_12

    .line 464
    :cond_2a
    const-string v30, ""

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/MessageItem;->mBody:Ljava/lang/String;

    goto :goto_14

    .line 471
    :cond_2b
    const/16 v30, 0x0

    goto/16 :goto_13

    .line 476
    .end local v4           #body:Ljava/lang/String;
    .end local v5           #calnow:Ljava/util/Calendar;
    .end local v6           #currentTime:J
    .end local v9           #expiredTime:J
    :cond_2c
    new-instance v30, Lcom/google/android/mms/MmsException;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Unknown type of the message: "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v30
.end method

.method static synthetic access$002(Lcom/android/mms/ui/MessageItem;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput p1, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    return p1
.end method

.method private ensureValidityMultimediaMessagePdu(Lcom/google/android/mms/pdu/MultimediaMessagePdu;Lcom/google/android/mms/pdu/PduPersister;Landroid/net/Uri;)Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    .locals 6
    .parameter "msg"
    .parameter "p"
    .parameter "mMessageUri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 1027
    sget-object v3, Lcom/android/mms/ui/MessageItem;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ensureValidityMultimediaMessagePdu(): [MESSAGE_TYPE_RETRIEVE_CONF/132]mMessageType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    iget v3, p0, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    const/16 v4, 0x84

    if-ne v3, v4, :cond_2

    .line 1032
    const/4 v1, 0x1

    .line 1033
    .local v1, partsLoaded:Z
    const/4 v0, 0x1

    .line 1036
    .local v0, addressLoaded:Z
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v3

    if-nez v3, :cond_1

    .line 1037
    :cond_0
    const/4 v1, 0x0

    .line 1052
    :cond_1
    if-nez v1, :cond_2

    .line 1053
    const/4 v2, 0x0

    .line 1054
    .local v2, retryCount:I
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x5

    if-ge v2, v3, :cond_2

    .line 1056
    const-wide/16 v3, 0x320

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1060
    :goto_1
    invoke-static {}, Lcom/google/android/mms/util/PduCache;->getInstance()Lcom/google/android/mms/util/PduCache;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/mms/util/PduCache;->purgeAll()V

    .line 1061
    sget-object v3, Lcom/android/mms/ui/MessageItem;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " msg.getBody().getPartsNum() == 0 : purgeAll & p.load() again : retryCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    invoke-virtual {p2, p3}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    .line 1063
    .restart local p1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1057
    :catch_0
    move-exception v3

    goto :goto_1

    .line 1068
    .end local v0           #addressLoaded:Z
    .end local v1           #partsLoaded:Z
    .end local v2           #retryCount:I
    :cond_2
    return-object p1
.end method

.method private getPduForEmail(Lcom/google/android/mms/pdu/PduBody;)Lcom/google/android/mms/pdu/PduBody;
    .locals 25
    .parameter "pb"

    .prologue
    .line 482
    new-instance v17, Lcom/google/android/mms/pdu/PduBody;

    invoke-direct/range {v17 .. v17}, Lcom/google/android/mms/pdu/PduBody;-><init>()V

    .line 483
    .local v17, pBody:Lcom/google/android/mms/pdu/PduBody;
    const/4 v8, 0x0

    .local v8, count:I
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v19

    .line 484
    .local v19, partsNum:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    move/from16 v0, v19

    if-ge v12, v0, :cond_d

    .line 486
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v18

    .line 487
    .local v18, part:Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v10

    .line 488
    .local v10, dataArray:[B
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>([B)V

    .line 489
    .local v9, data:Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v22

    const/16 v23, 0x7d0

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_b

    .line 491
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v22

    move/from16 v0, v22

    div-int/lit16 v0, v0, 0x7d0

    move/from16 v22, v0

    add-int v8, v8, v22

    .line 492
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v22

    move/from16 v0, v22

    rem-int/lit16 v0, v0, 0x7d0

    move/from16 v22, v0

    if-lez v22, :cond_0

    .line 494
    add-int/lit8 v8, v8, 0x1

    .line 496
    :cond_0
    sget-object v22, Lcom/android/mms/ui/MessageItem;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "data.length()="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " count="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v22

    rsub-int/lit8 v22, v22, 0xa

    move/from16 v0, v22

    if-le v8, v0, :cond_1

    .line 499
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v22

    rsub-int/lit8 v8, v22, 0xa

    .line 501
    :cond_1
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v21

    .line 502
    .local v21, uri:Landroid/net/Uri;
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v4

    .line 503
    .local v4, contentId:[B
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    move-result v2

    .line 504
    .local v2, charset:I
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v5

    .line 505
    .local v5, contentLocation:[B
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/mms/pdu/PduPart;->getContentDisposition()[B

    move-result-object v3

    .line 506
    .local v3, contentDisposition:[B
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v7

    .line 507
    .local v7, contentType:[B
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/mms/pdu/PduPart;->getContentTransferEncoding()[B

    move-result-object v6

    .line 508
    .local v6, contentTransferEncoding:[B
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v15

    .line 509
    .local v15, name:[B
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v11

    .line 511
    .local v11, fileName:[B
    sget-object v22, Lcom/android/mms/ui/MessageItem;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, " charset "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " contentLocation "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    new-instance v24, Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " contentType "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    new-instance v24, Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-direct {v0, v7}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " name "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    new-instance v24, Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-direct {v0, v15}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    const/4 v13, 0x0

    .local v13, j:I
    :goto_1
    if-ge v13, v8, :cond_c

    .line 514
    new-instance v16, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 515
    .local v16, newPart:Lcom/google/android/mms/pdu/PduPart;
    mul-int/lit16 v0, v13, 0x7d0

    move/from16 v22, v0

    mul-int/lit16 v0, v13, 0x7d0

    move/from16 v23, v0

    move/from16 v0, v23

    add-int/lit16 v0, v0, 0x7d0

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 516
    .local v20, sub:Ljava/lang/String;
    sget-object v22, Lcom/android/mms/ui/MessageItem;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "sub"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    .line 518
    .local v14, myData:[B
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/google/android/mms/pdu/PduPart;->setCharset(I)V

    .line 519
    if-eqz v3, :cond_2

    .line 520
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    .line 521
    :cond_2
    if-eqz v4, :cond_3

    .line 522
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 523
    :cond_3
    if-eqz v5, :cond_4

    .line 524
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 525
    :cond_4
    if-eqz v6, :cond_5

    .line 526
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lcom/google/android/mms/pdu/PduPart;->setContentTransferEncoding([B)V

    .line 527
    :cond_5
    if-eqz v7, :cond_6

    .line 528
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 529
    :cond_6
    if-eqz v14, :cond_7

    .line 530
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 531
    :cond_7
    if-eqz v21, :cond_8

    if-nez v13, :cond_8

    .line 532
    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setDataUri(Landroid/net/Uri;)V

    .line 533
    :cond_8
    if-eqz v11, :cond_9

    .line 534
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Lcom/google/android/mms/pdu/PduPart;->setFilename([B)V

    .line 535
    :cond_9
    if-eqz v15, :cond_a

    .line 536
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/google/android/mms/pdu/PduPart;->setName([B)V

    .line 538
    :cond_a
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    .line 513
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 543
    .end local v2           #charset:I
    .end local v3           #contentDisposition:[B
    .end local v4           #contentId:[B
    .end local v5           #contentLocation:[B
    .end local v6           #contentTransferEncoding:[B
    .end local v7           #contentType:[B
    .end local v11           #fileName:[B
    .end local v13           #j:I
    .end local v14           #myData:[B
    .end local v15           #name:[B
    .end local v16           #newPart:Lcom/google/android/mms/pdu/PduPart;
    .end local v20           #sub:Ljava/lang/String;
    .end local v21           #uri:Landroid/net/Uri;
    :cond_b
    add-int/lit8 v8, v8, 0x1

    .line 544
    invoke-virtual/range {v17 .. v18}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    .line 484
    :cond_c
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 547
    .end local v9           #data:Ljava/lang/String;
    .end local v10           #dataArray:[B
    .end local v18           #part:Lcom/google/android/mms/pdu/PduPart;
    :cond_d
    return-object v17
.end method

.method private interpretFrom(Lcom/google/android/mms/pdu/EncodedStringValue;Landroid/net/Uri;)V
    .locals 2
    .parameter "from"
    .parameter "messageUri"

    .prologue
    .line 551
    if-eqz p1, :cond_0

    .line 552
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    .line 560
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    :goto_1
    iput-object v0, p0, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    .line 561
    return-void

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/android/mms/util/AddressUtils;->getFrom(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    goto :goto_0

    .line 560
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 830
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getBoxId()I
    .locals 1

    .prologue
    .line 776
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isGroupSms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 777
    iget v0, p0, Lcom/android/mms/ui/MessageItem;->mGroupType:I

    .line 779
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    goto :goto_0
.end method

.method public getCachedBottomFormattedMessage()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 765
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isSending()Z

    move-result v0

    .line 766
    .local v0, isSending:Z
    iget-boolean v1, p0, Lcom/android/mms/ui/MessageItem;->mLastSendingState:Z

    if-eq v0, v1, :cond_0

    .line 767
    iput-boolean v0, p0, Lcom/android/mms/ui/MessageItem;->mLastSendingState:Z

    .line 768
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/ui/MessageItem;->mCachedTopFormattedMessage:Ljava/lang/CharSequence;

    .line 771
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mCachedTopFormattedMessage:Ljava/lang/CharSequence;

    return-object v1
.end method

.method public getCachedFormattedMessage()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 751
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isSending()Z

    move-result v0

    .line 752
    .local v0, isSending:Z
    iget-boolean v1, p0, Lcom/android/mms/ui/MessageItem;->mLastSendingState:Z

    if-eq v0, v1, :cond_0

    .line 753
    iput-boolean v0, p0, Lcom/android/mms/ui/MessageItem;->mLastSendingState:Z

    .line 754
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/ui/MessageItem;->mCachedFormattedMessage:Ljava/lang/CharSequence;

    .line 757
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mCachedFormattedMessage:Ljava/lang/CharSequence;

    return-object v1
.end method

.method public getMessageSize()I
    .locals 1

    .prologue
    .line 826
    iget v0, p0, Lcom/android/mms/ui/MessageItem;->mMessageSize:I

    return v0
.end method

.method public getMessageUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 810
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isGroupSms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 811
    sget-object v0, Lcom/android/mms/ui/MessageUtils;->SMS_GROUP_CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 813
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method public getMsgId()J
    .locals 2

    .prologue
    .line 797
    iget-wide v0, p0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    return-wide v0
.end method

.method public getReserved()J
    .locals 2

    .prologue
    .line 1073
    iget-wide v0, p0, Lcom/android/mms/ui/MessageItem;->mReserved:J

    return-wide v0
.end method

.method public getThreadId()J
    .locals 2

    .prologue
    .line 801
    iget-wide v0, p0, Lcom/android/mms/ui/MessageItem;->mThreadId:J

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 818
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public hasMmsDeliveryFailed()Z
    .locals 20

    .prologue
    .line 835
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableGroupMessage()Z

    move-result v1

    if-nez v1, :cond_1

    .line 836
    const/4 v1, 0x0

    .line 909
    :cond_0
    :goto_0
    return v1

    .line 838
    :cond_1
    const/16 v16, 0x0

    .line 839
    .local v16, messageUri:Landroid/net/Uri;
    const/4 v15, 0x0

    .local v15, cursor:Landroid/database/Cursor;
    const/4 v14, 0x0

    .line 840
    .local v14, c_status:Landroid/database/Cursor;
    const/4 v13, 0x0

    .line 841
    .local v13, c:Landroid/database/Cursor;
    const/16 v17, 0x0

    .line 842
    .local v17, message_id:Ljava/lang/String;
    const/16 v19, 0x0

    .local v19, status:I
    const/16 v18, 0x0

    .line 843
    .local v18, msgBox:I
    const/4 v12, 0x1

    .line 844
    .local v12, COLUMN_MMS_DELIVERY_STATUS:I
    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "address"

    aput-object v2, v4, v1

    const/4 v1, 0x1

    const-string v2, "d_rpt"

    aput-object v2, v4, v1

    const/4 v1, 0x2

    const-string v2, "rr"

    aput-object v2, v4, v1

    .line 849
    .local v4, MMS_REQUEST_PROJECTION:[Ljava/lang/String;
    const/4 v1, 0x5

    new-array v8, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "address"

    aput-object v2, v8, v1

    const/4 v1, 0x1

    const-string v2, "delivery_status"

    aput-object v2, v8, v1

    const/4 v1, 0x2

    const-string v2, "delivery_date"

    aput-object v2, v8, v1

    const/4 v1, 0x3

    const-string v2, "read_status"

    aput-object v2, v8, v1

    const/4 v1, 0x4

    const-string v2, "read_date"

    aput-object v2, v8, v1

    .line 856
    .local v8, MMS_REPORT_STATUS_PROJECTION:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    .line 857
    const-string v1, "NGM"

    const-string v2, "The mBoxId is ! MESSAGE_BOX_SENT"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    const/4 v1, 0x0

    goto :goto_0

    .line 863
    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/mms/ui/MessageItem;->mRequestCount:I

    if-nez v1, :cond_6

    .line 865
    sget-object v1, Landroid/provider/Telephony$Mms;->REPORT_REQUEST_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 867
    .local v3, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 869
    if-eqz v13, :cond_3

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-gtz v1, :cond_5

    .line 870
    :cond_3
    const/4 v1, 0x0

    .line 904
    if-eqz v13, :cond_4

    .line 905
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 906
    :cond_4
    if-eqz v14, :cond_0

    .line 907
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 872
    :cond_5
    :try_start_1
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/mms/ui/MessageItem;->mRequestCount:I

    .line 874
    .end local v3           #uri:Landroid/net/Uri;
    :cond_6
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/mms/ui/MessageItem;->mRequestCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_8

    .line 875
    const/4 v1, 0x0

    .line 904
    if-eqz v13, :cond_7

    .line 905
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 906
    :cond_7
    if-eqz v14, :cond_0

    .line 907
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 877
    :cond_8
    const/4 v1, 0x0

    :try_start_2
    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/mms/ui/MessageItem;->mDeliverCount:I

    .line 878
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/mms/ui/MessageItem;->mFailedCount:I

    .line 879
    sget-object v1, Landroid/provider/Telephony$Mms;->REPORT_STATUS_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 880
    .local v7, uri_status:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 883
    if-eqz v14, :cond_9

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-gtz v1, :cond_b

    .line 884
    :cond_9
    const/4 v1, 0x1

    .line 904
    if-eqz v13, :cond_a

    .line 905
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 906
    :cond_a
    if-eqz v14, :cond_0

    .line 907
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 891
    :pswitch_0
    :try_start_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/mms/ui/MessageItem;->mDeliverCount:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/mms/ui/MessageItem;->mDeliverCount:I

    .line 886
    :cond_b
    :goto_1
    :pswitch_1
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 887
    invoke-interface {v14, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 888
    packed-switch v19, :pswitch_data_0

    .line 897
    :pswitch_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/mms/ui/MessageItem;->mFailedCount:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/mms/ui/MessageItem;->mFailedCount:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 904
    .end local v7           #uri_status:Landroid/net/Uri;
    :catchall_0
    move-exception v1

    if-eqz v13, :cond_c

    .line 905
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 906
    :cond_c
    if-eqz v14, :cond_d

    .line 907
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_d
    throw v1

    .line 904
    .restart local v7       #uri_status:Landroid/net/Uri;
    :cond_e
    if-eqz v13, :cond_f

    .line 905
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 906
    :cond_f
    if-eqz v14, :cond_10

    .line 907
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 909
    :cond_10
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 888
    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public isDelivered()Z
    .locals 2

    .prologue
    .line 920
    iget v0, p0, Lcom/android/mms/ui/MessageItem;->mRequestCount:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/mms/ui/MessageItem;->mRequestCount:I

    iget v1, p0, Lcom/android/mms/ui/MessageItem;->mDeliverCount:I

    if-ne v0, v1, :cond_0

    .line 922
    const/4 v0, 0x1

    .line 924
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDownloaded()Z
    .locals 2

    .prologue
    .line 587
    iget v0, p0, Lcom/android/mms/ui/MessageItem;->mMessageType:I

    const/16 v1, 0x82

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDraftMessage()Z
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 674
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    if-ne v4, v5, :cond_2

    move v0, v2

    .line 675
    .local v0, isDraftMms:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/android/mms/ui/MessageItem;->mBoxId:I

    if-ne v4, v5, :cond_3

    move v1, v2

    .line 676
    .local v1, isDraftSms:Z
    :goto_1
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    move v3, v2

    :cond_1
    return v3

    .end local v0           #isDraftMms:Z
    .end local v1           #isDraftSms:Z
    :cond_2
    move v0, v3

    .line 674
    goto :goto_0

    .restart local v0       #isDraftMms:Z
    :cond_3
    move v1, v3

    .line 675
    goto :goto_1
.end method

.method public isFailed()Z
    .locals 1

    .prologue
    .line 914
    iget v0, p0, Lcom/android/mms/ui/MessageItem;->mFailedCount:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFailedMessage()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 625
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isOutgoingMessage()Z

    move-result v4

    if-nez v4, :cond_1

    .line 645
    :cond_0
    :goto_0
    return v3

    .line 628
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/android/mms/ui/MessageItem;->mErrorType:I

    const/16 v5, 0xa

    if-lt v4, v5, :cond_3

    move v0, v2

    .line 629
    .local v0, isFailedMms:Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_4

    move v1, v2

    .line 645
    .local v1, isFailedSms:Z
    :goto_2
    if-nez v0, :cond_2

    if-eqz v1, :cond_0

    :cond_2
    move v3, v2

    goto :goto_0

    .end local v0           #isFailedMms:Z
    .end local v1           #isFailedSms:Z
    :cond_3
    move v0, v3

    .line 628
    goto :goto_1

    .restart local v0       #isFailedMms:Z
    :cond_4
    move v1, v3

    .line 629
    goto :goto_2
.end method

.method public isFailedMmsInFolderView()Z
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 651
    const/4 v8, 0x0

    .line 652
    .local v8, err_type:I
    const/4 v9, 0x0

    .line 654
    .local v9, isFailedMms:Z
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "msg_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 657
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 658
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 659
    const-string v0, "err_type"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 662
    :cond_0
    if-eqz v7, :cond_1

    .line 663
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 667
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0xa

    if-lt v8, v0, :cond_3

    const/4 v9, 0x1

    .line 669
    :goto_0
    return v9

    .line 662
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 663
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 667
    :cond_3
    const/4 v9, 0x0

    goto :goto_0
.end method

.method public isGroupSms()Z
    .locals 4

    .prologue
    .line 806
    iget-wide v0, p0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    iget-wide v2, p0, Lcom/android/mms/ui/MessageItem;->mGroupId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInboxMessage()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 608
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v0

    .line 609
    .local v0, boxId:I
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v5

    if-eqz v5, :cond_2

    if-ne v0, v3, :cond_2

    move v1, v3

    .line 610
    .local v1, isInboxMms:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v5

    if-eqz v5, :cond_3

    if-ne v0, v3, :cond_3

    move v2, v3

    .line 611
    .local v2, isInboxSms:Z
    :goto_1
    if-nez v1, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    move v4, v3

    :cond_1
    return v4

    .end local v1           #isInboxMms:Z
    .end local v2           #isInboxSms:Z
    :cond_2
    move v1, v4

    .line 609
    goto :goto_0

    .restart local v1       #isInboxMms:Z
    :cond_3
    move v2, v4

    .line 610
    goto :goto_1
.end method

.method public isMms()Z
    .locals 2

    .prologue
    .line 572
    const-string v0, "mms"

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isOutgoingMessage()Z
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 591
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v0

    .line 592
    .local v0, boxId:I
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v5

    if-eqz v5, :cond_3

    if-ne v0, v6, :cond_3

    move v1, v3

    .line 593
    .local v1, isOutgoingMms:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x5

    if-eq v0, v5, :cond_0

    if-eq v0, v6, :cond_0

    const/4 v5, 0x6

    if-ne v0, v5, :cond_4

    :cond_0
    move v2, v3

    .line 595
    .local v2, isOutgoingSms:Z
    :goto_1
    if-nez v1, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    move v4, v3

    :cond_2
    return v4

    .end local v1           #isOutgoingMms:Z
    .end local v2           #isOutgoingSms:Z
    :cond_3
    move v1, v4

    .line 592
    goto :goto_0

    .restart local v1       #isOutgoingMms:Z
    :cond_4
    move v2, v4

    .line 593
    goto :goto_1
.end method

.method public isQueuedMSG()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 600
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v0

    .line 601
    .local v0, boxId:I
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x6

    if-ne v0, v5, :cond_2

    move v2, v3

    .line 602
    .local v2, isQueuedSms:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x4

    if-ne v0, v5, :cond_3

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v5

    if-nez v5, :cond_3

    move v1, v3

    .line 604
    .local v1, isQueuedMms:Z
    :goto_1
    if-nez v2, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    move v4, v3

    :cond_1
    return v4

    .end local v1           #isQueuedMms:Z
    .end local v2           #isQueuedSms:Z
    :cond_2
    move v2, v4

    .line 601
    goto :goto_0

    .restart local v2       #isQueuedSms:Z
    :cond_3
    move v1, v4

    .line 602
    goto :goto_1
.end method

.method public isReadMessage()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 619
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/mms/ui/MessageItem;->mMMSRead:I

    if-ne v4, v2, :cond_2

    move v0, v2

    .line 620
    .local v0, isReadMms:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/android/mms/ui/MessageItem;->mSMSRead:I

    if-ne v4, v2, :cond_3

    move v1, v2

    .line 621
    .local v1, isReadSms:Z
    :goto_1
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    move v3, v2

    :cond_1
    return v3

    .end local v0           #isReadMms:Z
    .end local v1           #isReadSms:Z
    :cond_2
    move v0, v3

    .line 619
    goto :goto_0

    .restart local v0       #isReadMms:Z
    :cond_3
    move v1, v3

    .line 620
    goto :goto_1
.end method

.method public isSending()Z
    .locals 1

    .prologue
    .line 615
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isOutgoingMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSms()Z
    .locals 2

    .prologue
    .line 576
    const-string v0, "sms"

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSpam()Z
    .locals 1

    .prologue
    .line 822
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageItem;->mIsSpam:Z

    return v0
.end method

.method public isWpm()Z
    .locals 2

    .prologue
    .line 581
    const-string v0, "wpm"

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setCachedBottomFormattedMessage(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "formattedMessage"

    .prologue
    .line 761
    iput-object p1, p0, Lcom/android/mms/ui/MessageItem;->mCachedTopFormattedMessage:Ljava/lang/CharSequence;

    .line 762
    return-void
.end method

.method public setCachedFormattedMessage(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "formattedMessage"

    .prologue
    .line 747
    iput-object p1, p0, Lcom/android/mms/ui/MessageItem;->mCachedFormattedMessage:Ljava/lang/CharSequence;

    .line 748
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 786
    invoke-static {}, Lcom/android/mms/Log;->isPrintSecured()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 787
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " box: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->getBoxId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " address: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " contact: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mContact:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " read: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/mms/ui/MessageItem;->mReadReport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " delivery status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mDeliveryStatus:Lcom/android/mms/ui/MessageItem$DeliveryStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 791
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "MessageItem"

    goto :goto_0
.end method

.method public updateFailedFlag()V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 681
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 682
    sget-object v0, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v9

    .line 683
    .local v9, uriBuilder:Landroid/net/Uri$Builder;
    const-string v0, "protocol"

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v9, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 684
    const-string v0, "message"

    iget-wide v1, p0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 686
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v9}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 689
    .local v7, failedCursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 691
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 692
    const-string v0, "err_type"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/MessageItem;->mErrorType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 696
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 720
    .end local v7           #failedCursor:Landroid/database/Cursor;
    .end local v9           #uriBuilder:Landroid/net/Uri$Builder;
    :cond_1
    :goto_0
    return-void

    .line 696
    .restart local v7       #failedCursor:Landroid/database/Cursor;
    .restart local v9       #uriBuilder:Landroid/net/Uri$Builder;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 700
    .end local v7           #failedCursor:Landroid/database/Cursor;
    .end local v9           #uriBuilder:Landroid/net/Uri$Builder;
    :cond_2
    new-instance v8, Ljava/lang/Thread;

    new-instance v0, Lcom/android/mms/ui/MessageItem$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageItem$1;-><init>(Lcom/android/mms/ui/MessageItem;)V

    const-string v1, "msg:Getting value from cursor MessageItem"

    invoke-direct {v8, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 718
    .local v8, thread:Ljava/lang/Thread;
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public updatePendingStatus()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 724
    const/4 v6, 0x0

    .line 726
    .local v6, nullStirng:Ljava/lang/String;
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x4

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 727
    .local v3, values:Landroid/content/ContentValues;
    const-string v0, "err_type"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 728
    const-string v0, "retry_index"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 729
    const-string v0, "due_time"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 730
    const-string v0, "last_try"

    invoke-virtual {v3, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    iget-object v0, p0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/MessageItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "msg_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v7, p0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 739
    return-void
.end method
