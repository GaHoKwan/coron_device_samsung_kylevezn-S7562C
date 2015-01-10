.class public Lcom/android/mms/ui/MessageListAdapter;
.super Landroid/widget/CursorAdapter;
.source "MessageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MessageListAdapter$AvatarCache;,
        Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;,
        Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;,
        Lcom/android/mms/ui/MessageListAdapter$ArrayData;
    }
.end annotation


# static fields
.field public static final CACHE_SIZE:I = 0x32

.field public static final COLUMN_ID:I = 0x1

.field static final COLUMN_MMS_DATE:I = 0xd

.field static final COLUMN_MMS_DELIVERY_REPORT:I = 0x11

.field static final COLUMN_MMS_ERROR_TYPE:I = 0x13

.field static final COLUMN_MMS_LOCKED:I = 0x14

.field static final COLUMN_MMS_MESSAGE_BOX:I = 0x10

.field static final COLUMN_MMS_MESSAGE_TYPE:I = 0xf

.field static final COLUMN_MMS_PRIORITY:I = 0x20

.field static final COLUMN_MMS_READ:I = 0xe

.field static final COLUMN_MMS_READ_REPORT:I = 0x12

.field static final COLUMN_MMS_RESERVED:I = 0x1e

.field public static final COLUMN_MMS_SIM_SLOT:I = 0x24

.field static final COLUMN_MMS_SUBJECT:I = 0xb

.field static final COLUMN_MMS_SUBJECT_CHARSET:I = 0xc

.field public static final COLUMN_MSG_TYPE:I = 0x0

.field static final COLUMN_SERVICE_CATEGORY:I = 0x23

.field public static final COLUMN_SIM_IMSI:I = 0x25

.field public static final COLUMN_SMS_ADDRESS:I = 0x3

.field public static final COLUMN_SMS_BODY:I = 0x4

.field static final COLUMN_SMS_CALLBACK:I = 0x1c

.field public static final COLUMN_SMS_DATE:I = 0x5

.field static final COLUMN_SMS_ERROR_CODE:I = 0xa

.field static final COLUMN_SMS_GROUP_ID:I = 0x15

.field static final COLUMN_SMS_GROUP_TYPE:I = 0x16

.field static final COLUMN_SMS_LINK_URL:I = 0x22

.field static final COLUMN_SMS_LOCKED:I = 0x9

.field static final COLUMN_SMS_PRIORITY:I = 0x1f

.field public static final COLUMN_SMS_READ:I = 0x6

.field static final COLUMN_SMS_RESERVED:I = 0x1d

.field public static final COLUMN_SMS_SIM_SLOT:I = 0x24

.field public static final COLUMN_SMS_STATUS:I = 0x8

.field static final COLUMN_SMS_TELESERVICE_ID:I = 0x21

.field public static final COLUMN_SMS_TYPE:I = 0x7

.field public static final COLUMN_THREAD_ID:I = 0x2

.field static final COLUMN_WPM_ACTION:I = 0x1b

.field static final COLUMN_WPM_CREATED:I = 0x19

.field static final COLUMN_WPM_DATE:I = 0x5

.field static final COLUMN_WPM_HREF:I = 0x17

.field static final COLUMN_WPM_LOCKED:I = 0x9

.field static final COLUMN_WPM_PUSH_TYPE:I = 0x7

.field static final COLUMN_WPM_READ:I = 0x6

.field static final COLUMN_WPM_SI_EXPIRES:I = 0x1a

.field static final COLUMN_WPM_SI_ID:I = 0x18

.field static final COLUMN_WPM_TEXT:I = 0x4

.field private static final GROUP_ID:Ljava/lang/String; = "group_id"

.field private static final GROUP_TYPE:Ljava/lang/String; = "group_type"

.field public static final INCOMING_ITEM_TYPE:I = 0x0

.field public static final OUTGOING_ITEM_TYPE:I = 0x1

.field static final PROJECTION:[Ljava/lang/String; = null

.field static final PROJECTION_CMAS:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "Mms/MessageListAdapter"


# instance fields
.field private DELETE_CHECK_BOX_WIDTH:I

.field public animationIdx:I

.field private mCanDisableSelection:Z

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

.field protected final mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

.field private mContext:Landroid/content/Context;

.field private mDateSeperatorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/MessageListAdapter$ArrayData;",
            ">;"
        }
    .end annotation
.end field

.field private mDummyCheckedMmsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mDummyCheckedSmsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mDummyCheckedWpmList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mHighlight:Ljava/util/regex/Pattern;

