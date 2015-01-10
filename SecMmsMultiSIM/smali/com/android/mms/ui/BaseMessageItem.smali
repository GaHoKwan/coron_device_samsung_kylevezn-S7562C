.class public Lcom/android/mms/ui/BaseMessageItem;
.super Ljava/lang/Object;
.source "BaseMessageItem.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field mAddress:Ljava/lang/String;

.field mAttachmentType:I

.field mBody:Ljava/lang/String;

.field private final mBoxId:I

.field mContact:Ljava/lang/String;

.field final mContext:Landroid/content/Context;

.field mGroupId:J

.field mGroupType:I

.field mMessageType:I

.field final mMsgId:J

.field mRecipientIds:Ljava/lang/String;

.field mSubject:Ljava/lang/String;

.field final mThreadId:J

.field mTime:J

.field mTimestamp:Ljava/lang/String;

.field final mType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "Mms/ConversationMessageItem"

    sput-object v0, Lcom/android/mms/ui/BaseMessageItem;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;)V
    .locals 10
    .parameter "context"
    .parameter "type"
    .parameter "cursor"
    .parameter "columnsMap"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/android/mms/ui/BaseMessageItem;->mGroupId:J

    .line 63
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/mms/ui/BaseMessageItem;->mGroupType:I

    .line 68
    iput-object p1, p0, Lcom/android/mms/ui/BaseMessageItem;->mContext:Landroid/content/Context;

    .line 69
    iget v5, p4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgId:I

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/mms/ui/BaseMessageItem;->mMsgId:J

    .line 70
    iput-object p2, p0, Lcom/android/mms/ui/BaseMessageItem;->mType:Ljava/lang/String;

    .line 71
    iget v5, p4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnThreadId:I

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/mms/ui/BaseMessageItem;->mThreadId:J

    .line 72
    iget-wide v5, p0, Lcom/android/mms/ui/BaseMessageItem;->mThreadId:J

    invoke-static {p1, v5, v6}, Lcom/android/mms/ui/MessageUtils;->getRecipientIdsByThreadId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/ui/BaseMessageItem;->mRecipientIds:Ljava/lang/String;

    .line 74
    const-string v5, "sms"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 76
    iget v5, p4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsType:I

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, p0, Lcom/android/mms/ui/BaseMessageItem;->mBoxId:I

    .line 77
    iget v5, p4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsAddress:I

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/ui/BaseMessageItem;->mAddress:Ljava/lang/String;

    .line 79
    iget v5, p0, Lcom/android/mms/ui/BaseMessageItem;->mBoxId:I

    invoke-static {v5}, Landroid/provider/Telephony$Sms;->isOutgoingFolder(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 80
    const v5, 0x7f0a0011

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, meString:Ljava/lang/String;
    iput-object v2, p0, Lcom/android/mms/ui/BaseMessageItem;->mContact:Ljava/lang/String;

    .line 88
    .end local v2           #meString:Ljava/lang/String;
    :goto_0
    iget v5, p4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsBody:I

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/ui/BaseMessageItem;->mBody:Ljava/lang/String;

    .line 91
    iget v5, p4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsDate:I

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 94
    .local v0, date:J
    iput-wide v0, p0, Lcom/android/mms/ui/BaseMessageItem;->mTime:J

    .line 96
    invoke-virtual {p0}, Lcom/android/mms/ui/BaseMessageItem;->isOutgoingMessage()Z

    move-result v5

    if-nez v5, :cond_0

    .line 97
    const v5, 0x7f0a0015

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/mms/ui/MessageUtils;->formatTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/ui/BaseMessageItem;->mTimestamp:Ljava/lang/String;

    .line 123
    .end local v0           #date:J
    :cond_0
    :goto_1
    return-void

    .line 85
    :cond_1
    iget-object v5, p0, Lcom/android/mms/ui/BaseMessageItem;->mAddress:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, ""

    :goto_2
    iput-object v5, p0, Lcom/android/mms/ui/BaseMessageItem;->mContact:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/android/mms/ui/BaseMessageItem;->mAddress:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 100
    :cond_3
    const-string v5, "mms"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 101
    iget v5, p4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsMessageBox:I

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, p0, Lcom/android/mms/ui/BaseMessageItem;->mBoxId:I

    .line 102
    iget v5, p4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsMessageType:I

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, p0, Lcom/android/mms/ui/BaseMessageItem;->mMessageType:I

    .line 103
    iget v5, p4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsSubject:I

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 104
    .local v3, subject:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 109
    new-instance v4, Lcom/google/android/mms/pdu/EncodedStringValue;

    iget v5, p4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsSubjectCharset:I

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-direct {v4, v5, v3}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(ILjava/lang/String;)V

    .line 111
    .local v4, v:Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual {v4}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/ui/BaseMessageItem;->mSubject:Ljava/lang/String;

    .line 114
    .end local v4           #v:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_4
    iget v5, p4, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsDate:I

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    iput-wide v5, p0, Lcom/android/mms/ui/BaseMessageItem;->mTime:J

    .line 116
    invoke-virtual {p0}, Lcom/android/mms/ui/BaseMessageItem;->isOutgoingMessage()Z

    move-result v5

    if-nez v5, :cond_0

    .line 117
    const v5, 0x7f0a0015

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-wide v8, p0, Lcom/android/mms/ui/BaseMessageItem;->mTime:J

    invoke-static {p1, v8, v9}, Lcom/android/mms/ui/MessageUtils;->formatTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/ui/BaseMessageItem;->mTimestamp:Ljava/lang/String;

    goto :goto_1

    .line 121
    .end local v3           #subject:Ljava/lang/String;
    :cond_5
    new-instance v5, Lcom/google/android/mms/MmsException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown type of the message: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v5
.end method


# virtual methods
.method public getBoxId()I
    .locals 1

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/android/mms/ui/BaseMessageItem;->isGroupSms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget v0, p0, Lcom/android/mms/ui/BaseMessageItem;->mGroupType:I

    .line 149
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/mms/ui/BaseMessageItem;->mBoxId:I

    goto :goto_0
.end method

.method public getMsgId()J
    .locals 2

    .prologue
    .line 138
    iget-wide v0, p0, Lcom/android/mms/ui/BaseMessageItem;->mMsgId:J

    return-wide v0
.end method

.method public getThreadId()J
    .locals 2

    .prologue
    .line 142
    iget-wide v0, p0, Lcom/android/mms/ui/BaseMessageItem;->mThreadId:J

    return-wide v0
.end method

.method public isGroupSms()Z
    .locals 4

    .prologue
    .line 134
    iget-wide v0, p0, Lcom/android/mms/ui/BaseMessageItem;->mMsgId:J

    iget-wide v2, p0, Lcom/android/mms/ui/BaseMessageItem;->mGroupId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMms()Z
    .locals 2

    .prologue
    .line 126
    const-string v0, "mms"

    iget-object v1, p0, Lcom/android/mms/ui/BaseMessageItem;->mType:Ljava/lang/String;

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

    .line 153
    invoke-virtual {p0}, Lcom/android/mms/ui/BaseMessageItem;->getBoxId()I

    move-result v0

    .line 154
    .local v0, boxId:I
    invoke-virtual {p0}, Lcom/android/mms/ui/BaseMessageItem;->isMms()Z

    move-result v5

    if-eqz v5, :cond_3

    if-ne v0, v6, :cond_3

    move v1, v3

    .line 155
    .local v1, isOutgoingMms:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/BaseMessageItem;->isSms()Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x5

    if-eq v0, v5, :cond_0

    if-eq v0, v6, :cond_0

    const/4 v5, 0x6

    if-ne v0, v5, :cond_4

    :cond_0
    move v2, v3

    .line 157
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

    .line 154
    goto :goto_0

    .restart local v1       #isOutgoingMms:Z
    :cond_4
    move v2, v4

    .line 155
    goto :goto_1
.end method

.method public isSms()Z
    .locals 2

    .prologue
    .line 130
    const-string v0, "sms"

    iget-object v1, p0, Lcom/android/mms/ui/BaseMessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
