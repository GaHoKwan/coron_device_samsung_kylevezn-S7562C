.class public Lcom/android/mms/ui/SimMessageListAdapter;
.super Landroid/widget/CursorAdapter;
.source "SimMessageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SimMessageListAdapter$OnDataSetChangedListener;
    }
.end annotation


# static fields
.field private static final CACHE_SIZE:I = 0x32

.field static final COLUMN_ID:I = 0x1

.field static final COLUMN_MMS_DATE:I = 0xc

.field static final COLUMN_MMS_DELIVERY_REPORT:I = 0x10

.field static final COLUMN_MMS_ERROR_TYPE:I = 0x12

.field static final COLUMN_MMS_LOCKED:I = 0x13

.field static final COLUMN_MMS_MESSAGE_BOX:I = 0xf

.field static final COLUMN_MMS_MESSAGE_TYPE:I = 0xe

.field static final COLUMN_MMS_READ:I = 0xd

.field static final COLUMN_MMS_READ_REPORT:I = 0x11

.field static final COLUMN_MMS_SUBJECT:I = 0xa

.field static final COLUMN_MMS_SUBJECT_CHARSET:I = 0xb

.field static final COLUMN_MSG_TYPE:I = 0x0

.field static final COLUMN_SMS_ADDRESS:I = 0x3

.field static final COLUMN_SMS_BODY:I = 0x4

.field static final COLUMN_SMS_DATE:I = 0x5

.field static final COLUMN_SMS_LOCKED:I = 0x9

.field static final COLUMN_SMS_READ:I = 0x6

.field static final COLUMN_SMS_STATUS:I = 0x8

.field static final COLUMN_SMS_TYPE:I = 0x7

.field static final COLUMN_THREAD_ID:I = 0x2

.field private static final DEBUG:Z = false

.field private static final LOCAL_LOGV:Z = false

.field static final PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "Mms/SimMessageListAdapter"


# instance fields
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

.field protected mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

.field private mHighlight:Ljava/lang/String;

.field protected mInflater:Landroid/view/LayoutInflater;

.field private mIsScrolling:Z

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