.field protected mInflater:Landroid/view/LayoutInflater;

.field private mIsCopyToSimMode:Z

.field private mIsDeleteMode:Z

.field private mIsMoveMode:Z

.field private mIsMultiLockMode:Z

.field private mIsSaveMode:Z

.field private mIsSelectionMode:Z

.field private final mListView:Landroid/widget/ListView;

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

.field private mMsgBubbleListAnimation:Lcom/android/mms/animation/MsgBubbleListAnimation;

.field protected mMsgListItemHandler:Landroid/os/Handler;

.field private mOnDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 80
    const/16 v0, 0x26

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "transport_type"

    aput-object v1, v0, v3

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "thread_id"

    aput-object v1, v0, v5

    const-string v1, "address"

    aput-object v1, v0, v6

    const-string v1, "body"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "read"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "locked"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "error_code"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "sub"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "sub_cs"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "date"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "read"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "m_type"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "msg_box"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "d_rpt"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "rr"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "err_type"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "locked"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "group_id"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "group_type"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "href"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "si_id"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "created"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "si_expires"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "action"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "callback_number"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "reserved"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "reserved"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "pri"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "pri"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "teleservice_id"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "link_url"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "service_category"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "sim_slot"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "sim_imsi"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION:[Ljava/lang/String;

    .line 134
    const/16 v0, 0x26

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "transport_type"

    aput-object v1, v0, v3

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "thread_id"

    aput-object v1, v0, v5

    const-string v1, "address"

    aput-object v1, v0, v6

    const-string v1, "body"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "read"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "locked"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "error_code"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "sub"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "sub_cs"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "date"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "read"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "m_type"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "msg_box"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "d_rpt"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "rr"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "err_type"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "locked"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "group_id"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "group_type"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "href"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "si_id"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "created"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "si_expires"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "action"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "service_category"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "category"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "response_type"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "severity"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "urgency"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "certainty"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "identifier"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "alert_handling"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "expires"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "language"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/MessageListAdapter;->PROJECTION_CMAS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/ListView;ZLjava/util/regex/Pattern;)V
    .locals 5
    .parameter "context"
    .parameter "c"
    .parameter "listView"
    .parameter "useDefaultColumnsMap"
    .parameter "highlight"

    .prologue
    const/4 v4, 0x0

    .line 340
    invoke-direct {p0, p1, p2, v4}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 287
    iput-boolean v4, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsDeleteMode:Z

    .line 288
    iput-boolean v4, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsMultiLockMode:Z

    .line 290
    iput-boolean v4, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsMoveMode:Z

    .line 291
    iput-boolean v4, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsSaveMode:Z

    .line 292
    iput-boolean v4, p0, Lcom/android/mms/ui/MessageListAdapter;->mCanDisableSelection:Z

    .line 297
    iput-boolean v4, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsSelectionMode:Z

    .line 299
    iput-boolean v4, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsCopyToSimMode:Z

    .line 313
    const/16 v0, 0x50

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter;->DELETE_CHECK_BOX_WIDTH:I

    .line 409
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter;->animationIdx:I

    .line 341
    iput-object p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mContext:Landroid/content/Context;

    .line 342
    iput-object p5, p0, Lcom/android/mms/ui/MessageListAdapter;->mHighlight:Ljava/util/regex/Pattern;

    .line 344
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    .line 345
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    .line 346
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    .line 348
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 349
    iput-object p3, p0, Lcom/android/mms/ui/MessageListAdapter;->mListView:Landroid/widget/ListView;

    .line 350
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$1;

    const/16 v1, 0xa

    const/high16 v2, 0x3f80

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/mms/ui/MessageListAdapter$1;-><init>(Lcom/android/mms/ui/MessageListAdapter;IFZ)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    .line 361
    if-eqz p4, :cond_1

    .line 362
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v0}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    .line 367
    :goto_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    iput-boolean v4, p0, Lcom/android/mms/ui/MessageListAdapter;->mCanDisableSelection:Z

    .line 372
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mDateSeperatorList:Ljava/util/ArrayList;

    .line 373
    return-void

    .line 364
    :cond_1
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v0, p2}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>(Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/ListView;ZLjava/util/regex/Pattern;Z)V
    .locals 4
    .parameter "context"
    .parameter "c"
    .parameter "listView"
    .parameter "useDefaultColumnsMap"
    .parameter "highlight"
    .parameter "disableSelection"

    .prologue
    const/4 v0, 0x0

    .line 378
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 287
    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsDeleteMode:Z

    .line 288
    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsMultiLockMode:Z

    .line 290
    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsMoveMode:Z

    .line 291
    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsSaveMode:Z

    .line 292
    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCanDisableSelection:Z

    .line 297
    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsSelectionMode:Z

    .line 299
    iput-boolean v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsCopyToSimMode:Z

    .line 313
    const/16 v0, 0x50

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter;->DELETE_CHECK_BOX_WIDTH:I

    .line 409
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/MessageListAdapter;->animationIdx:I

    .line 379
    iput-object p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mContext:Landroid/content/Context;

    .line 380
    iput-object p5, p0, Lcom/android/mms/ui/MessageListAdapter;->mHighlight:Ljava/util/regex/Pattern;

    .line 382
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    .line 383
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    .line 384
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    .line 386
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 387
    iput-object p3, p0, Lcom/android/mms/ui/MessageListAdapter;->mListView:Landroid/widget/ListView;

    .line 388
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$2;

    const/16 v1, 0xa

    const/high16 v2, 0x3f80

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/mms/ui/MessageListAdapter$2;-><init>(Lcom/android/mms/ui/MessageListAdapter;IFZ)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    .line 399
    if-eqz p4, :cond_0

    .line 400
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v0}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    .line 404
    :goto_0
    iput-boolean p6, p0, Lcom/android/mms/ui/MessageListAdapter;->mCanDisableSelection:Z

    .line 405
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mDateSeperatorList:Ljava/util/ArrayList;

    .line 406
    return-void

    .line 402
    :cond_0
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v0, p2}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>(Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MessageListAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static formatDate(J)J
    .locals 6
    .parameter "when"

    .prologue
    .line 1416
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1417
    .local v0, calendar:Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1418
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 1419
    .local v3, year:I
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v2, v4, 0x1

    .line 1420
    .local v2, month:I
    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1422
    .local v1, day:I
    mul-int/lit16 v4, v3, 0x2710

    mul-int/lit8 v5, v2, 0x64

    add-int/2addr v4, v5

    add-int/2addr v4, v1

    int-to-long v4, v4

    return-wide v4
.end method

.method private static getKey(Ljava/lang/String;J)J
    .locals 1
    .parameter "type"
    .parameter "id"

    .prologue
    .line 651
    const-string v0, "mms"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 652
    neg-long p1, p1

    .line 654
    .end local p1
    :cond_0
    return-wide p1
.end method

.method private isCursorValid(Landroid/database/Cursor;)Z
    .locals 1
    .parameter "cursor"

    .prologue
    .line 644
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 645
    :cond_0
    const/4 v0, 0x0

    .line 647
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private shouldMsgBeDisabled(Lcom/android/mms/ui/MessageItem;)Z
    .locals 1
    .parameter "msg"

    .prologue
    .line 521
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isSending()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/android/mms/ui/MessageItem;->mIsCbSms:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isWpm()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 523
    :cond_0
    const/4 v0, 0x1

    .line 525
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public backupCheckedList()V
    .locals 1

    .prologue
    .line 1392
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mDummyCheckedSmsList:Ljava/util/ArrayList;

    .line 1393
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mDummyCheckedMmsList:Ljava/util/ArrayList;

    .line 1394
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mDummyCheckedWpmList:Ljava/util/ArrayList;

    .line 1396
    invoke-virtual {p0}, Lcom/android/mms/ui/MessageListAdapter;->clearCheckedList()V

    .line 1397
    return-void
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 26
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 427
    move-object/from16 v0, p1

    instance-of v5, v0, Lcom/android/mms/ui/MessageListItem;

    if-eqz v5, :cond_5

    .line 428
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v5, v5, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgType:I

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 429
    .local v25, type:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v5, v5, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnMsgId:I

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 431
    .local v21, msgId:J
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-wide/from16 v2, v21

    move-object/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/mms/ui/MessageListAdapter;->getCachedMessageItem(Ljava/lang/String;JLandroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v23

    .line 436
    .local v23, msgItem:Lcom/android/mms/ui/MessageItem;
    if-nez v23, :cond_0

    .line 437
    const-string v5, "Mms/MessageListAdapter"

    const-string v6, "bind abort, no data"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    .end local v21           #msgId:J
    .end local v23           #msgItem:Lcom/android/mms/ui/MessageItem;
    .end local v25           #type:Ljava/lang/String;
    :goto_0
    return-void

    .line 442
    .restart local v21       #msgId:J
    .restart local v23       #msgItem:Lcom/android/mms/ui/MessageItem;
    .restart local v25       #type:Ljava/lang/String;
    :cond_0
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v19

    .local v19, i:I
    move-object/from16 v20, p1

    .line 443
    check-cast v20, Lcom/android/mms/ui/MessageListItem;

    .line 444
    .local v20, item:Lcom/android/mms/ui/MessageListItem;
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/mms/ui/MessageListAdapter;->mIsDeleteMode:Z

    const/4 v6, 0x1

    if-eq v5, v6, :cond_3

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/mms/ui/MessageListAdapter;->mIsMultiLockMode:Z

    const/4 v6, 0x1

    if-eq v5, v6, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableVIPList()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/mms/ui/MessageListAdapter;->mIsMoveMode:Z

    const/4 v6, 0x1

    if-eq v5, v6, :cond_3

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/mms/ui/MessageListAdapter;->mIsCopyToSimMode:Z

    const/4 v6, 0x1

    if-eq v5, v6, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCombineAndForwardMenu()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/mms/ui/MessageListAdapter;->mIsSelectionMode:Z

    const/4 v6, 0x1

    if-eq v5, v6, :cond_3

    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSaveRestoreSDCardMessage()Z

    move-result v5

    if-eqz v5, :cond_9

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/mms/ui/MessageListAdapter;->mIsSaveMode:Z

    if-eqz v5, :cond_9

    .line 447
    :cond_3
    const/16 v18, 0x0

    .line 448
    .local v18, checked:Z
    const-string v5, "sms"

    move-object/from16 v0, v23

    iget-object v6, v0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 449
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v18

    .line 467
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableCombineAndForwardMenu()Z

    move-result v5

    if-eqz v5, :cond_8

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/mms/ui/MessageListAdapter;->mIsSelectionMode:Z

    const/4 v6, 0x1

    if-ne v5, v6, :cond_8

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListAdapter;->notAllowedCombineForward(Lcom/android/mms/ui/MessageItem;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 472
    const-string v5, "Mms/MessageListAdapter"

    const-string v6, "COMBINE_AND_FORWARD_MESSAGE only for mms (phase 1)"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    const/4 v5, 0x4

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v5, v1}, Lcom/android/mms/ui/MessageListItem;->setCheckBox(IZ)V

    .line 479
    :goto_2
    if-nez v18, :cond_4

    .line 480
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/MessageListAdapter;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/android/mms/ui/ConversationComposer;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/mms/ui/ConversationComposer;->setMessageSelectAll(Z)V

    .line 485
    .end local v18           #checked:Z
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/MessageListAdapter;->mDateSeperatorList:Ljava/util/ArrayList;

    if-eqz v5, :cond_a

    .line 486
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/MessageListAdapter;->mDateSeperatorList:Ljava/util/ArrayList;

    new-instance v6, Lcom/android/mms/ui/MessageListAdapter$ArrayData;

    move-object/from16 v0, v23

    iget-wide v7, v0, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    move-object/from16 v0, v23

    iget-object v9, v0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v7, v8, v9}, Lcom/android/mms/ui/MessageListAdapter$ArrayData;-><init>(Lcom/android/mms/ui/MessageListAdapter;JLjava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    move-object/from16 v0, v23

    iput-boolean v5, v0, Lcom/android/mms/ui/MessageItem;->mHasSeperator:Z

    .line 492
    :goto_4
    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/ui/MessageListItem;->bind(Lcom/android/mms/ui/MessageItem;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 493
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/MessageListAdapter;->mMsgListItemHandler:Landroid/os/Handler;

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/android/mms/ui/MessageListItem;->setMsgListItemHandler(Landroid/os/Handler;)V

    .line 495
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/mms/ui/MessageListAdapter;->animationIdx:I

    move/from16 v0, v19

    if-eq v0, v5, :cond_b

    .line 496
    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 516
    .end local v19           #i:I
    .end local v20           #item:Lcom/android/mms/ui/MessageListItem;
    .end local v21           #msgId:J
    .end local v23           #msgItem:Lcom/android/mms/ui/MessageItem;
    .end local v25           #type:Ljava/lang/String;
    :cond_5
    :goto_5
    const-string v5, "Mms/MessageListAdapter"

    const-string v6, "bind complete()"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 450
    .restart local v18       #checked:Z
    .restart local v19       #i:I
    .restart local v20       #item:Lcom/android/mms/ui/MessageListItem;
    .restart local v21       #msgId:J
    .restart local v23       #msgItem:Lcom/android/mms/ui/MessageItem;
    .restart local v25       #type:Ljava/lang/String;
    :cond_6
    const-string v5, "wpm"

    move-object/from16 v0, v23

    iget-object v6, v0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 451
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v18

    goto/16 :goto_1

    .line 453
    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v18

    goto/16 :goto_1

    .line 476
    :cond_8
    const/4 v5, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v5, v1}, Lcom/android/mms/ui/MessageListItem;->setCheckBox(IZ)V

    goto/16 :goto_2

    .line 482
    .end local v18           #checked:Z
    :cond_9
    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v6}, Lcom/android/mms/ui/MessageListItem;->setCheckBox(IZ)V

    goto/16 :goto_3

    .line 488
    :cond_a
    const-string v5, "Mms/MessageListAdapter"

    const-string v6, "mDateSeperatorList == null"

    invoke-static {v5, v6}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    const/4 v5, 0x0

    move-object/from16 v0, v23

    iput-boolean v5, v0, Lcom/android/mms/ui/MessageItem;->mHasSeperator:Z

    goto :goto_4

    .line 498
    :cond_b
    new-instance v17, Landroid/view/animation/AnimationSet;

    const/4 v5, 0x1

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 500
    .local v17, animSendMsg:Landroid/view/animation/AnimationSet;
    const-wide/16 v5, 0x1f4

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/android/mms/animation/MsgObjectAnimation;->createFadeIn(JLandroid/view/animation/Interpolator;)Landroid/view/animation/AlphaAnimation;

    move-result-object v16

    .line 501
    .local v16, alphaAni:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v5, 0x1f4

    const/4 v7, 0x0

    const v8, 0x3f19999a

    const/high16 v9, 0x3f80

    const v10, 0x3f19999a

    const/high16 v11, 0x3f80

    const/4 v12, 0x1

    const v13, 0x3f333333

    const/4 v14, 0x1

    const/high16 v15, 0x3f00

    invoke-static/range {v5 .. v15}, Lcom/android/mms/animation/MsgObjectAnimation;->createScaleAtCustomType(JLandroid/view/animation/Interpolator;FFFFIFIF)Landroid/view/animation/ScaleAnimation;

    move-result-object v24

    .line 504
    .local v24, scaleAni:Landroid/view/animation/ScaleAnimation;
    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 505
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 506
    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 508
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 509
    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 510
    const/4 v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/mms/ui/MessageListAdapter;->animationIdx:I

    goto/16 :goto_5
.end method

.method public canCachedMessageItemBeCombineForwarded(Ljava/lang/String;JLandroid/database/Cursor;)Z
    .locals 11
    .parameter "type"
    .parameter "msgId"
    .parameter "c"

    .prologue
    const/4 v10, 0x0

    .line 627
    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    invoke-static {p1, p2, p3}, Lcom/android/mms/ui/MessageListAdapter;->getKey(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/mms/ui/MessageItem;

    .line 628
    .local v9, item:Lcom/android/mms/ui/MessageItem;
    if-nez v9, :cond_1

    if-eqz p4, :cond_1

    invoke-direct {p0, p4}, Lcom/android/mms/ui/MessageListAdapter;->isCursorValid(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 630
    :try_start_0
    new-instance v0, Lcom/android/mms/ui/MessageItem;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget-object v5, p0, Lcom/android/mms/ui/MessageListAdapter;->mHighlight:Ljava/util/regex/Pattern;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/MessageItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;Ljava/util/regex/Pattern;ZZ)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 631
    .end local v9           #item:Lcom/android/mms/ui/MessageItem;
    .local v0, item:Lcom/android/mms/ui/MessageItem;
    :try_start_1
    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    iget-object v2, v0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/mms/ui/MessageListAdapter;->getKey(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 636
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListAdapter;->notAllowedCombineForward(Lcom/android/mms/ui/MessageItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v10

    .line 638
    :goto_1
    return v1

    .line 632
    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v9       #item:Lcom/android/mms/ui/MessageItem;
    :catch_0
    move-exception v8

    move-object v0, v9

    .line 633
    .end local v9           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    .local v8, e:Lcom/google/android/mms/MmsException;
    :goto_2
    const-string v1, "Mms/MessageListAdapter"

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 638
    .end local v8           #e:Lcom/google/android/mms/MmsException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    .line 632
    :catch_1
    move-exception v8

    goto :goto_2

    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v9       #item:Lcom/android/mms/ui/MessageItem;
    :cond_1
    move-object v0, v9

    .end local v9           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    goto :goto_0
.end method

.method public canCachedMessageItemBeSelected(Ljava/lang/String;JLandroid/database/Cursor;)Z
    .locals 11
    .parameter "type"
    .parameter "msgId"
    .parameter "c"

    .prologue
    const/4 v10, 0x0

    .line 610
    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    invoke-static {p1, p2, p3}, Lcom/android/mms/ui/MessageListAdapter;->getKey(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/mms/ui/MessageItem;

    .line 611
    .local v9, item:Lcom/android/mms/ui/MessageItem;
    if-nez v9, :cond_1

    if-eqz p4, :cond_1

    invoke-direct {p0, p4}, Lcom/android/mms/ui/MessageListAdapter;->isCursorValid(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 613
    :try_start_0
    new-instance v0, Lcom/android/mms/ui/MessageItem;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget-object v5, p0, Lcom/android/mms/ui/MessageListAdapter;->mHighlight:Ljava/util/regex/Pattern;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/MessageItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;Ljava/util/regex/Pattern;ZZ)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 614
    .end local v9           #item:Lcom/android/mms/ui/MessageItem;
    .local v0, item:Lcom/android/mms/ui/MessageItem;
    :try_start_1
    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    iget-object v2, v0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/mms/ui/MessageListAdapter;->getKey(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 619
    :goto_0
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessageListAdapter;->shouldMsgBeDisabled(Lcom/android/mms/ui/MessageItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v10

    .line 621
    :goto_1
    return v1

    .line 615
    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v9       #item:Lcom/android/mms/ui/MessageItem;
    :catch_0
    move-exception v8

    move-object v0, v9

    .line 616
    .end local v9           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    .local v8, e:Lcom/google/android/mms/MmsException;
    :goto_2
    const-string v1, "Mms/MessageListAdapter"

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 621
    .end local v8           #e:Lcom/google/android/mms/MmsException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    .line 615
    :catch_1
    move-exception v8

    goto :goto_2

    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v9       #item:Lcom/android/mms/ui/MessageItem;
    :cond_1
    move-object v0, v9

    .end local v9           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    goto :goto_0
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 13
    .parameter "cursor"

    .prologue
    .line 1427
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1429
    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-lez v9, :cond_3

    .line 1431
    const-wide/16 v6, 0x0

    .line 1436
    .local v6, prevDay:J
    iget-object v9, p0, Lcom/android/mms/ui/MessageListAdapter;->mDateSeperatorList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 1437
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1439
    :cond_0
    const/4 v9, 0x0

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1440
    .local v8, type:Ljava/lang/String;
    const-string v9, "mms"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1441
    const/16 v9, 0xd

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    mul-long v2, v9, v11

    .line 1445
    .local v2, date:J
    :goto_0
    invoke-static {v2, v3}, Lcom/android/mms/ui/MessageListAdapter;->formatDate(J)J

    move-result-wide v0

    .line 1446
    .local v0, currDay:J
    const-wide/16 v9, 0x0

    cmp-long v9, v6, v9

    if-eqz v9, :cond_1

    cmp-long v9, v6, v0

    if-gez v9, :cond_2

    .line 1447
    :cond_1
    move-wide v6, v0

    .line 1449
    const/4 v9, 0x1

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1450
    .local v4, id:J
    iget-object v9, p0, Lcom/android/mms/ui/MessageListAdapter;->mDateSeperatorList:Ljava/util/ArrayList;

    new-instance v10, Lcom/android/mms/ui/MessageListAdapter$ArrayData;

    invoke-direct {v10, p0, v4, v5, v8}, Lcom/android/mms/ui/MessageListAdapter$ArrayData;-><init>(Lcom/android/mms/ui/MessageListAdapter;JLjava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1452
    .end local v4           #id:J
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-nez v9, :cond_0

    .line 1456
    .end local v0           #currDay:J
    .end local v2           #date:J
    .end local v6           #prevDay:J
    .end local v8           #type:Ljava/lang/String;
    :cond_3
    return-void

    .line 1443
    .restart local v6       #prevDay:J
    .restart local v8       #type:Ljava/lang/String;
    :cond_4
    const/4 v9, 0x5

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .restart local v2       #date:J
    goto :goto_0
.end method

.method public cleanDummyCheckedList()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1410
    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mDummyCheckedSmsList:Ljava/util/ArrayList;

    .line 1411
    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mDummyCheckedMmsList:Ljava/util/ArrayList;

    .line 1412
    iput-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mDummyCheckedWpmList:Ljava/util/ArrayList;

    .line 1413
    return-void
.end method

.method public clearCheckedList()V
    .locals 2

    .prologue
    .line 1338
    const-string v0, "Mms/MessageListAdapter"

    const-string v1, "clearCheckedList()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1340
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1341
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1342
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1343
    return-void
.end method

.method public getCachedMessageItem(Ljava/lang/String;JLandroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;
    .locals 10
    .parameter "type"
    .parameter "msgId"
    .parameter "c"

    .prologue
    .line 596
    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    invoke-static {p1, p2, p3}, Lcom/android/mms/ui/MessageListAdapter;->getKey(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/mms/ui/MessageItem;

    .line 597
    .local v9, item:Lcom/android/mms/ui/MessageItem;
    if-nez v9, :cond_0

    if-eqz p4, :cond_0

    invoke-direct {p0, p4}, Lcom/android/mms/ui/MessageListAdapter;->isCursorValid(Landroid/database/Cursor;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 599
    :try_start_0
    new-instance v0, Lcom/android/mms/ui/MessageItem;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/ui/MessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget-object v5, p0, Lcom/android/mms/ui/MessageListAdapter;->mHighlight:Ljava/util/regex/Pattern;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/ui/MessageItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/Cursor;Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;Ljava/util/regex/Pattern;ZZ)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 600
    .end local v9           #item:Lcom/android/mms/ui/MessageItem;
    .local v0, item:Lcom/android/mms/ui/MessageItem;
    :try_start_1
    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    iget-object v2, v0, Lcom/android/mms/ui/MessageItem;->mType:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/mms/ui/MessageListAdapter;->getKey(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 605
    :goto_0
    return-object v0

    .line 601
    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v9       #item:Lcom/android/mms/ui/MessageItem;
    :catch_0
    move-exception v8

    move-object v0, v9

    .line 602
    .end local v9           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    .local v8, e:Lcom/google/android/mms/MmsException;
    :goto_1
    const-string v1, "Mms/MessageListAdapter"

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 601
    .end local v8           #e:Lcom/google/android/mms/MmsException;
    :catch_1
    move-exception v8

    goto :goto_1

    .end local v0           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v9       #item:Lcom/android/mms/ui/MessageItem;
    :cond_0
    move-object v0, v9

    .end local v9           #item:Lcom/android/mms/ui/MessageItem;
    .restart local v0       #item:Lcom/android/mms/ui/MessageItem;
    goto :goto_0
.end method

.method public getCheckedConvList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1374
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1375
    .local v0, checkedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1376
    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1377
    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1378
    return-object v0
.end method

.method public getCheckedCount()I
    .locals 2

    .prologue
    .line 1370
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 1464
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 414
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/CursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 421
    :goto_0
    return-object v1

    .line 415
    :catch_0
    move-exception v0

    .line 416
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "Mms/MessageListAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getView() IllegalStateException mDataValid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/widget/CursorAdapter;->mDataValid:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " convertView="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " parent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    iget-boolean v1, p0, Landroid/widget/CursorAdapter;->mDataValid:Z

    if-eqz v1, :cond_0

    .line 419
    const/4 v1, 0x0

    invoke-super {p0, v1, p2, p3}, Landroid/widget/CursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 420
    :cond_0
    const-string v1, "Mms/MessageListAdapter"

    const-string v2, "getView() IllegalStateException return null view cause mDataValid is false"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isCheckedMessageId(JLjava/lang/String;)Z
    .locals 2
    .parameter "msgId"
    .parameter "msgType"

    .prologue
    .line 1382
    const-string v0, "sms"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1383
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 1387
    :goto_0
    return v0

    .line 1384
    :cond_0
    const-string v0, "wpm"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1385
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 1387
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

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
    .line 589
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030052

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public notAllowedCombineForward(Lcom/android/mms/ui/MessageItem;)Z
    .locals 1
    .parameter "msg"

    .prologue
    .line 531
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isMms()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/android/mms/ui/MessageItem;->mIsCbSms:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isWpm()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isDownloaded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 540
    :cond_0
    const/4 v0, 0x1

    .line 542
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .prologue
    .line 562
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 563
    const-string v0, "Mms/MessageListAdapter"

    const-string v1, "MessageListAdapter.notifyDataSetChanged()."

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/AdapterView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 569
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 571
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    invoke-interface {v0, p0}, Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;->onDataSetChanged(Lcom/android/mms/ui/MessageListAdapter;)V

    .line 574
    :cond_0
    return-void
.end method

.method protected onContentChanged()V
    .locals 1

    .prologue
    .line 578
    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    invoke-interface {v0, p0}, Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;->onContentChanged(Lcom/android/mms/ui/MessageListAdapter;)V

    .line 583
    :cond_0
    return-void
.end method

.method public refreshChecked(JLjava/lang/String;)V
    .locals 2
    .parameter "msgId"
    .parameter "msgType"

    .prologue
    .line 1400
    const-string v0, "sms"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mDummyCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1401
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1407
    :cond_0
    :goto_0
    return-void

    .line 1402
    :cond_1
    const-string v0, "wpm"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mDummyCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1403
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1404
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mDummyCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1405
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public resetCheckedList()V
    .locals 1

    .prologue
    .line 1313
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1314
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1315
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1316
    return-void
.end method

.method public setAnimation(Lcom/android/mms/animation/MsgBubbleListAnimation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 1459
    iput-object p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mMsgBubbleListAnimation:Lcom/android/mms/animation/MsgBubbleListAnimation;

    .line 1460
    return-void
.end method

.method public setChecked(JLjava/lang/String;)V
    .locals 2
    .parameter "msgId"
    .parameter "msgType"

    .prologue
    .line 1319
    const-string v0, "sms"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1320
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1335
    :cond_0
    :goto_0
    return-void

    .line 1323
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1324
    :cond_2
    const-string v0, "wpm"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1325
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1328
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1330
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1333
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setCopyToSimMode(Z)V
    .locals 1
    .parameter "isCopyToSimMode"

    .prologue
    .line 1277
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableMultiCopyToSIM()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1287
    :cond_0
    :goto_0
    return-void

    .line 1280
    :cond_1
    iput-boolean p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsCopyToSimMode:Z

    .line 1282
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsCopyToSimMode:Z

    if-eqz v0, :cond_0

    .line 1283
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1284
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1285
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public setDeleteMode(Z)V
    .locals 1
    .parameter "isDeleteMode"

    .prologue
    .line 1243
    iput-boolean p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsDeleteMode:Z

    .line 1245
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsDeleteMode:Z

    if-eqz v0, :cond_0

    .line 1246
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1247
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1248
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1250
    :cond_0
    return-void
.end method

.method public setMoveMode(Z)V
    .locals 1
    .parameter "isMoveMode"

    .prologue
    .line 1264
    iput-boolean p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsMoveMode:Z

    .line 1266
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsMoveMode:Z

    if-eqz v0, :cond_0

    .line 1267
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1268
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1269
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1271
    :cond_0
    return-void
.end method

.method public setMsgListItemHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 557
    iput-object p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mMsgListItemHandler:Landroid/os/Handler;

    .line 558
    return-void
.end method

.method public setMultiLockMode(Z)V
    .locals 1
    .parameter "isMultiLockMode"

    .prologue
    .line 1253
    iput-boolean p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsMultiLockMode:Z

    .line 1255
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsMultiLockMode:Z

    if-eqz v0, :cond_0

    .line 1256
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1257
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1258
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1260
    :cond_0
    return-void
.end method

.method public setOnDataSetChangedListener(Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 553
    iput-object p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    .line 554
    return-void
.end method

.method public setSaveMode(Z)V
    .locals 1
    .parameter "isSaveMode"

    .prologue
    .line 1290
    iput-boolean p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsSaveMode:Z

    .line 1292
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsSaveMode:Z

    if-eqz v0, :cond_0

    .line 1293
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1294
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1295
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1297
    :cond_0
    return-void
.end method

.method public setSelectionMode(Z)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 1302
    iput-boolean p1, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsSelectionMode:Z

    .line 1304
    iget-boolean v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mIsSelectionMode:Z

    if-eqz v0, :cond_0

    .line 1305
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1306
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1307
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1309
    :cond_0
    return-void
.end method

.method public toggleCheckBox(JLjava/lang/String;)Z
    .locals 3
    .parameter "msgId"
    .parameter "msgType"

    .prologue
    const/4 v0, 0x0

    .line 1346
    const-string v1, "sms"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1347
    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1348
    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1366
    :goto_0
    return v0

    .line 1351
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedSmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1366
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1352
    :cond_1
    const-string v1, "wpm"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1353
    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1354
    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1357
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedWpmList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1359
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1360
    iget-object v1, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1363
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/MessageListAdapter;->mCheckedMmsList:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
