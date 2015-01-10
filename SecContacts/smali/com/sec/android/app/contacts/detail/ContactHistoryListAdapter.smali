.class public Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "ContactHistoryListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ContactInfo;,
        Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;,
        Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$LogInfo;
    }
.end annotation


# static fields
.field private static NETWORK_RESTRICTED_NUMBER:Ljava/lang/String;

.field private static PAYPHONE_NUMBER:Ljava/lang/String;

.field private static PRIVATE_NUMBER:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field private static UNKNOWN_NUMBER:Ljava/lang/String;

.field private static isVoLTEEnabled:Z


# instance fields
.field mContactInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ContactInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mFragment:Landroid/app/Fragment;

.field private mIndexer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsDeleteMode:Z

.field private mIsSmsView:Z

.field private mLoading:Z

.field private mMsgId:J

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private final mRequests:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$LogInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSdfNow:Ljava/text/SimpleDateFormat;

.field private mSections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateEnable:Z

.field mVoLTEStateTracker:Lcom/android/contacts/VoLTEStateTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-string v0, "ContactHistoryListAdapter"

    sput-object v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->TAG:Ljava/lang/String;

    .line 97
    const-string v0, "-1"

    sput-object v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->UNKNOWN_NUMBER:Ljava/lang/String;

    .line 98
    const-string v0, "-2"

    sput-object v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->PRIVATE_NUMBER:Ljava/lang/String;

    .line 99
    const-string v0, "-3"

    sput-object v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->PAYPHONE_NUMBER:Ljava/lang/String;

    .line 101
    const-string v0, "P"

    sput-object v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->NETWORK_RESTRICTED_NUMBER:Ljava/lang/String;

    .line 118
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->isVoLTEEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "layout"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 121
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 110
    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mSdfNow:Ljava/text/SimpleDateFormat;

    .line 112
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mLoading:Z

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mIsDeleteMode:Z

    .line 119
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mUpdateEnable:Z

    .line 263
    new-instance v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;-><init>(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 122
    iput-object p1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContactInfo:Ljava/util/HashMap;

    .line 124
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mRequests:Ljava/util/LinkedList;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mSections:Ljava/util/ArrayList;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mIndexer:Ljava/util/ArrayList;

    .line 127
    const v0, 0x7f040050

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->setViewResource(I)V

    .line 128
    invoke-direct {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->setDateFormat()V

    .line 130
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_IMS_EnableVoLTE"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    new-instance v0, Lcom/android/contacts/VoLTEStateTracker;

    invoke-direct {v0}, Lcom/android/contacts/VoLTEStateTracker;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mVoLTEStateTracker:Lcom/android/contacts/VoLTEStateTracker;

    .line 134
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mVoLTEStateTracker:Lcom/android/contacts/VoLTEStateTracker;

    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/contacts/VoLTEStateTracker;->isVolteEnabled(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->isVoLTEEnabled:Z

    .line 137
    :cond_0
    return-void
.end method

.method private IsExistedSmsMms(JI)Z
    .locals 10
    .parameter "messageId"
    .parameter "type"

    .prologue
    const/16 v6, 0x12c

    const/16 v4, 0xc8

    const/4 v5, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 833
    const/4 v7, 0x0

    .line 834
    .local v7, cursor:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 835
    .local v1, cr:Landroid/content/ContentResolver;
    if-eq p3, v6, :cond_0

    if-eq p3, v4, :cond_0

    move v0, v8

    .line 862
    :goto_0
    return v0

    .line 838
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-gtz v0, :cond_1

    move v0, v8

    .line 839
    goto :goto_0

    .line 842
    :cond_1
    if-ne p3, v6, :cond_3

    .line 843
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    new-array v3, v9, [Ljava/lang/String;

    const-string v4, "thread_id"

    aput-object v4, v3, v8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 851
    :cond_2
    :goto_1
    if-nez v7, :cond_4

    move v0, v8

    .line 852
    goto :goto_0

    .line 846
    :cond_3
    if-ne p3, v4, :cond_2

    .line 847
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "thread_id"

    aput-object v4, v3, v8

    const-string v4, "m_type"

    aput-object v4, v3, v9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    goto :goto_1

    .line 855
    :cond_4
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v9, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 856
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_5

    .line 860
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v0, v9

    goto :goto_0

    :cond_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v0, v8

    .line 862
    goto :goto_0

    .line 860
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mIsDeleteMode:Z

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;)Landroid/app/Fragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mFragment:Landroid/app/Fragment;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;IJLjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->verifySmsMmsForTablet(IJLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->verifyEmail(J)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;IJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->verifySmsMms(IJ)V

    return-void
.end method

.method private calcSection(J)Ljava/lang/String;
    .locals 3
    .parameter "lDate"

    .prologue
    .line 522
    const/4 v0, 0x0

    .line 523
    .local v0, date:Ljava/lang/String;
    invoke-static {p1, p2}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 524
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d02cd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 530
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 531
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 534
    .end local v0           #date:Ljava/lang/String;
    :goto_1
    return-object v0

    .line 525
    .restart local v0       #date:Ljava/lang/String;
    :cond_0
    const-wide/32 v1, 0x5265c00

    add-long/2addr v1, p1

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 526
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d02ce

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 528
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mSdfNow:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 534
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private clearCache()V
    .locals 2

    .prologue
    .line 169
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContactInfo:Ljava/util/HashMap;

    monitor-enter v1

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContactInfo:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 171
    monitor-exit v1

    .line 172
    return-void

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private enqueueRequest(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .parameter "number"
    .parameter "name"
    .parameter "logType"

    .prologue
    .line 576
    new-instance v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$LogInfo;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$LogInfo;-><init>()V

    .line 577
    .local v0, ciq:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$LogInfo;
    iput-object p1, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$LogInfo;->number:Ljava/lang/String;

    .line 578
    iput-object p2, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$LogInfo;->name:Ljava/lang/String;

    .line 579
    iput p3, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$LogInfo;->logType:I

    .line 580
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mRequests:Ljava/util/LinkedList;

    monitor-enter v2

    .line 581
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 582
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 583
    monitor-exit v2

    .line 584
    return-void

    .line 583
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private findThreadId(Landroid/content/Context;)J
    .locals 13
    .parameter "context"

    .prologue
    const-wide/16 v8, -0x1

    const/4 v12, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 494
    const/4 v7, 0x0

    .line 495
    .local v7, cursor:Landroid/database/Cursor;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 496
    .local v1, cr:Landroid/content/ContentResolver;
    iget-wide v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mMsgId:J

    const-wide/16 v10, 0x0

    cmp-long v0, v2, v10

    if-gtz v0, :cond_0

    move-wide v2, v8

    .line 518
    :goto_0
    return-wide v2

    .line 499
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mIsSmsView:Z

    if-eqz v0, :cond_1

    .line 500
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    new-array v3, v12, [Ljava/lang/String;

    const-string v0, "thread_id"

    aput-object v0, v3, v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v10, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mMsgId:J

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p1

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 508
    :goto_1
    if-nez v7, :cond_2

    move-wide v2, v8

    .line 509
    goto :goto_0

    .line 504
    :cond_1
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "thread_id"

    aput-object v0, v3, v4

    const-string v0, "m_type"

    aput-object v0, v3, v12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v10, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mMsgId:J

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p1

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    goto :goto_1

    .line 512
    :cond_2
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v12, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 513
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 516
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-wide v2, v8

    .line 518
    goto :goto_0

    .line 516
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getFormatDuration(J)Ljava/lang/String;
    .locals 9
    .parameter "elapsedSeconds"

    .prologue
    .line 802
    const-wide/16 v1, 0x0

    .line 803
    .local v1, hours:J
    const-wide/16 v3, 0x0

    .line 804
    .local v3, minutes:J
    const-wide/16 v5, 0x0

    .line 805
    .local v5, seconds:J
    const-wide/16 v7, 0xe10

    cmp-long v7, p1, v7

    if-ltz v7, :cond_0

    .line 806
    const-wide/16 v7, 0xe10

    div-long v1, p1, v7

    .line 807
    const-wide/16 v7, 0xe10

    mul-long/2addr v7, v1

    sub-long/2addr p1, v7

    .line 809
    :cond_0
    const-wide/16 v7, 0x3c

    cmp-long v7, p1, v7

    if-ltz v7, :cond_1

    .line 810
    const-wide/16 v7, 0x3c

    div-long v3, p1, v7

    .line 811
    const-wide/16 v7, 0x3c

    mul-long/2addr v7, v3

    sub-long/2addr p1, v7

    .line 813
    :cond_1
    move-wide v5, p1

    .line 814
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 815
    .local v0, duration:Ljava/lang/StringBuffer;
    const-wide/16 v7, 0xa

    cmp-long v7, v1, v7

    if-gez v7, :cond_2

    .line 816
    const/16 v7, 0x30

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 818
    :cond_2
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 819
    const/16 v7, 0x3a

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 820
    const-wide/16 v7, 0xa

    cmp-long v7, v3, v7

    if-gez v7, :cond_3

    .line 821
    const/16 v7, 0x30

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 823
    :cond_3
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 824
    const/16 v7, 0x3a

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 825
    const-wide/16 v7, 0xa

    cmp-long v7, v5, v7

    if-gez v7, :cond_4

    .line 826
    const/16 v7, 0x30

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 828
    :cond_4
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 829
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private setContentsText(ILjava/lang/String;Ljava/lang/String;Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;)V
    .locals 3
    .parameter "logType"
    .parameter "subject"
    .parameter "contents"
    .parameter "cache"

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 724
    sparse-switch p1, :sswitch_data_0

    .line 753
    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 756
    :goto_0
    return-void

    .line 726
    :sswitch_0
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 727
    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 730
    :goto_1
    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 729
    :cond_0
    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    const v1, 0x7f0d02cf

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 734
    :sswitch_1
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 735
    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 736
    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 738
    :cond_1
    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 742
    :sswitch_2
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 743
    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 744
    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 745
    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 746
    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 747
    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 749
    :cond_3
    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 724
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_2
        0x12c -> :sswitch_1
        0x190 -> :sswitch_0
    .end sparse-switch
.end method

.method private setContentsText(ILjava/lang/String;Ljava/lang/String;Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;Z)V
    .locals 3
    .parameter "logType"
    .parameter "subject"
    .parameter "contents"
    .parameter "cache"
    .parameter "isExisted"

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 760
    sparse-switch p1, :sswitch_data_0

    .line 789
    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 792
    :goto_0
    return-void

    .line 762
    :sswitch_0
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 763
    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 766
    :goto_1
    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 765
    :cond_0
    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    const v1, 0x7f0d02cf

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 770
    :sswitch_1
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p5, :cond_1

    .line 771
    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 772
    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 774
    :cond_1
    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 778
    :sswitch_2
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p5, :cond_2

    .line 779
    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 780
    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 781
    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p5, :cond_3

    .line 782
    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 783
    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 785
    :cond_3
    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 760
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_2
        0x12c -> :sswitch_1
        0x190 -> :sswitch_0
    .end sparse-switch
.end method

.method private setDateFormat()V
    .locals 3

    .prologue
    .line 538
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "date_format"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 540
    .local v0, dateType:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/contacts/util/DateUtils;->getSettingDateFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mSdfNow:Ljava/text/SimpleDateFormat;

    .line 541
    return-void
.end method

.method private setDurationText(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;Ljava/lang/String;I)V
    .locals 4
    .parameter "cache"
    .parameter "duration"
    .parameter "logType"

    .prologue
    .line 596
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_DisableCallDuration"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    .line 597
    .local v0, disableCallDuration:Z
    if-nez v0, :cond_1

    const/16 v1, 0x64

    if-eq p3, v1, :cond_0

    const/16 v1, 0x1f4

    if-eq p3, v1, :cond_0

    const/16 v1, 0x320

    if-eq p3, v1, :cond_0

    const/16 v1, 0x3e8

    if-ne p3, v1, :cond_1

    .line 599
    :cond_0
    iget-object v1, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tDuration:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 600
    iget-object v1, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tDuration:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->getFormatDuration(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 604
    :goto_0
    return-void

    .line 602
    :cond_1
    iget-object v1, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tDuration:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setHeaderView(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;I)V
    .locals 4
    .parameter "cache"
    .parameter "id"

    .prologue
    .line 586
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mIndexer:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 587
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mIndexer:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 588
    .local v0, index:I
    iget-object v2, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->headerView:Landroid/view/View;

    const v3, 0x7f0901a7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 589
    .local v1, title:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 590
    iget-object v2, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->headerView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 594
    .end local v0           #index:I
    .end local v1           #title:Landroid/widget/TextView;
    :goto_0
    return-void

    .line 592
    :cond_0
    iget-object v2, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->headerView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setLogTypeText(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;I)V
    .locals 2
    .parameter "cache"
    .parameter "logType"

    .prologue
    const v1, 0x7f0204f6

    .line 636
    sparse-switch p2, :sswitch_data_0

    .line 696
    :goto_0
    return-void

    .line 638
    :sswitch_0
    iget-object v0, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->iType:Landroid/widget/ImageView;

    const v1, 0x7f0204f4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 641
    :sswitch_1
    invoke-static {}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->makeFeature()V

    .line 642
    const-string v0, "feature_kor"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 643
    const-string v0, "feature_skt"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 644
    iget-object v0, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->iType:Landroid/widget/ImageView;

    const v1, 0x7f0204f7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 645
    :cond_0
    const-string v0, "feature_kt"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 646
    iget-object v0, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->iType:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 648
    :cond_1
    iget-object v0, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->iType:Landroid/widget/ImageView;

    const v1, 0x7f0204f5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 651
    :cond_2
    iget-object v0, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->iType:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 656
    :sswitch_2
    invoke-static {}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->makeFeature()V

    .line 657
    const-string v0, "feature_kor"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 658
    const-string v0, "feature_skt"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 659
    iget-object v0, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->iType:Landroid/widget/ImageView;

    const v1, 0x7f0204ff

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 660
    :cond_3
    const-string v0, "feature_kt"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 661
    iget-object v0, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->iType:Landroid/widget/ImageView;

    const v1, 0x7f0204fd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 663
    :cond_4
    iget-object v0, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->iType:Landroid/widget/ImageView;

    const v1, 0x7f0204fe

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 666
    :cond_5
    iget-object v0, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->iType:Landroid/widget/ImageView;

    const v1, 0x7f0204fc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 671
    :sswitch_3
    sget-boolean v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->isVoLTEEnabled:Z

    if-eqz v0, :cond_6

    .line 673
    iget-object v0, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->iType:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 677
    :cond_6
    iget-object v0, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->iType:Landroid/widget/ImageView;

    const v1, 0x7f0204f9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 682
    :sswitch_4
    iget-object v0, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->iType:Landroid/widget/ImageView;

    const v1, 0x7f0204fb

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 685
    :sswitch_5
    iget-object v0, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->iType:Landroid/widget/ImageView;

    const v1, 0x7f0204fa

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 688
    :sswitch_6
    iget-object v0, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->iType:Landroid/widget/ImageView;

    const v1, 0x7f0204f8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 691
    :sswitch_7
    iget-object v0, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->iType:Landroid/widget/ImageView;

    const v1, 0x7f0205de

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 636
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_5
        0x12c -> :sswitch_4
        0x190 -> :sswitch_6
        0x1f4 -> :sswitch_2
        0x320 -> :sswitch_3
        0x384 -> :sswitch_7
        0x3e8 -> :sswitch_1
    .end sparse-switch
.end method

.method private setNumber(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "view"
    .parameter "number"
    .parameter "name"

    .prologue
    .line 711
    if-eqz p2, :cond_0

    sget-object v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->UNKNOWN_NUMBER:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 712
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0099

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 713
    move-object p2, p3

    .line 721
    :cond_1
    :goto_0
    return-object p2

    .line 714
    :cond_2
    sget-object v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->PRIVATE_NUMBER:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 715
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d009a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 716
    move-object p2, p3

    goto :goto_0

    .line 717
    :cond_3
    sget-object v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->PAYPHONE_NUMBER:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 718
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d009b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 719
    move-object p2, p3

    goto :goto_0
.end method

.method private setNumberText(Landroid/view/View;Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .parameter "view"
    .parameter "cache"
    .parameter "number"
    .parameter "name"
    .parameter "logType"

    .prologue
    .line 699
    if-eqz p3, :cond_0

    sget-object v1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->UNKNOWN_NUMBER:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->PRIVATE_NUMBER:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->PAYPHONE_NUMBER:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 701
    :cond_0
    invoke-direct {p0, p1, p3, p4}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->setNumber(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 703
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 704
    .local v0, numberbuff:Ljava/lang/StringBuffer;
    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 705
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    .line 706
    iget-object v1, p2, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tNumber:Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 707
    iget-object v1, p2, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tSubject:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 708
    return-void
.end method

.method private setSendTypeIcon(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;I)V
    .locals 2
    .parameter "cache"
    .parameter "type"

    .prologue
    .line 606
    packed-switch p2, :pswitch_data_0

    .line 622
    iget-object v0, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->iSendType:Landroid/widget/ImageView;

    const v1, 0x7f0205b2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 625
    :goto_0
    return-void

    .line 608
    :pswitch_0
    iget-object v0, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->iSendType:Landroid/widget/ImageView;

    const v1, 0x7f0205c6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 611
    :pswitch_1
    iget-object v0, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->iSendType:Landroid/widget/ImageView;

    const v1, 0x7f0205c8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 614
    :pswitch_2
    iget-object v0, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->iSendType:Landroid/widget/ImageView;

    const v1, 0x7f0205c5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 618
    :pswitch_3
    iget-object v0, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->iSendType:Landroid/widget/ImageView;

    const v1, 0x7f0205c7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 606
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private setTimeText(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;Ljava/lang/String;)V
    .locals 7
    .parameter "cache"
    .parameter "time"

    .prologue
    .line 628
    if-eqz p2, :cond_0

    const-string v0, "null"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 634
    :cond_0
    :goto_0
    return-void

    .line 630
    :cond_1
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 631
    .local v1, lTime:J
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    const/16 v5, 0x101

    move-wide v3, v1

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v6

    .line 633
    .local v6, dateClause:Ljava/lang/CharSequence;
    iget-object v0, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tTime:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateContactInfo(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "logType"
    .parameter "number"
    .parameter "name"

    .prologue
    .line 556
    const/16 v1, 0x258

    if-eq p1, v1, :cond_0

    .line 558
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContactInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ContactInfo;

    .line 559
    .local v0, info:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ContactInfo;
    if-nez v0, :cond_1

    .line 560
    sget-object v1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->TAG:Ljava/lang/String;

    const-string v2, "info null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    sget-object v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ContactInfo;->EMPTY:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ContactInfo;

    .line 564
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContactInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    invoke-direct {p0, p2, p3, p1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->enqueueRequest(Ljava/lang/String;Ljava/lang/String;I)V

    .line 574
    .end local v0           #info:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ContactInfo;
    :cond_0
    :goto_0
    return-void

    .line 566
    .restart local v0       #info:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ContactInfo;
    :cond_1
    sget-object v1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ContactInfo;->EMPTY:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ContactInfo;

    if-eq v0, v1, :cond_0

    .line 567
    iget-object v1, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ContactInfo;->name:Ljava/lang/String;

    invoke-static {v1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 569
    invoke-direct {p0, p2, p3, p1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->enqueueRequest(Ljava/lang/String;Ljava/lang/String;I)V

    .line 571
    :cond_2
    iget-object p3, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ContactInfo;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method private verifyEmail(J)V
    .locals 11
    .parameter "messageId"

    .prologue
    const/4 v2, 0x0

    .line 471
    const-string v0, "content://com.android.email.provider/message"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 472
    .local v1, mUri:Landroid/net/Uri;
    const-string v9, "_id"

    .line 473
    .local v9, id:Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 475
    .local v8, cursor:Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 476
    const-string v6, "com.android.email.MessageView_message_id"

    .line 477
    .local v6, EXTRA_MESSAGE_ID:Ljava/lang/String;
    const-string v7, "com.android.email.LogProvider"

    .line 478
    .local v7, LOG_VIEW_ACTION:Ljava/lang/String;
    new-instance v10, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 479
    .local v10, intent:Landroid/content/Intent;
    const-string v0, "com.android.email"

    const-string v2, "com.android.email.activity.Welcome"

    invoke-virtual {v10, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 480
    const-string v0, "vnd.android.cursor.item/email"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 481
    invoke-virtual {v10, v6, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 482
    invoke-virtual {v10, v7, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 483
    const v0, 0x10008000

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 484
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 490
    .end local v6           #EXTRA_MESSAGE_ID:Ljava/lang/String;
    .end local v7           #LOG_VIEW_ACTION:Ljava/lang/String;
    .end local v10           #intent:Landroid/content/Intent;
    :goto_0
    if-eqz v8, :cond_0

    .line 491
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 492
    :cond_0
    return-void

    .line 486
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d02d0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private verifySmsMms(IJ)V
    .locals 8
    .parameter "type"
    .parameter "messageId"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    .line 377
    const/4 v0, 0x0

    .line 378
    .local v0, isThreadView:Z
    const-wide/16 v2, -0x1

    .line 379
    .local v2, threadId:J
    iput-boolean v7, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mIsSmsView:Z

    .line 380
    const/16 v4, 0x12c

    if-ne p1, v4, :cond_1

    cmp-long v4, p2, v5

    if-lez v4, :cond_1

    .line 381
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mIsSmsView:Z

    .line 382
    iput-wide p2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mMsgId:J

    .line 387
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->findThreadId(Landroid/content/Context;)J

    move-result-wide v2

    cmp-long v4, v2, v5

    if-lez v4, :cond_4

    .line 388
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 389
    .local v1, smsMmsIntent:Landroid/content/Intent;
    const-string v4, "thread_id"

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 390
    const-string v4, "vnd.android-dir/mms-sms"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 391
    const/high16 v4, 0x400

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 392
    if-eqz v0, :cond_2

    .line 401
    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 407
    .end local v1           #smsMmsIntent:Landroid/content/Intent;
    :goto_2
    return-void

    .line 383
    :cond_1
    const/16 v4, 0xc8

    if-ne p1, v4, :cond_0

    cmp-long v4, p2, v5

    if-lez v4, :cond_0

    .line 384
    iput-boolean v7, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mIsSmsView:Z

    .line 385
    iput-wide p2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mMsgId:J

    goto :goto_0

    .line 394
    .restart local v1       #smsMmsIntent:Landroid/content/Intent;
    :cond_2
    iget-boolean v4, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mIsSmsView:Z

    if-eqz v4, :cond_3

    .line 395
    const-string v4, "select_id"

    iget-wide v5, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mMsgId:J

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 396
    const-string v4, "message_type"

    const-string v5, "sms"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 398
    :cond_3
    const-string v4, "select_id"

    iget-wide v5, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mMsgId:J

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 399
    const-string v4, "message_type"

    const-string v5, "mms"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 403
    .end local v1           #smsMmsIntent:Landroid/content/Intent;
    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d02d0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method

.method private verifySmsMmsForTablet(IJLjava/lang/String;)V
    .locals 8
    .parameter "type"
    .parameter "messageId"
    .parameter "logNum"

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    .line 440
    const/4 v0, 0x0

    .line 441
    .local v0, isThreadView:Z
    iput-boolean v5, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mIsSmsView:Z

    .line 442
    const/16 v2, 0x12c

    if-ne p1, v2, :cond_1

    cmp-long v2, p2, v6

    if-lez v2, :cond_1

    .line 443
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mIsSmsView:Z

    .line 444
    iput-wide p2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mMsgId:J

    .line 449
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->findThreadId(Landroid/content/Context;)J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-lez v2, :cond_4

    .line 451
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    const-string v3, "smsto"

    const/4 v4, 0x0

    invoke-static {v3, p4, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 453
    .local v1, smsMmsIntent:Landroid/content/Intent;
    const v2, 0x10008000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 454
    if-eqz v0, :cond_2

    .line 463
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 469
    .end local v1           #smsMmsIntent:Landroid/content/Intent;
    :goto_2
    return-void

    .line 445
    :cond_1
    const/16 v2, 0xc8

    if-ne p1, v2, :cond_0

    cmp-long v2, p2, v6

    if-lez v2, :cond_0

    .line 446
    iput-boolean v5, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mIsSmsView:Z

    .line 447
    iput-wide p2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mMsgId:J

    goto :goto_0

    .line 456
    .restart local v1       #smsMmsIntent:Landroid/content/Intent;
    :cond_2
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mIsSmsView:Z

    if-eqz v2, :cond_3

    .line 457
    const-string v2, "select_id"

    iget-wide v3, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mMsgId:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 458
    const-string v2, "message_type"

    const-string v3, "sms"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 460
    :cond_3
    const-string v2, "select_id"

    iget-wide v3, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mMsgId:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 461
    const-string v2, "message_type"

    const-string v3, "mms"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 465
    .end local v1           #smsMmsIntent:Landroid/content/Intent;
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d02d0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 21
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 222
    sget-object v3, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->TAG:Ljava/lang/String;

    const-string v4, "= bindView() ="

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;

    .line 224
    .local v5, cache:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 225
    .local v16, id:I
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 226
    .local v8, logType:I
    const/4 v3, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 227
    .local v20, type:I
    const/4 v3, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 228
    .local v7, name:Ljava/lang/String;
    const/4 v3, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 229
    .local v6, number:Ljava/lang/String;
    const/4 v3, 0x7

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 230
    .local v11, subject:Ljava/lang/String;
    const/16 v3, 0x8

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 231
    .local v12, contents:Ljava/lang/String;
    const/4 v3, 0x5

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 232
    .local v19, time:Ljava/lang/String;
    const/16 v3, 0x9

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 234
    .local v15, duration:Ljava/lang/String;
    const/4 v3, 0x6

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 235
    .local v17, msgId:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-direct {v0, v1, v2, v8}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->IsExistedSmsMms(JI)Z

    move-result v14

    .line 237
    .local v14, isExistedMsg:Z
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v6, v7}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->updateContactInfo(ILjava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-object v3, v5, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->listItemView:Landroid/widget/LinearLayout;

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 239
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mIsDeleteMode:Z

    if-eqz v3, :cond_0

    .line 240
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mFragment:Landroid/app/Fragment;

    iget-object v4, v5, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->listItemView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/app/Fragment;->unregisterForContextMenu(Landroid/view/View;)V

    .line 241
    iget-object v3, v5, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 246
    :goto_0
    iget-object v3, v5, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->listItemView:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    iget-object v3, v5, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->headerView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v5, v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->setHeaderView(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;I)V

    .line 249
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v5, v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->setSendTypeIcon(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;I)V

    .line 250
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v5, v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->setTimeText(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;Ljava/lang/String;)V

    .line 251
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v15, v8}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->setDurationText(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;Ljava/lang/String;I)V

    .line 252
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v8}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->setLogTypeText(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;I)V

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    .line 253
    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->setNumberText(Landroid/view/View;Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;Ljava/lang/String;Ljava/lang/String;I)V

    .line 255
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Contact_RemoveLog4DeletedMsg"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v9, p0

    move v10, v8

    move-object v13, v5

    .line 257
    invoke-direct/range {v9 .. v14}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->setContentsText(ILjava/lang/String;Ljava/lang/String;Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;Z)V

    .line 262
    :goto_1
    return-void

    .line 243
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mFragment:Landroid/app/Fragment;

    iget-object v4, v5, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->listItemView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/app/Fragment;->registerForContextMenu(Landroid/view/View;)V

    .line 244
    iget-object v3, v5, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    goto :goto_0

    .line 259
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v11, v12, v5}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->setContentsText(ILjava/lang/String;Ljava/lang/String;Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;)V

    goto :goto_1
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 8
    .parameter "cursor"

    .prologue
    .line 140
    iget-object v6, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 141
    iget-object v6, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mIndexer:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 142
    invoke-direct {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->clearCache()V

    .line 143
    if-nez p1, :cond_0

    .line 144
    invoke-super {p0, p1}, Landroid/widget/ResourceCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 166
    :goto_0
    return-void

    .line 147
    :cond_0
    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-eqz v6, :cond_3

    .line 148
    const/4 v6, -0x1

    invoke-interface {p1, v6}, Landroid/database/Cursor;->move(I)Z

    .line 149
    const-string v0, ""

    .line 150
    .local v0, date:Ljava/lang/String;
    const-wide/16 v3, 0x0

    .line 151
    .local v3, lDate:J
    const/4 v2, 0x0

    .line 152
    .local v2, id:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 153
    const-string v6, "date"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 154
    const-string v6, "_id"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 156
    if-eqz v0, :cond_1

    const-string v6, "null"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 152
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 158
    :cond_2
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 159
    invoke-direct {p0, v3, v4}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->calcSection(J)Ljava/lang/String;

    move-result-object v5

    .line 160
    .local v5, sectionName:Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 161
    iget-object v6, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mIndexer:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 165
    .end local v0           #date:Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #id:I
    .end local v3           #lDate:J
    .end local v5           #sectionName:Ljava/lang/String;
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/ResourceCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 188
    sget-object v2, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->TAG:Ljava/lang/String;

    const-string v3, "= getView() ="

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 190
    .local v0, mCursor:Landroid/database/Cursor;
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 191
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could\'t move to cursor position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 194
    :cond_0
    if-eqz p2, :cond_1

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 195
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2, v0, p3}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 199
    .local v1, v:Landroid/view/View;
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v2, v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 200
    return-object v1

    .line 197
    .end local v1           #v:Landroid/view/View;
    :cond_2
    move-object v1, p2

    .restart local v1       #v:Landroid/view/View;
    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 184
    invoke-super {p0}, Landroid/widget/ResourceCursorAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 204
    sget-object v2, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->TAG:Ljava/lang/String;

    const-string v3, "= newView() ="

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 206
    .local v1, view:Landroid/view/View;
    new-instance v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;-><init>(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;)V

    .line 207
    .local v0, cache:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;
    const v2, 0x7f09014f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->headerView:Landroid/view/View;

    .line 208
    const v2, 0x7f090151

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->iSendType:Landroid/widget/ImageView;

    .line 209
    const v2, 0x7f090152

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tTime:Landroid/widget/TextView;

    .line 210
    const v2, 0x7f090153

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tDuration:Landroid/widget/TextView;

    .line 211
    const v2, 0x7f090154

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tNumber:Landroid/widget/TextView;

    .line 212
    const v2, 0x7f090155

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tSubject:Landroid/widget/TextView;

    .line 213
    const v2, 0x7f090156

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    .line 214
    const v2, 0x7f090157

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->iType:Landroid/widget/ImageView;

    .line 215
    const v2, 0x7f090150

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->listItemView:Landroid/widget/LinearLayout;

    .line 216
    const v2, 0x7f090158

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v2, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 217
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 218
    return-object v1
.end method

.method protected onContentChanged()V
    .locals 1

    .prologue
    .line 550
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mUpdateEnable:Z

    if-nez v0, :cond_0

    .line 553
    :goto_0
    return-void

    .line 552
    :cond_0
    invoke-super {p0}, Landroid/widget/ResourceCursorAdapter;->onContentChanged()V

    goto :goto_0
.end method

.method public setFragment(Landroid/app/Fragment;)V
    .locals 0
    .parameter "fragment"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mFragment:Landroid/app/Fragment;

    .line 175
    return-void
.end method

.method public setLoading(Z)V
    .locals 0
    .parameter "loading"

    .prologue
    .line 795
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mLoading:Z

    .line 796
    return-void
.end method

.method public setMode(Z)V
    .locals 0
    .parameter "isDeleteMode"

    .prologue
    .line 177
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mIsDeleteMode:Z

    .line 178
    return-void
.end method

.method public setUpdateEnable(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 544
    sget-object v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUpdateEnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mUpdateEnable:Z

    .line 546
    return-void
.end method
