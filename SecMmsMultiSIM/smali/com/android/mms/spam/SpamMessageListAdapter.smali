.class public Lcom/android/mms/spam/SpamMessageListAdapter;
.super Landroid/widget/CursorAdapter;
.source "SpamMessageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/spam/SpamMessageListAdapter$OnContentChangedListener;,
        Lcom/android/mms/spam/SpamMessageListAdapter$OnDataSetChangedListener;,
        Lcom/android/mms/spam/SpamMessageListAdapter$ArrayData;
    }
.end annotation


# static fields
.field private static final CACHE_SIZE:I = 0x32

.field static final COLUMN_ID:I = 0x1

.field static final COLUMN_MMS_DATE:I = 0xf

.field static final COLUMN_MMS_DELIVERY_REPORT:I = 0xb

.field static final COLUMN_MMS_ERROR_TYPE:I = 0xd

.field static final COLUMN_MMS_LOCKED:I = 0xe

.field static final COLUMN_MMS_MESSAGE_TYPE:I = 0xa

.field static final COLUMN_MMS_READ_REPORT:I = 0xc

.field static final COLUMN_MMS_SUBJECT:I = 0x8

.field static final COLUMN_MMS_SUBJECT_CHARSET:I = 0x9

.field static final COLUMN_MSG_TYPE:I = 0x0

.field static final COLUMN_SMS_ADDRESS:I = 0x2

.field static final COLUMN_SMS_BODY:I = 0x3

.field static final COLUMN_SMS_DATE:I = 0x4

.field static final COLUMN_SMS_READ:I = 0x5

.field static final COLUMN_SMS_STATUS:I = 0x7

.field static final COLUMN_SMS_TYPE:I = 0x6

.field static final COLUMN_WPM_DATE:I = 0x4

.field static final COLUMN_WPM_PUSH_TYPE:I = 0x6

.field static final COLUMN_WPM_READ:I = 0x5

.field static final COLUMN_WPM_TEXT:I = 0x3

.field public static final INCOMING_ITEM_TYPE:I = 0x0

.field public static final OUTGOING_ITEM_TYPE:I = 0x1

