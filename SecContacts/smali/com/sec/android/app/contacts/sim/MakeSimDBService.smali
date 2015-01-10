.class public Lcom/sec/android/app/contacts/sim/MakeSimDBService;
.super Landroid/app/Service;
.source "MakeSimDBService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/sim/MakeSimDBService$1;,
        Lcom/sec/android/app/contacts/sim/MakeSimDBService$ServiceHandler;,
        Lcom/sec/android/app/contacts/sim/MakeSimDBService$projectionTypes;
    }
.end annotation


# static fields
.field static final ADN_ANR_FULL_COMPARE_PROJECTION:[Ljava/lang/String;

.field static final ADN_ANR_FULL_PROJECTION:[Ljava/lang/String;

.field static final ADN_ANR_PATIAL_COMPARE_PROJECTION:[Ljava/lang/String;

.field static final ADN_ANR_PATIAL_PROJECTION:[Ljava/lang/String;

.field static final ADN_COMPARE_PROJECTION:[Ljava/lang/String;

.field static final ADN_EMAILS_PROJECTION:[Ljava/lang/String;

.field private static volatile ADN_INDEX_COLUMN_INDEX:I

.field static final ADN_PROJECTION:[Ljava/lang/String;

.field private static volatile ANR_A_NUMBER_COLUMN_INDEX:I

.field private static volatile ANR_B_NUMBER_COLUMN_INDEX:I

.field private static volatile ANR_C_NUMBER_COLUMN_INDEX:I

.field private static volatile ANR_NUMBER_COLUMN_INDEX:I

.field private static volatile EMAIL_COLUMN_INDEX:I

.field private static volatile NAME_COLUMN_INDEX:I

.field private static volatile NUMBER_COLUMN_INDEX:I

.field private static mBatchCounter:I

.field private static mInitSettingValue:J

.field private static mLastBatch:I

.field private static mLastOneBatchCount:I

.field static final mOperationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mCursor:Landroid/database/Cursor;

.field private mProviderStatus:I

.field private mResolver:Landroid/content/ContentResolver;

.field private volatile mServiceHandler:Lcom/sec/android/app/contacts/sim/MakeSimDBService$ServiceHandler;

.field private volatile mServiceLooper:Landroid/os/Looper;

.field private mTelMan:Landroid/telephony/TelephonyManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 100
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v3

    const-string v1, "number"

    aput-object v1, v0, v5

    const-string v1, "emails"

    aput-object v1, v0, v6

    const-string v1, "adn_index"

    aput-object v1, v0, v7

    sput-object v0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->ADN_PROJECTION:[Ljava/lang/String;

    .line 107
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v3

    const-string v1, "number"

    aput-object v1, v0, v5

    const-string v1, "anr_number"

    aput-object v1, v0, v6

    const-string v1, "anrA_number"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "anrB_number"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "anrC_number"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "emails"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "adn_index"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->ADN_ANR_FULL_PROJECTION:[Ljava/lang/String;

    .line 118
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v3

    const-string v1, "number"

    aput-object v1, v0, v5

    const-string v1, "anr_number"

    aput-object v1, v0, v6

    const-string v1, "emails"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "adn_index"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->ADN_ANR_PATIAL_PROJECTION:[Ljava/lang/String;

    .line 126
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v3

    const-string v1, "number"

    aput-object v1, v0, v5

    const-string v1, "adn_index"

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->ADN_COMPARE_PROJECTION:[Ljava/lang/String;

    .line 133
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v3

    const-string v1, "number"

    aput-object v1, v0, v5

    const-string v1, "anr_number"

    aput-object v1, v0, v6

    const-string v1, "anrA_number"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "anrB_number"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "anrC_number"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "adn_index"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->ADN_ANR_FULL_COMPARE_PROJECTION:[Ljava/lang/String;

    .line 143
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v3

    const-string v1, "number"

    aput-object v1, v0, v5

    const-string v1, "anr_number"

    aput-object v1, v0, v6

    const-string v1, "adn_index"

    aput-object v1, v0, v7

    sput-object v0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->ADN_ANR_PATIAL_COMPARE_PROJECTION:[Ljava/lang/String;

    .line 151
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "emails"

    aput-object v1, v0, v3

    const-string v1, "adn_index"

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->ADN_EMAILS_PROJECTION:[Ljava/lang/String;

    .line 156
    sput v4, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->NAME_COLUMN_INDEX:I

    .line 157
    sput v4, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->NUMBER_COLUMN_INDEX:I

    .line 159
    sput v4, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->ANR_NUMBER_COLUMN_INDEX:I

    .line 160
    sput v4, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->ANR_A_NUMBER_COLUMN_INDEX:I

    .line 161
    sput v4, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->ANR_B_NUMBER_COLUMN_INDEX:I

    .line 162
    sput v4, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->ANR_C_NUMBER_COLUMN_INDEX:I

    .line 164
    sput v4, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->EMAIL_COLUMN_INDEX:I

    .line 165
    sput v4, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->ADN_INDEX_COLUMN_INDEX:I

    .line 167
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mInitSettingValue:J

    .line 168
    sput v3, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mBatchCounter:I

    .line 169
    sput v3, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mLastBatch:I

    .line 170
    sput v3, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mLastOneBatchCount:I

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mOperationList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 172
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mProviderStatus:I

    .line 1381
    return-void
.end method

.method private CompareAdnData(III)V
    .locals 2
    .parameter "opCode"
    .parameter "simState"
    .parameter "startId"

    .prologue
    .line 504
    :goto_0
    const-string v0, "1"

    const-string v1, "ril.initPB"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->checkProviderState()Z

    move-result v0

    if-nez v0, :cond_1

    .line 505
    :cond_0
    monitor-enter p0

    .line 507
    const-wide/16 v0, 0x1388

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 510
    :goto_1
    :try_start_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 512
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doCompareData(III)V

    .line 513
    return-void

    .line 508
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/sim/MakeSimDBService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doInitAction(II)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/sim/MakeSimDBService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doQueryAction(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/sim/MakeSimDBService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doAirPlaneAction(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/sim/MakeSimDBService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doCheckAdnAttribute(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/sim/MakeSimDBService;IIZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 84
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doBtSapAction(IIZ)V

    return-void
.end method

.method private static actuallyImportOneSimContact(Landroid/database/Cursor;Landroid/content/ContentResolver;Landroid/accounts/Account;)V
    .locals 25
    .parameter "cursor"
    .parameter "resolver"
    .parameter "account"

    .prologue
    .line 886
    sget v20, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->NAME_COLUMN_INDEX:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 887
    .local v17, name:Ljava/lang/String;
    sget v20, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->NUMBER_COLUMN_INDEX:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 888
    .local v18, phoneNumber:Ljava/lang/String;
    const/4 v6, 0x0

    .line 889
    .local v6, AnrNumber:Ljava/lang/String;
    const/4 v3, 0x0

    .line 890
    .local v3, AnrANumber:Ljava/lang/String;
    const/4 v4, 0x0

    .line 891
    .local v4, AnrBNumber:Ljava/lang/String;
    const/4 v5, 0x0

    .line 892
    .local v5, AnrCNumber:Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getAnrConfigValue()I

    move-result v7

    .line 894
    .local v7, anrConfigValue:I
    if-lez v7, :cond_0

    .line 895
    sget v20, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->ANR_NUMBER_COLUMN_INDEX:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 896
    const/16 v20, 0x3

    move/from16 v0, v20

    if-le v7, v0, :cond_0

    .line 897
    sget v20, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->ANR_A_NUMBER_COLUMN_INDEX:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 898
    sget v20, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->ANR_B_NUMBER_COLUMN_INDEX:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 899
    sget v20, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->ANR_C_NUMBER_COLUMN_INDEX:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 903
    :cond_0
    sget v20, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->EMAIL_COLUMN_INDEX:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 904
    .local v13, emailAddresses:Ljava/lang/String;
    sget v20, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->ADN_INDEX_COLUMN_INDEX:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 906
    .local v15, index:Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_8

    .line 907
    const-string v20, ","

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 912
    .local v12, emailAddressArray:[Ljava/lang/String;
    :goto_0
    sget-object v20, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 915
    .local v19, rawContactIdIndex:I
    sget-object v20, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v20 .. v20}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 917
    .local v9, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v20, "account_name"

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 918
    const-string v20, "account_type"

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 919
    const-string v20, "sourceid"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0, v15}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 920
    sget-object v20, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 923
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_1

    .line 924
    sget-object v20, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v20 .. v20}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 925
    const-string v20, "raw_contact_id"

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 926
    const-string v20, "mimetype"

    const-string v21, "vnd.android.cursor.item/name"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 927
    const-string v20, "data2"

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 928
    sget-object v20, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 932
    :cond_1
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 933
    sget-object v20, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v20 .. v20}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 934
    const-string v20, "raw_contact_id"

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 935
    const-string v20, "mimetype"

    const-string v21, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 936
    const-string v20, "data2"

    const/16 v21, 0x2

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 937
    const-string v20, "data1"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 938
    const-string v20, "is_primary"

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 939
    sget-object v20, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 944
    :cond_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_3

    .line 945
    sget-object v20, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v20 .. v20}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 946
    const-string v20, "raw_contact_id"

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 947
    const-string v20, "mimetype"

    const-string v21, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 948
    const-string v20, "data2"

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 949
    const-string v20, "data1"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 950
    const-string v20, "is_primary"

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 951
    sget-object v20, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 955
    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_4

    .line 956
    sget-object v20, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v20 .. v20}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 957
    const-string v20, "raw_contact_id"

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 958
    const-string v20, "mimetype"

    const-string v21, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 959
    const-string v20, "data2"

    const/16 v21, 0x3

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 960
    const-string v20, "data1"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 961
    const-string v20, "is_primary"

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 962
    sget-object v20, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 966
    :cond_4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_5

    .line 967
    sget-object v20, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v20 .. v20}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 968
    const-string v20, "raw_contact_id"

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 969
    const-string v20, "mimetype"

    const-string v21, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 970
    const-string v20, "data2"

    const/16 v21, 0x4

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 971
    const-string v20, "data1"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 972
    const-string v20, "is_primary"

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 973
    sget-object v20, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 977
    :cond_5
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_6

    .line 978
    sget-object v20, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v20 .. v20}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 979
    const-string v20, "raw_contact_id"

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 980
    const-string v20, "mimetype"

    const-string v21, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 981
    const-string v20, "data2"

    const/16 v21, 0x5

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 982
    const-string v20, "data1"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 983
    const-string v20, "is_primary"

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 984
    sget-object v20, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 988
    :cond_6
    if-eqz v12, :cond_9

    .line 989
    move-object v8, v12

    .local v8, arr$:[Ljava/lang/String;
    array-length v0, v8

    move/from16 v16, v0

    .local v16, len$:I
    const/4 v14, 0x0

    .local v14, i$:I
    :goto_1
    move/from16 v0, v16

    if-ge v14, v0, :cond_9

    aget-object v11, v8, v14

    .line 990
    .local v11, emailAddress:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_7

    .line 991
    sget-object v20, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v20 .. v20}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 992
    const-string v20, "raw_contact_id"

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 993
    const-string v20, "mimetype"

    const-string v21, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 994
    const-string v20, "data2"

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 995
    const-string v20, "data1"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 996
    sget-object v20, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 989
    :cond_7
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 909
    .end local v8           #arr$:[Ljava/lang/String;
    .end local v9           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v11           #emailAddress:Ljava/lang/String;
    .end local v12           #emailAddressArray:[Ljava/lang/String;
    .end local v14           #i$:I
    .end local v16           #len$:I
    .end local v19           #rawContactIdIndex:I
    :cond_8
    const/4 v12, 0x0

    .restart local v12       #emailAddressArray:[Ljava/lang/String;
    goto/16 :goto_0

    .line 1001
    .restart local v9       #builder:Landroid/content/ContentProviderOperation$Builder;
    .restart local v19       #rawContactIdIndex:I
    :cond_9
    sget v20, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mBatchCounter:I

    add-int/lit8 v20, v20, 0x1

    sput v20, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mBatchCounter:I

    .line 1002
    sget v20, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mLastOneBatchCount:I

    add-int/lit8 v20, v20, 0x1

    sput v20, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mLastOneBatchCount:I

    .line 1003
    sget v20, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mBatchCounter:I

    const/16 v21, 0x3c

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_a

    sget v20, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mLastOneBatchCount:I

    sget v21, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mLastBatch:I

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    .line 1005
    :cond_a
    :try_start_0
    const-string v20, "com.android.contacts"

    sget-object v21, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mOperationList:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 1006
    sget-object v20, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->clear()V

    .line 1007
    const/16 v20, 0x0

    sput v20, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mBatchCounter:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1016
    :cond_b
    :goto_2
    return-void

    .line 1008
    :catch_0
    move-exception v10

    .line 1009
    .local v10, e:Landroid/os/RemoteException;
    const-string v20, "MakeSimDBService"

    const-string v21, "%s: %s"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual {v10}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    invoke-virtual {v10}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1010
    .end local v10           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v10

    .line 1011
    .local v10, e:Landroid/content/OperationApplicationException;
    const-string v20, "MakeSimDBService"

    const-string v21, "%s: %s"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual {v10}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    invoke-virtual {v10}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1012
    .end local v10           #e:Landroid/content/OperationApplicationException;
    :catch_2
    move-exception v10

    .line 1013
    .local v10, e:Ljava/lang/NullPointerException;
    const-string v20, "MakeSimDBService"

    const-string v21, "%s: %s"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual {v10}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    invoke-virtual {v10}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private checkAndUpdateAdnEditable()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1268
    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->isAdnEditable()Z

    move-result v0

    .line 1269
    const-string v1, "adn_editable"

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->getIntPreferenceValue(Ljava/lang/String;I)I

    move-result v1

    .line 1270
    if-eqz v0, :cond_1

    if-eq v1, v3, :cond_1

    .line 1271
    const-string v0, "adn_editable"

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->setIntPreferenceValue(Ljava/lang/String;I)V

    .line 1275
    :cond_0
    :goto_0
    return-void

    .line 1272
    :cond_1
    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    .line 1273
    const-string v0, "adn_editable"

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->setIntPreferenceValue(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private checkProviderState()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 1429
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$ProviderStatus;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v7, [Ljava/lang/String;

    const-string v4, "status"

    aput-object v4, v2, v6

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1432
    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1433
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1434
    iget v2, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mProviderStatus:I

    if-eq v0, v2, :cond_0

    .line 1435
    iput v0, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mProviderStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1439
    :cond_0
    if-eqz v1, :cond_1

    .line 1440
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1443
    :cond_1
    iget v0, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mProviderStatus:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mProviderStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    :cond_2
    move v0, v7

    :goto_0
    return v0

    .line 1439
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    .line 1440
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :cond_4
    move v0, v6

    .line 1443
    goto :goto_0
.end method

.method private doAirPlaneAction(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1100
    const-string v0, "airplane_mode_db_updated"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->getIntPreferenceValue(Ljava/lang/String;I)I

    move-result v0

    .line 1101
    const-string v1, "MakeSimDBService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@@ doAirPlaneAction : isAirPlainDbUpdated= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.action.SIMDB_UNKNOWN_READY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 1112
    const-string v0, "MakeSimDBService"

    const-string v1, "sendBroadcast SIM_DB_UNKWON_READY"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    return-void
.end method

.method private doBtSapAction(IIZ)V
    .locals 1
    .parameter "opCode"
    .parameter "startId"
    .parameter "connected"

    .prologue
    .line 1256
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 1260
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doDeleteSimDB(III)V

    .line 1265
    :goto_0
    return-void

    .line 1263
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doInitAction(II)V

    goto :goto_0
.end method

.method private doCheckAdnAttribute(II)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1186
    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->isFDNEnabled()Z

    move-result v0

    .line 1187
    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->isAdnEditable()Z

    move-result v1

    .line 1189
    const-string v2, "adn_editable"

    invoke-direct {p0, v2, v6}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->getIntPreferenceValue(Ljava/lang/String;I)I

    move-result v2

    .line 1190
    const-string v3, "MakeSimDBService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "@@ doCheckAdnAttribute isAdnEditable = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    if-eqz v1, :cond_2

    if-eq v2, v7, :cond_2

    .line 1192
    const-string v2, "adn_editable"

    invoke-direct {p0, v2, v7}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->setIntPreferenceValue(Ljava/lang/String;I)V

    .line 1197
    :cond_0
    :goto_0
    if-eqz v0, :cond_4

    .line 1198
    if-nez v1, :cond_3

    .line 1200
    const-string v0, "fdn_on_adn_deleted"

    invoke-direct {p0, v0, v7}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->setIntPreferenceValue(Ljava/lang/String;I)V

    .line 1201
    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->preserveInitStatusForFDN()V

    .line 1203
    const-string v0, "sim_db_ready"

    invoke-direct {p0, v0, v6}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->getIntPreferenceValue(Ljava/lang/String;I)I

    move-result v0

    .line 1204
    const-string v1, "MakeSimDBService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@@ doCheckAdnAttribute settingValue(FDNEnable) = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    if-ne v0, v7, :cond_1

    .line 1207
    const-string v0, "sim_db_ready"

    invoke-direct {p0, v0, v6}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->setIntPreferenceValue(Ljava/lang/String;I)V

    .line 1209
    :cond_1
    const/4 v0, 0x6

    invoke-direct {p0, p1, v0, p2}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doDeleteSimDB(III)V

    .line 1234
    :goto_1
    return-void

    .line 1193
    :cond_2
    if-nez v1, :cond_0

    if-eqz v2, :cond_0

    .line 1194
    const-string v2, "adn_editable"

    invoke-direct {p0, v2, v6}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->setIntPreferenceValue(Ljava/lang/String;I)V

    goto :goto_0

    .line 1211
    :cond_3
    invoke-direct {p0, p1, v8, p2}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doLastAction(III)V

    goto :goto_1

    .line 1215
    :cond_4
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1217
    const-string v1, "fdn_on_adn_deleted"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1218
    const-string v1, "MakeSimDBService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@@ doCheckAdnAttribute isAdnDeleted = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    if-ne v0, v7, :cond_6

    .line 1220
    const-string v0, "sim_db_ready"

    invoke-direct {p0, v0, v6}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->getIntPreferenceValue(Ljava/lang/String;I)I

    move-result v0

    .line 1221
    const-string v1, "MakeSimDBService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@@ doCheckAdnAttribute settingValue(FDNDisable) = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    if-ne v0, v7, :cond_5

    .line 1225
    const-string v0, "sim_db_ready"

    invoke-direct {p0, v0, v6}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->setIntPreferenceValue(Ljava/lang/String;I)V

    .line 1228
    :cond_5
    const/4 v0, 0x7

    invoke-direct {p0, p1, v0, p2}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->CompareAdnData(III)V

    goto :goto_1

    .line 1231
    :cond_6
    invoke-direct {p0, p1, v8, p2}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doLastAction(III)V

    goto :goto_1
.end method

.method private doCheckSimState(II)V
    .locals 9
    .parameter "opCode"
    .parameter "startId"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 388
    iget-object v6, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    .line 389
    .local v3, simState:I
    const-string v6, "MakeSimDBService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "@@ doCheckSimState simState = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_2

    move v1, v4

    .line 395
    .local v1, isAirPlaneOn:Z
    :goto_0
    const-string v6, "MakeSimDBService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " @@ doCheckSimState isAirPalneMode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    if-nez v3, :cond_0

    if-nez v1, :cond_0

    .line 397
    const/4 v2, 0x6

    .line 398
    .local v2, retry:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_0

    .line 399
    monitor-enter p0

    .line 401
    const-wide/16 v6, 0x1388

    :try_start_0
    invoke-virtual {p0, v6, v7}, Ljava/lang/Object;->wait(J)V

    .line 402
    iget-object v6, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimState()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 403
    if-eqz v3, :cond_3

    .line 404
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 411
    .end local v0           #i:I
    .end local v2           #retry:I
    :cond_0
    packed-switch v3, :pswitch_data_0

    .line 454
    invoke-direct {p0, p1, v5, p2}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doLastAction(III)V

    .line 457
    :cond_1
    :goto_2
    return-void

    .end local v1           #isAirPlaneOn:Z
    :cond_2
    move v1, v5

    .line 393
    goto :goto_0

    .line 405
    .restart local v0       #i:I
    .restart local v1       #isAirPlaneOn:Z
    .restart local v2       #retry:I
    :catch_0
    move-exception v6

    .line 407
    :cond_3
    :try_start_2
    monitor-exit p0

    .line 398
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 407
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 413
    .end local v0           #i:I
    .end local v2           #retry:I
    :pswitch_0
    const-string v4, "MakeSimDBService"

    const-string v6, "@@ doCheckSimState: UNKNOWN"

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    if-eqz v1, :cond_4

    .line 415
    invoke-direct {p0, p1, v5, p2}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doDeleteSimDB(III)V

    goto :goto_2

    .line 417
    :cond_4
    invoke-direct {p0, p1, v5, p2}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doLastAction(III)V

    goto :goto_2

    .line 423
    :pswitch_1
    const-string v5, "MakeSimDBService"

    const-string v6, "@@ doCheckSimState: No SIM"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    invoke-direct {p0, p1, v4, p2}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doDeleteSimDB(III)V

    goto :goto_2

    .line 435
    :pswitch_2
    const/16 v4, 0x270f

    if-ne p1, v4, :cond_5

    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->isIccCardChanged()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 436
    const-string v4, "MakeSimDBService"

    const-string v5, "@@ SIM card is changed"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    const/4 v4, 0x2

    invoke-direct {p0, p1, v4, p2}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doDeleteSimDB(III)V

    .line 438
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Contact_BlockFormatMyProfile"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 440
    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doWriteSIMProfile()V

    goto :goto_2

    .line 443
    :cond_5
    const-string v4, "MakeSimDBService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "@@ doCheckSimState: SIM READY opCode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    const/4 v4, 0x5

    invoke-direct {p0, p1, v4, p2}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->CompareAdnData(III)V

    .line 445
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Contact_BlockFormatMyProfile"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 447
    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doWriteSIMProfile()V

    goto :goto_2

    .line 411
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private doCompareData(III)V
    .locals 21
    .parameter "opCode"
    .parameter "simState"
    .parameter "startId"

    .prologue
    .line 527
    const/4 v13, 0x0

    .line 528
    .local v13, diff:I
    const/4 v14, 0x0

    .line 529
    .local v14, diff_found:Z
    const/4 v11, 0x0

    .line 530
    .local v11, dbCursor:Landroid/database/Cursor;
    const/16 v20, 0x0

    .line 531
    .local v20, simCursor:Landroid/database/Cursor;
    const/4 v12, 0x0

    .line 534
    .local v12, db_count:I
    const/4 v2, 0x0

    :try_start_0
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->getProjection(I)[Ljava/lang/String;

    move-result-object v2

    array-length v0, v2

    move/from16 v19, v0

    .line 535
    .local v19, length:I
    move/from16 v0, v19

    new-array v4, v0, [Ljava/lang/String;

    .line 536
    .local v4, projectionToCompare:[Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->getProjection(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    move/from16 v0, v19

    invoke-static {v2, v3, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 538
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/contacts/util/Constants;->RAW_CONTACT_ADN_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 539
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mResolver:Landroid/content/ContentResolver;

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->getCallingUri()Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 541
    const-string v2, "MakeSimDBService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dbCursor count = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "    simCursor count = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    if-eqz v11, :cond_6

    if-eqz v20, :cond_6

    .line 544
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 545
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 547
    const-string v2, "MakeSimDBService"

    const-string v3, "@@ 1st Count is different break"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    invoke-direct/range {p0 .. p3}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doDeleteSimDB(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 580
    if-eqz v11, :cond_0

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 581
    :cond_0
    if-eqz v20, :cond_1

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 639
    .end local v4           #projectionToCompare:[Ljava/lang/String;
    .end local v19           #length:I
    :cond_1
    :goto_0
    return-void

    .line 550
    .restart local v4       #projectionToCompare:[Ljava/lang/String;
    .restart local v19       #length:I
    :cond_2
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_4

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_4

    .line 551
    invoke-direct/range {p0 .. p3}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doLastAction(III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 580
    if-eqz v11, :cond_3

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 581
    :cond_3
    if-eqz v20, :cond_1

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 555
    :cond_4
    :try_start_2
    new-instance v18, Landroid/database/CursorJoiner;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v11, v4, v1, v4}, Landroid/database/CursorJoiner;-><init>(Landroid/database/Cursor;[Ljava/lang/String;Landroid/database/Cursor;[Ljava/lang/String;)V

    .line 556
    .local v18, joiner:Landroid/database/CursorJoiner;
    invoke-virtual/range {v18 .. v18}, Landroid/database/CursorJoiner;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/database/CursorJoiner$Result;

    .line 557
    .local v17, joinResult:Landroid/database/CursorJoiner$Result;
    sget-object v2, Lcom/sec/android/app/contacts/sim/MakeSimDBService$1;->$SwitchMap$android$database$CursorJoiner$Result:[I

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    packed-switch v2, :pswitch_data_0

    .line 570
    :goto_1
    if-lez v13, :cond_5

    .line 571
    const/4 v14, 0x1

    .line 580
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v17           #joinResult:Landroid/database/CursorJoiner$Result;
    .end local v18           #joiner:Landroid/database/CursorJoiner;
    :cond_6
    if-eqz v11, :cond_7

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 581
    :cond_7
    if-eqz v20, :cond_8

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 584
    .end local v4           #projectionToCompare:[Ljava/lang/String;
    .end local v19           #length:I
    :cond_8
    :goto_2
    if-nez v14, :cond_11

    .line 585
    const/4 v11, 0x0

    .line 586
    const/16 v20, 0x0

    .line 589
    :try_start_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/android/contacts/util/Constants;->RAW_CONTACT_ADN_EMAILS_URI:Landroid/net/Uri;

    sget-object v7, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->ADN_EMAILS_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 591
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/android/contacts/util/Constants;->ADN_EMAILS_URI:Landroid/net/Uri;

    sget-object v7, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->ADN_EMAILS_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 593
    if-eqz v11, :cond_f

    if-eqz v20, :cond_f

    .line 594
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eq v2, v3, :cond_d

    .line 596
    const-string v2, "MakeSimDBService"

    const-string v3, "@@ 2nd Count is different break"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    invoke-direct/range {p0 .. p3}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doDeleteSimDB(III)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 626
    if-eqz v11, :cond_9

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 627
    :cond_9
    if-eqz v20, :cond_1

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 559
    .restart local v4       #projectionToCompare:[Ljava/lang/String;
    .restart local v16       #i$:Ljava/util/Iterator;
    .restart local v17       #joinResult:Landroid/database/CursorJoiner$Result;
    .restart local v18       #joiner:Landroid/database/CursorJoiner;
    .restart local v19       #length:I
    :pswitch_0
    add-int/lit8 v13, v13, 0x1

    .line 560
    goto :goto_1

    .line 563
    :pswitch_1
    add-int/lit8 v13, v13, 0x1

    .line 564
    goto :goto_1

    .line 576
    .end local v4           #projectionToCompare:[Ljava/lang/String;
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v17           #joinResult:Landroid/database/CursorJoiner$Result;
    .end local v18           #joiner:Landroid/database/CursorJoiner;
    .end local v19           #length:I
    :catch_0
    move-exception v15

    .line 578
    .local v15, e:Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v15}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 580
    if-eqz v11, :cond_a

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 581
    :cond_a
    if-eqz v20, :cond_8

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 580
    .end local v15           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v11, :cond_b

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 581
    :cond_b
    if-eqz v20, :cond_c

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v2

    .line 601
    :cond_d
    :try_start_5
    new-instance v18, Landroid/database/CursorJoiner;

    sget-object v2, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->ADN_EMAILS_PROJECTION:[Ljava/lang/String;

    sget-object v3, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->ADN_EMAILS_PROJECTION:[Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v11, v2, v1, v3}, Landroid/database/CursorJoiner;-><init>(Landroid/database/Cursor;[Ljava/lang/String;Landroid/database/Cursor;[Ljava/lang/String;)V

    .line 602
    .restart local v18       #joiner:Landroid/database/CursorJoiner;
    invoke-virtual/range {v18 .. v18}, Landroid/database/CursorJoiner;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16       #i$:Ljava/util/Iterator;
    :cond_e
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/database/CursorJoiner$Result;

    .line 603
    .restart local v17       #joinResult:Landroid/database/CursorJoiner$Result;
    sget-object v2, Lcom/sec/android/app/contacts/sim/MakeSimDBService$1;->$SwitchMap$android$database$CursorJoiner$Result:[I

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    packed-switch v2, :pswitch_data_1

    .line 616
    :goto_3
    if-lez v13, :cond_e

    .line 617
    const/4 v14, 0x1

    .line 626
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v17           #joinResult:Landroid/database/CursorJoiner$Result;
    .end local v18           #joiner:Landroid/database/CursorJoiner;
    :cond_f
    if-eqz v11, :cond_10

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 627
    :cond_10
    if-eqz v20, :cond_11

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 631
    :cond_11
    :goto_4
    if-nez v14, :cond_12

    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMasterSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_16

    if-lez v12, :cond_16

    .line 634
    :cond_12
    const-string v2, "MakeSimDBService"

    const-string v3, "@@ diff found Goto delete"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    invoke-direct/range {p0 .. p3}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doDeleteSimDB(III)V

    goto/16 :goto_0

    .line 605
    .restart local v16       #i$:Ljava/util/Iterator;
    .restart local v17       #joinResult:Landroid/database/CursorJoiner$Result;
    .restart local v18       #joiner:Landroid/database/CursorJoiner;
    :pswitch_2
    add-int/lit8 v13, v13, 0x1

    .line 606
    goto :goto_3

    .line 609
    :pswitch_3
    add-int/lit8 v13, v13, 0x1

    .line 610
    goto :goto_3

    .line 622
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v17           #joinResult:Landroid/database/CursorJoiner$Result;
    .end local v18           #joiner:Landroid/database/CursorJoiner;
    :catch_1
    move-exception v15

    .line 624
    .restart local v15       #e:Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v15}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 626
    if-eqz v11, :cond_13

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 627
    :cond_13
    if-eqz v20, :cond_11

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .line 626
    .end local v15           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v2

    if-eqz v11, :cond_14

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 627
    :cond_14
    if-eqz v20, :cond_15

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    :cond_15
    throw v2

    .line 637
    :cond_16
    invoke-direct/range {p0 .. p3}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doLastAction(III)V

    goto/16 :goto_0

    .line 557
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 603
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private doDeleteSIMProfile(Ljava/lang/String;)Z
    .locals 12
    .parameter "number"

    .prologue
    .line 645
    const-string v0, "MakeSimDBService"

    const-string v2, "@@ doDeleteSIMProfile: "

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    sget-object v0, Landroid/provider/ContactsContract$Profile;->CONTENT_RAW_CONTACTS_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "account_name"

    const-string v3, "vnd.sec.contact.phone"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "account_type"

    const-string v3, "vnd.sec.contact.phone"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 651
    .local v1, simProfileUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 653
    .local v9, cur:Landroid/database/Cursor;
    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 654
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 655
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, "data1"

    aput-object v2, v4, v0

    const/4 v0, 0x1

    const-string v2, "data2"

    aput-object v2, v4, v0

    .line 658
    .local v4, projection:[Ljava/lang/String;
    const-string v11, "raw_contact_id=? AND mimetype=\'vnd.android.cursor.item/phone_v2\'"

    .line 660
    .local v11, selection:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, "_id"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v0

    .line 664
    .local v6, selectionArgs:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v0, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v3, "data"

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    const-string v5, "raw_contact_id=? AND mimetype=\'vnd.android.cursor.item/phone_v2\'"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 667
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 668
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 669
    const-string v0, "data1"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 671
    .local v10, localprofileNumber:Ljava/lang/String;
    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 672
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 673
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 674
    const/4 v0, 0x0

    .line 689
    .end local v4           #projection:[Ljava/lang/String;
    .end local v6           #selectionArgs:[Ljava/lang/String;
    .end local v8           #c:Landroid/database/Cursor;
    .end local v10           #localprofileNumber:Ljava/lang/String;
    .end local v11           #selection:Ljava/lang/String;
    :goto_0
    return v0

    .line 676
    .restart local v4       #projection:[Ljava/lang/String;
    .restart local v6       #selectionArgs:[Ljava/lang/String;
    .restart local v8       #c:Landroid/database/Cursor;
    .restart local v10       #localprofileNumber:Ljava/lang/String;
    .restart local v11       #selection:Ljava/lang/String;
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 681
    .end local v10           #localprofileNumber:Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 682
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 683
    const/4 v0, 0x1

    goto :goto_0

    .line 677
    :cond_2
    if-eqz v8, :cond_1

    .line 678
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 684
    .end local v4           #projection:[Ljava/lang/String;
    .end local v6           #selectionArgs:[Ljava/lang/String;
    .end local v8           #c:Landroid/database/Cursor;
    .end local v11           #selection:Ljava/lang/String;
    :cond_3
    if-eqz v9, :cond_4

    .line 685
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 686
    const/4 v0, 0x1

    goto :goto_0

    .line 689
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private doDeleteSimDB(III)V
    .locals 16
    .parameter "opCode"
    .parameter "simState"
    .parameter "startId"

    .prologue
    .line 754
    const-string v1, "MakeSimDBService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "@@ doDeleteSimDB: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->checkProviderState()Z

    move-result v1

    if-nez v1, :cond_0

    .line 756
    monitor-enter p0

    .line 758
    const-wide/16 v5, 0x1388

    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 761
    :goto_1
    :try_start_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 763
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 766
    .local v14, start:J
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "account_name"

    const-string v5, "primary.sim.account_name"

    invoke-virtual {v1, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "account_type"

    const-string v5, "vnd.sec.contact.sim"

    invoke-virtual {v1, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "limit"

    const-string v5, "1"

    invoke-virtual {v1, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 771
    .local v2, checkUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v3, v5

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 772
    .local v9, cur:Landroid/database/Cursor;
    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 773
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 774
    sget-object v1, Lcom/android/contacts/util/Constants;->RAW_CONTACTS_WIPEOUT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "account_name"

    const-string v5, "primary.sim.account_name"

    invoke-virtual {v1, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "account_type"

    const-string v5, "vnd.sec.contact.sim"

    invoke-virtual {v1, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v11

    .line 777
    .local v11, deleteUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v11, v3, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 782
    .end local v11           #deleteUri:Landroid/net/Uri;
    :cond_1
    :goto_2
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMasterSimEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 784
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "account_name"

    const-string v5, "primary.sim2.account_name"

    invoke-virtual {v1, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "account_type"

    const-string v5, "vnd.sec.contact.sim2"

    invoke-virtual {v1, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "limit"

    const-string v5, "1"

    invoke-virtual {v1, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 789
    .local v4, checkUri2:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v6, "_id"

    aput-object v6, v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 790
    .local v10, cur2:Landroid/database/Cursor;
    if-eqz v10, :cond_4

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_4

    .line 791
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 792
    sget-object v1, Lcom/android/contacts/util/Constants;->RAW_CONTACTS_WIPEOUT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "account_name"

    const-string v5, "primary.sim2.account_name"

    invoke-virtual {v1, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "account_type"

    const-string v5, "vnd.sec.contact.sim2"

    invoke-virtual {v1, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v11

    .line 795
    .restart local v11       #deleteUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v11, v3, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 801
    .end local v4           #checkUri2:Landroid/net/Uri;
    .end local v10           #cur2:Landroid/database/Cursor;
    .end local v11           #deleteUri:Landroid/net/Uri;
    :cond_2
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 802
    .local v12, end:J
    const-string v1, "MakeSimDBService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "@@ db delete time : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-long v5, v12, v14

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "msec"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    packed-switch p2, :pswitch_data_0

    .line 820
    :goto_4
    :pswitch_0
    return-void

    .line 778
    .end local v12           #end:J
    :cond_3
    if-eqz v9, :cond_1

    .line 779
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 796
    .restart local v4       #checkUri2:Landroid/net/Uri;
    .restart local v10       #cur2:Landroid/database/Cursor;
    :cond_4
    if-eqz v10, :cond_2

    .line 797
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 808
    .end local v4           #checkUri2:Landroid/net/Uri;
    .end local v10           #cur2:Landroid/database/Cursor;
    .restart local v12       #end:J
    :pswitch_1
    const-string v1, "MakeSimDBService"

    const-string v3, "@@ doDeleteSimDB Go to last action "

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    invoke-direct/range {p0 .. p3}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doLastAction(III)V

    goto :goto_4

    .line 815
    :pswitch_2
    const-string v1, "MakeSimDBService"

    const-string v3, "@@ doDeleteSimDB Go to Write action "

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    invoke-direct/range {p0 .. p3}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doWriteSimDB(III)V

    goto :goto_4

    .line 759
    .end local v2           #checkUri:Landroid/net/Uri;
    .end local v9           #cur:Landroid/database/Cursor;
    .end local v12           #end:J
    .end local v14           #start:J
    :catch_0
    move-exception v1

    goto/16 :goto_1

    .line 804
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private doInitAction(II)V
    .locals 0
    .parameter "opCode"
    .parameter "startId"

    .prologue
    .line 363
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doCheckSimState(II)V

    .line 364
    return-void
.end method

.method private doLastAction(III)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v8, 0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1282
    .line 1284
    const-string v0, "sim_db_ready"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->getIntPreferenceValue(Ljava/lang/String;I)I

    move-result v0

    .line 1285
    const-string v3, "MakeSimDBService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "@@ doLastAction : settingValue= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    const-string v3, "MakeSimDBService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "@@ doLastAction : simState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " opCode ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    if-nez v0, :cond_5

    .line 1289
    const-string v0, "sim_db_ready"

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->setIntPreferenceValue(Ljava/lang/String;I)V

    .line 1290
    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->setRuntimeFirstBootTime()V

    .line 1291
    if-nez p2, :cond_0

    .line 1298
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.samsung.intent.action.SIMDB_UNKNOWN_READY"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    move v0, v2

    .line 1303
    :goto_0
    sparse-switch p1, :sswitch_data_0

    .line 1349
    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->checkAndUpdateAdnEditable()V

    .line 1354
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 1356
    const-string v0, "MakeSimDBService"

    const-string v2, "@@  NOTIFY !!"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 1361
    :cond_2
    invoke-direct {p0, p3}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doStopService(I)V

    .line 1362
    return-void

    .line 1305
    :sswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->checkAndUpdateAdnEditable()V

    .line 1306
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v2

    .line 1307
    invoke-virtual {v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimStatus(Ljava/lang/String;)V

    goto :goto_1

    .line 1313
    :sswitch_1
    if-eqz p2, :cond_4

    .line 1314
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1316
    const-string v4, "airplane_mode_changed"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 1317
    if-ne v4, v2, :cond_4

    .line 1318
    const-string v4, "airplain_init_sim_status"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    int-to-long v4, v2

    .line 1319
    const-string v2, "MakeSimDBService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "@@ 7777 initStatus = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    cmp-long v2, v4, v8

    if-nez v2, :cond_3

    .line 1321
    invoke-direct {p0, v4, v5}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->updateSettingStatus(J)V

    move v0, v1

    .line 1324
    :cond_3
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1325
    const-string v3, "airplane_mode_changed"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1326
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1329
    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->checkAndUpdateAdnEditable()V

    goto :goto_1

    .line 1334
    :sswitch_2
    const/4 v3, 0x7

    if-ne p2, v3, :cond_1

    .line 1335
    invoke-direct {p0, v1}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->updateAdnDeletedStatus(I)V

    .line 1336
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1338
    const-string v4, "fdn_init_sim_status"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    int-to-long v2, v2

    .line 1339
    const-string v4, "MakeSimDBService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "@@ 6666 initStatus = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    cmp-long v4, v2, v8

    if-nez v4, :cond_1

    .line 1341
    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->updateSettingStatus(J)V

    move v0, v1

    .line 1342
    goto/16 :goto_1

    :cond_5
    move v0, v1

    goto/16 :goto_0

    .line 1303
    :sswitch_data_0
    .sparse-switch
        0x1a0a -> :sswitch_2
        0x1e61 -> :sswitch_1
        0x270f -> :sswitch_0
    .end sparse-switch
.end method

.method private doQueryAction(II)V
    .locals 3
    .parameter "opCode"
    .parameter "startId"

    .prologue
    .line 1124
    const-string v1, "sim_db_ready"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->getIntPreferenceValue(Ljava/lang/String;I)I

    move-result v0

    .line 1125
    .local v0, settingValue:I
    if-nez v0, :cond_0

    .line 1126
    const-string v1, "sim_db_ready"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->setIntPreferenceValue(Ljava/lang/String;I)V

    .line 1127
    :cond_0
    invoke-direct {p0, p2}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doStopService(I)V

    .line 1128
    return-void
.end method

.method private doStopService(I)V
    .locals 0
    .parameter "startId"

    .prologue
    .line 1378
    invoke-virtual {p0, p1}, Landroid/app/Service;->stopSelfResult(I)Z

    .line 1379
    return-void
.end method

.method private doWriteSIMProfile()V
    .locals 8

    .prologue
    .line 695
    const-string v5, "MakeSimDBService"

    const-string v6, "@@ doWriteSIMProfile: "

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    iget-object v5, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v3

    .line 699
    .local v3, phone_number:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doDeleteSIMProfile(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 743
    :goto_0
    return-void

    .line 704
    :cond_0
    sget-object v5, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 706
    .local v4, rawContactIdIndex:I
    sget-object v5, Landroid/provider/ContactsContract$Profile;->CONTENT_RAW_CONTACTS_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 708
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v5, "account_name"

    const-string v6, "vnd.sec.contact.phone"

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 709
    const-string v5, "account_type"

    const-string v6, "vnd.sec.contact.phone"

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 710
    sget-object v5, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 712
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0009

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 714
    .local v2, name:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 715
    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 716
    const-string v5, "mimetype"

    const-string v6, "vnd.android.cursor.item/name"

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 717
    const-string v5, "data2"

    invoke-virtual {v0, v5, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 718
    const-string v5, "raw_contact_id"

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 719
    sget-object v5, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 722
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 723
    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 724
    const-string v5, "raw_contact_id"

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 725
    const-string v5, "mimetype"

    const-string v6, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 726
    const-string v5, "data2"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 727
    const-string v5, "data1"

    invoke-virtual {v0, v5, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 728
    const-string v5, "is_primary"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 729
    sget-object v5, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 733
    :cond_2
    :try_start_0
    iget-object v5, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "com.android.contacts"

    sget-object v7, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 734
    sget-object v5, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 735
    :catch_0
    move-exception v1

    .line 737
    .local v1, e:Landroid/content/OperationApplicationException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 738
    .end local v1           #e:Landroid/content/OperationApplicationException;
    :catch_1
    move-exception v1

    .line 740
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0
.end method

.method private doWriteSimDB(III)V
    .locals 6
    .parameter "opCode"
    .parameter "simState"
    .parameter "startId"

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 823
    sput v0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mBatchCounter:I

    .line 824
    sput v0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mLastOneBatchCount:I

    .line 827
    :goto_0
    const-string v0, "1"

    const-string v1, "ril.initPB"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->checkProviderState()Z

    move-result v0

    if-nez v0, :cond_1

    .line 828
    :cond_0
    monitor-enter p0

    .line 830
    const-wide/16 v0, 0x1388

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 833
    :goto_1
    :try_start_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 836
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mResolver:Landroid/content/ContentResolver;

    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->getCallingUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->getProjection(I)[Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mCursor:Landroid/database/Cursor;

    .line 839
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    .line 840
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    sput v0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mLastBatch:I

    .line 841
    const-string v0, "MakeSimDBService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@ WriteAllSimContactsThread mLastBatch = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mLastBatch:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 843
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->getColumnIndex(Landroid/database/Cursor;)V

    .line 844
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mCursor:Landroid/database/Cursor;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 845
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 846
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mAccount:Landroid/accounts/Account;

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->actuallyImportOneSimContact(Landroid/database/Cursor;Landroid/content/ContentResolver;Landroid/accounts/Account;)V

    goto :goto_2

    .line 848
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 849
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 851
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->doLastAction(III)V

    .line 852
    return-void

    .line 831
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private getCallingUri()Landroid/net/Uri;
    .locals 4

    .prologue
    .line 1078
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getAnrConfigValue()I

    move-result v0

    .line 1080
    if-lez v0, :cond_0

    .line 1081
    sget-object v0, Lcom/android/contacts/util/Constants;->ADN_ANR_URI:Landroid/net/Uri;

    .line 1085
    :goto_0
    const-string v1, "MakeSimDBService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@@ calling uri : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    return-object v0

    .line 1083
    :cond_0
    sget-object v0, Lcom/android/contacts/util/Constants;->ADN_URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method private getColumnIndex(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 861
    const-string v1, "name"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->NAME_COLUMN_INDEX:I

    .line 862
    const-string v1, "number"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->NUMBER_COLUMN_INDEX:I

    .line 864
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getAnrConfigValue()I

    move-result v0

    .line 865
    .local v0, anrConfigValue:I
    if-lez v0, :cond_0

    .line 866
    const-string v1, "anr_number"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->ANR_NUMBER_COLUMN_INDEX:I

    .line 867
    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 868
    const-string v1, "anrA_number"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->ANR_A_NUMBER_COLUMN_INDEX:I

    .line 869
    const-string v1, "anrB_number"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->ANR_B_NUMBER_COLUMN_INDEX:I

    .line 870
    const-string v1, "anrC_number"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->ANR_C_NUMBER_COLUMN_INDEX:I

    .line 875
    :cond_0
    const-string v1, "emails"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->EMAIL_COLUMN_INDEX:I

    .line 876
    const-string v1, "adn_index"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->ADN_INDEX_COLUMN_INDEX:I

    .line 877
    return-void
.end method

.method private getIntPreferenceValue(Ljava/lang/String;I)I
    .locals 2
    .parameter "prefKey"
    .parameter "defVal"

    .prologue
    .line 330
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 332
    .local v0, pref:Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private getProjection(I)[Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x3

    .line 1034
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getAnrConfigValue()I

    move-result v0

    .line 1036
    packed-switch p1, :pswitch_data_0

    .line 1065
    const-string v0, "MakeSimDBService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@ Can\'t get a projection it use wrong projecion type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    sget-object v0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->ADN_COMPARE_PROJECTION:[Ljava/lang/String;

    :goto_0
    return-object v0

    .line 1038
    :pswitch_0
    if-lez v0, :cond_1

    .line 1039
    if-le v0, v1, :cond_0

    .line 1040
    const-string v0, "MakeSimDBService"

    const-string v1, "@@ ADN_ANR_FULL_COMPARE_PROJECTION "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    sget-object v0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->ADN_ANR_FULL_COMPARE_PROJECTION:[Ljava/lang/String;

    goto :goto_0

    .line 1043
    :cond_0
    const-string v0, "MakeSimDBService"

    const-string v1, "@@ ADN_ANR_PATIAL_COMPARE_PROJECTION "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    sget-object v0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->ADN_ANR_PATIAL_COMPARE_PROJECTION:[Ljava/lang/String;

    goto :goto_0

    .line 1046
    :cond_1
    const-string v0, "MakeSimDBService"

    const-string v1, "@@ ADN_COMPARE_PROJECTION "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    sget-object v0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->ADN_COMPARE_PROJECTION:[Ljava/lang/String;

    goto :goto_0

    .line 1051
    :pswitch_1
    if-lez v0, :cond_3

    .line 1052
    if-le v0, v1, :cond_2

    .line 1053
    const-string v0, "MakeSimDBService"

    const-string v1, "@@ ADN_ANR_FULL_PROJECTION "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    sget-object v0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->ADN_ANR_FULL_PROJECTION:[Ljava/lang/String;

    goto :goto_0

    .line 1056
    :cond_2
    const-string v0, "MakeSimDBService"

    const-string v1, "@@ ADN_ANR_PATIAL_PROJECTION "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    sget-object v0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->ADN_ANR_PATIAL_PROJECTION:[Ljava/lang/String;

    goto :goto_0

    .line 1059
    :cond_3
    const-string v0, "MakeSimDBService"

    const-string v1, "@@ ADN_PROJECTION "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    sget-object v0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->ADN_PROJECTION:[Ljava/lang/String;

    goto :goto_0

    .line 1036
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getSimAccountStatus()J
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x0

    .line 336
    const-wide/16 v7, 0x0

    .line 338
    .local v7, simStatus:J
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "ungrouped_visible"

    aput-object v3, v2, v9

    const-string v3, " account_type = \'vnd.sec.contact.sim\' AND account_name = \'primary.sim.account_name\' "

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 341
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 342
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    goto :goto_0

    .line 345
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 347
    :cond_1
    return-wide v7
.end method

.method private isAdnEditable()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1139
    const-string v0, "ril.ICC_TYPE"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1140
    const-string v3, "2"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    .line 1182
    :cond_0
    :goto_0
    return v1

    .line 1143
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 1144
    if-eq v2, v0, :cond_0

    .line 1149
    :try_start_0
    const-string v0, "simphonebook"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 1152
    if-eqz v0, :cond_3

    .line 1153
    const/16 v3, 0x6f3a

    invoke-interface {v0, v3}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnLikesSimStatusInfo(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    .line 1164
    :goto_1
    const-string v3, "MakeSimDBService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "@@ AdnEditalbe simStatus = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    and-int/lit8 v3, v0, 0x1

    .line 1166
    and-int/lit8 v0, v0, 0x4

    .line 1168
    packed-switch v3, :pswitch_data_0

    move v1, v2

    .line 1182
    goto :goto_0

    .line 1155
    :catch_0
    move-exception v0

    move v0, v1

    .line 1158
    goto :goto_1

    .line 1156
    :catch_1
    move-exception v0

    move v0, v1

    .line 1158
    goto :goto_1

    .line 1157
    :catch_2
    move-exception v0

    move v0, v1

    goto :goto_1

    .line 1171
    :pswitch_0
    if-eqz v0, :cond_0

    .line 1173
    if-ne v0, v2, :cond_2

    move v1, v2

    .line 1174
    goto :goto_0

    :cond_2
    :pswitch_1
    move v1, v2

    .line 1179
    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    .line 1168
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isFDNEnabled()Z
    .locals 2

    .prologue
    .line 1244
    const/4 v0, 0x0

    .line 1246
    :try_start_0
    const-string v1, "phoneext"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v1

    .line 1247
    if-eqz v1, :cond_0

    .line 1248
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephonyExt;->isSimFDNEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1251
    :cond_0
    :goto_0
    return v0

    .line 1249
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private isIccCardChanged()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 467
    const-string v6, "1"

    const-string v7, "ril.isIccChanged"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 470
    const-string v6, "ro.runtime.firstboot"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 471
    .local v1, firstBootTime:Ljava/lang/String;
    const-string v0, "1"

    .line 472
    .local v0, fakeBootTime:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 475
    .local v3, pref:Landroid/content/SharedPreferences;
    const-string v6, "runtime_firstboot_time"

    const-string v7, "0"

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 477
    .local v2, iccChangedBootTime:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 480
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "runtime_firstboot_time"

    const-string v7, "1"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 498
    .end local v0           #fakeBootTime:Ljava/lang/String;
    .end local v1           #firstBootTime:Ljava/lang/String;
    .end local v2           #iccChangedBootTime:Ljava/lang/String;
    .end local v3           #pref:Landroid/content/SharedPreferences;
    :goto_0
    return v4

    .line 484
    .restart local v0       #fakeBootTime:Ljava/lang/String;
    .restart local v1       #firstBootTime:Ljava/lang/String;
    .restart local v2       #iccChangedBootTime:Ljava/lang/String;
    .restart local v3       #pref:Landroid/content/SharedPreferences;
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 485
    const-string v6, "1"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 487
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v6, "runtime_firstboot_time"

    invoke-interface {v4, v6, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    move v4, v5

    .line 488
    goto :goto_0

    .line 490
    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 492
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "runtime_firstboot_time"

    invoke-interface {v5, v6, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .end local v0           #fakeBootTime:Ljava/lang/String;
    .end local v1           #firstBootTime:Ljava/lang/String;
    .end local v2           #iccChangedBootTime:Ljava/lang/String;
    .end local v3           #pref:Landroid/content/SharedPreferences;
    :cond_2
    move v4, v5

    .line 498
    goto :goto_0
.end method

.method private preserveInitStatusForFDN()V
    .locals 3

    .prologue
    .line 1238
    .line 1239
    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->getSimAccountStatus()J

    move-result-wide v0

    .line 1240
    const-string v2, "fdn_init_sim_status"

    long-to-int v0, v0

    invoke-direct {p0, v2, v0}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->setIntPreferenceValue(Ljava/lang/String;I)V

    .line 1241
    return-void
.end method

.method private sendMessage(III)V
    .locals 2
    .parameter "opCode"
    .parameter "startId"
    .parameter "what"

    .prologue
    .line 296
    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mServiceHandler:Lcom/sec/android/app/contacts/sim/MakeSimDBService$ServiceHandler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 297
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 298
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 299
    iput p3, v0, Landroid/os/Message;->what:I

    .line 300
    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mServiceHandler:Lcom/sec/android/app/contacts/sim/MakeSimDBService$ServiceHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 301
    return-void
.end method

.method private setIntPreferenceValue(Ljava/lang/String;I)V
    .locals 2
    .parameter "prefKey"
    .parameter "prefVal"

    .prologue
    .line 318
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 320
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 321
    return-void
.end method

.method private setRuntimeFirstBootTime()V
    .locals 7

    .prologue
    .line 1365
    const-string v4, "ro.runtime.firstboot"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1366
    .local v1, firstBootTime:Ljava/lang/String;
    const-string v0, "1"

    .line 1367
    .local v0, fakeBootTime:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1369
    .local v2, pref:Landroid/content/SharedPreferences;
    const-string v4, "runtime_firstboot_time"

    const-string v5, "0"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1370
    .local v3, runtimeFirstBootTime:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1371
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "runtime_firstboot_time"

    const-string v6, "1"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1375
    :cond_0
    :goto_0
    return-void

    .line 1372
    :cond_1
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1373
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "runtime_firstboot_time"

    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method private updateAdnDeletedStatus(I)V
    .locals 2
    .parameter

    .prologue
    .line 1131
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1133
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1134
    const-string v1, "fdn_on_adn_deleted"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1135
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1136
    return-void
.end method

.method private updateSettingStatus(J)V
    .locals 6
    .parameter "status"

    .prologue
    const/4 v5, 0x0

    .line 367
    sget-object v2, Landroid/provider/ContactsContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "account_name"

    const-string v4, "primary.sim.account_name"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "account_type"

    const-string v4, "vnd.sec.contact.sim"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 371
    .local v0, settingUri:Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 372
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "ungrouped_visible"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 373
    iget-object v2, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, v0, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 374
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 178
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 7

    .prologue
    .line 183
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 185
    const-string v4, "MakeSimDBService"

    const-string v5, "@@ onCreate!!!"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 187
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mResolver:Landroid/content/ContentResolver;

    .line 189
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMasterSimEnabled()Z

    move-result v1

    .line 195
    .local v1, mSimMaster:Z
    new-instance v4, Landroid/accounts/Account;

    const-string v5, "primary.sim.account_name"

    const-string v6, "vnd.sec.contact.sim"

    invoke-direct {v4, v5, v6}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mAccount:Landroid/accounts/Account;

    .line 198
    const-string v4, "power"

    invoke-virtual {p0, v4}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 199
    .local v2, pm:Landroid/os/PowerManager;
    const/4 v4, 0x1

    const-string v5, "MakeSimDBService"

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 200
    const/4 v4, 0x0

    invoke-static {v4}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mTelMan:Landroid/telephony/TelephonyManager;

    .line 205
    new-instance v3, Ljava/lang/Thread;

    const/4 v4, 0x0

    const-string v5, "MakeSimDBService"

    invoke-direct {v3, v4, p0, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 206
    .local v3, thr:Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 207
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1450
    const-string v0, "MakeSimDBService"

    const-string v1, "@@ onDestory"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mServiceLooper:Landroid/os/Looper;

    if-nez v0, :cond_0

    .line 1453
    monitor-enter p0

    .line 1455
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1458
    :goto_1
    :try_start_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1460
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 1461
    return-void

    .line 1456
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 12
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v6, 0x3

    const/4 v11, 0x1

    const/4 v5, 0x2

    const/4 v10, 0x0

    .line 212
    :goto_0
    iget-object v7, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mServiceHandler:Lcom/sec/android/app/contacts/sim/MakeSimDBService$ServiceHandler;

    if-nez v7, :cond_0

    .line 213
    monitor-enter p0

    .line 215
    const-wide/16 v7, 0x64

    :try_start_0
    invoke-virtual {p0, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :goto_1
    :try_start_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 221
    :cond_0
    if-nez p1, :cond_1

    .line 222
    const-string v6, "MakeSimDBService"

    const-string v7, "Intent is null in onStartCommand"

    new-instance v8, Ljava/lang/NullPointerException;

    invoke-direct {v8}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {v6, v7, v8}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 292
    :goto_2
    return v5

    .line 226
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 227
    .local v0, bundle:Landroid/os/Bundle;
    const-string v7, "op"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 228
    .local v2, opCode:I
    const-string v7, "MakeSimDBService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "@@ onStartCommand!!! opCode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const-string v7, "MakeSimDBService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "@@ onStartCommand!!! flags = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    sparse-switch v2, :sswitch_data_0

    :cond_2
    :goto_3
    move v5, v6

    .line 292
    goto :goto_2

    .line 233
    :sswitch_0
    const-string v5, "isEnabled"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 235
    .local v1, isEnabled:Z
    if-nez v1, :cond_2

    .line 237
    invoke-direct {p0, v2, p3, v6}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->sendMessage(III)V

    goto :goto_3

    .line 246
    .end local v1           #isEnabled:Z
    :sswitch_1
    if-ge p3, v5, :cond_3

    .line 247
    invoke-direct {p0, v2, p3, v10}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->sendMessage(III)V

    goto :goto_3

    .line 249
    :cond_3
    invoke-direct {p0, v2, p3, v11}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->sendMessage(III)V

    goto :goto_3

    .line 256
    :sswitch_2
    const-string v7, "sim_db_ready"

    invoke-direct {p0, v7, v10}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->getIntPreferenceValue(Ljava/lang/String;I)I

    move-result v4

    .line 257
    .local v4, settingValue:I
    if-ne v4, v11, :cond_4

    .line 258
    const-string v7, "sim_db_ready"

    invoke-direct {p0, v7, v10}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->setIntPreferenceValue(Ljava/lang/String;I)V

    .line 260
    :cond_4
    invoke-direct {p0, v2, p3, v5}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->sendMessage(III)V

    goto :goto_3

    .line 265
    .end local v4           #settingValue:I
    :sswitch_3
    const/4 v5, 0x4

    invoke-direct {p0, v2, p3, v5}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->sendMessage(III)V

    goto :goto_3

    .line 278
    :sswitch_4
    const-string v5, "service_connected"

    invoke-virtual {p1, v5, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 279
    .local v3, serviceConnected:Z
    if-eqz v3, :cond_5

    .line 280
    const/4 v5, 0x5

    invoke-direct {p0, v2, p3, v5}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->sendMessage(III)V

    goto :goto_3

    .line 282
    :cond_5
    const/4 v5, 0x6

    invoke-direct {p0, v2, p3, v5}, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->sendMessage(III)V

    goto :goto_3

    .line 216
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #opCode:I
    .end local v3           #serviceConnected:Z
    :catch_0
    move-exception v7

    goto/16 :goto_1

    .line 231
    :sswitch_data_0
    .sparse-switch
        0x15b3 -> :sswitch_4
        0x1a0a -> :sswitch_3
        0x1e61 -> :sswitch_2
        0x22b8 -> :sswitch_0
        0x270f -> :sswitch_1
    .end sparse-switch
.end method

.method public run()V
    .locals 1

    .prologue
    .line 304
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 305
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 306
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mServiceLooper:Landroid/os/Looper;

    .line 307
    new-instance v0, Lcom/sec/android/app/contacts/sim/MakeSimDBService$ServiceHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/sim/MakeSimDBService$ServiceHandler;-><init>(Lcom/sec/android/app/contacts/sim/MakeSimDBService;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSimDBService;->mServiceHandler:Lcom/sec/android/app/contacts/sim/MakeSimDBService$ServiceHandler;

    .line 308
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 309
    return-void
.end method
