.class public Lcom/sec/android/app/contacts/sim/MakeSim2DBService;
.super Landroid/app/Service;
.source "MakeSim2DBService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/sim/MakeSim2DBService$1;,
        Lcom/sec/android/app/contacts/sim/MakeSim2DBService$ServiceHandler;,
        Lcom/sec/android/app/contacts/sim/MakeSim2DBService$projectionTypes;
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
.field private final SIM_ONE:I

.field private mAccount:Landroid/accounts/Account;

.field private mCursor:Landroid/database/Cursor;

.field private mDsdsService:Landroid/plugin/dsds/PlugInDsdsService;

.field private mProviderStatus:I

.field private mResolver:Landroid/content/ContentResolver;

.field private volatile mServiceHandler:Lcom/sec/android/app/contacts/sim/MakeSim2DBService$ServiceHandler;

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

    .line 107
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

    sput-object v0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->ADN_PROJECTION:[Ljava/lang/String;

    .line 114
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

    sput-object v0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->ADN_ANR_FULL_PROJECTION:[Ljava/lang/String;

    .line 125
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

    sput-object v0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->ADN_ANR_PATIAL_PROJECTION:[Ljava/lang/String;

    .line 133
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v0, v3

    const-string v1, "number"

    aput-object v1, v0, v5

    const-string v1, "adn_index"

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->ADN_COMPARE_PROJECTION:[Ljava/lang/String;

    .line 140
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

    sput-object v0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->ADN_ANR_FULL_COMPARE_PROJECTION:[Ljava/lang/String;

    .line 150
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

    sput-object v0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->ADN_ANR_PATIAL_COMPARE_PROJECTION:[Ljava/lang/String;

    .line 158
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "emails"

    aput-object v1, v0, v3

    const-string v1, "adn_index"

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->ADN_EMAILS_PROJECTION:[Ljava/lang/String;

    .line 163
    sput v4, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->NAME_COLUMN_INDEX:I

    .line 164
    sput v4, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->NUMBER_COLUMN_INDEX:I

    .line 166
    sput v4, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->ANR_NUMBER_COLUMN_INDEX:I

    .line 167
    sput v4, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->ANR_A_NUMBER_COLUMN_INDEX:I

    .line 168
    sput v4, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->ANR_B_NUMBER_COLUMN_INDEX:I

    .line 169
    sput v4, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->ANR_C_NUMBER_COLUMN_INDEX:I

    .line 171
    sput v4, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->EMAIL_COLUMN_INDEX:I

    .line 172
    sput v4, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->ADN_INDEX_COLUMN_INDEX:I

    .line 174
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mInitSettingValue:J

    .line 175
    sput v3, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mBatchCounter:I

    .line 176
    sput v3, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mLastBatch:I

    .line 177
    sput v3, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mLastOneBatchCount:I

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mOperationList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 92
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->SIM_ONE:I

    .line 179
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mProviderStatus:I

    .line 1345
    return-void
.end method

.method private CompareAdnData(III)V
    .locals 2
    .parameter "opCode"
    .parameter "simState"
    .parameter "startId"

    .prologue
    .line 485
    :goto_0
    const-string v0, "1"

    const-string v1, "ril.initPB2"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->checkProviderState()Z

    move-result v0

    if-nez v0, :cond_1

    .line 486
    :cond_0
    monitor-enter p0

    .line 488
    const-wide/16 v0, 0x1388

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
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

    .line 493
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->doCompareData(III)V

    .line 494
    return-void

    .line 489
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/sim/MakeSim2DBService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->doInitAction(II)V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/sim/MakeSim2DBService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->doQueryAction(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/sim/MakeSim2DBService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->doAirPlaneAction(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/sim/MakeSim2DBService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->doCheckAdnAttribute(II)V

    return-void
.end method

.method private static actuallyImportOneSimContact(Landroid/database/Cursor;Landroid/content/ContentResolver;Landroid/accounts/Account;)V
    .locals 25
    .parameter "cursor"
    .parameter "resolver"
    .parameter "account"

    .prologue
    .line 867
    sget v20, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->NAME_COLUMN_INDEX:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 868
    .local v17, name:Ljava/lang/String;
    sget v20, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->NUMBER_COLUMN_INDEX:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 869
    .local v18, phoneNumber:Ljava/lang/String;
    const/4 v6, 0x0

    .line 870
    .local v6, AnrNumber:Ljava/lang/String;
    const/4 v3, 0x0

    .line 871
    .local v3, AnrANumber:Ljava/lang/String;
    const/4 v4, 0x0

    .line 872
    .local v4, AnrBNumber:Ljava/lang/String;
    const/4 v5, 0x0

    .line 873
    .local v5, AnrCNumber:Ljava/lang/String;
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getAnrConfigValue(I)I

    move-result v7

    .line 875
    .local v7, anrConfigValue:I
    if-lez v7, :cond_0

    .line 876
    sget v20, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->ANR_NUMBER_COLUMN_INDEX:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 877
    const/16 v20, 0x3

    move/from16 v0, v20

    if-le v7, v0, :cond_0

    .line 878
    sget v20, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->ANR_A_NUMBER_COLUMN_INDEX:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 879
    sget v20, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->ANR_B_NUMBER_COLUMN_INDEX:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 880
    sget v20, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->ANR_C_NUMBER_COLUMN_INDEX:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 884
    :cond_0
    sget v20, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->EMAIL_COLUMN_INDEX:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 885
    .local v13, emailAddresses:Ljava/lang/String;
    sget v20, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->ADN_INDEX_COLUMN_INDEX:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 887
    .local v15, index:Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_8

    .line 888
    const-string v20, ","

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 893
    .local v12, emailAddressArray:[Ljava/lang/String;
    :goto_0
    sget-object v20, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 896
    .local v19, rawContactIdIndex:I
    sget-object v20, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v20 .. v20}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 898
    .local v9, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v20, "account_name"

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 899
    const-string v20, "account_type"

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 900
    const-string v20, "sourceid"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0, v15}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 901
    sget-object v20, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 904
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_1

    .line 905
    sget-object v20, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v20 .. v20}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 906
    const-string v20, "raw_contact_id"

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 907
    const-string v20, "mimetype"

    const-string v21, "vnd.android.cursor.item/name"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 908
    const-string v20, "data2"

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 909
    sget-object v20, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 913
    :cond_1
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 914
    sget-object v20, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v20 .. v20}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 915
    const-string v20, "raw_contact_id"

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 916
    const-string v20, "mimetype"

    const-string v21, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 917
    const-string v20, "data2"

    const/16 v21, 0x2

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 918
    const-string v20, "data1"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 919
    const-string v20, "is_primary"

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 920
    sget-object v20, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 925
    :cond_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_3

    .line 926
    sget-object v20, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v20 .. v20}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 927
    const-string v20, "raw_contact_id"

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 928
    const-string v20, "mimetype"

    const-string v21, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 929
    const-string v20, "data2"

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 930
    const-string v20, "data1"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0, v6}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 931
    const-string v20, "is_primary"

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 932
    sget-object v20, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 936
    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_4

    .line 937
    sget-object v20, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v20 .. v20}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 938
    const-string v20, "raw_contact_id"

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 939
    const-string v20, "mimetype"

    const-string v21, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 940
    const-string v20, "data2"

    const/16 v21, 0x3

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 941
    const-string v20, "data1"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 942
    const-string v20, "is_primary"

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 943
    sget-object v20, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 947
    :cond_4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_5

    .line 948
    sget-object v20, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v20 .. v20}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 949
    const-string v20, "raw_contact_id"

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 950
    const-string v20, "mimetype"

    const-string v21, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 951
    const-string v20, "data2"

    const/16 v21, 0x4

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 952
    const-string v20, "data1"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 953
    const-string v20, "is_primary"

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 954
    sget-object v20, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 958
    :cond_5
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_6

    .line 959
    sget-object v20, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v20 .. v20}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 960
    const-string v20, "raw_contact_id"

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 961
    const-string v20, "mimetype"

    const-string v21, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 962
    const-string v20, "data2"

    const/16 v21, 0x5

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 963
    const-string v20, "data1"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 964
    const-string v20, "is_primary"

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 965
    sget-object v20, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 969
    :cond_6
    if-eqz v12, :cond_9

    .line 970
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

    .line 971
    .local v11, emailAddress:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_7

    .line 972
    sget-object v20, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {v20 .. v20}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 973
    const-string v20, "raw_contact_id"

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 974
    const-string v20, "mimetype"

    const-string v21, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 975
    const-string v20, "data2"

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 976
    const-string v20, "data1"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 977
    sget-object v20, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 970
    :cond_7
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 890
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

    .line 982
    .restart local v9       #builder:Landroid/content/ContentProviderOperation$Builder;
    .restart local v19       #rawContactIdIndex:I
    :cond_9
    sget v20, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mBatchCounter:I

    add-int/lit8 v20, v20, 0x1

    sput v20, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mBatchCounter:I

    .line 983
    sget v20, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mLastOneBatchCount:I

    add-int/lit8 v20, v20, 0x1

    sput v20, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mLastOneBatchCount:I

    .line 984
    sget v20, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mBatchCounter:I

    const/16 v21, 0x3c

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_a

    sget v20, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mLastOneBatchCount:I

    sget v21, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mLastBatch:I

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    .line 986
    :cond_a
    :try_start_0
    const-string v20, "com.android.contacts"

    sget-object v21, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mOperationList:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 987
    sget-object v20, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mOperationList:Ljava/util/ArrayList;

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->clear()V

    .line 988
    const/16 v20, 0x0

    sput v20, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mBatchCounter:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    .line 997
    :cond_b
    :goto_2
    return-void

    .line 989
    :catch_0
    move-exception v10

    .line 990
    .local v10, e:Landroid/os/RemoteException;
    const-string v20, "MakeSim2DBService"

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

    .line 991
    .end local v10           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v10

    .line 992
    .local v10, e:Landroid/content/OperationApplicationException;
    const-string v20, "MakeSim2DBService"

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

    .line 993
    .end local v10           #e:Landroid/content/OperationApplicationException;
    :catch_2
    move-exception v10

    .line 994
    .local v10, e:Ljava/lang/NullPointerException;
    const-string v20, "MakeSim2DBService"

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

    .line 1232
    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->isAdnEditable()Z

    move-result v0

    .line 1233
    const-string v1, "adn2_editable"

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->getIntPreferenceValue(Ljava/lang/String;I)I

    move-result v1

    .line 1234
    if-eqz v0, :cond_1

    if-eq v1, v3, :cond_1

    .line 1235
    const-string v0, "adn2_editable"

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->setIntPreferenceValue(Ljava/lang/String;I)V

    .line 1239
    :cond_0
    :goto_0
    return-void

    .line 1236
    :cond_1
    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    .line 1237
    const-string v0, "adn2_editable"

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->setIntPreferenceValue(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private checkProviderState()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 1385
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

    .line 1388
    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1389
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1390
    iget v2, p0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mProviderStatus:I

    if-eq v0, v2, :cond_0

    .line 1391
    iput v0, p0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mProviderStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1395
    :cond_0
    if-eqz v1, :cond_1

    .line 1396
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1399
    :cond_1
    iget v0, p0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mProviderStatus:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mProviderStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    :cond_2
    move v0, v7

    :goto_0
    return v0

    .line 1395
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    .line 1396
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :cond_4
    move v0, v6

    .line 1399
    goto :goto_0
.end method

.method private doAirPlaneAction(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 1081
    const-string v0, "airplane_mode_db_updated"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->getIntPreferenceValue(Ljava/lang/String;I)I

    move-result v0

    .line 1082
    const-string v1, "MakeSim2DBService"

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

    .line 1092
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.action.SIM2DB_UNKNOWN_READY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 1093
    const-string v0, "MakeSim2DBService"

    const-string v1, "sendBroadcast SIM2_DB_UNKWON_READY"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    return-void
.end method

.method private doCheckAdnAttribute(II)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1168
    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->isFDNEnabled()Z

    move-result v0

    .line 1169
    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->isAdnEditable()Z

    move-result v1

    .line 1171
    const-string v2, "adn2_editable"

    invoke-direct {p0, v2, v6}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->getIntPreferenceValue(Ljava/lang/String;I)I

    move-result v2

    .line 1172
    const-string v3, "MakeSim2DBService"

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

    .line 1173
    if-eqz v1, :cond_2

    if-eq v2, v7, :cond_2

    .line 1174
    const-string v2, "adn2_editable"

    invoke-direct {p0, v2, v7}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->setIntPreferenceValue(Ljava/lang/String;I)V

    .line 1179
    :cond_0
    :goto_0
    if-eqz v0, :cond_4

    .line 1180
    if-nez v1, :cond_3

    .line 1182
    const-string v0, "fdn2_on_adn_deleted"

    invoke-direct {p0, v0, v7}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->setIntPreferenceValue(Ljava/lang/String;I)V

    .line 1183
    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->preserveInitStatusForFDN()V

    .line 1185
    const-string v0, "sim2_db_ready"

    invoke-direct {p0, v0, v6}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->getIntPreferenceValue(Ljava/lang/String;I)I

    move-result v0

    .line 1186
    const-string v1, "MakeSim2DBService"

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

    .line 1187
    if-ne v0, v7, :cond_1

    .line 1189
    const-string v0, "sim2_db_ready"

    invoke-direct {p0, v0, v6}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->setIntPreferenceValue(Ljava/lang/String;I)V

    .line 1191
    :cond_1
    const/4 v0, 0x6

    invoke-direct {p0, p1, v0, p2}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->doDeleteSimDB(III)V

    .line 1216
    :goto_1
    return-void

    .line 1175
    :cond_2
    if-nez v1, :cond_0

    if-eqz v2, :cond_0

    .line 1176
    const-string v2, "adn2_editable"

    invoke-direct {p0, v2, v6}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->setIntPreferenceValue(Ljava/lang/String;I)V

    goto :goto_0

    .line 1193
    :cond_3
    invoke-direct {p0, p1, v8, p2}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->doLastAction(III)V

    goto :goto_1

    .line 1197
    :cond_4
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1199
    const-string v1, "fdn2_on_adn_deleted"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1200
    const-string v1, "MakeSim2DBService"

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

    .line 1201
    if-ne v0, v7, :cond_6

    .line 1202
    const-string v0, "sim2_db_ready"

    invoke-direct {p0, v0, v6}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->getIntPreferenceValue(Ljava/lang/String;I)I

    move-result v0

    .line 1203
    const-string v1, "MakeSim2DBService"

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

    .line 1205
    if-ne v0, v7, :cond_5

    .line 1207
    const-string v0, "sim2_db_ready"

    invoke-direct {p0, v0, v6}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->setIntPreferenceValue(Ljava/lang/String;I)V

    .line 1210
    :cond_5
    const/4 v0, 0x7

    invoke-direct {p0, p1, v0, p2}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->CompareAdnData(III)V

    goto :goto_1

    .line 1213
    :cond_6
    invoke-direct {p0, p1, v8, p2}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->doLastAction(III)V

    goto :goto_1
.end method

.method private doCheckSimState(II)V
    .locals 9
    .parameter "opCode"
    .parameter "startId"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 369
    iget-object v6, p0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    .line 371
    .local v3, simState:I
    const-string v6, "MakeSim2DBService"

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

    .line 375
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_1

    move v1, v4

    .line 377
    .local v1, isAirPlaneOn:Z
    :goto_0
    const-string v6, "MakeSim2DBService"

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

    .line 378
    if-nez v3, :cond_0

    if-nez v1, :cond_0

    .line 379
    const/4 v2, 0x6

    .line 380
    .local v2, retry:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_0

    .line 381
    monitor-enter p0

    .line 383
    const-wide/16 v6, 0x1388

    :try_start_0
    invoke-virtual {p0, v6, v7}, Ljava/lang/Object;->wait(J)V

    .line 384
    iget-object v6, p0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimState()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 386
    if-eqz v3, :cond_2

    .line 387
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 394
    .end local v0           #i:I
    .end local v2           #retry:I
    :cond_0
    packed-switch v3, :pswitch_data_0

    .line 435
    invoke-direct {p0, p1, v5, p2}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->doLastAction(III)V

    .line 438
    :goto_2
    return-void

    .end local v1           #isAirPlaneOn:Z
    :cond_1
    move v1, v5

    .line 375
    goto :goto_0

    .line 388
    .restart local v0       #i:I
    .restart local v1       #isAirPlaneOn:Z
    .restart local v2       #retry:I
    :catch_0
    move-exception v6

    .line 390
    :cond_2
    :try_start_2
    monitor-exit p0

    .line 380
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 390
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 396
    .end local v0           #i:I
    .end local v2           #retry:I
    :pswitch_0
    const-string v4, "MakeSim2DBService"

    const-string v6, "@@ doCheckSimState: UNKNOWN"

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    if-eqz v1, :cond_3

    .line 398
    invoke-direct {p0, p1, v5, p2}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->doDeleteSimDB(III)V

    goto :goto_2

    .line 400
    :cond_3
    invoke-direct {p0, p1, v5, p2}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->doLastAction(III)V

    goto :goto_2

    .line 406
    :pswitch_1
    const-string v5, "MakeSim2DBService"

    const-string v6, "@@ doCheckSimState: No SIM"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    invoke-direct {p0, p1, v4, p2}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->doDeleteSimDB(III)V

    goto :goto_2

    .line 418
    :pswitch_2
    const/16 v4, 0x270f

    if-ne p1, v4, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->isIccCardChanged()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 419
    const-string v4, "MakeSim2DBService"

    const-string v5, "@@ SIM card is changed"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    const/4 v4, 0x2

    invoke-direct {p0, p1, v4, p2}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->doDeleteSimDB(III)V

    goto :goto_2

    .line 425
    :cond_4
    const-string v4, "MakeSim2DBService"

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

    .line 426
    const/4 v4, 0x5

    invoke-direct {p0, p1, v4, p2}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->CompareAdnData(III)V

    goto :goto_2

    .line 394
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
    .line 508
    const/4 v13, 0x0

    .line 509
    .local v13, diff:I
    const/4 v14, 0x0

    .line 510
    .local v14, diff_found:Z
    const/4 v11, 0x0

    .line 511
    .local v11, dbCursor:Landroid/database/Cursor;
    const/16 v20, 0x0

    .line 512
    .local v20, simCursor:Landroid/database/Cursor;
    const/4 v12, 0x0

    .line 515
    .local v12, db_count:I
    const/4 v2, 0x0

    :try_start_0
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->getProjection(I)[Ljava/lang/String;

    move-result-object v2

    array-length v0, v2

    move/from16 v19, v0

    .line 516
    .local v19, length:I
    move/from16 v0, v19

    new-array v4, v0, [Ljava/lang/String;

    .line 517
    .local v4, projectionToCompare:[Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->getProjection(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    move/from16 v0, v19

    invoke-static {v2, v3, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 519
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/contacts/util/Constants;->RAW_CONTACT_ADN2_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 520
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mResolver:Landroid/content/ContentResolver;

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->getCallingUri()Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 522
    const-string v2, "MakeSim2DBService"

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

    .line 524
    if-eqz v11, :cond_6

    if-eqz v20, :cond_6

    .line 525
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 526
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 528
    const-string v2, "MakeSim2DBService"

    const-string v3, "@@ 1st Count is different break"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    invoke-direct/range {p0 .. p3}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->doDeleteSimDB(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 561
    if-eqz v11, :cond_0

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 562
    :cond_0
    if-eqz v20, :cond_1

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 620
    .end local v4           #projectionToCompare:[Ljava/lang/String;
    .end local v19           #length:I
    :cond_1
    :goto_0
    return-void

    .line 531
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

    .line 532
    invoke-direct/range {p0 .. p3}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->doLastAction(III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 561
    if-eqz v11, :cond_3

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 562
    :cond_3
    if-eqz v20, :cond_1

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 536
    :cond_4
    :try_start_2
    new-instance v18, Landroid/database/CursorJoiner;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v11, v4, v1, v4}, Landroid/database/CursorJoiner;-><init>(Landroid/database/Cursor;[Ljava/lang/String;Landroid/database/Cursor;[Ljava/lang/String;)V

    .line 537
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

    .line 538
    .local v17, joinResult:Landroid/database/CursorJoiner$Result;
    sget-object v2, Lcom/sec/android/app/contacts/sim/MakeSim2DBService$1;->$SwitchMap$android$database$CursorJoiner$Result:[I

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    packed-switch v2, :pswitch_data_0

    .line 551
    :goto_1
    if-lez v13, :cond_5

    .line 552
    const/4 v14, 0x1

    .line 561
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v17           #joinResult:Landroid/database/CursorJoiner$Result;
    .end local v18           #joiner:Landroid/database/CursorJoiner;
    :cond_6
    if-eqz v11, :cond_7

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 562
    :cond_7
    if-eqz v20, :cond_8

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 565
    .end local v4           #projectionToCompare:[Ljava/lang/String;
    .end local v19           #length:I
    :cond_8
    :goto_2
    if-nez v14, :cond_11

    .line 566
    const/4 v11, 0x0

    .line 567
    const/16 v20, 0x0

    .line 570
    :try_start_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/android/contacts/util/Constants;->RAW_CONTACT_ADN2_EMAILS_URI:Landroid/net/Uri;

    sget-object v7, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->ADN_EMAILS_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 572
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/android/contacts/util/Constants;->ADN2_EMAILS_URI:Landroid/net/Uri;

    sget-object v7, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->ADN_EMAILS_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 574
    if-eqz v11, :cond_f

    if-eqz v20, :cond_f

    .line 575
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eq v2, v3, :cond_d

    .line 577
    const-string v2, "MakeSim2DBService"

    const-string v3, "@@ 2nd Count is different break"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    invoke-direct/range {p0 .. p3}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->doDeleteSimDB(III)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 607
    if-eqz v11, :cond_9

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 608
    :cond_9
    if-eqz v20, :cond_1

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 540
    .restart local v4       #projectionToCompare:[Ljava/lang/String;
    .restart local v16       #i$:Ljava/util/Iterator;
    .restart local v17       #joinResult:Landroid/database/CursorJoiner$Result;
    .restart local v18       #joiner:Landroid/database/CursorJoiner;
    .restart local v19       #length:I
    :pswitch_0
    add-int/lit8 v13, v13, 0x1

    .line 541
    goto :goto_1

    .line 544
    :pswitch_1
    add-int/lit8 v13, v13, 0x1

    .line 545
    goto :goto_1

    .line 557
    .end local v4           #projectionToCompare:[Ljava/lang/String;
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v17           #joinResult:Landroid/database/CursorJoiner$Result;
    .end local v18           #joiner:Landroid/database/CursorJoiner;
    .end local v19           #length:I
    :catch_0
    move-exception v15

    .line 559
    .local v15, e:Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v15}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 561
    if-eqz v11, :cond_a

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 562
    :cond_a
    if-eqz v20, :cond_8

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 561
    .end local v15           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v11, :cond_b

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 562
    :cond_b
    if-eqz v20, :cond_c

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v2

    .line 582
    :cond_d
    :try_start_5
    new-instance v18, Landroid/database/CursorJoiner;

    sget-object v2, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->ADN_EMAILS_PROJECTION:[Ljava/lang/String;

    sget-object v3, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->ADN_EMAILS_PROJECTION:[Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v11, v2, v1, v3}, Landroid/database/CursorJoiner;-><init>(Landroid/database/Cursor;[Ljava/lang/String;Landroid/database/Cursor;[Ljava/lang/String;)V

    .line 583
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

    .line 584
    .restart local v17       #joinResult:Landroid/database/CursorJoiner$Result;
    sget-object v2, Lcom/sec/android/app/contacts/sim/MakeSim2DBService$1;->$SwitchMap$android$database$CursorJoiner$Result:[I

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    packed-switch v2, :pswitch_data_1

    .line 597
    :goto_3
    if-lez v13, :cond_e

    .line 598
    const/4 v14, 0x1

    .line 607
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v17           #joinResult:Landroid/database/CursorJoiner$Result;
    .end local v18           #joiner:Landroid/database/CursorJoiner;
    :cond_f
    if-eqz v11, :cond_10

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 608
    :cond_10
    if-eqz v20, :cond_11

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 612
    :cond_11
    :goto_4
    if-nez v14, :cond_12

    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isMasterSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_16

    if-lez v12, :cond_16

    .line 615
    :cond_12
    const-string v2, "MakeSim2DBService"

    const-string v3, "@@ diff found Goto delete"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    invoke-direct/range {p0 .. p3}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->doDeleteSimDB(III)V

    goto/16 :goto_0

    .line 586
    .restart local v16       #i$:Ljava/util/Iterator;
    .restart local v17       #joinResult:Landroid/database/CursorJoiner$Result;
    .restart local v18       #joiner:Landroid/database/CursorJoiner;
    :pswitch_2
    add-int/lit8 v13, v13, 0x1

    .line 587
    goto :goto_3

    .line 590
    :pswitch_3
    add-int/lit8 v13, v13, 0x1

    .line 591
    goto :goto_3

    .line 603
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v17           #joinResult:Landroid/database/CursorJoiner$Result;
    .end local v18           #joiner:Landroid/database/CursorJoiner;
    :catch_1
    move-exception v15

    .line 605
    .restart local v15       #e:Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v15}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 607
    if-eqz v11, :cond_13

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 608
    :cond_13
    if-eqz v20, :cond_11

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .line 607
    .end local v15           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v2

    if-eqz v11, :cond_14

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 608
    :cond_14
    if-eqz v20, :cond_15

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    :cond_15
    throw v2

    .line 618
    :cond_16
    invoke-direct/range {p0 .. p3}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->doLastAction(III)V

    goto/16 :goto_0

    .line 538
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 584
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private doDeleteSimDB(III)V
    .locals 12
    .parameter "opCode"
    .parameter "simState"
    .parameter "startId"

    .prologue
    const/4 v3, 0x0

    .line 736
    const-string v0, "MakeSim2DBService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@@ doDeleteSimDB: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->checkProviderState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 738
    monitor-enter p0

    .line 740
    const-wide/16 v4, 0x1388

    :try_start_0
    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 743
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

    .line 745
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 748
    .local v10, start:J
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "account_name"

    const-string v4, "primary.sim2.account_name"

    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "account_type"

    const-string v4, "vnd.sec.contact.sim2"

    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "limit"

    const-string v4, "1"

    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 753
    .local v1, checkUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 754
    .local v6, cur:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 755
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 756
    sget-object v0, Lcom/android/contacts/util/Constants;->RAW_CONTACTS_WIPEOUT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "account_name"

    const-string v4, "primary.sim2.account_name"

    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "account_type"

    const-string v4, "vnd.sec.contact.sim2"

    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    .line 759
    .local v7, deleteUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v7, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 782
    .end local v7           #deleteUri:Landroid/net/Uri;
    :cond_1
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 783
    .local v8, end:J
    const-string v0, "MakeSim2DBService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@@ db delete time : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-long v3, v8, v10

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "msec"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    packed-switch p2, :pswitch_data_0

    .line 801
    :goto_3
    :pswitch_0
    return-void

    .line 760
    .end local v8           #end:J
    :cond_2
    if-eqz v6, :cond_1

    .line 761
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 789
    .restart local v8       #end:J
    :pswitch_1
    const-string v0, "MakeSim2DBService"

    const-string v2, "@@ doDeleteSimDB Go to last action "

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->doLastAction(III)V

    goto :goto_3

    .line 796
    :pswitch_2
    const-string v0, "MakeSim2DBService"

    const-string v2, "@@ doDeleteSimDB Go to Write action "

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->doWriteSimDB(III)V

    goto :goto_3

    .line 741
    .end local v1           #checkUri:Landroid/net/Uri;
    .end local v6           #cur:Landroid/database/Cursor;
    .end local v8           #end:J
    .end local v10           #start:J
    :catch_0
    move-exception v0

    goto/16 :goto_1

    .line 785
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
    .line 344
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->doCheckSimState(II)V

    .line 345
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

    .line 1246
    .line 1248
    const-string v0, "sim2_db_ready"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->getIntPreferenceValue(Ljava/lang/String;I)I

    move-result v0

    .line 1249
    const-string v3, "MakeSim2DBService"

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

    .line 1250
    const-string v3, "MakeSim2DBService"

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

    .line 1252
    if-nez v0, :cond_5

    .line 1253
    const-string v0, "sim2_db_ready"

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->setIntPreferenceValue(Ljava/lang/String;I)V

    .line 1254
    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->setRuntimeFirstBootTime()V

    .line 1255
    if-nez p2, :cond_0

    .line 1262
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.samsung.intent.action.SIM2DB_UNKNOWN_READY"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    move v0, v2

    .line 1267
    :goto_0
    sparse-switch p1, :sswitch_data_0

    .line 1313
    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->checkAndUpdateAdnEditable()V

    .line 1318
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 1320
    const-string v0, "MakeSim2DBService"

    const-string v2, "@@  NOTIFY !!"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 1325
    :cond_2
    invoke-direct {p0, p3}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->doStopService(I)V

    .line 1326
    return-void

    .line 1269
    :sswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->checkAndUpdateAdnEditable()V

    .line 1270
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v3

    .line 1271
    invoke-virtual {v3, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimStatus(Ljava/lang/String;)V

    goto :goto_1

    .line 1277
    :sswitch_1
    if-eqz p2, :cond_4

    .line 1278
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1280
    const-string v4, "airplane_mode_changed"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 1281
    if-ne v4, v2, :cond_4

    .line 1282
    const-string v4, "airplain_init_sim_status"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    int-to-long v4, v2

    .line 1283
    const-string v2, "MakeSim2DBService"

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

    .line 1284
    cmp-long v2, v4, v8

    if-nez v2, :cond_3

    .line 1285
    invoke-direct {p0, v4, v5}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->updateSettingStatus(J)V

    move v0, v1

    .line 1288
    :cond_3
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1289
    const-string v3, "airplane_mode_changed"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1290
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1293
    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->checkAndUpdateAdnEditable()V

    goto :goto_1

    .line 1298
    :sswitch_2
    const/4 v3, 0x7

    if-ne p2, v3, :cond_1

    .line 1299
    invoke-direct {p0, v1}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->updateAdnDeletedStatus(I)V

    .line 1300
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1302
    const-string v4, "fdn2_init_sim_status"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    int-to-long v2, v2

    .line 1303
    const-string v4, "MakeSim2DBService"

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

    .line 1304
    cmp-long v4, v2, v8

    if-nez v4, :cond_1

    .line 1305
    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->updateSettingStatus(J)V

    move v0, v1

    .line 1306
    goto/16 :goto_1

    :cond_5
    move v0, v1

    goto/16 :goto_0

    .line 1267
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
    .line 1105
    const-string v1, "sim2_db_ready"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->getIntPreferenceValue(Ljava/lang/String;I)I

    move-result v0

    .line 1106
    .local v0, settingValue:I
    if-nez v0, :cond_0

    .line 1107
    const-string v1, "sim2_db_ready"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->setIntPreferenceValue(Ljava/lang/String;I)V

    .line 1108
    :cond_0
    invoke-direct {p0, p2}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->doStopService(I)V

    .line 1109
    return-void
.end method

.method private doStopService(I)V
    .locals 0
    .parameter "startId"

    .prologue
    .line 1342
    invoke-virtual {p0, p1}, Landroid/app/Service;->stopSelfResult(I)Z

    .line 1343
    return-void
.end method

.method private doWriteSimDB(III)V
    .locals 6
    .parameter "opCode"
    .parameter "simState"
    .parameter "startId"

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 804
    sput v0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mBatchCounter:I

    .line 805
    sput v0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mLastOneBatchCount:I

    .line 808
    :goto_0
    const-string v0, "1"

    const-string v1, "ril.initPB2"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->checkProviderState()Z

    move-result v0

    if-nez v0, :cond_1

    .line 809
    :cond_0
    monitor-enter p0

    .line 811
    const-wide/16 v0, 0x1388

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 814
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

    .line 817
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mResolver:Landroid/content/ContentResolver;

    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->getCallingUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->getProjection(I)[Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mCursor:Landroid/database/Cursor;

    .line 820
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_3

    .line 821
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    sput v0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mLastBatch:I

    .line 822
    const-string v0, "MakeSim2DBService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@ WriteAllSimContactsThread mLastBatch = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mLastBatch:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 824
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->getColumnIndex(Landroid/database/Cursor;)V

    .line 825
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mCursor:Landroid/database/Cursor;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 826
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 827
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mAccount:Landroid/accounts/Account;

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->actuallyImportOneSimContact(Landroid/database/Cursor;Landroid/content/ContentResolver;Landroid/accounts/Account;)V

    goto :goto_2

    .line 829
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 830
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 832
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->doLastAction(III)V

    .line 833
    return-void

    .line 812
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private getCallingUri()Landroid/net/Uri;
    .locals 4

    .prologue
    .line 1059
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getAnrConfigValue(I)I

    move-result v0

    .line 1061
    if-lez v0, :cond_0

    .line 1062
    sget-object v0, Lcom/android/contacts/util/Constants;->ADN2_ANR_URI:Landroid/net/Uri;

    .line 1066
    :goto_0
    const-string v1, "MakeSim2DBService"

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

    .line 1067
    return-object v0

    .line 1064
    :cond_0
    sget-object v0, Lcom/android/contacts/util/Constants;->ADN2_URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method private getColumnIndex(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    .line 842
    const-string v1, "name"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->NAME_COLUMN_INDEX:I

    .line 843
    const-string v1, "number"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->NUMBER_COLUMN_INDEX:I

    .line 845
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getAnrConfigValue(I)I

    move-result v0

    .line 846
    .local v0, anrConfigValue:I
    if-lez v0, :cond_0

    .line 847
    const-string v1, "anr_number"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->ANR_NUMBER_COLUMN_INDEX:I

    .line 848
    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 849
    const-string v1, "anrA_number"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->ANR_A_NUMBER_COLUMN_INDEX:I

    .line 850
    const-string v1, "anrB_number"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->ANR_B_NUMBER_COLUMN_INDEX:I

    .line 851
    const-string v1, "anrC_number"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->ANR_C_NUMBER_COLUMN_INDEX:I

    .line 856
    :cond_0
    const-string v1, "emails"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->EMAIL_COLUMN_INDEX:I

    .line 857
    const-string v1, "adn_index"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->ADN_INDEX_COLUMN_INDEX:I

    .line 858
    return-void
.end method

.method private getIntPreferenceValue(Ljava/lang/String;I)I
    .locals 2
    .parameter "prefKey"
    .parameter "defVal"

    .prologue
    .line 311
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 313
    .local v0, pref:Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private getProjection(I)[Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x3

    .line 1015
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getAnrConfigValue(I)I

    move-result v0

    .line 1017
    packed-switch p1, :pswitch_data_0

    .line 1046
    const-string v0, "MakeSim2DBService"

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

    .line 1050
    sget-object v0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->ADN_COMPARE_PROJECTION:[Ljava/lang/String;

    :goto_0
    return-object v0

    .line 1019
    :pswitch_0
    if-lez v0, :cond_1

    .line 1020
    if-le v0, v2, :cond_0

    .line 1021
    const-string v0, "MakeSim2DBService"

    const-string v1, "@@ ADN_ANR_FULL_COMPARE_PROJECTION "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    sget-object v0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->ADN_ANR_FULL_COMPARE_PROJECTION:[Ljava/lang/String;

    goto :goto_0

    .line 1024
    :cond_0
    const-string v0, "MakeSim2DBService"

    const-string v1, "@@ ADN_ANR_PATIAL_COMPARE_PROJECTION "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    sget-object v0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->ADN_ANR_PATIAL_COMPARE_PROJECTION:[Ljava/lang/String;

    goto :goto_0

    .line 1027
    :cond_1
    const-string v0, "MakeSim2DBService"

    const-string v1, "@@ ADN_COMPARE_PROJECTION "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    sget-object v0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->ADN_COMPARE_PROJECTION:[Ljava/lang/String;

    goto :goto_0

    .line 1032
    :pswitch_1
    if-lez v0, :cond_3

    .line 1033
    if-le v0, v2, :cond_2

    .line 1034
    const-string v0, "MakeSim2DBService"

    const-string v1, "@@ ADN_ANR_FULL_PROJECTION "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    sget-object v0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->ADN_ANR_FULL_PROJECTION:[Ljava/lang/String;

    goto :goto_0

    .line 1037
    :cond_2
    const-string v0, "MakeSim2DBService"

    const-string v1, "@@ ADN_ANR_PATIAL_PROJECTION "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    sget-object v0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->ADN_ANR_PATIAL_PROJECTION:[Ljava/lang/String;

    goto :goto_0

    .line 1040
    :cond_3
    const-string v0, "MakeSim2DBService"

    const-string v1, "@@ ADN_PROJECTION "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    sget-object v0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->ADN_PROJECTION:[Ljava/lang/String;

    goto :goto_0

    .line 1017
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

    .line 317
    const-wide/16 v7, 0x0

    .line 319
    .local v7, simStatus:J
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "ungrouped_visible"

    aput-object v3, v2, v9

    const-string v3, " account_type = \'vnd.sec.contact.sim2\' AND account_name = \'primary.sim2.account_name\' "

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 322
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 323
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    goto :goto_0

    .line 326
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 328
    :cond_1
    return-wide v7
.end method

.method private isAdnEditable()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1120
    const-string v0, "ril.ICC_TYPE_1"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1121
    const-string v3, "2"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    .line 1164
    :cond_0
    :goto_0
    return v1

    .line 1124
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mTelMan:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 1126
    if-eq v2, v0, :cond_0

    .line 1131
    :try_start_0
    const-string v0, "simphonebook"

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 1134
    if-eqz v0, :cond_3

    .line 1135
    const/16 v3, 0x6f3a

    invoke-interface {v0, v3}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnLikesSimStatusInfo(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    .line 1146
    :goto_1
    const-string v3, "MakeSim2DBService"

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

    .line 1147
    and-int/lit8 v3, v0, 0x1

    .line 1148
    and-int/lit8 v0, v0, 0x4

    .line 1150
    packed-switch v3, :pswitch_data_0

    move v1, v2

    .line 1164
    goto :goto_0

    .line 1137
    :catch_0
    move-exception v0

    move v0, v1

    .line 1140
    goto :goto_1

    .line 1138
    :catch_1
    move-exception v0

    move v0, v1

    .line 1140
    goto :goto_1

    .line 1139
    :catch_2
    move-exception v0

    move v0, v1

    goto :goto_1

    .line 1153
    :pswitch_0
    if-eqz v0, :cond_0

    .line 1155
    if-ne v0, v2, :cond_2

    move v1, v2

    .line 1156
    goto :goto_0

    :cond_2
    :pswitch_1
    move v1, v2

    .line 1161
    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    .line 1150
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isFDNEnabled()Z
    .locals 3

    .prologue
    .line 1226
    const/4 v0, 0x0

    .line 1227
    .local v0, isFDNEnabled:Z
    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mDsdsService:Landroid/plugin/dsds/PlugInDsdsService;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/plugin/dsds/PlugInDsdsService;->getIccFdnEnabled(I)Z

    move-result v0

    .line 1228
    return v0
.end method

.method private isIccCardChanged()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 448
    const-string v6, "1"

    const-string v7, "ril.isIccChanged_1"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 451
    const-string v6, "ro.runtime.firstboot"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 452
    .local v1, firstBootTime:Ljava/lang/String;
    const-string v0, "1"

    .line 453
    .local v0, fakeBootTime:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 456
    .local v3, pref:Landroid/content/SharedPreferences;
    const-string v6, "runtime_firstboot_time"

    const-string v7, "0"

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 458
    .local v2, iccChangedBootTime:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 461
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "runtime_firstboot_time"

    const-string v7, "1"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 479
    .end local v0           #fakeBootTime:Ljava/lang/String;
    .end local v1           #firstBootTime:Ljava/lang/String;
    .end local v2           #iccChangedBootTime:Ljava/lang/String;
    .end local v3           #pref:Landroid/content/SharedPreferences;
    :goto_0
    return v4

    .line 465
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

    .line 466
    const-string v6, "1"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 468
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v6, "runtime_firstboot_time"

    invoke-interface {v4, v6, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    move v4, v5

    .line 469
    goto :goto_0

    .line 471
    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 473
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

    .line 479
    goto :goto_0
.end method

.method private preserveInitStatusForFDN()V
    .locals 3

    .prologue
    .line 1220
    .line 1221
    invoke-direct {p0}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->getSimAccountStatus()J

    move-result-wide v0

    .line 1222
    const-string v2, "fdn2_init_sim_status"

    long-to-int v0, v0

    invoke-direct {p0, v2, v0}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->setIntPreferenceValue(Ljava/lang/String;I)V

    .line 1223
    return-void
.end method

.method private sendMessage(III)V
    .locals 2
    .parameter "opCode"
    .parameter "startId"
    .parameter "what"

    .prologue
    .line 277
    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mServiceHandler:Lcom/sec/android/app/contacts/sim/MakeSim2DBService$ServiceHandler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 278
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 279
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 280
    iput p3, v0, Landroid/os/Message;->what:I

    .line 281
    iget-object v1, p0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mServiceHandler:Lcom/sec/android/app/contacts/sim/MakeSim2DBService$ServiceHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 282
    return-void
.end method

.method private setIntPreferenceValue(Ljava/lang/String;I)V
    .locals 2
    .parameter "prefKey"
    .parameter "prefVal"

    .prologue
    .line 299
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 301
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 302
    return-void
.end method

.method private setRuntimeFirstBootTime()V
    .locals 7

    .prologue
    .line 1329
    const-string v4, "ro.runtime.firstboot"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1330
    .local v1, firstBootTime:Ljava/lang/String;
    const-string v0, "1"

    .line 1331
    .local v0, fakeBootTime:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1333
    .local v2, pref:Landroid/content/SharedPreferences;
    const-string v4, "runtime_firstboot_time"

    const-string v5, "0"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1334
    .local v3, runtimeFirstBootTime:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1335
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "runtime_firstboot_time"

    const-string v6, "1"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1339
    :cond_0
    :goto_0
    return-void

    .line 1336
    :cond_1
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1337
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
    .line 1112
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1114
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1115
    const-string v1, "fdn2_on_adn_deleted"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1116
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1117
    return-void
.end method

.method private updateSettingStatus(J)V
    .locals 6
    .parameter "status"

    .prologue
    const/4 v5, 0x0

    .line 348
    sget-object v2, Landroid/provider/ContactsContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "account_name"

    const-string v4, "primary.sim2.account_name"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "account_type"

    const-string v4, "vnd.sec.contact.sim2"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 352
    .local v0, settingUri:Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 353
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "ungrouped_visible"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 354
    iget-object v2, p0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, v0, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 355
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 185
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 190
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 192
    const-string v3, "MakeSim2DBService"

    const-string v4, "@@ onCreate!!!"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 194
    .local v0, context:Landroid/content/Context;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mResolver:Landroid/content/ContentResolver;

    .line 195
    new-instance v3, Landroid/accounts/Account;

    const-string v4, "primary.sim2.account_name"

    const-string v5, "vnd.sec.contact.sim2"

    invoke-direct {v3, v4, v5}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mAccount:Landroid/accounts/Account;

    .line 196
    const-string v3, "power"

    invoke-virtual {p0, v3}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 197
    .local v1, pm:Landroid/os/PowerManager;
    const-string v3, "MakeSim2DBService"

    invoke-virtual {v1, v6, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 198
    const-string v3, "DSDS"

    invoke-static {v3}, Landroid/plugin/PlugInServiceManager;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/plugin/dsds/PlugInDsdsService;

    iput-object v3, p0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mDsdsService:Landroid/plugin/dsds/PlugInDsdsService;

    .line 199
    invoke-static {v6}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mTelMan:Landroid/telephony/TelephonyManager;

    .line 204
    new-instance v2, Ljava/lang/Thread;

    const/4 v3, 0x0

    const-string v4, "MakeSim2DBService"

    invoke-direct {v2, v3, p0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 205
    .local v2, thr:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 206
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1406
    const-string v0, "MakeSim2DBService"

    const-string v1, "@@ onDestory"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mServiceLooper:Landroid/os/Looper;

    if-nez v0, :cond_0

    .line 1409
    monitor-enter p0

    .line 1411
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1414
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

    .line 1416
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 1417
    return-void

    .line 1412
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 11
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v5, 0x3

    const/4 v10, 0x1

    const/4 v4, 0x2

    const/4 v9, 0x0

    .line 211
    :goto_0
    iget-object v6, p0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mServiceHandler:Lcom/sec/android/app/contacts/sim/MakeSim2DBService$ServiceHandler;

    if-nez v6, :cond_0

    .line 212
    monitor-enter p0

    .line 214
    const-wide/16 v6, 0x64

    :try_start_0
    invoke-virtual {p0, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :goto_1
    :try_start_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 220
    :cond_0
    if-nez p1, :cond_1

    .line 221
    const-string v5, "MakeSim2DBService"

    const-string v6, "Intent is null in onStartCommand"

    new-instance v7, Ljava/lang/NullPointerException;

    invoke-direct {v7}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {v5, v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 273
    :goto_2
    return v4

    .line 225
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 226
    .local v0, bundle:Landroid/os/Bundle;
    const-string v6, "op"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 227
    .local v2, opCode:I
    const-string v6, "MakeSim2DBService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "@@ onStartCommand!!! opCode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const-string v6, "MakeSim2DBService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "@@ onStartCommand!!! flags = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    sparse-switch v2, :sswitch_data_0

    :cond_2
    :goto_3
    move v4, v5

    .line 273
    goto :goto_2

    .line 232
    :sswitch_0
    const-string v4, "isEnabled"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 234
    .local v1, isEnabled:Z
    if-nez v1, :cond_2

    .line 236
    invoke-direct {p0, v2, p3, v5}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->sendMessage(III)V

    goto :goto_3

    .line 245
    .end local v1           #isEnabled:Z
    :sswitch_1
    if-ge p3, v4, :cond_3

    .line 246
    invoke-direct {p0, v2, p3, v9}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->sendMessage(III)V

    goto :goto_3

    .line 248
    :cond_3
    invoke-direct {p0, v2, p3, v10}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->sendMessage(III)V

    goto :goto_3

    .line 255
    :sswitch_2
    const-string v6, "sim2_db_ready"

    invoke-direct {p0, v6, v9}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->getIntPreferenceValue(Ljava/lang/String;I)I

    move-result v3

    .line 256
    .local v3, settingValue:I
    if-ne v3, v10, :cond_4

    .line 257
    const-string v6, "sim2_db_ready"

    invoke-direct {p0, v6, v9}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->setIntPreferenceValue(Ljava/lang/String;I)V

    .line 259
    :cond_4
    invoke-direct {p0, v2, p3, v4}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->sendMessage(III)V

    goto :goto_3

    .line 264
    .end local v3           #settingValue:I
    :sswitch_3
    const/4 v4, 0x4

    invoke-direct {p0, v2, p3, v4}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->sendMessage(III)V

    goto :goto_3

    .line 215
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #opCode:I
    :catch_0
    move-exception v6

    goto :goto_1

    .line 230
    nop

    :sswitch_data_0
    .sparse-switch
        0x1a0a -> :sswitch_3
        0x1e61 -> :sswitch_2
        0x22b8 -> :sswitch_0
        0x270f -> :sswitch_1
    .end sparse-switch
.end method

.method public run()V
    .locals 1

    .prologue
    .line 285
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 286
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 287
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mServiceLooper:Landroid/os/Looper;

    .line 288
    new-instance v0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService$ServiceHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/sim/MakeSim2DBService$ServiceHandler;-><init>(Lcom/sec/android/app/contacts/sim/MakeSim2DBService;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/sim/MakeSim2DBService;->mServiceHandler:Lcom/sec/android/app/contacts/sim/MakeSim2DBService$ServiceHandler;

    .line 289
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 290
    return-void
.end method