.field private mOnDataSetChangedListener:Lcom/android/mms/ui/SimMessageListAdapter$OnDataSetChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 66
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "transport_type"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "thread_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "address"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "body"

    aput-object v2, v0, v1

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

    const-string v2, "sub"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "sub_cs"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "date"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "read"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "m_type"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "msg_box"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "d_rpt"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "rr"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "err_type"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "locked"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/SimMessageListAdapter;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/ListView;ZLjava/lang/String;ZI)V
    .locals 2
    .parameter "context"
    .parameter "c"
    .parameter "listView"
    .parameter "useDefaultColumnsMap"
    .parameter "highlight"
    .parameter "autoRequery"
    .parameter "mode"

    .prologue
    .line 162
    invoke-direct {p0, p1, p2, p6}, Lcom/android/mms/ui/SimMessageListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 166
    if-eqz p5, :cond_0

    invoke-virtual {p5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/mms/ui/SimMessageListAdapter;->mHighlight:Ljava/lang/String;

    .line 168
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/mms/ui/SimMessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 169
    iput-object p3, p0, Lcom/android/mms/ui/SimMessageListAdapter;->mListView:Landroid/widget/ListView;

    .line 171
    iget-object v0, p0, Lcom/android/mms/ui/SimMessageListAdapter;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/mms/ui/SimMessageListAdapter$2;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/SimMessageListAdapter$2;-><init>(Lcom/android/mms/ui/SimMessageListAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 198
    if-eqz p4, :cond_1

    .line 199
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v0}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SimMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    .line 204
    :goto_1
    iput p7, p0, Lcom/android/mms/ui/SimMessageListAdapter;->mMode:I

    .line 205
    invoke-virtual {p0}, Lcom/android/mms/ui/SimMessageListAdapter;->clearCheckedList()V

    .line 206
    return-void

    .line 166
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 201
    :cond_1
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    invoke-direct {v0, p2}, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;-><init>(Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/mms/ui/SimMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 4
    .parameter "context"
    .parameter "c"
    .parameter "autoRequery"

    .prologue
    .line 147
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/SimMessageListAdapter;->mListView:Landroid/widget/ListView;

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SimMessageListAdapter;->mCheckedList:Ljava/util/ArrayList;

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/SimMessageListAdapter;->mIsScrolling:Z

    .line 150
    new-instance v0, Lcom/android/mms/ui/SimMessageListAdapter$1;

    const/16 v1, 0xa

    const/high16 v2, 0x3f80

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/mms/ui/SimMessageListAdapter$1;-><init>(Lcom/android/mms/ui/SimMessageListAdapter;IFZ)V

    iput-object v0, p0, Lcom/android/mms/ui/SimMessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    .line 156
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/SimMessageListAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/android/mms/ui/SimMessageListAdapter;->mIsScrolling:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/mms/ui/SimMessageListAdapter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/mms/ui/SimMessageListAdapter;->mIsScrolling:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/mms/ui/SimMessageListAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/android/mms/ui/SimMessageListAdapter;->mMode:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/SimMessageListAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/SimMessageListAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static getKey(Ljava/lang/String;J)J
    .locals 1
    .parameter "type"
    .parameter "id"

    .prologue
    .line 363
    const-string v0, "mms"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    neg-long p1, p1

    .line 366
    .end local p1
    :cond_0
    return-wide p1
.end method

.method public static isChecked(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 373
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public addCheckedItem(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 409
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/SimMessageListAdapter;->isCheckedItem(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/android/mms/ui/SimMessageListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    :cond_0
    return-void
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 12
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 215
    const-string v7, "Mms/SimMessageListAdapter"

    const-string v8, "bindView"

    invoke-static {v7, v8}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v7, p0, Lcom/android/mms/ui/SimMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v7, v7, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsType:I

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 218
    .local v6, type:I
    iget-object v7, p0, Lcom/android/mms/ui/SimMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v7, v7, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsAddress:I

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, addr:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/mms/ui/SimMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v7, v7, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsDate:I

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 220
    .local v2, date:Ljava/lang/Long;
    iget-object v7, p0, Lcom/android/mms/ui/SimMessageListAdapter;->mColumnsMap:Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;

    iget v7, v7, Lcom/android/mms/ui/MessageListAdapter$ColumnsMap;->mColumnSmsBody:I

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 233
    .local v1, body:Ljava/lang/String;
    const v7, 0x7f0e0214

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 234
    .local v3, mCheckBox:Landroid/widget/CheckBox;
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v5

    .line 236
    .local v5, pos:I
    const v7, 0x7f0e020f

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    const/4 v8, 0x1

    if-ne v6, v8, :cond_3

    const v8, 0x7f020245

    :goto_0
    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 241
    const/4 v7, 0x0

    invoke-static {v0, v7}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v4

    .line 242
    .local v4, nameInContact:Ljava/lang/String;
    const v7, 0x7f0e0210

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    if-nez v4, :cond_4

    .end local v0           #addr:Ljava/lang/String;
    :goto_1
    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    const/4 v7, 0x1

    if-eq v6, v7, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSentTimeInSimList()Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_5

    .line 245
    :cond_0
    const v7, 0x7f0e0212

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget-object v8, p0, Landroid/widget/CursorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const/4 v11, 0x1

    invoke-static {v8, v9, v10, v11}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    :goto_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableSentTimeInSimList()Z

    move-result v7

    if-nez v7, :cond_1

    .line 250
    const v7, 0x7f0e0212

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const/4 v8, 0x1

    if-ne v6, v8, :cond_6

    const/4 v8, 0x0

    :goto_3
    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 251
    :cond_1
    const v7, 0x7f0e0211

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    const v7, 0x7f0e0213

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iget v7, p0, Lcom/android/mms/ui/SimMessageListAdapter;->mMode:I

    if-eqz v7, :cond_7

    const/4 v7, 0x0

    :goto_4
    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    .line 256
    new-instance v7, Lcom/android/mms/ui/SimMessageListAdapter$3;

    invoke-direct {v7, p0, v3}, Lcom/android/mms/ui/SimMessageListAdapter$3;-><init>(Lcom/android/mms/ui/SimMessageListAdapter;Landroid/widget/CheckBox;)V

    invoke-virtual {p1, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 266
    iget-object v7, p0, Landroid/widget/CursorAdapter;->mContext:Landroid/content/Context;

    check-cast v7, Landroid/app/Activity;

    invoke-virtual {v7, p1}, Landroid/app/Activity;->registerForContextMenu(Landroid/view/View;)V

    .line 268
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 269
    new-instance v7, Lcom/android/mms/ui/SimMessageListAdapter$4;

    invoke-direct {v7, p0}, Lcom/android/mms/ui/SimMessageListAdapter$4;-><init>(Lcom/android/mms/ui/SimMessageListAdapter;)V

    invoke-virtual {v3, v7}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 279
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/view/View;->setClickable(Z)V

    .line 281
    iget v7, p0, Lcom/android/mms/ui/SimMessageListAdapter;->mMode:I

    if-eqz v7, :cond_2

    .line 282
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/mms/ui/SimMessageListAdapter;->isCheckedItem(I)Z

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 305
    :cond_2
    return-void

    .line 236
    .end local v4           #nameInContact:Ljava/lang/String;
    .restart local v0       #addr:Ljava/lang/String;
    :cond_3
    const v8, 0x7f020246

    goto/16 :goto_0

    .restart local v4       #nameInContact:Ljava/lang/String;
    :cond_4
    move-object v0, v4

    .line 242
    goto/16 :goto_1

    .line 247
    .end local v0           #addr:Ljava/lang/String;
    :cond_5
    const v7, 0x7f0e0212

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 250
    :cond_6
    const/16 v8, 0x8

    goto :goto_3

    .line 253
    :cond_7
    const/16 v7, 0x8

    goto :goto_4
.end method

.method public clearCheckedList()V
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/mms/ui/SimMessageListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 433
    return-void
.end method

.method public getCachedMessageItem(Ljava/lang/String;JLandroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;
    .locals 4
    .parameter "type"
    .parameter "msgId"
    .parameter "c"

    .prologue
    .line 350
    iget-object v1, p0, Lcom/android/mms/ui/SimMessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    invoke-static {p1, p2, p3}, Lcom/android/mms/ui/SimMessageListAdapter;->getKey(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MessageItem;

    .line 359
    .local v0, item:Lcom/android/mms/ui/MessageItem;
    return-object v0
.end method

.method public getCheckedList()Ljava/util/ArrayList;
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
    .line 424
    iget-object v0, p0, Lcom/android/mms/ui/SimMessageListAdapter;->mCheckedList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCheckedSize()I
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/mms/ui/SimMessageListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public isCheckedItem(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/mms/ui/SimMessageListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/mms/ui/SimMessageListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030085

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .prologue
    .line 323
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 324
    const-string v0, "Mms/SimMessageListAdapter"

    const-string v1, "MessageListAdapter.notifyDataSetChanged()."

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcom/android/mms/ui/SimMessageListAdapter;->mMessageItemCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 329
    iget-object v0, p0, Lcom/android/mms/ui/SimMessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/ui/SimMessageListAdapter$OnDataSetChangedListener;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/android/mms/ui/SimMessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/ui/SimMessageListAdapter$OnDataSetChangedListener;

    invoke-interface {v0, p0}, Lcom/android/mms/ui/SimMessageListAdapter$OnDataSetChangedListener;->onDataSetChanged(Lcom/android/mms/ui/SimMessageListAdapter;)V

    .line 332
    :cond_0
    return-void
.end method

.method protected onContentChanged()V
    .locals 3

    .prologue
    .line 336
    const-string v0, "Mms/SimMessageListAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onContentChanged mAutoRequery="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/widget/CursorAdapter;->mAutoRequery:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/mms/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-boolean v0, p0, Landroid/widget/CursorAdapter;->mAutoRequery:Z

    if-eqz v0, :cond_1

    .line 339
    invoke-super {p0}, Landroid/widget/CursorAdapter;->onContentChanged()V

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 342
    :cond_1
    iget-object v0, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/android/mms/ui/SimMessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/ui/SimMessageListAdapter$OnDataSetChangedListener;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/android/mms/ui/SimMessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/ui/SimMessageListAdapter$OnDataSetChangedListener;

    invoke-interface {v0, p0}, Lcom/android/mms/ui/SimMessageListAdapter$OnDataSetChangedListener;->onContentChanged(Lcom/android/mms/ui/SimMessageListAdapter;)V

    goto :goto_0
.end method

.method public removeCheckedItem(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 418
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/SimMessageListAdapter;->isCheckedItem(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/android/mms/ui/SimMessageListAdapter;->mCheckedList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 421
    :cond_0
    return-void
.end method

.method public setChecked(IZ)V
    .locals 0
    .parameter "position"
    .parameter "isChecked"

    .prologue
    .line 381
    return-void
.end method

.method public setMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 403
    iput p1, p0, Lcom/android/mms/ui/SimMessageListAdapter;->mMode:I

    .line 404
    invoke-virtual {p0}, Lcom/android/mms/ui/SimMessageListAdapter;->clearCheckedList()V

    .line 405
    invoke-virtual {p0}, Lcom/android/mms/ui/SimMessageListAdapter;->notifyDataSetChanged()V

    .line 406
    return-void
.end method

.method public setMsgListItemHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 318
    iput-object p1, p0, Lcom/android/mms/ui/SimMessageListAdapter;->mMsgListItemHandler:Landroid/os/Handler;

    .line 319
    return-void
.end method

.method public setOnDataSetChangedListener(Lcom/android/mms/ui/SimMessageListAdapter$OnDataSetChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 314
    iput-object p1, p0, Lcom/android/mms/ui/SimMessageListAdapter;->mOnDataSetChangedListener:Lcom/android/mms/ui/SimMessageListAdapter$OnDataSetChangedListener;

    .line 315
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

    .line 384
    if-nez p2, :cond_1

    move-object v0, p1

    .line 385
    check-cast v0, Landroid/widget/CheckBox;

    .line 387
    .local v0, checkBox:Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 388
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p3, :cond_2

    .line 389
    invoke-virtual {p0, v1, v2}, Lcom/android/mms/ui/SimMessageListAdapter;->setChecked(IZ)V

    .line 388
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 391
    .end local v1           #i:I
    :cond_0
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1
    if-ge v1, p3, :cond_2

    .line 392
    invoke-virtual {p0, v1, v3}, Lcom/android/mms/ui/SimMessageListAdapter;->setChecked(IZ)V

    .line 391
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 395
    .end local v0           #checkBox:Landroid/widget/CheckBox;
    .end local v1           #i:I
    :cond_1
    invoke-static {p2}, Lcom/android/mms/ui/SimMessageListAdapter;->isChecked(I)Z

    move-result v4

    if-nez v4, :cond_3

    :goto_2
    invoke-virtual {p0, p2, v2}, Lcom/android/mms/ui/SimMessageListAdapter;->setChecked(IZ)V

    .line 397
    :cond_2
    return-void

    :cond_3
    move v2, v3

    .line 395
    goto :goto_2
.end method
