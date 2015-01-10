.class public Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;
.super Landroid/app/Activity;
.source "CallDetailDeleteActivity.java"

# interfaces
.implements Lcom/android/contacts/ProximitySensorAware;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ItemView;,
        Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$PerformScan;,
        Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ProximitySensorListener;,
        Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$Tasks;
    }
.end annotation


# static fields
.field static final CALL_LOG_PROJECTION:[Ljava/lang/String;

.field private static final DBG:Z

.field static final PHONES_PROJECTION:[Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static mDoneEable:Z


# instance fields
.field HEADER_VALUE:Ljava/lang/String;

.field ITEM_ARRAY:Ljava/lang/String;

.field ITEM_COUNT:Ljava/lang/String;

.field VIEW_BY:Ljava/lang/String;

.field private checkedItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private deletedData:Z

.field private delprogressdlg:Landroid/app/ProgressDialog;

.field details:[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

.field idsStr:Ljava/lang/String;

.field private mAdapter:Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;

.field private mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

.field mBundle:Landroid/os/Bundle;

.field private mCallTypeHelper:Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;

.field mCdnipNumber:Ljava/lang/String;

.field private mCnapName:Ljava/lang/String;

.field private mDefaultCountryIso:Ljava/lang/String;

.field public mHandler:Landroid/os/Handler;

.field private mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mHeaderSelectAll:Landroid/view/View;

.field mInflater:Landroid/view/LayoutInflater;

.field private volatile mIsListDone:Z

.field private mListView:Landroid/widget/ListView;

.field mListViewOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mMenuDone:Landroid/view/MenuItem;

.field private mName:Ljava/lang/String;

.field private mNumber:Ljava/lang/String;

.field private mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

.field private mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

.field private final mProximitySensorListener:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ProximitySensorListener;

.field private mProximitySensorManager:Lcom/android/contacts/ProximitySensorManager;

.field mResources:Landroid/content/res/Resources;

.field mServiceType:I

.field private mVoiceMailNumber:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 114
    const-string v0, "ro.debuggable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->DBG:Z

    .line 117
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mContext:Landroid/content/Context;

    .line 148
    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mDoneEable:Z

    .line 226
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v0, v2

    const-string v3, "date"

    aput-object v3, v0, v1

    const-string v3, "duration"

    aput-object v3, v0, v5

    const-string v3, "number"

    aput-object v3, v0, v6

    const-string v3, "type"

    aput-object v3, v0, v7

    const/4 v3, 0x5

    const-string v4, "countryiso"

    aput-object v4, v0, v3

    const/4 v3, 0x6

    const-string v4, "geocoded_location"

    aput-object v4, v0, v3

    const/4 v3, 0x7

    const-string v4, "logtype"

    aput-object v4, v0, v3

    const/16 v3, 0x8

    const-string v4, "simnum"

    aput-object v4, v0, v3

    const/16 v3, 0x9

    const-string v4, "cnap_name"

    aput-object v4, v0, v3

    const/16 v3, 0xa

    const-string v4, "cdnip_number"

    aput-object v4, v0, v3

    const/16 v3, 0xb

    const-string v4, "service_type"

    aput-object v4, v0, v3

    const/16 v3, 0xc

    const-string v4, "contactid"

    aput-object v4, v0, v3

    const/16 v3, 0xd

    const-string v4, "remind_me_later_set"

    aput-object v4, v0, v3

    const/16 v3, 0xe

    const-string v4, "call_out_duration"

    aput-object v4, v0, v3

    const/16 v3, 0xf

    const-string v4, "sim_id"

    aput-object v4, v0, v3

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    .line 267
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v0, v2

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const-string v1, "type"

    aput-object v1, v0, v5

    const-string v1, "label"

    aput-object v1, v0, v6

    const-string v1, "number"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "normalized_number"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "photo_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "lookup"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->PHONES_PROJECTION:[Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    .line 114
    goto/16 :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 112
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 150
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mNumber:Ljava/lang/String;

    .line 151
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mName:Ljava/lang/String;

    .line 159
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mCnapName:Ljava/lang/String;

    .line 160
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mCdnipNumber:Ljava/lang/String;

    .line 164
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ProximitySensorListener;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ProximitySensorListener;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mProximitySensorListener:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ProximitySensorListener;

    .line 166
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->idsStr:Ljava/lang/String;

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->checkedItemList:Ljava/util/ArrayList;

    .line 169
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->deletedData:Z

    .line 170
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;

    .line 418
    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mBundle:Landroid/os/Bundle;

    .line 420
    const-string v0, "view_by"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->VIEW_BY:Ljava/lang/String;

    .line 422
    const-string v0, "item_count"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->ITEM_COUNT:Ljava/lang/String;

    .line 424
    const-string v0, "item_array"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->ITEM_ARRAY:Ljava/lang/String;

    .line 426
    const-string v0, "header_value"

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->HEADER_VALUE:Ljava/lang/String;

    .line 506
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$3;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mHandler:Landroid/os/Handler;

    .line 521
    new-instance v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$4;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListViewOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 717
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;Ljava/lang/String;)[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getPhoneCallDetailsForUri(Ljava/lang/String;)[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mCallTypeHelper:Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mIsListDone:Z

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mIsListDone:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;)Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mAdapter:Lcom/sec/android/app/dialertab/calllog/CallDetailHistoryAdapter;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->updateAllCheckState()V

    return-void
.end method

.method static synthetic access$502(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->deletedData:Z

    return p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->checkedItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700()Z
    .locals 1

    .prologue
    .line 112
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->DBG:Z

    return v0
.end method

.method static synthetic access$800()Landroid/content/Context;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private getCallLogEntryUris()Ljava/lang/String;
    .locals 2

    .prologue
    .line 814
    sget-boolean v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->DBG:Z

    if-eqz v0, :cond_0

    .line 815
    const-string v0, "CallDetailDeleteActivity"

    const-string v1, "getCallLogEntryUris"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_CALL_LOG_IDS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->idsStr:Ljava/lang/String;

    .line 818
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->idsStr:Ljava/lang/String;

    return-object v0
.end method

.method private getPhoneCallDetailsForUri(Ljava/lang/String;)[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    .locals 63
    .parameter "callUri"

    .prologue
    .line 971
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 972
    .local v2, resolver:Landroid/content/ContentResolver;
    sget-object v3, Lcom/sec/android/app/dialertab/calllog/LogsDBProvider;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v5, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v46

    .line 974
    .local v46, callCursor:Landroid/database/Cursor;
    if-eqz v46, :cond_0

    :try_start_0
    invoke-interface/range {v46 .. v46}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_2

    .line 975
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot find content: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1148
    :catchall_0
    move-exception v4

    if-eqz v46, :cond_1

    .line 1149
    invoke-interface/range {v46 .. v46}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v4

    .line 977
    :cond_2
    :try_start_1
    invoke-interface/range {v46 .. v46}, Landroid/database/Cursor;->getCount()I

    move-result v4

    new-array v0, v4, [Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    move-object/from16 v51, v0

    .line 979
    .local v51, details:[Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;
    const/16 v52, 0x0

    .local v52, i:I
    :goto_0
    invoke-interface/range {v46 .. v46}, Landroid/database/Cursor;->getCount()I

    move-result v4

    move/from16 v0, v52

    if-ge v0, v4, :cond_1a

    .line 981
    const/4 v4, 0x0

    move-object/from16 v0, v46

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 982
    .local v25, id:I
    const/4 v4, 0x3

    move-object/from16 v0, v46

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 983
    .local v26, number:Ljava/lang/String;
    const/4 v4, 0x1

    move-object/from16 v0, v46

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 984
    .local v11, date:J
    const/4 v4, 0x2

    move-object/from16 v0, v46

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 985
    .local v13, duration:J
    const/4 v4, 0x4

    move-object/from16 v0, v46

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v47

    .line 986
    .local v47, callType:I
    const/4 v4, 0x5

    move-object/from16 v0, v46

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 987
    .local v28, countryIso:Ljava/lang/String;
    const/4 v4, 0x6

    move-object/from16 v0, v46

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 988
    .local v29, geocode:Ljava/lang/String;
    const/4 v4, 0x7

    move-object/from16 v0, v46

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 989
    .local v15, logType:I
    const/16 v4, 0x8

    move-object/from16 v0, v46

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 990
    .local v21, simnum:I
    const/16 v4, 0xe

    move-object/from16 v0, v46

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 991
    .local v22, callOutDuration:J
    const/16 v4, 0xf

    move-object/from16 v0, v46

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v62

    .line 992
    .local v62, simcardId:I
    const/16 v55, 0x0

    .line 996
    .local v55, mRemindMeLaterSet:I
    const-string v4, "feature_kor"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 997
    const/16 v4, 0x9

    move-object/from16 v0, v46

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mCnapName:Ljava/lang/String;

    .line 998
    const/16 v4, 0xa

    move-object/from16 v0, v46

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mCdnipNumber:Ljava/lang/String;

    .line 999
    const/16 v4, 0xb

    move-object/from16 v0, v46

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mServiceType:I

    .line 1002
    :cond_3
    const/16 v4, 0xc

    move-object/from16 v0, v46

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v49

    .line 1004
    .local v49, contactId:J
    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1005
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mDefaultCountryIso:Ljava/lang/String;

    move-object/from16 v28, v0

    .line 1008
    :cond_4
    const-string v4, "feature_remind_me_later_support "

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1009
    const/16 v4, 0xd

    move-object/from16 v0, v46

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v55

    .line 1015
    :cond_5
    const-string v27, ""

    .line 1017
    .local v27, numberText:Ljava/lang/CharSequence;
    const-string v16, ""

    .line 1018
    .local v16, nameText:Ljava/lang/CharSequence;
    const/16 v17, 0x0

    .line 1019
    .local v17, numberType:I
    const-string v18, ""

    .line 1020
    .local v18, numberLabel:Ljava/lang/CharSequence;
    const/16 v20, 0x0

    .line 1021
    .local v20, photoUri:Landroid/net/Uri;
    const/16 v19, 0x0

    .line 1022
    .local v19, contactUri:Landroid/net/Uri;
    const-string v41, "vnd.sec.contact.phone"

    .line 1024
    .local v41, accountType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 1025
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    const/4 v5, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v4, v0, v5}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v27

    .line 1102
    :cond_6
    :goto_1
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getAnrConfigValue()I

    move-result v4

    if-lez v4, :cond_8

    .line 1103
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "account_type"

    aput-object v8, v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "contact_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v49

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v45

    .line 1109
    .local v45, c:Landroid/database/Cursor;
    if-eqz v45, :cond_7

    :try_start_2
    invoke-interface/range {v45 .. v45}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1110
    const/4 v4, 0x0

    move-object/from16 v0, v45

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v41

    .line 1113
    :cond_7
    if-eqz v45, :cond_8

    .line 1114
    :try_start_3
    invoke-interface/range {v45 .. v45}, Landroid/database/Cursor;->close()V

    .line 1120
    .end local v45           #c:Landroid/database/Cursor;
    :cond_8
    const-string v4, "ctc_dual_mode"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1121
    new-instance v4, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    const/4 v5, 0x1

    new-array v10, v5, [I

    const/4 v5, 0x0

    aput v47, v10, v5

    move/from16 v5, v25

    move-object/from16 v6, v26

    move-object/from16 v7, v27

    move-object/from16 v8, v28

    move-object/from16 v9, v29

    invoke-direct/range {v4 .. v23}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;IJ)V

    aput-object v4, v51, v52

    .line 1124
    const-string v4, "feature_common_dsds_support "

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1125
    aget-object v4, v51, v52

    move/from16 v0, v62

    iput v0, v4, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->simcardId:I

    .line 1140
    .end local v41           #accountType:Ljava/lang/String;
    :cond_9
    :goto_2
    const-string v4, "feature_remind_me_later_support "

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1141
    aget-object v4, v51, v52

    move/from16 v0, v55

    iput v0, v4, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;->remindMeLaterSet:I

    .line 1144
    :cond_a
    invoke-interface/range {v46 .. v46}, Landroid/database/Cursor;->moveToNext()Z

    .line 979
    add-int/lit8 v52, v52, 0x1

    goto/16 :goto_0

    .line 1029
    .restart local v41       #accountType:Ljava/lang/String;
    :cond_b
    const/4 v3, 0x0

    .line 1031
    .local v3, phoneUri:Landroid/net/Uri;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Contact_EnableDynCallerIdMatchingDigitWithAutoSim"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1033
    invoke-static/range {p0 .. p0}, Landroid/telephony/PhoneNumberUtils;->getLTNContactsMatchLength(Landroid/content/Context;)I

    move-result v54

    .line 1034
    .local v54, mMatchLen:I
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v56

    .line 1036
    .local v56, nLen:I
    const/16 v53, 0x0

    .line 1038
    .local v53, mIsSpecialNum:Z
    invoke-static/range {v26 .. v26}, Landroid/telephony/PhoneNumberUtils;->isLTNSpecialNumber(Ljava/lang/String;)Z

    move-result v53

    .line 1039
    sget-boolean v4, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->DBG:Z

    if-eqz v4, :cond_c

    .line 1040
    const-string v4, "CallDetailDeleteActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPhoneCallDetailsForUri: mIsSpecialNum"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v53

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    :cond_c
    move/from16 v0, v56

    move/from16 v1, v54

    if-le v0, v1, :cond_f

    if-nez v53, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;->isSipNumber(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 1044
    const-string v4, "content://com.android.contacts/phone_lookup_n"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v59

    .line 1045
    .local v59, phoneLookup:Landroid/net/Uri;
    invoke-virtual/range {v59 .. v59}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-static/range {v54 .. v54}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 1060
    .end local v53           #mIsSpecialNum:Z
    .end local v54           #mMatchLen:I
    .end local v56           #nLen:I
    .end local v59           #phoneLookup:Landroid/net/Uri;
    :goto_3
    if-nez v52, :cond_6

    .line 1061
    sget-object v4, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->PHONES_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v60

    .line 1062
    .local v60, phonesCursor:Landroid/database/Cursor;
    move-object/from16 v48, v26

    .line 1064
    .local v48, candidateNumberText:Ljava/lang/String;
    if-eqz v60, :cond_13

    :try_start_4
    invoke-interface/range {v60 .. v60}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1065
    const/4 v4, 0x1

    move-object/from16 v0, v60

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1066
    const/4 v4, 0x6

    move-object/from16 v0, v60

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v61

    .line 1067
    .local v61, photoUriString:Ljava/lang/String;
    if-nez v61, :cond_11

    const/16 v20, 0x0

    .line 1068
    :goto_4
    const-string v4, "disable_format_number"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1069
    const/4 v4, 0x4

    move-object/from16 v0, v60

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v48

    .line 1076
    :goto_5
    const/4 v4, 0x2

    move-object/from16 v0, v60

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 1077
    const/4 v4, 0x3

    move-object/from16 v0, v60

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1078
    const/4 v4, 0x0

    move-object/from16 v0, v60

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v57

    .line 1079
    .local v57, personId:J
    const-wide/16 v4, 0x0

    cmp-long v4, v57, v4

    if-lez v4, :cond_d

    .line 1080
    const/4 v4, 0x7

    move-object/from16 v0, v60

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-wide/from16 v0, v57

    invoke-static {v0, v1, v4}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v19

    .line 1095
    .end local v57           #personId:J
    .end local v61           #photoUriString:Ljava/lang/String;
    :cond_d
    :goto_6
    if-eqz v60, :cond_e

    :try_start_5
    invoke-interface/range {v60 .. v60}, Landroid/database/Cursor;->close()V

    .line 1096
    :cond_e
    move-object/from16 v27, v48

    .line 1097
    goto/16 :goto_1

    .line 1049
    .end local v48           #candidateNumberText:Ljava/lang/String;
    .end local v60           #phonesCursor:Landroid/database/Cursor;
    .restart local v53       #mIsSpecialNum:Z
    .restart local v54       #mMatchLen:I
    .restart local v56       #nLen:I
    :cond_f
    sget-object v4, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static/range {v26 .. v26}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_3

    .line 1056
    .end local v53           #mIsSpecialNum:Z
    .end local v54           #mMatchLen:I
    .end local v56           #nLen:I
    :cond_10
    sget-object v4, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static/range {v26 .. v26}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v3

    goto :goto_3

    .line 1067
    .restart local v48       #candidateNumberText:Ljava/lang/String;
    .restart local v60       #phonesCursor:Landroid/database/Cursor;
    .restart local v61       #photoUriString:Ljava/lang/String;
    :cond_11
    :try_start_6
    invoke-static/range {v61 .. v61}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    goto :goto_4

    .line 1071
    :cond_12
    const/4 v4, 0x4

    move-object/from16 v0, v60

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    move-object/from16 v0, v60

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-static {v4, v5, v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    goto :goto_5

    .line 1087
    .end local v61           #photoUriString:Ljava/lang/String;
    :cond_13
    const-string v4, "disable_format_number"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1088
    move-object/from16 v48, v26

    goto :goto_6

    .line 1090
    :cond_14
    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v48

    goto :goto_6

    .line 1095
    :catchall_1
    move-exception v4

    if-eqz v60, :cond_15

    :try_start_7
    invoke-interface/range {v60 .. v60}, Landroid/database/Cursor;->close()V

    .line 1096
    :cond_15
    move-object/from16 v27, v48

    throw v4

    .line 1113
    .end local v3           #phoneUri:Landroid/net/Uri;
    .end local v48           #candidateNumberText:Ljava/lang/String;
    .end local v60           #phonesCursor:Landroid/database/Cursor;
    .restart local v45       #c:Landroid/database/Cursor;
    :catchall_2
    move-exception v4

    if-eqz v45, :cond_16

    .line 1114
    invoke-interface/range {v45 .. v45}, Landroid/database/Cursor;->close()V

    :cond_16
    throw v4

    .line 1127
    .end local v45           #c:Landroid/database/Cursor;
    :cond_17
    const-string v4, "feature_kor"

    invoke-static {v4}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 1128
    new-instance v24, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    const/4 v4, 0x1

    new-array v0, v4, [I

    move-object/from16 v30, v0

    const/4 v4, 0x0

    aput v47, v30, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mServiceType:I

    move/from16 v41, v0

    .end local v41           #accountType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mCnapName:Ljava/lang/String;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mCdnipNumber:Ljava/lang/String;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    move-wide/from16 v31, v11

    move-wide/from16 v33, v13

    move/from16 v35, v15

    move-object/from16 v36, v16

    move/from16 v37, v17

    move-object/from16 v38, v18

    move-object/from16 v39, v19

    move-object/from16 v40, v20

    invoke-direct/range {v24 .. v44}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;Z)V

    aput-object v24, v51, v52

    goto/16 :goto_2

    .line 1131
    .restart local v41       #accountType:Ljava/lang/String;
    :cond_18
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getAnrConfigValue()I

    move-result v4

    if-lez v4, :cond_19

    const-string v4, "vnd.sec.contact.sim"

    move-object/from16 v0, v41

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 1132
    new-instance v24, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    const/4 v4, 0x1

    new-array v0, v4, [I

    move-object/from16 v30, v0

    const/4 v4, 0x0

    aput v47, v30, v4

    move-wide/from16 v31, v11

    move-wide/from16 v33, v13

    move/from16 v35, v15

    move-object/from16 v36, v16

    move/from16 v37, v17

    move-object/from16 v38, v18

    move-object/from16 v39, v19

    move-object/from16 v40, v20

    invoke-direct/range {v24 .. v41}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V

    aput-object v24, v51, v52

    goto/16 :goto_2

    .line 1136
    :cond_19
    new-instance v4, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;

    const/4 v5, 0x1

    new-array v10, v5, [I

    const/4 v5, 0x0

    aput v47, v10, v5

    move/from16 v5, v25

    move-object/from16 v6, v26

    move-object/from16 v7, v27

    move-object/from16 v8, v28

    move-object/from16 v9, v29

    invoke-direct/range {v4 .. v20}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetails;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;[IJJILjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;)V

    aput-object v4, v51, v52
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_2

    .line 1148
    .end local v11           #date:J
    .end local v13           #duration:J
    .end local v15           #logType:I
    .end local v16           #nameText:Ljava/lang/CharSequence;
    .end local v17           #numberType:I
    .end local v18           #numberLabel:Ljava/lang/CharSequence;
    .end local v19           #contactUri:Landroid/net/Uri;
    .end local v20           #photoUri:Landroid/net/Uri;
    .end local v21           #simnum:I
    .end local v22           #callOutDuration:J
    .end local v25           #id:I
    .end local v26           #number:Ljava/lang/String;
    .end local v27           #numberText:Ljava/lang/CharSequence;
    .end local v28           #countryIso:Ljava/lang/String;
    .end local v29           #geocode:Ljava/lang/String;
    .end local v41           #accountType:Ljava/lang/String;
    .end local v47           #callType:I
    .end local v49           #contactId:J
    .end local v55           #mRemindMeLaterSet:I
    .end local v62           #simcardId:I
    :cond_1a
    if-eqz v46, :cond_1b

    .line 1149
    invoke-interface/range {v46 .. v46}, Landroid/database/Cursor;->close()V

    :cond_1b
    return-object v51
.end method

.method private updateAllCheckState()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 759
    const/4 v3, 0x1

    .line 760
    .local v3, everyBodyIsOn:Z
    const/4 v2, 0x1

    .line 761
    .local v2, everyBodyIsOff:Z
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getCount()I

    move-result v1

    .line 763
    .local v1, dataCount:I
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v5

    add-int/lit8 v4, v5, 0x1

    .line 764
    .local v4, i:I
    :goto_0
    if-ge v4, v1, :cond_1

    or-int v5, v3, v2

    if-eqz v5, :cond_1

    .line 765
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v4}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v0

    .line 766
    .local v0, checked:Z
    if-nez v0, :cond_0

    .line 767
    const/4 v3, 0x0

    .line 764
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 769
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 772
    .end local v0           #checked:Z
    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v5, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 776
    if-eqz v2, :cond_2

    .line 778
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 779
    sput-boolean v6, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mDoneEable:Z

    .line 787
    :goto_2
    return-void

    .line 783
    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 784
    sput-boolean v7, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mDoneEable:Z

    goto :goto_2
.end method

.method private updateData(Ljava/lang/String;)V
    .locals 4
    .parameter "callUris"

    .prologue
    .line 966
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$Tasks;->UPDATE_PHONE_CALL_DETAILS:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$Tasks;

    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1UpdateContactDetailsTask;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;Ljava/lang/String;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/contacts/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 967
    return-void
.end method


# virtual methods
.method public clickHandler(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 839
    const-string v3, "CallDetailDeleteActivity"

    const-string v4, "clickhandler"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 853
    :goto_0
    return-void

    .line 842
    :pswitch_0
    const-string v4, "CallDetailDeleteActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clickhandler"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p1

    .line 843
    check-cast v0, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 844
    .local v0, checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    .line 845
    .local v1, position:I
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    .line 846
    .local v2, sba:Landroid/util/SparseBooleanArray;
    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 847
    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->invalidate()V

    .line 848
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->updateAllCheckState()V

    goto :goto_0

    .line 840
    :pswitch_data_0
    .packed-switch 0x7f090086
        :pswitch_0
    .end packed-switch
.end method

.method public disableProximitySensor(Z)V
    .locals 1
    .parameter "waitForFarState"

    .prologue
    .line 1236
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mProximitySensorManager:Lcom/android/contacts/ProximitySensorManager;

    invoke-virtual {v0, p1}, Lcom/android/contacts/ProximitySensorManager;->disable(Z)V

    .line 1237
    return-void
.end method

.method public enableProximitySensor()V
    .locals 1

    .prologue
    .line 1231
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mProximitySensorManager:Lcom/android/contacts/ProximitySensorManager;

    invoke-virtual {v0}, Lcom/android/contacts/ProximitySensorManager;->enable()V

    .line 1232
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 1223
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1224
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->invalidateOptionsMenu()V

    .line 1227
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const v6, 0x7f0902a7

    const/16 v4, 0x1e

    .line 290
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 292
    const v2, 0x7f04000d

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->setContentView(I)V

    .line 294
    const-string v2, ""

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 296
    const v2, 0x7f09003e

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    .line 299
    const v2, 0x7f040121

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mHeaderSelectAll:Landroid/view/View;

    .line 300
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mHeaderSelectAll:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 302
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mHeaderSelectAll:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 304
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 306
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {v0, v4, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 367
    :cond_0
    sput-object p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mContext:Landroid/content/Context;

    .line 368
    sget-object v2, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mVoiceMailNumber:Ljava/lang/String;

    .line 371
    invoke-static {}, Lcom/android/contacts/util/AsyncTaskExecutors;->createThreadPoolExecutor()Lcom/android/contacts/util/AsyncTaskExecutor;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

    .line 372
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 373
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mResources:Landroid/content/res/Resources;

    .line 375
    new-instance v2, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;-><init>(Landroid/content/res/Resources;)V

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mCallTypeHelper:Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;

    .line 376
    new-instance v2, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mResources:Landroid/content/res/Resources;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mVoiceMailNumber:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    .line 377
    new-instance v2, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mResources:Landroid/content/res/Resources;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mCallTypeHelper:Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;

    iget-object v5, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mPhoneNumberHelper:Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;-><init>(Landroid/content/res/Resources;Lcom/sec/android/app/dialertab/calllog/CallTypeHelper;Lcom/sec/android/app/dialertab/calllog/PhoneNumberHelper;)V

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mPhoneCallDetailsHelper:Lcom/sec/android/app/dialertab/calllog/PhoneCallDetailsHelper;

    .line 379
    new-instance v2, Lcom/android/contacts/ProximitySensorManager;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mProximitySensorListener:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ProximitySensorListener;

    invoke-direct {v2, p0, v3}, Lcom/android/contacts/ProximitySensorManager;-><init>(Landroid/content/Context;Lcom/android/contacts/ProximitySensorManager$Listener;)V

    iput-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mProximitySensorManager:Lcom/android/contacts/ProximitySensorManager;

    .line 381
    invoke-virtual {p0, v6}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 384
    .local v1, allChBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    const/4 v2, 0x0

    sput-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mDoneEable:Z

    .line 386
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListViewOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 388
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mHeaderSelectAll:Landroid/view/View;

    new-instance v3, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1;

    invoke-direct {v3, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$1;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 409
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    .line 1157
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1158
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 1159
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f12000b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1160
    const v1, 0x7f0903b5

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mMenuDone:Landroid/view/MenuItem;

    .line 1161
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mMenuDone:Landroid/view/MenuItem;

    sget-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mDoneEable:Z

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1163
    const/4 v1, 0x1

    return v1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 823
    packed-switch p1, :pswitch_data_0

    .line 835
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 826
    :pswitch_0
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 828
    .local v0, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-nez v1, :cond_0

    .line 829
    sget-object v1, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mNumber:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sec/android/app/dialertab/calllog/CallLogUtil;->makeCall(Landroid/content/Context;Ljava/lang/String;)V

    .line 830
    const/4 v1, 0x1

    goto :goto_0

    .line 823
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const v6, 0x7f0d035e

    const/4 v5, 0x2

    const/4 v1, 0x1

    .line 1175
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 1209
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 1177
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->finish()V

    goto :goto_0

    .line 1180
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->finish()V

    goto :goto_0

    .line 1184
    :sswitch_2
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->checkedItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1185
    sget-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->DBG:Z

    if-eqz v2, :cond_0

    .line 1186
    const-string v2, "CallDetailDeleteActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mListView.getCount() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1189
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1190
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->checkedItemList:Ljava/util/ArrayList;

    add-int/lit8 v3, v0, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1188
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1194
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1195
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->checkedItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v1, :cond_3

    .line 1196
    invoke-virtual {p0, v6}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->showDeleteConfirmDlg(Ljava/lang/String;I)V

    goto :goto_0

    .line 1198
    :cond_3
    const v2, 0x7f0d0360

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->showDeleteConfirmDlg(Ljava/lang/String;I)V

    goto :goto_0

    .line 1199
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->checkedItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v1, :cond_5

    .line 1200
    invoke-virtual {p0, v6}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->showDeleteConfirmDlg(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1202
    :cond_5
    const v2, 0x7f0d035f

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v5}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->showDeleteConfirmDlg(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1175
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0903a5 -> :sswitch_1
        0x7f0903b5 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 1216
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->disableProximitySensor(Z)V

    .line 1217
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mProximitySensorListener:Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ProximitySensorListener;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$ProximitySensorListener;->clearPendingRequests()V

    .line 1218
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1219
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mMenuDone:Landroid/view/MenuItem;

    sget-boolean v1, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mDoneEable:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1169
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mMenuDone:Landroid/view/MenuItem;

    const v1, 0x7f0d0319

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1170
    const/4 v0, 0x1

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 7
    .parameter "bundle"

    .prologue
    .line 450
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 452
    const-string v4, "CallDetailDeleteActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onRestoreInstanceState, bundle : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    if-nez p1, :cond_1

    .line 478
    :cond_0
    :goto_0
    return-void

    .line 458
    :cond_1
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mBundle:Landroid/os/Bundle;

    .line 461
    iget-boolean v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mIsListDone:Z

    if-eqz v4, :cond_0

    .line 465
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->ITEM_COUNT:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 466
    .local v3, itemCnt:I
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->HEADER_VALUE:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 467
    .local v2, isHeaderChecked:Z
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v4, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 468
    if-lez v3, :cond_2

    .line 469
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->ITEM_ARRAY:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v0

    .line 470
    .local v0, checkedarray:[Z
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 471
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    aget-boolean v5, v0, v1

    invoke-virtual {v4, v1, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 470
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 475
    .end local v0           #checkedarray:[Z
    .end local v1           #i:I
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->updateAllCheckState()V

    .line 476
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->invalidate()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 413
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 414
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getCallLogEntryUris()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->updateData(Ljava/lang/String;)V

    .line 416
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .parameter "outState"

    .prologue
    .line 430
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 432
    const-string v4, "CallDetailDeleteActivity"

    const-string v5, "onSaveInstanceState"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v3

    .line 435
    .local v3, itemCnt:I
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mHeaderAllCheckBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v2

    .line 437
    .local v2, isHeaderChecked:Z
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->ITEM_COUNT:Ljava/lang/String;

    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 438
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->HEADER_VALUE:Ljava/lang/String;

    invoke-virtual {p1, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 440
    new-array v0, v3, [Z

    .line 441
    .local v0, checkedArray:[Z
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 442
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v4

    aput-boolean v4, v0, v1

    .line 441
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 444
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->ITEM_ARRAY:Ljava/lang/String;

    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 445
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mBundle:Landroid/os/Bundle;

    .line 446
    return-void
.end method

.method public setAllItemChecked(Z)V
    .locals 5
    .parameter "bCheckStatus"

    .prologue
    .line 790
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v0

    .line 791
    .local v0, dataCount:I
    sget-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->DBG:Z

    if-eqz v2, :cond_0

    .line 792
    const-string v2, "CallDetailDeleteActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mListView.getCount() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 794
    sget-boolean v2, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->DBG:Z

    if-eqz v2, :cond_1

    .line 795
    const-string v2, "CallDetailDeleteActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setItemChecked : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1, p1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 793
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 801
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v2, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 802
    sput-boolean p1, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mDoneEable:Z

    .line 803
    return-void
.end method

.method public showDeleteConfirmDlg(Ljava/lang/String;I)V
    .locals 6
    .parameter "msg"
    .parameter "iOpIndex"

    .prologue
    const v5, 0x7f0d0356

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 555
    iget-object v2, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->checkedItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 557
    .local v0, deleteLogsCount:I
    if-ne p2, v3, :cond_0

    .line 558
    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v5, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 565
    .local v1, title:Ljava/lang/String;
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d0319

    new-instance v4, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$6;

    invoke-direct {v4, p0, p2}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$6;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;I)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d02f8

    new-instance v4, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$5;

    invoke-direct {v4, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$5;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 595
    return-void

    .line 560
    .end local v1           #title:Ljava/lang/String;
    :cond_0
    const/4 v2, 0x2

    if-ge v0, v2, :cond_1

    .line 561
    const v2, 0x7f0d0355

    invoke-virtual {p0, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #title:Ljava/lang/String;
    goto :goto_0

    .line 563
    .end local v1           #title:Ljava/lang/String;
    :cond_1
    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v5, v2}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #title:Ljava/lang/String;
    goto :goto_0
.end method

.method public showProgress()V
    .locals 2

    .prologue
    .line 598
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 599
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;

    .line 601
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 602
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;

    const v1, 0x7f0d0249

    invoke-virtual {p0, v1}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 604
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$7;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$7;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 616
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->delprogressdlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 617
    return-void
.end method

.method public startCheckProcessing()V
    .locals 2

    .prologue
    .line 483
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;->mIsListDone:Z

    .line 484
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity$2;-><init>(Lcom/sec/android/app/dialertab/calllog/CallDetailDeleteActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 500
    .local v0, thread:Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 501
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 502
    return-void
.end method