.field static final PROJECTION:[Ljava/lang/String; = null

.field public static SPAM_SELECTION_LIST_V2:Z = false

.field private static final TAG:Ljava/lang/String; = "Mms/SpamMessageListAdapter"

.field private static mDefaultContactImage:Landroid/graphics/drawable/Drawable;


# instance fields
.field mAvatarView:Landroid/widget/QuickContactBadge;

.field private mCheckedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedMmsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedSmsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedWpmList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

.field private mHighlight:Ljava/lang/String;

.field protected mInflater:Landroid/view/LayoutInflater;

.field private mListView:Landroid/widget/ListView;

.field private final mMessageItemCache:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/mms/ui/MessageItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMode:I

.field protected mMsgListItemHandler:Landroid/os/Handler;

.field private mOnContentChangedListener:Lcom/android/mms/spam/SpamMessageListAdapter$OnContentChangedListener;

.field private mOnDataSetChangedListener:Lcom/android/mms/spam/SpamMessageListAdapter$OnDataSetChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 69
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "transport_type"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "address"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "body"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "read"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "sub"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "sub_cs"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "m_type"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "msg_box"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "d_rpt"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "rr"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "err_type"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "locked"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "date"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/spam/SpamMessageListAdapter;->PROJECTION:[Ljava/lang/String;

    .line 122
    sput-boolean v3, Lcom/android/mms/spam/SpamMessageListAdapter;->SPAM_SELECTION_LIST_V2:Z

    .line 135
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/spam/SpamMessageListAdapter;->mDefaultContactImage:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/ListView;ZLjava/lang/String;ZI)V
    .locals 1
    .parameter "context"
    .parameter "c"
    .parameter "listView"
    .parameter "useDefaultColumnsMap"
    .parameter "highlight"
    .parameter "autoRequery"
    .parameter "mode"

    .prologue
    .line 176
    invoke-direct {p0, p1, p2, p6}, Lcom/android/mms/spam/SpamMessageListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 180
    if-eqz p5, :cond_0

    invoke-virtual {p5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/mms/spam/SpamMessageListAdapter;->mHighlight:Ljava/lang/String;

    .line 181
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/mms/spam/SpamMessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 182
    iput-object p3, p0, Lcom/android/mms/spam/SpamMessageListAdapter;->mListView:Landroid/widget/ListView;

    .line 183
    if-eqz p4, :cond_1

    .line 184
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v0}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/spam/SpamMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    .line 188
    :goto_1
    iput p7, p0, Lcom/android/mms/spam/SpamMessageListAdapter;->mMode:I

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/spam/SpamMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/spam/SpamMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/spam/SpamMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    .line 197
    iget-object v0, p0, Lcom/android/mms/spam/SpamMessageListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 198
    return-void

    .line 180
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 186
    :cond_1
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v0, p2}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>(Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/mms/spam/SpamMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 4
    .parameter "context"
    .parameter "c"
    .parameter "autoRequery"

    .prologue
    .line 162
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/spam/SpamMessageListAdapter;->mListView:Landroid/widget/ListView;

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/spam/SpamMessageListAdapter;->mCheckedList:Ljava/util/ArrayList;

    .line 164
    new-instance v0, Lcom/android/mms/spam/SpamMessageListAdapter$1;

    const/16 v1, 0xa

    const/high16 v2, 0x3f80

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/mms/spam/SpamMessageListAdapter$1;-><init>(Lcom/android/mms/spam/SpamMessageListAdapter;IFZ)V

    iput-object v0, p0, Lcom/android/mms/spam/SpamMessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    .line 170
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/spam/SpamMessageListAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/spam/SpamMessageListAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/android/mms/spam/SpamMessageListAdapter;->mMode:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/mms/spam/SpamMessageListAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/spam/SpamMessageListAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/spam/SpamMessageListAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static getKey(Ljava/lang/String;J)J
    .locals 1
    .parameter "type"
    .parameter "id"

    .prologue
    .line 565
    const-string v0, "mms"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 566
    neg-long p1, p1

    .line 568
    .end local p1
    :cond_0
    return-wide p1
.end method

.method private getMultimediaMessageSender(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 9
    .parameter "cursor"

    .prologue
    .line 665
    const-string v6, "Mms/SpamMessageListAdapter"

    const-string v7, "getMultimediaMessageSender"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    const-string v6, "_id"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 667
    .local v2, id:J
    sget-object v6, Lcom/android/mms/spam/SpamFilter;->SPAM_MMS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 673
    .local v5, uri:Landroid/net/Uri;
    :try_start_0
    iget-object v6, p0, Landroid/widget/CursorAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v4

    check-cast v4, Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 679
    .local v4, msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    const-string v1, ""

    .line 680
    .local v1, from:Ljava/lang/String;
    instance-of v6, v4, Lcom/google/android/mms/pdu/RetrieveConf;

    if-eqz v6, :cond_0

    .line 682
    iget-object v6, p0, Landroid/widget/CursorAdapter;->mContext:Landroid/content/Context;

    check-cast v4, Lcom/google/android/mms/pdu/RetrieveConf;

    .end local v4           #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    invoke-virtual {v4}, Lcom/google/android/mms/pdu/RetrieveConf;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/ui/MessageUtils;->extractEncStr(Landroid/content/Context;Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v1

    .line 686
    .end local v1           #from:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 674
    :catch_0
    move-exception v0

    .line 675
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v6, "Mms/SpamMessageListAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to load the message: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 676
    iget-object v6, p0, Landroid/widget/CursorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a00a3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getNotificationIndSender(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 9
    .parameter "cursor"

    .prologue
    .line 643
    const-string v6, "Mms/SpamMessageListAdapter"

    const-string v7, "getNotificationIndSender"

    invoke-static {v6, v7}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    const-string v6, "_id"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 645
    .local v2, id:J
    sget-object v6, Lcom/android/mms/spam/SpamFilter;->SPAM_MMS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 651
    .local v5, uri:Landroid/net/Uri;
    :try_start_0
    iget-object v6, p0, Landroid/widget/CursorAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v4

    check-cast v4, Lcom/google/android/mms/pdu/NotificationInd;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 658
    .local v4, nInd:Lcom/google/android/mms/pdu/NotificationInd;
    iget-object v6, p0, Landroid/widget/CursorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/NotificationInd;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/mms/ui/MessageUtils;->extractEncStr(Landroid/content/Context;Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v1

    .line 661
    .end local v4           #nInd:Lcom/google/android/mms/pdu/NotificationInd;
    :goto_0
    return-object v1

    .line 652
    :catch_0
    move-exception v0

    .line 653
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v6, "Mms/SpamMessageListAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to load the message: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 654
    iget-object v6, p0, Landroid/widget/CursorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a00a3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static isChecked(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 575
    const/4 v0, 0x1

    return v0
.end method

.method private updateAvatar(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "address"

    .prologue
    const v6, 0x7f02023c

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 435
    iget-object v2, p0, Lcom/android/mms/spam/SpamMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    if-eqz v2, :cond_0

    .line 436
    iget-object v2, p0, Lcom/android/mms/spam/SpamMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v2, v4}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 439
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 440
    sget-object v0, Lcom/android/mms/spam/SpamMessageListAdapter;->mDefaultContactImage:Landroid/graphics/drawable/Drawable;

    .line 475
    .local v0, avatarDrawable:Landroid/graphics/drawable/Drawable;
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/mms/spam/SpamMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/spam/SpamMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 476
    iget-object v2, p0, Lcom/android/mms/spam/SpamMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 478
    :cond_2
    return-void

    .line 443
    .end local v0           #avatarDrawable:Landroid/graphics/drawable/Drawable;
    :cond_3
    invoke-static {p2, v5}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    .line 444
    .local v1, contact:Lcom/android/mms/data/Contact;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020247

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sput-object v2, Lcom/android/mms/spam/SpamMessageListAdapter;->mDefaultContactImage:Landroid/graphics/drawable/Drawable;

    .line 445
    const-string v2, ","

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, ";"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 446
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020244

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/android/mms/data/Contact;->getAvatar(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 451
    .restart local v0       #avatarDrawable:Landroid/graphics/drawable/Drawable;
    :goto_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/spam/SpamMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    if-eqz v2, :cond_1

    .line 452
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CBmessages"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 453
    iget-object v2, p0, Lcom/android/mms/spam/SpamMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v2, v4}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 454
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 448
    .end local v0           #avatarDrawable:Landroid/graphics/drawable/Drawable;
    :cond_5
    sget-object v2, Lcom/android/mms/spam/SpamMessageListAdapter;->mDefaultContactImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, v2}, Lcom/android/mms/data/Contact;->getAvatar(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0       #avatarDrawable:Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 455
    :cond_6
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Pushmessage"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 456
    iget-object v2, p0, Lcom/android/mms/spam/SpamMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v2, v4}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 457
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 459
    :cond_7
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 460
    iget-object v2, p0, Lcom/android/mms/spam/SpamMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 463
    :cond_8
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 464
    iget-object v2, p0, Lcom/android/mms/spam/SpamMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Landroid/widget/QuickContactBadge;->assignContactFromEmail(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 465
    :cond_9
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->isPhoneNumber()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 466
    iget-object v2, p0, Lcom/android/mms/spam/SpamMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Landroid/widget/QuickContactBadge;->assignContactFromPhone(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 468
    :cond_a
    iget-object v2, p0, Lcom/android/mms/spam/SpamMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    invoke-virtual {v2, v4}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public addList(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 617
    iget-object v0, p0, Lcom/android/mms/spam/SpamMessageListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/android/mms/spam/SpamMessageListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 620
    :cond_0
    return-void
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 31
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/spam/SpamMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgType:I

    move/from16 v27, v0

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 209
    .local v19, msgType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/spam/SpamMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsAddress:I

    move/from16 v27, v0

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 210
    .local v3, addr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/spam/SpamMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsMessageBox:I

    move/from16 v27, v0

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 212
    .local v15, mmsBoxType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/spam/SpamMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsBody:I

    move/from16 v27, v0

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 213
    .local v5, body:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/spam/SpamMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsMessageType:I

    move/from16 v27, v0

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 216
    .local v16, mmsType:I
    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    .line 220
    const v27, 0x7f0e0231

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/CheckBox;

    .line 221
    .local v13, mCheckBox:Landroid/widget/CheckBox;
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v22

    .line 223
    .local v22, pos:I
    const/4 v6, 0x0

    .line 225
    .local v6, contact:Lcom/android/mms/data/Contact;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f02024c

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 227
    .local v8, defaultContactImage:Landroid/graphics/drawable/Drawable;
    const v27, 0x7f0e022c

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    .line 230
    .local v18, msgIcon:Landroid/widget/ImageView;
    const-string v27, "mms"

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_3

    .line 231
    packed-switch v16, :pswitch_data_0

    .line 248
    :cond_0
    :goto_0
    :pswitch_0
    const v27, 0x7f0e022b

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/QuickContactBadge;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/spam/SpamMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    .line 249
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v3}, Lcom/android/mms/spam/SpamMessageListAdapter;->updateAvatar(Landroid/content/Context;Ljava/lang/String;)V

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/spam/SpamMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/spam/SpamMessageListAdapter;->mMode:I

    move/from16 v27, v0

    if-nez v27, :cond_4

    const/16 v27, 0x1

    :goto_1
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 251
    const-string v27, "mms"

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_a

    .line 252
    const-string v27, "date"

    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v27

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    const-wide/16 v29, 0x3e8

    mul-long v27, v27, v29

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 253
    .local v7, date:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/spam/SpamMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsSubject:I

    move/from16 v27, v0

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 255
    .local v24, szSubject:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/spam/SpamMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgId:I

    move/from16 v27, v0

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 256
    .local v11, id:J
    sget-object v27, Lcom/android/mms/spam/SpamFilter;->SPAM_MMS_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v27

    invoke-static {v0, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v25

    .line 257
    .local v25, uri:Landroid/net/Uri;
    const/16 v27, 0x82

    move/from16 v0, v16

    move/from16 v1, v27

    if-ne v0, v1, :cond_6

    .line 259
    :try_start_0
    invoke-static/range {p2 .. p2}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v20

    check-cast v20, Lcom/google/android/mms/pdu/NotificationInd;

    .line 263
    .local v20, nInd:Lcom/google/android/mms/pdu/NotificationInd;
    const-string v10, ""

    .line 264
    .local v10, from:Ljava/lang/String;
    if-eqz v20, :cond_1

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/NotificationInd;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v27

    if-eqz v27, :cond_1

    .line 265
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/NotificationInd;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v10

    .line 266
    :cond_1
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_5

    .line 267
    const v27, 0x7f0e022d

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    const v28, 0x7f0a000f

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    .line 269
    const v27, 0x7f0e022b

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/QuickContactBadge;

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    .end local v10           #from:Ljava/lang/String;
    .end local v20           #nInd:Lcom/google/android/mms/pdu/NotificationInd;
    :goto_2
    const/16 v27, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 281
    const v27, 0x7f020264

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 307
    :goto_3
    const/16 v27, 0x1

    move/from16 v0, v27

    if-ne v15, v0, :cond_8

    .line 314
    const v27, 0x7f0e022e

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    move-object/from16 v0, p2

    move-wide/from16 v1, v28

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    :goto_4
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-nez v27, :cond_9

    .line 322
    new-instance v26, Lcom/google/android/mms/pdu/EncodedStringValue;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/spam/SpamMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMmsSubjectCharset:I

    move/from16 v27, v0

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    move-object/from16 v0, v26

    move/from16 v1, v27

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(ILjava/lang/String;)V

    .line 324
    .local v26, v:Lcom/google/android/mms/pdu/EncodedStringValue;
    const v27, 0x7f0e022f

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    invoke-virtual/range {v26 .. v26}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    .end local v11           #id:J
    .end local v24           #szSubject:Ljava/lang/String;
    .end local v25           #uri:Landroid/net/Uri;
    .end local v26           #v:Lcom/google/android/mms/pdu/EncodedStringValue;
    :goto_5
    const v27, 0x7f0e0230

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/spam/SpamMessageListAdapter;->mMode:I

    move/from16 v27, v0

    if-eqz v27, :cond_10

    const/16 v27, 0x0

    :goto_6
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 374
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "/"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/spam/SpamMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgId:I

    move/from16 v28, v0

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v28

    invoke-virtual/range {v27 .. v29}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "/"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 375
    .local v14, mTag:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 376
    new-instance v27, Lcom/android/mms/spam/SpamMessageListAdapter$2;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13}, Lcom/android/mms/spam/SpamMessageListAdapter$2;-><init>(Lcom/android/mms/spam/SpamMessageListAdapter;Landroid/widget/CheckBox;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/CursorAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    check-cast v27, Landroid/app/Activity;

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    .line 416
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 417
    new-instance v27, Lcom/android/mms/spam/SpamMessageListAdapter$3;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/mms/spam/SpamMessageListAdapter$3;-><init>(Lcom/android/mms/spam/SpamMessageListAdapter;)V

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 427
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/spam/SpamMessageListAdapter;->mMode:I

    move/from16 v27, v0

    if-eqz v27, :cond_2

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/spam/SpamMessageListAdapter;->mCheckedList:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v27

    move/from16 v0, v27

    invoke-virtual {v13, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 430
    :cond_2
    return-void

    .line 233
    .end local v7           #date:Ljava/lang/Long;
    .end local v14           #mTag:Ljava/lang/String;
    :pswitch_1
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/mms/spam/SpamMessageListAdapter;->getNotificationIndSender(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    .line 234
    goto/16 :goto_0

    .line 236
    :pswitch_2
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/mms/spam/SpamMessageListAdapter;->getMultimediaMessageSender(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    .line 237
    goto/16 :goto_0

    .line 241
    :cond_3
    const-string v27, "sms"

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_0

    goto/16 :goto_0

    .line 250
    :cond_4
    const/16 v27, 0x0

    goto/16 :goto_1

    .line 271
    .restart local v7       #date:Ljava/lang/Long;
    .restart local v10       #from:Ljava/lang/String;
    .restart local v11       #id:J
    .restart local v20       #nInd:Lcom/google/android/mms/pdu/NotificationInd;
    .restart local v24       #szSubject:Ljava/lang/String;
    .restart local v25       #uri:Landroid/net/Uri;
    :cond_5
    const/16 v27, 0x1

    :try_start_1
    move/from16 v0, v27

    invoke-static {v10, v0}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v6

    .line 272
    invoke-virtual {v6}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v21

    .line 273
    .local v21, name:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v6, v0, v8}, Lcom/android/mms/data/Contact;->getAvatar(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 274
    .local v4, avatarDrawable:Landroid/graphics/drawable/Drawable;
    const v27, 0x7f0e022d

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    const v27, 0x7f0e022b

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/QuickContactBadge;

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 277
    .end local v4           #avatarDrawable:Landroid/graphics/drawable/Drawable;
    .end local v10           #from:Ljava/lang/String;
    .end local v20           #nInd:Lcom/google/android/mms/pdu/NotificationInd;
    .end local v21           #name:Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 278
    .local v9, e:Lcom/google/android/mms/MmsException;
    const-string v27, "Mms/SpamMessageListAdapter"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Failed to load the message: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 284
    .end local v9           #e:Lcom/google/android/mms/MmsException;
    :cond_6
    :try_start_2
    invoke-static/range {p2 .. p2}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v17

    check-cast v17, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    .line 285
    .local v17, msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/mms/pdu/GenericPdu;->getFrom()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v10

    .line 286
    .restart local v10       #from:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_7

    .line 287
    const v27, 0x7f0e022d

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    const-string v28, " "

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    const v27, 0x7f0e022b

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/QuickContactBadge;

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_1

    .line 299
    .end local v10           #from:Ljava/lang/String;
    .end local v17           #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :goto_7
    const/16 v27, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 300
    const v27, 0x7f02022c

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 290
    .restart local v10       #from:Ljava/lang/String;
    .restart local v17       #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :cond_7
    const/16 v27, 0x1

    :try_start_3
    move/from16 v0, v27

    invoke-static {v10, v0}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v6

    .line 291
    invoke-virtual {v6}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v21

    .line 292
    .restart local v21       #name:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v6, v0, v8}, Lcom/android/mms/data/Contact;->getAvatar(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 293
    .restart local v4       #avatarDrawable:Landroid/graphics/drawable/Drawable;
    const v27, 0x7f0e022d

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    const v27, 0x7f0e022b

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/QuickContactBadge;

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_3
    .catch Lcom/google/android/mms/MmsException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_7

    .line 296
    .end local v4           #avatarDrawable:Landroid/graphics/drawable/Drawable;
    .end local v10           #from:Ljava/lang/String;
    .end local v17           #msg:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    .end local v21           #name:Ljava/lang/String;
    :catch_1
    move-exception v9

    .line 297
    .restart local v9       #e:Lcom/google/android/mms/MmsException;
    const-string v27, "Mms/SpamMessageListAdapter"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Failed to load the message: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v9}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    .line 316
    .end local v9           #e:Lcom/google/android/mms/MmsException;
    :cond_8
    const v27, 0x7f0e022e

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    const-string v28, " "

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 326
    :cond_9
    const v27, 0x7f0e022f

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    const v28, 0x7f0a0010

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_5

    .line 330
    .end local v7           #date:Ljava/lang/Long;
    .end local v11           #id:J
    .end local v24           #szSubject:Ljava/lang/String;
    .end local v25           #uri:Landroid/net/Uri;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/spam/SpamMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsType:I

    move/from16 v27, v0

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 331
    .local v23, smsType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/spam/SpamMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsDate:I

    move/from16 v27, v0

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 339
    .restart local v7       #date:Ljava/lang/Long;
    if-eqz v3, :cond_b

    const-string v27, ""

    move-object/from16 v0, v27

    if-ne v3, v0, :cond_d

    .line 340
    :cond_b
    const v27, 0x7f0e022d

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    const-string v28, " "

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    const v27, 0x7f0e022b

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/QuickContactBadge;

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 352
    :goto_8
    const/16 v27, 0x1

    move/from16 v0, v23

    move/from16 v1, v27

    if-ne v0, v1, :cond_e

    .line 353
    const v27, 0x7f0e022e

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    move-object/from16 v0, p2

    move-wide/from16 v1, v28

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    :goto_9
    if-eqz v5, :cond_c

    const-string v27, ""

    move-object/from16 v0, v27

    if-ne v5, v0, :cond_f

    .line 358
    :cond_c
    const v27, 0x7f0e022f

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    const-string v28, " "

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    :goto_a
    const/16 v27, 0x8

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    .line 344
    :cond_d
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-static {v3, v0}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v6

    .line 345
    invoke-virtual {v6}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v21

    .line 346
    .restart local v21       #name:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v6, v0, v8}, Lcom/android/mms/data/Contact;->getAvatar(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 347
    .restart local v4       #avatarDrawable:Landroid/graphics/drawable/Drawable;
    const v27, 0x7f0e022d

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    const v27, 0x7f0e022b

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/QuickContactBadge;

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_8

    .line 355
    .end local v4           #avatarDrawable:Landroid/graphics/drawable/Drawable;
    .end local v21           #name:Ljava/lang/String;
    :cond_e
    const v27, 0x7f0e022e

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    const-string v28, " "

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 360
    :cond_f
    const v27, 0x7f0e022f

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/TextView;

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 366
    .end local v23           #smsType:I
    :cond_10
    const/16 v27, 0x8

    goto/16 :goto_6

    .line 231
    nop

    :pswitch_data_0
    .packed-switch 0x82
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public clearCheckedList()V
    .locals 2

    .prologue
    .line 721
    const-string v0, "Mms/SpamMessageListAdapter"

    const-string v1, "clearCheckedList()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    iget-object v0, p0, Lcom/android/mms/spam/SpamMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 724
    iget-object v0, p0, Lcom/android/mms/spam/SpamMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 725
    iget-object v0, p0, Lcom/android/mms/spam/SpamMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 726
    return-void
.end method

.method public deleteArray()V
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lcom/android/mms/spam/SpamMessageListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 639
    return-void
.end method

.method public getArrayList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 630
    iget-object v0, p0, Lcom/android/mms/spam/SpamMessageListAdapter;->mCheckedList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getArraySize()I
    .locals 1

    .prologue
    .line 634
    iget-object v0, p0, Lcom/android/mms/spam/SpamMessageListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getCachedMessageItem(Ljava/lang/String;JLandroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;
    .locals 10
    .parameter "type"
    .parameter "msgId"
    .parameter "c"

    .prologue
    .line 550
    iget-object v1, p0, Lcom/android/mms/spam/SpamMessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    invoke-static {p1, p2, p3}, Lcom/android/mms/spam/SpamMessageListAdapter;->getKey(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/mms/ui/MessageItem;

    .line 551
    .local v9, item:Lcom/android/mms/ui/MessageItem;
    if-nez v9, :cond_1

    .line 553
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/spam/SpamMessageListAdapter;->mHighlight:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v5, 0x0

    .line 555
    .local v5, highlight:Ljava/util/regex/Pattern;
    :goto_0
    new-instance v0, Lcom/android/mms/ui/MessageItem;

    iget-object v1, p0, Landroid/widget/CursorAdapter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/spam/SpamMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/MessageItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;Ljava/util/regex/Pattern;ZZ)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 556
    .end local v9           #item:Lcom/android/mms/ui/MessageItem;
    .local v0, item:Lcom/android/mms/ui/MessageItem;
    :try_start_1
    iget-object v1, p0, Lcom/android/mms/spam/SpamMessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/mms/spam/SpamMessageListAdapter;->getKey(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 561
    .end local v5           #highlight:Ljava/util/regex/Pattern;
    :goto_1
    return-object v0

    .line 553
    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v9       #item:Lcom/android/mms/ui/MessageItem;
    :cond_0
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\\b"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/spam/SpamMessageListAdapter;->mHighlight:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;
    :try_end_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v5

    goto :goto_0

    .line 557
    :catch_0
    move-exception v8

    move-object v0, v9

    .line 558
    .end local v9           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    .local v8, e:Lcom/google/android/mms/MmsException;
    :goto_2
    const-string v1, "Mms/SpamMessageListAdapter"

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 557
    .end local v8           #e:Lcom/google/android/mms/MmsException;
    .restart local v5       #highlight:Ljava/util/regex/Pattern;
    :catch_1
    move-exception v8

    goto :goto_2

    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .end local v5           #highlight:Ljava/util/regex/Pattern;
    .restart local v9       #item:Lcom/android/mms/ui/MessageItem;
    :cond_1
    move-object v0, v9

    .end local v9           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    goto :goto_1
.end method

.method public getCheckedCount()I
    .locals 2

    .prologue
    .line 753
    iget-object v0, p0, Lcom/android/mms/spam/SpamMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/mms/spam/SpamMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/mms/spam/SpamMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isCheckedMessageId(JLjava/lang/String;)Z
    .locals 2
    .parameter "msgId"
    .parameter "msgType"

    .prologue
    .line 757
    const-string v0, "sms"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 758
    iget-object v0, p0, Lcom/android/mms/spam/SpamMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 762
    :goto_0
    return v0

    .line 759
    :cond_0
    const-string v0, "wpm"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 760
    iget-object v0, p0, Lcom/android/mms/spam/SpamMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 762
    :cond_1
    iget-object v0, p0, Lcom/android/mms/spam/SpamMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/mms/spam/SpamMessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030090

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .prologue
    .line 515
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 516
    const-string v0, "Mms/SpamMessageListAdapter"

    const-string v1, "MessageListAdapter.notifyDataSetChanged()."

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    iget-object v0, p0, Lcom/android/mms/spam/SpamMessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 519
    iget-object v0, p0, Lcom/android/mms/spam/SpamMessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/spam/SpamMessageListAdapter$OnDataSetChangedListener;

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/android/mms/spam/SpamMessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/spam/SpamMessageListAdapter$OnDataSetChangedListener;

    invoke-interface {v0, p0}, Lcom/android/mms/spam/SpamMessageListAdapter$OnDataSetChangedListener;->onDataSetChanged(Lcom/android/mms/spam/SpamMessageListAdapter;)V

    .line 522
    :cond_0
    return-void
.end method

.method protected onContentChanged()V
    .locals 3

    .prologue
    .line 527
    const-string v0, "Mms/SpamMessageListAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onContentChanged(), mAutoRequery="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/widget/CursorAdapter;->mAutoRequery:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    sget-boolean v0, Lcom/android/mms/spam/SpamMessageListAdapter;->SPAM_SELECTION_LIST_V2:Z

    if-eqz v0, :cond_1

    .line 531
    iget-object v0, p0, Lcom/android/mms/spam/SpamMessageListAdapter;->mOnContentChangedListener:Lcom/android/mms/spam/SpamMessageListAdapter$OnContentChangedListener;

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/android/mms/spam/SpamMessageListAdapter;->mOnContentChangedListener:Lcom/android/mms/spam/SpamMessageListAdapter$OnContentChangedListener;

    invoke-interface {v0, p0}, Lcom/android/mms/spam/SpamMessageListAdapter$OnContentChangedListener;->onContentChanged(Lcom/android/mms/spam/SpamMessageListAdapter;)V

    .line 547
    :cond_0
    :goto_0
    return-void

    .line 536
    :cond_1
    iget-boolean v0, p0, Landroid/widget/CursorAdapter;->mAutoRequery:Z

    if-eqz v0, :cond_2

    .line 537
    invoke-super {p0}, Landroid/widget/CursorAdapter;->onContentChanged()V

    goto :goto_0

    .line 540
    :cond_2
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/android/mms/spam/SpamMessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/spam/SpamMessageListAdapter$OnDataSetChangedListener;

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/android/mms/spam/SpamMessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/spam/SpamMessageListAdapter$OnDataSetChangedListener;

    invoke-interface {v0, p0}, Lcom/android/mms/spam/SpamMessageListAdapter$OnDataSetChangedListener;->onContentChanged(Lcom/android/mms/spam/SpamMessageListAdapter;)V

    goto :goto_0
.end method

.method public removeList(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 623
    iget-object v0, p0, Lcom/android/mms/spam/SpamMessageListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Lcom/android/mms/spam/SpamMessageListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 627
    :cond_0
    return-void
.end method

.method public resetCheckedList()V
    .locals 1

    .prologue
    .line 695
    iget-object v0, p0, Lcom/android/mms/spam/SpamMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 696
    iget-object v0, p0, Lcom/android/mms/spam/SpamMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 697
    iget-object v0, p0, Lcom/android/mms/spam/SpamMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 698
    return-void
.end method

.method public resetView()V
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/android/mms/spam/SpamMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    if-eqz v0, :cond_0

    .line 482
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/spam/SpamMessageListAdapter;->mAvatarView:Landroid/widget/QuickContactBadge;

    .line 483
    :cond_0
    return-void
.end method

.method public setChecked(IZ)V
    .locals 0
    .parameter "position"
    .parameter "isChecked"

    .prologue
    .line 583
    return-void
.end method

.method public setChecked(JLjava/lang/String;)V
    .locals 2
    .parameter "msgId"
    .parameter "msgType"

    .prologue
    .line 701
    const-string v0, "sms"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 702
    iget-object v0, p0, Lcom/android/mms/spam/SpamMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 718
    :cond_0
    :goto_0
    return-void

    .line 706
    :cond_1
    iget-object v0, p0, Lcom/android/mms/spam/SpamMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 707
    :cond_2
    const-string v0, "wpm"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 708
    iget-object v0, p0, Lcom/android/mms/spam/SpamMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 711
    iget-object v0, p0, Lcom/android/mms/spam/SpamMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 713
    :cond_3
    iget-object v0, p0, Lcom/android/mms/spam/SpamMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 716
    iget-object v0, p0, Lcom/android/mms/spam/SpamMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 607
    const-string v0, "Mms/SpamMessageListAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetMode mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mMode= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/spam/SpamMessageListAdapter;->mMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    iget v0, p0, Lcom/android/mms/spam/SpamMessageListAdapter;->mMode:I

    if-ne v0, p1, :cond_0

    .line 614
    :goto_0
    return-void

    .line 611
    :cond_0
    iput p1, p0, Lcom/android/mms/spam/SpamMessageListAdapter;->mMode:I

    .line 612
    iget-object v0, p0, Lcom/android/mms/spam/SpamMessageListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 613
    invoke-virtual {p0}, Lcom/android/mms/spam/SpamMessageListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public setMsgListItemHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 510
    iput-object p1, p0, Lcom/android/mms/spam/SpamMessageListAdapter;->mMsgListItemHandler:Landroid/os/Handler;

    .line 511
    return-void
.end method

.method public setOnContentChangedListener(Lcom/android/mms/spam/SpamMessageListAdapter$OnContentChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 499
    iput-object p1, p0, Lcom/android/mms/spam/SpamMessageListAdapter;->mOnContentChangedListener:Lcom/android/mms/spam/SpamMessageListAdapter$OnContentChangedListener;

    .line 500
    return-void
.end method

.method public setOnDataSetChangedListener(Lcom/android/mms/spam/SpamMessageListAdapter$OnDataSetChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 506
    iput-object p1, p0, Lcom/android/mms/spam/SpamMessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/spam/SpamMessageListAdapter$OnDataSetChangedListener;

    .line 507
    return-void
.end method

.method public toggle(Landroid/view/View;II)V
    .locals 5
    .parameter "view"
    .parameter "position"
    .parameter "nTotalItem"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 587
    if-nez p2, :cond_1

    move-object v0, p1

    .line 588
    check-cast v0, Landroid/widget/CheckBox;

    .line 589
    .local v0, checkBox:Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 590
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p3, :cond_2

    .line 591
    invoke-virtual {p0, v1, v2}, Lcom/android/mms/spam/SpamMessageListAdapter;->setChecked(IZ)V

    .line 590
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 594
    .end local v1           #i:I
    :cond_0
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1
    if-ge v1, p3, :cond_2

    .line 595
    invoke-virtual {p0, v1, v3}, Lcom/android/mms/spam/SpamMessageListAdapter;->setChecked(IZ)V

    .line 594
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 599
    .end local v0           #checkBox:Landroid/widget/CheckBox;
    .end local v1           #i:I
    :cond_1
    invoke-static {p2}, Lcom/android/mms/spam/SpamMessageListAdapter;->isChecked(I)Z

    move-result v4

    if-nez v4, :cond_3

    :goto_2
    invoke-virtual {p0, p2, v2}, Lcom/android/mms/spam/SpamMessageListAdapter;->setChecked(IZ)V

    .line 601
    :cond_2
    return-void

    :cond_3
    move v2, v3

    .line 599
    goto :goto_2
.end method

.method public toggleCheckBox(JLjava/lang/String;)Z
    .locals 3
    .parameter "msgId"
    .parameter "msgType"

    .prologue
    const/4 v0, 0x0

    .line 729
    const-string v1, "sms"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 730
    iget-object v1, p0, Lcom/android/mms/spam/SpamMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 731
    iget-object v1, p0, Lcom/android/mms/spam/SpamMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 749
    :goto_0
    return v0

    .line 734
    :cond_0
    iget-object v0, p0, Lcom/android/mms/spam/SpamMessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 749
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 735
    :cond_1
    const-string v1, "wpm"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 736
    iget-object v1, p0, Lcom/android/mms/spam/SpamMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 737
    iget-object v1, p0, Lcom/android/mms/spam/SpamMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 740
    :cond_2
    iget-object v0, p0, Lcom/android/mms/spam/SpamMessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 742
    :cond_3
    iget-object v1, p0, Lcom/android/mms/spam/SpamMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 743
    iget-object v1, p0, Lcom/android/mms/spam/SpamMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 746
    :cond_4
    iget-object v0, p0, Lcom/android/mms/spam/SpamMessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
